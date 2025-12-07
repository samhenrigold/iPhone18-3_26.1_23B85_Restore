void sub_1CF44058C(unsigned int (*a1)(void, void, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v323 = a4;
  v320 = a3;
  v321 = a1;
  v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C01F0, &qword_1CFA05700);
  MEMORY[0x1EEE9AC00](v310);
  v312 = &v293 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v308 = &v293 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v306 = &v293 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v313 = *(v14 - 8);
  v314 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v303 = &v293 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v302 = &v293 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDF0, &unk_1CFA054F0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v295 = &v293 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v301 = &v293 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v296 = &v293 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v297 = &v293 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v300 = &v293 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v298 = &v293 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v299 = &v293 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v304 = &v293 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v305 = &v293 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v309 = &v293 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v311 = &v293 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v293 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v293 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v293 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v293 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v293 - v53;
  MEMORY[0x1EEE9AC00](v55);
  v307 = &v293 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v315 = &v293 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v294 = &v293 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v318 = &v293 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v319 = &v293 - v64;
  v316 = a5;
  v330 = a5;
  v65 = v321;
  LODWORD(v317) = a6;
  v331 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF80, &unk_1CF9FAE70);
  v378 = a2;
  v66 = swift_dynamicCastClass();
  if (v66 && v65 == 8)
  {
    v67 = *(v323 + 32);
    v68 = *(v66 + 152);
    *&v329[0] = *(v66 + 144);
    BYTE8(v329[0]) = v68;
    v69 = *(*v67 + 384);

    v69(v329, 1, &v330, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA50, &unk_1CFA05480);
  v70 = swift_dynamicCastClass();
  if (v70 && v65 == 32)
  {
    v71 = v70;
    v45 = v319;
    sub_1CEFCCBDC(v320, v319, &unk_1EC4BFDF0, &unk_1CFA054F0);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
    v321 = *(*(v72 - 8) + 48);
    if ((v321)(v45, 1, v72) == 1)
    {
      v315 = v72;

      v73 = v322;
      goto LABEL_8;
    }

    sub_1CEFCCBDC(v45, v318, &unk_1EC4BFDF0, &unk_1CFA054F0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v73 = v322;
    if (EnumCaseMultiPayload <= 14)
    {
      if (EnumCaseMultiPayload <= 10)
      {
        v88 = v318;
        if (EnumCaseMultiPayload != 3)
        {
          if (EnumCaseMultiPayload == 6)
          {
            v315 = v72;
            v311 = v71;
            v312 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBE0, &unk_1CFA05320) + 48);
            v89 = v314;
            v90 = *(v313 + 48);
            if (v90(v88, 1, v314) == 1)
            {
              sub_1CEFCCC44(v88 + v312, &qword_1EC4C1B40, &unk_1CF9FCB70);
              v91 = v88;
              v92 = &qword_1EC4C1B40;
              v93 = &unk_1CF9FCB70;
LABEL_181:
              sub_1CEFCCC44(v91, v92, v93);
              goto LABEL_357;
            }

            if (v90(v88 + v312, 1, v89) != 1)
            {
              sub_1CEFCCC44(v88, &unk_1EC4BE360, &qword_1CF9FE650);
              v92 = &qword_1EC4C1B40;
              v93 = &unk_1CF9FCB70;
              v91 = v88 + v312;
              goto LABEL_181;
            }

            v188 = *v88;
            v189 = *(v88 + 8);

            sub_1CEFCCC44(v88, &unk_1EC4BE360, &qword_1CF9FE650);
            v71 = v311;
            v190 = *(v311 + 144);
            v191 = *(v311 + 152);
            if (v189)
            {
              if (v189 == 1)
              {
                if (v191 == 1)
                {
                  v192 = v188 == v190;
                  goto LABEL_289;
                }

LABEL_356:

                goto LABEL_357;
              }

              if (v188)
              {
                v45 = v319;
                if (v191 != 2)
                {
                  goto LABEL_356;
                }

LABEL_293:
                if (v190 != 1)
                {
                  goto LABEL_356;
                }

                goto LABEL_8;
              }

              v45 = v319;
              if (v191 != 2)
              {
                goto LABEL_356;
              }

              goto LABEL_355;
            }

            if (*(v311 + 152))
            {
              goto LABEL_356;
            }

            v192 = v188 == v190;
            goto LABEL_289;
          }

LABEL_104:
          v92 = &qword_1EC4BE710;
          v93 = &qword_1CF9FE5A8;
          v91 = v88;
          goto LABEL_181;
        }

        v151 = *v318;
        v152 = *(v318 + 8);
        if ((*(v318 + 9) & 1) == 0)
        {
          v182 = *(v71 + 144);
          v183 = *(v71 + 152);
          v315 = v72;
          if (v183)
          {
            if (v183 == 1)
            {
              if (v152 != 1 || v182 != v151)
              {
                goto LABEL_357;
              }
            }

            else if (v182)
            {
              if (v152 != 2 || v151 != 1)
              {
                goto LABEL_357;
              }
            }

            else if (v152 != 2 || v151)
            {
              goto LABEL_357;
            }
          }

          else if (v152 || v182 != v151)
          {
            goto LABEL_357;
          }

          v45 = v319;
          goto LABEL_8;
        }

        goto LABEL_93;
      }

      v88 = v318;
      if (EnumCaseMultiPayload != 11)
      {
        if (EnumCaseMultiPayload != 12)
        {
          goto LABEL_104;
        }

        if ((*(v318 + 9) & 1) == 0)
        {
          v112 = *v318;
          v113 = *(v318 + 8);
          v114 = *(v71 + 144);
          v115 = *(v71 + 152);
          v315 = v72;
          if (v115)
          {
            if (v115 == 1)
            {
              if (v113 != 1 || v114 != v112)
              {
                goto LABEL_99;
              }
            }

            else if (v114)
            {
              if (v113 != 2 || v112 != 1)
              {
                goto LABEL_99;
              }
            }

            else if (v113 != 2 || v112)
            {
              goto LABEL_99;
            }
          }

          else if (v113 || v114 != v112)
          {
            goto LABEL_99;
          }

          v253 = *(v318 + 16);
          v254 = *(v318 + 24);

          sub_1CF47FDFC(v253, v254);
          v45 = v319;
          goto LABEL_8;
        }

        goto LABEL_101;
      }

      if ((*(v318 + 9) & 1) == 0)
      {
LABEL_101:
        v155 = *(v318 + 16);
        v154 = *(v318 + 24);
LABEL_102:
        sub_1CF47FDFC(v155, v154);
        goto LABEL_103;
      }

      v154 = *(v318 + 24);
      if (v154 >> 8 > 0xFE)
      {
        sub_1CEFD0994(*v318, *(v318 + 8), 1);
LABEL_99:
        sub_1CF47FDFC(*(v88 + 16), *(v88 + 24));
        goto LABEL_357;
      }

      if ((v154 & 0x100) != 0)
      {
        v155 = *(v318 + 16);
        goto LABEL_102;
      }

      if (*(v318 + 27) != 2)
      {
LABEL_439:
        v151 = *v318;
        v152 = *(v318 + 8);
LABEL_93:
        sub_1CEFD0994(v151, v152, 1);
LABEL_357:
        v179 = &unk_1EC4BFDF0;
        v180 = &unk_1CFA054F0;
        v181 = v319;
        goto LABEL_358;
      }

      v203 = *(v318 + 16);
      v204 = *(v318 + 24);
      v205 = *(v71 + 144);
      v206 = *(v71 + 152);
      v315 = v72;
      if (v206)
      {
        if (v206 == 1)
        {
          if (v204 != 1 || v205 != v203)
          {
            goto LABEL_439;
          }
        }

        else if (v205)
        {
          if (v204 != 2 || v203 != 1)
          {
            goto LABEL_439;
          }
        }

        else if (v204 != 2 || v203)
        {
          goto LABEL_439;
        }
      }

      else if (v204 || v205 != v203)
      {
        goto LABEL_439;
      }

      v281 = *v318;
      v282 = *(v318 + 8);

      v258 = v281;
      v259 = v282;
      v260 = 1;
LABEL_313:
      sub_1CEFD0994(v258, v259, v260);
      v45 = v319;
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload <= 21)
    {
      if (EnumCaseMultiPayload != 15)
      {
        v88 = v318;
        if (EnumCaseMultiPayload != 16)
        {
          goto LABEL_104;
        }

        v100 = *(v318 + 16);

        if ((*(v88 + 9) & 1) == 0)
        {
          v190 = *v88;
          v193 = *(v88 + 8);
          v194 = *(v71 + 144);
          v195 = *(v71 + 152);
          if (*(v71 + 152))
          {
            v315 = v72;
            if (v195 != 1)
            {
              v45 = v319;
              if (v194)
              {
                if (v193 != 2)
                {
                  goto LABEL_356;
                }

                goto LABEL_293;
              }

              if (v193 != 2)
              {
                goto LABEL_356;
              }

LABEL_355:
              if (!v190)
              {
                goto LABEL_8;
              }

              goto LABEL_356;
            }

            if (v193 != 1)
            {
              goto LABEL_356;
            }

            v192 = v194 == v190;
          }

          else
          {
            if (*(v88 + 8))
            {
              goto LABEL_356;
            }

            v315 = v72;
            v192 = v194 == v190;
          }

LABEL_289:
          v45 = v319;
          if (!v192)
          {
            goto LABEL_356;
          }

LABEL_8:
          sub_1CEFCCC44(v45, &unk_1EC4BFDF0, &unk_1CFA054F0);
          v75 = v71 + 144;
          v74 = *(v71 + 144);
          v76 = v71;
          v77 = *(v71 + 152);

          sub_1CF7EB934(v74, v77, v316, v317, v329);
          if (v73)
          {
LABEL_9:

            return;
          }

          memcpy(v328, v329, sizeof(v328));
          if (sub_1CF08B99C(v328) == 1)
          {

LABEL_42:
            memcpy(v327, v329, sizeof(v327));
LABEL_89:
            v148 = &unk_1EC4BFC20;
            v149 = &unk_1CFA0A290;
            v150 = v327;
LABEL_90:
            sub_1CEFCCC44(v150, v148, v149);
            return;
          }

          memcpy(v327, v329, sizeof(v327));
          v332 = v329[0];
          v338 = *(&v329[5] + 1);
          v339 = *(&v329[6] + 1);
          v340 = *(&v329[7] + 1);
          v341 = *(&v329[8] + 1);
          v335 = *(&v329[2] + 1);
          v336 = *(&v329[3] + 1);
          v337 = *(&v329[4] + 1);
          v345 = *(&v329[10] + 10);
          v344 = *(&v329[9] + 10);
          v343 = *(&v329[8] + 10);
          *&v348[14] = *(&v329[14] + 8);
          *v348 = *(&v329[13] + 10);
          v347 = *(&v329[12] + 10);
          v346 = *(&v329[11] + 10);
          v116 = *&v327[248];
          v350 = v329[16];
          v351 = v329[17];
          v353 = v329[19];
          v354 = v329[20];
          v352 = v329[18];
          v357 = *(&v329[21] + 9);
          v358 = *(&v329[22] + 9);
          v361 = *(&v329[25] + 9);
          v362 = *(&v329[26] + 9);
          v359 = *(&v329[23] + 9);
          v360 = *(&v329[24] + 9);
          *&v366[15] = *(&v329[31] + 8);
          v365 = *(&v329[29] + 9);
          *v366 = *(&v329[30] + 9);
          v363 = *(&v329[27] + 9);
          v364 = *(&v329[28] + 9);
          v333 = *&v327[16];
          v334 = v327[32];
          v342 = v327[137];
          v355 = *&v329[21];
          v349 = *&v327[248];
          v356 = v327[344];
          if (v327[16])
          {

            goto LABEL_89;
          }

          LODWORD(v322) = v327[344];
          v317 = *&v327[16];
          LODWORD(v318) = v327[32];
          LODWORD(v319) = v327[137];
          v117 = *(v76 + 144);
          v118 = *(v76 + 152);
          v119 = *(v323 + 32);

          v325 = v117;
          v326 = v118;
          v120 = v306;
          (*(*v119 + 240))(&v325, 1, &v330, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          if ((*(v313 + 48))(v120, 1, v314) == 1)
          {
            sub_1CEFCCC44(v327, &unk_1EC4BFC20, &unk_1CFA0A290);

            v148 = &qword_1EC4C1B40;
            v149 = &unk_1CF9FCB70;
            v150 = v120;
            goto LABEL_90;
          }

          v208 = v302;
          sub_1CEFE55D0(v120, v302, &unk_1EC4BE360, &qword_1CF9FE650);
          if ((sub_1CF7E6990() & 1) != 0 && *(v208 + *(v314 + 48)) != 2)
          {
            sub_1CEFCCC44(v208, &unk_1EC4BE360, &qword_1CF9FE650);

            if (v322 != 4 || !v318)
            {
              sub_1CEFCCC44(v327, &unk_1EC4BFC20, &unk_1CFA0A290);
              return;
            }

            goto LABEL_89;
          }

          v209 = sub_1CF75C288();
          if (v209 && (v322 | 4) == 4 || (v319 | 2) != 6 || v209 && (v322 | 2) == 3)
          {

            sub_1CEFCCC44(v208, &unk_1EC4BE360, &qword_1CF9FE650);
            v179 = &unk_1EC4BFC20;
            v180 = &unk_1CFA0A290;
            v181 = v327;
            goto LABEL_358;
          }

          if (v319 == 4)
          {
            v322 = v119;
            v261 = v323;
            if (v116)
            {
              v325 = v116;
              v262 = v294;
              sub_1CEFCCBDC(v320, v294, &unk_1EC4BFDF0, &unk_1CFA054F0);
              if ((v321)(v262, 1, v315) == 1)
              {
                v263 = v116;
                v264 = &unk_1EC4BFDF0;
                v265 = &unk_1CFA054F0;
                goto LABEL_456;
              }

              if (swift_getEnumCaseMultiPayload() != 3)
              {
                v286 = v116;
                v264 = &qword_1EC4BE710;
                v265 = &qword_1CF9FE5A8;
LABEL_456:
                sub_1CEFCCC44(v262, v264, v265);
                if ((v317 & 0x10) != 0)
                {
                }

                else
                {
                  v287 = (*(*v322 + 488))(v75, &v330, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
                  if (v287)
                  {
                  }

                  else
                  {
                    (*(**(v323 + 40) + 432))(&v324, &v325, 1, &v330, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

                    v291 = v324;
                    if (v324)
                    {

                      sub_1CEFCCC44(v302, &unk_1EC4BE360, &qword_1CF9FE650);
                      sub_1CEFCCC44(v327, &unk_1EC4BFC20, &unk_1CFA0A290);

                      return;
                    }
                  }

                  v261 = v323;
                  v208 = v302;
                }

                goto LABEL_459;
              }

              sub_1CEFCCC44(v262, &qword_1EC4BE710, &qword_1CF9FE5A8);
LABEL_459:
              v325 = v116;
              v288 = *(**(v261 + 24) + 256);
              v289 = v116;
              v290 = v288(&v325, &v330, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

              if (v290)
              {

                sub_1CEFCCC44(v208, &unk_1EC4BE360, &qword_1CF9FE650);
                sub_1CEFCCC44(v327, &unk_1EC4BFC20, &unk_1CFA0A290);
                return;
              }

              goto LABEL_370;
            }
          }

          else
          {
            v261 = v323;
            if (v116)
            {
              goto LABEL_459;
            }
          }

LABEL_370:
          sub_1CEFCCC44(v208, &unk_1EC4BE360, &qword_1CF9FE650);
          goto LABEL_89;
        }

        goto LABEL_103;
      }

      v153 = v318;
      if (*(v318 + 9))
      {

        sub_1CEFD0994(*v153, *(v153 + 8), *(v153 + 9));
        goto LABEL_357;
      }

      v184 = v71;
      *&v329[0] = *(v318 + 16);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_381;
      }

      if (v328[0] == 5)
      {
        v185 = *v318;
        v186 = *(v318 + 8);
        v187 = *(v71 + 144);
        if (*(v71 + 152))
        {
          if (*(v71 + 152) == 1)
          {
            goto LABEL_134;
          }

LABEL_283:
          if (v187)
          {
            if (v186 != 2 || v185 != 1)
            {
              goto LABEL_381;
            }

LABEL_380:

            goto LABEL_123;
          }

          if (v186 == 2 && !v185)
          {
            goto LABEL_380;
          }

LABEL_381:

          v269 = *v318;
          v270 = *(v318 + 8);
          v271 = v184;
          v272 = *(v184 + 144);
          v273 = *(v271 + 152);
          if (v273)
          {
            if (v273 == 1)
            {

              if (v270 != 1 || v272 != v269)
              {
                goto LABEL_357;
              }
            }

            else
            {

              if (v272)
              {
                if (v270 != 2 || v269 != 1)
                {
                  goto LABEL_357;
                }
              }

              else if (v270 != 2 || v269)
              {
                goto LABEL_357;
              }
            }
          }

          else
          {

            if (v270 || v272 != v269)
            {
              goto LABEL_357;
            }
          }

          v148 = &unk_1EC4BFDF0;
          v149 = &unk_1CFA054F0;
          v150 = v319;
          goto LABEL_90;
        }
      }

      else
      {
        if (v328[0] != 3)
        {
          goto LABEL_381;
        }

        v185 = *v318;
        v186 = *(v318 + 8);
        v187 = *(v71 + 144);
        if (*(v71 + 152))
        {
          if (*(v71 + 152) == 1)
          {
LABEL_134:
            if (v186 != 1 || v187 != v185)
            {
              goto LABEL_381;
            }

            goto LABEL_380;
          }

          goto LABEL_283;
        }
      }

      if (!v186 && v187 == v185)
      {
        goto LABEL_380;
      }

      goto LABEL_381;
    }

    if (EnumCaseMultiPayload == 22)
    {
      v315 = v72;

      sub_1CEFCCC44(v318, &qword_1EC4BE710, &qword_1CF9FE5A8);
      goto LABEL_8;
    }

    v88 = v318;
    if (EnumCaseMultiPayload != 32)
    {
      goto LABEL_104;
    }

    if (*(v318 + 9))
    {
      sub_1CEFD0994(*(v318 + 16), *(v318 + 24), *(v318 + 25));
LABEL_103:
      sub_1CEFD0994(*v88, *(v88 + 8), *(v88 + 9));
      goto LABEL_357;
    }

    v196 = *v318;
    v197 = *(v71 + 144);
    v198 = *(v71 + 152);
    if (*(v318 + 8))
    {
      if (*(v318 + 8) == 1)
      {
        if (v198 != 1 || v196 != v197)
        {
LABEL_314:
          sub_1CEFD0994(*(v318 + 16), *(v318 + 24), *(v318 + 25));
          goto LABEL_357;
        }
      }

      else if (v196)
      {
        if (v198 != 2 || v197 != 1)
        {
          goto LABEL_314;
        }
      }

      else if (v198 != 2 || v197)
      {
        goto LABEL_314;
      }
    }

    else if (*(v71 + 152) || v196 != v197)
    {
      goto LABEL_314;
    }

    v315 = v72;
    v255 = *(v318 + 16);
    v256 = *(v318 + 25);
    v257 = *(v318 + 24);

    v258 = v255;
    v259 = v257;
    v260 = v256;
    goto LABEL_313;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDB0, &unk_1CF9FAE50);
  v78 = swift_dynamicCastClass();
  v79 = v323;
  if (!v78)
  {
    if (v65 == 0x40000)
    {
LABEL_31:
      if (!*(v378 + 112) && (*(v378 + 97) & 1) == 0)
      {
        return;
      }

      sub_1CEFCCBDC(v320, v45, &unk_1EC4BFDF0, &unk_1CFA054F0);
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
      if ((*(*(v97 - 8) + 48))(v45, 1, v97) != 1)
      {
        sub_1CEFCCBDC(v45, v42, &unk_1EC4BFDF0, &unk_1CFA054F0);
        if (swift_getEnumCaseMultiPayload() != 14)
        {
          sub_1CEFCCC44(v42, &qword_1EC4BE710, &qword_1CF9FE5A8);
LABEL_123:
          v179 = &unk_1EC4BFDF0;
          v180 = &unk_1CFA054F0;
          v181 = v45;
LABEL_358:
          sub_1CEFCCC44(v181, v179, v180);
          return;
        }

        v130 = *v42;
        v131 = v42[9];
        v132 = v42[10];
        v133 = v42[8];
        v134 = sub_1CF39C138(v378);
        LOBYTE(v132) = sub_1CF384598(v130, v133 | (v132 << 16) | (v131 << 8), v134);
        v134, v135, v136, v137, v138, v139, v140, v141;
        sub_1CEFD0994(v130, v133, v131);
        if ((v132 & 1) == 0)
        {
          goto LABEL_123;
        }
      }

      sub_1CEFCCC44(v45, &unk_1EC4BFDF0, &unk_1CFA054F0);
      v98 = v378;
      v99 = 1;
LABEL_46:
      sub_1CF3F1098(v98, v99, v316, v317);
      return;
    }

    if (v65 != 256)
    {
      goto LABEL_25;
    }

LABEL_43:
    if (((*(*v323 + 152))() & 0x100) != 0)
    {
      return;
    }

    sub_1CEFCCBDC(v320, v51, &unk_1EC4BFDF0, &unk_1CFA054F0);
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
    if ((*(*(v101 - 8) + 48))(v51, 1, v101) == 1)
    {
      goto LABEL_45;
    }

    sub_1CEFCCBDC(v51, v48, &unk_1EC4BFDF0, &unk_1CFA054F0);
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      v166 = *v48;
      v167 = v48[9];
      v168 = v48[10];
      v169 = v48[8];
      v170 = sub_1CF39C138(v378);
      v171 = sub_1CF384598(v166, v169 | (v168 << 16) | (v167 << 8), v170);
      v170, v172, v173, v174, v175, v176, v177, v178;
      sub_1CEFD0994(v166, v169, v167);
      if (v171)
      {
LABEL_45:
        sub_1CEFCCC44(v51, &unk_1EC4BFDF0, &unk_1CFA054F0);
        v98 = v378;
        v99 = 0;
        goto LABEL_46;
      }
    }

    else
    {
      sub_1CEFCCC44(v48, &qword_1EC4BE710, &qword_1CF9FE5A8);
    }

    v179 = &unk_1EC4BFDF0;
    v180 = &unk_1CFA054F0;
    goto LABEL_154;
  }

  if (v65 > 255)
  {
    if (v65 != 256)
    {
      if (v65 != 0x40000)
      {
        goto LABEL_47;
      }

      goto LABEL_31;
    }

    goto LABEL_43;
  }

  if (v65 == 64)
  {
    v80 = v78;
    v81 = v315;
    sub_1CEFCCBDC(v320, v315, &unk_1EC4BFDF0, &unk_1CFA054F0);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
    if ((*(*(v82 - 8) + 48))(v81, 1, v82) == 1)
    {

      v83 = v322;
LABEL_15:
      sub_1CEFCCC44(v81, &unk_1EC4BFDF0, &unk_1CFA054F0);
      v84 = v79[4];
      v85 = *(v80 + 152);
      *&v329[0] = *(v80 + 144);
      BYTE8(v329[0]) = v85;
      v86 = *(*v84 + 240);

      v81 = v308;
      v86(v329, 1, &v330, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      if (v83)
      {
        goto LABEL_9;
      }

      v199 = v314;
      if ((*(v313 + 48))(v81, 1, v314) == 1)
      {

        v148 = &qword_1EC4C1B40;
        v149 = &unk_1CF9FCB70;
LABEL_157:
        v150 = v81;
        goto LABEL_90;
      }

      v51 = v303;
      sub_1CEFE55D0(v81, v303, &unk_1EC4BE360, &qword_1CF9FE650);
      v207 = &v51[*(v199 + 48)];
      if (*v207 == 2)
      {

        v148 = &unk_1EC4BE360;
        v149 = &qword_1CF9FE650;
        v150 = v51;
        goto LABEL_90;
      }

      if (v207[*(type metadata accessor for ItemMetadata(0) + 80)] == 1)
      {
        v228 = *(v80 + 144);
        v229 = *(v80 + 152);

        sub_1CF7EB934(v228, v229, v316, v317, v329);
        memcpy(v328, v329, sizeof(v328));
        if (sub_1CF08B99C(v328) != 1)
        {
          memcpy(v327, v329, sizeof(v327));
          memcpy(v367, v329, 0x158uLL);
          v376 = *(&v329[29] + 9);
          v377[0] = *(&v329[30] + 9);
          *(v377 + 15) = *(&v329[31] + 8);
          v372 = *(&v329[25] + 9);
          v373 = *(&v329[26] + 9);
          v374 = *(&v329[27] + 9);
          v375 = *(&v329[28] + 9);
          v368 = *(&v329[21] + 9);
          v369 = *(&v329[22] + 9);
          v370 = *(&v329[23] + 9);
          v371 = *(&v329[24] + 9);
          v367[344] = v327[344];
          sub_1CF75C288();

          sub_1CEFCCC44(v51, &unk_1EC4BE360, &qword_1CF9FE650);
          sub_1CEFCCC44(v327, &unk_1EC4BFC20, &unk_1CFA0A290);
          return;
        }

        sub_1CEFCCC44(v51, &unk_1EC4BE360, &qword_1CF9FE650);

        goto LABEL_42;
      }

      v179 = &unk_1EC4BE360;
      v180 = &qword_1CF9FE650;
LABEL_154:
      v181 = v51;
      goto LABEL_358;
    }

    v142 = v307;
    sub_1CEFCCBDC(v81, v307, &unk_1EC4BFDF0, &unk_1CFA054F0);
    v143 = swift_getEnumCaseMultiPayload();
    v83 = v322;
    if (v143 > 10)
    {
      if (v143 == 11)
      {
        v210 = *(v142 + 16);
        v211 = *(v142 + 24);
        if (!*(v142 + 27))
        {

          sub_1CF47FDFC(v210, v211);
          sub_1CEFD0994(*v142, *(v142 + 8), *(v142 + 9));
          goto LABEL_15;
        }

        sub_1CF47FDFC(*(v142 + 16), *(v142 + 24));
        goto LABEL_198;
      }

      if (v143 != 15)
      {
        if (v143 == 16)
        {
          v144 = *(v142 + 16);

          if ((*(v142 + 9) & 1) == 0)
          {
            v145 = *v142;
            v146 = *(v142 + 8);
            v147 = *(v80 + 144);
            if (*(v80 + 152))
            {
              if (*(v80 + 152) == 1)
              {

                if (v146 != 1 || v147 != v145)
                {
                  goto LABEL_423;
                }
              }

              else
              {

                if (v147)
                {
                  if (v146 != 2 || v145 != 1)
                  {
                    goto LABEL_423;
                  }
                }

                else if (v146 != 2 || v145)
                {
                  goto LABEL_423;
                }
              }
            }

            else
            {

              if (v146 || v147 != v145)
              {
                goto LABEL_423;
              }
            }

            v148 = &unk_1EC4BFDF0;
            v149 = &unk_1CFA054F0;
            goto LABEL_157;
          }

          goto LABEL_195;
        }

LABEL_199:
        sub_1CEFCCC44(v142, &qword_1EC4BE710, &qword_1CF9FE5A8);
        goto LABEL_423;
      }

      v212 = *(v142 + 16);

      if (*(v142 + 9))
      {
LABEL_195:

LABEL_198:
        sub_1CEFD0994(*v142, *(v142 + 8), *(v142 + 9));
LABEL_423:
        v179 = &unk_1EC4BFDF0;
        v180 = &unk_1CFA054F0;
        v181 = v81;
        goto LABEL_358;
      }

      v239 = *v142;
      v240 = *(v142 + 8);
      v241 = *(v80 + 144);
      if (*(v80 + 152))
      {
        if (*(v80 + 152) == 1)
        {
          if (v240 == 1 && v241 == v239)
          {
            goto LABEL_15;
          }

          goto LABEL_407;
        }

        v268 = v240 == 2;
        if (v241)
        {
          goto LABEL_342;
        }

LABEL_404:
        if (v268 && !v239)
        {
          goto LABEL_15;
        }

        goto LABEL_407;
      }

      if (!*(v142 + 8) && v241 == v239)
      {
        goto LABEL_15;
      }

      goto LABEL_407;
    }

    if (v143 != 5)
    {
      if (v143 != 6)
      {
        goto LABEL_199;
      }

      v321 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBE0, &unk_1CFA05320) + 48);
      v200 = v314;
      v201 = *(v313 + 48);
      if (v201(v142, 1, v314) == 1)
      {
        sub_1CEFCCC44(v142 + v321, &qword_1EC4C1B40, &unk_1CF9FCB70);
        v202 = v142;
      }

      else
      {
        if (v201(v142 + v321, 1, v200) == 1)
        {
          v245 = *v142;
          v246 = *(v142 + 8);

          sub_1CEFCCC44(v142, &unk_1EC4BE360, &qword_1CF9FE650);
          v239 = *(v80 + 144);
          v247 = *(v80 + 152);
          v81 = v315;
          if (v246)
          {
            if (v246 != 1)
            {
              v268 = v247 == 2;
              if (v245)
              {
LABEL_342:
                if (v268 && v239 == 1)
                {
                  goto LABEL_15;
                }

                goto LABEL_407;
              }

              goto LABEL_404;
            }

            if (v247 == 1 && v245 == v239)
            {
              goto LABEL_15;
            }
          }

          else if (!*(v80 + 152) && v245 == v239)
          {
            goto LABEL_15;
          }

LABEL_407:

          goto LABEL_423;
        }

        sub_1CEFCCC44(v142, &unk_1EC4BE360, &qword_1CF9FE650);
        v202 = v142 + v321;
      }

      sub_1CEFCCC44(v202, &qword_1EC4C1B40, &unk_1CF9FCB70);
      v81 = v315;
      goto LABEL_423;
    }

    if (*(v142 + 9))
    {
      sub_1CEFD0994(*(v142 + 16), *(v142 + 24), *(v142 + 25));
      goto LABEL_198;
    }

    v242 = *v142;
    v243 = *(v142 + 8);
    v244 = *(v80 + 144);
    if (*(v80 + 152))
    {
      if (*(v80 + 152) == 1)
      {
        if (v243 != 1 || v244 != v242)
        {
LABEL_422:
          sub_1CEFD0994(*(v142 + 16), *(v142 + 24), *(v142 + 25));
          goto LABEL_423;
        }
      }

      else if (v244)
      {
        if (v243 != 2 || v242 != 1)
        {
          goto LABEL_422;
        }
      }

      else if (v243 != 2 || v242)
      {
        goto LABEL_422;
      }
    }

    else if (*(v142 + 8) || v244 != v242)
    {
      goto LABEL_422;
    }

    v278 = *(v142 + 16);
    v279 = *(v142 + 25);
    v280 = *(v142 + 24);

    sub_1CEFD0994(v278, v280, v279);
    goto LABEL_15;
  }

LABEL_25:
  if (v65 == 128)
  {
    if (((*(*v323 + 152))() & 0x100) == 0)
    {
      v94 = *(v310 + 48);
      v95 = v312;
      sub_1CEFCCBDC(v320, v312, &unk_1EC4BFDF0, &unk_1CFA054F0);
      *(v95 + v94) = v378;
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
      if ((*(*(v96 - 8) + 48))(v95, 1, v96) == 1)
      {
      }

      else
      {
        sub_1CEFCCBDC(v95, v54, &unk_1EC4BFDF0, &unk_1CFA054F0);
        if (swift_getEnumCaseMultiPayload() == 12)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA28, &unk_1CFA05660);
          if (swift_dynamicCastClass())
          {
            v163 = v54[27];
            v164 = *(v54 + 2);
            v165 = *(v54 + 12);

            sub_1CF47FDFC(v164, v165);
            sub_1CEFD0994(*v54, v54[8], v54[9]);
            if (v163 == 6)
            {

              v148 = &unk_1EC4BFDF0;
              v149 = &unk_1CFA054F0;
              v150 = v95;
              goto LABEL_90;
            }
          }

          else
          {
            v213 = *(v54 + 2);
            v214 = *(v54 + 12);

            sub_1CF47FDFC(v213, v214);
            sub_1CEFD0994(*v54, v54[8], v54[9]);
          }
        }

        else
        {

          sub_1CEFCCC44(v54, &qword_1EC4BE710, &qword_1CF9FE5A8);
        }
      }

      v215 = sub_1CEFCCC44(v95, &qword_1EC4C01F0, &qword_1CFA05700);
      v216 = (*(*v79 + 264))(v215);
      sub_1CF9615C8(sub_1CF193328, 0);

      return;
    }

    return;
  }

LABEL_47:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA18, &unk_1CFA05680);
  v102 = v378;
  v103 = swift_dynamicCastClass();
  if (v103 && v65 == 2048)
  {
    v104 = v103;
    v105 = v311;
    sub_1CEFCCBDC(v320, v311, &unk_1EC4BFDF0, &unk_1CFA054F0);
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
    v107 = (*(*(v106 - 8) + 48))(v105, 1, v106);
    v108 = v309;
    if (v107 == 1)
    {
LABEL_435:
      sub_1CEFCCC44(v105, &unk_1EC4BFDF0, &unk_1CFA054F0);
      return;
    }

    sub_1CEFCCBDC(v105, v309, &unk_1EC4BFDF0, &unk_1CFA054F0);
    v109 = swift_getEnumCaseMultiPayload();
    if (v109 == 48)
    {
LABEL_432:
      sub_1CEFCCC44(v105, &unk_1EC4BFDF0, &unk_1CFA054F0);
      return;
    }

    if (v109 != 20)
    {
      sub_1CEFCCC44(v108, &qword_1EC4BE710, &qword_1CF9FE5A8);
      goto LABEL_435;
    }

    v110 = *v108;
    v111 = *(v108 + 3);

    if (v108[17])
    {

      sub_1CEFD0994(*(v108 + 1), v108[16], v108[17]);
      goto LABEL_435;
    }

    if (qword_1CFA05BE8[sub_1CF388E8C()] == qword_1CFA05BE8[v110])
    {
      v217 = *(v108 + 1);
      v218 = v108[16];
      v219 = v104;
      v220 = *(v104 + 144);
      v221 = *(v219 + 152);
      if (!v221)
      {

        if (v218 || v220 != v217)
        {
          goto LABEL_435;
        }

        goto LABEL_432;
      }

      if (v221 == 1)
      {

        if (v218 != 1 || v220 != v217)
        {
          goto LABEL_435;
        }

        goto LABEL_432;
      }

      if (v220)
      {
        if (v218 != 2 || v217 != 1)
        {
          goto LABEL_434;
        }
      }

      else if (v218 != 2 || v217)
      {
        goto LABEL_434;
      }

      goto LABEL_432;
    }

LABEL_434:

    goto LABEL_435;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C00E0, &qword_1CF9FACC8);
  v121 = swift_dynamicCastClass();
  if (v121 && v65 == 2048)
  {
    v122 = v121;
    v123 = v305;
    sub_1CEFCCBDC(v320, v305, &unk_1EC4BFDF0, &unk_1CFA054F0);
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
    v125 = (*(*(v124 - 8) + 48))(v123, 1, v124);
    v126 = v304;
    if (v125 == 1)
    {
LABEL_454:
      v179 = &unk_1EC4BFDF0;
      v180 = &unk_1CFA054F0;
      v181 = v123;
      goto LABEL_358;
    }

    sub_1CEFCCBDC(v123, v304, &unk_1EC4BFDF0, &unk_1CFA054F0);
    v127 = swift_getEnumCaseMultiPayload();
    if (v127 != 48)
    {
      if (v127 != 20)
      {
        sub_1CEFCCC44(v126, &qword_1EC4BE710, &qword_1CF9FE5A8);
        goto LABEL_454;
      }

      v128 = *v126;
      v129 = *(v126 + 3);

      if (v126[17])
      {

        sub_1CEFD0994(*(v126 + 1), v126[16], v126[17]);
        goto LABEL_454;
      }

      if (qword_1CFA05BE8[sub_1CF388E8C()] != qword_1CFA05BE8[v128])
      {
LABEL_453:

        goto LABEL_454;
      }

      v248 = *(v126 + 1);
      v249 = v126[16];
      v250 = v122;
      v251 = *(v122 + 144);
      v252 = *(v250 + 152);
      if (v252)
      {
        if (v252 == 1)
        {

          if (v249 != 1)
          {
            goto LABEL_454;
          }

          goto LABEL_299;
        }

        if (v251)
        {
          if (v249 != 2 || v248 != 1)
          {
            goto LABEL_453;
          }
        }

        else if (v249 != 2 || v248)
        {
          goto LABEL_453;
        }

        goto LABEL_452;
      }

      if (v249)
      {
        goto LABEL_454;
      }

LABEL_409:
      if (v251 != v248)
      {
        goto LABEL_454;
      }
    }

LABEL_452:
    v148 = &unk_1EC4BFDF0;
    v149 = &unk_1CFA054F0;
    v150 = v123;
    goto LABEL_90;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA00, &qword_1CF9FADC8);
  v156 = swift_dynamicCastClass();
  if (v156)
  {
    if (v65 < 0x20000)
    {
      if (v65 < 0x2000)
      {
        if (v65 != 1)
        {
          if (v65 == 2048)
          {
            v157 = v156;
            v123 = v299;
            sub_1CEFCCBDC(v320, v299, &unk_1EC4BFDF0, &unk_1CFA054F0);
            v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
            if ((*(*(v158 - 8) + 48))(v123, 1, v158) == 1)
            {
              goto LABEL_454;
            }

            sub_1CEFCCBDC(v123, v298, &unk_1EC4BFDF0, &unk_1CFA054F0);
            v159 = swift_getEnumCaseMultiPayload();
            if (v159 == 48)
            {
              goto LABEL_452;
            }

            if (v159 != 20)
            {
              sub_1CEFCCC44(v298, &qword_1EC4BE710, &qword_1CF9FE5A8);
              goto LABEL_454;
            }

            v160 = v298;
            v161 = *v298;
            v162 = *(v298 + 3);

            if (v160[17])
            {

              sub_1CEFD0994(*(v298 + 1), v298[16], v298[17]);
              goto LABEL_454;
            }

            if (qword_1CFA05BE8[sub_1CF388E8C()] == qword_1CFA05BE8[v161])
            {
              v248 = *(v298 + 1);
              v283 = v298[16];
              v284 = v157;
              v251 = *(v157 + 144);
              v285 = *(v284 + 152);
              if (!v285)
              {

                v123 = v299;
                if (v283)
                {
                  goto LABEL_454;
                }

                goto LABEL_409;
              }

              if (v285 == 1)
              {

                v123 = v299;
                if (v283 != 1)
                {
                  goto LABEL_454;
                }

LABEL_299:
                if (v251 != v248)
                {
                  goto LABEL_454;
                }

                goto LABEL_452;
              }

              if (v251)
              {
                if (v283 != 2 || v248 != 1)
                {
                  goto LABEL_477;
                }
              }

              else if (v283 != 2 || v248)
              {
                goto LABEL_477;
              }

              v123 = v299;
              goto LABEL_452;
            }

LABEL_477:

            v123 = v299;
            goto LABEL_454;
          }

LABEL_259:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD960, &qword_1CF9FAC80);
          v233 = swift_dynamicCastClass();
          if (v233)
          {
            if (v65 != 0x2000000)
            {
              if (v65 != 0x1000000)
              {
                if (v65 == 0x800000)
                {
                  v234 = v233;
                  v235 = v295;
                  sub_1CEFCCBDC(v320, v295, &unk_1EC4BFDF0, &unk_1CFA054F0);
                  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
                  if ((*(*(v236 - 8) + 48))(v235, 1, v236) == 1)
                  {
                    v237 = &unk_1EC4BFDF0;
                    v238 = &unk_1CFA054F0;
                  }

                  else
                  {
                    if (swift_getEnumCaseMultiPayload() == 38)
                    {
                      v274 = *(v235 + 10);
                      v275 = *v235;
                      v276 = *(v235 + 8);
                      v277 = *(v235 + 9);
                      if (qword_1CFA05BE8[sub_1CF388E8C()] == qword_1CFA05BE8[v274])
                      {
                        sub_1CF7BC790(*(v234 + 144), *(v234 + 152), v275, v276 | (v277 << 8));
                      }

                      sub_1CEFD0994(v275, v276, v277);
                      return;
                    }

                    v237 = &qword_1EC4BE710;
                    v238 = &qword_1CF9FE5A8;
                  }

                  sub_1CEFCCC44(v235, v237, v238);
                  return;
                }

LABEL_478:
                *&v329[0] = 0;
                *(&v329[0] + 1) = 0xE000000000000000;
                sub_1CF9E7948();
                v292.n128_f64[0] = MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA45B90);
                sub_1CF961388(v292);
                sub_1CF9E7B68();
                __break(1u);
                return;
              }

LABEL_372:
              if (qword_1EDEA5A98 != -1)
              {
                swift_once();
              }

              sub_1CF9615C8(sub_1CF193328, 0);
              return;
            }
          }

          else if (v65 != 0x2000000)
          {
            if (v65 != 0x1000000)
            {
              goto LABEL_478;
            }

            goto LABEL_372;
          }

          v266 = v79[3];
          (*(**(v79[4] + 16) + 96))(v329);
          v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB80, &unk_1CF9FAD90);
          (*(*v266 + 328))(v329, v267, 0, &v330, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          return;
        }

        goto LABEL_247;
      }

      if (v65 == 0x2000)
      {
LABEL_240:
        if (((*(*v79 + 152))() & 0x80) == 0)
        {
          return;
        }

        v224 = v297;
        sub_1CEFCCBDC(v320, v297, &unk_1EC4BFDF0, &unk_1CFA054F0);
        v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
        if ((*(*(v225 - 8) + 48))(v224, 1, v225) != 1)
        {
          v226 = v296;
          sub_1CEFCCBDC(v224, v296, &unk_1EC4BFDF0, &unk_1CFA054F0);
          v227 = swift_getEnumCaseMultiPayload();
          sub_1CEFCCC44(v226, &qword_1EC4BE710, &qword_1CF9FE5A8);
          if (v227 == 28)
          {
            v148 = &unk_1EC4BFDF0;
            v149 = &unk_1CFA054F0;
            v150 = v224;
            goto LABEL_90;
          }
        }

        goto LABEL_258;
      }

LABEL_237:
      if (v65 == 0x10000)
      {
        v222 = *(**(v79[4] + 16) + 848);

        v222(v223);

        return;
      }

      goto LABEL_259;
    }
  }

  else if (v65 < 0x20000)
  {
    if (v65 == 1)
    {
LABEL_247:
      v224 = v300;
      sub_1CEFCCBDC(v320, v300, &unk_1EC4BFDF0, &unk_1CFA054F0);
      v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
      if ((*(*(v230 - 8) + 48))(v224, 1, v230) != 1)
      {
        swift_getEnumCaseMultiPayload();
        sub_1CEFCCC44(v224, &qword_1EC4BE710, &qword_1CF9FE5A8);
        return;
      }

      goto LABEL_258;
    }

    if (v65 == 0x2000)
    {
      goto LABEL_240;
    }

    goto LABEL_237;
  }

  if (v65 >= 0x200000)
  {
    if (v65 == 0x200000)
    {
      if (*(v102 + 136) == 0x8000)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF30, &unk_1CFA05600);
        if (swift_dynamicCastClass())
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
          if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCB0, &unk_1CF9FAE60), swift_dynamicCastClass()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA58, &unk_1CFA05640), swift_dynamicCastClass()))
          {
            v231 = qword_1EDEACC50;

            if (v231 != -1)
            {
              swift_once();
            }

            sub_1CF9615C8(sub_1CF193328, 0);
          }
        }
      }

      return;
    }

    if (v65 == 0x400000)
    {
      (*(*v79 + 256))();
      return;
    }

    goto LABEL_259;
  }

  if (v65 != 0x20000)
  {
    if (v65 == 0x80000)
    {
      (*(*v79 + 160))();
      return;
    }

    goto LABEL_259;
  }

  v224 = v301;
  sub_1CEFCCBDC(v320, v301, &unk_1EC4BFDF0, &unk_1CFA054F0);
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  if ((*(*(v232 - 8) + 48))(v224, 1, v232) == 1)
  {
LABEL_258:
    v179 = &unk_1EC4BFDF0;
    v180 = &unk_1CFA054F0;
    v181 = v224;
    goto LABEL_358;
  }

  if (swift_getEnumCaseMultiPayload() != 24)
  {
    v179 = &qword_1EC4BE710;
    v180 = &qword_1CF9FE5A8;
    v181 = v224;
    goto LABEL_358;
  }
}

uint64_t sub_1CF443664(uint64_t a1, char a2, uint64_t a3, _TtC18FileProviderDaemon8FSTester *a4, uint64_t a5, char a6, uint64_t a7, _TtC18FileProviderDaemon8FSTester *a8)
{
  v10 = a4;
  v11 = a3;
  if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0;
      if (a6 != 1 || a1 != a5)
      {
        return v12 & 1;
      }

LABEL_15:
      v13 = sub_1CEFE7394(a3, a4);
      if (v14)
      {
        if (v13 == 12565487 && v14 == 0xA300000000000000)
        {
          0xA300000000000000, 0xA300000000000000, v15, v16, v17, v18, v19, v20;
LABEL_20:
          v30 = sub_1CF9E69E8();
          v31 = sub_1CF025150(v30, v11, v10);
          v33 = v32;
          v11 = MEMORY[0x1D3868C10](v31);
          v10 = v34;
          v33, v34, v35, v36, v37, v38, v39, v40;
          goto LABEL_22;
        }

        v21 = v14;
        v22 = sub_1CF9E8048();
        v21, v23, v24, v25, v26, v27, v28, v29;
        if (v22)
        {
          goto LABEL_20;
        }
      }

LABEL_22:
      v41 = sub_1CEFE7394(a7, a8);
      if (v42)
      {
        if (v41 == 12565487 && v42 == 0xA300000000000000)
        {
          0xA300000000000000, 0xA300000000000000, v43, v44, v45, v46, v47, v48;
          goto LABEL_27;
        }

        v49 = v42;
        v50 = sub_1CF9E8048();
        v49, v51, v52, v53, v54, v55, v56, v57;
        if (v50)
        {
LABEL_27:
          v58 = sub_1CF9E69E8();
          v59 = sub_1CF025150(v58, a7, a8);
          v61 = v60;
          v62 = MEMORY[0x1D3868C10](v59);
          a8 = v63;
          v61, v63, v64, v65, v66, v67, v68, v69;
          if (v11 != v62)
          {
            goto LABEL_32;
          }

LABEL_30:
          if (v10 == a8)
          {
            v12 = 1;
LABEL_33:
            a8, v70, v71, v72, v73, v74, v75, v76;
            v10, v77, v78, v79, v80, v81, v82, v83;
            return v12 & 1;
          }

LABEL_32:
          v12 = sub_1CF9E8048();
          goto LABEL_33;
        }
      }

      if (v11 != a7)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    v12 = 0;
    if (a1)
    {
      if (a6 == 2 && a5 == 1)
      {
        goto LABEL_15;
      }
    }

    else if (a6 == 2 && !a5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v12 = 0;
    if (!a6 && a1 == a5)
    {
      goto LABEL_15;
    }
  }

  return v12 & 1;
}

uint64_t sub_1CF44389C(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v122 = v2;
  v117 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v114 = v11;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  MEMORY[0x1EEE9AC00](v112);
  v113 = (&v83 - v12);
  v118 = v6;
  v158 = v6;
  LODWORD(v119) = v4;
  v159 = v4;
  memcpy(v156, v8, sizeof(v156));
  v13 = *(v8 + 1056);
  v14 = *(v8 + 1064);
  v15 = *(v8 + 1072);
  LODWORD(v6) = *(v8 + 1080);
  memcpy(v155, (v8 + 1081), sizeof(v155));
  memcpy(v180, v8, 0x420uLL);
  v180[132] = v13;
  v180[133] = v14;
  v180[134] = v15;
  v183 = v6;
  LOBYTE(v180[135]) = v6;
  memcpy(&v180[135] + 1, (v8 + 1081), 0x20FuLL);
  memcpy(v181, v180, 0x648uLL);
  v16 = sub_1CF480474(v181);
  v115 = v10;
  if (v16 == 1)
  {
    sub_1CEFCCBDC(v8, v154, &qword_1EC4BFC40, &qword_1CFA05380);
    v17 = v122;
  }

  else
  {
    v120 = v15;
    v121 = v14;
    memcpy(v154, v180, sizeof(v154));
    memcpy(v161, v180, sizeof(v161));
    sub_1CEFCCBDC(v8, v153, &qword_1EC4BFC40, &qword_1CFA05380);
    sub_1CEFCCBDC(v180, v153, &qword_1EC4BFC40, &qword_1CFA05380);
    if (sub_1CF44D9C4(v10))
    {
      v116 = v13;
      sub_1CEFCCBDC(&v154[16], v153, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      sub_1CEFCCBDC(&v154[536], v153, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      sub_1CEFCCC44(v180, &qword_1EC4BFC40, &qword_1CFA05380);
      memcpy(v157, &v154[536], sizeof(v157));
      v83 = *v154;
      v84 = v154[8];
      v97 = *&v154[528];
      v96 = v154[520];
      v94 = *&v154[488];
      v95 = *&v154[504];
      v93 = *&v154[480];
      v92 = v154[472];
      v110 = *&v154[168];
      v111 = *&v154[160];
      v89 = v154[154];
      v102 = v154[176];
      v103 = v154[153];
      v107 = v154[152];
      v104 = v154[48];
      v98 = *&v154[32];
      v105 = *&v154[16];
      v182 = v154[24];
      v90 = *&v154[456];
      v91 = *&v154[464];
      v99 = *&v154[376];
      v100 = *&v154[368];
      v101 = v154[384];
      v86 = v154[361];
      v87 = v154[362];
      v108 = *&v154[264];
      v109 = *&v154[208];
      v171 = *&v154[200];
      v106 = v154[360];
      v164 = *&v154[88];
      v165 = *&v154[104];
      v166 = *&v154[120];
      v167 = *&v154[136];
      v162 = *&v154[56];
      v163 = *&v154[72];
      v170 = *&v154[184];
      v169 = *&v154[232];
      v168 = *&v154[216];
      v172 = *&v154[296];
      v18 = v154[288];
      v173 = *&v154[312];
      v174 = *&v154[328];
      v175 = *&v154[344];
      v176 = *&v154[392];
      v88 = *&v154[280];
      v177 = *&v154[408];
      v85 = *&v154[248];
      v178 = *&v154[424];
      v179 = *&v154[440];
      goto LABEL_27;
    }

    sub_1CEFCCC44(v180, &qword_1EC4BFC40, &qword_1CFA05380);
    v14 = v121;
    v17 = v122;
    v15 = v120;
  }

  memcpy(v153, v156, 0x420uLL);
  v153[132] = v13;
  v153[133] = v14;
  v153[134] = v15;
  LOBYTE(v153[135]) = v183;
  memcpy(&v153[135] + 1, v155, 0x20FuLL);
  memcpy(v154, v153, sizeof(v154));
  v19 = sub_1CF480474(v154);
  v20 = v117;
  if (v19 == 1)
  {
    v120 = v15;
    v121 = v14;
    v116 = v13;
  }

  else
  {
    memcpy(v160, v153, sizeof(v160));
    memcpy(v145, v153, sizeof(v145));
    sub_1CEFCCBDC(v145, v135, &qword_1EC4BFC48, &qword_1CFA05388);
    sub_1CF3F7B80(v160);
    if (v17)
    {
      sub_1CEFCCC44(v153, &qword_1EC4BFC40, &qword_1CFA05380);
LABEL_37:
      memcpy(v154, v156, 0x420uLL);
      *&v154[1056] = v13;
      *&v154[1064] = v14;
      *&v154[1072] = v15;
      v154[1080] = v183;
      memcpy(&v154[1081], v155, 0x20FuLL);
      v44 = v154;
      return sub_1CEFCCC44(v44, &qword_1EC4BFC40, &qword_1CFA05380);
    }

    sub_1CEFCCC44(v153, &qword_1EC4BFC40, &qword_1CFA05380);
    memcpy(v128, v156, sizeof(v128));
    v129 = v13;
    v130 = v14;
    v131 = v15;
    v132 = v183;
    memcpy(v133, v155, sizeof(v133));
    v17 = 0;
    sub_1CEFCCC44(v128, &qword_1EC4BFC40, &qword_1CFA05380);
    sub_1CF48043C(v135);
    memcpy(v156, v135, sizeof(v156));
    v116 = v136;
    v120 = v138;
    v121 = v137;
    v183 = v139;
    memcpy(v155, v140, sizeof(v155));
  }

  sub_1CF44DD2C(v149);
  v21 = *v149;
  v22 = v149[8];
  v23 = v149[9];
  *v147 = *v149;
  v147[8] = v149[8];
  v147[9] = v149[9];
  *&v148[0] = v118;
  BYTE8(v148[0]) = v119;
  v24 = *(*v20 + 168);
  v24(v145, v147, 1, v148, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (v17)
  {
    sub_1CEFD0994(v21, v22, v23);
LABEL_36:
    v13 = v116;
    v15 = v120;
    v14 = v121;
    goto LABEL_37;
  }

  v111 = v24;
  v122 = 0;
  memcpy(v135, v145, 0x210uLL);
  v25 = sub_1CF08B99C(v135);
  if (v25 == 1)
  {
    memcpy(v128, v145, 0x210uLL);
    sub_1CEFCCC44(v128, &unk_1EC4BFD20, &unk_1CFA05440);
    sub_1CF445058(*v147, v147[8] | (v147[9] << 8), v152);
    v26 = 0;
  }

  else
  {
    memcpy(v152, v145, sizeof(v152));
    v26 = v145[65];
  }

  sub_1CEFD0994(v21, v22, v23);
  memcpy(v157, v152, sizeof(v157));
  if (v25 == 1)
  {
    v27 = *(v115 + 2);
    v28 = *(v115 + 115);
    if (v28 == 1)
    {
      *v146 = *(v115 + 2);
      *&v146[8] = 256;
      v125 = v118;
      v126 = v119;
      sub_1CEFCCBDC(v115, v124, &qword_1EC4BE6D0, &qword_1CF9FE560);
      v29 = v122;
      (v111)(v128, v146, 1, &v125, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      v122 = v29;
      if (v29)
      {

        memcpy(v124, v152, 0x208uLL);
LABEL_35:
        sub_1CEFCCC44(v124, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
        goto LABEL_36;
      }

      memcpy(v124, v128, sizeof(v124));
      v30 = sub_1CF08B99C(v124);
      v84 = v30 == 1;
      if (v30 == 1)
      {
        memcpy(v123, v128, sizeof(v123));
        sub_1CEFCCC44(v123, &unk_1EC4BFD20, &unk_1CFA05440);
        sub_1CF445058(*v146, v146[8] | (v146[9] << 8), v134);

        v83 = 0;
      }

      else
      {

        memcpy(v134, v128, sizeof(v134));
        v83 = *(&v128[32] + 1);
      }

      memcpy(v123, v152, 0x208uLL);
      sub_1CEFCCC44(v123, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      memcpy(v157, v134, sizeof(v157));
    }

    else
    {
      v83 = v26;
      v128[0] = *v115;
      *&v128[1] = v27;
      *(&v128[3] + 8) = *(v115 + 56);
      *(&v128[4] + 8) = *(v115 + 72);
      *(&v128[5] + 8) = *(v115 + 88);
      *(&v128[6] + 3) = *(v115 + 99);
      *(&v128[1] + 8) = *(v115 + 24);
      *(&v128[2] + 8) = *(v115 + 40);
      BYTE3(v128[7]) = v28;
      sub_1CEFCCBDC(v115, v124, &qword_1EC4BE6D0, &qword_1CF9FE560);
      sub_1CEFCCC44(v128, &qword_1EC4BE6D0, &qword_1CF9FE560);
      v84 = 1;
    }
  }

  else
  {
    v83 = v26;
    v84 = 0;
  }

  memcpy(v128, v157, 0x208uLL);
  v97 = *&v128[32];
  v96 = BYTE8(v128[31]);
  v94 = *(&v128[29] + 8);
  v95 = *(&v128[30] + 8);
  v93 = *&v128[29];
  v92 = BYTE8(v128[28]);
  v110 = *(&v128[9] + 1);
  v111 = *&v128[9];
  v89 = BYTE10(v128[8]);
  v102 = LOBYTE(v128[10]);
  v103 = BYTE9(v128[8]);
  v107 = BYTE8(v128[8]);
  v104 = LOBYTE(v128[2]);
  v98 = v128[1];
  v105 = *&v128[0];
  v182 = BYTE8(v128[0]);
  v90 = *(&v128[27] + 1);
  v91 = *&v128[28];
  v99 = *(&v128[22] + 1);
  v100 = *&v128[22];
  v101 = LOBYTE(v128[23]);
  v86 = BYTE9(v128[21]);
  v87 = BYTE10(v128[21]);
  v106 = BYTE8(v128[21]);
  v18 = v128[17];
  v88 = *(&v128[16] + 1);
  v108 = *(&v128[15] + 8);
  v85 = *(&v128[14] + 8);
  sub_1CEFCCBDC(v128, v124, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  v164 = *(&v128[4] + 8);
  v165 = *(&v128[5] + 8);
  v166 = *(&v128[6] + 8);
  v167 = *(&v128[7] + 8);
  v162 = *(&v128[2] + 8);
  v163 = *(&v128[3] + 8);
  v170 = *(&v128[10] + 8);
  v168 = *(&v128[12] + 8);
  v169 = *(&v128[13] + 8);
  v172 = *(&v128[17] + 8);
  v173 = *(&v128[18] + 8);
  v174 = *(&v128[19] + 8);
  v175 = *(&v128[20] + 8);
  v179 = *(&v128[26] + 8);
  v178 = *(&v128[25] + 8);
  v177 = *(&v128[24] + 8);
  v109 = *&v128[12];
  v171 = *(&v128[11] + 1);
  v176 = *(&v128[23] + 8);
LABEL_27:
  memcpy(v154, v156, 0x420uLL);
  memcpy(&v154[1081], v155, 0x20FuLL);
  v31 = v116;
  *&v154[1056] = v116;
  v32 = v120;
  v33 = v121;
  *&v154[1064] = v121;
  *&v154[1072] = v120;
  v34 = v183;
  v154[1080] = v183;
  if (sub_1CF480474(v154) == 1)
  {
    v35 = 0;
  }

  else
  {
    v35 = v31;
  }

  v151 = v35;
  memcpy(v153, v156, 0x420uLL);
  memcpy(&v153[135] + 1, v155, 0x20FuLL);
  v153[132] = v31;
  v153[133] = v33;
  v153[134] = v32;
  LOBYTE(v153[135]) = v34;
  if (sub_1CF480474(v153) == 1)
  {
    v36 = 0;
  }

  else
  {
    v36 = v33;
  }

  v150 = v36;
  *&v149[23] = v163;
  *&v149[7] = v162;
  *&v149[87] = v167;
  *(&v148[1] + 7) = v171;
  *&v124[8] = *(&v167 + 1);
  *&v147[7] = v172;
  *&v147[23] = v173;
  *&v147[39] = v174;
  *&v147[55] = v175;
  BYTE10(v124[8]) = v89;
  LOBYTE(v124[17]) = v18;
  *(&v124[19] + 1) = *&v147[32];
  *(&v124[20] + 1) = *&v147[48];
  *(&v124[17] + 1) = *v147;
  *(&v124[18] + 1) = *&v147[16];
  *&v124[21] = *(&v175 + 1);
  BYTE9(v124[21]) = v86;
  *&v146[7] = v176;
  *&v146[23] = v177;
  *&v146[39] = v178;
  *&v146[55] = v179;
  BYTE10(v124[21]) = v87;
  *(&v124[25] + 1) = *&v146[32];
  *(&v124[26] + 1) = *&v146[48];
  *(&v124[23] + 1) = *v146;
  *(&v124[24] + 1) = *&v146[16];
  *(v148 + 7) = v170;
  *&v124[27] = *(&v179 + 1);
  *(&v124[27] + 1) = v90;
  *&v124[28] = v91;
  BYTE8(v124[28]) = v92;
  *&v124[29] = v93;
  *(&v124[29] + 8) = v94;
  *(&v124[30] + 8) = v95;
  BYTE8(v124[31]) = v96;
  v37 = v98;
  *&v124[32] = v97;
  *&v149[71] = v166;
  *&v149[55] = v165;
  *&v149[39] = v164;
  *(&v124[13] + 8) = v169;
  *(&v124[12] + 8) = v168;
  *&v124[0] = v105;
  BYTE8(v124[0]) = v182;
  v38 = *(&v98 + 1);
  v124[1] = v98;
  LOBYTE(v124[2]) = v104;
  *(&v124[4] + 1) = *&v149[32];
  *(&v124[3] + 1) = *&v149[16];
  *(&v124[2] + 1) = *v149;
  *(&v124[7] + 1) = *&v149[80];
  *(&v124[6] + 1) = *&v149[64];
  *(&v124[5] + 1) = *&v149[48];
  BYTE8(v124[8]) = v107;
  BYTE9(v124[8]) = v103;
  v39 = v111;
  *&v124[9] = v111;
  *(&v124[9] + 1) = v110;
  LOBYTE(v124[10]) = v102;
  v124[11] = *(v148 + 15);
  *(&v124[10] + 1) = v148[0];
  *&v124[12] = v109;
  *(&v124[15] + 8) = v108;
  *(&v124[14] + 8) = v85;
  v40 = v88;
  *(&v124[16] + 1) = v88;
  BYTE8(v124[21]) = v106;
  *&v124[22] = v100;
  *(&v124[22] + 1) = v99;
  LOBYTE(v124[23]) = v101;
  v41 = v122;
  sub_1CF447FF8(v115, v157, &v151, &v150, v118, v119);
  v122 = v41;
  if (v41)
  {
    memcpy(v145, v157, 0x208uLL);
    sub_1CEFCCC44(v145, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    goto LABEL_35;
  }

  v46 = v38;
  v111 = v39;
  LODWORD(v97) = v43;
  v119 = v42;
  v47 = v37;
  v48 = v109;
  v49 = v110;
  v50 = sub_1CF44F21C();
  if ((v52 & 1) == 0)
  {
    if (v84)
    {
LABEL_41:
      v157[59] = v50;
      v157[60] = v51;
      goto LABEL_72;
    }

    v53 = v49;
    v54 = v40;
    if (qword_1EDEABDE0 != -1)
    {
      v118 = v50;
      v82 = v51;
      swift_once();
      v54 = v40;
      v53 = v49;
      v50 = v118;
      v51 = v82;
    }

    v55 = qword_1EDEABDE8;
    if (qword_1EDEABDE8)
    {
      if ((qword_1EDEABDE8 & 0x10) != 0)
      {
        if (!(qword_1EDEABDE8 & v46 | v47 & 0x51))
        {
LABEL_51:
          if ((v55 & v54) == 0 && (BYTE8(v108) & 0x51) == 0 && v107 != 1 && v106 != 1 && v104 == 5 && v103 == 6 && (v182 == 255 || !v108 || (v48 & 0xF000000000000000) == 0xB000000000000000 || v106) && (v102 == 3 || v102 == 4 && !(v111 & 0xFFFFFFFFFFFFFFFELL | v53)) && (v101 == 3 || v101 == 4 && !(v100 & 0xFFFFFFFFFFFFFFFELL | v99)))
          {
            goto LABEL_41;
          }
        }

LABEL_67:
        v57 = v157[59];
        if (v50 > v157[59])
        {
          v57 = v50;
        }

        v58 = v157[60];
        if (v51 < v157[60])
        {
          v58 = v51;
        }

        v157[59] = v57;
        v157[60] = v58;
        goto LABEL_72;
      }

      v56 = (qword_1EDEABDE8 | 0x10) & v46;
    }

    else
    {
      v56 = v46 & 0x10;
    }

    if (!(v56 | v47 & 0x51))
    {
      v55 = qword_1EDEABDE8 | 0x10;
      goto LABEL_51;
    }

    goto LABEL_67;
  }

LABEL_72:
  memcpy(v123, v157, 0x208uLL);
  v59 = v150;
  v118 = v151;
  memcpy(v145, v156, 0x420uLL);
  memcpy(&v145[135] + 1, v155, 0x20FuLL);
  v60 = v116;
  v145[132] = v116;
  v61 = v120;
  v62 = v121;
  v145[133] = v121;
  v145[134] = v120;
  v63 = v183;
  LOBYTE(v145[135]) = v183;
  v64 = sub_1CF480474(v145);
  v65 = v64 == 1;
  if (v64 == 1)
  {
    v66 = 0;
  }

  else
  {
    v66 = v61;
  }

  if (v65)
  {
    v67 = -1;
  }

  else
  {
    v67 = v63;
  }

  v68 = v97;
  v110 = sub_1CF079564(v66, v67, v119, v97);
  LODWORD(v111) = v69;
  memcpy(v135, v156, sizeof(v135));
  memcpy(v140, v155, sizeof(v140));
  v136 = v60;
  v137 = v62;
  v138 = v61;
  v139 = v63;
  if (sub_1CF480474(v135) == 1)
  {
    sub_1CF095754(v152);
  }

  else
  {
    memcpy(v128, &v155[7], 0x208uLL);
    sub_1CEFCCBDC(v128, v134, &unk_1EC4BFC20, &unk_1CFA0A290);
    memcpy(v152, v128, sizeof(v152));
  }

  memcpy(&v143[7], v124, 0x208uLL);
  memcpy(v142, v123, sizeof(v142));
  memcpy(&v141[7], v152, 0x208uLL);
  v144 = v84;
  if (v68 == 1)
  {
    sub_1CEFCCBDC(v124, v128, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    sub_1CEFCCBDC(v123, v128, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    sub_1CF44DD2C(&v125);
    v79 = v122;
    (*(*v117 + 208))(&v125, v119, &v158, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
    if (!v79)
    {
      sub_1CEFD0994(v125, v126, v127);
      memcpy(v128, v157, 0x208uLL);
      sub_1CEFCCC44(v128, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      sub_1CEFCCC44(v124, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      v73 = v120;
      v72 = v121;
      goto LABEL_93;
    }

    goto LABEL_89;
  }

  if (v68)
  {
    sub_1CEFCCBDC(v124, v128, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    sub_1CEFCCBDC(v123, v128, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    v72 = v121;
    v73 = v120;
    goto LABEL_91;
  }

  sub_1CEFCCBDC(v124, v128, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  sub_1CEFCCBDC(v123, v128, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  sub_1CF44DD2C(&v125);
  v70 = v122;
  (*(*v117 + 216))(&v125, v119, &v158, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
  if (v70)
  {
LABEL_89:
    sub_1CEFD0994(v125, v126, v127);
    *&v128[0] = v83;
    BYTE8(v128[0]) = v144;
    memcpy(v128 + 9, v143, 0x20FuLL);
    memcpy(&v128[33] + 8, v142, 0x208uLL);
    v129 = v118;
    v130 = v59;
    v131 = v110;
    v132 = v111;
    memcpy(v133, v141, sizeof(v133));
    sub_1CEFCCC44(v128, &qword_1EC4BFC48, &qword_1CFA05388);
    memcpy(v134, v157, sizeof(v134));
    sub_1CEFCCC44(v134, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    sub_1CEFCCC44(v124, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    goto LABEL_36;
  }

  sub_1CEFD0994(v125, v126, v127);
  v71 = v182;
  v73 = v120;
  v72 = v121;
  if (v182 == 255)
  {
    goto LABEL_91;
  }

  v74 = v108;
  if (!v108)
  {
    goto LABEL_91;
  }

  v122 = v59;
  result = swift_weakLoadStrong();
  if (result)
  {
    v75 = result;
    v76 = v113;
    *v113 = v105;
    *(v76 + 8) = v71;
    *(v76 + 16) = v74;
    swift_storeEnumTagMultiPayload();
    v77 = *(*v75 + 312);
    v78 = v74;
    v77(v76);

    sub_1CEFCCC44(v76, &qword_1EC4BE710, &qword_1CF9FE5A8);
    v73 = v120;
    v72 = v121;
    v59 = v122;
LABEL_91:
    memcpy(v128, v157, 0x208uLL);
    sub_1CEFCCC44(v128, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    sub_1CEFCCC44(v124, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
LABEL_93:
    v80 = v144;
    v81 = v114;
    *v114 = v83;
    *(v81 + 8) = v80;
    memcpy(v81 + 9, v143, 0x20FuLL);
    memcpy(v81 + 67, v142, 0x208uLL);
    v81[132] = v118;
    v81[133] = v59;
    v81[134] = v110;
    *(v81 + 1080) = v111;
    memcpy(v81 + 1081, v141, 0x20FuLL);
    memcpy(v128, v156, sizeof(v128));
    v129 = v116;
    v130 = v72;
    v131 = v73;
    v132 = v183;
    memcpy(v133, v155, sizeof(v133));
    v44 = v128;
    return sub_1CEFCCC44(v44, &qword_1EC4BFC40, &qword_1CFA05380);
  }

  __break(1u);
  return result;
}

void *sub_1CF445058@<X0>(void *a1@<X0>, __int16 a2@<W1>, void *a3@<X8>)
{
  sub_1CF445254(__src);
  if ((a2 & 0x100) != 0)
  {
    v18 = *&__src[408];
    v19 = *&__src[424];
    v20 = *&__src[440];
    v14 = *&__src[344];
    v15 = *&__src[360];
    v16 = *&__src[376];
    v17 = *&__src[392];
    v8 = *&__src[248];
    v9 = *&__src[264];
    v10 = *&__src[280];
    v11 = *&__src[296];
    v12 = *&__src[312];
    v13 = *&__src[328];
    v6 = a1;
    sub_1CEFCCC44(&v8, &unk_1EC4C4E60, &unk_1CF9FCAD0);
    *&__src[264] = 0;
    __src[272] = 5;
    *&__src[288] = 0;
    *&__src[280] = 0;
    *&__src[296] = 1;
    memset(&__src[304], 0, 41);
    *&__src[345] = 6;
    *&__src[352] = xmmword_1CF9FD920;
    __src[368] = 4;
    memset(&__src[376], 0, 24);
    *&__src[400] = 0xB000000000000000;
    memset(&__src[408], 0, 48);
    *&__src[248] = a1;
    *&__src[256] = 0;
  }

  else
  {
    v20 = *&__src[192];
    v21 = *&__src[208];
    v22 = *&__src[224];
    v23 = *&__src[240];
    v16 = *&__src[128];
    v17 = *&__src[144];
    v18 = *&__src[160];
    v19 = *&__src[176];
    v12 = *&__src[64];
    v13 = *&__src[80];
    v14 = *&__src[96];
    v15 = *&__src[112];
    v8 = *__src;
    v9 = *&__src[16];
    v10 = *&__src[32];
    v11 = *&__src[48];
    sub_1CEFCCC44(&v8, &unk_1EC4BFE00, &unk_1CF9FEF00);
    *&__src[16] = 0;
    *&__src[24] = 0;
    __src[32] = 5;
    memset(&__src[40], 0, 97);
    *&__src[137] = 6;
    *&__src[144] = xmmword_1CF9FD920;
    __src[160] = 4;
    memset(&__src[168], 0, 24);
    *&__src[192] = 0xB000000000000000;
    memset(&__src[200], 0, 48);
    *__src = a1;
    __src[8] = a2;
  }

  return memcpy(a3, __src, 0x208uLL);
}

uint64_t sub_1CF445254@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CF9E5CF8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = 0;
  *(a1 + 8) = -1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 5;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 137) = 6;
  *(a1 + 144) = xmmword_1CF9FD920;
  *(a1 + 160) = 4;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0xB000000000000000;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 272) = 5;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 1;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 329) = 0u;
  *(a1 + 345) = 6;
  *(a1 + 352) = xmmword_1CF9FD920;
  *(a1 + 368) = 4;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0xB000000000000000;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 456) = 4;
  *(a1 + 464) = MEMORY[0x1E69E7CC0];
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v7 = v6;
  result = (*(v3 + 8))(v5, v2);
  v9 = v7 * 1000000000.0;
  if (COERCE__INT64(fabs(v7 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v9 < 9.22337204e18)
  {
    *(a1 + 472) = 0x2000000000000000;
    *(a1 + 480) = v9;
    *(a1 + 512) = 0;
    *(a1 + 488) = 0;
    *(a1 + 496) = 0;
    *(a1 + 504) = 0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1CF445458(unsigned __int8 *a1, uint64_t a2, void *a3, char a4, void *a5, int a6, uint64_t a7, int a8, void *a9)
{
  v198 = a2;
  LODWORD(v194) = a8;
  v191 = a7;
  LODWORD(v196) = a6;
  v195 = a5;
  v193 = a9;
  v12 = sub_1CF9E6118();
  v192 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v190.i8[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v190.i8[-v16];
  v18 = *a1;
  v19 = *(a1 + 1);
  v20 = v19 | ((*(a1 + 5) | (a1[7] << 16)) << 32);
  v22 = *(a1 + 1);
  v21 = *(a1 + 2);
  v23 = *(a1 + 3);
  v25 = *(a1 + 2);
  v24 = *(a1 + 3);
  v26 = a1[64];
  v27 = a1[65];
  v28 = a1[66];
  v29 = v18 | (v20 << 8);
  switch(v28)
  {
    case 1:
      v59 = v198;
      if (!*v198)
      {
        sub_1CEFCCBDC(v15, &v215, &qword_1EC4BFEE0, &qword_1CFA055B0);
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 518);
      }

      v60 = *(v198 + 8);
      *(v198 + 16) &= ~v29;
      if (v60)
      {
        *(v59 + 8) = v60 & 0xFFFFFFFFFFFFFFFELL;
      }

      goto LABEL_49;
    case 2:
      v53 = v198;
      if ((*(v198 + 8) & 9) == 1)
      {
        goto LABEL_81;
      }

      v54 = *(v198 + 8) & 0xFFFFFFFFFFFFFFF6 | 1;
      goto LABEL_80;
    case 3:
      if (!*v198)
      {
        sub_1CEFCCBDC(v15, &v215, &qword_1EC4BFEE0, &qword_1CFA055B0);
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 574);
      }

      v57 = *(v198 + 8);
      if (v18)
      {
        if ((v57 & 2) == 0)
        {
          *(v198 + 8) = v57 | 2;
        }
      }

      else if ((v57 & 0x22) != 0)
      {
        *(v198 + 8) = v57 & 0xFFFFFFFFFFFFFFDDLL;
      }

      goto LABEL_93;
    case 4:
      v47 = v198;
      if (!*v198)
      {
        sub_1CEFCCBDC(v15, &v215, &qword_1EC4BFEE0, &qword_1CFA055B0);
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 593);
      }

      v48 = *(v198 + 8);
      if (v18)
      {
        if ((v48 & 4) != 0)
        {
          goto LABEL_93;
        }

        v49 = v48 | 4;
      }

      else
      {
        if ((v48 & 4) == 0)
        {
          goto LABEL_93;
        }

        v49 = v48 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_92;
    case 5:
      v47 = v198;
      if (!*v198)
      {
        sub_1CEFCCBDC(v15, &v215, &qword_1EC4BFEE0, &qword_1CFA055B0);
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 602);
      }

      v61 = *(v198 + 8);
      if (v18)
      {
        if ((v61 & 0x10) != 0)
        {
          goto LABEL_93;
        }

        v49 = v61 | 0x10;
      }

      else
      {
        if ((v61 & 0x30) == 0)
        {
          goto LABEL_93;
        }

        v49 = v61 & 0xFFFFFFFFFFFFFFCFLL;
      }

      goto LABEL_92;
    case 6:
      v47 = v198;
      v65 = *(v198 + 8);
      if (v18)
      {
        if ((v65 & 0x20) != 0)
        {
          goto LABEL_93;
        }

        v49 = v65 | 0x20;
      }

      else
      {
        if ((v65 & 0x20) == 0)
        {
          goto LABEL_93;
        }

        v49 = v65 & 0xFFFFFFFFFFFFFFDFLL;
      }

      goto LABEL_92;
    case 7:
      v47 = v198;
      v58 = *(v198 + 8);
      if (v18)
      {
        if ((v58 & 0x40) != 0)
        {
          goto LABEL_93;
        }

        v49 = v58 | 0x40;
      }

      else
      {
        if ((v58 & 0x40) == 0)
        {
          goto LABEL_93;
        }

        v49 = v58 & 0xFFFFFFFFFFFFFFBFLL;
      }

LABEL_92:
      *(v47 + 8) = v49;
      goto LABEL_93;
    case 8:
      v211.i8[0] = v18;
      *(v211.i32 + 1) = v20;
      v211.i8[7] = BYTE6(v20);
      *(&v211.i16[2] + 1) = WORD2(v20);
      v211.i64[1] = v22;
      v212.i64[0] = v21;
      v212.i64[1] = v23;
      v213 = v25;
      *v214 = v24;
      v67 = v198;
      if (!*v198)
      {
        sub_1CEFCCBDC(v15, &v215, &qword_1EC4BFEE0, &qword_1CFA055B0);
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 557);
      }

      v68 = v27;
      v190 = v25;
      v196 = v23;
      v197 = v22;
      if (*(v198 + 48) == 1)
      {
        v69 = v211.i64[0];
        v70 = v15;
        v71 = objc_opt_self();
        sub_1CEFCCBDC(v70, &v215, &qword_1EC4BFEE0, &qword_1CFA055B0);
        v72 = [v71 beforeFirstSyncComponent];
        v73 = sub_1CF9E5B88();
        v75 = v74;

        v199.i64[0] = v73;
        v199.i64[1] = v75;
        v216.i64[1] = MEMORY[0x1E6969080];
        v217.i64[0] = MEMORY[0x1E6969078];
        v76 = v197;
        v215.i64[0] = v69;
        v215.i64[1] = v197;
        v77 = __swift_project_boxed_opaque_existential_1(&v215, MEMORY[0x1E6969080]);
        v79 = *v77;
        v78 = v77[1];
        sub_1CEFE42D4(v73, v75);
        sub_1CEFE42D4(v69, v76);
        sub_1CF3283DC(v79, v78, &v199);
        sub_1CEFE4714(v73, v75);
        __swift_destroy_boxed_opaque_existential_1(&v215);
        v194 = v199.i64[1];
        v195 = v199.i64[0];
        v80 = [v71 beforeFirstSyncComponent];
        v81 = sub_1CF9E5B88();
        v83 = v82;

        v199.i64[0] = v81;
        v199.i64[1] = v83;
        v216.i64[1] = MEMORY[0x1E6969080];
        v217.i64[0] = MEMORY[0x1E6969078];
        v84 = v196;
        v215.i64[0] = v196;
        v85 = v190.i64[0];
        v215.i64[1] = v190.i64[0];
        v86 = __swift_project_boxed_opaque_existential_1(&v215, MEMORY[0x1E6969080]);
        v87 = *v86;
        v88 = v86[1];
        sub_1CEFE42D4(v81, v83);
        sub_1CEFE42D4(v84, v85);
        v89 = v87;
        v67 = v198;
        sub_1CF3283DC(v89, v88, &v199);
        sub_1CEFE4714(v81, v83);
        __swift_destroy_boxed_opaque_existential_1(&v215);
        v90 = v199;
        v91 = *(v67 + 48);
        v215 = *(v67 + 32);
        v216 = v91;
        v92 = *(v67 + 80);
        v217 = *(v67 + 64);
        *v218 = v92;
        sub_1CEFCCC44(&v215, &unk_1EC4BF2D0, &unk_1CF9FEF20);
        v93 = v194;
        *(v67 + 32) = v195;
        *(v67 + 40) = v93;
        *(v67 + 48) = 0;
        *(v67 + 56) = v90;
        *(v67 + 72) = 0;
        *(v67 + 80) = 0;
        *(v67 + 88) = 0;
      }

      else
      {
        sub_1CEFCCBDC(v15, &v215, &qword_1EC4BFEE0, &qword_1CFA055B0);
      }

      v97 = v190.i64[0];
      v98 = v68;
      if ((v26 & 1) != 0 && *(v67 + 48) != 1)
      {
        v99 = v211.i64[0];
        v100 = *(v67 + 32);
        v101 = *(v67 + 40);
        v102 = v197;
        sub_1CEFE42D4(v211.i64[0], v197);
        sub_1CEFE4714(v100, v101);
        v98 = v68;
        v97 = v190.i64[0];
        *(v67 + 32) = v99;
        *(v67 + 40) = v102;
      }

      if ((v98 & 1) == 0 || *(v67 + 48) == 1)
      {
        v103 = &unk_1EC4BF250;
        v104 = &unk_1CFA01B50;
        v105 = &v211;
        goto LABEL_101;
      }

      v118 = *(v67 + 56);
      v119 = *(v67 + 64);
      v120 = v196;
      sub_1CEFE42D4(v196, v97);
      sub_1CEFE4714(v118, v119);
      sub_1CEFCCC44(&v211, &unk_1EC4BF250, &unk_1CFA01B50);
      *(v67 + 56) = v120;
      *(v67 + 64) = v190.i64[0];
      return 0;
    case 9:
      v51 = v198;
      v52 = *(v198 + 192);
      sub_1CEFCCBDC(v15, &v215, &qword_1EC4BFEE0, &qword_1CFA055B0);

      result = 0;
      *(v51 + 192) = v29;
      return result;
    case 10:
      v66 = *(v198 + 96);
      if (v66 > 1)
      {
        if (v66 == 2)
        {
          if (!v18)
          {
            goto LABEL_118;
          }

          if (v18 != 1)
          {
            if (v18 != 3)
            {
              goto LABEL_141;
            }

            goto LABEL_118;
          }

          if (a4 == 1 || a4 == 4)
          {
            goto LABEL_141;
          }
        }

        else
        {
          if (v66 == 3)
          {
            if (v18 >= 3)
            {
              goto LABEL_141;
            }

LABEL_118:
            v121 = v198;
            *(v198 + 96) = v18;
            if (!v18)
            {
              v122 = v17;
              v131 = *(v121 + 144);
              v211 = *(v121 + 128);
              v212 = v131;
              v132 = *(v121 + 176);
              v213 = *(v121 + 160);
              *v214 = v132;
              v203 = v211;
              *&v204 = *(v121 + 144);
              v133 = v131.i64[1];
              v199 = v213;
              v200 = v132;
              if (v131.i64[1] >> 60 != 11)
              {
                v134 = v15;
                Strong = swift_weakLoadStrong();
                if (Strong)
                {
                  v136 = Strong;
                  *v122 = v203;
                  *(v122 + 16) = v204;
                  *(v122 + 24) = v133;
                  v137 = v200;
                  *(v122 + 32) = v199;
                  *(v122 + 48) = v137;
                  swift_storeEnumTagMultiPayload();
                  v192 = *v136 + 312;
                  v190.i64[0] = *v192;
                  sub_1CEFCCBDC(&v211, &v215, &unk_1EC4BF260, &unk_1CFA01B60);
                  sub_1CEFCCBDC(v134, &v215, &qword_1EC4BFEE0, &qword_1CFA055B0);
                  sub_1CEFCCBDC(&v211, &v215, &unk_1EC4BF260, &unk_1CFA01B60);
                  (v190.i64[0])(v122);

                  v121 = v198;
                  sub_1CEFCCC44(&v211, &unk_1EC4BF260, &unk_1CFA01B60);
                  sub_1CEFCCC44(v122, &qword_1EC4BE710, &qword_1CF9FE5A8);
                }

                else
                {
                  sub_1CEFCCBDC(v134, &v215, &qword_1EC4BFEE0, &qword_1CFA055B0);
                }

                v179 = *(v121 + 144);
                v215 = *(v121 + 128);
                v216 = v179;
                v180 = *(v121 + 176);
                v217 = *(v121 + 160);
                *v218 = v180;
                sub_1CEFCCC44(&v215, &unk_1EC4BF260, &unk_1CFA01B60);
                *(v121 + 128) = 0;
                *(v121 + 136) = 0;
                *(v121 + 144) = 0;
                *(v121 + 152) = 0xB000000000000000;
                *(v121 + 160) = 0u;
                *(v121 + 176) = 0u;
                v123 = v196;
                if ((v196 & 0x100) != 0)
                {
LABEL_121:
                  if (v194 != 0xFF)
                  {
                    result = swift_weakLoadStrong();
                    if (!result)
                    {
                      return result;
                    }

                    v124 = result;
                    v125 = v195;
                    *v122 = v195;
                    *(v122 + 8) = v123;
                    *(v122 + 9) = 1;
                    v126 = v194;
                    *(v122 + 16) = v191;
                    *(v122 + 24) = v126;
                    *(v122 + 26) = v66;
                    *(v122 + 27) = v18;
                    swift_storeEnumTagMultiPayload();
                    v127 = *(*v124 + 312);
                    v128 = v125;
                    v127(v122);

                    v103 = &qword_1EC4BE710;
                    v104 = &qword_1CF9FE5A8;
                    v105 = v122;
                    goto LABEL_101;
                  }

LABEL_177:
                  result = swift_weakLoadStrong();
                  if (!result)
                  {
                    return result;
                  }

                  v186 = result;
                  v187 = v122;
                  v188 = v195;
                  *v122 = v195;
                  *(v122 + 8) = v123;
                  *(v122 + 9) = BYTE1(v123) & 1;
                  *(v122 + 16) = 0;
                  *(v122 + 24) = -256;
                  *(v122 + 26) = v66;
                  *(v122 + 27) = v18;
                  swift_storeEnumTagMultiPayload();
                  v189 = *(*v186 + 312);
                  sub_1CEFD0988(v188, v123, BYTE1(v123) & 1);
                  v189(v187);

                  v103 = &qword_1EC4BE710;
                  v104 = &qword_1CF9FE5A8;
                  v105 = v187;
LABEL_101:
                  sub_1CEFCCC44(v105, v103, v104);
                  return 0;
                }

LABEL_174:
                if (v193)
                {
                  result = swift_weakLoadStrong();
                  if (result)
                  {
                    v181 = result;
                    v182 = v122;
                    *v122 = v195;
                    *(v122 + 8) = v123;
                    *(v122 + 9) = 0;
                    v183 = v193;
                    *(v122 + 16) = v193;
                    *(v122 + 24) = 256;
                    *(v122 + 26) = v66;
                    *(v122 + 27) = v18;
                    swift_storeEnumTagMultiPayload();
                    v184 = *(*v181 + 312);
                    v185 = v183;
                    v184(v182);

                    sub_1CEFCCC44(v182, &qword_1EC4BE710, &qword_1CF9FE5A8);

                    return 0;
                  }

                  return result;
                }

                goto LABEL_177;
              }

LABEL_120:
              sub_1CEFCCBDC(v15, &v215, &qword_1EC4BFEE0, &qword_1CFA055B0);
              v123 = v196;
              if ((v196 & 0x100) != 0)
              {
                goto LABEL_121;
              }

              goto LABEL_174;
            }

LABEL_119:
            v122 = v17;
            goto LABEL_120;
          }

          if ((v18 - 1) >= 2)
          {
            if (!v18)
            {
              goto LABEL_142;
            }

            goto LABEL_141;
          }
        }

LABEL_116:
        *(v198 + 96) = v18;
        goto LABEL_119;
      }

      if (!*(v198 + 96))
      {
        if ((v18 - 1) >= 3)
        {
          goto LABEL_141;
        }

        goto LABEL_116;
      }

      if (v18 != 1)
      {
        goto LABEL_118;
      }

LABEL_141:
      if (v66 == v18)
      {
LABEL_142:
        sub_1CEFCCBDC(v15, &v215, &qword_1EC4BFEE0, &qword_1CFA055B0);
        return 3;
      }

      sub_1CEFCCBDC(v15, &v215, &qword_1EC4BFEE0, &qword_1CFA055B0);
      v142 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v143 = sub_1CF9E6108();
      v144 = sub_1CF9E72A8();
      if (os_log_type_enabled(v143, v144))
      {
        LODWORD(v198) = v144;
        v145 = swift_slowAlloc();
        v197 = swift_slowAlloc();
        v215.i64[0] = v197;
        *v145 = 136446466;
        v146 = 0xE800000000000000;
        v147 = 0x676E696863746177;
        v148 = 0xD000000000000011;
        if (v66 == 3)
        {
          v149 = 0x80000001CFA45AC0;
        }

        else
        {
          v148 = 0xD000000000000015;
          v149 = 0x80000001CFA45AA0;
        }

        if (v66 != 2)
        {
          v147 = v148;
          v146 = v149;
        }

        v150 = 0x746F687370616E73;
        v151 = 0xEC000000676E6974;
        if (!v66)
        {
          v150 = 0x7265746E49746F6ELL;
          v151 = 0xED00006465747365;
        }

        if (v66 <= 1)
        {
          v152 = v150;
        }

        else
        {
          v152 = v147;
        }

        if (v66 <= 1)
        {
          v153 = v151;
        }

        else
        {
          v153 = v146;
        }

        v154 = sub_1CEFD0DF0(v152, v153, v215.i64);
        v153, v155, v156, v157, v158, v159, v160, v161;
        *(v145 + 4) = v154;
        *(v145 + 12) = 2082;
        v162 = 0xE800000000000000;
        v163 = 0x676E696863746177;
        v164 = 0xD000000000000011;
        if (v18 == 3)
        {
          v165 = 0x80000001CFA45AC0;
        }

        else
        {
          v164 = 0xD000000000000015;
          v165 = 0x80000001CFA45AA0;
        }

        if (v18 != 2)
        {
          v163 = v164;
          v162 = v165;
        }

        v166 = 0x746F687370616E73;
        v167 = 0xEC000000676E6974;
        if (!v18)
        {
          v166 = 0x7265746E49746F6ELL;
          v167 = 0xED00006465747365;
        }

        if (v18 <= 1)
        {
          v168 = v166;
        }

        else
        {
          v168 = v163;
        }

        if (v18 <= 1)
        {
          v169 = v167;
        }

        else
        {
          v169 = v162;
        }

        v170 = sub_1CEFD0DF0(v168, v169, v215.i64);
        v169, v171, v172, v173, v174, v175, v176, v177;
        *(v145 + 14) = v170;
        _os_log_impl(&dword_1CEFC7000, v143, v198, "❌  invalid transition %{public}s -> %{public}s", v145, 0x16u);
        v178 = v197;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v178, -1, -1);
        MEMORY[0x1D386CDC0](v145, -1, -1);
      }

      (*(v192 + 8))(v14, v12);
      return 3;
    case 11:
      v215.i8[0] = v18;
      *(v215.i32 + 1) = v20;
      v215.i8[7] = BYTE6(v20);
      *(&v215.i16[2] + 1) = WORD2(v20);
      v215.i64[1] = v22;
      v216.i64[0] = v21;
      v216.i64[1] = v23;
      v217 = v25;
      *v218 = v24;
      v218[16] = v26;
      v218[17] = v27;
      v218[18] = 11;
      v39 = v215.i64[0];
      v40 = v21;
      v41 = v198;
      v42 = *(v198 + 104);
      v43 = *(v198 + 112);
      v44 = *(v198 + 120);
      if (v44 > 2)
      {
        if (v44 != 3 && (v44 != 4 || v42 != 1 || v43))
        {
          goto LABEL_75;
        }
      }

      else if (v44 != 1)
      {
        if (v44 == 2 && (v21 == 3 || v21 == 4 && __PAIR128__(v22, v215.u64[0]) < 2))
        {
          v45 = v22;
          sub_1CEFCCBDC(v15, &v211, &qword_1EC4BFEE0, &qword_1CFA055B0);
          sub_1CF03D7A8(v42, v43, 2u);
          v46 = *(v41 + 8);
          if ((v46 & 8) != 0)
          {
            *(v41 + 8) = v46 & 0xFFFFFFFFFFFFFFF7;
          }

          goto LABEL_74;
        }

        goto LABEL_75;
      }

      if (v21 == 2)
      {
        v45 = v22;
        sub_1CEFCCBDC(v15, &v211, &qword_1EC4BFEE0, &qword_1CFA055B0);
        sub_1CF03D7A8(v42, v43, v44);
LABEL_74:
        result = 0;
        *(v41 + 104) = v39;
        *(v41 + 112) = v45;
        *(v41 + 120) = v40;
        return result;
      }

LABEL_75:
      sub_1CEFCCBDC(v15, &v211, &qword_1EC4BFEE0, &qword_1CFA055B0);
      sub_1CEFCCC44(&v215, &qword_1EC4BFEE0, &qword_1CFA055B0);
      return 3;
    case 12:
      v50 = v198;
      if (v18 != 5 && *(v198 + 24) != v18)
      {
        goto LABEL_142;
      }

      *(v198 + 24) = v19;
      if (((1 << v19) & 0x2E) == 0)
      {
        *(v50 + 98) = 0;
      }

      goto LABEL_93;
    case 13:
      v211.i8[0] = v18;
      *(v211.i32 + 1) = v20;
      v211.i8[7] = BYTE6(v20);
      *(&v211.i16[2] + 1) = WORD2(v20);
      v211.i64[1] = v22;
      v212.i64[0] = v21;
      v212.i64[1] = v23;
      v213 = v25;
      *v214 = v24;
      v216 = v212;
      v217 = v25;
      v214[16] = v26;
      v214[17] = v27;
      v214[18] = 13;
      *v218 = v24;
      *&v218[15] = *&v214[15];
      v215 = v211;
      v62 = v26;
      v63 = v27;
      if (v62 == 1 && (v27 & 1) == 0)
      {
        sub_1CEFCCBDC(v15, &v199, &qword_1EC4BFEE0, &qword_1CFA055B0);
        v64 = v198;
        goto LABEL_134;
      }

      v64 = v198;
      v94 = *(v198 + 144);
      v203 = *(v198 + 128);
      v204 = v94;
      v95 = *(v198 + 176);
      v205 = *(v198 + 160);
      v210 = *(v198 + 144);
      v206 = v95;
      v207 = v205;
      v96 = *(&v94 + 1);
      v208 = v95;
      v209 = v203;
      if (*(&v94 + 1) >> 60 == 11)
      {
        goto LABEL_133;
      }

      v106 = v17;
      v107 = v15;
      v108 = swift_weakLoadStrong();
      v109 = v108;
      if (v63)
      {
        if (v108)
        {
          v110 = v106;
          v111 = v195;
          v110->i64[0] = v195;
          v112 = v196;
          v113 = (v196 >> 8) & 1;
          LODWORD(v197) = v113;
          v110->i8[8] = v196;
          v110->i8[9] = v113;
          v114 = v208;
          v110[1] = v209;
          v110[2].i64[0] = v210;
          v110[2].i64[1] = v96;
          v110[3] = v207;
          v110[4] = v114;
          v115 = v110;
          swift_storeEnumTagMultiPayload();
          v116 = *(*v109 + 312);
          sub_1CEFCCBDC(&v203, &v199, &unk_1EC4BF260, &unk_1CFA01B60);
          sub_1CEFCCBDC(v107, &v199, &qword_1EC4BFEE0, &qword_1CFA055B0);
          sub_1CEFD0988(v111, v112, v197);
          sub_1CEFCCBDC(&v203, &v199, &unk_1EC4BF260, &unk_1CFA01B60);
          v116(v115);

          sub_1CEFCCC44(&v203, &unk_1EC4BF260, &unk_1CFA01B60);
          v117 = v115;
LABEL_126:
          sub_1CEFCCC44(v117, &qword_1EC4BE710, &qword_1CF9FE5A8);
          goto LABEL_134;
        }
      }

      else if (v108)
      {
        v129 = v208;
        *v106 = v209;
        v106[1].i64[0] = v210;
        v106[1].i64[1] = v96;
        v106[2] = v207;
        v106[3] = v129;
        swift_storeEnumTagMultiPayload();
        v130 = *(*v109 + 312);
        sub_1CEFCCBDC(&v203, &v199, &unk_1EC4BF260, &unk_1CFA01B60);
        sub_1CEFCCBDC(v107, &v199, &qword_1EC4BFEE0, &qword_1CFA055B0);
        sub_1CEFCCBDC(&v203, &v199, &unk_1EC4BF260, &unk_1CFA01B60);
        v130(v106);

        sub_1CEFCCC44(&v203, &unk_1EC4BF260, &unk_1CFA01B60);
        v117 = v106;
        goto LABEL_126;
      }

      v15 = v107;
LABEL_133:
      sub_1CEFCCBDC(v15, &v199, &qword_1EC4BFEE0, &qword_1CFA055B0);
LABEL_134:
      v138 = v64[9];
      v199 = v64[8];
      v200 = v138;
      v139 = v64[11];
      v201 = v64[10];
      v202 = v139;
      v140 = v216;
      v64[8] = v215;
      v64[9] = v140;
      v141 = *v218;
      v64[10] = v217;
      v64[11] = v141;
      sub_1CEFCCBDC(&v215, &v203, &unk_1EC4BF260, &unk_1CFA01B60);
      sub_1CEFCCC44(&v199, &unk_1EC4BF260, &unk_1CFA01B60);
      if (v216.i64[1] >> 60 == 11)
      {
        return 0;
      }

      sub_1CEFCCC44(&v211, &qword_1EC4BFEE0, &qword_1CFA055B0);
      return 1;
    case 14:
      v32 = v15;
      v33 = v198;
      if (!*v198)
      {
        sub_1CEFCCBDC(v15, &v215, &qword_1EC4BFEE0, &qword_1CFA055B0);
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 584);
      }

      v15 = swift_weakLoadStrong();
      if (!v15)
      {
        __break(1u);
LABEL_180:
        sub_1CEFCCBDC(v15, &v215, &qword_1EC4BFEE0, &qword_1CFA055B0);
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 508);
      }

      v34 = *(*v15 + 152);
      v35 = sub_1CEFCCBDC(v32, &v215, &qword_1EC4BFEE0, &qword_1CFA055B0);
      v36 = v34(v35);

      v37 = *(v33 + 8);
      if (v36 & 0x4000) != 0 && (v18)
      {
        result = 0;
        if ((v37 & 0x80) == 0)
        {
          *(v33 + 8) = v37 | 0x80;
        }
      }

      else
      {
        result = 0;
        if ((v37 & 0x80) != 0)
        {
          *(v33 + 8) = v37 & 0xFFFFFFFFFFFFFF7FLL;
        }
      }

      return result;
    case 15:
      v55 = vorrq_s8(v24, v25);
      if (v29 | *&vorr_s8(*v55.i8, *&vextq_s8(v55, v55, 8uLL)) | v23 | v21 | v22)
      {
        v56 = 0;
      }

      else
      {
        v56 = (v26 | (v27 << 8)) == 0;
      }

      if (!v56)
      {
        *(v198 + 98) = 1;
LABEL_49:
        sub_1CEFCCBDC(v15, &v215, &qword_1EC4BFEE0, &qword_1CFA055B0);
        return 1;
      }

      v53 = v198;
      if ((*(v198 + 8) & 9) != 8)
      {
        v54 = ~*(v198 + 8) & 8 | *(v198 + 8) & 0xFFFFFFFFFFFFFFFELL;
LABEL_80:
        *(v53 + 8) = v54;
      }

LABEL_81:
      *(v53 + 16) = 0;
LABEL_93:
      sub_1CEFCCBDC(v15, &v215, &qword_1EC4BFEE0, &qword_1CFA055B0);
      return 0;
    default:
      v30 = v198;
      if (!*v198)
      {
        goto LABEL_180;
      }

      if ((v29 & ~*a3) != 0)
      {
        *a3 |= v29;
      }

      sub_1CEFCCBDC(v15, &v215, &qword_1EC4BFEE0, &qword_1CFA055B0);
      if (qword_1EDEABDE0 != -1)
      {
        swift_once();
      }

      v31 = *(v30 + 8);
      *(v30 + 16) |= v29 & 0xFFFFFFFFFF7FFFEFLL & (qword_1EDEABDE8 | 0x409000000C000);
      if ((v31 & 9) != 0)
      {
        *(v30 + 8) = v31 & 0xFFFFFFFFFFFFFFF6;
      }

      return 1;
  }
}

uint64_t sub_1CF446A64(unsigned __int8 *a1, uint64_t a2, void *a3, char a4, void *a5, int a6, uint64_t a7, int a8, void *a9)
{
  v177 = a8;
  v174 = a7;
  LODWORD(v179) = a6;
  v178 = a5;
  v181 = a2;
  v176 = a9;
  v12 = sub_1CF9E6118();
  v175 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v172 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v172 - v17;
  v19 = *a1;
  v20 = *(a1 + 1);
  v21 = v20 | ((*(a1 + 5) | (a1[7] << 16)) << 32);
  v22 = *(a1 + 1);
  v23 = *(a1 + 2);
  v24 = *(a1 + 24);
  v25 = *(a1 + 5);
  v26 = *(a1 + 6);
  v27 = *(a1 + 7);
  v29 = *(a1 + 4);
  v28 = *(a1 + 5);
  v30 = a1[96];
  v31 = a1[97];
  v32 = v19 | (v21 << 8);
  switch(v15[98])
  {
    case 1:
      v62 = v181;
      if (*(v181 + 8) == 255)
      {
        sub_1CEFCCBDC(v15, &v200, &qword_1EC4BFEE8, &qword_1CFA055B8);
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 518);
      }

      v63 = *(v181 + 16);
      *(v181 + 24) &= ~v32;
      if (v63)
      {
        *(v62 + 16) = v63 & 0xFFFFFFFFFFFFFFFELL;
      }

      goto LABEL_49;
    case 2:
      v56 = v181;
      if ((*(v181 + 16) & 9) == 1)
      {
        goto LABEL_82;
      }

      v57 = *(v181 + 16) & 0xFFFFFFFFFFFFFFF6 | 1;
      goto LABEL_81;
    case 3:
      if (*(v181 + 8) == 255)
      {
        sub_1CEFCCBDC(v15, &v200, &qword_1EC4BFEE8, &qword_1CFA055B8);
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 574);
      }

      v60 = *(v181 + 16);
      if (v19)
      {
        if ((v60 & 2) == 0)
        {
          *(v181 + 16) = v60 | 2;
        }
      }

      else if ((v60 & 0x22) != 0)
      {
        *(v181 + 16) = v60 & 0xFFFFFFFFFFFFFFDDLL;
      }

      goto LABEL_94;
    case 4:
      v50 = v181;
      if (*(v181 + 8) == 255)
      {
        sub_1CEFCCBDC(v15, &v200, &qword_1EC4BFEE8, &qword_1CFA055B8);
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 593);
      }

      v51 = *(v181 + 16);
      if (v19)
      {
        if ((v51 & 4) != 0)
        {
          goto LABEL_94;
        }

        v52 = v51 | 4;
      }

      else
      {
        if ((v51 & 4) == 0)
        {
          goto LABEL_94;
        }

        v52 = v51 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_93;
    case 5:
      v50 = v181;
      if (*(v181 + 8) == 255)
      {
        sub_1CEFCCBDC(v15, &v200, &qword_1EC4BFEE8, &qword_1CFA055B8);
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 602);
      }

      v64 = *(v181 + 16);
      if (v19)
      {
        if ((v64 & 0x10) != 0)
        {
          goto LABEL_94;
        }

        v52 = v64 | 0x10;
      }

      else
      {
        if ((v64 & 0x30) == 0)
        {
          goto LABEL_94;
        }

        v52 = v64 & 0xFFFFFFFFFFFFFFCFLL;
      }

      goto LABEL_93;
    case 6:
      v50 = v181;
      v67 = *(v181 + 16);
      if (v19)
      {
        if ((v67 & 0x20) != 0)
        {
          goto LABEL_94;
        }

        v52 = v67 | 0x20;
      }

      else
      {
        if ((v67 & 0x20) == 0)
        {
          goto LABEL_94;
        }

        v52 = v67 & 0xFFFFFFFFFFFFFFDFLL;
      }

      goto LABEL_93;
    case 7:
      v50 = v181;
      v61 = *(v181 + 16);
      if (v19)
      {
        if ((v61 & 0x40) != 0)
        {
          goto LABEL_94;
        }

        v52 = v61 | 0x40;
      }

      else
      {
        if ((v61 & 0x40) == 0)
        {
          goto LABEL_94;
        }

        v52 = v61 & 0xFFFFFFFFFFFFFFBFLL;
      }

LABEL_93:
      *(v50 + 16) = v52;
      goto LABEL_94;
    case 8:
      LOBYTE(v195) = v19;
      *(&v195 + 1) = v21;
      BYTE7(v195) = BYTE6(v21);
      *(&v195 + 5) = WORD2(v21);
      *(&v195 + 1) = v22;
      *&v196[0] = v23;
      v182 = v24;
      *(v196 + 8) = v24;
      v69 = v24;
      *(&v196[1] + 1) = v25;
      *&v197 = v26;
      *(&v197 + 1) = v27;
      v198 = v29;
      v199[0] = v28;
      v70 = v181;
      if (*(v181 + 8) == 255)
      {
        sub_1CEFCCBDC(v15, &v200, &qword_1EC4BFEE8, &qword_1CFA055B8);
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 557);
      }

      v180 = v29;
      v71 = v25;
      v178 = v26;
      v179 = v27;
      v72 = v22;
      if (*(v181 + 104))
      {
        sub_1CEFCCBDC(v15, &v200, &qword_1EC4BFEE8, &qword_1CFA055B8);
        if ((v30 & 1) == 0)
        {
          goto LABEL_103;
        }
      }

      else
      {
        *&v183 = 0;
        *(&v183 + 1) = 0xE000000000000000;
        *&v187 = 58;
        *(&v187 + 1) = 0xE100000000000000;
        *&v191 = 47;
        *(&v191 + 1) = 0xE100000000000000;
        sub_1CEFCCBDC(v15, &v200, &qword_1EC4BFEE8, &qword_1CFA055B8);
        sub_1CEFE4E68();
        v76 = sub_1CF9E7668();
        v78 = v77;
        v79 = *(v70 + 88);
        *&v201[16] = *(v70 + 72);
        v202 = v79;
        v80 = *(v70 + 120);
        v203 = *(v70 + 104);
        *v204 = v80;
        v81 = *(v70 + 56);
        v200 = *(v70 + 40);
        *v201 = v81;
        sub_1CEFCCC44(&v200, &unk_1EC4BECD0, &unk_1CF9FEF80);
        *(v70 + 40) = 0;
        *(v70 + 48) = 0;
        *(v70 + 56) = 0;
        *(v70 + 64) = 1;
        *(v70 + 72) = 0;
        *(v70 + 80) = 0;
        *(v70 + 88) = 2;
        *(v70 + 96) = v76;
        *(v70 + 104) = v78;
        *(v70 + 120) = 0;
        *(v70 + 128) = 0;
        *(v70 + 112) = 0;
        if ((v30 & 1) == 0)
        {
          goto LABEL_103;
        }
      }

      if (*(v70 + 104))
      {
        *(v70 + 40) = v195;
        *(v70 + 48) = v72;
        *(v70 + 56) = v23;
        *(v70 + 64) = v69 & 1;
      }

LABEL_103:
      if (v31)
      {
        v82 = *(v70 + 104);
        if (v82)
        {
          v83 = v180.i64[0];

          v82, v84, v85, v86, v87, v88, v89, v90;
          sub_1CEFCCC44(&v195, &unk_1EC4BE330, &unk_1CF9FF010);
          *(v70 + 80) = v71;
          v91 = v179;
          *(v70 + 88) = v178;
          *(v70 + 96) = v91;
          *(v70 + 104) = v83;
          return 0;
        }
      }

      v92 = &unk_1EC4BE330;
      v93 = &unk_1CF9FF010;
      v94 = &v195;
      goto LABEL_129;
    case 9:
      v54 = v181;
      v55 = *(v181 + 232);
      sub_1CEFCCBDC(v15, &v200, &qword_1EC4BFEE8, &qword_1CFA055B8);

      result = 0;
      *(v54 + 232) = v32;
      return result;
    case 0xA:
      v68 = *(v181 + 136);
      if (v68 > 1)
      {
        if (v68 == 2)
        {
          if (!v19)
          {
            goto LABEL_117;
          }

          if (v19 != 1)
          {
            if (v19 != 3)
            {
              goto LABEL_148;
            }

            goto LABEL_117;
          }

          if (a4 == 1 || a4 == 4)
          {
            goto LABEL_148;
          }
        }

        else
        {
          if (v68 == 3)
          {
            if (v19 >= 3)
            {
              goto LABEL_148;
            }

LABEL_117:
            v104 = v181;
            *(v181 + 136) = v19;
            if (!v19)
            {
              v175 = v16;
              v105 = v18;
              v121 = *(v104 + 184);
              v195 = *(v104 + 168);
              v196[0] = v121;
              v122 = *(v104 + 216);
              v196[1] = *(v104 + 200);
              v197 = v122;
              v187 = v195;
              *&v188 = *(v104 + 184);
              v123 = *(&v121 + 1);
              v183 = v196[1];
              v184 = v122;
              v106 = v179;
              if (*(&v121 + 1) >> 60 == 11)
              {
                sub_1CEFCCBDC(v15, &v200, &qword_1EC4BFEE8, &qword_1CFA055B8);
              }

              else
              {
                v128 = v15;
                Strong = swift_weakLoadStrong();
                if (Strong)
                {
                  v130 = Strong;
                  *v105 = v187;
                  *(v105 + 16) = v188;
                  *(v105 + 24) = v123;
                  v131 = v184;
                  *(v105 + 32) = v183;
                  *(v105 + 48) = v131;
                  swift_storeEnumTagMultiPayload();
                  v173 = (*v130 + 312);
                  v132 = *v173;
                  sub_1CEFCCBDC(&v195, &v200, &unk_1EC4BF260, &unk_1CFA01B60);
                  sub_1CEFCCBDC(v128, &v200, &qword_1EC4BFEE8, &qword_1CFA055B8);
                  sub_1CEFCCBDC(&v195, &v200, &unk_1EC4BF260, &unk_1CFA01B60);
                  v132(v105);

                  v106 = v179;
                  v104 = v181;
                  sub_1CEFCCC44(&v195, &unk_1EC4BF260, &unk_1CFA01B60);
                  sub_1CEFCCC44(v105, &qword_1EC4BE710, &qword_1CF9FE5A8);
                }

                else
                {
                  sub_1CEFCCBDC(v128, &v200, &qword_1EC4BFEE8, &qword_1CFA055B8);
                }

                v170 = *(v104 + 184);
                v200 = *(v104 + 168);
                *v201 = v170;
                v171 = *(v104 + 216);
                *&v201[16] = *(v104 + 200);
                v202 = v171;
                sub_1CEFCCC44(&v200, &unk_1EC4BF260, &unk_1CFA01B60);
                *(v104 + 168) = 0;
                *(v104 + 176) = 0;
                *(v104 + 184) = 0;
                *(v104 + 192) = 0xB000000000000000;
                *(v104 + 200) = 0u;
                *(v104 + 216) = 0u;
              }

LABEL_119:
              if ((v106 & 0x100) != 0)
              {
                if (v177 != 0xFF)
                {
                  result = swift_weakLoadStrong();
                  if (!result)
                  {
                    return result;
                  }

                  v107 = result;
                  v108 = v178;
                  *v105 = v178;
                  *(v105 + 8) = v106;
                  *(v105 + 9) = 1;
                  v109 = v177;
                  *(v105 + 16) = v174;
                  *(v105 + 24) = v109;
                  *(v105 + 26) = v68;
                  *(v105 + 27) = v19;
                  swift_storeEnumTagMultiPayload();
                  v110 = *(*v107 + 312);
                  v111 = v108;
                  v110(v105);
LABEL_128:

                  v92 = &qword_1EC4BE710;
                  v93 = &qword_1CF9FE5A8;
                  v94 = v105;
LABEL_129:
                  sub_1CEFCCC44(v94, v92, v93);
                  return 0;
                }
              }

              else if (v176)
              {
                result = swift_weakLoadStrong();
                if (result)
                {
                  v112 = result;
                  *v105 = v178;
                  *(v105 + 8) = v106;
                  *(v105 + 9) = 0;
                  v113 = v176;
                  *(v105 + 16) = v176;
                  *(v105 + 24) = 256;
                  *(v105 + 26) = v68;
                  *(v105 + 27) = v19;
                  swift_storeEnumTagMultiPayload();
                  v114 = *(*v112 + 312);
                  v115 = v113;
                  v114(v105);

                  sub_1CEFCCC44(v105, &qword_1EC4BE710, &qword_1CF9FE5A8);

                  return 0;
                }

                return result;
              }

              result = swift_weakLoadStrong();
              if (!result)
              {
                return result;
              }

              v116 = result;
              v117 = v178;
              *v105 = v178;
              *(v105 + 8) = v106;
              *(v105 + 9) = BYTE1(v106) & 1;
              *(v105 + 16) = 0;
              *(v105 + 24) = -256;
              *(v105 + 26) = v68;
              *(v105 + 27) = v19;
              swift_storeEnumTagMultiPayload();
              v118 = *(*v116 + 312);
              sub_1CEFD0988(v117, v106, BYTE1(v106) & 1);
              v118(v105);
              goto LABEL_128;
            }

LABEL_118:
            v175 = v16;
            v105 = v18;
            sub_1CEFCCBDC(v15, &v200, &qword_1EC4BFEE8, &qword_1CFA055B8);
            v106 = v179;
            goto LABEL_119;
          }

          if ((v19 - 1) >= 2)
          {
            if (!v19)
            {
              goto LABEL_149;
            }

            goto LABEL_148;
          }
        }

LABEL_115:
        *(v181 + 136) = v19;
        goto LABEL_118;
      }

      if (!*(v181 + 136))
      {
        if ((v19 - 1) >= 3)
        {
          goto LABEL_148;
        }

        goto LABEL_115;
      }

      if (v19 != 1)
      {
        goto LABEL_117;
      }

LABEL_148:
      if (v68 == v19)
      {
LABEL_149:
        sub_1CEFCCBDC(v15, &v200, &qword_1EC4BFEE8, &qword_1CFA055B8);
        return 3;
      }

      sub_1CEFCCBDC(v15, &v200, &qword_1EC4BFEE8, &qword_1CFA055B8);
      v133 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v134 = sub_1CF9E6108();
      v135 = sub_1CF9E72A8();
      if (os_log_type_enabled(v134, v135))
      {
        LODWORD(v181) = v135;
        v136 = swift_slowAlloc();
        v180.i64[0] = swift_slowAlloc();
        *&v200 = v180.i64[0];
        *v136 = 136446466;
        v137 = 0xE800000000000000;
        v138 = 0x676E696863746177;
        v139 = 0xD000000000000011;
        if (v68 == 3)
        {
          v140 = 0x80000001CFA45AC0;
        }

        else
        {
          v139 = 0xD000000000000015;
          v140 = 0x80000001CFA45AA0;
        }

        if (v68 != 2)
        {
          v138 = v139;
          v137 = v140;
        }

        v141 = 0x746F687370616E73;
        v142 = 0xEC000000676E6974;
        if (!v68)
        {
          v141 = 0x7265746E49746F6ELL;
          v142 = 0xED00006465747365;
        }

        if (v68 <= 1)
        {
          v143 = v141;
        }

        else
        {
          v143 = v138;
        }

        if (v68 <= 1)
        {
          v144 = v142;
        }

        else
        {
          v144 = v137;
        }

        v145 = sub_1CEFD0DF0(v143, v144, &v200);
        v144, v146, v147, v148, v149, v150, v151, v152;
        *(v136 + 4) = v145;
        *(v136 + 12) = 2082;
        v153 = 0xE800000000000000;
        v154 = 0x676E696863746177;
        v155 = 0xD000000000000011;
        if (v19 == 3)
        {
          v156 = 0x80000001CFA45AC0;
        }

        else
        {
          v155 = 0xD000000000000015;
          v156 = 0x80000001CFA45AA0;
        }

        if (v19 != 2)
        {
          v154 = v155;
          v153 = v156;
        }

        v157 = 0x746F687370616E73;
        v158 = 0xEC000000676E6974;
        if (!v19)
        {
          v157 = 0x7265746E49746F6ELL;
          v158 = 0xED00006465747365;
        }

        if (v19 <= 1)
        {
          v159 = v157;
        }

        else
        {
          v159 = v154;
        }

        if (v19 <= 1)
        {
          v160 = v158;
        }

        else
        {
          v160 = v153;
        }

        v161 = sub_1CEFD0DF0(v159, v160, &v200);
        v160, v162, v163, v164, v165, v166, v167, v168;
        *(v136 + 14) = v161;
        _os_log_impl(&dword_1CEFC7000, v134, v181, "❌  invalid transition %{public}s -> %{public}s", v136, 0x16u);
        v169 = v180.i64[0];
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v169, -1, -1);
        MEMORY[0x1D386CDC0](v136, -1, -1);
      }

      (*(v175 + 8))(v14, v12);
      return 3;
    case 0xB:
      LOBYTE(v200) = v19;
      *(&v200 + 1) = v21;
      BYTE7(v200) = BYTE6(v21);
      *(&v200 + 5) = WORD2(v21);
      *(&v200 + 1) = v22;
      *v201 = v23;
      *&v201[8] = v24;
      *&v201[24] = v25;
      *&v202 = v26;
      *(&v202 + 1) = v27;
      v203 = v29;
      *v204 = v28;
      v204[16] = v30;
      v204[17] = v31;
      v204[18] = 11;
      v42 = v200;
      v43 = v23;
      v44 = v181;
      v45 = *(v181 + 144);
      v46 = *(v181 + 152);
      v47 = *(v181 + 160);
      if (v47 > 2)
      {
        if (v47 != 3 && (v47 != 4 || v45 != 1 || v46))
        {
          goto LABEL_76;
        }
      }

      else if (v47 != 1)
      {
        if (v47 == 2 && (v43 == 3 || v43 == 4 && __PAIR128__(v22, v200) < 2))
        {
          v48 = v22;
          sub_1CEFCCBDC(v15, &v195, &qword_1EC4BFEE8, &qword_1CFA055B8);
          sub_1CF03D7A8(v45, v46, 2u);
          v49 = *(v44 + 16);
          if ((v49 & 8) != 0)
          {
            *(v44 + 16) = v49 & 0xFFFFFFFFFFFFFFF7;
          }

          goto LABEL_75;
        }

        goto LABEL_76;
      }

      if (v43 == 2)
      {
        v48 = v22;
        sub_1CEFCCBDC(v15, &v195, &qword_1EC4BFEE8, &qword_1CFA055B8);
        sub_1CF03D7A8(v45, v46, v47);
LABEL_75:
        result = 0;
        *(v44 + 144) = v42;
        *(v44 + 152) = v48;
        *(v44 + 160) = v43;
        return result;
      }

LABEL_76:
      sub_1CEFCCBDC(v15, &v195, &qword_1EC4BFEE8, &qword_1CFA055B8);
      sub_1CEFCCC44(&v200, &qword_1EC4BFEE8, &qword_1CFA055B8);
      return 3;
    case 0xC:
      v53 = v181;
      if (v19 != 5 && *(v181 + 32) != v19)
      {
        goto LABEL_149;
      }

      *(v181 + 32) = v20;
      if (((1 << v20) & 0x2E) == 0)
      {
        *(v53 + 138) = 0;
      }

      goto LABEL_94;
    case 0xD:
      LOBYTE(v195) = v19;
      *(&v195 + 1) = v21;
      BYTE7(v195) = BYTE6(v21);
      *(&v195 + 5) = WORD2(v21);
      *(&v195 + 1) = v22;
      *&v196[0] = v23;
      *(v196 + 8) = v24;
      *(&v196[1] + 1) = v25;
      *&v197 = v26;
      *(&v197 + 1) = v27;
      v198 = v29;
      v199[0] = v28;
      LOBYTE(v199[1]) = v30;
      BYTE1(v199[1]) = v31;
      BYTE2(v199[1]) = 13;
      v203 = v29;
      *v204 = v28;
      *&v204[15] = *(v199 + 15);
      *&v201[16] = v196[1];
      v202 = v197;
      v200 = v195;
      *v201 = v196[0];
      v65 = v29.i8[1];
      if (v29.u8[0] == 1 && (v29.i8[1] & 1) == 0)
      {
        sub_1CEFCCBDC(v15, &v183, &qword_1EC4BFEE8, &qword_1CFA055B8);
        v66 = v181;
        goto LABEL_139;
      }

      v66 = v181;
      v73 = *(v181 + 184);
      v187 = *(v181 + 168);
      v188 = v73;
      v74 = *(v181 + 216);
      v189 = *(v181 + 200);
      v190 = v74;
      v192 = v74;
      v193 = v187;
      v194 = *(v181 + 184);
      v75 = *(&v73 + 1);
      v191 = v189;
      if (*(&v73 + 1) >> 60 == 11)
      {
        goto LABEL_138;
      }

      v95 = v18;
      v96 = v15;
      v97 = swift_weakLoadStrong();
      v98 = v97;
      if (v65)
      {
        if (v97)
        {
          v99 = v178;
          *v95 = v178;
          v100 = v179;
          v95[8] = v179;
          v95[9] = BYTE1(v100) & 1;
          v101 = v192;
          *(v95 + 1) = v193;
          *(v95 + 4) = v194;
          *(v95 + 5) = v75;
          *(v95 + 3) = v191;
          *(v95 + 4) = v101;
          v102 = v95;
          swift_storeEnumTagMultiPayload();
          v103 = *(*v98 + 312);
          sub_1CEFCCBDC(&v187, &v183, &unk_1EC4BF260, &unk_1CFA01B60);
          sub_1CEFCCBDC(v96, &v183, &qword_1EC4BFEE8, &qword_1CFA055B8);
          sub_1CEFD0988(v99, v100, BYTE1(v100) & 1);
          sub_1CEFCCBDC(&v187, &v183, &unk_1EC4BF260, &unk_1CFA01B60);
          v103(v95);

LABEL_132:
          sub_1CEFCCC44(&v187, &unk_1EC4BF260, &unk_1CFA01B60);
          sub_1CEFCCC44(v102, &qword_1EC4BE710, &qword_1CF9FE5A8);
          goto LABEL_139;
        }
      }

      else if (v97)
      {
        v119 = v192;
        *v95 = v193;
        *(v95 + 2) = v194;
        *(v95 + 3) = v75;
        *(v95 + 2) = v191;
        *(v95 + 3) = v119;
        v102 = v95;
        swift_storeEnumTagMultiPayload();
        v120 = *(*v98 + 312);
        sub_1CEFCCBDC(&v187, &v183, &unk_1EC4BF260, &unk_1CFA01B60);
        sub_1CEFCCBDC(v96, &v183, &qword_1EC4BFEE8, &qword_1CFA055B8);
        sub_1CEFCCBDC(&v187, &v183, &unk_1EC4BF260, &unk_1CFA01B60);
        v120(v95);

        goto LABEL_132;
      }

      v15 = v96;
LABEL_138:
      sub_1CEFCCBDC(v15, &v183, &qword_1EC4BFEE8, &qword_1CFA055B8);
LABEL_139:
      v124 = *(v66 + 184);
      v183 = *(v66 + 168);
      v184 = v124;
      v125 = *(v66 + 216);
      v185 = *(v66 + 200);
      v186 = v125;
      v126 = *v201;
      *(v66 + 168) = v200;
      *(v66 + 184) = v126;
      v127 = v202;
      *(v66 + 200) = *&v201[16];
      *(v66 + 216) = v127;
      sub_1CEFCCBDC(&v200, &v187, &unk_1EC4BF260, &unk_1CFA01B60);
      sub_1CEFCCC44(&v183, &unk_1EC4BF260, &unk_1CFA01B60);
      if (*&v201[8] >> 60 == 11)
      {
        return 0;
      }

      sub_1CEFCCC44(&v195, &qword_1EC4BFEE8, &qword_1CFA055B8);
      return 1;
    case 0xE:
      v35 = v15;
      v36 = v181;
      if (*(v181 + 8) == 255)
      {
        sub_1CEFCCBDC(v15, &v200, &qword_1EC4BFEE8, &qword_1CFA055B8);
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 584);
      }

      v15 = swift_weakLoadStrong();
      if (!v15)
      {
        __break(1u);
LABEL_182:
        sub_1CEFCCBDC(v15, &v200, &qword_1EC4BFEE8, &qword_1CFA055B8);
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 508);
      }

      v37 = *(*v15 + 152);
      v38 = sub_1CEFCCBDC(v35, &v200, &qword_1EC4BFEE8, &qword_1CFA055B8);
      v39 = v37(v38);

      v40 = *(v36 + 16);
      if (v39 & 0x4000) != 0 && (v19)
      {
        result = 0;
        if ((v40 & 0x80) == 0)
        {
          *(v36 + 16) = v40 | 0x80;
        }
      }

      else
      {
        result = 0;
        if ((v40 & 0x80) != 0)
        {
          *(v36 + 16) = v40 & 0xFFFFFFFFFFFFFF7FLL;
        }
      }

      return result;
    case 0xF:
      v58 = vorrq_s8(v28, v29);
      if (v23 | *&vorr_s8(*v58.i8, *&vextq_s8(v58, v58, 8uLL)) | v25 | v26 | v27 | v22 | v32 | *(&v24 + 1) | v24)
      {
        v59 = 0;
      }

      else
      {
        v59 = (v30 | (v31 << 8)) == 0;
      }

      if (!v59)
      {
        *(v181 + 138) = 1;
LABEL_49:
        sub_1CEFCCBDC(v15, &v200, &qword_1EC4BFEE8, &qword_1CFA055B8);
        return 1;
      }

      v56 = v181;
      if ((*(v181 + 16) & 9) != 8)
      {
        v57 = ~*(v181 + 16) & 8 | *(v181 + 16) & 0xFFFFFFFFFFFFFFFELL;
LABEL_81:
        *(v56 + 16) = v57;
      }

LABEL_82:
      *(v56 + 24) = 0;
LABEL_94:
      sub_1CEFCCBDC(v15, &v200, &qword_1EC4BFEE8, &qword_1CFA055B8);
      return 0;
    default:
      v33 = v181;
      if (*(v181 + 8) == 255)
      {
        goto LABEL_182;
      }

      if ((v32 & ~*a3) != 0)
      {
        *a3 |= v32;
      }

      sub_1CEFCCBDC(v15, &v200, &qword_1EC4BFEE8, &qword_1CFA055B8);
      if (qword_1EDEABDE0 != -1)
      {
        swift_once();
      }

      v34 = *(v33 + 16);
      *(v33 + 24) |= v32 & 0xFFFFFFFFFF7FFFEFLL & (qword_1EDEABDE8 | 0x409000000C000);
      if ((v34 & 9) != 0)
      {
        *(v33 + 16) = v34 & 0xFFFFFFFFFFFFFFF6;
      }

      return 1;
  }
}

void sub_1CF447FF8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, char a6)
{
  v215 = a2;
  v213 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v208 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v208 - v14;
  v249 = a5;
  v250 = a6;
  v217 = *v13;
  v16 = *(v13 + 8);
  v269 = *(v13 + 9);
  v270 = v16;
  v17 = *(v13 + 10);
  v18 = *(v13 + 11);
  v19 = *(v13 + 12);
  v20 = *(v13 + 16);
  v21 = *(v13 + 24);
  v22 = *(v13 + 25);
  v23 = *(v13 + 26) | (*(v13 + 30) << 32);
  v24 = *(v13 + 80);
  v246 = *(v13 + 64);
  v247 = v24;
  v248[0] = *(v13 + 96);
  *(v248 + 15) = *(v13 + 111);
  v25 = *(v13 + 48);
  v244 = *(v13 + 32);
  v245 = v25;
  switch(*(v13 + 115))
  {
    case 1:
      v71 = v215;
      v72 = *(v215 + 8);
      v212 = v20;
      v210 = v21;
      if (v72 == 255)
      {
        v73 = v270;
        v74 = v217;
        if (v270 == 255)
        {
LABEL_97:
          v145 = *(v215 + 248);
          v211 = (v215 + 248);
          if (v145)
          {
            v213 = v13;
            v146 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v148 = v147;
            v150 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v151 = v146;
            v152 = v149;
            if (v151 == v150 && v148 == v149)
            {
              v269 = 1;
            }

            else
            {
              v269 = sub_1CF9E8048();
            }

            v157 = v145;
            v156 = v212;
            v158 = v212;
            sub_1CEFCCBDC(v213, v237, &qword_1EC4BE6D0, &qword_1CF9FE560);

            v148, v159, v160, v161, v162, v163, v164, v165;
            v152, v166, v167, v168, v169, v170, v171, v172;
            if (v269)
            {
              sub_1CF47EB94(v71, v217, v270, v158, v210);

              return;
            }
          }

          else
          {
            sub_1CEFCCBDC(v13, v237, &qword_1EC4BE6D0, &qword_1CF9FE560);
            v156 = v212;
          }

          v240 = v156;
          v241 = 256;
          v238 = a5;
          v239 = a6;
          v173 = v214;
          v174 = *(*v214 + 168);
          v175 = v156;
          v176 = v216;
          v174(v237, &v240, 1, &v238, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          if (v176)
          {

            return;
          }

          memcpy(v236, v237, sizeof(v236));
          if (sub_1CF08B99C(v236) == 1)
          {
            memcpy(v235, v237, sizeof(v235));
            sub_1CEFCCC44(v235, &unk_1EC4BFD20, &unk_1CFA05440);
            sub_1CF445058(v240, v241 | (HIBYTE(v241) << 8), v242);

            memcpy(v243, v242, 0x208uLL);
            v73 = v270;
            v74 = v217;
          }

          else
          {

            memcpy(v243, v237, 0x208uLL);
            (*(*v173 + 200))(v243, *(&v237[32] + 1), 0, &v249, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
            v73 = v270;
            v74 = v217;
            v229 = *(&v243[25] + 8);
            v230 = *(&v243[26] + 8);
            v231 = *(&v243[27] + 8);
            v225 = *(&v243[21] + 8);
            v226 = *(&v243[22] + 8);
            v227 = *(&v243[23] + 8);
            v228 = *(&v243[24] + 8);
            v219 = *(&v243[15] + 8);
            v220 = *(&v243[16] + 8);
            v221 = *(&v243[17] + 8);
            v222 = *(&v243[18] + 8);
            v223 = *(&v243[19] + 8);
            v224 = *(&v243[20] + 8);
            v193 = v211;
            v194 = *(v211 + 11);
            v235[10] = *(v211 + 10);
            v235[11] = v194;
            v235[12] = *(v211 + 12);
            v195 = *(v211 + 7);
            v235[6] = *(v211 + 6);
            v235[7] = v195;
            v196 = *(v211 + 9);
            v235[8] = *(v211 + 8);
            v235[9] = v196;
            v197 = *(v211 + 3);
            v235[2] = *(v211 + 2);
            v235[3] = v197;
            v198 = *(v211 + 5);
            v235[4] = *(v211 + 4);
            v235[5] = v198;
            v199 = *(v211 + 1);
            v235[0] = *v211;
            v235[1] = v199;
            sub_1CEFCCBDC(&v219, v218, &unk_1EC4C4E60, &unk_1CF9FCAD0);
            sub_1CEFCCC44(v235, &unk_1EC4C4E60, &unk_1CF9FCAD0);
            v200 = v230;
            v193[10] = v229;
            v193[11] = v200;
            v193[12] = v231;
            v201 = v226;
            v193[6] = v225;
            v193[7] = v201;
            v202 = v228;
            v193[8] = v227;
            v193[9] = v202;
            v203 = v222;
            v193[2] = v221;
            v193[3] = v203;
            v204 = v224;
            v193[4] = v223;
            v193[5] = v204;
            v205 = v220;
            *v193 = v219;
            v193[1] = v205;
          }

          goto LABEL_115;
        }
      }

      else
      {
        v73 = v270;
        v74 = v217;
        if (v270 != 255)
        {
          v133 = *v215;
          if (v72)
          {
            if (v72 == 1)
            {
              if (v270 == 1 && v133 == v217)
              {
                goto LABEL_97;
              }
            }

            else if (v133)
            {
              if (v270 == 2 && v217 == 1)
              {
                goto LABEL_97;
              }
            }

            else if (v270 == 2 && !v217)
            {
              goto LABEL_97;
            }
          }

          else if (!v270 && v133 == v217)
          {
            goto LABEL_97;
          }
        }
      }

      v240 = v74;
      v241 = v73;
      v238 = a5;
      v239 = a6;
      v153 = v214;
      v154 = *(*v214 + 168);
      sub_1CEFCCBDC(v13, v236, &qword_1EC4BE6D0, &qword_1CF9FE560);
      v155 = v216;
      v154(v237, &v240, 1, &v238, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      if (v155)
      {

        return;
      }

      memcpy(v236, v237, sizeof(v236));
      if (sub_1CF08B99C(v236) != 1)
      {
        memcpy(v243, v237, 0x208uLL);
        (*(*v153 + 200))(v243, *(&v237[32] + 1), 0, &v249, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
        v231 = v243[12];
        v232 = v243[13];
        v233 = v243[14];
        v234 = *&v243[15];
        v227 = v243[8];
        v228 = v243[9];
        v229 = v243[10];
        v230 = v243[11];
        v223 = v243[4];
        v224 = v243[5];
        v225 = v243[6];
        v226 = v243[7];
        v219 = v243[0];
        v220 = v243[1];
        v221 = v243[2];
        v222 = v243[3];
        v177 = v215;
        v178 = *(v215 + 208);
        v235[12] = *(v215 + 192);
        v235[13] = v178;
        v235[14] = *(v215 + 224);
        *&v235[15] = *(v215 + 240);
        v179 = *(v215 + 144);
        v235[8] = *(v215 + 128);
        v235[9] = v179;
        v180 = *(v215 + 176);
        v235[10] = *(v215 + 160);
        v235[11] = v180;
        v181 = *(v215 + 80);
        v235[4] = *(v215 + 64);
        v235[5] = v181;
        v182 = *(v215 + 112);
        v235[6] = *(v215 + 96);
        v235[7] = v182;
        v183 = *(v215 + 16);
        v235[0] = *v215;
        v235[1] = v183;
        v184 = *(v215 + 48);
        v235[2] = *(v215 + 32);
        v235[3] = v184;
        sub_1CEFCCBDC(&v219, v218, &unk_1EC4BFE00, &unk_1CF9FEF00);
        sub_1CEFCCC44(v235, &unk_1EC4BFE00, &unk_1CF9FEF00);
        v185 = v177;
        v186 = v232;
        *(v177 + 192) = v231;
        *(v177 + 208) = v186;
        *(v177 + 224) = v233;
        *(v177 + 240) = v234;
        v187 = v228;
        *(v177 + 128) = v227;
        *(v177 + 144) = v187;
        v188 = v230;
        *(v177 + 160) = v229;
        *(v177 + 176) = v188;
        v189 = v224;
        *(v177 + 64) = v223;
        *(v177 + 80) = v189;
        v190 = v226;
        *(v177 + 96) = v225;
        *(v177 + 112) = v190;
        v191 = v220;
        *v177 = v219;
        *(v177 + 16) = v191;
        v192 = v222;
        *(v177 + 32) = v221;
        *(v177 + 48) = v192;
        goto LABEL_116;
      }

      memcpy(v235, v237, sizeof(v235));
      sub_1CEFCCC44(v235, &unk_1EC4BFD20, &unk_1CFA05440);
      sub_1CF445058(v240, v241 | (HIBYTE(v241) << 8), v242);
      memcpy(v243, v242, 0x208uLL);
LABEL_115:
      v185 = v215;
LABEL_116:
      v206 = v212;
      sub_1CF47EB94(v185, v74, v73, v212, v210);

      memcpy(v237, v243, 0x208uLL);
      sub_1CEFCCC44(v237, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      return;
    case 2:
      v47 = v269;
      if ((v17 ^ v269))
      {
        sub_1CEFCCBDC(v13, v237, &qword_1EC4BE6D0, &qword_1CF9FE560);
        v48 = v217;
        v49 = v270;
        sub_1CEFD0988(v217, v270, v47 & 1);
        sub_1CEFD0994(v48, v49, v47 & 1);
        v50 = v215;
        v51 = *(v215 + 208);
        v237[12] = *(v215 + 192);
        v237[13] = v51;
        v237[14] = *(v215 + 224);
        v52 = *(v215 + 144);
        v237[8] = *(v215 + 128);
        v237[9] = v52;
        v53 = *(v215 + 176);
        v237[10] = *(v215 + 160);
        v237[11] = v53;
        v54 = *(v215 + 80);
        v237[4] = *(v215 + 64);
        v237[5] = v54;
        v55 = *(v215 + 112);
        v237[6] = *(v215 + 96);
        v237[7] = v55;
        v56 = *(v215 + 16);
        v237[0] = *v215;
        v237[1] = v56;
        v57 = *(v215 + 48);
        v237[2] = *(v215 + 32);
        *&v237[15] = *(v215 + 240);
        v237[3] = v57;
        sub_1CEFCCC44(v237, &unk_1EC4BFE00, &unk_1CF9FEF00);
        *v50 = 0;
        *(v50 + 8) = -1;
        *(v50 + 16) = 0;
        *(v50 + 24) = 0;
        *(v50 + 32) = 5;
        *(v50 + 40) = 0u;
        *(v50 + 56) = 0u;
        *(v50 + 72) = 0u;
        *(v50 + 88) = 0u;
        *(v50 + 104) = 0u;
        *(v50 + 120) = 0u;
        *(v50 + 136) = 0;
        *(v50 + 137) = 6;
        *(v50 + 144) = xmmword_1CF9FD920;
        *(v50 + 160) = 4;
        *(v50 + 168) = 0;
        *(v50 + 176) = 0;
        *(v50 + 184) = 0;
        *(v50 + 192) = 0xB000000000000000;
        *(v50 + 200) = 0u;
        *(v50 + 216) = 0u;
        *(v50 + 232) = 0u;
      }

      else
      {
        sub_1CEFCCBDC(v13, v237, &qword_1EC4BE6D0, &qword_1CF9FE560);
        v48 = v217;
        v49 = v270;
        sub_1CEFD0988(v217, v270, v47 & 1);
        sub_1CEFD0994(v48, v49, v47 & 1);
        v119 = v215;
        v120 = *(v215 + 408);
        v237[9] = *(v215 + 392);
        v237[10] = v120;
        v121 = *(v215 + 440);
        v237[11] = *(v215 + 424);
        v237[12] = v121;
        v122 = *(v215 + 344);
        v237[5] = *(v215 + 328);
        v237[6] = v122;
        v123 = *(v215 + 376);
        v237[7] = *(v215 + 360);
        v237[8] = v123;
        v124 = *(v215 + 280);
        v237[1] = *(v215 + 264);
        v237[2] = v124;
        v125 = *(v215 + 312);
        v237[3] = *(v215 + 296);
        v237[4] = v125;
        v237[0] = *(v215 + 248);
        sub_1CEFCCC44(v237, &unk_1EC4C4E60, &unk_1CF9FCAD0);
        *(v119 + 264) = 0;
        v50 = v119;
        *(v119 + 248) = 0;
        *(v119 + 256) = 0;
        *(v119 + 272) = 5;
        *(v119 + 280) = 0;
        *(v119 + 288) = 0;
        *(v119 + 296) = 1;
        *(v119 + 304) = 0u;
        *(v119 + 320) = 0u;
        *(v119 + 329) = 0u;
        *(v119 + 345) = 6;
        *(v119 + 352) = xmmword_1CF9FD920;
        *(v119 + 368) = 4;
        *(v119 + 376) = 0;
        *(v119 + 384) = 0;
        *(v119 + 392) = 0;
        *(v119 + 400) = 0xB000000000000000;
        *(v119 + 424) = 0u;
        *(v119 + 440) = 0u;
        *(v119 + 408) = 0u;
      }

      sub_1CEFD0994(v48, v49, v47 & 1);
      *(v50 + 464), v126, v127, v128, v129, v130, v131, v132;
      *(v50 + 464) = MEMORY[0x1E69E7CC0];
      return;
    case 3:
      *(v215 + 456) = v17;
      goto LABEL_12;
    case 4:
      v75 = v215;
      v76 = *(v215 + 208);
      v237[12] = *(v215 + 192);
      v237[13] = v76;
      v237[14] = *(v215 + 224);
      v77 = *(v215 + 144);
      v237[8] = *(v215 + 128);
      v237[9] = v77;
      v78 = *(v215 + 176);
      v237[10] = *(v215 + 160);
      v237[11] = v78;
      v79 = *(v215 + 80);
      v237[4] = *(v215 + 64);
      v237[5] = v79;
      v80 = *(v215 + 112);
      v237[6] = *(v215 + 96);
      v237[7] = v80;
      v81 = *(v215 + 16);
      v237[0] = *v215;
      v237[1] = v81;
      v82 = *(v215 + 48);
      v237[2] = *(v215 + 32);
      *&v237[15] = *(v215 + 240);
      v237[3] = v82;
      v210 = v21;
      v212 = v20;
      LODWORD(v211) = v17;
      v214 = v22;
      v209 = v18;
      LODWORD(v213) = v19;
      v83 = v23;
      sub_1CEFCCBDC(v13, v236, &qword_1EC4BE6D0, &qword_1CF9FE560);
      sub_1CEFCCC44(v237, &unk_1EC4BFE00, &unk_1CF9FEF00);
      *v75 = 0;
      *(v75 + 8) = -1;
      *(v75 + 16) = 0;
      *(v75 + 24) = 0;
      *(v75 + 32) = 5;
      *(v75 + 40) = 0u;
      *(v75 + 56) = 0u;
      *(v75 + 72) = 0u;
      *(v75 + 88) = 0u;
      *(v75 + 104) = 0u;
      *(v75 + 120) = 0u;
      *(v75 + 136) = 0;
      *(v75 + 137) = 6;
      v84 = *(v75 + 392);
      v85 = *(v75 + 424);
      v86 = *(v75 + 440);
      v236[10] = *(v75 + 408);
      v236[11] = v85;
      v236[12] = v86;
      v87 = *(v75 + 328);
      v88 = *(v75 + 360);
      v89 = *(v75 + 376);
      v236[6] = *(v75 + 344);
      v236[7] = v88;
      v236[8] = v89;
      v236[9] = v84;
      v90 = *(v75 + 264);
      v91 = *(v75 + 296);
      v92 = *(v75 + 312);
      v236[2] = *(v75 + 280);
      v236[3] = v91;
      v208 = xmmword_1CF9FD920;
      *(v75 + 144) = xmmword_1CF9FD920;
      *(v75 + 160) = 4;
      *(v75 + 168) = 0;
      *(v75 + 176) = 0;
      *(v75 + 184) = 0;
      *(v75 + 192) = 0xB000000000000000;
      *(v75 + 200) = 0u;
      *(v75 + 216) = 0u;
      *(v75 + 232) = 0u;
      v236[4] = v92;
      v236[5] = v87;
      v236[0] = *(v75 + 248);
      v236[1] = v90;
      sub_1CEFCCC44(v236, &unk_1EC4C4E60, &unk_1CF9FCAD0);
      *(v75 + 264) = 0;
      *(v75 + 248) = 0;
      *(v75 + 256) = 0;
      *(v75 + 272) = 5;
      *(v75 + 280) = 0;
      *(v75 + 288) = 0;
      *(v75 + 296) = 1;
      *(v75 + 304) = 0u;
      *(v75 + 320) = 0u;
      *(v75 + 329) = 0u;
      *(v75 + 345) = 6;
      *(v75 + 352) = v208;
      *(v75 + 368) = 4;
      *(v75 + 376) = 0;
      *(v75 + 384) = 0;
      *(v75 + 392) = 0;
      *(v75 + 400) = 0xB000000000000000;
      *(v75 + 424) = 0u;
      *(v75 + 440) = 0u;
      *(v75 + 408) = 0u;
      *(v75 + 464), v93, v94, v95, v96, v97, v98, v99;
      *(v75 + 464) = MEMORY[0x1E69E7CC0];
      *&v235[0] = v217;
      BYTE8(v235[0]) = v270;
      BYTE9(v235[0]) = v269;
      BYTE10(v235[0]) = v211;
      BYTE11(v235[0]) = v209;
      HIDWORD(v235[0]) = v213;
      *&v235[1] = v212;
      BYTE8(v235[1]) = v210;
      BYTE9(v235[1]) = v214;
      HIWORD(v235[1]) = WORD2(v83);
      *(&v235[1] + 10) = v83;
      v235[4] = v246;
      v235[5] = v247;
      v235[6] = v248[0];
      *(&v235[6] + 15) = *(v248 + 15);
      v235[2] = v244;
      v235[3] = v245;
      BYTE3(v235[7]) = 4;
      sub_1CEFCCC44(v235, &qword_1EC4BE6D0, &qword_1CF9FE560);
      return;
    case 5:
    case 6:
    case 0xC:
      goto LABEL_12;
    case 7:
      v113 = v20;
      v114 = v21;
      v115 = v22;
      sub_1CEFCCBDC(v13, v237, &qword_1EC4BE6D0, &qword_1CF9FE560);
      sub_1CF7E2EF0(v113, v114 & 0xFEFF | ((v115 & 1) << 8));
      goto LABEL_36;
    case 8:
      *&v236[0] = v20;
      BYTE8(v236[0]) = v21;
      BYTE9(v236[0]) = v22 & 1;
      MEMORY[0x1EEE9AC00](v13);
      v207 = v236;
      sub_1CEFCCBDC(v43, v237, &qword_1EC4BE6D0, &qword_1CF9FE560);
      v44 = v215;
      sub_1CF8DF6A8(sub_1CF480978, (&v208 - 2));
      v46 = *(*(v44 + 464) + 16);
      if (v46 >= v45)
      {
        sub_1CF47EAD4(v45, v46);
        sub_1CEFD0994(*&v236[0], BYTE8(v236[0]), SBYTE9(v236[0]));
        sub_1CEFD0994(v217, v270, v269 & 1);
        return;
      }

      __break(1u);
      goto LABEL_118;
    case 9:
      v251 = v20;
      v252 = v21;
      v253 = v22;
      v254 = v23;
      v255 = WORD2(v23);
      v107 = *(v13 + 48);
      v256 = *(v13 + 32);
      v257 = v107;
      *v258 = *(v13 + 64);
      v213 = v13;
      *&v258[15] = *(v13 + 79);
      v108 = v215 + 248;
      v109 = *(v215 + 248);
      LODWORD(v212) = *(v215 + 456);
      v211 = a4;
      if (v109)
      {
        v110 = 0;
        v111 = 1;
        v112 = v109;
      }

      else
      {
        v137 = v269;
        v110 = v270;
        v112 = v217;
        sub_1CEFD0988(v217, v270, v269 & 1);
        v111 = v137;
      }

      v138 = *v215;
      v139 = *(v215 + 8);
      v140 = v109;
      sub_1CEFCCBDC(v213, v237, &qword_1EC4BE6D0, &qword_1CF9FE560);
      v141 = v140;
      sub_1CF445458(&v251, v108, v211, v212, v112, v110 & 0xFFFFFEFF | ((v111 & 1) << 8), v138, v139, v109);

      sub_1CEFD0994(v112, v110, v111 & 1);
      sub_1CEFCCC44(&v251, &qword_1EC4BFEE0, &qword_1CFA055B0);
      v136 = v269 & 1;
      goto LABEL_61;
    case 0xA:
      v259 = v20;
      v260 = v21;
      v261 = v22;
      v262 = v23;
      v263 = WORD2(v23);
      v29 = *(v13 + 80);
      v266 = *(v13 + 64);
      v267 = v29;
      v268[0] = *(v13 + 96);
      *(v268 + 15) = *(v13 + 111);
      v30 = *(v13 + 48);
      v264 = *(v13 + 32);
      v265 = v30;
      v31 = v215;
      LODWORD(v212) = *(v215 + 456);
      v32 = *(v215 + 8);
      if (v32 == 255)
      {
        v37 = v269;
        v36 = v270;
        v134 = v13;
        v35 = v217;
        sub_1CEFD0988(v217, v270, v269 & 1);
        v13 = v134;
        v31 = v215;
        v34 = *v215;
        v32 = *(v215 + 8);
        v33 = v37;
      }

      else
      {
        v33 = 0;
        v34 = *v215;
        v35 = *v215;
        v36 = *(v215 + 8);
        v37 = v269;
      }

      v135 = *(v31 + 248);
      sub_1CEFCCBDC(v13, v237, &qword_1EC4BE6D0, &qword_1CF9FE560);
      sub_1CF446A64(&v259, v31, v213, v212, v35, v36 & 0xFFFFFEFF | ((v33 & 1) << 8), v34, v32, v135);
      sub_1CEFD0994(v35, v36, v33 & 1);
      sub_1CEFCCC44(&v259, &qword_1EC4BFEE8, &qword_1CFA055B8);
      v136 = v37 & 1;
LABEL_61:
      sub_1CEFD0994(v217, v270, v136);
      return;
    case 0xB:
      v38 = *(v215 + 240);
      if (v21)
      {
        v39 = v38 & ~v20;
        v40 = v217;
        v42 = v269;
        v41 = v270;
LABEL_45:
        *(v215 + 240) = v39;
        goto LABEL_46;
      }

      v116 = (*(v215 + 240) & 3) != 0 && (v20 & 3) != 0;
      if (v116)
      {
        v38 &= 0xFFFFFFFFFFFFFFFCLL;
      }

      v117 = (v38 & v20);
      v40 = v217;
      v42 = v269;
      v41 = v270;
      if (v116 || v117 != v20)
      {
        if (v117 == v20)
        {
          v118 = 0;
        }

        else
        {
          v118 = v20;
        }

        v39 = v118 | v38;
        goto LABEL_45;
      }

LABEL_46:
      sub_1CEFCCBDC(v13, v237, &qword_1EC4BE6D0, &qword_1CF9FE560);
      sub_1CEFD0994(v40, v41, v42 & 1);
      return;
    case 0xD:
      LODWORD(v211) = v17;
      v100 = v215;
      if (*(v215 + 504) == (v17 & 1))
      {
        sub_1CEFCCBDC(v13, v237, &qword_1EC4BE6D0, &qword_1CF9FE560);
        v105 = v269;
        v102 = v270;
        v104 = v217;
        goto LABEL_56;
      }

      v213 = v13;
      Strong = swift_weakLoadStrong();
      v102 = v270;
      if (Strong)
      {
        v103 = Strong;
        v104 = v217;
        *v15 = v217;
        v15[8] = v102;
        v105 = v269;
        v15[9] = v269 & 1;
        swift_storeEnumTagMultiPayload();
        v106 = *(*v103 + 312);
        sub_1CEFCCBDC(v213, v237, &qword_1EC4BE6D0, &qword_1CF9FE560);
        sub_1CEFD0988(v104, v102, v105 & 1);
        v106(v15);

        sub_1CEFCCC44(v15, &qword_1EC4BE710, &qword_1CF9FE5A8);
        v100 = v215;
LABEL_56:
        sub_1CEFD0994(v104, v102, v105 & 1);
        *(v100 + 504) = v211 & 1;
        return;
      }

LABEL_118:
      __break(1u);
      return;
    case 0xE:
      v26 = v21 | (v22 << 8) | (v23 << 16);
      v27 = *(v215 + 512);
      if ((v20 & ~v27) != 0)
      {
        v28 = v20;
      }

      else
      {
        v28 = 0;
      }

      *(v215 + 512) = (v28 | v27) & ~v26;
      goto LABEL_12;
    case 0xF:
      v58 = v215;
      v59 = *(v215 + 8);
      if (v59 == 255)
      {
        goto LABEL_12;
      }

      v60 = *v215;
      v61 = *(v215 + 137);
      if (v18)
      {
        goto LABEL_21;
      }

      if (*(v215 + 137) <= 2u)
      {
        if (*(v215 + 137))
        {
          if (v61 == 1)
          {
            if (v17 != 2)
            {
              goto LABEL_12;
            }
          }

          else if (v17 != 3)
          {
            goto LABEL_12;
          }
        }

        else if (v17 > 6 || ((1 << v17) & 0x4E) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_21;
      }

      if (*(v215 + 137) > 4u)
      {
        if (v61 != 5)
        {
          if (v17 && v17 != 5)
          {
            goto LABEL_12;
          }

          goto LABEL_21;
        }

        if (!v17)
        {
          goto LABEL_21;
        }

        goto LABEL_85;
      }

      if (v61 != 3)
      {
LABEL_85:
        if (v17 != 6)
        {
          goto LABEL_12;
        }

        goto LABEL_21;
      }

      if ((v17 | 2) != 6)
      {
LABEL_12:
        sub_1CEFCCBDC(v13, v237, &qword_1EC4BE6D0, &qword_1CF9FE560);
        sub_1CEFD0994(v217, v270, v269 & 1);
        return;
      }

LABEL_21:
      v213 = v13;
      *(v215 + 137) = v17;
      v62 = *(v58 + 248);
      v63 = v17;
      v64 = swift_weakLoadStrong();
      if (v64)
      {
        v65 = v64;
        *v11 = v60;
        v11[8] = v59;
        v11[9] = 0;
        if (v62)
        {
          v66 = 256;
        }

        else
        {
          v66 = -256;
        }

        *(v11 + 2) = v62;
        *(v11 + 12) = v66;
        v11[26] = v61;
        v67 = v63;
        v11[27] = v63;
        swift_storeEnumTagMultiPayload();
        v68 = *(*v65 + 312);
        v69 = v62;
        sub_1CEFCCBDC(v213, v237, &qword_1EC4BE6D0, &qword_1CF9FE560);
        v70 = v69;
        v68(v11);

        sub_1CEFCCC44(v11, &qword_1EC4BE710, &qword_1CF9FE5A8);

        v63 = v67;
      }

      else
      {
        sub_1CEFCCBDC(v213, v237, &qword_1EC4BE6D0, &qword_1CF9FE560);
      }

      v143 = v269;
      v142 = v270;
      v144 = v217;
      if (v63 == 6)
      {
        *(v215 + 138) = 0;
      }

      sub_1CEFD0994(v144, v142, v143 & 1);
      return;
    case 0x10:
      *(v215 + 496) = v20;
      goto LABEL_4;
    default:
      *(v215 + 456) = v17;
LABEL_4:
      sub_1CEFCCBDC(v13, v237, &qword_1EC4BE6D0, &qword_1CF9FE560);
LABEL_36:
      sub_1CEFD0994(v217, v270, v269 & 1);
      return;
  }
}

void sub_1CF44961C(uint64_t a1, void *a2, void *a3, unsigned int a4)
{
  v9 = *(a2 + 137);
  v10 = sub_1CF9E5CF8();
  v54 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a3;
  v63 = a3;
  v53 = a4;
  v64 = a4;
  v13 = *(a1 + 16);
  v62 = *a2;
  v14 = a2[2];
  memcpy(v61, a2 + 3, sizeof(v61));
  v66 = *a2;
  memcpy(v68, a2 + 3, sizeof(v68));
  v67 = v14;
  if (sub_1CF08B99C(&v66) == 1)
  {
    v58 = v62;
    v59 = v14;
    memcpy(v60, v61, sizeof(v60));
    sub_1CEFCCBDC(a2, &v56, &unk_1EC4BFC20, &unk_1CFA0A290);
    sub_1CEFCCC44(&v58, &unk_1EC4BFC20, &unk_1CFA0A290);
    if ((v13 & 0x10) == 0)
    {
      return;
    }

    goto LABEL_19;
  }

  v58 = v62;
  v59 = v14;
  memcpy(v60, v61, sizeof(v60));
  sub_1CEFCCBDC(a2, &v56, &unk_1EC4BFC20, &unk_1CFA0A290);
  sub_1CEFCCC44(&v58, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  if ((v13 & 0x10) != 0)
  {
    if ((v14 & 0x10) != 0)
    {
      return;
    }

LABEL_19:
    memcpy(v65, a2, sizeof(v65));
    v28 = sub_1CF08B99C(v65);
    v29 = 0x2000000;
    v30 = 0x40000000;
    if (v9)
    {
      v30 = 0x2000000;
    }

    if (v28 != 1)
    {
      v29 = v30;
    }

    v51 = v29;
    v31 = *(a1 + 8);
    if (v31 != 255)
    {
      v32 = *a1;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v34 = v33;
      v15 = *(v54 + 8);
      v35 = v10;
      (v15)(v12, v10);
      v36 = v34 * 1000000000.0;
      if (COERCE__INT64(fabs(v34 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v36 > -9.22337204e18)
      {
        if (v36 < 9.22337204e18)
        {
          v37 = v36;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA00, &qword_1CF9FADC8);
          a1 = swift_allocObject();
          *(a1 + 152) = v31;
          *(a1 + 16) = 0u;
          *(a1 + 32) = 0u;
          *(a1 + 48) = 1;
          *(a1 + 56) = 0u;
          *(a1 + 72) = 0u;
          *(a1 + 88) = 0;
          *(a1 + 120) = 0;
          *(a1 + 128) = v37;
          *(a1 + 136) = v51;
          *(a1 + 144) = v32;
          *(a1 + 96) = xmmword_1CFA04F00;
          *(a1 + 112) = 0;
          Strong = swift_weakLoadStrong();
          if (Strong)
          {
            v32 = Strong;
            sub_1CF9E5CE8();
            sub_1CF9E5C98();
            v40 = v39;
            (v15)(v12, v35);
            v41 = v40 * 1000000000.0;
            v4 = v55;
            if (COERCE__INT64(fabs(v40 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v41 > -9.22337204e18)
              {
                if (v41 < 9.22337204e18)
                {
                  sub_1CF902E70(a1, v41, v52, v53);

                  return;
                }

                goto LABEL_57;
              }

LABEL_56:
              __break(1u);
LABEL_57:
              __break(1u);
LABEL_58:
              swift_once();
              goto LABEL_37;
            }

LABEL_55:
            __break(1u);
            goto LABEL_56;
          }

LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      __break(1u);
      goto LABEL_54;
    }

LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if ((v14 & 0x10) == 0)
  {
    return;
  }

  v15 = v13;
  if ((v13 & 5) != 0)
  {
    return;
  }

  if (*(a1 + 456) != 1 || (v16 = *(a1 + 8), v16 == 255))
  {
    v4 = v55;
    goto LABEL_34;
  }

  v17 = v10;
  v18 = *a1;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v20 = v19;
  v21 = *(v54 + 8);
  v54 += 8;
  v21(v12, v17);
  v22 = v20 * 1000000000.0;
  if (COERCE__INT64(fabs(v20 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_60;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v51 = v21;
  if (v22 >= 9.22337204e18)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCB0, &unk_1CF9FAE60);
  v24 = swift_allocObject();
  *(v24 + 152) = v16;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0u;
  *(v24 + 48) = 1;
  *(v24 + 56) = 0u;
  *(v24 + 72) = 0u;
  *(v24 + 88) = 0;
  *(v24 + 120) = 0;
  *(v24 + 128) = v23;
  *(v24 + 136) = 0x4000000;
  *(v24 + 144) = v18;
  *(v24 + 96) = xmmword_1CFA04E20;
  *(v24 + 112) = 0;
  if (!swift_weakLoadStrong())
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    return;
  }

  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v26 = v25;
  v51(v12, v17);
  v27 = v26 * 1000000000.0;
  v4 = v55;
  if (COERCE__INT64(fabs(v26 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_62;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  sub_1CF902E70(v24, v27, v52, v53);

  if (v4)
  {
    return;
  }

LABEL_34:
  v32 = *(a1 + 248);
  if (*(a1 + 8) != 255 && v32)
  {
    goto LABEL_39;
  }

  if (qword_1EDEABDE0 != -1)
  {
    goto LABEL_58;
  }

LABEL_37:
  *(a1 + 24) |= qword_1EDEABDE8 & 0xFFFFFFFFFF7FFFEFLL;
  if ((v15 & 8) != 0)
  {
    *(a1 + 16) = v15 & 0xFFFFFFFFFFFFFFE2;
  }

LABEL_39:
  v42 = *(a1 + 456);
  if (v42 != 1)
  {
    if (v42 != 4)
    {
      goto LABEL_44;
    }

    __break(1u);
  }

  v43 = *(a1 + 24);
  if ((v43 & 0x100000000000) == 0)
  {
    *(a1 + 24) = v43 | 0x100000000000;
  }

LABEL_44:
  v44 = *(a1 + 8);
  if (v44 == 255)
  {
    goto LABEL_49;
  }

  v56 = *a1;
  v57 = v44;
  v45 = swift_weakLoadStrong();
  if (!v45)
  {
    goto LABEL_67;
  }

  v46 = *(v45 + 24);

  (*(*v46 + 392))(&v56, &v63, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
  if (v4)
  {

    return;
  }

LABEL_49:
  if (v32)
  {
    v56 = v32;
    v47 = swift_weakLoadStrong();
    if (v47)
    {
      v48 = *(v47 + 24);
      v49 = v32;

      (*(*v48 + 400))(&v56, &v63, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);

      return;
    }

    goto LABEL_69;
  }
}

void sub_1CF449E04(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v235 = v1;
  v236 = v2;
  v4 = v3;
  v6 = v5;
  LODWORD(v233) = v7;
  v231 = v9;
  v232 = v8;
  v11 = v10;
  v234 = v12;
  memcpy(v270, v12, sizeof(v270));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  v228 = *(v13 - 8);
  v229 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v225 = (&v206 - v14);
  v15 = sub_1CF9E5CF8();
  v226 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v206 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFDE8, &qword_1CFA054E8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v206 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDF0, &unk_1CFA054F0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v206 - v22;
  v256 = v6;
  v257 = v4;
  memcpy(v267, v11, sizeof(v267));
  v24 = v236;
  sub_1CF44C2CC();
  if (v24)
  {
    return;
  }

  v223 = v23;
  v224 = v20;
  v230 = v6;
  v227 = v4;
  v221 = v15;
  v222 = v17;
  v25 = v234;
  if (v233)
  {
    sub_1CF44961C(v11, v234, v230, v227);
  }

  if (!swift_weakLoadStrong())
  {
    goto LABEL_206;
  }

  v26 = sub_1CF44C598(v25);
  v236 = v24;
  v217 = v26;

  v233 = v11;
  memcpy(v266, v11, sizeof(v266));
  v27 = v223;
  (*(v228 + 56))(v223, 1, 1, v229);
  sub_1CEFCCBDC(v266, v255, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  if (qword_1EDEA72F0 != -1)
  {
    swift_once();
  }

  v28 = qword_1EDEBB8C0;
  if (!swift_weakLoadStrong())
  {
    goto LABEL_207;
  }

  v29 = v266[18];
  v30 = v266[19];
  v31 = LOBYTE(v266[20]);
  v220 = v28;
  if (LOBYTE(v266[20]))
  {
    sub_1CF03C530(v266[18], v266[19], v266[20]);

    v32 = v29;
    v33 = v30;
    LODWORD(v228) = v31;
  }

  else
  {
    v216 = 0;
    v34 = v266[18];
    v35 = v266[18] & v28;
    v218 = v266[18];
    v219 = v266[19];
    if ((v266[18] & v28) != 0)
    {

      v36 = v34;
      while (1)
      {
        v37 = v35 & -v35;
        v38 = v236;
        sub_1CF45AD80(v255);
        v236 = v38;
        if (v38)
        {
          break;
        }

        v40 = v39;
        sub_1CF47FDFC(v255[0], LOWORD(v255[1]));
        v41 = -1;
        if ((v40 & ((v36 & v37) != 0)) != 0)
        {
          v41 = ~v37;
        }

        v36 &= v41;
        v42 = v35 == v37;
        v35 ^= v37;
        v27 = v223;
        if (v42)
        {
          goto LABEL_22;
        }
      }

      sub_1CF03D7A8(v218, v219, 0);

      sub_1CEFCCC44(v27, &unk_1EC4BFDF0, &unk_1CFA054F0);
      v71 = &qword_1EC4BFBC0;
      v72 = &unk_1CF9FCAC0;
      v73 = v266;
      goto LABEL_59;
    }

    sub_1CF03C530(v266[18], v219, 0);
    v36 = v34;
LABEL_22:

    LODWORD(v228) = v36 == 0;
    v29 = v218;
    v30 = v219;
    if (v36)
    {
      v32 = v36;
    }

    else
    {
      v32 = v219;
    }

    if (v36)
    {
      v33 = v219;
    }

    else
    {
      v33 = 0;
    }

    LOBYTE(v31) = v216;
  }

  sub_1CEFCCC44(v27, &unk_1EC4BFDF0, &unk_1CFA054F0);
  sub_1CEFCCC44(v266, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  sub_1CF03D7A8(v29, v30, v31);
  v43 = v233;
  v233[18] = v32;
  v43[19] = v33;
  *(v43 + 160) = v228;
  memcpy(v265, v43, sizeof(v265));
  sub_1CF7F62D0(v255);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
  (*(*(v44 - 8) + 56))(v224, 1, 1, v44);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_208:
    __break(1u);
    goto LABEL_209;
  }

  (*(*Strong + 176))(Strong);

  memcpy(v264, v255, sizeof(v264));
  v46 = v264[13];
  v223 = v264[14];
  v47 = LOBYTE(v264[15]);
  v48 = v227;
  v215 = v32;
  if (!LOBYTE(v264[15]))
  {
    v50 = v264[13] & v220;
    if ((v264[13] & v220) == 0)
    {

      v51 = v46;
LABEL_42:

      v47 = v51 == 0;
      v58 = v223;
      if (v51)
      {
        v49 = v51;
      }

      else
      {
        v49 = v223;
      }

      if (!v51)
      {
        v58 = 0;
      }

      v223 = v58;
      v48 = v227;
      goto LABEL_48;
    }

    v220 = v46;
    v51 = v46;
    while (1)
    {
      v52 = v50 & -v50;
      v53 = v224;
      v54 = v236;
      sub_1CF44F5F8(v253);
      v236 = v54;
      if (v54)
      {
        break;
      }

      v56 = v55;
      sub_1CF4804C0(v253[0], LOWORD(v253[1]));
      if ((v56 & ((v51 & v52) != 0)) != 0)
      {
        v57 = ~v52;
      }

      else
      {
        v57 = -1;
      }

      v51 &= v57;
      v42 = v50 == v52;
      v50 ^= v52;
      if (v42)
      {
        goto LABEL_42;
      }
    }

    sub_1CF03D7A8(v220, v223, 0);

    sub_1CEFCCC44(v53, &qword_1EC4BFDE8, &qword_1CFA054E8);
    memcpy(v254, v255, sizeof(v254));
    v71 = &unk_1EC4BFC90;
    v72 = &unk_1CFA053E0;
    v73 = v254;
LABEL_59:
    sub_1CEFCCC44(v73, v71, v72);
    return;
  }

  v49 = v264[13];
  sub_1CF03C530(v264[13], v223, v264[15]);

LABEL_48:
  v59 = *&v265[248];
  v214 = *&v265[256];
  v268 = *&v265[352];
  v269 = v265[368];
  v60 = *&v265[472];
  v61 = *&v265[480];
  v220 = *&v265[16];
  v218 = *&v265[264];
  v219 = *&v265[24];
  v216 = v265[32];
  v213 = v265[137];
  sub_1CEFCCC44(v224, &qword_1EC4BFDE8, &qword_1CFA054E8);
  memcpy(v254, v255, sizeof(v254));
  sub_1CEFCCC44(v254, &unk_1EC4BFC90, &unk_1CFA053E0);
  sub_1CF480580(&v268);
  v62 = v233;
  v64 = v222;
  v63 = v223;
  v233[44] = v49;
  v62[45] = v63;
  *(v62 + 368) = v47;
  v65 = v49;
  if (!v228)
  {
    if ((v215 & 0x100) != 0)
    {
      if (v60 >= 0x2000000000000000)
      {
        v60 = 0x2000000000000000;
      }

      v67 = v232;
      v66 = v233;
      v233[59] = v60;
      v66[60] = v61;
      if (v67)
      {
        memcpy(v253, v66, sizeof(v253));
        v68 = swift_weakLoadStrong();
        if (!v68)
        {
LABEL_216:
          __break(1u);
          goto LABEL_217;
        }

        v59 = v253[31];
        *&v237[0] = v230;
        BYTE8(v237[0]) = v48;
        if (LOBYTE(v253[1]) == 255)
        {
        }

        else
        {
          v69 = v253[31];
          v224 = v68;
          v251 = v253[0];
          v252 = v253[1];
          v70 = v234;
          memcpy(v249, v234, sizeof(v249));
          memcpy(v250, v234, sizeof(v250));
          if (sub_1CF08B99C(v250) == 1)
          {
            memcpy(v247, v249, 0x208uLL);
            sub_1CEFCCBDC(v70, v246, &unk_1EC4BFC20, &unk_1CFA0A290);
            sub_1CEFCCC44(v247, &unk_1EC4BFC20, &unk_1CFA0A290);

            v64 = v222;
          }

          else
          {
            v74 = v47;
            v245[12] = *&v249[192];
            v245[13] = *&v249[208];
            v245[14] = *&v249[224];
            *&v245[15] = *&v249[240];
            v245[8] = *&v249[128];
            v245[9] = *&v249[144];
            v245[10] = *&v249[160];
            v245[11] = *&v249[176];
            v245[4] = *&v249[64];
            v245[5] = *&v249[80];
            v245[6] = *&v249[96];
            v245[7] = *&v249[112];
            v245[0] = *v249;
            v245[1] = *&v249[16];
            v245[2] = *&v249[32];
            v245[3] = *&v249[48];
            memcpy(v247, v249, 0x208uLL);
            sub_1CEFCCBDC(v70, v246, &unk_1EC4BFC20, &unk_1CFA0A290);
            sub_1CEFCCBDC(v253, v246, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
            sub_1CEFCCBDC(v245, v246, &unk_1EC4BFE00, &unk_1CF9FEF00);
            sub_1CEFCCC44(v247, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
            v75 = v245[9];
            v76 = LOBYTE(v245[10]);
            sub_1CF03C530(*&v245[9], *(&v245[9] + 1), v245[10]);
            sub_1CEFCCC44(v245, &unk_1EC4BFE00, &unk_1CF9FEF00);
            if (v76)
            {
              sub_1CF03D7A8(v75, *(&v75 + 1), v76);
            }

            else
            {
              sub_1CF03D7A8(v75, *(&v75 + 1), 0);
              if ((v75 & 0x100) != 0)
              {
                v147 = *(v224 + 3);
                v148 = v236;
                (*(*v147 + 392))(&v251, v237, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
                if (v148)
                {
                  goto LABEL_161;
                }

                v236 = 0;
                if (v69)
                {
                  *&v246[0] = v69;
                  v172 = *(*v147 + 400);
                  v141 = v69;
                  v173 = v236;
                  v172(v246, v237, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
                  v236 = v173;
                  if (v173)
                  {
                    goto LABEL_168;
                  }
                }
              }
            }

            sub_1CEFCCC44(v253, &qword_1EC4BFBC0, &unk_1CF9FCAC0);

            v64 = v222;
            v47 = v74;
            v48 = v227;
          }

          v59 = v69;
        }

        v219 = v253[3];
        v220 = v253[2];
        v214 = v253[32];
        v218 = v253[33];
        v60 = v253[59];
        v61 = v253[60];
        v216 = LOBYTE(v253[4]);
        v213 = BYTE1(v253[17]);
      }
    }

    if ((v215 & 0x200) != 0)
    {
      v223 = v59;
      v77 = v234;
      memcpy(v250, v234, sizeof(v250));
      memcpy(v253, v234, sizeof(v253));
      if (sub_1CF08B99C(v253) == 1)
      {
        memcpy(v249, v250, sizeof(v249));
        sub_1CEFCCBDC(v77, v247, &unk_1EC4BFC20, &unk_1CFA0A290);
        sub_1CEFCCC44(v249, &unk_1EC4BFC20, &unk_1CFA0A290);
      }

      else
      {
        LODWORD(v224) = v47;
        v246[12] = *&v250[192];
        v246[13] = *&v250[208];
        v246[14] = *&v250[224];
        *&v246[15] = *&v250[240];
        v246[8] = *&v250[128];
        v246[9] = *&v250[144];
        v246[10] = *&v250[160];
        v246[11] = *&v250[176];
        v246[4] = *&v250[64];
        v246[5] = *&v250[80];
        v246[6] = *&v250[96];
        v246[7] = *&v250[112];
        v246[0] = *v250;
        v246[1] = *&v250[16];
        v246[2] = *&v250[32];
        v246[3] = *&v250[48];
        memcpy(v249, v250, sizeof(v249));
        sub_1CEFCCBDC(v77, v247, &unk_1EC4BFC20, &unk_1CFA0A290);
        sub_1CEFCCBDC(v246, v247, &unk_1EC4BFE00, &unk_1CF9FEF00);
        sub_1CEFCCC44(v249, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
        v78 = v246[9];
        v79 = LOBYTE(v246[10]);
        sub_1CF03C530(*&v246[9], *(&v246[9] + 1), v246[10]);
        sub_1CEFCCC44(v246, &unk_1EC4BFE00, &unk_1CF9FEF00);
        if (v79)
        {
          sub_1CF03D7A8(v78, *(&v78 + 1), v79);
          v47 = v224;
          v48 = v227;
        }

        else
        {
          sub_1CF03D7A8(v78, *(&v78 + 1), 0);
          v47 = v224;
          v48 = v227;
          if ((v78 & 0x200) != 0)
          {
LABEL_75:
            v64 = v222;
            v59 = v223;
            goto LABEL_76;
          }
        }
      }

      v80 = swift_weakLoadStrong();
      if (!v80)
      {
LABEL_215:
        __break(1u);
        goto LABEL_216;
      }

      v81 = *(v80 + 32);

      v82 = *(v81 + 16);

      (*(*v82 + 920))(v83);

      goto LABEL_75;
    }
  }

LABEL_76:
  if (v47 || (v65 & 0x100) == 0)
  {
    v86 = v216;
    goto LABEL_81;
  }

  v84 = v59;
  v85 = v234;
  memcpy(v250, v234, sizeof(v250));
  memcpy(v253, v234, sizeof(v253));
  if (sub_1CF08B99C(v253) == 1)
  {
    memcpy(v249, v250, sizeof(v249));
    sub_1CEFCCBDC(v85, v247, &unk_1EC4BFC20, &unk_1CFA0A290);
    sub_1CEFCCC44(v249, &unk_1EC4BFC20, &unk_1CFA0A290);
    v64 = v222;
  }

  else
  {
    LODWORD(v224) = 0;
    v246[10] = *&v250[408];
    v246[11] = *&v250[424];
    v246[12] = *&v250[440];
    v246[6] = *&v250[344];
    v246[7] = *&v250[360];
    v246[9] = *&v250[392];
    v246[8] = *&v250[376];
    v246[0] = *&v250[248];
    v246[1] = *&v250[264];
    v246[2] = *&v250[280];
    v246[3] = *&v250[296];
    v246[5] = *&v250[328];
    v246[4] = *&v250[312];
    memcpy(v249, v250, sizeof(v249));
    sub_1CEFCCBDC(v85, v247, &unk_1EC4BFC20, &unk_1CFA0A290);
    sub_1CEFCCBDC(v246, v247, &unk_1EC4C4E60, &unk_1CF9FCAD0);
    sub_1CEFCCC44(v249, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    v88 = *(&v246[6] + 1);
    v89 = *&v246[7];
    v90 = BYTE8(v246[7]);
    sub_1CF03C530(*(&v246[6] + 1), *&v246[7], BYTE8(v246[7]));
    sub_1CEFCCC44(v246, &unk_1EC4C4E60, &unk_1CF9FCAD0);
    if (v90)
    {
      sub_1CF03D7A8(v88, v89, v90);
      v48 = v227;
    }

    else
    {
      sub_1CF03D7A8(v88, v89, 0);
      v48 = v227;
      if ((v88 & 0x100) != 0)
      {
        v86 = v216;
        v87 = v233;
        v104 = v221;
        v64 = v222;
        v47 = v224;
        v59 = v84;
        goto LABEL_97;
      }
    }

    v64 = v222;
    v47 = v224;
  }

  v91 = 0x2000000000000000;
  if (v60 < 0x2000000000000000)
  {
    v91 = v60;
  }

  v92 = v233;
  v233[59] = v91;
  v92[60] = v61;
  v87 = v92;
  v93 = *(v92 + 8);
  v59 = v84;
  if (v93 == 255)
  {
    v86 = v216;
    goto LABEL_96;
  }

  v86 = v216;
  if (!v84)
  {
LABEL_96:
    v104 = v221;
    goto LABEL_97;
  }

  v94 = *v92;
  *&v237[0] = v84;
  if (v216 == 5 || v213 != 6)
  {
LABEL_81:
    v87 = v233;
    goto LABEL_96;
  }

  memcpy(v263, v233, sizeof(v263));
  v95 = v84;
  sub_1CF7F62D0(v250);
  v96 = swift_weakLoadStrong();
  if (!v96)
  {
LABEL_217:
    __break(1u);
    goto LABEL_218;
  }

  v97 = (*(*v96 + 176))(v96);

  memcpy(v262, v250, sizeof(v262));
  v98 = v236;
  sub_1CF3F9E7C(v97, 1, v245, v99, v100, v101, v102, v103);
  v236 = v98;
  if (v98)
  {

    memcpy(v249, v250, sizeof(v249));
    sub_1CEFCCC44(v249, &unk_1EC4BFC90, &unk_1CFA053E0);

    return;
  }

  v59 = v263[31];
  v214 = v263[32];
  v220 = v263[2];
  v218 = v263[33];
  v219 = v263[3];
  v86 = LOBYTE(v263[4]);
  memcpy(v249, v250, sizeof(v249));
  sub_1CEFCCC44(v249, &unk_1EC4BFC90, &unk_1CFA053E0);

  v139 = LOBYTE(v245[0]);
  if (LOBYTE(v245[0]) == 89)
  {

    v87 = v233;
    v104 = v221;
    v64 = v222;
    v48 = v227;
    goto LABEL_97;
  }

  v223 = v59;
  v143 = swift_weakLoadStrong();
  if (!v143)
  {
LABEL_218:
    __break(1u);
    goto LABEL_219;
  }

  v144 = *(v143 + 24);

  v145 = v236;
  v146 = (*(*v144 + 376))(v237, v139, 0, 1, &v256, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  v236 = v145;
  if (v145)
  {

    goto LABEL_6;
  }

  v149 = v146;

  v157 = v149;
  if (!*(v149 + 16))
  {
    v149, v150, v151, v152, v153, v154, v155, v156;
    LODWORD(v215) = 0;
    v160 = 0;
    v211 = 0;
    v212 = 0;
    v171 = 0;
    v213 = 0;
    v209 = 0u;
    v210 = 0u;
    v208 = 0u;
    v87 = v233;
    v104 = v221;
    goto LABEL_186;
  }

  LODWORD(v224) = v47;
  v158 = *(v149 + 48);
  v247[0] = *(v149 + 32);
  v247[1] = v158;
  v159 = *(v149 + 80);
  v247[2] = *(v149 + 64);
  v247[3] = v159;
  v247[4] = *(v149 + 96);
  v160 = *(v149 + 112);
  *&v247[5] = v160;
  v213 = BYTE8(v247[0]);
  LODWORD(v215) = BYTE9(v247[0]);
  v207 = HIWORD(v247[0]);
  v161 = *(v247 + 10);
  v208 = v247[2];
  v211 = v159;
  v212 = *&v247[0];
  v162 = *(&v159 + 1);
  v209 = v247[4];
  v210 = v247[1];
  v163 = v157;
  sub_1CEFCCBDC(v247, v246, &qword_1EC4BE5B8, &qword_1CF9FDE98);
  v163, v164, v165, v166, v167, v168, v169, v170;
  if (v162 != 1)
  {
    v174 = v162;

    v160, v175, v176, v177, v178, v179, v180, v181;
    sub_1CF1E53F8(v212, v213, v215 & 1);
    v215 = v162;
    if (!v162)
    {
LABEL_201:

      v87 = v233;
      v104 = v221;
      v64 = v222;
      v47 = v224;
      goto LABEL_202;
    }

    if (v216 <= 1)
    {
      if (v216)
      {
        v200 = swift_weakLoadStrong();
        if (!v200)
        {
LABEL_221:
          __break(1u);
          return;
        }

        v183 = v200;
        v201 = v225;
        *v225 = v94;
        *(v201 + 8) = v93;
        *(v201 + 9) = 0;
        v201[2] = v215;
        *(v201 + 24) = 0;
LABEL_200:
        v202 = v225;
        swift_storeEnumTagMultiPayload();
        v203 = *(*v183 + 312);
        v204 = v215;
        v205 = v215;
        v203(v202);

        sub_1CEFCCC44(v202, &qword_1EC4BE710, &qword_1CF9FE5A8);
        goto LABEL_201;
      }
    }

    else
    {
      if (v216 == 2)
      {
        sub_1CF24CD3C();
        swift_allocError();
        v188 = v187;
        *&v247[0] = 0;
        *(&v247[0] + 1) = 0xE000000000000000;
        sub_1CF9E7948();
        MEMORY[0x1D3868CC0](0xD00000000000003ELL, 0x80000001CFA459B0);
        memcpy(v261, v233, sizeof(v261));
        v189 = sub_1CF38B634();
        v191 = v190;
        MEMORY[0x1D3868CC0](v189);
        v191, v192, v193, v194, v195, v196, v197, v198;
        v199 = *(&v247[0] + 1);
        *v188 = *&v247[0];
        *(v188 + 8) = v199;
        *(v188 + 48) = 8;
        swift_willThrow();

        return;
      }

      if (v216 == 3)
      {
        v182 = swift_weakLoadStrong();
        if (!v182)
        {
LABEL_220:
          __break(1u);
          goto LABEL_221;
        }

        v183 = v182;
        v184 = v225;
        *v225 = v94;
        *(v184 + 8) = v93;
        *(v184 + 9) = 0;
        v184[2] = v215;
        *(v184 + 24) = 1;
        goto LABEL_200;
      }
    }

    v185 = swift_weakLoadStrong();
    if (!v185)
    {
LABEL_219:
      __break(1u);
      goto LABEL_220;
    }

    v183 = v185;
    v186 = v225;
    *v225 = v94;
    *(v186 + 8) = v93;
    *(v186 + 9) = 0;
    v186[2] = v215;
    goto LABEL_200;
  }

  v171 = v161 | (v207 << 32);
  v87 = v233;
  v104 = v221;
  v47 = v224;
LABEL_186:

  *&v247[0] = v212;
  BYTE8(v247[0]) = v213;
  BYTE9(v247[0]) = v215;
  HIWORD(v247[0]) = WORD2(v171);
  *(v247 + 10) = v171;
  v247[1] = v210;
  v247[2] = v208;
  *&v247[3] = v211;
  *(&v247[3] + 1) = 1;
  v247[4] = v209;
  *&v247[5] = v160;
  sub_1CEFCCC44(v247, &unk_1EC4BFE10, &unk_1CFA05500);
  v64 = v222;
LABEL_202:
  v48 = v227;
  v59 = v223;
LABEL_97:
  if (!v232)
  {
    v109 = v214;
    if (!v231)
    {
      goto LABEL_126;
    }

LABEL_112:
    memcpy(v260, v87, sizeof(v260));
    sub_1CF7F62D0(v250);
    v112 = v234;
    memcpy(v258, v234, sizeof(v258));
    if (sub_1CF08B99C(v258) == 1)
    {
      sub_1CF095754(v249);
    }

    else
    {
      memcpy(v259, v270, sizeof(v259));
      memcpy(v246, v270, 0x208uLL);
      sub_1CEFCCBDC(v246, v249, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      sub_1CF7F62D0(v247);
      sub_1CEFCCC44(v112, &unk_1EC4BFC20, &unk_1CFA0A290);
      memcpy(v249, v247, sizeof(v249));
      nullsub_1();
    }

    memcpy(v253, v249, sizeof(v253));
    v113 = swift_weakLoadStrong();
    if (!v113)
    {
      goto LABEL_212;
    }

    v114 = (*(*v113 + 176))(v113);

    v115 = *v250;
    v116 = *&v250[208];
    v117 = v250[216];
    v251 = v230;
    v252 = v227;
    if (*v250)
    {
      LODWORD(v224) = v47;
      v248 = *v250;
      memcpy(v247, v253, 0x208uLL);
      memcpy(v249, v253, sizeof(v249));
      if (sub_1CF08B99C(v249) == 1)
      {
        memcpy(v246, v247, 0x208uLL);
        sub_1CEFCCBDC(v253, v245, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        sub_1CEFCCC44(v246, &unk_1EC4BFD80, &unk_1CFA0A2A0);

LABEL_119:
        sub_1CEFCCC44(v253, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        v87 = v233;
LABEL_124:
        v47 = v224;
        goto LABEL_125;
      }

      v234 = v116;
      v242 = v247[10];
      v243 = v247[11];
      v244 = v247[12];
      v238 = v247[6];
      v239 = v247[7];
      v240 = v247[8];
      v241 = v247[9];
      v237[2] = v247[2];
      v237[3] = v247[3];
      v237[4] = v247[4];
      v237[5] = v247[5];
      v237[0] = v247[0];
      v237[1] = v247[1];
      memcpy(v246, v247, 0x208uLL);
      v118 = v115;
      sub_1CEFCCBDC(v253, v245, &unk_1EC4BFD80, &unk_1CFA0A2A0);
      sub_1CEFCCBDC(v237, v245, &unk_1EC4C4E60, &unk_1CF9FCAD0);
      sub_1CEFCCC44(v246, &unk_1EC4BFC90, &unk_1CFA053E0);
      v119 = *(&v238 + 1);
      v120 = v239;
      v121 = BYTE8(v239);
      sub_1CF03C530(*(&v238 + 1), v239, BYTE8(v239));
      sub_1CEFCCC44(v237, &unk_1EC4C4E60, &unk_1CF9FCAD0);
      if (v121)
      {
        sub_1CF03D7A8(v119, v120, v121);

        sub_1CEFCCC44(v253, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        v87 = v233;
        v104 = v221;
        goto LABEL_124;
      }

      sub_1CF03D7A8(v119, v120, 0);
      v104 = v221;
      if ((v119 & 0x100) == 0)
      {

        goto LABEL_119;
      }

      v137 = *(v114 + 24);
      v138 = v236;
      (*(*v137 + 392))(&v248, &v251, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
      v47 = v224;
      if (v138)
      {

        sub_1CEFCCC44(v253, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        memcpy(v245, v250, 0x208uLL);
        sub_1CEFCCC44(v245, &unk_1EC4BFC90, &unk_1CFA053E0);
        return;
      }

      if (v117 != 255)
      {
        *&v245[0] = v234;
        BYTE8(v245[0]) = v117;
        (*(*v137 + 400))(v245, &v251, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
      }

      v236 = 0;
    }

    else
    {
    }

    sub_1CEFCCC44(v253, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    v87 = v233;
LABEL_125:
    v59 = v260[31];
    v109 = v260[32];
    v220 = v260[2];
    v218 = v260[33];
    v219 = v260[3];
    v86 = LOBYTE(v260[4]);
    memcpy(v249, v250, sizeof(v249));
    sub_1CEFCCC44(v249, &unk_1EC4BFC90, &unk_1CFA053E0);
    v64 = v222;
    goto LABEL_126;
  }

  memcpy(v253, v87, sizeof(v253));
  v105 = swift_weakLoadStrong();
  if (!v105)
  {
LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
    goto LABEL_213;
  }

  v59 = v253[31];
  *&v237[0] = v230;
  BYTE8(v237[0]) = v48;
  v106 = v234;
  if (LOBYTE(v253[1]) == 255)
  {

    goto LABEL_111;
  }

  v107 = v253[31];
  v108 = v105;
  v251 = v253[0];
  v252 = v253[1];
  memcpy(v249, v234, sizeof(v249));
  memcpy(v250, v234, sizeof(v250));
  if (sub_1CF08B99C(v250) != 1)
  {
    LODWORD(v224) = v47;
    v245[12] = *&v249[192];
    v245[13] = *&v249[208];
    v245[14] = *&v249[224];
    *&v245[15] = *&v249[240];
    v245[8] = *&v249[128];
    v245[9] = *&v249[144];
    v245[10] = *&v249[160];
    v245[11] = *&v249[176];
    v245[4] = *&v249[64];
    v245[5] = *&v249[80];
    v245[6] = *&v249[96];
    v245[7] = *&v249[112];
    v245[0] = *v249;
    v245[1] = *&v249[16];
    v245[2] = *&v249[32];
    v245[3] = *&v249[48];
    memcpy(v247, v249, 0x208uLL);
    sub_1CEFCCBDC(v106, v246, &unk_1EC4BFC20, &unk_1CFA0A290);
    sub_1CEFCCBDC(v253, v246, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    sub_1CEFCCBDC(v245, v246, &unk_1EC4BFE00, &unk_1CF9FEF00);
    sub_1CEFCCC44(v247, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    v110 = v245[9];
    v111 = LOBYTE(v245[10]);
    sub_1CF03C530(*&v245[9], *(&v245[9] + 1), v245[10]);
    sub_1CEFCCC44(v245, &unk_1EC4BFE00, &unk_1CF9FEF00);
    if (v111)
    {
      sub_1CF03D7A8(v110, *(&v110 + 1), v111);
      sub_1CEFCCC44(v253, &qword_1EC4BFBC0, &unk_1CF9FCAC0);

      v104 = v221;
LABEL_109:
      v64 = v222;
      v47 = v224;
      goto LABEL_110;
    }

    sub_1CF03D7A8(v110, *(&v110 + 1), 0);
    v104 = v221;
    if ((v110 & 0x100) == 0)
    {
      sub_1CEFCCC44(v253, &qword_1EC4BFBC0, &unk_1CF9FCAC0);

      goto LABEL_109;
    }

    v135 = *(v108 + 24);
    v136 = v236;
    (*(*v135 + 392))(&v251, v237, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
    v64 = v222;
    v47 = v224;
    if (v136)
    {
LABEL_161:
      sub_1CEFCCC44(v253, &qword_1EC4BFBC0, &unk_1CF9FCAC0);

      return;
    }

    v236 = 0;
    if (v107)
    {
      *&v246[0] = v107;
      v140 = *(*v135 + 400);
      v141 = v107;
      v142 = v236;
      v140(v246, v237, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
      v236 = v142;
      if (v142)
      {
LABEL_168:

        sub_1CEFCCC44(v253, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
        goto LABEL_6;
      }

      v64 = v222;
      v47 = v224;
    }

    sub_1CEFCCC44(v253, &qword_1EC4BFBC0, &unk_1CF9FCAC0);

    goto LABEL_110;
  }

  memcpy(v247, v249, 0x208uLL);
  sub_1CEFCCBDC(v106, v246, &unk_1EC4BFC20, &unk_1CFA0A290);
  sub_1CEFCCC44(v247, &unk_1EC4BFC20, &unk_1CFA0A290);

  v64 = v222;
LABEL_110:
  v59 = v107;
LABEL_111:
  v219 = v253[3];
  v220 = v253[2];
  v109 = v253[32];
  v218 = v253[33];
  v86 = LOBYTE(v253[4]);
  if (v231)
  {
    goto LABEL_112;
  }

LABEL_126:
  if (*(v87 + 8) == 255 || !v59)
  {
    goto LABEL_146;
  }

  if (qword_1EDEABDE0 != -1)
  {
    swift_once();
  }

  v122 = qword_1EDEABDE8;
  if (!qword_1EDEABDE8)
  {
    v123 = v219 & 0x10;
    goto LABEL_134;
  }

  if ((qword_1EDEABDE8 & 0x10) == 0)
  {
    v123 = (qword_1EDEABDE8 | 0x10) & v219;
LABEL_134:
    if (v123 | v220 & 0x51)
    {
      goto LABEL_146;
    }

    v122 = qword_1EDEABDE8 | 0x10;
    goto LABEL_137;
  }

  if (qword_1EDEABDE8 & v219 | v220 & 0x51)
  {
    goto LABEL_146;
  }

LABEL_137:
  if ((v122 & v218) == 0 && (v109 & 0x51) == 0 && v86 == 5 && v228 != 2 && v47 != 2)
  {
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v125 = v124;
    (*(v226 + 8))(v64, v104);
    v126 = v125 * 1000000000.0;
    if (COERCE__INT64(fabs(v125 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v126 > -9.22337204e18)
    {
      if (v126 < 9.22337204e18)
      {
        v87[59] = 0x2000000000000000;
        v87[60] = v126;
        goto LABEL_146;
      }

      goto LABEL_205;
    }

    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
    goto LABEL_208;
  }

LABEL_146:
  v127 = v47;
  v128 = swift_weakLoadStrong();
  if (!v128)
  {
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
    goto LABEL_211;
  }

  v129 = (*(*v128 + 152))(v128);

  v130 = v217 ^ 1;
  if ((v129 & 8) != 0 && ((v217 ^ 1) & 1) == 0 && v228 == 1)
  {
    v131 = swift_weakLoadStrong();
    if (!v131)
    {
LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
      goto LABEL_215;
    }

    (*(*v131 + 304))(v131);
  }

  v132 = swift_weakLoadStrong();
  if (!v132)
  {
    goto LABEL_210;
  }

  v133 = (*(*v132 + 152))(v132);

  if (!(((v133 & 8) == 0) | v130 & 1) && v127 == 1)
  {
    v134 = swift_weakLoadStrong();
    if (v134)
    {
      (*(*v134 + 304))(v134);
LABEL_6:

      return;
    }

    goto LABEL_214;
  }
}

void sub_1CF44C000()
{
  if (!*v0)
  {
    if (*(v0 + 216) == 255)
    {
      sub_1CF24CD3C();
      swift_allocError();
      v5 = v42;
      sub_1CF9E7948();
      v43 = MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA45930);
      v44 = sub_1CF38C048(v43);
      v46 = v45;
      MEMORY[0x1D3868CC0](v44);
      v46, v47, v48, v49, v50, v51, v52, v53;
      *v5 = 0;
      *(v5 + 8) = 0xE000000000000000;
      v29 = 5;
      goto LABEL_19;
    }

    if (*(v0 + 456) != 4)
    {
      return;
    }

    goto LABEL_15;
  }

  if (*(v0 + 456) == 4)
  {
LABEL_15:
    sub_1CF24CD3C();
    swift_allocError();
    v5 = v17;
    sub_1CF9E7948();
    v18 = MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA45950);
    v19 = sub_1CF38C048(v18);
    v21 = v20;
    MEMORY[0x1D3868CC0](v19);
    v21, v22, v23, v24, v25, v26, v27, v28;
    *v5 = 0;
    *(v5 + 8) = 0xE000000000000000;
    v29 = 6;
LABEL_19:
    *(v5 + 48) = v29;
    swift_willThrow();
    return;
  }

  v1 = *(v0 + 216);
  if (v1 != 255 && *(v0 + 48) == 1)
  {
    sub_1CF24CD3C();
    swift_allocError();
    v5 = v30;
    sub_1CF9E7948();
    v31 = MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA45990);
    v32 = sub_1CF38C048(v31);
    v34 = v33;
    MEMORY[0x1D3868CC0](v32);
    v34, v35, v36, v37, v38, v39, v40, v41;
    *v5 = 0;
    goto LABEL_17;
  }

  if (v1 != 255 && *(v0 + 312) == 0)
  {
    sub_1CF24CD3C();
    swift_allocError();
    v5 = v4;
    sub_1CF9E7948();
    v6 = MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA45970);
    v7 = sub_1CF38C048(v6);
    v9 = v8;
    MEMORY[0x1D3868CC0](v7);
    v9, v10, v11, v12, v13, v14, v15, v16;
    *v5 = 1;
LABEL_17:
    *(v5 + 8) = 0;
    *(v5 + 16) = 0xE000000000000000;
    v29 = 7;
    goto LABEL_19;
  }
}

void sub_1CF44C2CC()
{
  if (*(v0 + 8) == 255)
  {
    if (!*(v0 + 248))
    {
      sub_1CF24CD3C();
      swift_allocError();
      v4 = v38;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA45930);
      v39 = sub_1CF38B634();
      v41 = v40;
      MEMORY[0x1D3868CC0](v39);
      v41, v42, v43, v44, v45, v46, v47, v48;
      *v4 = 0;
      *(v4 + 8) = 0xE000000000000000;
      v26 = 5;
      goto LABEL_16;
    }

    if (*(v0 + 456) != 4)
    {
      return;
    }

    goto LABEL_12;
  }

  if (*(v0 + 456) == 4)
  {
LABEL_12:
    sub_1CF24CD3C();
    swift_allocError();
    v4 = v15;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA45950);
    v16 = sub_1CF38B634();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    *v4 = 0;
    *(v4 + 8) = 0xE000000000000000;
    v26 = 6;
LABEL_16:
    *(v4 + 48) = v26;
    swift_willThrow();
    return;
  }

  v1 = *(v0 + 248);
  if (v1)
  {
    v2 = *(v0 + 104) == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    sub_1CF24CD3C();
    swift_allocError();
    v4 = v27;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA45990);
    v28 = sub_1CF38B634();
    v30 = v29;
    MEMORY[0x1D3868CC0](v28);
    v30, v31, v32, v33, v34, v35, v36, v37;
    *v4 = 0;
    goto LABEL_14;
  }

  if (v1 && *(v0 + 296) == 1)
  {
    sub_1CF24CD3C();
    swift_allocError();
    v4 = v3;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA45970);
    v5 = sub_1CF38B634();
    v7 = v6;
    MEMORY[0x1D3868CC0](v5);
    v7, v8, v9, v10, v11, v12, v13, v14;
    *v4 = 1;
LABEL_14:
    *(v4 + 8) = 0;
    *(v4 + 16) = 0xE000000000000000;
    v26 = 7;
    goto LABEL_16;
  }
}

uint64_t sub_1CF44C598(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  memcpy(v60, v9, sizeof(v60));
  memcpy(__dst, v10, sizeof(__dst));
  if (sub_1CF08B99C(__dst) == 1)
  {
    v61 = v6;
    v11 = 0;
    v12 = 0;
    v13 = 89;
  }

  else
  {
    memcpy(v59, v60, sizeof(v59));
    memcpy(__src, v60, sizeof(__src));
    sub_1CEFCCBDC(__src, v49, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    sub_1CF3FA99C(v4, 1, v48, v33, v34, v35, v36, v37);
    if (v2)
    {
      sub_1CEFCCC44(v10, &unk_1EC4BFC20, &unk_1CFA0A290);
      return v19 & 1;
    }

    v61 = v6;
    sub_1CEFCCC44(v10, &unk_1EC4BFC20, &unk_1CFA0A290);
    v13 = v48[0];
    if (LOBYTE(v48[0]) == 89)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v11 = v48[1];
      v12 = v48[2];
    }
  }

  memcpy(v58, v1, sizeof(v58));
  sub_1CF3FA99C(v4, 1, __src, v14, v15, v16, v17, v18);
  if (!v2)
  {
    if (LOBYTE(__src[0]) == 89)
    {
      v20 = 0;
    }

    else
    {
      v20 = __src[1];
    }

    if (LOBYTE(__src[0]) == 89)
    {
      v21 = 0;
    }

    else
    {
      v21 = __src[2];
    }

    v22 = sub_1CF46C784(v13, v11, v12, __src[0], v20, v21, v8);
    memcpy(v52, v10, sizeof(v52));
    if (sub_1CF08B99C(v52) == 1)
    {
      v23 = 0;
      v24 = 0;
      v25 = 89;
    }

    else
    {
      memcpy(v57, v60, sizeof(v57));
      memcpy(__src, v60, sizeof(__src));
      sub_1CEFCCBDC(__src, v48, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      sub_1CF7F62D0(v49);
      v38 = sub_1CEFCCC44(v10, &unk_1EC4BFC20, &unk_1CFA0A290);
      v39 = (*(*v4 + 176))(v38);
      memcpy(v56, v49, sizeof(v56));
      sub_1CF3F9E7C(v39, 1, v51, v40, v41, v42, v43, v44);
      memcpy(v48, v49, sizeof(v48));
      sub_1CEFCCC44(v48, &unk_1EC4BFC90, &unk_1CFA053E0);

      v25 = v51[0];
      if (LOBYTE(v51[0]) == 89)
      {
        v23 = 0;
        v24 = 0;
      }

      else
      {
        v24 = v51[2];
        v23 = v51[1];
      }
    }

    memcpy(v55, v1, sizeof(v55));
    v26 = sub_1CF7F62D0(__src);
    v27 = (*(*v4 + 176))(v26);
    memcpy(v54, __src, sizeof(v54));
    sub_1CF3F9E7C(v27, 1, v48, v28, v29, v30, v31, v32);
    memcpy(v49, __src, sizeof(v49));
    sub_1CEFCCC44(v49, &unk_1EC4BFC90, &unk_1CFA053E0);

    if (LOBYTE(v48[0]) == 89)
    {
      v46 = 0;
    }

    else
    {
      v46 = v48[1];
    }

    if (LOBYTE(v48[0]) == 89)
    {
      v47 = 0;
    }

    else
    {
      v47 = v48[2];
    }

    v19 = v22 | sub_1CF46C8F8(v25, v23, v24, v48[0], v46, v47, v61);
  }

  return v19 & 1;
}

uint64_t sub_1CF44C9F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 128);
  v89 = *(v2 + 144);
  v90 = *(v2 + 160);
  v4 = *(v2 + 112);
  v84 = *(v2 + 96);
  v85 = v4;
  v86 = v3;
  v5 = *(v2 + 48);
  v80 = *(v2 + 32);
  v81 = v5;
  v6 = *(v2 + 80);
  v82 = *(v2 + 64);
  v83 = v6;
  v7 = *(v2 + 16);
  v78 = *v2;
  v79 = v7;
  v9 = *(v2 + 144);
  v8 = *(v2 + 152);
  v10 = *(v2 + 160);
  v11 = *(v2 + 305);
  v75 = *(v2 + 289);
  v76 = v11;
  v77[0] = *(v2 + 321);
  *(v77 + 15) = *(v2 + 336);
  v12 = *(v2 + 241);
  v71 = *(v2 + 225);
  v72 = v12;
  v13 = *(v2 + 273);
  v73 = *(v2 + 257);
  v74 = v13;
  v14 = *(v2 + 177);
  v67 = *(v2 + 161);
  v68 = v14;
  v15 = *(v2 + 209);
  v69 = *(v2 + 193);
  v70 = v15;
  v17 = *(v2 + 352);
  v16 = *(v2 + 360);
  v18 = *(v2 + 368);
  v19 = *(v2 + 481);
  v64 = *(v2 + 465);
  v65 = v19;
  v66[0] = *(v2 + 497);
  *(v66 + 15) = *(v2 + 512);
  v20 = *(v2 + 417);
  v60 = *(v2 + 401);
  v61 = v20;
  v21 = *(v2 + 449);
  v62 = *(v2 + 433);
  v63 = v21;
  v22 = *(v2 + 385);
  v58 = *(v2 + 369);
  v59 = v22;
  if (v90 || v89 != 0x2000)
  {
    sub_1CEFCCBDC(v2, v31, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  }

  else
  {
    sub_1CEFCCBDC(v2, v31, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    sub_1CF480580(&v89);
    v8 = 0;
    v9 = 0;
    v10 = 1;
  }

  v87 = *(v2 + 352);
  v88 = *(v2 + 368);
  if (!v88 && v87 == 0x2000)
  {
    sub_1CF480580(&v87);
    v16 = 0;
    v17 = 0;
    v18 = 1;
  }

  v97 = v84;
  v98 = v85;
  v99 = v86;
  v93 = v80;
  v94 = v81;
  v96 = v83;
  v95 = v82;
  v92 = v79;
  v91 = v78;
  v100 = v9;
  v101 = v8;
  v102 = v10;
  v111 = v75;
  v112 = v76;
  *v113 = v77[0];
  v109 = v73;
  v110 = v74;
  *&v113[15] = *(v77 + 15);
  v107 = v71;
  v108 = v72;
  v103 = v67;
  v104 = v68;
  v105 = v69;
  v106 = v70;
  v114 = v17;
  v115 = v16;
  v116 = v18;
  v123 = v64;
  v124 = v65;
  *v125 = v66[0];
  v119 = v60;
  v120 = v61;
  v121 = v62;
  v122 = v63;
  v117 = v58;
  v118 = v59;
  *&v125[15] = *(v66 + 15);
  sub_1CF44DF5C(a1, 1, a2, v23, v24, v25, v26, v27);
  v31[6] = v84;
  v31[7] = v85;
  v31[8] = v86;
  v31[2] = v80;
  v31[3] = v81;
  v31[4] = v82;
  v31[5] = v83;
  v31[0] = v78;
  v31[1] = v79;
  v32 = v9;
  v33 = v8;
  v34 = v10;
  v43 = v75;
  v44 = v76;
  *v45 = v77[0];
  v41 = v73;
  v42 = v74;
  *&v45[15] = *(v77 + 15);
  v39 = v71;
  v40 = v72;
  v35 = v67;
  v36 = v68;
  v37 = v69;
  v38 = v70;
  v46 = v17;
  v47 = v16;
  v48 = v18;
  v55 = v64;
  v56 = v65;
  *v57 = v66[0];
  v51 = v60;
  v52 = v61;
  v53 = v62;
  v54 = v63;
  v49 = v58;
  v50 = v59;
  *&v57[15] = *(v66 + 15);
  return sub_1CEFCCC44(v31, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
}

uint64_t sub_1CF44CD74@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v136 = a1;
  v98 = *(v2 + 104);
  v99 = *(v2 + 120);
  v3 = *(v2 + 80);
  v93 = *(v2 + 64);
  v94 = v3;
  v4 = *(v2 + 104);
  v95 = *(v2 + 96);
  v5 = *(v2 + 16);
  v89 = *v2;
  v90 = v5;
  v6 = *(v2 + 48);
  v91 = *(v2 + 32);
  v92 = v6;
  v7 = *(v2 + 112);
  v8 = *(v2 + 120);
  v9 = *(v2 + 297);
  v10 = *(v2 + 329);
  v87 = *(v2 + 313);
  v88[0] = v10;
  v11 = *(v2 + 352);
  *(v88 + 15) = *(v2 + 344);
  v12 = *(v2 + 233);
  v13 = *(v2 + 265);
  v14 = *(v2 + 281);
  v83 = *(v2 + 249);
  v84 = v13;
  v85 = v14;
  v86 = v9;
  v15 = *(v2 + 169);
  v16 = *(v2 + 201);
  v79 = *(v2 + 185);
  v80 = v16;
  v81 = *(v2 + 217);
  v82 = v12;
  v17 = *(v2 + 137);
  v75 = *(v2 + 121);
  v76 = v17;
  v77 = *(v2 + 153);
  v78 = v15;
  v18 = *(v2 + 360);
  v19 = *(v2 + 368);
  v20 = *(v2 + 481);
  v72 = *(v2 + 465);
  v73 = v20;
  v74[0] = *(v2 + 497);
  *(v74 + 15) = *(v2 + 512);
  v21 = *(v2 + 417);
  v68 = *(v2 + 401);
  v69 = v21;
  v22 = *(v2 + 449);
  v70 = *(v2 + 433);
  v71 = v22;
  v23 = *(v2 + 385);
  v66 = *(v2 + 369);
  v67 = v23;
  if (v99 || v98 != 0x2000)
  {
    sub_1CEFCCBDC(v2, v35, &unk_1EC4BFC90, &unk_1CFA053E0);
  }

  else
  {
    sub_1CEFCCBDC(v2, v35, &unk_1EC4BFC90, &unk_1CFA053E0);
    sub_1CF480580(&v98);
    v7 = 0;
    v4 = 0;
    v8 = 1;
  }

  v96 = *(v2 + 352);
  v97 = *(v2 + 368);
  v29 = v11;
  if (!v97 && v96 == 0x2000)
  {
    sub_1CF480580(&v96);
    v18 = 0;
    v29 = 0;
    v19 = 1;
  }

  v104 = v93;
  v105 = v94;
  v100 = v89;
  v101 = v90;
  v103 = v92;
  v102 = v91;
  v119 = v84;
  v120 = v85;
  v122 = v87;
  *v123 = v88[0];
  v121 = v86;
  v112 = v77;
  v111 = v76;
  v110 = v75;
  v116 = v81;
  v115 = v80;
  v114 = v79;
  v113 = v78;
  v106 = v95;
  v107 = v4;
  v108 = v7;
  v109 = v8;
  v118 = v83;
  v117 = v82;
  *&v123[15] = *(v88 + 15);
  v124 = v29;
  v125 = v18;
  v126 = v19;
  v133 = v72;
  v134 = v73;
  *v135 = v74[0];
  v129 = v68;
  v130 = v69;
  v131 = v70;
  v132 = v71;
  v127 = v66;
  v128 = v67;
  *&v135[15] = *(v74 + 15);
  v30 = v19;
  v31 = v18;
  v32 = v29;
  sub_1CF44E780(v136, 1, a2, v24, v25, v26, v27, v28);
  v35[4] = v93;
  v35[5] = v94;
  v35[0] = v89;
  v35[1] = v90;
  v35[2] = v91;
  v35[3] = v92;
  v36 = v95;
  v37 = v4;
  v38 = v7;
  v39 = v8;
  v52 = v87;
  *v53 = v88[0];
  v50 = v85;
  v51 = v86;
  v49 = v84;
  v48 = v83;
  v47 = v82;
  v46 = v81;
  v45 = v80;
  v44 = v79;
  v43 = v78;
  v42 = v77;
  v41 = v76;
  v40 = v75;
  *&v53[15] = *(v88 + 15);
  v54 = v32;
  v55 = v31;
  v56 = v30;
  v63 = v72;
  v64 = v73;
  *v65 = v74[0];
  v59 = v68;
  v60 = v69;
  v61 = v70;
  v62 = v71;
  v57 = v66;
  v58 = v67;
  *&v65[15] = *(v74 + 15);
  return sub_1CEFCCC44(v35, &unk_1EC4BFC90, &unk_1CFA053E0);
}

void sub_1CF44D124(void *__src, unsigned __int8 *a2, uint64_t a3, int a4)
{
  v75 = a4;
  v74 = a3;
  memcpy(v81, __src, sizeof(v81));
  v7 = a2[136];
  v8 = a2[160];
  v72 = a2[344];
  LODWORD(v73) = v7;
  v9 = a2[368];
  v10 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v63 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E5268();
  v64 = *(v12 - 8);
  v65 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v62 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFE98, &qword_1CFA05568);
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v59 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFEA0, &unk_1CFA05570);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v61 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v59 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v69 = &v59 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v59 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v70 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v60 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v71 = &v59 - v27;
  v76 = v4;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_30;
  }

  v29 = (*(*Strong + 152))(Strong);

  if (v29 < 0)
  {
    memcpy(v79, a2, sizeof(v79));
    if (sub_1CF08B99C(v79) == 1 || v8 != 2 && v9 != 2 && v73 != 1 && v72 != 1)
    {
      v30 = swift_weakLoadStrong();
      if (v30)
      {
        v31 = v30;
        memcpy(v78, v81, sizeof(v78));
        nullsub_1();
        memcpy(v80, v78, sizeof(v80));
        sub_1CEFCCBDC(__src, &v77, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
        v32 = v82;
        sub_1CF391290(v80, v31, v74, v75, v23);
        sub_1CEFCCC44(__src, &qword_1EC4BFBC0, &unk_1CF9FCAC0);

        if (v32)
        {
          return;
        }

        v33 = v70;
        v34 = *(v70 + 48);
        if (v34(v23, 1, v24) == 1)
        {
          v35 = &unk_1EC4BFEA0;
          v36 = &unk_1CFA05570;
          v37 = v23;
LABEL_16:
          sub_1CEFCCC44(v37, v35, v36);
          return;
        }

        v73 = v34;
        v82 = 0;
        v38 = v71;
        sub_1CEFE55D0(v23, v71, &unk_1EC4BF650, &unk_1CF9FCB40);
        v39 = v69;
        sub_1CEFCCBDC(v38, v69, &unk_1EC4BF650, &unk_1CF9FCB40);
        (*(v33 + 56))(v39, 0, 1, v24);
        v40 = swift_weakLoadStrong();
        if (v40)
        {
          v41 = v68;
          v42 = v82;
          sub_1CF391290(a2, v40, v74, v75, v68);

          if (v42)
          {
            sub_1CEFCCC44(v39, &unk_1EC4BFEA0, &unk_1CFA05570);
            v35 = &unk_1EC4BF650;
            v36 = &unk_1CF9FCB40;
            v37 = v71;
            goto LABEL_16;
          }

          v82 = 0;
          v43 = v67;
          v44 = *(v66 + 48);
          sub_1CEFCCBDC(v39, v67, &unk_1EC4BFEA0, &unk_1CFA05570);
          sub_1CEFCCBDC(v41, v43 + v44, &unk_1EC4BFEA0, &unk_1CFA05570);
          v45 = v73;
          if (v73(v43, 1, v24) == 1)
          {
            sub_1CEFCCC44(v41, &unk_1EC4BFEA0, &unk_1CFA05570);
            v43 = v67;
            sub_1CEFCCC44(v69, &unk_1EC4BFEA0, &unk_1CFA05570);
            if (v45(v43 + v44, 1, v24) == 1)
            {
              sub_1CEFCCC44(v43, &unk_1EC4BFEA0, &unk_1CFA05570);
              v46 = v71;
LABEL_26:
              sub_1CEFCCC44(v46, &unk_1EC4BF650, &unk_1CF9FCB40);
              return;
            }
          }

          else
          {
            v47 = v61;
            sub_1CEFCCBDC(v43, v61, &unk_1EC4BFEA0, &unk_1CFA05570);
            if (v45(v43 + v44, 1, v24) != 1)
            {
              v53 = v43 + v44;
              v54 = v60;
              sub_1CEFE55D0(v53, v60, &unk_1EC4BF650, &unk_1CF9FCB40);
              v55 = sub_1CF46B5A8(v47, v54);
              v56 = v47;
              v57 = v43;
              v58 = v55;
              sub_1CEFCCC44(v54, &unk_1EC4BF650, &unk_1CF9FCB40);
              sub_1CEFCCC44(v68, &unk_1EC4BFEA0, &unk_1CFA05570);
              sub_1CEFCCC44(v69, &unk_1EC4BFEA0, &unk_1CFA05570);
              sub_1CEFCCC44(v56, &unk_1EC4BF650, &unk_1CF9FCB40);
              sub_1CEFCCC44(v57, &unk_1EC4BFEA0, &unk_1CFA05570);
              v46 = v71;
              if (v58)
              {
                goto LABEL_26;
              }

LABEL_24:
              v48 = swift_weakLoadStrong();
              if (v48)
              {
                v49 = v48;
                sub_1CF9E5198();
                sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
                sub_1CF042F54(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
                v50 = v62;
                v51 = v65;
                sub_1CF9E57D8();
                v52 = sub_1CF9E50D8();
                (*(v64 + 8))(v50, v51);
                (*(*v49 + 520))(v46, v52);

                goto LABEL_26;
              }

LABEL_32:
              __break(1u);
              return;
            }

            sub_1CEFCCC44(v68, &unk_1EC4BFEA0, &unk_1CFA05570);
            sub_1CEFCCC44(v69, &unk_1EC4BFEA0, &unk_1CFA05570);
            sub_1CEFCCC44(v47, &unk_1EC4BF650, &unk_1CF9FCB40);
          }

          sub_1CEFCCC44(v43, &qword_1EC4BFE98, &qword_1CFA05568);
          v46 = v71;
          goto LABEL_24;
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }
  }
}

uint64_t sub_1CF44D9C4(__int128 *a1)
{
  v3 = *(v1 + 544);
  v4 = *(v1 + 784);
  if (v3 == 255)
  {
    goto LABEL_5;
  }

  v5 = *(v1 + 536);
  sub_1CF44DD2C(&v24);
  v6 = v24;
  v7 = BYTE9(v24);
  v8 = BYTE8(v24);
  v9 = sub_1CF7BC790(v24, BYTE8(v24) | (BYTE9(v24) << 8), v5, v3);
  sub_1CEFD0994(v6, v8, v7);
  if ((v9 & 1) == 0)
  {
    v10 = *(a1 + 2);
    v11 = *(a1 + 115);
    if (v11 != 1)
    {
      v24 = *a1;
      v25 = v10;
      v28 = *(a1 + 56);
      v29 = *(a1 + 72);
      *v30 = *(a1 + 88);
      *&v30[11] = *(a1 + 99);
      v26 = *(a1 + 24);
      v27 = *(a1 + 40);
      v31 = v11;
      sub_1CEFCCBDC(a1, v23, &qword_1EC4BE6D0, &qword_1CF9FE560);
      sub_1CEFCCC44(&v24, &qword_1EC4BE6D0, &qword_1CF9FE560);
      sub_1CF47FDFC(0, 65280);
      sub_1CF47FDFC(v5, v3);
      if (!v4)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    sub_1CEFCCBDC(a1, &v24, &qword_1EC4BE6D0, &qword_1CF9FE560);
    sub_1CF480960(v10, 256);
    sub_1CF480960(v10, 256);
    v12 = sub_1CF7BC790(v10, 256, v5, v3);
    sub_1CF47FDFC(v5, v3);
    sub_1CF47FDFC(v10, 256);
    sub_1CF47FDFC(v10, 256);
    sub_1CF47FDFC(v10, 256);
    if ((v12 & 1) == 0)
    {
LABEL_5:
      if (!v4)
      {
        goto LABEL_14;
      }

LABEL_8:
      v13 = v4;
      sub_1CF44DD2C(&v24);
      v14 = v24;
      v15 = BYTE9(v24);
      v16 = BYTE8(v24);
      v17 = v13;
      LOBYTE(v13) = sub_1CF7BC790(v14, v16 | (v15 << 8), v4, 256);

      sub_1CEFD0994(v14, v16, v15);
      if (v13)
      {

        goto LABEL_10;
      }

      v19 = *(a1 + 2);
      v20 = *(a1 + 115);
      if (v20 == 1)
      {
        sub_1CEFCCBDC(a1, &v24, &qword_1EC4BE6D0, &qword_1CF9FE560);
        v21 = v17;
        sub_1CF480960(v19, 256);
        sub_1CF480960(v19, 256);
        v18 = sub_1CF7BC790(v19, 256, v4, 256);
        sub_1CF47FDFC(v4, 256);

        sub_1CF47FDFC(v19, 256);
        sub_1CF47FDFC(v19, 256);
        sub_1CF47FDFC(v19, 256);
        return v18 & 1;
      }

      v24 = *a1;
      v25 = v19;
      v28 = *(a1 + 56);
      v29 = *(a1 + 72);
      *v30 = *(a1 + 88);
      *&v30[11] = *(a1 + 99);
      v26 = *(a1 + 24);
      v27 = *(a1 + 40);
      v31 = v20;
      sub_1CEFCCBDC(a1, v23, &qword_1EC4BE6D0, &qword_1CF9FE560);
      sub_1CEFCCC44(&v24, &qword_1EC4BE6D0, &qword_1CF9FE560);
      sub_1CF47FDFC(0, 65280);
      sub_1CF47FDFC(v4, 256);
LABEL_14:
      v18 = 0;
      return v18 & 1;
    }
  }

LABEL_10:
  v18 = 1;
  return v18 & 1;
}

void sub_1CF44DD2C(uint64_t a1@<X8>)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 9);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v2 + 25);
  v9 = *(v2 + 26) | (*(v2 + 30) << 32);
  v10 = *(v2 + 32);
  v11 = *(v2 + 40);
  v12 = *(v2 + 48);
  v13 = *(v2 + 56);
  v14 = *(v2 + 64);
  v15 = *(v2 + 72);
  v16 = *(v2 + 80);
  switch(*(v2 + 115))
  {
    case 1:
      *a1 = v3;
      *(a1 + 8) = v4;
      *(a1 + 9) = 0;
      sub_1CEFCCBDC(v2, v23, &qword_1EC4BE6D0, &qword_1CF9FE560);

      break;
    case 7:
    case 8:
      *a1 = v3;
      *(a1 + 8) = v4;
      *(a1 + 9) = v5 & 1;
      sub_1CEFCCBDC(v2, v23, &qword_1EC4BE6D0, &qword_1CF9FE560);
      sub_1CEFD0994(v6, v7, v8 & 1);
      break;
    case 9:
      *a1 = v3;
      *(a1 + 8) = v4;
      *(a1 + 9) = v5 & 1;
      v18 = v7 | (v8 << 8) | (v9 << 16);
      sub_1CEFCCBDC(v2, v23, &qword_1EC4BE6D0, &qword_1CF9FE560);
      sub_1CF480AA8(v6, v18, v10, v11, v12, v13, v14, v15, v16, BYTE2(v16));
      break;
    case 0xA:
      v21 = *(v2 + 112);
      v22 = *(v2 + 114);
      v20 = *(v2 + 104);
      v19 = *(v2 + 88);
      *a1 = v3;
      *(a1 + 8) = v4;
      v17 = (v7 | (v8 << 8) | (v9 << 16));
      *(a1 + 9) = v5 & 1;
      sub_1CEFCCBDC(v2, v23, &qword_1EC4BE6D0, &qword_1CF9FE560);
      sub_1CF480998(v6, v17, v10, v11, v12, v13, v14, v15, v16, v19, *(&v19 + 1), v20, v21, v22);
      break;
    default:
      *a1 = v3;
      *(a1 + 8) = v4;
      *(a1 + 9) = v5 & 1;
      sub_1CEFCCBDC(v2, v23, &qword_1EC4BE6D0, &qword_1CF9FE560);
      break;
  }
}

void sub_1CF44DF5C(void *result@<X0>, char a2@<W1>, uint64_t *a3@<X8>, int64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>)
{
  if (*(*(v8 + 464) + 16))
  {
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0x8000000000000001;
    return;
  }

  v10 = v8;
  v125 = a3;
  sub_1CF46DAC0(result, a2 & 1, __src, a4, a5, a6, a7, a8);
  if (v9)
  {
    return;
  }

  v111 = __src[0];
  v13 = __src[1];
  v14 = __src[2];
  v15 = LOBYTE(__src[3]);
  v16 = sub_1CF7F62D0(__src);
  v17 = (*(*result + 176))(v16);
  memcpy(__dst, __src, sizeof(__dst));
  sub_1CF46DC58(v17, a2 & 1, &v120, v18, v19, v20, v21, v22);
  memcpy(v118, __src, sizeof(v118));
  sub_1CEFCCC44(v118, &unk_1EC4BFC90, &unk_1CFA053E0);

  v23 = v121;
  v24 = v123;
  v112[0] = v111;
  v112[1] = v13;
  v112[2] = v14;
  v113 = v15;
  v114 = v120;
  v115 = v121;
  v116 = v122;
  v25 = v123 >> 6;
  v117 = v123;
  v26 = v13;
  v27 = v14;
  if (!v25)
  {
    if ((v15 & 0xC0) != 0x40)
    {
LABEL_22:
      if (v15 >= 0x40 && v25)
      {
        if (v25 != 2 || (v15 & 0xC0) != 0x80 || v13 | v111 | v14 || v15 != 128)
        {
          v102 = v15;
          v103 = v120;
          v104 = v122;
          sub_1CF480560(v120, v121, v122, v123);
          sub_1CF480560(v111, v26, v14, v102);
          sub_1CF480560(v103, v23, v104, v24);
          sub_1CF480560(v111, v26, v14, v102);
          sub_1CF515664("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/types/ItemReconciliation.swift", 126, 2u, 1473, v111, v26, v14, v102, v103, v23, v104, v24);
        }

        sub_1CEFCCC44(v112, &qword_1EC4BFDE0, &qword_1CFA054E0);
        v29 = 0x8000000000000000;
        goto LABEL_26;
      }

      goto LABEL_24;
    }

    if (v111 == 2)
    {
      if (v123)
      {
LABEL_24:
        sub_1CEFCCC44(v112, &qword_1EC4BFDE0, &qword_1CFA054E0);
LABEL_25:
        v29 = 0x8000000000000001;
        goto LABEL_26;
      }

      if (v122 == 2)
      {
        v106 = *(*result + 152);
        v109 = v120;
        v30 = v120;
        sub_1CF480560(v111, v13, v14, v15);
        sub_1CF480560(v30, v23, 2, v24);
        sub_1CF480560(v111, v13, v14, v15);
        v26 = v13;
        LOWORD(v30) = v106();
        sub_1CEFCCC44(v112, &qword_1EC4BFDE0, &qword_1CFA054E0);
        sub_1CF480540(v109, v23, 2, v24, v31, v32, v33, v34);
        sub_1CF480540(v111, v13, v14, v15, v35, v36, v37, v38);
        if ((v30 & 0x4000) == 0)
        {
          v43 = v111;
          v44 = v13;
          v45 = v14;
          v46 = v15;
LABEL_62:
          sub_1CF480540(v43, v44, v45, v46, v39, v40, v41, v42);
          goto LABEL_25;
        }

        v48 = 2;
LABEL_21:
        v49 = v125;
        *v125 = v48;
        v49[1] = v26;
        v49[2] = v14;
        return;
      }

      v56 = v122;
      v57 = v27;
      v78 = v27;
      sub_1CEFCCC44(v112, &qword_1EC4BFDE0, &qword_1CFA054E0);
    }

    else
    {
      v56 = v122;
      v57 = v27;
      v58 = v27;
      sub_1CEFCCC44(v112, &qword_1EC4BFDE0, &qword_1CFA054E0);
      if (v24)
      {
        v63 = v111;
        v64 = v26;
        v65 = v57;
LABEL_45:
        sub_1CF480540(v63, v64, v65, v15, v59, v60, v61, v62);
        goto LABEL_25;
      }
    }

    v65 = v57;
    if ((v56 & 0x100) != 0)
    {
      v79 = v125;
      *v125 = v111;
      v79[1] = v26;
      v79[2] = v65;
      return;
    }

    v63 = v111;
    v64 = v26;
    goto LABEL_45;
  }

  if (v25 != 1)
  {
    if ((v15 & 0xC0) == 0x40)
    {
      v47 = v14;
      sub_1CEFCCC44(v112, &qword_1EC4BFDE0, &qword_1CFA054E0);
      v48 = v111;
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if ((v121 & 0x10) != 0)
  {
LABEL_27:
    v51 = v122;
    v52 = v120;
    v53 = v122;
    sub_1CEFCCC44(v112, &qword_1EC4BFDE0, &qword_1CFA054E0);
    v54 = v52 | 0x4000000000000000;
    v55 = v125;
    *v125 = v54;
    v55[1] = v23;
    v55[2] = v51;
    return;
  }

  v28 = v120;
  if (!(v15 >> 6))
  {
    if (v120)
    {
      if (v120 == 23 && (v15 & 1) == 0 && v14 == 512)
      {
        v107 = *(*result + 152);
        v66 = v15;
        v67 = v120;
        v68 = v122;
        sub_1CF480560(v120, v121, v122, v123);
        sub_1CF480560(v67, v23, v68, v24);
        sub_1CF480560(v111, v13, 0x200, v66);
        v69 = v107();
        sub_1CEFCCC44(v112, &qword_1EC4BFDE0, &qword_1CFA054E0);
        sub_1CF480540(v67, v23, v68, v24, v70, v71, v72, v73);
        sub_1CF480540(v111, v13, 512, v66, v74, v75, v76, v77);
        if ((v69 & 0x4000) != 0)
        {
          v101 = v125;
          *v125 = 0x4000000000000017;
          v101[1] = v23;
          v101[2] = v68;
          return;
        }

        v43 = v67;
        v44 = v23;
        v45 = v68;
        goto LABEL_61;
      }
    }

    else if ((v15 & 1) == 0 && v14 == 512)
    {
      v108 = *(*result + 152);
      v88 = v15;
      v89 = v120;
      v90 = v122;
      sub_1CF480560(v120, v121, v122, v123);
      sub_1CF480560(v89, v23, v90, v24);
      sub_1CF480560(v111, v13, 0x200, v88);
      v91 = v108();
      sub_1CEFCCC44(v112, &qword_1EC4BFDE0, &qword_1CFA054E0);
      sub_1CF480540(v89, v23, v90, v24, v92, v93, v94, v95);
      sub_1CF480540(v111, v13, 512, v88, v96, v97, v98, v99);
      if ((v91 & 0x4000) != 0 && (v23 & 2) != 0)
      {
        v100 = v125;
        *v125 = 0x4000000000000000;
        v100[1] = v23;
        v100[2] = v90;
        return;
      }

      v43 = v89;
      v44 = v23;
      v45 = v90;
LABEL_61:
      v46 = v24;
      goto LABEL_62;
    }

    goto LABEL_24;
  }

  if (v15 >> 6 != 1)
  {
    goto LABEL_27;
  }

  if (v111)
  {
    if (v111 == 2 && v120 == 2)
    {
      sub_1CEFCCC44(v112, &qword_1EC4BFDE0, &qword_1CFA054E0);
      v29 = 0x8000000000000002;
LABEL_26:
      v50 = v125;
      v125[1] = 0;
      v50[2] = 0;
      *v50 = v29;
      return;
    }
  }

  else if (!v120)
  {
    sub_1CF480560(v120, v121, v122, v123);
    sub_1CF480560(v111, v13, v14, v15);
    sub_1CF510054("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/types/ItemReconciliation.swift", 126, 2, 1437);
  }

  v80 = *(v10 + 240);
  v110 = v120;
  v105 = v122;
  sub_1CF480560(v120, v121, v122, v123);
  v81 = v13;
  sub_1CF480560(v111, v13, v14, v15);
  sub_1CEFCCC44(v112, &qword_1EC4BFDE0, &qword_1CFA054E0);
  if ((v80 & 7) != 0 && v28 == 2)
  {
    sub_1CF480540(v111, v13, v14, v15, v82, v83, v84, v85);
    v86 = v125;
    *v125 = 0x4000000000000002;
    v86[1] = v23;
    v87 = v105;
  }

  else
  {
    sub_1CF480540(v110, v23, v105, v24, v82, v83, v84, v85);
    v86 = v125;
    *v125 = v111;
    v86[1] = v81;
    v87 = v14;
  }

  v86[2] = v87;
}

void sub_1CF44E780(void *result@<X0>, char a2@<W1>, uint64_t *a3@<X8>, int64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>)
{
  if (*(*(v8 + 464) + 16))
  {
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0x8000000000000001;
    return;
  }

  v10 = v8;
  v125 = a3;
  sub_1CF46DC58(result, a2 & 1, __src, a4, a5, a6, a7, a8);
  if (v9)
  {
    return;
  }

  v111 = __src[0];
  v13 = __src[1];
  v14 = __src[2];
  v15 = LOBYTE(__src[3]);
  v16 = sub_1CF7F6024(__src);
  v17 = (*(*result + 176))(v16);
  memcpy(__dst, __src, sizeof(__dst));
  sub_1CF46DAC0(v17, a2 & 1, &v120, v18, v19, v20, v21, v22);
  memcpy(v118, __src, sizeof(v118));
  sub_1CEFCCC44(v118, &qword_1EC4BFBC0, &unk_1CF9FCAC0);

  v23 = v121;
  v24 = v123;
  v112[0] = v111;
  v112[1] = v13;
  v112[2] = v14;
  v113 = v15;
  v114 = v120;
  v115 = v121;
  v116 = v122;
  v25 = v123 >> 6;
  v117 = v123;
  v26 = v13;
  v27 = v14;
  if (!v25)
  {
    if ((v15 & 0xC0) != 0x40)
    {
LABEL_22:
      if (v15 >= 0x40 && v25)
      {
        if (v25 != 2 || (v15 & 0xC0) != 0x80 || v13 | v111 | v14 || v15 != 128)
        {
          v102 = v15;
          v103 = v120;
          v104 = v122;
          sub_1CF480560(v120, v121, v122, v123);
          sub_1CF480560(v111, v26, v14, v102);
          sub_1CF480560(v103, v23, v104, v24);
          sub_1CF480560(v111, v26, v14, v102);
          sub_1CF515664("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/types/ItemReconciliation.swift", 126, 2u, 1473, v111, v26, v14, v102, v103, v23, v104, v24);
        }

        sub_1CEFCCC44(v112, &qword_1EC4BFE90, &qword_1CFA05560);
        v29 = 0x8000000000000000;
        goto LABEL_26;
      }

      goto LABEL_24;
    }

    if (v111 == 2)
    {
      if (v123)
      {
LABEL_24:
        sub_1CEFCCC44(v112, &qword_1EC4BFE90, &qword_1CFA05560);
LABEL_25:
        v29 = 0x8000000000000001;
        goto LABEL_26;
      }

      if (v122 == 2)
      {
        v106 = *(*result + 152);
        v109 = v120;
        v30 = v120;
        sub_1CF480560(v111, v13, v14, v15);
        sub_1CF480560(v30, v23, 2, v24);
        sub_1CF480560(v111, v13, v14, v15);
        v26 = v13;
        LOWORD(v30) = v106();
        sub_1CEFCCC44(v112, &qword_1EC4BFE90, &qword_1CFA05560);
        sub_1CF480540(v109, v23, 2, v24, v31, v32, v33, v34);
        sub_1CF480540(v111, v13, v14, v15, v35, v36, v37, v38);
        if ((v30 & 0x4000) == 0)
        {
          v43 = v111;
          v44 = v13;
          v45 = v14;
          v46 = v15;
LABEL_62:
          sub_1CF480540(v43, v44, v45, v46, v39, v40, v41, v42);
          goto LABEL_25;
        }

        v48 = 2;
LABEL_21:
        v49 = v125;
        *v125 = v48;
        v49[1] = v26;
        v49[2] = v14;
        return;
      }

      v56 = v122;
      v57 = v27;
      v78 = v27;
      sub_1CEFCCC44(v112, &qword_1EC4BFE90, &qword_1CFA05560);
    }

    else
    {
      v56 = v122;
      v57 = v27;
      v58 = v27;
      sub_1CEFCCC44(v112, &qword_1EC4BFE90, &qword_1CFA05560);
      if (v24)
      {
        v63 = v111;
        v64 = v26;
        v65 = v57;
LABEL_45:
        sub_1CF480540(v63, v64, v65, v15, v59, v60, v61, v62);
        goto LABEL_25;
      }
    }

    v65 = v57;
    if ((v56 & 0x100) != 0)
    {
      v79 = v125;
      *v125 = v111;
      v79[1] = v26;
      v79[2] = v65;
      return;
    }

    v63 = v111;
    v64 = v26;
    goto LABEL_45;
  }

  if (v25 != 1)
  {
    if ((v15 & 0xC0) == 0x40)
    {
      v47 = v14;
      sub_1CEFCCC44(v112, &qword_1EC4BFE90, &qword_1CFA05560);
      v48 = v111;
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if ((v121 & 0x10) != 0)
  {
LABEL_27:
    v51 = v122;
    v52 = v120;
    v53 = v122;
    sub_1CEFCCC44(v112, &qword_1EC4BFE90, &qword_1CFA05560);
    v54 = v52 | 0x4000000000000000;
    v55 = v125;
    *v125 = v54;
    v55[1] = v23;
    v55[2] = v51;
    return;
  }

  v28 = v120;
  if (!(v15 >> 6))
  {
    if (v120)
    {
      if (v120 == 23 && (v15 & 1) == 0 && v14 == 512)
      {
        v107 = *(*result + 152);
        v66 = v15;
        v67 = v120;
        v68 = v122;
        sub_1CF480560(v120, v121, v122, v123);
        sub_1CF480560(v67, v23, v68, v24);
        sub_1CF480560(v111, v13, 0x200, v66);
        v69 = v107();
        sub_1CEFCCC44(v112, &qword_1EC4BFE90, &qword_1CFA05560);
        sub_1CF480540(v67, v23, v68, v24, v70, v71, v72, v73);
        sub_1CF480540(v111, v13, 512, v66, v74, v75, v76, v77);
        if ((v69 & 0x4000) != 0)
        {
          v101 = v125;
          *v125 = 0x4000000000000017;
          v101[1] = v23;
          v101[2] = v68;
          return;
        }

        v43 = v67;
        v44 = v23;
        v45 = v68;
        goto LABEL_61;
      }
    }

    else if ((v15 & 1) == 0 && v14 == 512)
    {
      v108 = *(*result + 152);
      v88 = v15;
      v89 = v120;
      v90 = v122;
      sub_1CF480560(v120, v121, v122, v123);
      sub_1CF480560(v89, v23, v90, v24);
      sub_1CF480560(v111, v13, 0x200, v88);
      v91 = v108();
      sub_1CEFCCC44(v112, &qword_1EC4BFE90, &qword_1CFA05560);
      sub_1CF480540(v89, v23, v90, v24, v92, v93, v94, v95);
      sub_1CF480540(v111, v13, 512, v88, v96, v97, v98, v99);
      if ((v91 & 0x4000) != 0 && (v23 & 2) != 0)
      {
        v100 = v125;
        *v125 = 0x4000000000000000;
        v100[1] = v23;
        v100[2] = v90;
        return;
      }

      v43 = v89;
      v44 = v23;
      v45 = v90;
LABEL_61:
      v46 = v24;
      goto LABEL_62;
    }

    goto LABEL_24;
  }

  if (v15 >> 6 != 1)
  {
    goto LABEL_27;
  }

  if (v111)
  {
    if (v111 == 2 && v120 == 2)
    {
      sub_1CEFCCC44(v112, &qword_1EC4BFE90, &qword_1CFA05560);
      v29 = 0x8000000000000002;
LABEL_26:
      v50 = v125;
      v125[1] = 0;
      v50[2] = 0;
      *v50 = v29;
      return;
    }
  }

  else if (!v120)
  {
    sub_1CF480560(v120, v121, v122, v123);
    sub_1CF480560(v111, v13, v14, v15);
    sub_1CF510054("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/types/ItemReconciliation.swift", 126, 2, 1437);
  }

  v80 = *(v10 + 200);
  v110 = v120;
  v105 = v122;
  sub_1CF480560(v120, v121, v122, v123);
  v81 = v13;
  sub_1CF480560(v111, v13, v14, v15);
  sub_1CEFCCC44(v112, &qword_1EC4BFE90, &qword_1CFA05560);
  if ((v80 & 7) != 0 && v28 == 2)
  {
    sub_1CF480540(v111, v13, v14, v15, v82, v83, v84, v85);
    v86 = v125;
    *v125 = 0x4000000000000002;
    v86[1] = v23;
    v87 = v105;
  }

  else
  {
    sub_1CF480540(v110, v23, v105, v24, v82, v83, v84, v85);
    v86 = v125;
    *v125 = v111;
    v86[1] = v81;
    v87 = v14;
  }

  v86[2] = v87;
}

void sub_1CF44EFA4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v7 = sub_1CF9E5CF8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) == 0)
  {
    if (!swift_weakLoadStrong())
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v12 = v11;
    (*(v8 + 8))(v10, v7);
    v13 = v12 * 1000000000.0;
    if (COERCE__INT64(fabs(v12 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v13 > -9.22337204e18)
    {
      if (v13 < 9.22337204e18)
      {
        sub_1CF902E70(a1, v13, a3, v4);
LABEL_12:

        return;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 176))(Strong);

    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v16 = v15;
    (*(v8 + 8))(v10, v7);
    v17 = v16 * 1000000000.0;
    if (COERCE__INT64(fabs(v16 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v17 > -9.22337204e18)
      {
        if (v17 < 9.22337204e18)
        {
          sub_1CF902E70(a1 & 0x7FFFFFFFFFFFFFFFLL, v17, a3, v4);
          goto LABEL_12;
        }

        goto LABEL_18;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_1CF44F21C()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 115);
  switch(v7)
  {
    case 9:
      v17 = *(v1 + 16);
      v18 = v6;
      *&v21[15] = *(v1 + 79);
      v12 = *(v1 + 48);
      v19 = *(v1 + 32);
      v20 = v12;
      *v21 = *(v1 + 64);
      if (v21[18] != 12)
      {
        if (v21[18] == 2)
        {
          goto LABEL_16;
        }

        if (v21[18])
        {
          sub_1CEFCCBDC(v1, &v23, &qword_1EC4BE6D0, &qword_1CF9FE560);
          v10 = &qword_1EC4BFEE0;
          v11 = &qword_1CFA055B0;
          goto LABEL_18;
        }

LABEL_12:
        v5 = v6;
        goto LABEL_16;
      }

LABEL_15:
      v15 = 1 << SBYTE1(v5);
      v5 = v6;
      if ((v15 & 0x1B) == 0)
      {
        sub_1CEFCCBDC(v1, &v23, &qword_1EC4BE6D0, &qword_1CF9FE560);
        goto LABEL_20;
      }

LABEL_16:
      sub_1CEFCCBDC(v1, &v23, &qword_1EC4BE6D0, &qword_1CF9FE560);
LABEL_21:
      sub_1CEFD0994(v2, v3, v4 & 1);
      return v5;
    case 12:
      sub_1CEFCCBDC(v1, &v23, &qword_1EC4BE6D0, &qword_1CF9FE560);
      sub_1CEFD0994(v2, v3, v4 & 1);
      break;
    case 10:
      v17 = *(v1 + 16);
      v18 = v6;
      *&v22[15] = *(v1 + 111);
      v8 = *(v1 + 80);
      *v21 = *(v1 + 64);
      *&v21[16] = v8;
      *v22 = *(v1 + 96);
      v9 = *(v1 + 48);
      v19 = *(v1 + 32);
      v20 = v9;
      if (v22[18] != 12)
      {
        if (v22[18] == 2)
        {
          goto LABEL_16;
        }

        if (v22[18])
        {
          sub_1CEFCCBDC(v1, &v23, &qword_1EC4BE6D0, &qword_1CF9FE560);
          v10 = &qword_1EC4BFEE8;
          v11 = &qword_1CFA055B8;
LABEL_18:
          sub_1CEFCCC44(&v17, v10, v11);
LABEL_20:
          v5 = 0;
          goto LABEL_21;
        }

        goto LABEL_12;
      }

      goto LABEL_15;
    default:
      v23 = v2;
      v24 = v3;
      v25 = v4;
      v26 = *(v1 + 10);
      v27 = *(v1 + 14);
      v28 = v5;
      v29 = v6;
      v13 = *(v1 + 80);
      v32 = *(v1 + 64);
      v33 = v13;
      *v34 = *(v1 + 96);
      *&v34[15] = *(v1 + 111);
      v14 = *(v1 + 48);
      v30 = *(v1 + 32);
      v31 = v14;
      v35 = v7;
      sub_1CEFCCBDC(v1, &v17, &qword_1EC4BE6D0, &qword_1CF9FE560);
      sub_1CEFCCC44(&v23, &qword_1EC4BE6D0, &qword_1CF9FE560);
      return 0;
  }

  return v5;
}

BOOL sub_1CF44F4AC()
{
  if (qword_1EDEABDE0 != -1)
  {
    swift_once();
  }

  if ((*(v0 + 24) & (qword_1EDEABDE8 | 0x10)) != 0 || (*(v0 + 16) & 0x51) != 0 || (*(v0 + 264) & (qword_1EDEABDE8 | 0x10)) != 0)
  {
    return 0;
  }

  result = 0;
  if ((*(v0 + 256) & 0x51) == 0 && *(v0 + 136) != 1 && *(v0 + 344) != 1 && *(v0 + 32) == 5 && *(v0 + 137) == 6)
  {
    v2 = *(v0 + 160);
    v3 = *(v0 + 368);
    if ((*(v0 + 8) == 255 || !*(v0 + 248) || (*(v0 + 192) & 0xF000000000000000) == 0xB000000000000000 || *(v0 + 344)) && (v2 == 3 || v2 == 4 && !(*(v0 + 144) & 0xFFFFFFFFFFFFFFFELL | *(v0 + 152))))
    {
      if (v3 == 3)
      {
        return 1;
      }

      if (v3 == 4)
      {
        return (*(v0 + 352) & 0xFFFFFFFFFFFFFFFELL | *(v0 + 360)) == 0;
      }
    }

    return 0;
  }

  return result;
}

void sub_1CF44F5F8(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v1810 = v1;
  LODWORD(v1779) = v2;
  v4 = v3;
  v1777 = v5;
  LODWORD(v1772) = v6;
  v1773 = v7;
  v1776 = v8;
  v1778 = v9;
  v10 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v1726 = &v1710 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E5268();
  v1727 = *(v12 - 8);
  v1728 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v1724 = &v1710 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1748 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFD38, &unk_1CFA05450);
  MEMORY[0x1EEE9AC00](v1748);
  v1725 = &v1710 - v14;
  v1753 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFE70, &qword_1CFA05550);
  MEMORY[0x1EEE9AC00](v1753);
  v1756 = &v1710 - v15;
  v1752 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v1752);
  v1751 = &v1710 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1755 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v1759 = *(v1755 - 1);
  MEMORY[0x1EEE9AC00](v1755);
  v1738 = &v1710 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v1740 = &v1710 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v1744 = &v1710 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v1749 = &v1710 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v1766 = *(v24 - 8);
  v1767 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v1742 = &v1710 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v1739 = &v1710 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v1761 = (&v1710 - v29);
  MEMORY[0x1EEE9AC00](v30);
  v1746 = &v1710 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v1720 = &v1710 - v33;
  v1721 = v34;
  MEMORY[0x1EEE9AC00](v35);
  v1734 = &v1710 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v1743 = &v1710 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v1763 = (&v1710 - v40);
  MEMORY[0x1EEE9AC00](v41);
  v1771 = (&v1710 - v42);
  MEMORY[0x1EEE9AC00](v43);
  v1729 = &v1710 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v1737 = (&v1710 - v46);
  MEMORY[0x1EEE9AC00](v47);
  v1735 = &v1710 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v1741 = &v1710 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v1745 = &v1710 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v1730 = &v1710 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v1733 = &v1710 - v56;
  v1775 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
  v1774 = *(v1775 - 8);
  MEMORY[0x1EEE9AC00](v1775);
  v1731 = (&v1710 - v57);
  v58 = sub_1CF9E6118();
  v1722 = *(v58 - 8);
  v1723 = v58;
  MEMORY[0x1EEE9AC00](v58);
  v1718 = &v1710 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v1717 = &v1710 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v1715 = &v1710 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v1716 = &v1710 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v1714 = &v1710 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v1713 = &v1710 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v1732 = &v1710 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v1719 = &v1710 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v1712 = &v1710 - v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFDE8, &qword_1CFA054E8);
  MEMORY[0x1EEE9AC00](v76 - 8);
  v1736 = &v1710 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v78);
  MEMORY[0x1EEE9AC00](v79);
  v81 = (&v1710 - v80);
  MEMORY[0x1EEE9AC00](v82);
  v1768 = &v1710 - v83;
  MEMORY[0x1EEE9AC00](v84);
  MEMORY[0x1EEE9AC00](v85);
  v87 = &v1710 - v86;
  MEMORY[0x1EEE9AC00](v88);
  MEMORY[0x1EEE9AC00](v89);
  v1769 = &v1710 - v90;
  MEMORY[0x1EEE9AC00](v91);
  v1770 = (&v1710 - v92);
  MEMORY[0x1EEE9AC00](v93);
  MEMORY[0x1EEE9AC00](v94);
  MEMORY[0x1EEE9AC00](v95);
  MEMORY[0x1EEE9AC00](v96);
  MEMORY[0x1EEE9AC00](v97);
  MEMORY[0x1EEE9AC00](v98);
  v1760 = (&v1710 - v99);
  MEMORY[0x1EEE9AC00](v100);
  v102 = &v1710 - v101;
  MEMORY[0x1EEE9AC00](v103);
  v105 = &v1710 - v104;
  MEMORY[0x1EEE9AC00](v106);
  v108 = (&v1710 - v107);
  MEMORY[0x1EEE9AC00](v109);
  v1750 = &v1710 - v110;
  MEMORY[0x1EEE9AC00](v111);
  v113 = &v1710 - v112;
  MEMORY[0x1EEE9AC00](v114);
  v1754 = (&v1710 - v115);
  MEMORY[0x1EEE9AC00](v116);
  v118 = &v1710 - v117;
  MEMORY[0x1EEE9AC00](v119);
  v121 = (&v1710 - v120);
  MEMORY[0x1EEE9AC00](v122);
  v1757 = &v1710 - v123;
  MEMORY[0x1EEE9AC00](v124);
  v1764 = &v1710 - v125;
  MEMORY[0x1EEE9AC00](v126);
  v1758 = (&v1710 - v127);
  MEMORY[0x1EEE9AC00](v128);
  v1762 = (&v1710 - v129);
  MEMORY[0x1EEE9AC00](v130);
  MEMORY[0x1EEE9AC00](&v1710 - v131);
  MEMORY[0x1EEE9AC00](v132);
  v1747 = &v1710 - v133;
  MEMORY[0x1EEE9AC00](v134);
  v147 = (&v1710 - v146);
  v1765 = v4;
  v1800 = v4;
  v1801 = v1779;
  v148 = *v143;
  if (!*v143)
  {
    v172 = v1778;
    *v1778 = 0;
    *(v172 + 8) = -256;
    return;
  }

  v1711 = v136;
  v150 = *(v143 + 8);
  v149 = *(v143 + 16);
  v151 = *(v143 + 97);
  v152 = *(v143 + 120);
  v1799 = v148;
  if (v1776 > 4095)
  {
    if (v1776 >= 0x8000)
    {
      v173 = v1777;
      if (v1776 < 0x80000)
      {
        if (v1776 == 0x8000)
        {
          v174 = v148;
          v175 = v1777[4];
          if (sub_1CF902E34())
          {
            if (!v151)
            {
LABEL_725:
              v1131 = v1778;
              *v1778 = 0;
              *(v1131 + 8) = -256;
              return;
            }

            if (sub_1CF06D930())
            {
              v176 = v1778;
              *v1778 = 0;
              *(v176 + 8) = -256;
              return;
            }

            v348 = *(*v175 + 488);
            v191 = v174;
            v349 = v1810;
            v348(&v1799, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
            if (!v349)
            {
LABEL_145:

              v350 = v1778;
              *v1778 = 0;
              *(v350 + 8) = -256;
              return;
            }

LABEL_184:

            return;
          }

          v191 = v174;
          v311 = v1810;
          sub_1CF3F9E7C(v173, v1772 & 1, v1798, v312, v313, v314, v315, v316);
          if (v311)
          {
            goto LABEL_184;
          }

          if (v1798[0] == 89)
          {
LABEL_95:

            goto LABEL_110;
          }

          if (v1798[0] > 0xBu)
          {
            if (v1798[0] == 12 || v1798[0] == 23)
            {
              goto LABEL_95;
            }
          }

          else if (v1798[0])
          {
            if (v1798[0] == 6)
            {
              goto LABEL_95;
            }
          }

          else
          {
            if (*(v173[5] + 33))
            {
              goto LABEL_95;
            }

            (*(*v175 + 288))(v1798, &v1799, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
            v561 = *v1798;
            if (*v1798)
            {
              sub_1CF7EBA74(*v1798, v1765, v1779, v1798);

              memcpy(v1797, v1798, sizeof(v1797));
              if (sub_1CF08B99C(v1797) == 1)
              {
                memcpy(v1796, v1798, 0x208uLL);
                sub_1CEFCCC44(v1796, &unk_1EC4BFD80, &unk_1CFA0A2A0);
              }

              else
              {
                memcpy(v1796, v1798, 0x208uLL);
                v1015 = LOBYTE(v1796[15]);
                sub_1CEFCCC44(v1796, &unk_1EC4BFC90, &unk_1CFA053E0);
                if (!v1015)
                {
                  goto LABEL_53;
                }
              }

              v173 = v1777;
            }
          }

          v442 = v173[5];
          if (v442[33] == 1)
          {
            goto LABEL_53;
          }

          (*(*v175 + 288))(v1798, &v1799, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          v443 = *v1798;
          if (!*v1798)
          {
            goto LABEL_53;
          }

          *&v1796[0] = *v1798;
          (*(*v173[2] + 160))(v1797, v1796, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          if (v1797[8] == 255)
          {

            goto LABEL_53;
          }

          *v1798 = *v1797;
          v1798[8] = v1797[8];
          v849 = (*(*v442 + 480))(v1798, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

          if ((v849 & 1) == 0)
          {
            goto LABEL_110;
          }

LABEL_64:
          v246 = v1778;
          *v1778 = 0;
          *(v246 + 8) = -256;
          return;
        }

        v151 = v1810;
        if (v1776 != 0x40000)
        {
          goto LABEL_965;
        }

        if (v152)
        {
          goto LABEL_110;
        }

        v254 = v148;
        v255 = v143;
        if ((sub_1CF06D930() & 1) == 0)
        {
          goto LABEL_110;
        }

        v210 = v254;
        sub_1CF3F9E7C(v173, v1772 & 1, v1798, v256, v257, v258, v259, v260);
        if (!v151)
        {
          if (v1798[0] == 89)
          {
            goto LABEL_109;
          }

          v1810 = v1798[0];
          v261 = v1750;
          sub_1CEFCCBDC(v1773, v1750, &qword_1EC4BFDE8, &qword_1CFA054E8);
          if ((*(v1774 + 6))(v261, 1, v1775) == 1)
          {
LABEL_74:
            sub_1CEFCCC44(v261, &qword_1EC4BFDE8, &qword_1CFA054E8);
            (*(*v173[3] + 360))(v1810, &v1799, *(v255 + 472), 1, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

            v262 = v1778;
            *v1778 = 0;
            *(v262 + 8) = -256;
            return;
          }

          sub_1CEFCCBDC(v261, v108, &qword_1EC4BFDE8, &qword_1CFA054E8);
          if (swift_getEnumCaseMultiPayload() == 14)
          {
            if (*(v108 + 9))
            {

              sub_1CF1E53F8(*v108, *(v108 + 8), *(v108 + 9));
            }

            else
            {
              v683 = *(v108 + 10);
              v684 = *v108;
              v685 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v687 = v686;
              v689 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v690 = v685;
              v691 = v688;
              if (v690 == v689 && v687 == v688)
              {

                v687, v692, v693, v694, v695, v696, v697, v698;
                v691, v699, v700, v701, v702, v703, v704, v705;
              }

              else
              {
                v784 = sub_1CF9E8048();

                v687, v785, v786, v787, v788, v789, v790, v791;
                v691, v792, v793, v794, v795, v796, v797, v798;
                if ((v784 & 1) == 0)
                {

                  v261 = v1750;
                  goto LABEL_366;
                }
              }

              v799 = qword_1CFA05BE8[v683];
              v173 = v1777;
              v261 = v1750;
              if (qword_1CFA05BE8[v1810] == v799)
              {
                goto LABEL_74;
              }
            }
          }

          else
          {

            sub_1CEFCCC44(v108, &unk_1EC4C4E20, &unk_1CFA05350);
          }

LABEL_366:
          v631 = v1778;
          *v1778 = 0;
          *(v631 + 8) = -256;
          sub_1CEFCCC44(v261, &qword_1EC4BFDE8, &qword_1CFA054E8);
          return;
        }

LABEL_80:

        return;
      }

      if (v1776 == 0x80000)
      {
        v205 = v148;
        if (sub_1CF902E34())
        {
          v206 = *(*v173 + 160);
          v207 = v205;
          v206();

          v208 = v1778;
          *v1778 = 0;
          *(v208 + 8) = -256;
          return;
        }

        goto LABEL_110;
      }

      v270 = v1810;
      if (v1776 != 0x100000)
      {
        goto LABEL_965;
      }

      v271 = v143;
      v210 = v148;
      sub_1CF3F9E7C(v173, v1772 & 1, v1798, v272, v273, v274, v275, v276);
      if (v270)
      {
        goto LABEL_80;
      }

      v324 = v271;
      v325 = v1798[0];
      if (v1798[0] == 89)
      {
        goto LABEL_109;
      }

      if (v1798[0] <= 5u)
      {
        if (v1798[0] >= 3u)
        {
          goto LABEL_109;
        }

        v339 = *&v1798[8];
        *v1798 = 0;
        v1798[8] = -1;
        v340 = sub_1CF07F344(v325, 1);
        if (v340 && (sub_1CF06D930() & 1) != 0 || sub_1CF07F344(v325, 0))
        {
          sub_1CF4664AC(v173, v210, v1765, v1779, v1798);
          if (sub_1CF082780(v341 & 1, 0, v342, v343, v344, v345, v346, v347))
          {

LABEL_257:
            v465 = v1778;
            *v1778 = 0;
            *(v465 + 8) = -256;
            return;
          }
        }

        if (v340 && (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD10, &unk_1CFA05430), swift_allocObject(), sub_1CF06DA80(), *v448 = xmmword_1CFA04F10, *(v448 + 16) = 1, nullsub_1(), sub_1CEFF5464(v449, v1797, v450, v451, v452, v453, v454, v455, v456), !sub_1CF95EDE0(*v1797, v339)) || sub_1CF07F344(v325, 2))
        {
          sub_1CF4668EC(v324, v173, v1765, v1779, v1798);
          v464 = sub_1CF082780(v457 & 1, 0, v458, v459, v460, v461, v462, v463);

          if (v464)
          {
            goto LABEL_257;
          }
        }

        else
        {
        }

        v179 = v1778;
        goto LABEL_111;
      }

      if (v1798[0] != 12)
      {
        goto LABEL_109;
      }

      (*(*v173[4] + 288))(v1798, &v1799, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      v530 = *v1798;
      if (!*v1798)
      {
        goto LABEL_109;
      }

      sub_1CF7EBA74(*v1798, v1765, v1779, v1798);

      memcpy(v1797, v1798, sizeof(v1797));
      if (sub_1CF08B99C(v1797) != 1)
      {
        memcpy(v1796, v1798, 0x208uLL);
        sub_1CEFCCC44(v1796, &unk_1EC4BFC90, &unk_1CFA053E0);
        sub_1CF06EE7C();
        v843 = v1778;
        *v1778 = 0;
        *(v843 + 8) = -256;
        return;
      }

      memcpy(v1796, v1798, 0x208uLL);
      v531 = &unk_1EC4BFD80;
      v532 = &unk_1CFA0A2A0;
LABEL_297:
      sub_1CEFCCC44(v1796, v531, v532);
      goto LABEL_110;
    }

    v151 = v1810;
    v188 = v1777;
    if (v1776 != 4096)
    {
      if (v1776 == 0x2000)
      {
        v189 = v149;
        v190 = *(*v1777 + 152);
        v1772 = v148;
        v191 = v148;
        v190();
        if ((sub_1CF06D930() & 1) == 0 || sub_1CF9526EC(v189, 0x20000000000))
        {
          goto LABEL_95;
        }

        sub_1CF44CD74(v188, v1798);
        if (v151)
        {
          goto LABEL_184;
        }

        v192 = *v1798;
        v193 = *&v1798[8];
        v194 = *&v1798[16];
        v195 = v1756;
        v196 = &v1756[*(v1753 + 48)];
        sub_1CEFCCBDC(v1773, v1756, &qword_1EC4BFDE8, &qword_1CFA054E8);
        *v196 = v192;
        v196[1] = v193;
        v1776 = v193;
        v1779 = v194;
        v196[2] = v194;
        v197 = *(v1774 + 6);
        v1774 += 48;
        if ((v197)(v195, 1, v1775) == 1)
        {

          v198 = v195;
LABEL_306:
          v539 = v1778;
          *v1778 = 0;
          *(v539 + 8) = -256;
          sub_1CEFCCC44(v198, &qword_1EC4BFE70, &qword_1CFA05550);
          return;
        }

        v438 = v195;
        v439 = v1711;
        sub_1CEFCCBDC(v438, v1711, &qword_1EC4BFDE8, &qword_1CFA054E8);
        if (swift_getEnumCaseMultiPayload() != 28)
        {

          v440 = &unk_1EC4C4E20;
          v441 = &unk_1CFA05350;
          goto LABEL_303;
        }

        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v440 = &qword_1EC4BFD38;
          v441 = &unk_1CFA05450;
LABEL_303:
          v538 = v439;
LABEL_304:
          sub_1CEFCCC44(v538, v440, v441);
LABEL_305:
          v198 = v1756;
          goto LABEL_306;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 1)
        {
          switch(EnumCaseMultiPayload)
          {
            case 2:
              v800 = *(v1711 + 128);
              sub_1CF48048C(v192, v1776, v1779);

              if (v192 >> 62 || (v1810 = 0, v192 != 2))
              {

                sub_1CF480498(v192);
                v892 = v1711;
                sub_1CF1D5750(*(v1711 + 24), *(v1711 + 32), *(v1711 + 40), *(v1711 + 48), *(v1711 + 56), *(v1711 + 64), *(v1711 + 72), *(v1711 + 80), *(v1711 + 88), *(v1711 + 96), *(v1711 + 104), *(v1711 + 112));
                v808 = *v892;
                goto LABEL_505;
              }

              v801 = *v1711;
              sub_1CF1D5750(*(v1711 + 24), *(v1711 + 32), *(v1711 + 40), *(v1711 + 48), *(v1711 + 56), *(v1711 + 64), *(v1711 + 72), *(v1711 + 80), *(v1711 + 88), *(v1711 + 96), *(v1711 + 104), *(v1711 + 112));
LABEL_452:
              sub_1CF480498(*v196);
              sub_1CEFCCC44(v1756, &qword_1EC4BFDE8, &qword_1CFA054E8);
              v802 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v804 = v803;
              v805 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v807 = v806;
              if (v802 != v805 || v804 != v806)
              {
                sub_1CF9E8048();
              }

              v871 = v801;
              v872 = v191;
              v873 = v871;
              v804, v874, v875, v876, v877, v878, v879, v880;
              v807, v881, v882, v883, v884, v885, v886, v887;
              sub_1CF480498(v192);

              v888 = v1799;
              v889 = v1778;
              *v1778 = 0;
              *(v889 + 8) = -256;
              return;
            case 4:
              if (!(v192 >> 62))
              {
                v1810 = 0;
                if (v192 != 23)
                {
                  goto LABEL_350;
                }

LABEL_451:
                v801 = *v1711;
                sub_1CF48048C(v192, v1776, v1779);
                goto LABEL_452;
              }

LABEL_455:

              v808 = *v1711;
LABEL_505:

              goto LABEL_305;
            case 5:
              if (!(v192 >> 62))
              {
                v1810 = 0;
                if (v192 != 6)
                {
LABEL_350:

LABEL_504:
                  v808 = *v1711;
                  goto LABEL_505;
                }

                goto LABEL_451;
              }

              goto LABEL_455;
          }

LABEL_463:

          v440 = &unk_1EC4BFD70;
          v441 = &qword_1CFA12AC0;
          v538 = v1711;
          goto LABEL_304;
        }

        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload != 1)
          {
            goto LABEL_463;
          }

          v1810 = 0;
          v658 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDA0, &qword_1CF9FCB98);
          v659 = v1711 + v658[12];
          v660 = v1711 + v658[20];
          v661 = *(v1711 + v658[28]);
          v662 = *(v1711 + v658[32]);
          sub_1CF48048C(v192, v1776, v1779);

          if (!(v192 >> 62) && v192 == 1)
          {
            v1771 = *v1711;
            *v1798 = v1771;
            sub_1CF1D5750(*v660, *(v660 + 8), *(v660 + 16), *(v660 + 24), *(v660 + 32), *(v660 + 40), *(v660 + 48), *(v660 + 56), *(v660 + 64), *(v660 + 72), *(v660 + 80), *(v660 + 88));
LABEL_664:
            sub_1CEFCCC44(v659, &unk_1EC4BFBB0, &qword_1CF9FCB90);
            sub_1CF480498(*v196);
            sub_1CEFCCC44(v1756, &qword_1EC4BFDE8, &qword_1CFA054E8);
            v1016 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v1018 = v1017;
            v1019 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v1021 = v1020;
            if (v1016 == v1019 && v1018 == v1020)
            {
              v1022 = v1771;
              v1023 = v191;

              v1018, v1024, v1025, v1026, v1027, v1028, v1029, v1030;
              v1021, v1031, v1032, v1033, v1034, v1035, v1036, v1037;
            }

            else
            {
              v1038 = sub_1CF9E8048();
              v1039 = v1771;
              v1040 = v191;

              v1018, v1041, v1042, v1043, v1044, v1045, v1046, v1047;
              v1021, v1048, v1049, v1050, v1051, v1052, v1053, v1054;
              if ((v1038 & 1) == 0)
              {
                sub_1CF480498(v192);

                v1094 = v1778;
                *v1778 = 0;
                *(v1094 + 8) = -256;
                return;
              }
            }

            v1055 = v1810;
            v1056 = (*(*v1777[4] + 312))(v1798, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
            if (v1055)
            {
              sub_1CF480498(v192);

              goto LABEL_39;
            }

            v1068 = v1056;
            v1069 = v1057;

            if ((v1069 & 1) == 0 && v1068 == v661)
            {

              sub_1CF480498(v192);
              goto LABEL_110;
            }

            v1132 = v1736;
            sub_1CEFCCBDC(v1773, v1736, &qword_1EC4BFDE8, &qword_1CFA054E8);
            if ((v197)(v1132, 1, v1775) == 1)
            {

              sub_1CF480498(v192);
              v1133 = &qword_1EC4BFDE8;
              v1134 = &qword_1CFA054E8;
            }

            else
            {
              if (swift_getEnumCaseMultiPayload() == 28)
              {
                v1170 = v1725;
                sub_1CEFE55D0(v1736, v1725, &qword_1EC4BFD38, &unk_1CFA05450);
                sub_1CF9E5198();
                sub_1CF4C3DAC();
                sub_1CF042F54(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
                v1171 = v1724;
                v1172 = v1728;
                sub_1CF9E57D8();
                v1173 = sub_1CF9E50D8();
                (*(v1727 + 8))(v1171, v1172);
                (*(*v1777 + 520))(v1170, v1173);

                sub_1CF480498(v192);
                sub_1CEFCCC44(v1170, &qword_1EC4BFD38, &unk_1CFA05450);

                goto LABEL_257;
              }

              sub_1CF480498(v192);
              v1133 = &unk_1EC4C4E20;
              v1134 = &unk_1CFA05350;
            }

            sub_1CEFCCC44(v1736, v1133, v1134);
            goto LABEL_257;
          }

          sub_1CF480498(v192);
          sub_1CF1D5750(*v660, *(v660 + 8), *(v660 + 16), *(v660 + 24), *(v660 + 32), *(v660 + 40), *(v660 + 48), *(v660 + 56), *(v660 + 64), *(v660 + 72), *(v660 + 80), *(v660 + 88));
        }

        else
        {
          v1810 = 0;
          v809 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFDC0, &qword_1CF9FCBA0);
          v659 = v1711 + v809[12];
          v661 = *(v1711 + v809[16]);
          v810 = *(v1711 + v809[20]);
          sub_1CF48048C(v192, v1776, v1779);

          if (!(v192 >> 62) && !v192)
          {
            v1771 = *v1711;
            *v1798 = v1771;
            goto LABEL_664;
          }

          sub_1CF480498(v192);
        }

        sub_1CEFCCC44(v659, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        goto LABEL_504;
      }

      if (v1776 != 0x4000)
      {
        goto LABEL_965;
      }

      v240 = v148;
      v241 = v1777[4];
      if (!sub_1CF902E34())
      {
        goto LABEL_110;
      }

      v242 = v188[3];
      v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF18, &qword_1CF9FB3C8);
      v244 = *(*v242 + 328);
      v191 = v240;
      v245 = v244(&v1799, v243, 0, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      if (v151)
      {
        goto LABEL_184;
      }

      if (v245)
      {

        goto LABEL_64;
      }

      (*(*v241 + 328))(v1802, &v1799, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      if (v1803)
      {
        goto LABEL_95;
      }

      if (v1802[0])
      {
        goto LABEL_145;
      }

      v655 = v1743;
      (*(*v241 + 240))(&v1799, 1, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      v656 = v1767;
      if ((*(v1766 + 48))(v655, 1, v1767) == 1)
      {

        sub_1CEFCCC44(v655, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        goto LABEL_110;
      }

      v825 = v1742;
      sub_1CEFE55D0(v655, v1742, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v826 = (v825 + *(v656 + 48));
      if (v826[v1752[21]])
      {
        sub_1CEFCCC44(v1742, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

        v827 = v1778;
        *v1778 = 0;
        *(v827 + 8) = -256;
        return;
      }

      if (!sub_1CF06DA5C(*v826, 1) || (v826[v1752[15]] & 1) != 0)
      {
        sub_1CEFCCC44(v1742, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        goto LABEL_53;
      }

      if (v826[v1752[16]])
      {
        sub_1CEFCCC44(v1742, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

        goto LABEL_64;
      }

      v1177 = (*v242 + 384);
      v1178 = *v1177;
      v1179 = (*v1177)(v1742, 1, 0, 1, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      sub_1CF661BC0(v1179, v1798);
      v1179, v1180, v1181, v1182, v1183, v1184, v1185, v1186;
      if (*&v1798[56] == 1)
      {
        *&v1797[32] = *&v1798[32];
        *&v1797[48] = *&v1798[48];
        *&v1797[64] = *&v1798[64];
        *&v1797[80] = *&v1798[80];
        *v1797 = *v1798;
        *&v1797[16] = *&v1798[16];
        sub_1CEFCCC44(v1797, &unk_1EC4BFE10, &unk_1CFA05500);
      }

      else
      {
        v1412 = v1798[64];
        v1413 = *&v1798[80];

        v1413, v1414, v1415, v1416, v1417, v1418, v1419, v1420;
        sub_1CF1E53F8(*v1798, v1798[8], v1798[9]);
        if (v1412 == 6)
        {
          sub_1CEFCCC44(v1742, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

          goto LABEL_919;
        }
      }

      v1421 = v1178(v1742, 0, 0, 1, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      v1514 = v1421;
      sub_1CF661BC0(v1421, v1797);
      sub_1CEFCCC44(v1742, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v1515 = v1799;
      v1514, v1516, v1517, v1518, v1519, v1520, v1521, v1522;

      if (*&v1797[56] == 1)
      {
        v1796[2] = *&v1797[32];
        v1796[3] = *&v1797[48];
        v1796[4] = *&v1797[64];
        *&v1796[5] = *&v1797[80];
        v1796[0] = *v1797;
        v1796[1] = *&v1797[16];
        v531 = &unk_1EC4BFE10;
        v532 = &unk_1CFA05500;
        goto LABEL_297;
      }

      v1527 = v1797[64];
      v1528 = *&v1797[80];

      v1528, v1529, v1530, v1531, v1532, v1533, v1534, v1535;
      sub_1CF1E53F8(*v1797, v1797[8], v1797[9]);
      if (v1527 != 6)
      {
        goto LABEL_110;
      }

LABEL_919:
      v1536 = v1778;
      *v1778 = 0;
      *(v1536 + 8) = -256;
      return;
    }

    v229 = v148;
    fp_precondition(_:_:file:line:)(sub_1CF4858FC, v188, sub_1CF6B8D1C, 0, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 2467);
    v230 = v1768;
    sub_1CEFCCBDC(v1773, v1768, &qword_1EC4BFDE8, &qword_1CFA054E8);
    if ((*(v1774 + 6))(v230, 1, v1775) == 1)
    {
LABEL_49:
      sub_1CEFCCC44(v230, &qword_1EC4BFDE8, &qword_1CFA054E8);
      v231 = v188[5];
      v232 = *(**(v231 + 16) + 848);

      LOBYTE(v232) = v232(v233);

      if (((v232 & 1) != 0 || (*(v231 + 33) & 1) == 0) && (!sub_1CF75C2AC() || (sub_1CF06D930() & 1) == 0))
      {
        v326 = v1763;
        (*(*v188[4] + 240))(&v1799, 1, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        if (v151)
        {
          goto LABEL_39;
        }

        v327 = v1767;
        if ((*(v1766 + 48))(v326, 1, v1767) == 1)
        {
          sub_1CEFCCC44(v326, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        }

        else
        {
          v418 = v1751;
          sub_1CEFDA214(v326 + *(v327 + 48), v1751, type metadata accessor for ItemMetadata);
          sub_1CEFCCC44(v326, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          v419 = *(v418 + v1752[21]);
          sub_1CEFD5278(v418, type metadata accessor for ItemMetadata);
          if (!v419)
          {
            goto LABEL_110;
          }
        }

        v420 = v1778;
        *v1778 = 0;
        *(v420 + 8) = -256;
        return;
      }

      goto LABEL_53;
    }

    sub_1CEFCCBDC(v230, v81, &qword_1EC4BFDE8, &qword_1CFA054E8);
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      if (*(v81 + 9))
      {
        sub_1CF1E53F8(*v81, *(v81 + 8), 1);
        goto LABEL_49;
      }

      sub_1CF1E53F8(*v81, *(v81 + 8), *(v81 + 9));
    }

    else
    {

      sub_1CEFCCC44(v81, &unk_1EC4C4E20, &unk_1CFA05350);
    }

    v364 = v1778;
    *v1778 = 0;
    *(v364 + 8) = -256;
    sub_1CEFCCC44(v230, &qword_1EC4BFDE8, &qword_1CFA054E8);
    return;
  }

  if (v1776 <= 15)
  {
    v151 = v1810;
    v177 = v1777;
    if (v1776 != 2)
    {
      if (v1776 == 4)
      {
        v178 = *(v143 + 216);
        v179 = v1778;
        v180 = v1774;
        if (v178 == 255)
        {
          goto LABEL_111;
        }

        v181 = *(v143 + 224);
        v182 = *(v143 + 208);
        *v1797 = v182;
        v1797[8] = v178;
        if (*(v143 + 456) != 1)
        {
          goto LABEL_111;
        }

        v1779 = v181;
        v183 = v148;
        v121 = v1762;
        sub_1CEFCCBDC(v1773, v1762, &qword_1EC4BFDE8, &qword_1CFA054E8);
        if (v180[6](v121, 1, v1775) == 1)
        {
          v184 = v183;
LABEL_25:
          v185 = sub_1CEFCCC44(v121, &qword_1EC4BFDE8, &qword_1CFA054E8);
          (*(*v177 + 248))(v185);
          sub_1CF9E7B08();

          sub_1CF9E7C08();
          for (i = *&v1796[0]; (~*&v1796[0] & 0xF000000000000007) != 0; i = *&v1796[0])
          {
            if (i < 0)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA68, &qword_1CF9FAE90);
              v387 = swift_dynamicCastClass();
              if (v387 && (v388 = v387, (sub_1CF06D930() & 1) != 0) && (swift_beginAccess(), (v389 = *(v388 + 232)) != 0))
              {
                v390 = v1799;
                v391 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                v393 = v392;
                v394 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                v396 = v395;
                if (v391 == v394 && v393 == v395)
                {
                  v663 = v390;
                  v664 = v389;
                  v665 = v663;

                  v393, v666, v667, v668, v669, v670, v671, v672;
                  v396, v673, v674, v675, v676, v677, v678, v679;
LABEL_401:

                  v680 = *(v388 + 144);
                  v681 = v1778;
                  *v1778 = v680;
                  v682 = v680;

                  *(v681 + 9) = 0;
                  return;
                }

                v398 = sub_1CF9E8048();
                v399 = v390;
                v400 = v389;
                v401 = v399;

                v393, v402, v403, v404, v405, v406, v407, v408;
                v396, v409, v410, v411, v412, v413, v414, v415;
                if (v398)
                {
                  goto LABEL_401;
                }

                v151 = v1810;
                v177 = v1777;
              }

              else
              {
                v177 = v1777;
              }
            }

            sub_1CF9E7C08();
          }

          if (sub_1CF06D930())
          {
            v187 = 1;
          }

          else
          {
            v416 = (*(*v177[5] + 488))(v1797, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
            if (v151)
            {
              goto LABEL_39;
            }

            v187 = v416;
          }

          (*(*v177[4] + 432))(v1796, &v1799, (v187 & 1) == 0, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          if (v151)
          {
            goto LABEL_39;
          }

          if (*&v1796[0])
          {
            v417 = v1778;
            *v1778 = *&v1796[0];
            *(v417 + 8) = 0;
            return;
          }

          goto LABEL_110;
        }

        v365 = v1758;
        sub_1CEFCCBDC(v121, v1758, &qword_1EC4BFDE8, &qword_1CFA054E8);
        v366 = swift_getEnumCaseMultiPayload();
        if (v366 != 6)
        {
          if (v366 != 7)
          {
            if (v366 == 13)
            {
              v367 = *(v365 + 2);
              v368 = v183;

              if ((*(v365 + 9) & 1) != 0 || *(v365 + 10) && *(v365 + 10) != 23)
              {

                sub_1CF1E53F8(*v365, *(v365 + 8), *(v365 + 9));
                goto LABEL_529;
              }

              sub_1CF1E53F8(*v365, *(v365 + 8), 0);
              goto LABEL_25;
            }

            v471 = &unk_1EC4C4E20;
            v472 = &unk_1CFA05350;
            v470 = v365;
LABEL_275:
            sub_1CEFCCC44(v470, v471, v472);
            goto LABEL_529;
          }

          v469 = v365 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBE0, &unk_1CFA05320) + 48);
          if ((*v1759[1].tree)(v469, 1, v1755) == 1)
          {
            sub_1CEFCCC44(v469, &qword_1EC4C1B40, &unk_1CF9FCB70);
            v470 = v365;
            v471 = &qword_1EC4C1B40;
            v472 = &unk_1CF9FCB70;
            goto LABEL_275;
          }

          v562 = *(v469 + 16);
          v563 = *(v469 + 24);
          v564 = v183;
          sub_1CEFCCC44(v469, &unk_1EC4BE360, &qword_1CF9FE650);
          if (v563)
          {
            if (v563 == 1)
            {
              v121 = v1762;
              if (v178 != 1 || v562 != v182)
              {
LABEL_462:

                v471 = &qword_1EC4C1B40;
                v472 = &unk_1CF9FCB70;
                v470 = v1758;
                goto LABEL_275;
              }
            }

            else
            {
              v121 = v1762;
              if (v562)
              {
                if (v178 != 2 || v182 != 1)
                {
                  goto LABEL_462;
                }
              }

              else if (v178 != 2 || v182)
              {
                goto LABEL_462;
              }
            }
          }

          else
          {
            v121 = v1762;
            if (v178 || v562 != v182)
            {
              goto LABEL_462;
            }
          }

          sub_1CEFCCC44(v1758, &qword_1EC4C1B40, &unk_1CF9FCB70);
          goto LABEL_25;
        }

        v473 = v365;
        v474 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBC8, &qword_1CFA05308) + 48);
        if ((*(v1766 + 48))(v473, 1, v1767) == 1)
        {
          sub_1CEFCCC44(v473 + v474, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          v470 = v473;
          v471 = &unk_1EC4BFBB0;
          v472 = &qword_1CF9FCB90;
          goto LABEL_275;
        }

        v565 = v1746;
        sub_1CEFE55D0(v473, v1746, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        if (sub_1CF06D930())
        {
          v566 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v568 = v567;
          v570 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v571 = v566;
          v572 = v569;
          if (v571 == v570 && v568 == v569)
          {
            v573 = v183;
            v568, v574, v575, v576, v577, v578, v579, v580;
            v572, v581, v582, v583, v584, v585, v586, v587;
            sub_1CEFCCC44(v565, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
LABEL_418:
            sub_1CEFCCC44(v1758 + v474, &unk_1EC4BFBB0, &qword_1CF9FCB90);
            v121 = v1762;
            goto LABEL_25;
          }

          v726 = sub_1CF9E8048();
          v727 = v183;
          v568, v728, v729, v730, v731, v732, v733, v734;
          v572, v735, v736, v737, v738, v739, v740, v741;
          sub_1CEFCCC44(v565, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          if (v726)
          {
            goto LABEL_418;
          }
        }

        else
        {
          v633 = v183;
          sub_1CEFCCC44(v565, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        }

        sub_1CEFCCC44(v1758 + v474, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        v121 = v1762;
        goto LABEL_529;
      }

      if (v1776 != 8)
      {
        goto LABEL_965;
      }

      v234 = *(v143 + 216);
      if (v234 == 255)
      {
        goto LABEL_110;
      }

      v235 = *(v143 + 208);
      v1794[0] = v235;
      LOBYTE(v1794[1]) = v234;
      if (*(v143 + 456) != 1)
      {
        goto LABEL_110;
      }

      v1776 = v150;
      v236 = v148;
      v237 = v1764;
      sub_1CEFCCBDC(v1773, v1764, &qword_1EC4BFDE8, &qword_1CFA054E8);
      if ((*(v1774 + 6))(v237, 1, v1775) == 1)
      {
        v238 = v236;
        v239 = v237;
LABEL_223:
        sub_1CEFCCC44(v239, &qword_1EC4BFDE8, &qword_1CFA054E8);
        v429 = v177[5];
        v430 = sub_1CF06D930();
        (*(*v429 + 400))(v1798, v1794, v430 & 1, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        if (v151)
        {
          goto LABEL_39;
        }

        if (v1798[8] != 255)
        {

          v431 = v1798[8] | 0x100;
          v432 = v1778;
          *v1778 = *v1798;
          *(v432 + 8) = v431;
          return;
        }

        (*(*v177[4] + 408))(v1798, &v1799, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        v501 = *v1798;
        if (*v1798)
        {

          v502 = v1778;
          *v1778 = v501;
          *(v502 + 8) = 0;
          return;
        }

        (*(*v429 + 472))(v1798, v1794, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

        v706 = v1798[8];
        if (v1798[8] != 255)
        {
          v707 = v1778;
          *v1778 = *v1798;
          *(v707 + 8) = v706 | 0x100;
          return;
        }

        goto LABEL_110;
      }

      v369 = v237;
      v370 = v1757;
      sub_1CEFCCBDC(v369, v1757, &qword_1EC4BFDE8, &qword_1CFA054E8);
      v371 = swift_getEnumCaseMultiPayload();
      if (v371 > 21)
      {
        if (v371 != 22 && v371 != 33)
        {
          goto LABEL_298;
        }

LABEL_220:
        v425 = v236;
        v426 = &unk_1EC4C4E20;
        v427 = &unk_1CFA05350;
LABEL_221:
        v428 = v370;
LABEL_222:
        sub_1CEFCCC44(v428, v426, v427);
        v239 = v1764;
        goto LABEL_223;
      }

      if (v371 != 7)
      {
        if (v371 != 9)
        {
LABEL_298:
          v533 = &unk_1EC4C4E20;
          v534 = &unk_1CFA05350;
LABEL_299:
          v535 = v370;
LABEL_538:
          sub_1CEFCCC44(v535, v533, v534);
          v866 = v1764;
          v867 = v1778;
          *v1778 = 0;
          *(v867 + 8) = -256;
          sub_1CEFCCC44(v866, &qword_1EC4BFDE8, &qword_1CFA054E8);
          return;
        }

        goto LABEL_220;
      }

      v1775 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBE0, &unk_1CFA05320) + 48);
      v536 = *v1759[1].tree;
      v1759 = (v1759 + 48);
      v1774 = v536;
      if ((v536)(v370, 1, v1755) == 1)
      {
        v537 = v236;
        goto LABEL_536;
      }

      v590 = v370;
      v591 = v1745;
      sub_1CEFCCBDC(v590, v1745, &qword_1EC4C1B40, &unk_1CF9FCB70);
      sub_1CEFE55D0(v591, v1749, &unk_1EC4BE360, &qword_1CF9FE650);
      if (sub_1CF06D930())
      {
        v592 = *(v1749 + 16);
        if (*(v1749 + 24))
        {
          if (*(v1749 + 24) == 1)
          {
            if (v234 != 1 || v592 != v235)
            {
              goto LABEL_535;
            }
          }

          else if (v592)
          {
            if (v234 != 2 || v235 != 1)
            {
              goto LABEL_535;
            }
          }

          else if (v234 != 2 || v235)
          {
            goto LABEL_535;
          }
        }

        else if (v234 || v592 != v235)
        {
          goto LABEL_535;
        }

        v862 = v236;
        sub_1CEFCCC44(v1749, &unk_1EC4BE360, &qword_1CF9FE650);
        v863 = v1757;
        sub_1CEFCCC44(&v1757[v1775], &qword_1EC4C1B40, &unk_1CF9FCB70);
        v428 = v863;
        v426 = &qword_1EC4C1B40;
        v427 = &unk_1CF9FCB70;
        goto LABEL_222;
      }

LABEL_535:
      v864 = v236;
      sub_1CEFCCC44(v1749, &unk_1EC4BE360, &qword_1CF9FE650);
LABEL_536:
      v370 = v1757;
      v865 = v1775;
      if ((v1774)(&v1757[v1775], 1, v1755) == 1)
      {

        sub_1CEFCCC44(v370 + v865, &qword_1EC4C1B40, &unk_1CF9FCB70);
        v535 = v370;
        v533 = &qword_1EC4C1B40;
        v534 = &unk_1CF9FCB70;
        goto LABEL_538;
      }

      v868 = v370 + v865;
      v869 = v1744;
      sub_1CEFE55D0(v868, v1744, &unk_1EC4BE360, &qword_1CF9FE650);
      v870 = *(v869 + 16);
      if (*(v869 + 24))
      {
        if (*(v869 + 24) == 1)
        {
          if (v234 != 1 || v870 != v235)
          {
LABEL_556:
            sub_1CEFCCC44(v869, &unk_1EC4BE360, &qword_1CF9FE650);

            v533 = &qword_1EC4C1B40;
            v534 = &unk_1CF9FCB70;
            goto LABEL_299;
          }
        }

        else if (v870)
        {
          if (v234 != 2 || v235 != 1)
          {
            goto LABEL_556;
          }
        }

        else if (v234 != 2 || v235)
        {
          goto LABEL_556;
        }
      }

      else if (v234 || v870 != v235)
      {
        goto LABEL_556;
      }

      if (sub_1CF06D930())
      {
        sub_1CEFCCC44(v869, &unk_1EC4BE360, &qword_1CF9FE650);
LABEL_555:
        v426 = &qword_1EC4C1B40;
        v427 = &unk_1CF9FCB70;
        goto LABEL_221;
      }

      sub_1CF7F5D3C(*v869, *(v869 + 8), v1765, v1779, v1798);
      if (v151)
      {
        sub_1CEFCCC44(v869, &unk_1EC4BE360, &qword_1CF9FE650);

        sub_1CEFCCC44(v370, &qword_1EC4C1B40, &unk_1CF9FCB70);
        sub_1CEFCCC44(v1764, &qword_1EC4BFDE8, &qword_1CFA054E8);
        return;
      }

      sub_1CEFCCC44(v869, &unk_1EC4BE360, &qword_1CF9FE650);
      memcpy(v1797, v1798, sizeof(v1797));
      if (sub_1CF08B99C(v1797) == 1)
      {
        memcpy(v1796, v1798, 0x208uLL);
        sub_1CEFCCC44(v1796, &unk_1EC4BFC20, &unk_1CFA0A290);
LABEL_561:
        v177 = v1777;
        v370 = v1757;
        goto LABEL_555;
      }

      memcpy(v1796, v1798, 0x208uLL);
      if (sub_1CF902E40(*(&v1796[1] + 1)))
      {
        sub_1CEFCCBDC(v1796, v1795, &unk_1EC4BFE00, &unk_1CF9FEF00);
        sub_1CEFCCC44(v1796, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
        v890 = v1796[9];
        v891 = LOBYTE(v1796[10]);
        sub_1CF03C530(*&v1796[9], *(&v1796[9] + 1), v1796[10]);
        sub_1CEFCCC44(v1796, &unk_1EC4BFE00, &unk_1CF9FEF00);
        if (v891 != 2)
        {
          sub_1CF03D7A8(v890, *(&v890 + 1), v891);
          goto LABEL_561;
        }
      }

      else
      {
        sub_1CEFCCC44(v1796, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      }

      v1067 = v1778;
      *v1778 = 0;
      *(v1067 + 8) = -256;
      sub_1CEFCCC44(v1757, &qword_1EC4C1B40, &unk_1CF9FCB70);
      sub_1CEFCCC44(v1764, &qword_1EC4BFDE8, &qword_1CFA054E8);
      return;
    }

    v1771 = v137;
    v1772 = v149;
    v121 = v147;
    v1770 = v135;
    v1776 = v143;
    v209 = qword_1EDEA34B0;
    v210 = v148;
    if (v209 != -1)
    {
      swift_once();
    }

    v211 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v213 = v212;
    v215 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v221 = v214;
    if (v211 != v215 || v213 != v214)
    {
      v277 = sub_1CF9E8048();
      v213, v278, v279, v280, v281, v282, v283, v284;
      v221, v285, v286, v287, v288, v289, v290, v291;
      if (v277)
      {
        goto LABEL_109;
      }

      if (qword_1EDEA3498 != -1)
      {
        swift_once();
      }

      v292 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v213 = v293;
      v215 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v221 = v214;
      if (v292 != v215 || v213 != v214)
      {
        v294 = sub_1CF9E8048();
        v213, v295, v296, v297, v298, v299, v300, v301;
        v221, v302, v303, v304, v305, v306, v307, v308;
        if (v294)
        {
          goto LABEL_109;
        }

        v309 = v1776;
        v310 = sub_1CF75C2AC();
        if (v310)
        {
          if ((sub_1CF06D930() & 1) == 0)
          {
            goto LABEL_109;
          }
        }

        else if (*(v309 + 240) == 2)
        {
          goto LABEL_109;
        }

        v466 = v121;
        sub_1CEFCCBDC(v1773, v121, &qword_1EC4BFDE8, &qword_1CFA054E8);
        v151 = *(v1774 + 6);
        v1774 += 48;
        if (v151(v121, 1, v1775) != 1)
        {
          v467 = v1747;
          sub_1CEFCCBDC(v121, v1747, &qword_1EC4BFDE8, &qword_1CFA054E8);
          v468 = swift_getEnumCaseMultiPayload();
          if (v468 <= 10)
          {
            if (v468 <= 6)
            {
              if (v468 == 1)
              {

                goto LABEL_468;
              }

              if (v468 != 3)
              {
                goto LABEL_493;
              }

              goto LABEL_413;
            }

            if (v468 != 7)
            {
              if (v468 == 8)
              {
LABEL_413:
                sub_1CEFCCC44(v467, &unk_1EC4C4E20, &unk_1CFA05350);
LABEL_468:
                v466 = v121;
                goto LABEL_469;
              }

LABEL_493:

              sub_1CEFCCC44(v467, &unk_1EC4C4E20, &unk_1CFA05350);
              goto LABEL_529;
            }

            v819 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBE0, &unk_1CFA05320);
            v820 = *(v819 + 48);
            if ((*v1759[1].tree)(v467, 1, v1755) == 1)
            {

              sub_1CEFCCC44(v467 + v820, &qword_1EC4C1B40, &unk_1CF9FCB70);
              v821 = v467;
LABEL_527:
              sub_1CEFCCC44(v821, &qword_1EC4C1B40, &unk_1CF9FCB70);
              goto LABEL_529;
            }

            v850 = *(v467 + *(v819 + 64));
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD10, &unk_1CFA05430);
            swift_allocObject();
            sub_1CF06DA80();
            *v851 = xmmword_1CFA04F20;
            nullsub_1();
            sub_1CEFF5464(v852, v1798, v853, v854, v855, v856, v857, v858, v859);
            if (sub_1CF95EDE0(*v1798, v850))
            {

              v860 = v1747;
              sub_1CEFCCC44(v1747, &qword_1EC4C1B40, &unk_1CF9FCB70);
              v821 = v860 + v820;
              goto LABEL_527;
            }

            if (!v310 || *(v1776 + 456) != 1)
            {

              v1058 = v1778;
              *v1778 = 0;
              *(v1058 + 8) = -256;
              v1059 = v1747;
              sub_1CEFCCC44(v1747, &qword_1EC4C1B40, &unk_1CF9FCB70);
              sub_1CEFCCC44(v1059 + v820, &qword_1EC4C1B40, &unk_1CF9FCB70);
              sub_1CEFCCC44(v121, &qword_1EC4BFDE8, &qword_1CFA054E8);
              return;
            }

            v1011 = v1747;
            sub_1CEFCCC44(v1747, &qword_1EC4C1B40, &unk_1CF9FCB70);
            sub_1CEFCCC44(v1011 + v820, &qword_1EC4C1B40, &unk_1CF9FCB70);
LABEL_467:
            v177 = v1777;
            goto LABEL_468;
          }

          if (v468 <= 22)
          {
            if (v468 != 11)
            {
              if (v468 != 22)
              {
                goto LABEL_493;
              }

              goto LABEL_413;
            }

            if (*(v467 + 27) != 2)
            {

              sub_1CF4804C0(*(v467 + 16), *(v467 + 24));
              sub_1CF1E53F8(*v467, *(v467 + 8), *(v467 + 9));
              goto LABEL_529;
            }

            sub_1CF4804C0(*(v467 + 16), *(v467 + 24));
            sub_1CF1E53F8(*v467, *(v467 + 8), *(v467 + 9));
            goto LABEL_467;
          }

          if (v468 != 23)
          {
            if (v468 == 27)
            {
              sub_1CF1E53F8(*v467, *(v467 + 8), *(v467 + 9));
              goto LABEL_468;
            }

            goto LABEL_493;
          }

          if ((*v467 & 1) == 0)
          {
            goto LABEL_528;
          }

          v177 = v1777;
          (*(*v1777 + 152))();
          v466 = v121;
          if ((v310 & sub_1CF06D930() & 1) == 0 || (sub_1CF06D930() & 1) == 0 || (sub_1CF06D930() & 1) == 0)
          {

            v822 = v1778;
            *v1778 = 0;
            *(v822 + 8) = -256;
            sub_1CEFCCC44(v121, &qword_1EC4BFDE8, &qword_1CFA054E8);
            return;
          }
        }

LABEL_469:
        sub_1CEFCCC44(v466, &qword_1EC4BFDE8, &qword_1CFA054E8);
        v811 = v177[4];
        v812 = v1810;
        (*(*v811 + 288))(v1798, &v1799, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        if (v812)
        {
          goto LABEL_39;
        }

        v813 = *v1798;
        if (!*v1798)
        {
LABEL_660:

          v1014 = v1778;
          *v1778 = 0;
          *(v1014 + 8) = -256;
          return;
        }

        v1769 = v177[2];
        sub_1CF7EBA74(*v1798, v1765, v1779, v1798);
        v1810 = 0;
        v1768 = v813;
        (*(*v177 + 152))();
        if (v310 & sub_1CF06D930())
        {
          v814 = *(v1776 + 216);
          if (v814 != 255)
          {
            v816 = v1776[44];
            v815 = v1776[45];
            v817 = *(v1776 + 368);
            v1791[0] = v1776[26];
            LOBYTE(v1791[1]) = v814;
            if (sub_1CF06D930() & 1) != 0 && (sub_1CF06D930())
            {
              *&v1797[160] = *&v1798[160];
              *&v1797[176] = *&v1798[176];
              *&v1797[192] = *&v1798[192];
              *&v1797[208] = *&v1798[208];
              *&v1797[96] = *&v1798[96];
              *&v1797[112] = *&v1798[112];
              *&v1797[128] = *&v1798[128];
              *&v1797[144] = *&v1798[144];
              *&v1797[32] = *&v1798[32];
              *&v1797[48] = *&v1798[48];
              *&v1797[64] = *&v1798[64];
              *&v1797[80] = *&v1798[80];
              *v1797 = *v1798;
              *&v1797[16] = *&v1798[16];
              memcpy(&v1797[232], &v1798[232], 0x120uLL);
              *&v1797[224] = *&v1798[224];
              if (sub_1CF08B99C(v1797) != 1 && (sub_1CF06D930() & 1) != 0)
              {
                goto LABEL_760;
              }

              if (sub_1CF06D930())
              {
                goto LABEL_481;
              }

              if (!sub_1CF95EEA0(512, v816, v815, v817))
              {
LABEL_760:
                memcpy(v1796, v1798, 0x208uLL);
                sub_1CEFCCC44(v1796, &unk_1EC4BFD80, &unk_1CFA0A2A0);

                v1169 = v1778;
                *v1778 = v1768;
                *(v1169 + 8) = 0;
                return;
              }

              v1167 = v1810;
              (*(*v1777[5] + 288))(v1795, v1791, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
              v1810 = v1167;
              if (v1167)
              {
                memcpy(v1796, v1798, 0x208uLL);
                v1168 = v1796;
LABEL_820:
                sub_1CEFCCC44(v1168, &unk_1EC4BFD80, &unk_1CFA0A2A0);

                goto LABEL_39;
              }

              v1295 = LOBYTE(v1795[1]);
              if (LOBYTE(v1795[1]) == 255)
              {
                memcpy(v1796, v1798, 0x208uLL);
                sub_1CEFCCC44(v1796, &unk_1EC4BFD80, &unk_1CFA0A2A0);

LABEL_924:
                v1544 = v1778;
                *v1778 = v1768;
                *(v1544 + 8) = 0;
                return;
              }

              v1296 = v1795[0];
              v1297 = v1810;
              sub_1CF7F5D3C(v1795[0], v1795[1], v1765, v1779, v1796);
              v1810 = v1297;
              memcpy(v1795, v1796, sizeof(v1795));
              if (sub_1CF08B99C(v1795) == 1)
              {
                memcpy(v1793, v1798, sizeof(v1793));
                sub_1CEFCCC44(v1793, &unk_1EC4BFD80, &unk_1CFA0A2A0);

                memcpy(v1794, v1796, sizeof(v1794));
                sub_1CEFCCC44(v1794, &unk_1EC4BFC20, &unk_1CFA0A290);
                goto LABEL_924;
              }

              memcpy(v1794, v1796, sizeof(v1794));
              sub_1CEFCCC44(v1794, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
              if ((sub_1CF06D930() & 1) == 0)
              {
                memcpy(v1793, v1798, sizeof(v1793));
                sub_1CEFCCC44(v1793, &unk_1EC4BFD80, &unk_1CFA0A2A0);

                v1586 = v1778;
                *v1778 = v1296;
                *(v1586 + 8) = v1295 | 0x100;
                return;
              }
            }
          }
        }

LABEL_481:
        memcpy(v1796, v1798, 0x208uLL);
        memcpy(v1797, v1798, sizeof(v1797));
        if (sub_1CF08B99C(v1797) == 1)
        {
          goto LABEL_838;
        }

        memcpy(v1795, v1796, sizeof(v1795));
        if (LOBYTE(v1795[27]) == 255)
        {
          goto LABEL_838;
        }

        v1791[0] = v1795[26];
        LOBYTE(v1791[1]) = v1795[27];
        v818 = sub_1CF946F4C(16, v1795[28]);
        if (!sub_1CF902E40(v818))
        {
          goto LABEL_838;
        }

        if (LOBYTE(v1795[57]) <= 1u && LOBYTE(v1795[57]))
        {
          v1161 = v1777[3];
          v1162 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
          v1163 = *(*v1161 + 320);
          sub_1CEFCCBDC(v1796, v1794, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          v1164 = v1810;
          v1165 = v1163(v1791, v1162, 8512, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          v1810 = v1164;
          if (v1164)
          {
            goto LABEL_819;
          }

          if (v1165)
          {
            sub_1CEFCCC44(v1795, &unk_1EC4BFC90, &unk_1CFA053E0);
            memcpy(v1794, v1798, sizeof(v1794));
            sub_1CEFCCC44(v1794, &unk_1EC4BFD80, &unk_1CFA0A2A0);

            v1166 = v1778;
            *v1778 = 0;
            *(v1166 + 8) = -256;
            return;
          }
        }

        else
        {
          sub_1CEFCCBDC(v1796, v1794, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        }

        if (v310)
        {
          if (*(v1776 + 456) == 1)
          {
            v1096 = v1777[5];
            v1804 = v1776[26];
            v1097 = *(v1776 + 216);
            v1805 = v1097;
            LOBYTE(v1793[1]) = v1097;
            v1793[0] = v1804;
            if (v1097 == 255)
            {
LABEL_966:
              __break(1u);
              goto LABEL_967;
            }

            v1098 = v1810;
            v1099 = (*(*v1096 + 560))(v1791, v1793, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
            v1810 = v1098;
            if (v1098)
            {
              goto LABEL_819;
            }

            if (v1099)
            {
              v1100 = sub_1CF902E34();
              if ((v1100 & 1) == 0)
              {
                goto LABEL_897;
              }

              LOBYTE(v1793[1]) = v1805;
              v1793[0] = v1804;
              if (v1805 == 255)
              {
LABEL_967:
                __break(1u);
                goto LABEL_968;
              }

              v1101 = v1810;
              v1100 = (*(*v1096 + 568))(v1791, v1793, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
              v1810 = v1101;
              if (!v1101)
              {
                if (v1100)
                {
                  sub_1CF19BFD0(v1100);
                  v1102 = swift_allocObject();
                  v1103 = v1776;
                  memcpy((v1102 + 16), v1776, 0x208uLL);
                  v1104 = swift_allocObject();
                  *(v1104 + 16) = sub_1CF48093C;
                  *(v1104 + 24) = v1102;
                  v1105 = v1791[0];
                  v1106 = v1791[1];
                  v1107 = swift_allocObject();
                  *(v1107 + 16) = v1105;
                  *(v1107 + 24) = v1106;
                  v1108 = swift_allocObject();
                  *(v1108 + 16) = sub_1CF485958;
                  *(v1108 + 24) = v1107;
                  sub_1CEFCCBDC(v1103, v1794, &unk_1EC4BFC90, &unk_1CFA053E0);
                  v1779 = sub_1CF9E6108();
                  LODWORD(v1777) = sub_1CF9E72C8();
                  v1109 = swift_allocObject();
                  *(v1109 + 16) = 32;
                  v1110 = swift_allocObject();
                  *(v1110 + 16) = 8;
                  v1111 = swift_allocObject();
                  *(v1111 + 16) = sub_1CF48595C;
                  *(v1111 + 24) = v1104;
                  v1112 = swift_allocObject();
                  *(v1112 + 16) = sub_1CF485960;
                  *(v1112 + 24) = v1111;
                  v1113 = swift_allocObject();
                  *(v1113 + 16) = 32;
                  v1114 = swift_allocObject();
                  *(v1114 + 16) = 8;
                  v1115 = swift_allocObject();
                  *(v1115 + 16) = sub_1CF48595C;
                  *(v1115 + 24) = v1108;
                  v1116 = swift_allocObject();
                  *(v1116 + 16) = sub_1CF485960;
                  *(v1116 + 24) = v1115;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE30, &unk_1CFA05520);
                  swift_allocObject();
                  v1117 = sub_1CF06DA80();
                  *v1118 = sub_1CF485A70;
                  v1118[1] = v1109;
                  v1118[2] = sub_1CF485A70;
                  v1118[3] = v1110;
                  v1118[4] = sub_1CF485884;
                  v1118[5] = v1112;
                  v1118[6] = sub_1CF485A70;
                  v1118[7] = v1113;
                  v1118[8] = sub_1CF485A70;
                  v1118[9] = v1114;
                  v1118[10] = sub_1CF485884;
                  v1118[11] = v1116;

                  v1119 = v1114;

                  v1117, v1120, v1121, v1122, v1123, v1124, v1125, v1126;
                  if (os_log_type_enabled(v1779, v1777))
                  {
                    v1127 = sub_1CF1B5D40(22);
                    v1128 = swift_slowAlloc();
                    v1789[0] = 0;
                    v1786[0] = v1128;
                    v1776 = v1127;
                    *v1127 = 514;
                    v1790[0] = v1127 + 2;
                    v1793[0] = sub_1CF485A70;
                    v1793[1] = v1109;
                    v1129 = v1810;
                    sub_1CF1B5D64(v1793, v1790, v1789, v1786);
                    v1130 = v1129;
                    if (!v1129)
                    {

                      v1793[0] = sub_1CF485A70;
                      v1793[1] = v1110;
                      sub_1CF1B5D64(v1793, v1790, v1789, v1786);

                      v1793[0] = sub_1CF485884;
                      v1793[1] = v1112;
                      sub_1CF1B5D64(v1793, v1790, v1789, v1786);

                      v1793[0] = sub_1CF485A70;
                      v1793[1] = v1113;
                      sub_1CF1B5D64(v1793, v1790, v1789, v1786);

                      v1793[0] = sub_1CF485A70;
                      v1793[1] = v1119;
                      sub_1CF1B5D64(v1793, v1790, v1789, v1786);

                      v1793[0] = sub_1CF485884;
                      v1793[1] = v1116;
                      sub_1CF1B5D64(v1793, v1790, v1789, v1786);
                      v1810 = 0;

                      _os_log_impl(&dword_1CEFC7000, v1779, v1777, "♻️  move of %s -> %s: breaking concurrent rename cycle", v1776, 0x16u);
                      swift_arrayDestroy();
                      MEMORY[0x1D386CDC0](v1128, -1, -1);
                      sub_1CF1B5D48();
                    }

                    goto LABEL_970;
                  }

                  (*(v1722 + 8))(v1712, v1723);
                  goto LABEL_723;
                }

LABEL_897:
                sub_1CF19BFD0(v1100);
                v1477 = swift_allocObject();
                v1478 = v1776;
                memcpy((v1477 + 16), v1776, 0x208uLL);
                v1479 = swift_allocObject();
                *(v1479 + 16) = sub_1CF485AA0;
                *(v1479 + 24) = v1477;
                v1480 = v1791[0];
                v1481 = v1791[1];
                v1482 = swift_allocObject();
                *(v1482 + 16) = v1480;
                *(v1482 + 24) = v1481;
                v1483 = swift_allocObject();
                *(v1483 + 16) = sub_1CF485958;
                *(v1483 + 24) = v1482;
                sub_1CEFCCBDC(v1478, v1794, &unk_1EC4BFC90, &unk_1CFA053E0);
                v1774 = sub_1CF9E6108();
                LODWORD(v1779) = sub_1CF9E72C8();
                v1484 = swift_allocObject();
                *(v1484 + 16) = 32;
                v1485 = swift_allocObject();
                *(v1485 + 16) = 8;
                v1486 = swift_allocObject();
                *(v1486 + 16) = sub_1CF48595C;
                *(v1486 + 24) = v1479;
                v1487 = swift_allocObject();
                *(v1487 + 16) = sub_1CF485960;
                *(v1487 + 24) = v1486;
                v1488 = swift_allocObject();
                *(v1488 + 16) = 32;
                v1489 = swift_allocObject();
                *(v1489 + 16) = 8;
                v1490 = swift_allocObject();
                *(v1490 + 16) = sub_1CF48595C;
                *(v1490 + 24) = v1483;
                v1491 = swift_allocObject();
                *(v1491 + 16) = sub_1CF485960;
                *(v1491 + 24) = v1490;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE30, &unk_1CFA05520);
                swift_allocObject();
                v1492 = sub_1CF06DA80();
                *v1493 = sub_1CF485A70;
                v1493[1] = v1484;
                v1493[2] = sub_1CF485A70;
                v1493[3] = v1485;
                v1493[4] = sub_1CF485884;
                v1493[5] = v1487;
                v1493[6] = sub_1CF485A70;
                v1493[7] = v1488;
                v1493[8] = sub_1CF485A70;
                v1493[9] = v1489;
                v1493[10] = sub_1CF485884;
                v1493[11] = v1491;

                v1776 = v1489;

                v1492, v1494, v1495, v1496, v1497, v1498, v1499, v1500;
                v1501 = v1774;
                if (!os_log_type_enabled(v1774, v1779))
                {

                  (*(v1722 + 8))(v1719, v1723);
                  v1523 = v1791[1];
                  v1524 = v1731;
                  *v1731 = v1791[0];
                  *(v1524 + 8) = v1523;
                  *(v1524 + 9) = 1;
                  swift_storeEnumTagMultiPayload();
                  (*(*v1777 + 312))(v1524);
                  sub_1CEFCCC44(v1524, &unk_1EC4C4E20, &unk_1CFA05350);
                  sub_1CEFCCC44(v1795, &unk_1EC4BFC90, &unk_1CFA053E0);
                  memcpy(v1794, v1798, sizeof(v1794));
                  sub_1CEFCCC44(v1794, &unk_1EC4BFD80, &unk_1CFA0A2A0);

                  v1525 = LOBYTE(v1791[1]) | 0x100;
                  v1526 = v1778;
                  *v1778 = v1791[0];
                  *(v1526 + 8) = v1525;
                  return;
                }

                v1502 = sub_1CF1B5D40(22);
                v1503 = swift_slowAlloc();
                v1790[0] = 0;
                v1789[0] = v1503;
                v1773 = v1502;
                *v1502 = 514;
                v1793[0] = (v1502 + 2);
                v1794[0] = sub_1CF485A70;
                v1794[1] = v1484;
                v1129 = v1810;
                sub_1CF1B5D64(v1794, v1793, v1790, v1789);
                v1130 = v1129;
                if (!v1129)
                {

                  v1794[0] = sub_1CF485A70;
                  v1794[1] = v1485;
                  sub_1CF1B5D64(v1794, v1793, v1790, v1789);

                  v1794[0] = sub_1CF485884;
                  v1794[1] = v1487;
                  sub_1CF1B5D64(v1794, v1793, v1790, v1789);

                  v1794[0] = sub_1CF485A70;
                  v1794[1] = v1488;
                  sub_1CF1B5D64(v1794, v1793, v1790, v1789);

                  v1794[0] = sub_1CF485A70;
                  v1794[1] = v1776;
                  sub_1CF1B5D64(v1794, v1793, v1790, v1789);

                  v1794[0] = sub_1CF485884;
                  v1794[1] = v1491;
                  sub_1CF1B5D64(v1794, v1793, v1790, v1789);
                  v1810 = 0;

                  _os_log_impl(&dword_1CEFC7000, v1501, v1779, "♻️  move of %s -> %s: reparent cycle detected", v1773, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x1D386CDC0](v1503, -1, -1);
                  sub_1CF1B5D48();
                }

LABEL_970:

                while (1)
                {

                  __break(1u);
                }
              }

              goto LABEL_819;
            }
          }

          v1157 = v1771;
          sub_1CEFCCBDC(v1773, v1771, &qword_1EC4BFDE8, &qword_1CFA054E8);
          if (v151(v1157, 1, v1775) == 1)
          {
            v1158 = &qword_1EC4BFDE8;
            v1159 = &qword_1CFA054E8;
LABEL_810:
            sub_1CEFCCC44(v1771, v1158, v1159);
LABEL_811:
            v1237 = v1770;
            sub_1CEFCCBDC(v1773, v1770, &qword_1EC4BFDE8, &qword_1CFA054E8);
            if (v151(v1237, 1, v1775) == 1)
            {
              v1238 = &qword_1EC4BFDE8;
              v1239 = &qword_1CFA054E8;
            }

            else
            {
              if (swift_getEnumCaseMultiPayload() == 3)
              {
                sub_1CEFCCC44(v1795, &unk_1EC4BFC90, &unk_1CFA053E0);
                memcpy(v1794, v1798, sizeof(v1794));
                sub_1CEFCCC44(v1794, &unk_1EC4BFD80, &unk_1CFA0A2A0);

                sub_1CEFCCC44(v1770, &unk_1EC4C4E20, &unk_1CFA05350);
                v1240 = LOBYTE(v1791[1]) | 0x100;
                v1241 = v1778;
                *v1778 = v1791[0];
                *(v1241 + 8) = v1240;
                return;
              }

              v1238 = &unk_1EC4C4E20;
              v1239 = &unk_1CFA05350;
            }

            sub_1CEFCCC44(v1770, v1238, v1239);
            v1243 = v1810;
            (*(*v1777[5] + 240))(v1791, 1, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
            v1810 = v1243;
            if (v1243)
            {
              goto LABEL_819;
            }

            if ((*v1759[1].tree)(v1733, 1, v1755) == 1)
            {
              sub_1CEFCCC44(v1795, &unk_1EC4BFC90, &unk_1CFA053E0);
              sub_1CEFCCC44(v1733, &qword_1EC4C1B40, &unk_1CF9FCB70);
            }

            else
            {
              v1300 = v1733;
              v1301 = sub_1CF7E6990();
              sub_1CEFCCC44(v1795, &unk_1EC4BFC90, &unk_1CFA053E0);
              sub_1CEFCCC44(v1300, &unk_1EC4BE360, &qword_1CF9FE650);
              if ((v1301 & 1) == 0)
              {
                goto LABEL_724;
              }
            }

LABEL_838:
            memcpy(v1794, v1798, sizeof(v1794));
            memcpy(v1795, v1798, sizeof(v1795));
            if (sub_1CF08B99C(v1795) == 1)
            {
              memcpy(v1793, v1798, sizeof(v1793));
              sub_1CEFCCC44(v1793, &unk_1EC4BFD80, &unk_1CFA0A2A0);

LABEL_857:
              v1321 = v1778;
              *v1778 = v1768;
              *(v1321 + 8) = 0;
              return;
            }

            memcpy(v1793, v1794, sizeof(v1793));
            v1302 = v1793[0];
            if (!v1793[0])
            {
              memcpy(v1790, v1798, 0x208uLL);
              memcpy(v1791, v1794, 0x208uLL);
              v1312 = &unk_1EC4BFC90;
              v1313 = &unk_1CFA053E0;
              sub_1CEFCCBDC(v1791, v1789, &unk_1EC4BFC90, &unk_1CFA053E0);
              sub_1CEFCCC44(v1790, &unk_1EC4BFD80, &unk_1CFA0A2A0);

              v1314 = v1793;
LABEL_855:
              v1315 = v1312;
              v1316 = v1313;
              goto LABEL_856;
            }

            v1792 = v1793[0];
            v1303 = *(v1776 + 216);
            if (v1303 == 255)
            {
              memcpy(v1791, v1798, 0x208uLL);
              sub_1CEFCCBDC(v1794, v1790, &unk_1EC4BFD80, &unk_1CFA0A2A0);
              goto LABEL_848;
            }

            v1787 = v1776[26];
            v1788 = v1303;
            (*(v1766 + 56))(v1741, 1, 1, v1767);
            v1304 = v1793[13];
            v1305 = v1793[14];
            v1306 = v1793[15];
            if (sub_1CF95EEA0(1024, v1793[13], v1793[14], v1793[15]))
            {
              v1307 = *(*v811 + 240);
              sub_1CEFCCBDC(v1794, v1791, &unk_1EC4BFD80, &unk_1CFA0A2A0);
              v1308 = v1302;
              v1309 = v1810;
              v1307(&v1792, 1, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
              v1810 = v1309;
              if (!v1309)
              {
                v1310 = v1741;
                sub_1CEFCCC44(v1741, &unk_1EC4BFBB0, &qword_1CF9FCB90);
                v1311 = v1735;
LABEL_845:
                sub_1CEFE55D0(v1311, v1310, &unk_1EC4BFBB0, &qword_1CF9FCB90);
LABEL_853:
                v1320 = v1737;
                sub_1CEFCCBDC(v1741, v1737, &unk_1EC4BFBB0, &qword_1CF9FCB90);
                if ((*(v1766 + 48))(v1320, 1, v1767) == 1)
                {
                  v1312 = &unk_1EC4BFBB0;
                  v1313 = &qword_1CF9FCB90;
                  sub_1CEFCCC44(v1741, &unk_1EC4BFBB0, &qword_1CF9FCB90);

                  memcpy(v1791, v1798, 0x208uLL);
                  sub_1CEFCCC44(v1791, &unk_1EC4BFD80, &unk_1CFA0A2A0);

                  sub_1CEFCCC44(v1793, &unk_1EC4BFC90, &unk_1CFA053E0);
                  v1314 = v1737;
                  goto LABEL_855;
                }

                v1322 = v1734;
                sub_1CEFE55D0(v1737, v1734, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
                v1323 = *(v1322 + 88);
                v1790[0] = *(v1322 + 80);
                v1790[1] = v1323;
                v1789[0] = *v1322;
                v1324 = *(*v811 + 256);
                v1774 = v1789[0];
                v1776 = v1789[0];

                v1325 = v1810;
                v1326 = v1324(v1322 + 8, v1790, v1789, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
                v1810 = v1325;
                if (v1325)
                {

                  v1790[1], v1327, v1328, v1329, v1330, v1331, v1332, v1333;
                  sub_1CEFCCC44(v1734, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
                  sub_1CEFCCC44(v1741, &unk_1EC4BFBB0, &qword_1CF9FCB90);

                  goto LABEL_860;
                }

                v1337 = v1326;

                v1790[1], v1338, v1339, v1340, v1341, v1342, v1343, v1344;
                if (sub_1CF55B5A0(v1337))
                {
                  v1352 = 0;
                  v1760 = (v1722 + 8);
                  while (1)
                  {
                    sub_1CF90333C();
                    v911 = (v1352 + 1);
                    if (__OFADD__(v1352, 1))
                    {
                      break;
                    }

                    v1361 = *(&v1337[1].super.isa + v1352);
                    v1362 = v1810;
                    sub_1CF7EBA74(v1361, v1765, v1779, v1791);
                    v1810 = v1362;
                    if (v1362)
                    {
                      v1337, v1363, v1364, v1365, v1366, v1367, v1368, v1369;

                      sub_1CEFCCC44(v1734, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
                      sub_1CEFCCC44(v1741, &unk_1EC4BFBB0, &qword_1CF9FCB90);

                      memcpy(v1790, v1798, 0x208uLL);
                      v1334 = v1790;
                      goto LABEL_861;
                    }

                    memcpy(v1789, v1791, sizeof(v1789));
                    memcpy(v1790, v1791, 0x208uLL);
                    if (sub_1CF08B99C(v1790) == 1)
                    {
                      memcpy(v1786, v1791, sizeof(v1786));
                      v1353 = v1786;
                    }

                    else
                    {
                      memcpy(v1786, v1789, sizeof(v1786));
                      memcpy(v1806, v1789, sizeof(v1806));
                      if (sub_1CF75C2AC() && LOBYTE(v1786[27]) != 255)
                      {
                        v1783 = v1786[26];
                        v1784 = v1786[27];
                        v1370 = *(*v1777[5] + 728);
                        sub_1CEFCCBDC(v1789, v1785, &unk_1EC4BFD80, &unk_1CFA0A2A0);
                        v1371 = v1810;
                        v1372 = v1370(&v1787, &v1783, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
                        v1810 = v1371;
                        if (v1371)
                        {
                          v1337, v1373, v1374, v1375, v1376, v1377, v1378, v1379;
                          sub_1CEFCCC44(v1786, &unk_1EC4BFC90, &unk_1CFA053E0);
                          memcpy(v1782, v1791, sizeof(v1782));
                          sub_1CEFCCC44(v1782, &unk_1EC4BFD80, &unk_1CFA0A2A0);
                          sub_1CEFCCC44(v1734, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
                          sub_1CEFCCC44(v1741, &unk_1EC4BFBB0, &qword_1CF9FCB90);

                          memcpy(v1785, v1798, sizeof(v1785));
                          sub_1CEFCCC44(v1785, &unk_1EC4BFD80, &unk_1CFA0A2A0);

                          goto LABEL_862;
                        }

                        if (v1372)
                        {
                          sub_1CF19BFD0(v1372);
                          v1380 = v1799;
                          v1773 = v1799;
                          v1381 = swift_allocObject();
                          *(v1381 + 16) = v1380;
                          v1382 = swift_allocObject();
                          *(v1382 + 16) = sub_1CF4858A0;
                          *(v1382 + 24) = v1381;
                          v1383 = v1720;
                          sub_1CEFCCBDC(v1734, v1720, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
                          v1384 = (*(v1766 + 80) + 16) & ~*(v1766 + 80);
                          v1385 = swift_allocObject();
                          sub_1CEFE55D0(v1383, v1385 + v1384, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
                          v1386 = swift_allocObject();
                          v1764 = v1386;
                          *(v1386 + 16) = sub_1CF4808A8;
                          *(v1386 + 24) = v1385;
                          v1387 = v1773;
                          v1770 = sub_1CF9E6108();
                          LODWORD(v1767) = sub_1CF9E72C8();
                          v1771 = swift_allocObject();
                          *(v1771 + 16) = 32;
                          v1772 = swift_allocObject();
                          v1772[16] = 8;
                          v1388 = swift_allocObject();
                          *(v1388 + 16) = sub_1CF485964;
                          *(v1388 + 24) = v1382;
                          v1389 = swift_allocObject();
                          *(v1389 + 2) = sub_1CF485960;
                          *(v1389 + 3) = v1388;
                          v1773 = swift_allocObject();
                          v1773[16] = 32;
                          v1390 = swift_allocObject();
                          *(v1390 + 16) = 8;
                          v1391 = swift_allocObject();
                          v1392 = v1764;
                          *(v1391 + 16) = sub_1CF480934;
                          *(v1391 + 24) = v1392;
                          v1393 = swift_allocObject();
                          *v1393->tree = sub_1CF485960;
                          *v1393->tester = v1391;
                          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE30, &unk_1CFA05520);
                          swift_allocObject();
                          v1761 = sub_1CF06DA80();
                          v1394 = v1771;
                          v1395 = v1772;
                          *v1396 = sub_1CF485A70;
                          v1396[1] = v1394;
                          v1396[2] = sub_1CF485A70;
                          v1396[3] = v1395;
                          v1396[4] = sub_1CF485884;
                          v1396[5] = v1389;
                          v1397 = v1773;
                          v1396[6] = sub_1CF485A70;
                          v1396[7] = v1397;
                          v1396[8] = sub_1CF485A70;
                          v1396[9] = v1390;
                          v1396[10] = sub_1CF485884;
                          v1396[11] = v1393;

                          v1763 = v1389;

                          v1764 = v1390;

                          v1762 = v1393;

                          v1761, v1398, v1399, v1400, v1401, v1402, v1403, v1404;
                          if (os_log_type_enabled(v1770, v1767))
                          {
                            v1405 = sub_1CF1B5D40(22);
                            v1406 = swift_slowAlloc();
                            v1781 = 0;
                            *v1405 = 514;
                            v1761 = v1406;
                            v1780 = v1406;
                            v1782[0] = v1405 + 2;
                            v1785[0] = sub_1CF485A70;
                            v1785[1] = v1771;
                            v1407 = v1810;
                            sub_1CF1B5D64(v1785, v1782, &v1781, &v1780);
                            v151 = v1407;
                            if (!v1407)
                            {

                              v1785[0] = sub_1CF485A70;
                              v1785[1] = v1772;
                              sub_1CF1B5D64(v1785, v1782, &v1781, &v1780);

                              v1785[0] = sub_1CF485884;
                              v1785[1] = v1763;
                              sub_1CF1B5D64(v1785, v1782, &v1781, &v1780);

                              v1785[0] = sub_1CF485A70;
                              v1785[1] = v1773;
                              sub_1CF1B5D64(v1785, v1782, &v1781, &v1780);

                              v1785[0] = sub_1CF485A70;
                              v1785[1] = v1764;
                              sub_1CF1B5D64(v1785, v1782, &v1781, &v1780);

                              v1785[0] = sub_1CF485884;
                              v1785[1] = v1762;
                              sub_1CF1B5D64(v1785, v1782, &v1781, &v1780);
                              v1810 = 0;

                              _os_log_impl(&dword_1CEFC7000, v1770, v1767, "♻️  move of %s -> %s: reparent cycle detected", v1405, 0x16u);
                              v1408 = v1761;
                              swift_arrayDestroy();
                              MEMORY[0x1D386CDC0](v1408, -1, -1);
                              sub_1CF1B5D48();
                            }

LABEL_968:

                            while (1)
                            {

                              __break(1u);
                            }
                          }

                          (*v1760)(v1732, v1723);
                          v1409 = v1731;
                          *v1731 = v1774;
                          *(v1409 + 8) = 0;
                          swift_storeEnumTagMultiPayload();
                          v1410 = *(*v1777 + 312);
                          v1411 = v1776;
                          v1410(v1409);
                          sub_1CEFCCC44(v1409, &unk_1EC4C4E20, &unk_1CFA05350);
                        }

                        sub_1CEFCCC44(v1786, &unk_1EC4BFC90, &unk_1CFA053E0);
                      }

                      memcpy(v1785, v1791, sizeof(v1785));
                      v1353 = v1785;
                    }

                    sub_1CEFCCC44(v1353, &unk_1EC4BFD80, &unk_1CFA0A2A0);
                    ++v1352;
                    if (v911 == sub_1CF55B5A0(v1337))
                    {
                      goto LABEL_882;
                    }
                  }

                  __break(1u);
                  goto LABEL_957;
                }

LABEL_882:
                v1337, v1345, v1346, v1347, v1348, v1349, v1350, v1351;
                sub_1CEFCCC44(v1734, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
                sub_1CEFCCC44(v1741, &unk_1EC4BFBB0, &qword_1CF9FCB90);

                memcpy(v1791, v1798, 0x208uLL);
LABEL_848:
                sub_1CEFCCC44(v1791, &unk_1EC4BFD80, &unk_1CFA0A2A0);

                v1315 = &unk_1EC4BFC90;
                v1316 = &unk_1CFA053E0;
                v1314 = v1793;
LABEL_856:
                sub_1CEFCCC44(v1314, v1315, v1316);
                goto LABEL_857;
              }
            }

            else
            {
              if (!sub_1CF95EEA0(2, v1304, v1305, v1306))
              {
                sub_1CEFCCBDC(v1794, v1791, &unk_1EC4BFD80, &unk_1CFA0A2A0);
                v1319 = v1302;
                goto LABEL_853;
              }

              v1317 = *(*v811 + 720);
              sub_1CEFCCBDC(v1794, v1791, &unk_1EC4BFD80, &unk_1CFA0A2A0);
              v1308 = v1302;
              v1318 = v1810;
              v1317(v1789, &v1792, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
              v1810 = v1318;
              if (!v1318)
              {
                v1335 = v1789[0];
                if (!v1789[0])
                {
                  goto LABEL_853;
                }

                v1790[0] = v1789[0];
                v1336 = v1810;
                (*(*v811 + 240))(v1790, 1, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
                v1810 = v1336;

                v1310 = v1741;
                sub_1CEFCCC44(v1741, &unk_1EC4BFBB0, &qword_1CF9FCB90);
                v1311 = v1729;
                goto LABEL_845;
              }
            }

            sub_1CEFCCC44(v1741, &unk_1EC4BFBB0, &qword_1CF9FCB90);

LABEL_860:
            memcpy(v1791, v1798, 0x208uLL);
            v1334 = v1791;
LABEL_861:
            sub_1CEFCCC44(v1334, &unk_1EC4BFD80, &unk_1CFA0A2A0);

LABEL_862:
            sub_1CEFCCC44(v1793, &unk_1EC4BFC90, &unk_1CFA053E0);
            return;
          }

          if (swift_getEnumCaseMultiPayload() != 3)
          {
            v1158 = &unk_1EC4C4E20;
            v1159 = &unk_1CFA05350;
            goto LABEL_810;
          }

          v1209 = *v1771;
          v1210 = *(v1771 + 8);
          if ((*(v1771 + 9) & 1) == 0)
          {
            sub_1CF1E53F8(v1209, v1210, 0);
            goto LABEL_811;
          }

          if (LOBYTE(v1791[1]))
          {
            if (LOBYTE(v1791[1]) == 1)
            {
              if (v1210 != 1 || v1791[0] != v1209)
              {
                goto LABEL_811;
              }
            }

            else if (v1791[0])
            {
              if (v1210 != 2 || v1209 != 1)
              {
                goto LABEL_811;
              }
            }

            else if (v1210 != 2 || v1209)
            {
              goto LABEL_811;
            }
          }

          else if (*(v1771 + 8) || LODWORD(v1791[0]) != v1209)
          {
            goto LABEL_811;
          }

LABEL_723:
          sub_1CEFCCC44(v1795, &unk_1EC4BFC90, &unk_1CFA053E0);
LABEL_724:
          memcpy(v1794, v1798, sizeof(v1794));
          sub_1CEFCCC44(v1794, &unk_1EC4BFD80, &unk_1CFA0A2A0);

          goto LABEL_725;
        }

        if (sub_1CF902E34())
        {
          goto LABEL_723;
        }

        if ((sub_1CF06EE7C() & 1) == 0)
        {
          sub_1CEFCCC44(v1795, &unk_1EC4BFC90, &unk_1CFA053E0);
          memcpy(v1794, v1798, sizeof(v1794));
          sub_1CEFCCC44(v1794, &unk_1EC4BFD80, &unk_1CFA0A2A0);

          goto LABEL_793;
        }

        v1160 = v1810;
        (*(*v1777[5] + 240))(v1791, 1, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        v1810 = v1160;
        if (!v1160)
        {
          if ((*v1759[1].tree)(v1730, 1, v1755) == 1)
          {
            sub_1CEFCCC44(v1795, &unk_1EC4BFC90, &unk_1CFA053E0);
            memcpy(v1794, v1798, sizeof(v1794));
            sub_1CEFCCC44(v1794, &unk_1EC4BFD80, &unk_1CFA0A2A0);

            sub_1CEFCCC44(v1730, &qword_1EC4C1B40, &unk_1CF9FCB70);
          }

          else
          {
            v1512 = v1730;
            v1513 = sub_1CF7E6990();
            sub_1CEFCCC44(v1795, &unk_1EC4BFC90, &unk_1CFA053E0);
            memcpy(v1794, v1798, sizeof(v1794));
            sub_1CEFCCC44(v1794, &unk_1EC4BFD80, &unk_1CFA0A2A0);

            sub_1CEFCCC44(v1512, &unk_1EC4BE360, &qword_1CF9FE650);
            if ((v1513 & 1) == 0)
            {
              goto LABEL_725;
            }
          }

LABEL_793:
          v1214 = LOBYTE(v1791[1]) | 0x100;
          v1215 = v1778;
          *v1778 = v1791[0];
          *(v1215 + 8) = v1214;
          return;
        }

LABEL_819:
        sub_1CEFCCC44(v1795, &unk_1EC4BFC90, &unk_1CFA053E0);
        memcpy(v1794, v1798, sizeof(v1794));
        v1168 = v1794;
        goto LABEL_820;
      }
    }

    v213, v214, v215, v216, v217, v218, v219, v220;
    v221, v222, v223, v224, v225, v226, v227, v228;
LABEL_109:

    goto LABEL_110;
  }

  v151 = v1810;
  v153 = v1775;
  if (v1776 <= 511)
  {
    v154 = v1777;
    if (v1776 == 16)
    {
      v155 = *(v143 + 216);
      if (v155 != 255)
      {
        v156 = v148;
        v157 = *(v143 + 208);
        *v1798 = v157;
        v1798[8] = v155;
        sub_1CEFCCBDC(v1773, v121, &qword_1EC4BFDE8, &qword_1CFA054E8);
        if ((*(v1774 + 6))(v121, 1, v153) == 1)
        {
          v158 = v156;
LABEL_9:
          sub_1CEFCCC44(v121, &qword_1EC4BFDE8, &qword_1CFA054E8);
          v159 = v154[3];
          sub_1CF8DCAA0(v160);
          swift_allocObject();
          sub_1CF06DA80();
          *v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA48, &qword_1CF9FAE48);
          nullsub_1();
          v163 = v162;
          v164 = (*(*v159 + 304))(v1798, v162, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          if (v151)
          {
            v163, v165, v166, v167, v168, v169, v170, v171;
LABEL_39:

            return;
          }

          v351 = v164;
          v163, v165, v166, v167, v168, v169, v170, v171;
          v352 = sub_1CF663828();
          v351, v353, v354, v355, v356, v357, v358, v359;
          if (v352)
          {
            v360 = *(v352 + 96);
            v361 = *(v352 + 104);
            v362 = *(v352 + 112);
            sub_1CF03C530(v360, v361, *(v352 + 112));

            if (v362 == 1)
            {

              v363 = v1778;
              *v1778 = 0;
              *(v363 + 8) = -256;
              return;
            }

            sub_1CF03D7A8(v360, v361, v362);
          }

          (*(*v154[5] + 416))(v1797, v1798, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

          v445 = v1797[8];
          if (v1797[8] != 255)
          {
            v446 = v1778;
            *v1778 = *v1797;
            *(v446 + 8) = v445 | 0x100;
            return;
          }

          goto LABEL_110;
        }

        sub_1CEFCCBDC(v121, v118, &qword_1EC4BFDE8, &qword_1CFA054E8);
        v332 = swift_getEnumCaseMultiPayload();
        if (v332 != 5)
        {
          if (v332 == 7)
          {
            v421 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBE0, &unk_1CFA05320) + 48);
            v422 = v156;
            sub_1CEFCCC44(&v118[v421], &qword_1EC4C1B40, &unk_1CF9FCB70);
            sub_1CEFCCC44(v118, &qword_1EC4C1B40, &unk_1CF9FCB70);
            goto LABEL_9;
          }

          if (v332 == 22)
          {
            v333 = v156;
            sub_1CEFCCC44(v118, &unk_1EC4C4E20, &unk_1CFA05350);
            goto LABEL_9;
          }

          sub_1CEFCCC44(v118, &unk_1EC4C4E20, &unk_1CFA05350);
LABEL_529:
          v861 = v1778;
          *v1778 = 0;
          *(v861 + 8) = -256;
          sub_1CEFCCC44(v121, &qword_1EC4BFDE8, &qword_1CFA054E8);
          return;
        }

        v423 = *(v118 + 2);
        v424 = v118[24];
        if (v118[25])
        {
          if (v155)
          {
            if (v155 == 1)
            {
              if (v424 != 1 || v157 != v423)
              {
                goto LABEL_273;
              }
            }

            else if (v157)
            {
              if (v424 != 2 || v423 != 1)
              {
                goto LABEL_273;
              }
            }

            else if (v424 != 2 || v423)
            {
              goto LABEL_273;
            }
          }

          else if (v118[24] || v157 != v423)
          {
            goto LABEL_273;
          }

          v779 = *v118;
          v780 = v118[9];
          v781 = v118[8];
          v782 = v156;
          sub_1CF1E53F8(v779, v781, v780);
          goto LABEL_9;
        }

        sub_1CF1E53F8(v423, v424, 0);
LABEL_273:
        sub_1CF1E53F8(*v118, v118[8], v118[9]);
        goto LABEL_529;
      }

LABEL_110:
      v179 = v1778;
LABEL_111:
      *v179 = 0;
      *(v179 + 8) = -256;
      return;
    }

    if (v1776 == 256)
    {
      v1776 = v143;
      v247 = *(*v1777 + 152);
      v248 = v148;
      v247();
      if (sub_1CF06D930())
      {
        goto LABEL_67;
      }

      sub_1CF3F9E7C(v154, v1772 & 1, v1798, v249, v250, v251, v252, v253);
      if (v151)
      {

        return;
      }

      v337 = v1798[0];
      if (v1798[0] == 89)
      {
LABEL_67:

        goto LABEL_110;
      }

      v121 = v1754;
      sub_1CEFCCBDC(v1773, v1754, &qword_1EC4BFDE8, &qword_1CFA054E8);
      if ((*(v1774 + 6))(v121, 1, v1775) == 1)
      {
        goto LABEL_135;
      }

      sub_1CEFCCBDC(v121, v113, &qword_1EC4BFDE8, &qword_1CFA054E8);
      v444 = swift_getEnumCaseMultiPayload();
      if (v444 != 14)
      {
        if (v444 != 22)
        {

          sub_1CEFCCC44(v113, &unk_1EC4C4E20, &unk_1CFA05350);
          goto LABEL_529;
        }

        if ((*v113 & 0x8000000000000000) != 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
          v657 = swift_dynamicCastClass();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE80, &qword_1CF9FB420);
          if (swift_dynamicCastClass())
          {

            v121 = v1754;
LABEL_135:
            sub_1CEFCCC44(v121, &qword_1EC4BFDE8, &qword_1CFA054E8);
            v338 = v154[3];
            if ((*(*v338 + 360))(v337, &v1799, v1776[59], 0, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970))
            {
              goto LABEL_660;
            }

            v593 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF80, &qword_1CF9FB478);
            v594 = (*v338 + 328);
            v595 = *v594;
            if ((*v594)(&v1799, v593, 8512, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970))
            {

              goto LABEL_343;
            }

            v783 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE80, &qword_1CF9FB420);
            if (v595(&v1799, v783, 0x10000, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970))
            {
              goto LABEL_660;
            }

            v1012 = *(v1776 + 216);
            if (v1012 != 255)
            {
              *v1798 = v1776[26];
              v1798[8] = v1012;
              if (sub_1CF07F344(v337, 1) || sub_1CF07F344(v337, 2))
              {
                v1013 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
                if ((*(*v338 + 320))(v1798, v1013, 8512, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970))
                {
                  goto LABEL_660;
                }
              }
            }

            if (sub_1CF07F344(v337, 12))
            {
              v1066 = v595(&v1799, v593, 8512, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

              if ((v1066 & 1) == 0)
              {
                goto LABEL_110;
              }

LABEL_343:
              v596 = v1778;
              *v1778 = 0;
              *(v596 + 8) = -256;
              return;
            }

LABEL_53:

            goto LABEL_110;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF80, &qword_1CF9FB478);
          v657 = swift_dynamicCastClass();
        }

        v121 = v1754;
        if (v657)
        {
          goto LABEL_135;
        }

LABEL_528:

        goto LABEL_529;
      }

      if (v113[9])
      {

        sub_1CF1E53F8(*v113, v113[8], v113[9]);
        goto LABEL_529;
      }

      v634 = v113[10];
      v635 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v637 = v636;
      v639 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v645 = v638;
      if (v635 == v639 && v637 == v638)
      {
        v637, v638, v639, v640, v641, v642, v643, v644;
        v645, v646, v647, v648, v649, v650, v651, v652;
      }

      else
      {
        v742 = sub_1CF9E8048();
        v637, v743, v744, v745, v746, v747, v748, v749;
        v645, v750, v751, v752, v753, v754, v755, v756;
        if ((v742 & 1) == 0)
        {
          goto LABEL_422;
        }
      }

      if (qword_1CFA05BE8[v337] == qword_1CFA05BE8[v634])
      {

        goto LABEL_426;
      }

LABEL_422:
      if (v634 != 3)
      {

        v121 = v1754;
        goto LABEL_529;
      }

      v757 = *v113;
      v758 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v760 = v759;
      v762 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v763 = v758;
      v764 = v761;
      if (v763 != v762 || v760 != v761)
      {
        v828 = sub_1CF9E8048();

        v760, v829, v830, v831, v832, v833, v834, v835;
        v764, v836, v837, v838, v839, v840, v841, v842;
        v154 = v1777;
        v121 = v1754;
        if (v828)
        {
          goto LABEL_135;
        }

        goto LABEL_528;
      }

      v760, v765, v766, v767, v768, v769, v770, v771;
      v764, v772, v773, v774, v775, v776, v777, v778;
LABEL_426:
      v154 = v1777;
      v121 = v1754;
      goto LABEL_135;
    }

    goto LABEL_965;
  }

  if (v1776 == 512)
  {
    v1771 = v140;
    v1772 = v142;
    v1776 = v141;
    v1769 = v138;
    v1770 = v139;
    v199 = v148;
    sub_1CEFCCBDC(v1773, v105, &qword_1EC4BFDE8, &qword_1CFA054E8);
    v200 = (v1774 + 48);
    v201 = *(v1774 + 6);
    if ((v201)(v105, 1, v153) == 1)
    {
LABEL_37:
      v202 = v199;
      goto LABEL_38;
    }

    sub_1CEFCCBDC(v105, v102, &qword_1EC4BFDE8, &qword_1CFA054E8);
    v317 = swift_getEnumCaseMultiPayload();
    if (v317 > 23)
    {
      v318 = v1778;
      if (v317 == 24)
      {
        goto LABEL_131;
      }

      if (v317 != 42)
      {
LABEL_175:
        sub_1CEFCCC44(v102, &unk_1EC4C4E20, &unk_1CFA05350);
        goto LABEL_176;
      }

      v334 = *v102;
      v335 = v102[8];
      if (v102[9])
      {
        sub_1CF1E53F8(*v102, v102[8], 1);
LABEL_176:
        v318 = v1778;
        goto LABEL_177;
      }

      v437 = v199;
      sub_1CF1E53F8(v334, v335, 0);
    }

    else
    {
      v318 = v1778;
      if (v317 != 19)
      {
        if (v317 != 23)
        {
          goto LABEL_175;
        }

LABEL_131:
        if (*v102 == *(v1777[4] + 32))
        {
          goto LABEL_37;
        }

LABEL_177:
        *v318 = 0;
        *(v318 + 8) = -256;
        sub_1CEFCCC44(v105, &qword_1EC4BFDE8, &qword_1CFA054E8);
        return;
      }

      v384 = *v102;
      v385 = v199;
    }

LABEL_38:
    sub_1CEFCCC44(v105, &qword_1EC4BFDE8, &qword_1CFA054E8);
    v203 = v1777[4];
    v204 = v1810;
    ((*v203)[36])(v1798, &v1799, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    if (v204)
    {
      goto LABEL_39;
    }

    v328 = *v1798;
    if (!*v1798)
    {
      goto LABEL_364;
    }

    v1794[0] = *v1798;
    v329 = v1760;
    sub_1CEFCCBDC(v1773, v1760, &qword_1EC4BFDE8, &qword_1CFA054E8);
    if ((v201)(v329, 1, v153) == 1)
    {
      v330 = &qword_1EC4BFDE8;
      v331 = &qword_1CFA054E8;
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 42)
      {
        v386 = *v329;
        if (*(v329 + 9))
        {
          sub_1CF1E53F8(*v329, *(v329 + 8), 1);
        }

        else
        {
          v1774 = v200;
          v540 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v542 = v541;
          v544 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v545 = v540;
          v546 = v543;
          if (v545 == v544 && v542 == v543)
          {

            v542, v547, v548, v549, v550, v551, v552, v553;
            v546, v554, v555, v556, v557, v558, v559, v560;
LABEL_363:

LABEL_364:
            goto LABEL_173;
          }

          v598 = sub_1CF9E8048();

          v542, v599, v600, v601, v602, v603, v604, v605;
          v546, v606, v607, v608, v609, v610, v611, v612;
          v200 = v1774;
          if (v598)
          {
            goto LABEL_363;
          }
        }

LABEL_251:
        v447 = v1777;
        sub_1CF7EBA74(v328, v1765, v1779, v1798);
        memcpy(v1797, v1798, sizeof(v1797));
        if (sub_1CF08B99C(v1797) == 1)
        {

          memcpy(v1796, v1798, 0x208uLL);
          sub_1CEFCCC44(v1796, &unk_1EC4BFD80, &unk_1CFA0A2A0);
          goto LABEL_173;
        }

        v1774 = v200;
        memcpy(v1796, v1798, 0x208uLL);
        memcpy(v1807, v1798, sizeof(v1807));
        if (qword_1EDEA3498 == -1)
        {
          v475 = *&v1796[0];
          if (*&v1796[0])
          {
            goto LABEL_278;
          }
        }

        else
        {
          swift_once();
          v475 = *&v1796[0];
          if (*&v1796[0])
          {
LABEL_278:
            v476 = qword_1EDEA34A0;
            v477 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v479 = v478;
            v481 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v482 = v477;
            v483 = v480;
            if (v482 == v481 && v479 == v480)
            {
              v484 = v476;
              v485 = v475;
              v486 = v484;

              v479, v487, v488, v489, v490, v491, v492, v493;
              v483, v494, v495, v496, v497, v498, v499, v500;
LABEL_362:
              sub_1CEFCCC44(v1796, &unk_1EC4BFC90, &unk_1CFA053E0);
              goto LABEL_363;
            }

            LODWORD(v1810) = sub_1CF9E8048();
            v613 = v476;
            v614 = v475;
            v615 = v613;

            v479, v616, v617, v618, v619, v620, v621, v622;
            v483, v623, v624, v625, v626, v627, v628, v629;
            v447 = v1777;
            if (v1810)
            {
              goto LABEL_362;
            }
          }
        }

        v630 = *(&v1796[0] + 1);
        if (sub_1CF06D930())
        {
          goto LABEL_362;
        }

        if ((v201)(v1773, 1, v1775) == 1)
        {
          goto LABEL_368;
        }

        v708 = sub_1CF75C2AC();
        if (v708)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE50, &unk_1CFA05540);
          swift_allocObject();
          sub_1CF06DA80();
          *v709 = xmmword_1CFA04F30;
          nullsub_1();
          v711 = v710;
          v712 = sub_1CEFF8C8C();
          v711, v713, v714, v715, v716, v717, v718, v719;
          v720 = v712;
          v447 = v1777;
          if (!sub_1CF95EDE0(v720, v630))
          {
            sub_1CEFCCC44(v1796, &unk_1EC4BFC90, &unk_1CFA053E0);

            v848 = v1778;
            *v1778 = 0;
            *(v848 + 8) = -256;
            return;
          }
        }

        v721 = v447[3];
        v722 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF80, &qword_1CF9FB478);
        v723 = *v721;
        isa = (*v721)[41].isa;
        v1768 = v722;
        v1779 = v723 + 41;
        v725 = isa(v1794);
        v1810 = 0;
        if (v725)
        {
          v844 = v1776;
          sub_1CEFCCBDC(v1773, v1776, &qword_1EC4BFDE8, &qword_1CFA054E8);
          if ((v201)(v844, 1, v1775) == 1)
          {
            sub_1CEFCCC44(v1796, &unk_1EC4BFC90, &unk_1CFA053E0);

LABEL_706:
            sub_1CEFCCC44(v1776, &qword_1EC4BFDE8, &qword_1CFA054E8);
LABEL_707:
            v1095 = v1778;
            *v1778 = 0;
            *(v1095 + 8) = -256;
            return;
          }

          sub_1CEFCCBDC(v1776, v1772, &qword_1EC4BFDE8, &qword_1CFA054E8);
          if (swift_getEnumCaseMultiPayload() - 23 >= 2)
          {
            sub_1CEFCCC44(v1796, &unk_1EC4BFC90, &unk_1CFA053E0);

            sub_1CEFCCC44(v1772, &unk_1EC4C4E20, &unk_1CFA05350);
            goto LABEL_706;
          }

          sub_1CEFCCC44(v1776, &qword_1EC4BFDE8, &qword_1CFA054E8);
          v1060 = v1810;
          v1061 = ((*v721)[45].isa)(3, v1794, *(&v1796[29] + 1), 0, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          v1810 = v1060;
          if (v1060)
          {
LABEL_740:
            sub_1CEFCCC44(v1796, &unk_1EC4BFC90, &unk_1CFA053E0);

            goto LABEL_39;
          }

          if ((v1061 & 1) == 0)
          {
            sub_1CEFCCC44(v1796, &unk_1EC4BFC90, &unk_1CFA053E0);

            goto LABEL_707;
          }
        }

        (*(*v203[2] + 96))(v1795);
        v1062 = v1795[0];
        v1793[0] = v1795[0];
        v1063 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEF8, &unk_1CF9FB390);
        v1064 = v1810;
        v1065 = (isa)(v1793, v1063, 0, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        v1810 = v1064;
        if (v1064)
        {

          goto LABEL_740;
        }

        v1090 = v1065;

        if (v1090)
        {
          v1091 = v1771;
          sub_1CEFCCBDC(v1773, v1771, &qword_1EC4BFDE8, &qword_1CFA054E8);
          if ((v201)(v1091, 1, v1775) == 1)
          {
            sub_1CEFCCC44(v1796, &unk_1EC4BFC90, &unk_1CFA053E0);

            v1092 = &qword_1EC4BFDE8;
            v1093 = &qword_1CFA054E8;
          }

          else
          {
            if (swift_getEnumCaseMultiPayload() == 24)
            {
              v1206 = v1731;
              *v1731 = v328;
              *(v1206 + 8) = 0;
              swift_storeEnumTagMultiPayload();
              v1207 = *(*v1777 + 312);
              v1208 = v328;
              v1207(v1206);
              sub_1CEFCCC44(v1206, &unk_1EC4C4E20, &unk_1CFA05350);
              sub_1CEFCCC44(v1796, &unk_1EC4BFC90, &unk_1CFA053E0);

LABEL_807:
              v1236 = v1778;
              *v1778 = 0;
              *(v1236 + 8) = -256;
              return;
            }

            sub_1CEFCCC44(v1796, &unk_1EC4BFC90, &unk_1CFA053E0);

            v1092 = &unk_1EC4C4E20;
            v1093 = &unk_1CFA05350;
          }

          sub_1CEFCCC44(v1771, v1092, v1093);
          goto LABEL_807;
        }

        v1155 = v1810;
        v1156 = ((*v203)[57])(v1794, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        if (v1155)
        {
          goto LABEL_740;
        }

        if (v1156 & 1) != 0 || (v708 & ((*v203)[61])(&v1799, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970))
        {
          v1211 = v1770;
          sub_1CEFCCBDC(v1773, v1770, &qword_1EC4BFDE8, &qword_1CFA054E8);
          if ((v201)(v1211, 1, v1775) == 1)
          {
            sub_1CEFCCC44(v1796, &unk_1EC4BFC90, &unk_1CFA053E0);

            v1212 = &qword_1EC4BFDE8;
            v1213 = &qword_1CFA054E8;
          }

          else
          {
            if (swift_getEnumCaseMultiPayload() == 23)
            {
              v1298 = v1731;
              *v1731 = v328;
              *(v1298 + 8) = 0;
              swift_storeEnumTagMultiPayload();
              v1299 = *(*v1777 + 312);
              v328 = v328;
              v1299(v1298);
              sub_1CEFCCC44(v1298, &unk_1EC4C4E20, &unk_1CFA05350);
LABEL_368:
              sub_1CEFCCC44(v1796, &unk_1EC4BFC90, &unk_1CFA053E0);

LABEL_369:
              v632 = v1778;
              *v1778 = 0;
              *(v632 + 8) = -256;
              return;
            }

            sub_1CEFCCC44(v1796, &unk_1EC4BFC90, &unk_1CFA053E0);

            v1212 = &unk_1EC4C4E20;
            v1213 = &unk_1CFA05350;
          }

          sub_1CEFCCC44(v1770, v1212, v1213);
          goto LABEL_369;
        }

        v1242 = (isa)(&v1799, v1768, 0, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        v1584 = v1242;
        sub_1CEFCCC44(v1796, &unk_1EC4BFC90, &unk_1CFA053E0);

        if (v1584)
        {
          v1585 = v1778;
          *v1778 = 0;
          *(v1585 + 8) = -256;
          return;
        }

        v1598 = v1769;
        sub_1CEFCCBDC(v1773, v1769, &qword_1EC4BFDE8, &qword_1CFA054E8);
        if ((v201)(v1598, 1, v1775) == 1)
        {
          v1599 = &qword_1EC4BFDE8;
          v1600 = &qword_1CFA054E8;
        }

        else
        {
          if (swift_getEnumCaseMultiPayload() == 24)
          {
            v1601 = v1778;
            *v1778 = 0;
            *(v1601 + 8) = -256;
            return;
          }

          v1599 = &unk_1EC4C4E20;
          v1600 = &unk_1CFA05350;
        }

        v1674 = v1769;
        goto LABEL_964;
      }

      v330 = &unk_1EC4C4E20;
      v331 = &unk_1CFA05350;
    }

    sub_1CEFCCC44(v329, v330, v331);
    goto LABEL_251;
  }

  v1763 = v144;
  v1764 = v87;
  v1768 = v145;
  v263 = v1777;
  if (v1776 != 1024)
  {
LABEL_965:
    sub_1CF9E7B68();
    __break(1u);
    goto LABEL_966;
  }

  v1772 = v148;
  v1776 = v143;
  v264 = v1770;
  sub_1CEFCCBDC(v1773, v1770, &qword_1EC4BFDE8, &qword_1CFA054E8);
  v265 = *(v1774 + 6);
  v1774 += 48;
  v266 = (v265)(v264, 1, v1775);
  v267 = v1771;
  v268 = v1769;
  if (v266 == 1)
  {
    v269 = v1772;
    goto LABEL_169;
  }

  sub_1CEFCCBDC(v264, v1769, &qword_1EC4BFDE8, &qword_1CFA054E8);
  v319 = swift_getEnumCaseMultiPayload();
  if (v319 > 20)
  {
    v336 = v1778;
    if (v319 > 33)
    {
      if (v319 != 34)
      {
        if (v319 == 40)
        {
          *v1778 = 0;
          *(v336 + 8) = -256;
          sub_1CEFCCC44(v268, &unk_1EC4C4E20, &unk_1CFA05350);
          sub_1CEFCCC44(v264, &qword_1EC4BFDE8, &qword_1CFA054E8);
          return;
        }

        goto LABEL_231;
      }
    }

    else if (v319 != 21 && v319 != 22)
    {
      goto LABEL_231;
    }

    goto LABEL_168;
  }

  if (v319 > 8)
  {
    if (v319 != 9)
    {
      if (v319 == 13)
      {
        v372 = *(v268 + 2);
        v373 = v1772;

        sub_1CF1E53F8(*v268, v268[8], v268[9]);
        goto LABEL_169;
      }

      goto LABEL_231;
    }

LABEL_168:
    v374 = v1772;
    sub_1CEFCCC44(v268, &unk_1EC4C4E20, &unk_1CFA05350);
    goto LABEL_169;
  }

  if (v319 == 6)
  {
    v433 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBC8, &qword_1CFA05308);
    v321 = *(v433 + 48);
    if ((*(v1766 + 48))(v268, 1, v1767) == 1)
    {
      v322 = &unk_1EC4BFBB0;
      v323 = &qword_1CF9FCB90;
      goto LABEL_230;
    }

    v505 = *&v268[*(v433 + 64)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD10, &unk_1CFA05430);
    swift_allocObject();
    sub_1CF06DA80();
    *v506 = xmmword_1CFA04F20;
    nullsub_1();
    v508 = v507;
    v509 = v1772;
    sub_1CEFF5464(v508, v1798, v510, v511, v512, v513, v514, v515, v516);
    if (sub_1CF95EDE0(*v1798, v505))
    {

      v322 = &unk_1EC4BFBB0;
      v323 = &qword_1CF9FCB90;
LABEL_291:
      sub_1CEFCCC44(v268, v322, v323);
      v434 = &v268[v321];
      goto LABEL_292;
    }

    v588 = &unk_1EC4BFBB0;
    v589 = &qword_1CF9FCB90;
    goto LABEL_334;
  }

  if (v319 != 7)
  {
LABEL_231:
    v435 = &unk_1EC4C4E20;
    v436 = &unk_1CFA05350;
    v434 = v268;
LABEL_293:
    sub_1CEFCCC44(v434, v435, v436);
    v529 = v1778;
    *v1778 = 0;
    *(v529 + 8) = -256;
    sub_1CEFCCC44(v264, &qword_1EC4BFDE8, &qword_1CFA054E8);
    return;
  }

  v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBE0, &unk_1CFA05320);
  v321 = *(v320 + 48);
  if ((*v1759[1].tree)(v268, 1, v1755) == 1)
  {
    v322 = &qword_1EC4C1B40;
    v323 = &unk_1CF9FCB70;
LABEL_230:
    sub_1CEFCCC44(&v268[v321], v322, v323);
    v434 = v268;
LABEL_292:
    v435 = v322;
    v436 = v323;
    goto LABEL_293;
  }

  v517 = *&v268[*(v320 + 64)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD10, &unk_1CFA05430);
  swift_allocObject();
  sub_1CF06DA80();
  *v518 = xmmword_1CFA04F20;
  nullsub_1();
  v520 = v519;
  v521 = v1772;
  sub_1CEFF5464(v520, v1798, v522, v523, v524, v525, v526, v527, v528);
  if (sub_1CF95EDE0(*v1798, v517))
  {

    v322 = &qword_1EC4C1B40;
    v323 = &unk_1CF9FCB70;
    goto LABEL_291;
  }

  v588 = &qword_1EC4C1B40;
  v589 = &unk_1CF9FCB70;
LABEL_334:
  sub_1CEFCCC44(v268, v588, v589);
  sub_1CEFCCC44(&v268[v321], v588, v589);
  v267 = v1771;
LABEL_169:
  sub_1CEFCCC44(v264, &qword_1EC4BFDE8, &qword_1CFA054E8);
  v375 = v263[4];
  v376 = v1810;
  (*(*v375 + 240))(&v1799, 1, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (v376)
  {
    goto LABEL_39;
  }

  v377 = *(v1766 + 48);
  if (v377(v267, 1, v1767) == 1)
  {

    v378 = &unk_1EC4BFBB0;
    v379 = &qword_1CF9FCB90;
    v380 = v267;
LABEL_172:
    sub_1CEFCCC44(v380, v378, v379);
LABEL_173:
    v381 = v1778;
    *v1778 = 0;
    *(v381 + 8) = -256;
    return;
  }

  v1810 = v265;
  v382 = v1761;
  sub_1CEFE55D0(v267, v1761, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v383 = v263[2];
  sub_1CF7EBA74(*v382->_anon_8, v1765, v1779, v1798);
  v1771 = v383;
  memcpy(v1797, v1798, sizeof(v1797));
  if (sub_1CF08B99C(v1797) == 1)
  {
    sub_1CEFCCC44(v382, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

    memcpy(v1796, v1798, 0x208uLL);
    v378 = &unk_1EC4BFD80;
    v379 = &unk_1CFA0A2A0;
    v380 = v1796;
    goto LABEL_172;
  }

  memcpy(v1796, v1798, 0x208uLL);
  memcpy(v1809, v1798, 0x208uLL);
  v503 = BYTE8(v1796[13]);
  if (BYTE8(v1796[13]) == 255 || (v504 = *&v1796[13], v1770 = v1777[5], sub_1CF902E34()) && !LOBYTE(v1796[15]))
  {
    sub_1CEFCCC44(v1796, &unk_1EC4BFC90, &unk_1CFA053E0);
    sub_1CEFCCC44(v1761, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

    goto LABEL_173;
  }

  v653 = v1768;
  sub_1CEFCCBDC(v1773, v1768, &qword_1EC4BFDE8, &qword_1CFA054E8);
  if ((v1810)(v653, 1, v1775) == 1)
  {
    goto LABEL_576;
  }

  sub_1CEFCCBDC(v653, v1764, &qword_1EC4BFDE8, &qword_1CFA054E8);
  v654 = swift_getEnumCaseMultiPayload();
  if (v654 > 12)
  {
    if (v654 > 21)
    {
      if (v654 != 22 && v654 != 34)
      {
        goto LABEL_573;
      }
    }

    else
    {
      if (v654 == 13)
      {
        v901 = v1764;

        sub_1CF1E53F8(*v901, *(v901 + 8), *(v901 + 9));
        goto LABEL_575;
      }

      if (v654 != 21)
      {
        goto LABEL_573;
      }
    }

    v845 = &unk_1EC4C4E20;
    v846 = &unk_1CFA05350;
    v847 = v1764;
LABEL_518:
    sub_1CEFCCC44(v847, v845, v846);
LABEL_575:
    v653 = v1768;
    goto LABEL_576;
  }

  if (v654 == 6)
  {
    v893 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBC8, &qword_1CFA05308) + 48);
    if (v377(v1764, 1, v1767) != 1)
    {
      sub_1CEFE55D0(v1764, v1739, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v1070 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v1072 = v1071;
      v1074 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v1080 = v1073;
      if (v1070 == v1074 && v1072 == v1073)
      {
        v1072, v1073, v1074, v1075, v1076, v1077, v1078, v1079;
        v1080, v1081, v1082, v1083, v1084, v1085, v1086, v1087;
      }

      else
      {
        v1135 = sub_1CF9E8048();
        v1072, v1136, v1137, v1138, v1139, v1140, v1141, v1142;
        v1080, v1143, v1144, v1145, v1146, v1147, v1148, v1149;
        if ((v1135 & 1) == 0)
        {
          v1150 = *(v1739 + 88);
          v1151 = *v1761[2].tree;
          v1152 = *v1761[2].tester;
          v1795[0] = *(v1739 + 80);
          v1795[1] = v1150;
          v1794[0] = v1151;
          v1794[1] = v1152;
          sub_1CEFE4E68();
          if (sub_1CF9E7678())
          {
            sub_1CEFCCC44(v1739, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
            sub_1CEFCCC44(v1796, &unk_1EC4BFC90, &unk_1CFA053E0);
            sub_1CEFCCC44(v1761, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

            v898 = &unk_1EC4BFBB0;
            v899 = &qword_1CF9FCB90;
            v900 = (v1764 + v893);
            goto LABEL_802;
          }
        }
      }

      if (sub_1CF902E34() && !sub_1CF75C2AC())
      {
        sub_1CEFCCC44(v1739, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      }

      else
      {
        v1153 = sub_1CF75C2AC();
        sub_1CEFCCC44(v1739, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        if (!v1153 && *(v1776 + 456) != 1)
        {
          sub_1CEFCCC44(v1796, &unk_1EC4BFC90, &unk_1CFA053E0);
          sub_1CEFCCC44(v1761, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

          v1154 = v1778;
          *v1778 = 0;
          *(v1154 + 8) = -256;
          sub_1CEFCCC44(v1764 + v893, &unk_1EC4BFBB0, &qword_1CF9FCB90);
LABEL_804:
          sub_1CEFCCC44(v1768, &qword_1EC4BFDE8, &qword_1CFA054E8);
          return;
        }
      }

      v845 = &unk_1EC4BFBB0;
      v846 = &qword_1CF9FCB90;
      v847 = (v1764 + v893);
      goto LABEL_518;
    }

    sub_1CEFCCC44(v1796, &unk_1EC4BFC90, &unk_1CFA053E0);
    sub_1CEFCCC44(v1761, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

    v894 = &unk_1EC4BFBB0;
    v895 = &qword_1CF9FCB90;
    v896 = v1764;
    v897 = (v1764 + v893);
LABEL_652:
    sub_1CEFCCC44(v897, v894, v895);
    v900 = v896;
    v898 = v894;
    v899 = v895;
    goto LABEL_802;
  }

  if (v654 == 7)
  {
    v1769 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBE0, &unk_1CFA05320) + 48);
    if ((*v1759[1].tree)(v1764, 1, v1755) == 1)
    {
      sub_1CEFCCC44(v1796, &unk_1EC4BFC90, &unk_1CFA053E0);
      sub_1CEFCCC44(v1761, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

      v894 = &qword_1EC4C1B40;
      v895 = &unk_1CF9FCB70;
      v896 = v1764;
      v897 = (v1764 + v1769);
      goto LABEL_652;
    }

    v1088 = v1738;
    sub_1CEFE55D0(v1764, v1738, &unk_1EC4BE360, &qword_1CF9FE650);
    v1089 = *(v1088 + 16);
    if (*(v1088 + 24))
    {
      if (*(v1088 + 24) == 1)
      {
        if (v503 != 1 || v1089 != v504)
        {
LABEL_800:
          sub_1CEFCCC44(v1738, &unk_1EC4BE360, &qword_1CF9FE650);
          goto LABEL_801;
        }
      }

      else if (v1089)
      {
        if (v503 != 2 || v504 != 1)
        {
          goto LABEL_800;
        }
      }

      else if (v503 != 2 || v504)
      {
        goto LABEL_800;
      }
    }

    else if (v503 || v1089 != v504)
    {
      goto LABEL_800;
    }

    v1216 = v1738;
    v1217 = *(v1738 + 128);
    v1218 = *(v1738 + 136);
    v1219 = *v1761[2].tree;
    v1220 = *v1761[2].tester;

    LOBYTE(v1219) = sub_1CF39B038(v1217, v1218, v1219, v1220);
    v1218, v1221, v1222, v1223, v1224, v1225, v1226, v1227;
    v1220, v1228, v1229, v1230, v1231, v1232, v1233, v1234;

    sub_1CEFCCC44(v1216, &unk_1EC4BE360, &qword_1CF9FE650);
    if (v1219)
    {
      v845 = &qword_1EC4C1B40;
      v846 = &unk_1CF9FCB70;
      v847 = (v1764 + v1769);
      goto LABEL_518;
    }

LABEL_801:
    sub_1CEFCCC44(v1796, &unk_1EC4BFC90, &unk_1CFA053E0);
    sub_1CEFCCC44(v1761, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

    v898 = &qword_1EC4C1B40;
    v899 = &unk_1CF9FCB70;
    v900 = (v1764 + v1769);
    goto LABEL_802;
  }

  if (v654 != 9)
  {
LABEL_573:
    sub_1CEFCCC44(v1796, &unk_1EC4BFC90, &unk_1CFA053E0);
    sub_1CEFCCC44(v1761, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

    v898 = &unk_1EC4C4E20;
    v899 = &unk_1CFA05350;
    v900 = v1764;
LABEL_802:
    sub_1CEFCCC44(v900, v898, v899);
    goto LABEL_803;
  }

  v823 = v1740;
  sub_1CEFE55D0(v1764, v1740, &unk_1EC4BE360, &qword_1CF9FE650);
  v824 = *(v823 + 16);
  if (*(v823 + 24))
  {
    if (*(v823 + 24) == 1)
    {
      if (v503 != 1 || v824 != v504)
      {
LABEL_775:
        sub_1CEFCCC44(v1740, &unk_1EC4BE360, &qword_1CF9FE650);
LABEL_776:
        sub_1CEFCCC44(v1796, &unk_1EC4BFC90, &unk_1CFA053E0);
        sub_1CEFCCC44(v1761, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

LABEL_803:
        v1235 = v1778;
        *v1778 = 0;
        *(v1235 + 8) = -256;
        goto LABEL_804;
      }
    }

    else if (v824)
    {
      if (v503 != 2 || v504 != 1)
      {
        goto LABEL_775;
      }
    }

    else if (v503 != 2 || v504)
    {
      goto LABEL_775;
    }
  }

  else if (v503 || v824 != v504)
  {
    goto LABEL_775;
  }

  v1187 = v1740;
  v1188 = *(v1740 + 128);
  v1189 = *(v1740 + 136);
  v1190 = *v1761[2].tree;
  v1191 = *v1761[2].tester;

  LOBYTE(v1190) = sub_1CF39B038(v1188, v1189, v1190, v1191);
  v1189, v1192, v1193, v1194, v1195, v1196, v1197, v1198;
  v1191, v1199, v1200, v1201, v1202, v1203, v1204, v1205;

  sub_1CEFCCC44(v1187, &unk_1EC4BE360, &qword_1CF9FE650);
  v653 = v1768;
  if ((v1190 & 1) == 0)
  {
    goto LABEL_776;
  }

LABEL_576:
  sub_1CEFCCC44(v653, &qword_1EC4BFDE8, &qword_1CFA054E8);
  v902 = v1761;
  sub_1CF415C48(v1789, v1776, v1761, v1809, v1777, v1765, v1779);
  if ((v910 & 1) == 0)
  {
    v903, v903, v904, v905, v906, v907, v908, v909;
    sub_1CF4804C0(v1789[0], LOWORD(v1789[1]));
    sub_1CEFCCC44(v1796, &unk_1EC4BFC90, &unk_1CFA053E0);
    v1002 = v902;
LABEL_767:
    sub_1CEFCCC44(v1002, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

LABEL_768:
    v1176 = v1778;
    *v1778 = 0;
    *(v1176 + 8) = -256;
    return;
  }

  v911 = v903;
  v912 = v1789[0];
  v913 = LOWORD(v1789[1]);
  if (HIBYTE(LOWORD(v1789[1])) <= 0xFEu)
  {
    sub_1CF48034C(v1789[0], LOWORD(v1789[1]), BYTE1(v1789[1]) & 1);
    v911, v1003, v1004, v1005, v1006, v1007, v1008, v1009;
    sub_1CF4804C0(v912, v913);
    sub_1CEFCCC44(v1796, &unk_1EC4BFC90, &unk_1CFA053E0);
    sub_1CEFCCC44(v1761, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

    v1010 = v1778;
    *v1778 = v912;
    *(v1010 + 8) = v913;
    return;
  }

  if (!v903)
  {
LABEL_765:
    v1174 = v912;
    v1175 = v913;
LABEL_766:
    sub_1CF4804C0(v1174, v1175);
    sub_1CEFCCC44(v1796, &unk_1EC4BFC90, &unk_1CFA053E0);
    v1002 = v1761;
    goto LABEL_767;
  }

  if (!sub_1CF55B5A0(v903))
  {
LABEL_764:
    v911, v914, v915, v916, v917, v918, v919, v920;
    goto LABEL_765;
  }

  v921 = v1776[26];
  v922 = *(v1776 + 216);
  v923 = v911;

  v924 = 1;
  sub_1CF90333C();
  v925 = v921 == 1 && v922 == 2;
  LODWORD(v1766) = v925;
  v1768 = v921;
  if (v921)
  {
    v926 = 0;
  }

  else
  {
    v926 = v922 == 2;
  }

  LODWORD(v1764) = v926;
  v927 = 40;
  do
  {
    v928 = *(&v923->super.isa + v927);
    v929 = *(v923 + v927 - 8);
    v1786[0] = v929;
    LOBYTE(v1786[1]) = v928;
    if (v928 == 255)
    {
      if (v922 == 255)
      {
        goto LABEL_781;
      }
    }

    else if (v922 != 255)
    {
      if (v928)
      {
        if (v928 == 1)
        {
          if (v922 == 1 && v929 == v1768)
          {
            goto LABEL_781;
          }
        }

        else if (v929)
        {
          if (v1766)
          {
            goto LABEL_781;
          }
        }

        else if (v1764)
        {
          goto LABEL_781;
        }
      }

      else if (!v922 && v929 == v1768)
      {
LABEL_781:
        swift_bridgeObjectRelease_n();
        v1174 = v1789[0];
        v1175 = LOWORD(v1789[1]);
        goto LABEL_766;
      }
    }

    sub_1CF7F5D3C(v929, v928, v1765, v1779, v1795);
    memcpy(v1794, v1795, sizeof(v1794));
    if (sub_1CF08B99C(v1794) == 1)
    {
      memcpy(v1793, v1795, sizeof(v1793));
      v930 = &unk_1EC4BFC20;
      v931 = &unk_1CFA0A290;
      goto LABEL_620;
    }

    memcpy(v1793, v1795, sizeof(v1793));
    memcpy(v1808, v1795, sizeof(v1808));
    v1769 = v1793[31];
    if (v1793[31])
    {
      v1785[0] = v1769;
      v932 = v1763;
      sub_1CEFCCBDC(v1773, v1763, &qword_1EC4BFDE8, &qword_1CFA054E8);
      if ((v1810)(v932, 1, v1775) == 1)
      {
        v933 = v1769;
        v934 = v1763;
        v935 = &qword_1EC4BFDE8;
        v936 = &qword_1CFA054E8;
LABEL_616:
        sub_1CEFCCC44(v934, v935, v936);
LABEL_617:
        sub_1CF465F90(v1808, v1765, v1779, v1777, v1791);
        v975 = v1791[0];
        if (sub_1CF902E40(v1791[0]))
        {

          goto LABEL_619;
        }

        v1244 = sub_1CF06EDF4();
        if (sub_1CF9526EC(v975, *v1244))
        {
          if (!LOBYTE(v1793[46]) && (sub_1CF06D930() & 1) != 0)
          {
            if (v922 != 255)
            {
              goto LABEL_939;
            }

            goto LABEL_827;
          }

          goto LABEL_894;
        }

        if ((sub_1CF06D930() & 1) != 0 && LOBYTE(v1793[57]) == 1 && *(v1776 + 456) == 1)
        {
          v1791[0] = v1772;
          v1429 = *(*v375 + 560);
          v1430 = v1772;
          v1431 = v1429(v1785, v1791, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

          if (v1431)
          {
            v911, v1422, v1423, v1424, v1425, v1426, v1427, v1428;
            sub_1CF19BFD0(v1432);
            v1433 = v1799;
            v1434 = swift_allocObject();
            *(v1434 + 16) = v1433;
            v1435 = swift_allocObject();
            *(v1435 + 16) = sub_1CF4858A0;
            *(v1435 + 24) = v1434;
            v1436 = v1433;
            v1810 = sub_1CF9E6108();
            v1437 = sub_1CF9E72C8();
            v1438 = swift_allocObject();
            *(v1438 + 16) = 32;
            v1439 = swift_allocObject();
            *(v1439 + 16) = 8;
            v1440 = swift_allocObject();
            *(v1440 + 16) = sub_1CF485964;
            *(v1440 + 24) = v1435;
            v1441 = swift_allocObject();
            *(v1441 + 16) = sub_1CF485960;
            *(v1441 + 24) = v1440;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE30, &unk_1CFA05520);
            swift_allocObject();
            v1442 = sub_1CF06DA80();
            *v1443 = sub_1CF485A70;
            v1443[1] = v1438;
            v1443[2] = sub_1CF485A70;
            v1443[3] = v1439;
            v1443[4] = sub_1CF485884;
            v1443[5] = v1441;

            v1442, v1444, v1445, v1446, v1447, v1448, v1449, v1450;
            LODWORD(v1779) = v1437;
            if (os_log_type_enabled(v1810, v1437))
            {
              v1458 = sub_1CF1B5D40(12);
              v1459 = swift_slowAlloc();
              v1782[0] = 0;
              v1787 = v1459;
              *v1458 = 258;
              v1790[0] = v1458 + 2;
              v1791[0] = sub_1CF485A70;
              v1791[1] = v1438;
              sub_1CF1B5D64(v1791, v1790, v1782, &v1787);

              v1791[0] = sub_1CF485A70;
              v1791[1] = v1439;
              sub_1CF1B5D64(v1791, v1790, v1782, &v1787);

              v1791[0] = sub_1CF485884;
              v1791[1] = v1441;
              sub_1CF1B5D64(v1791, v1790, v1782, &v1787);

              v911, v1460, v1461, v1462, v1463, v1464, v1465, v1466;
              _os_log_impl(&dword_1CEFC7000, v1810, v1779, "♻️  breaking reparent cycle by disabling path-matching condition for propagation of %s", v1458, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v1459);
              MEMORY[0x1D386CDC0](v1459, -1, -1);
              sub_1CF1B5D48();
            }

            v911, v1451, v1452, v1453, v1454, v1455, v1456, v1457;

            (*(v1722 + 8))(v1715, v1723);
LABEL_962:
            v1709 = v1769;
LABEL_963:

            sub_1CF4804C0(v1789[0], LOWORD(v1789[1]));
            sub_1CEFCCC44(v1796, &unk_1EC4BFC90, &unk_1CFA053E0);
            sub_1CEFCCC44(v1761, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

            v1599 = &qword_1EC4BFBC0;
            v1600 = &unk_1CF9FCAC0;
            v1674 = v1793;
LABEL_964:
            sub_1CEFCCC44(v1674, v1599, v1600);
            goto LABEL_768;
          }
        }

        if (LOBYTE(v1793[46]))
        {
          goto LABEL_901;
        }

        if ((sub_1CF06D930() & 1) == 0)
        {
          if (sub_1CF06D930())
          {
            v1791[0] = v1772;
            v1587 = *(*v375 + 576);
            v1588 = v1772;
            v1589 = v1587(v1785, v1791, 1, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
            v1637 = v1589;
            v1638 = v1791[0];
            v911, v1590, v1591, v1592, v1593, v1594, v1595, v1596;

            if (v1637)
            {
              sub_1CF19BFD0(v1639);
              v1640 = v1799;
              v1641 = swift_allocObject();
              *(v1641 + 16) = v1640;
              v1642 = swift_allocObject();
              *(v1642 + 16) = sub_1CF4858A0;
              *(v1642 + 24) = v1641;
              v1643 = v1640;
              v1810 = sub_1CF9E6108();
              v1644 = sub_1CF9E72C8();
              v1645 = swift_allocObject();
              *(v1645 + 16) = 32;
              v1646 = swift_allocObject();
              *(v1646 + 16) = 8;
              v1647 = swift_allocObject();
              *(v1647 + 16) = sub_1CF485964;
              *(v1647 + 24) = v1642;
              v1648 = swift_allocObject();
              *(v1648 + 16) = sub_1CF485960;
              *(v1648 + 24) = v1647;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE30, &unk_1CFA05520);
              swift_allocObject();
              v1649 = sub_1CF06DA80();
              *v1650 = sub_1CF485A70;
              v1650[1] = v1645;
              v1650[2] = sub_1CF485A70;
              v1650[3] = v1646;
              v1650[4] = sub_1CF485884;
              v1650[5] = v1648;

              v1649, v1651, v1652, v1653, v1654, v1655, v1656, v1657;
              LODWORD(v1779) = v1644;
              if (os_log_type_enabled(v1810, v1644))
              {
                v1665 = sub_1CF1B5D40(12);
                v1666 = swift_slowAlloc();
                v1782[0] = 0;
                v1787 = v1666;
                *v1665 = 258;
                v1790[0] = v1665 + 2;
                v1791[0] = sub_1CF485A70;
                v1791[1] = v1645;
                sub_1CF1B5D64(v1791, v1790, v1782, &v1787);

                v1791[0] = sub_1CF485A70;
                v1791[1] = v1646;
                sub_1CF1B5D64(v1791, v1790, v1782, &v1787);

                v1791[0] = sub_1CF485884;
                v1791[1] = v1648;
                sub_1CF1B5D64(v1791, v1790, v1782, &v1787);

                v911, v1667, v1668, v1669, v1670, v1671, v1672, v1673;
                _os_log_impl(&dword_1CEFC7000, v1810, v1779, "♻️  detected move cycle by disabling path-matching condition for propagation of %s", v1665, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v1666);
                MEMORY[0x1D386CDC0](v1666, -1, -1);
                sub_1CF1B5D48();
              }

              v911, v1658, v1659, v1660, v1661, v1662, v1663, v1664;

              (*(v1722 + 8))(v1718, v1723);
              goto LABEL_962;
            }

LABEL_902:
            v911, v1504, v1505, v1506, v1507, v1508, v1509, v1510;
            sub_1CF4804C0(v1789[0], LOWORD(v1789[1]));
            sub_1CEFCCC44(v1796, &unk_1EC4BFC90, &unk_1CFA053E0);
            sub_1CEFCCC44(v1761, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

            sub_1CEFCCC44(v1793, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
            v1511 = v1778;
            *v1778 = v1769;
            *(v1511 + 9) = 0;
            return;
          }

LABEL_901:
          v911, v1422, v1423, v1424, v1425, v1426, v1427, v1428;
          goto LABEL_902;
        }

        v1791[0] = v1772;
        v1545 = *(*v375 + 560);
        v1546 = v1772;
        v1547 = v1545(v1785, v1791, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        v1548 = v1791[0];
        v911, v1549, v1550, v1551, v1552, v1553, v1554, v1555;

        if ((v1547 & 1) == 0)
        {
          goto LABEL_902;
        }

        sub_1CF19BFD0(v1556);
        v1557 = v1799;
        v1558 = swift_allocObject();
        *(v1558 + 16) = v1557;
        v1559 = swift_allocObject();
        *(v1559 + 16) = sub_1CF4858A0;
        *(v1559 + 24) = v1558;
        v1560 = v1557;
        v1810 = sub_1CF9E6108();
        v1561 = sub_1CF9E72C8();
        v1562 = swift_allocObject();
        *(v1562 + 16) = 32;
        v1563 = swift_allocObject();
        *(v1563 + 16) = 8;
        v1564 = swift_allocObject();
        *(v1564 + 16) = sub_1CF485964;
        *(v1564 + 24) = v1559;
        v1565 = swift_allocObject();
        *(v1565 + 16) = sub_1CF485960;
        *(v1565 + 24) = v1564;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE30, &unk_1CFA05520);
        swift_allocObject();
        v1566 = sub_1CF06DA80();
        *v1567 = sub_1CF485A70;
        v1567[1] = v1562;
        v1567[2] = sub_1CF485A70;
        v1567[3] = v1563;
        v1567[4] = sub_1CF485884;
        v1567[5] = v1565;

        v1566, v1568, v1569, v1570, v1571, v1572, v1573, v1574;
        LODWORD(v1779) = v1561;
        if (os_log_type_enabled(v1810, v1561))
        {
          v1575 = sub_1CF1B5D40(12);
          v1576 = swift_slowAlloc();
          v1782[0] = 0;
          v1787 = v1576;
          *v1575 = 258;
          v1790[0] = v1575 + 2;
          v1791[0] = sub_1CF485A70;
          v1791[1] = v1562;
          sub_1CF1B5D64(v1791, v1790, v1782, &v1787);

          v1791[0] = sub_1CF485A70;
          v1791[1] = v1563;
          sub_1CF1B5D64(v1791, v1790, v1782, &v1787);

          v1791[0] = sub_1CF485884;
          v1791[1] = v1565;
          sub_1CF1B5D64(v1791, v1790, v1782, &v1787);

          v911, v1577, v1578, v1579, v1580, v1581, v1582, v1583;
          _os_log_impl(&dword_1CEFC7000, v1810, v1779, "♻️  breaking parent creation cycle by disabling path-matching condition for propagation of %s", v1575, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v1576);
          MEMORY[0x1D386CDC0](v1576, -1, -1);
          sub_1CF1B5D48();
        }

LABEL_957:
        v911, v1354, v1355, v1356, v1357, v1358, v1359, v1360;

        (*(v1722 + 8))(v1717, v1723);
        goto LABEL_962;
      }

      if (swift_getEnumCaseMultiPayload() != 22)
      {
        v974 = v1769;
        v934 = v1763;
        v935 = &unk_1EC4C4E20;
        v936 = &unk_1CFA05350;
        goto LABEL_616;
      }

      v1767 = *v1763;
      if (v1767 < 0)
      {
        v985 = v1769;

        goto LABEL_617;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCD0, &unk_1CF9FEFD0);
      v937 = swift_dynamicCastClass();
      if (v937 && (v938 = v937, *(v937 + 112) == 3))
      {
        v939 = *(v937 + 96);
        v1762 = *(v937 + 104);
        v1782[0] = v939;
        v1760 = v1769;
        sub_1CF03C530(v939, v1762, 3u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
        if ((swift_dynamicCast() & 1) == 0)
        {

          memset(v1791, 0, 88);
          LOBYTE(v1791[11]) = -1;
          memset(&v1790[4], 0, 48);
          *(&v1790[9] + 1) = *(&v1791[9] + 1);
          memset(v1790, 0, 32);
          v934 = v1790;
          v935 = &qword_1EC4BFE78;
          v936 = &qword_1CFA05558;
          goto LABEL_616;
        }

        if (LOBYTE(v1791[11]) != 1)
        {

          sub_1CF480678(v1791[0], v1791[1], v1791[2], v1791[3], v1791[4], v1791[5], v1791[6], v1791[7], v1791[8], v1791[9], v1791[10], v1791[11]);
          goto LABEL_617;
        }

        v1791[2], v940, v941, v942, v943, v944, v945, v946;
        sub_1CF480620(v1791[4], v1791[5]);

        v947 = v1791[0];
        v1758 = v947;
        v948 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v1759 = v949;
        v950 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v1762 = v951;
        if (v948 == v950 && v1759 == v1762)
        {
          v952 = v1758;
          v1757 = v1772;

          v1759, v953, v954, v955, v956, v957, v958, v959;
          v1762, v960, v961, v962, v963, v964, v965, v966;
LABEL_632:
          v1001 = *(v938 + 144);
          if (*(v938 + 152))
          {
            if (*(v938 + 152) == 1)
            {
              if (LOBYTE(v1786[1]) == 1 && v1001 == v1786[0])
              {
                goto LABEL_954;
              }
            }

            else if (v1001)
            {
              if (LOBYTE(v1786[1]) == 2 && v1786[0] == 1)
              {
                goto LABEL_954;
              }
            }

            else if (LOBYTE(v1786[1]) == 2 && !v1786[0])
            {
              goto LABEL_954;
            }
          }

          else if (!LOBYTE(v1786[1]) && v1001 == LODWORD(v1786[0]))
          {
LABEL_954:
            v911, v967, v968, v969, v970, v971, v972, v973;
            sub_1CF19BFD0(v1675);
            v1676 = swift_allocObject();
            v1677 = v1758;
            *(v1676 + 16) = v1758;
            v1678 = swift_allocObject();
            *(v1678 + 16) = sub_1CF48089C;
            *(v1678 + 24) = v1676;
            v1810 = v1677;
            v1679 = sub_1CF9E6108();
            LODWORD(v1677) = sub_1CF9E72C8();
            v1680 = swift_allocObject();
            *(v1680 + 16) = 32;
            v1681 = swift_allocObject();
            *(v1681 + 16) = 8;
            v1682 = swift_allocObject();
            *(v1682 + 16) = sub_1CF485964;
            *(v1682 + 24) = v1678;
            v1683 = swift_allocObject();
            *(v1683 + 16) = sub_1CF485960;
            *(v1683 + 24) = v1682;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE30, &unk_1CFA05520);
            swift_allocObject();
            v1684 = sub_1CF06DA80();
            *v1685 = sub_1CF485A70;
            v1685[1] = v1680;
            v1685[2] = sub_1CF485A70;
            v1685[3] = v1681;
            v1685[4] = sub_1CF485884;
            v1685[5] = v1683;

            v1684, v1686, v1687, v1688, v1689, v1690, v1691, v1692;
            LODWORD(v1777) = v1677;
            v1779 = v1679;
            if (os_log_type_enabled(v1679, v1677))
            {
              v1700 = sub_1CF1B5D40(12);
              v1701 = swift_slowAlloc();
              v1782[0] = 0;
              v1787 = v1701;
              *v1700 = 258;
              v1790[0] = v1700 + 2;
              v1791[0] = sub_1CF485A70;
              v1791[1] = v1680;
              sub_1CF1B5D64(v1791, v1790, v1782, &v1787);

              v1791[0] = sub_1CF485A70;
              v1791[1] = v1681;
              sub_1CF1B5D64(v1791, v1790, v1782, &v1787);

              v1791[0] = sub_1CF485884;
              v1791[1] = v1683;
              sub_1CF1B5D64(v1791, v1790, v1782, &v1787);

              v911, v1702, v1703, v1704, v1705, v1706, v1707, v1708;
              _os_log_impl(&dword_1CEFC7000, v1779, v1777, "♻️  breaking move-back vs creation cycle by disabling path-matching condition for propagation of %s", v1700, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v1701);
              MEMORY[0x1D386CDC0](v1701, -1, -1);
              sub_1CF1B5D48();
            }

            v911, v1693, v1694, v1695, v1696, v1697, v1698, v1699;

            (*(v1722 + 8))(v1713, v1723);
            v1709 = v1810;
            goto LABEL_963;
          }

          goto LABEL_617;
        }

        LODWORD(v1757) = sub_1CF9E8048();
        v986 = v1758;
        v1756 = v1772;

        v1755 = v986;
        v1759, v987, v988, v989, v990, v991, v992, v993;
        v1762, v994, v995, v996, v997, v998, v999, v1000;
        if (v1757)
        {
          goto LABEL_632;
        }
      }

      else
      {
        v984 = v1769;
      }

      goto LABEL_617;
    }

LABEL_619:
    v930 = &qword_1EC4BFBC0;
    v931 = &unk_1CF9FCAC0;
LABEL_620:
    sub_1CEFCCC44(v1793, v930, v931);
    v923 = v911;
    if (v924 == sub_1CF55B5A0(v911))
    {
      v911, v976, v977, v978, v979, v980, v981, v982;
      v912 = v1789[0];
      v913 = LOWORD(v1789[1]);
      goto LABEL_764;
    }

    sub_1CF90333C();
    v927 += 16;
  }

  while (!__OFADD__(v924++, 1));
  __break(1u);
LABEL_939:
  v1790[0] = v1768;
  LOBYTE(v1790[1]) = v922;
  v1597 = (*(v1770->isa + 70))(v1790, v1786, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (v1597)
  {
    v911, v1245, v1246, v1247, v1248, v1249, v1250, v1251;
    sub_1CF19BFD0(v1602);
    v1603 = v1799;
    v1604 = swift_allocObject();
    *(v1604 + 16) = v1603;
    v1605 = swift_allocObject();
    *(v1605 + 16) = sub_1CF4858A0;
    *(v1605 + 24) = v1604;
    v1606 = v1603;
    v1810 = sub_1CF9E6108();
    v1607 = sub_1CF9E72C8();
    v1608 = swift_allocObject();
    *(v1608 + 16) = 32;
    v1609 = swift_allocObject();
    *(v1609 + 16) = 8;
    v1610 = swift_allocObject();
    *(v1610 + 16) = sub_1CF485964;
    *(v1610 + 24) = v1605;
    v1611 = swift_allocObject();
    *(v1611 + 16) = sub_1CF485960;
    *(v1611 + 24) = v1610;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE30, &unk_1CFA05520);
    swift_allocObject();
    v1612 = sub_1CF06DA80();
    *v1613 = sub_1CF485A70;
    v1613[1] = v1608;
    v1613[2] = sub_1CF485A70;
    v1613[3] = v1609;
    v1613[4] = sub_1CF485884;
    v1613[5] = v1611;

    v1612, v1614, v1615, v1616, v1617, v1618, v1619, v1620;
    LODWORD(v1779) = v1607;
    if (os_log_type_enabled(v1810, v1607))
    {
      v1628 = sub_1CF1B5D40(12);
      v1629 = swift_slowAlloc();
      v1787 = 0;
      v1783 = v1629;
      *v1628 = 258;
      v1782[0] = v1628 + 2;
      v1791[0] = sub_1CF485A70;
      v1791[1] = v1608;
      sub_1CF1B5D64(v1791, v1782, &v1787, &v1783);

      v1791[0] = sub_1CF485A70;
      v1791[1] = v1609;
      sub_1CF1B5D64(v1791, v1782, &v1787, &v1783);

      v1791[0] = sub_1CF485884;
      v1791[1] = v1611;
      sub_1CF1B5D64(v1791, v1782, &v1787, &v1783);

      v911, v1630, v1631, v1632, v1633, v1634, v1635, v1636;
      _os_log_impl(&dword_1CEFC7000, v1810, v1779, "♻️  breaking replacing a parent cycle by disabling path-matching condition for propagation of %s", v1628, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v1629);
      MEMORY[0x1D386CDC0](v1629, -1, -1);
      sub_1CF1B5D48();
    }

    v911, v1621, v1622, v1623, v1624, v1625, v1626, v1627;

    (*(v1722 + 8))(v1714, v1723);
    goto LABEL_962;
  }

LABEL_827:
  if (LOBYTE(v1793[1]) == 255)
  {
LABEL_894:
    v911, v1245, v1246, v1247, v1248, v1249, v1250, v1251;
    goto LABEL_895;
  }

  v1790[0] = v1793[0];
  LOBYTE(v1790[1]) = v1793[1];
  v1252 = (*(v1770->isa + 73))(v1790, &v1799, &v1800, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  v911, v1253, v1254, v1255, v1256, v1257, v1258, v1259;
  if (v1252)
  {
    sub_1CF19BFD0(v1260);
    v1261 = v1799;
    v1262 = swift_allocObject();
    *(v1262 + 16) = v1261;
    v1263 = swift_allocObject();
    *(v1263 + 16) = sub_1CF4858A0;
    *(v1263 + 24) = v1262;
    v1264 = v1261;
    v1810 = sub_1CF9E6108();
    v1265 = sub_1CF9E72C8();
    v1266 = swift_allocObject();
    *(v1266 + 16) = 32;
    v1267 = swift_allocObject();
    *(v1267 + 16) = 8;
    v1268 = swift_allocObject();
    *(v1268 + 16) = sub_1CF485964;
    *(v1268 + 24) = v1263;
    v1269 = swift_allocObject();
    *(v1269 + 16) = sub_1CF485960;
    *(v1269 + 24) = v1268;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE30, &unk_1CFA05520);
    swift_allocObject();
    v1270 = sub_1CF06DA80();
    *v1271 = sub_1CF485A70;
    v1271[1] = v1266;
    v1271[2] = sub_1CF485A70;
    v1271[3] = v1267;
    v1271[4] = sub_1CF485884;
    v1271[5] = v1269;

    v1270, v1272, v1273, v1274, v1275, v1276, v1277, v1278;
    LODWORD(v1779) = v1265;
    if (os_log_type_enabled(v1810, v1265))
    {
      v1286 = sub_1CF1B5D40(12);
      v1287 = swift_slowAlloc();
      v1787 = 0;
      v1783 = v1287;
      *v1286 = 258;
      v1782[0] = v1286 + 2;
      v1791[0] = sub_1CF485A70;
      v1791[1] = v1266;
      sub_1CF1B5D64(v1791, v1782, &v1787, &v1783);

      v1791[0] = sub_1CF485A70;
      v1791[1] = v1267;
      sub_1CF1B5D64(v1791, v1782, &v1787, &v1783);

      v1791[0] = sub_1CF485884;
      v1791[1] = v1269;
      sub_1CF1B5D64(v1791, v1782, &v1787, &v1783);

      v911, v1288, v1289, v1290, v1291, v1292, v1293, v1294;
      _os_log_impl(&dword_1CEFC7000, v1810, v1779, "♻️  breaking reparent-to-new cycle by disabling path-matching condition for propagation of %s", v1286, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v1287);
      MEMORY[0x1D386CDC0](v1287, -1, -1);
      sub_1CF1B5D48();
    }

    v911, v1279, v1280, v1281, v1282, v1283, v1284, v1285;

    (*(v1722 + 8))(v1716, v1723);
    goto LABEL_962;
  }

LABEL_895:
  v1467 = v1793[1];
  if (LOBYTE(v1793[1]) == 255)
  {

    v911, v1537, v1538, v1539, v1540, v1541, v1542, v1543;
    sub_1CF4804C0(v1789[0], LOWORD(v1789[1]));
    sub_1CEFCCC44(v1796, &unk_1EC4BFC90, &unk_1CFA053E0);
    sub_1CEFCCC44(v1761, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

    sub_1CEFCCC44(v1793, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    v1468 = 0;
    *(v1778 + 8) = -256;
  }

  else
  {
    v1468 = v1793[0];

    v911, v1469, v1470, v1471, v1472, v1473, v1474, v1475;
    sub_1CF4804C0(v1789[0], LOWORD(v1789[1]));
    sub_1CEFCCC44(v1796, &unk_1EC4BFC90, &unk_1CFA053E0);
    sub_1CEFCCC44(v1761, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

    sub_1CEFCCC44(v1793, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    v1476 = v1778;
    *(v1778 + 8) = v1467;
    *(v1476 + 9) = 1;
  }

  *v1778 = v1468;
}