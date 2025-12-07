uint64_t sub_247969260()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_247969298@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_247971874();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  (*(v5 + 16))(v7, a1, v4);
  sub_247971894();
  swift_allocObject();
  v9 = sub_247971884();
  result = (*(v5 + 8))(a1, v4);
  *(v8 + 16) = v9;
  *a2 = v8;
  return result;
}

uint64_t sub_2479693C8@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v239 = a2;
  v236 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE58F00, &qword_247971FA8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v235 = &v217 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v234 = &v217 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v232 = &v217 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v233 = &v217 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v230 = &v217 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v231 = &v217 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v228 = &v217 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v229 = &v217 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v227 = &v217 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v226 = &v217 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v219 = &v217 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v218 = &v217 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v225 = &v217 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v224 = &v217 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v217 = &v217 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v223 = &v217 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v222 = &v217 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v220 = &v217 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v221 = &v217 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v217 - v44;
  v46 = MEMORY[0x28223BE20](v43);
  v48 = &v217 - v47;
  v49 = MEMORY[0x28223BE20](v46);
  v51 = &v217 - v50;
  v52 = MEMORY[0x28223BE20](v49);
  v54 = &v217 - v53;
  v55 = MEMORY[0x28223BE20](v52);
  v57 = &v217 - v56;
  v58 = MEMORY[0x28223BE20](v55);
  v60 = &v217 - v59;
  v61 = MEMORY[0x28223BE20](v58);
  v63 = &v217 - v62;
  MEMORY[0x28223BE20](v61);
  v65 = &v217 - v64;
  v66 = sub_247971854();
  v67 = *(v66 - 8);
  v243 = v66;
  v244 = v67;
  v68 = *(v67 + 56);
  v240 = v65;
  v238 = v67 + 56;
  v237 = v68;
  (v68)(v65, 1, 1);
  v245 = a1;
  v69 = sub_2479717D4();
  v70 = v69;
  if (v69 > 0xFF36AD3976A092A4)
  {
    if (v69 > 0x31BF4070DB2F13F5)
    {
      v72 = v240;
      if (v69 > 0x5AB466FC8E211106)
      {
        if (v69 <= 0x72D244C5DA3817E0)
        {
          v82 = v244;
          if (v69 == 0x5AB466FC8E211107)
          {
            sub_24796C534((v241 + 3), v246);
            v83 = v247;
            v84 = v248;
            v85 = __swift_project_boxed_opaque_existential_1(v246, v247);
            v86 = sub_2479717D4();
            if (v86 == 0x371451BC23D3ED89)
            {
              LODWORD(v78) = 1;
              v87 = v242;
            }

            else
            {
              v87 = v242;
              if (v86 != 0xE943957390EDD167)
              {
                goto LABEL_289;
              }

              LODWORD(v78) = 0;
            }

            if (v87)
            {
              __swift_destroy_boxed_opaque_existential_1(v246);
              v188 = (*(v82 + 48))(v72, 1, v243);
              goto LABEL_274;
            }

            v241 = v85;
            v191 = sub_2479717A4();
            v192 = sub_2479717A4();
            v193 = sub_2479717C4();
            v194 = 0x10000;
            if ((v192 & 1) == 0)
            {
              v194 = 0;
            }

            v195 = v194 | (v193 << 32);
            v196 = 256;
            if ((v191 & 1) == 0)
            {
              v196 = 0;
            }

            (*(v84 + 96))(v195 | v196 | v78, v83, v84);
            __swift_destroy_boxed_opaque_existential_1(v246);
            v197 = v217;
            v198 = v242;
            sub_2479717E4();
            if (!v198)
            {
              v245 = 0;
              v78 = v243;
              v237(v197, 0, 1, v243);
              v79 = *(v82 + 48);
              if (v79(v72, 1, v78) != 1)
              {
                sub_24796C45C(v72);
              }

              v110 = v197;
              goto LABEL_159;
            }
          }

          else
          {
            if (v69 != 0x6235F79F0F251BA0)
            {
              goto LABEL_287;
            }

            v151 = v241[6];
            v152 = v241[7];
            __swift_project_boxed_opaque_existential_1(v241 + 3, v151);
            (*(v152 + 40))(v151, v152);
            v153 = v242;
            sub_2479717E4();
            if (!v153)
            {
              v245 = 0;
              v78 = v243;
              v237(v51, 0, 1, v243);
              v154 = *(v82 + 48);
              if (v154(v72, 1, v78) != 1)
              {
                sub_24796C45C(v72);
              }

              sub_24796C4C4(v51, v72);
              v79 = v154;
              if (!v154(v72, 1, v78))
              {
                sub_247971834();
                sub_247971804();
              }

              goto LABEL_201;
            }
          }

          LODWORD(v78) = v249;
          result = (*(v82 + 48))(v72, 1, v243);
          goto LABEL_280;
        }

        v88 = v244;
        if (v69 != 0x72D244C5DA3817E1)
        {
          if (v69 != 0x72E46FD363089C9FLL)
          {
            goto LABEL_287;
          }

          v160 = v241[6];
          v161 = v241[7];
          __swift_project_boxed_opaque_existential_1(v241 + 3, v160);
          (*(v161 + 8))(v160, v161);
          v162 = v242;
          sub_2479717E4();
          if (v162)
          {
            goto LABEL_128;
          }

          v245 = 0;
          v163 = v243;
          v237(v63, 0, 1, v243);
          v79 = *(v88 + 48);
          if (v79(v72, 1, v163) != 1)
          {
            sub_24796C45C(v72);
          }

          sub_24796C4C4(v63, v72);
          v136 = v72;
          v78 = v243;
LABEL_112:
          if (v79(v136, 1, v78))
          {
            goto LABEL_201;
          }

          goto LABEL_183;
        }

        v115 = v241[6];
        v116 = v241[7];
        __swift_project_boxed_opaque_existential_1(v241 + 3, v115);
        (*(v116 + 136))(v115, v116);
        v117 = &v252;
LABEL_83:
        v146 = *(v117 - 32);
        v147 = v242;
        sub_2479717E4();
        if (!v147)
        {
          v245 = 0;
          v78 = v243;
          v237(v146, 0, 1, v243);
          v79 = *(v88 + 48);
          if (v79(v72, 1, v78) != 1)
          {
            sub_24796C45C(v72);
          }

          sub_24796C4C4(v146, v72);
          if (v79(v72, 1, v78))
          {
            goto LABEL_201;
          }

          goto LABEL_200;
        }

        goto LABEL_128;
      }

      if (v69 == 0x31BF4070DB2F13F6)
      {
        v120 = v241[6];
        v121 = v241[7];
        __swift_project_boxed_opaque_existential_1(v241 + 3, v120);
        (*(v121 + 160))(v120, v121);
        v122 = v228;
        v123 = v242;
        sub_2479717E4();
        if (!v123)
        {
          v245 = 0;
          v78 = v243;
          v237(v122, 0, 1, v243);
          v79 = *(v244 + 48);
          if (v79(v72, 1, v78) != 1)
          {
            sub_24796C45C(v72);
          }

          sub_24796C4C4(v122, v72);
          if (v79(v72, 1, v78))
          {
            goto LABEL_201;
          }

          goto LABEL_200;
        }
      }

      else
      {
        if (v69 != 0x3B97179C438E7D3FLL)
        {
          v88 = v244;
          if (v69 != 0x4AEFB38382AAD867)
          {
            goto LABEL_287;
          }

          v144 = v241[6];
          v145 = v241[7];
          __swift_project_boxed_opaque_existential_1(v241 + 3, v144);
          (*(v145 + 144))(v144, v145);
          v117 = &v253;
          goto LABEL_83;
        }

        v100 = v241[6];
        v101 = v241[7];
        __swift_project_boxed_opaque_existential_1(v241 + 3, v100);
        (*(v101 + 16))(v100, v101);
        v102 = v242;
        sub_2479717E4();
        if (!v102)
        {
          v245 = 0;
          v78 = v243;
          v237(v60, 0, 1, v243);
          v103 = *(v244 + 48);
          if (v103(v72, 1, v78) != 1)
          {
            sub_24796C45C(v72);
          }

          sub_24796C4C4(v60, v72);
          v79 = v103;
          if (v103(v72, 1, v78))
          {
            goto LABEL_201;
          }

          goto LABEL_183;
        }
      }

      LODWORD(v78) = v249;
      result = (*(v244 + 48))(v72, 1, v243);
      goto LABEL_280;
    }

    v72 = v240;
    if (v69 <= 0x2D198AE7D7D567D7)
    {
      v88 = v244;
      if (v69 == 0xFF36AD3976A092A5)
      {
        v130 = v241[6];
        v131 = v241[7];
        __swift_project_boxed_opaque_existential_1(v241 + 3, v130);
        (*(v131 + 192))(v130, v131);
        v106 = &v257;
        goto LABEL_127;
      }

      if (v69 != 0x31EB8B1F9F153B4)
      {
        if (v69 != 0x27639B712DF9D8DELL)
        {
          goto LABEL_287;
        }

        v174 = v241[6];
        v175 = v241[7];
        __swift_project_boxed_opaque_existential_1(v241 + 3, v174);
        (*(v175 + 64))(v174, v175);
        v177 = v176;
        v178 = v221;
        v179 = v242;
        sub_2479717E4();
        if (!v179)
        {
          v245 = 0;
          v78 = v243;
          v237(v178, 0, 1, v243);
          v79 = *(v88 + 48);
          if (v79(v72, 1, v78) != 1)
          {
            sub_24796C45C(v72);
          }

          sub_24796C4C4(v178, v72);
          if (v79(v72, 1, v78))
          {
            goto LABEL_201;
          }

          if ((v177 & 0x100000000) == 0)
          {
            sub_247971834();
            sub_247971834();
            goto LABEL_124;
          }

LABEL_200:
          sub_247971834();
          goto LABEL_201;
        }

        goto LABEL_128;
      }

      v93 = v241[6];
      v94 = v241[7];
      __swift_project_boxed_opaque_existential_1(v241 + 3, v93);
      (*(v94 + 32))(v93, v94);
      v95 = v242;
      sub_2479717E4();
      if (v95)
      {
        goto LABEL_128;
      }

      v245 = 0;
      v78 = v243;
      v237(v54, 0, 1, v243);
      v79 = *(v88 + 48);
      if (v79(v72, 1, v78) != 1)
      {
        sub_24796C45C(v72);
      }

      v96 = v54;
      goto LABEL_71;
    }

    v71 = v244;
    if (v69 != 0x2D198AE7D7D567D8)
    {
      if (v69 == 0x2FCE95A5051B2A83)
      {
        v107 = v241[6];
        v108 = v241[7];
        __swift_project_boxed_opaque_existential_1(v241 + 3, v107);
        (*(v108 + 56))(v107, v108);
        v109 = v242;
        sub_2479717E4();
        if (v109)
        {
          goto LABEL_279;
        }

        v245 = 0;
        v78 = v243;
        v237(v45, 0, 1, v243);
        v79 = *(v71 + 48);
        if (v79(v72, 1, v78) != 1)
        {
          sub_24796C45C(v72);
        }

        v110 = v45;
LABEL_159:
        sub_24796C4C4(v110, v72);
        goto LABEL_201;
      }

      if (v69 != 0x2FECE9015A139163)
      {
        goto LABEL_287;
      }

      v184 = v241[6];
      v185 = v241[7];
      __swift_project_boxed_opaque_existential_1(v241 + 3, v184);
      (*(v185 + 80))(v184, v185);
      v186 = v222;
      v187 = v242;
      sub_2479717E4();
      if (v187)
      {
        goto LABEL_279;
      }

      v245 = 0;
      v78 = v243;
      v237(v186, 0, 1, v243);
      v79 = *(v71 + 48);
      if (v79(v72, 1, v78) != 1)
      {
        sub_24796C45C(v72);
      }

      sub_24796C4C4(v186, v72);
      if (v79(v72, 1, v78))
      {
        goto LABEL_201;
      }

      goto LABEL_183;
    }

    sub_24796C534((v241 + 3), v246);
    v137 = v247;
    v138 = v248;
    __swift_project_boxed_opaque_existential_1(v246, v247);
    v139 = sub_2479717D4();
    if (v139 > 0xF7A18E1D22D08A90)
    {
      v140 = v242;
      if (v139 > 0x1BF81CE64F07AF5ELL)
      {
        if (v139 <= 0x5DEB4BD3591B78E3)
        {
          if (v139 <= 0x2F2B502739B04598)
          {
            if (v139 == 0x1BF81CE64F07AF5FLL)
            {
              v78 = 15;
              goto LABEL_272;
            }

            if (v139 == 0x2AC83335E2A52E86)
            {
              v78 = 10;
              goto LABEL_272;
            }
          }

          else
          {
            switch(v139)
            {
              case 0x2F2B502739B04599:
                v78 = 8;
                goto LABEL_272;
              case 0x418732BF980FEFD2:
                v78 = 36;
                goto LABEL_272;
              case 0x42841AE7412F624ELL:
                v78 = 37;
                goto LABEL_272;
            }
          }
        }

        else if (v139 > 0x78DF870862C02B91)
        {
          switch(v139)
          {
            case 0x78DF870862C02B92:
              v78 = 25;
              goto LABEL_272;
            case 0x7AB3544148B1E1B7:
              v78 = 7;
              goto LABEL_272;
            case 0x7F5D3A1A2CB8F720:
              v78 = 3;
              goto LABEL_272;
          }
        }

        else
        {
          switch(v139)
          {
            case 0x5DEB4BD3591B78E4:
              v78 = 28;
              goto LABEL_272;
            case 0x656AA29B2034004ELL:
              v78 = 40;
              goto LABEL_272;
            case 0x714EE36D8BEDD13ELL:
              v78 = 2;
              goto LABEL_272;
          }
        }
      }

      else if (v139 <= 0x3D3D863DC239E3DLL)
      {
        if (v139 <= 0xFBAF50BAF192177ELL)
        {
          if (v139 == 0xF7A18E1D22D08A91)
          {
            v78 = 0;
            goto LABEL_272;
          }

          if (v139 == 0xF939AE07D1B76443)
          {
            v78 = 17;
            goto LABEL_272;
          }
        }

        else
        {
          switch(v139)
          {
            case 0xFBAF50BAF192177FLL:
              v78 = 22;
              goto LABEL_272;
            case 0xFC78C82705D56FD3:
              v78 = 30;
              goto LABEL_272;
            case 0x6B4AA5139D1C4BLL:
              v78 = 33;
              goto LABEL_272;
          }
        }
      }

      else if (v139 > 0x17D6386C38CD04C3)
      {
        switch(v139)
        {
          case 0x17D6386C38CD04C4:
            v78 = 43;
            goto LABEL_272;
          case 0x19DBCC66CD1226D8:
            v78 = 16;
            goto LABEL_272;
          case 0x1AC4EDF324CC3F83:
            v78 = 1;
            goto LABEL_272;
        }
      }

      else
      {
        switch(v139)
        {
          case 0x3D3D863DC239E3ELL:
            v78 = 34;
            goto LABEL_272;
          case 0xE1551273F2C8F91:
            v78 = 24;
            goto LABEL_272;
          case 0x113C060897761B63:
            v78 = 38;
            goto LABEL_272;
        }
      }
    }

    else
    {
      v140 = v242;
      if (v139 > 0xC89696D3BDD2FCEFLL)
      {
        if (v139 <= 0xD76D6E510A1C7BE2)
        {
          if (v139 <= 0xD124D0A81190947ELL)
          {
            if (v139 == 0xC89696D3BDD2FCF0)
            {
              v78 = 5;
              goto LABEL_272;
            }

            if (v139 == 0xCC92900C433FE06DLL)
            {
              v78 = 18;
              goto LABEL_272;
            }
          }

          else
          {
            switch(v139)
            {
              case 0xD124D0A81190947FLL:
                v78 = 29;
                goto LABEL_272;
              case 0xD1729F554A45BDECLL:
                v78 = 26;
                goto LABEL_272;
              case 0xD53D863AB432198BLL:
                v78 = 11;
                goto LABEL_272;
            }
          }
        }

        else if (v139 > 0xE1B29391201EDA1CLL)
        {
          switch(v139)
          {
            case 0xE1B29391201EDA1DLL:
              v78 = 35;
              goto LABEL_272;
            case 0xE5ABCB70FB0576BALL:
              v78 = 32;
              goto LABEL_272;
            case 0xEBD1015A2B9EB77CLL:
              v78 = 12;
              goto LABEL_272;
          }
        }

        else
        {
          switch(v139)
          {
            case 0xD76D6E510A1C7BE3:
              v78 = 21;
              goto LABEL_272;
            case 0xDA26D915BB129394:
              v78 = 14;
              goto LABEL_272;
            case 0xDCCBE59234188423:
              v78 = 42;
              goto LABEL_272;
          }
        }
      }

      else if (v139 <= 0x9D4B7954B05BFDBDLL)
      {
        if (v139 <= 0x8E9889B77234E946)
        {
          if (v139 == 0x84035BF99132125ELL)
          {
            v78 = 9;
            goto LABEL_272;
          }

          if (v139 == 0x88394872043826BDLL)
          {
            v78 = 6;
            goto LABEL_272;
          }
        }

        else
        {
          switch(v139)
          {
            case 0x8E9889B77234E947:
              v78 = 4;
              goto LABEL_272;
            case 0x8F1538728B7CDEA4:
              v78 = 27;
              goto LABEL_272;
            case 0x91EC7732FD261E2ELL:
              v78 = 41;
              goto LABEL_272;
          }
        }
      }

      else if (v139 > 0xA13AE2AABE773445)
      {
        switch(v139)
        {
          case 0xA13AE2AABE773446:
            v78 = 31;
            goto LABEL_272;
          case 0xAACEDDC4B24F04BBLL:
            v78 = 19;
            goto LABEL_272;
          case 0xB76BD80C1D29A5DDLL:
            v78 = 13;
            goto LABEL_272;
        }
      }

      else
      {
        switch(v139)
        {
          case 0x9D4B7954B05BFDBELL:
            v78 = 20;
            goto LABEL_272;
          case 0x9FB4FE7B8C107ED7:
            v78 = 23;
LABEL_272:
            if (!v140)
            {
              v205 = sub_2479717A4();
              (*(v138 + 128))(v78, v205 & 1, v137, v138);
              __swift_destroy_boxed_opaque_existential_1(v246);
              v206 = v219;
              sub_2479717E4();
              v245 = 0;
              v78 = v243;
              v237(v206, 0, 1, v243);
              v79 = *(v71 + 48);
              if (v79(v72, 1, v78) != 1)
              {
                sub_24796C45C(v72);
              }

              v159 = v219;
LABEL_105:
              sub_24796C4C4(v159, v72);
              if (v79(v72, 1, v78))
              {
                goto LABEL_201;
              }

              goto LABEL_200;
            }

            __swift_destroy_boxed_opaque_existential_1(v246);
            v188 = (*(v71 + 48))(v72, 1, v243);
LABEL_274:
            if (v188 != 1)
            {
              v190 = v72;
              goto LABEL_276;
            }

LABEL_277:
            v204 = sub_2479717F4();
            result = (*(*(v204 - 8) + 8))(v245, v204);
            goto LABEL_283;
          case 0xA123AEFB86EACA53:
            v78 = 39;
            goto LABEL_272;
        }
      }
    }

    v252 = 0;
    v253 = 0xE000000000000000;
    v213 = v139;
    sub_2479718B4();

    v252 = 0xD00000000000001ALL;
    v253 = 0x8000000247972280;
    v255 = v213;
    v214 = sub_2479718D4();
    MEMORY[0x24C1AF350](v214);

    v216 = 0;
    i = 828;
    goto LABEL_288;
  }

  if (v69 <= 0xAA9E7E89658C60C6)
  {
    v88 = v244;
    if (v69 <= 0x9A31449AF781DAA0)
    {
      if (v69 != 0x8459910482DE32B0)
      {
        if (v69 == 0x8BBD137760ACEDA0)
        {
          v89 = v241[6];
          v90 = v241[7];
          __swift_project_boxed_opaque_existential_1(v241 + 3, v89);
          (*(v90 + 48))(v89, v90);
          v91 = v242;
          sub_2479717E4();
          if (!v91)
          {
            v245 = 0;
            v78 = v243;
            v237(v48, 0, 1, v243);
            v79 = *(v88 + 48);
            v92 = v240;
            if (v79(v240, 1, v78) != 1)
            {
              sub_24796C45C(v92);
            }

            sub_24796C4C4(v48, v92);
            v72 = v92;
            goto LABEL_201;
          }

LABEL_64:
          LODWORD(v78) = v249;
          v128 = v240;
          result = (*(v88 + 48))(v240, 1, v243);
          if (result != 1)
          {
            v129 = v128;
LABEL_282:
            result = sub_24796C45C(v129);
          }

LABEL_283:
          *v239 = v78;
          return result;
        }

        if (v69 != 0x92C89C79D4633701)
        {
          goto LABEL_287;
        }

        sub_24796C534((v241 + 3), v246);
        v164 = v247;
        v165 = v248;
        __swift_project_boxed_opaque_existential_1(v246, v247);
        v166 = v245;
        v167 = sub_2479717D4();
        MEMORY[0x28223BE20](v167);
        v215 = v166;
        v168 = v242;
        v170 = sub_24796C178(sub_24796C5E4, (&v217 - 4), 0, v169);
        v171 = sub_2479717C4();
        v172 = sub_2479717C4();
        v173 = sub_2479717D4();
        if (v173 == 0x5FE91FEE7BE681E1)
        {
          v78 = 1;
LABEL_148:
          if (v168)
          {

            __swift_destroy_boxed_opaque_existential_1(v246);
            v189 = v240;
            if ((*(v244 + 48))(v240, 1, v243) != 1)
            {
              v190 = v189;
LABEL_276:
              sub_24796C45C(v190);
              goto LABEL_277;
            }

            goto LABEL_277;
          }

          (*(v165 + 120))(v170, v171 | (v172 << 32), v78, v164, v165);

          __swift_destroy_boxed_opaque_existential_1(v246);
          v199 = v218;
          sub_2479717E4();
          v245 = 0;
          v78 = v243;
          v237(v199, 0, 1, v243);
          v79 = *(v244 + 48);
          v72 = v240;
          if (v79(v240, 1, v78) != 1)
          {
            sub_24796C45C(v72);
          }

          sub_24796C4C4(v199, v72);
          if (v79(v72, 1, v78))
          {
            goto LABEL_201;
          }

LABEL_183:
          sub_247971804();
          goto LABEL_201;
        }

        if (v173 == 0xB4634D822B7084E5)
        {
          v78 = 0;
          goto LABEL_148;
        }

        v252 = 0;
        v253 = 0xE000000000000000;
        v211 = v173;
        sub_2479718B4();

        v252 = 0xD00000000000001ALL;
        v253 = 0x8000000247972280;
        v255 = v211;
        v212 = sub_2479718D4();
        MEMORY[0x24C1AF350](v212);

        v216 = 0;
        for (i = 924; ; i = 700)
        {
LABEL_288:
          v215 = i;
          v86 = sub_2479718C4();
          __break(1u);
LABEL_289:
          v252 = 0;
          v253 = 0xE000000000000000;
          v209 = v86;
          sub_2479718B4();

          v252 = 0xD00000000000001ALL;
          v253 = 0x8000000247972280;
          v255 = v209;
          v210 = sub_2479718D4();
          MEMORY[0x24C1AF350](v210);

          v216 = 0;
        }
      }

      v124 = v241[6];
      v125 = v241[7];
      __swift_project_boxed_opaque_existential_1(v241 + 3, v124);
      (*(v125 + 104))(v124, v125);
      v126 = v224;
      v127 = v242;
      sub_2479717E4();
      if (v127)
      {
        goto LABEL_64;
      }

      v245 = 0;
      v78 = v243;
      v237(v126, 0, 1, v243);
      v79 = *(v88 + 48);
      v72 = v240;
      v183 = v79(v240, 1, v78);
LABEL_156:
      if (v183 == 1)
      {
LABEL_158:
        v110 = v126;
        goto LABEL_159;
      }

LABEL_157:
      sub_24796C45C(v72);
      goto LABEL_158;
    }

    v72 = v240;
    if (v69 != 0x9A31449AF781DAA1)
    {
      if (v69 == 0x9A8ED7C9F66DB4DCLL)
      {
        v104 = v241[6];
        v105 = v241[7];
        __swift_project_boxed_opaque_existential_1(v241 + 3, v104);
        (*(v105 + 176))(v104, v105);
        v106 = &v255;
      }

      else
      {
        if (v69 != 0xA2C6205447591559)
        {
          goto LABEL_287;
        }

        v180 = v241[6];
        v181 = v241[7];
        __swift_project_boxed_opaque_existential_1(v241 + 3, v180);
        (*(v181 + 88))(v180, v181);
        v106 = &v251;
      }

LABEL_127:
      v126 = *(v106 - 32);
      v182 = v242;
      sub_2479717E4();
      if (!v182)
      {
        v245 = 0;
        v78 = v243;
        v237(v126, 0, 1, v243);
        v79 = *(v88 + 48);
        v183 = v79(v72, 1, v78);
        goto LABEL_156;
      }

LABEL_128:
      LODWORD(v78) = v249;
      result = (*(v88 + 48))(v72, 1, v243);
      goto LABEL_280;
    }

    v132 = v241[6];
    v133 = v241[7];
    __swift_project_boxed_opaque_existential_1(v241 + 3, v132);
    (*(v133 + 200))(v132, v133);
    v134 = v234;
    v135 = v242;
    sub_2479717E4();
    if (v135)
    {
      goto LABEL_128;
    }

    v245 = 0;
    v78 = v243;
    v237(v134, 0, 1, v243);
    v79 = *(v88 + 48);
    if (v79(v72, 1, v78) != 1)
    {
      sub_24796C45C(v72);
    }

    v96 = v134;
LABEL_71:
    sub_24796C4C4(v96, v72);
    v136 = v72;
    goto LABEL_112;
  }

  v71 = v244;
  if (v69 <= 0xE4883D286D903510)
  {
    v72 = v240;
    if (v69 == 0xAA9E7E89658C60C7)
    {
      v118 = v241[6];
      v119 = v241[7];
      __swift_project_boxed_opaque_existential_1(v241 + 3, v118);
      (*(v119 + 72))(v118, v119);
      v99 = &v250;
      goto LABEL_90;
    }

    if (v69 == 0xADE6FAE7D602FBADLL)
    {
      v97 = v241[6];
      v98 = v241[7];
      __swift_project_boxed_opaque_existential_1(v241 + 3, v97);
      (*(v98 + 208))(v97, v98);
      v99 = &v259;
      goto LABEL_90;
    }

    if (v69 != 0xB0FDC6F7A36AD198)
    {
      goto LABEL_287;
    }

    v141 = v241[6];
    v142 = v241[7];
    __swift_project_boxed_opaque_existential_1(v241 + 3, v141);
    (*(v142 + 152))(v141, v142);
    v143 = &v254;
    goto LABEL_101;
  }

  v72 = v240;
  if (v69 > 0xEF371B9ADE48574FLL)
  {
    if (v69 == 0xEF371B9ADE485750)
    {
      v111 = v241[6];
      v112 = v241[7];
      __swift_project_boxed_opaque_existential_1(v241 + 3, v111);
      v113 = sub_2479717D4();
      (*(v112 + 24))(v113, v111, v112);
      v114 = v242;
      sub_2479717E4();
      if (v114)
      {
        goto LABEL_279;
      }

      v245 = 0;
      v78 = v243;
      v237(v57, 0, 1, v243);
      v79 = *(v71 + 48);
      if (v79(v72, 1, v78) != 1)
      {
        sub_24796C45C(v72);
      }

      sub_24796C4C4(v57, v72);
      if (v79(v72, 1, v78))
      {
        goto LABEL_201;
      }

      sub_247971824();
LABEL_124:
      sub_247971824();
      goto LABEL_201;
    }

    if (v69 == 0xF92368B0DC2BDCC6)
    {
      v155 = v241[6];
      v156 = v241[7];
      __swift_project_boxed_opaque_existential_1(v241 + 3, v155);
      (*(v156 + 168))(v155, v156);
      v143 = &v256;
LABEL_101:
      v157 = *(v143 - 32);
      v158 = v242;
      sub_2479717E4();
      if (v158)
      {
        goto LABEL_279;
      }

      v245 = 0;
      v78 = v243;
      v237(v157, 0, 1, v243);
      v79 = *(v71 + 48);
      if (v79(v72, 1, v78) != 1)
      {
        sub_24796C45C(v72);
      }

      v159 = v157;
      goto LABEL_105;
    }

LABEL_287:
    v246[0] = 0;
    v246[1] = 0xE000000000000000;
    sub_2479718B4();
    MEMORY[0x24C1AF350](0xD000000000000036, 0x80000002479722A0);
    v252 = v70;
    v207 = sub_2479718D4();
    MEMORY[0x24C1AF350](v207);

    v216 = 0;
    i = 666;
    goto LABEL_288;
  }

  if (v69 != 0xE4883D286D903511)
  {
    if (v69 == 0xED1379E084BB7E44)
    {
      v148 = v241[6];
      v149 = v241[7];
      __swift_project_boxed_opaque_existential_1(v241 + 3, v148);
      (*(v149 + 184))(v148, v149);
      v99 = &v258;
LABEL_90:
      v126 = *(v99 - 32);
      v150 = v242;
      sub_2479717E4();
      if (v150)
      {
        goto LABEL_279;
      }

      v245 = 0;
      v78 = v243;
      v237(v126, 0, 1, v243);
      v79 = *(v71 + 48);
      if (v79(v72, 1, v78) == 1)
      {
        goto LABEL_158;
      }

      goto LABEL_157;
    }

    goto LABEL_287;
  }

  v73 = v241[6];
  v74 = v241[7];
  __swift_project_boxed_opaque_existential_1(v241 + 3, v73);
  v75 = sub_2479717A4();
  (*(v74 + 112))(&v250, v75 & 1, v73, v74);
  v76 = v225;
  v77 = v242;
  sub_2479717E4();
  if (v77)
  {
LABEL_279:
    LODWORD(v78) = v249;
    result = (*(v71 + 48))(v72, 1, v243);
LABEL_280:
    if (result != 1)
    {
      v129 = v72;
      goto LABEL_282;
    }

    goto LABEL_283;
  }

  v245 = 0;
  v78 = v243;
  v237(v76, 0, 1, v243);
  v79 = *(v71 + 48);
  if (v79(v72, 1, v78) != 1)
  {
    sub_24796C45C(v72);
  }

  sub_24796C4C4(v76, v72);
  if (!v79(v72, 1, v78))
  {
    v80 = v245;
    sub_24796BE44(&v250);
    if (v80)
    {
      result = (v79)(v72, 1, v78);
      if (result != 1)
      {
        result = sub_24796C45C(v72);
      }

      goto LABEL_283;
    }

    v245 = 0;
  }

LABEL_201:
  v200 = (v79)(v72, 1, v78);
  v201 = v200;
  if (v200 == 1)
  {
    v202 = v236;
  }

  else
  {
    v202 = v236;
    if (v200)
    {
      sub_24796C45C(v72);
      v201 = 1;
    }

    else
    {
      sub_247971844();
    }
  }

  v203 = sub_247971864();
  return (*(*(v203 - 8) + 56))(v202, v201, 1, v203);
}

uint64_t sub_24796BE44(uint64_t *a1)
{
  v1 = *(a1 + 20);
  v2 = v1 >> 14;
  if (v1 >> 14 > 1)
  {
    if (v2 == 2)
    {
      sub_247971834();
    }
  }

  else
  {
    if (!v2)
    {
      sub_247971834();
      sub_247971834();
      sub_247971814();
      sub_247971824();
      sub_247971834();
      sub_247971834();
      sub_247971834();
      return sub_247971834();
    }

    sub_247971834();
    sub_247971824();
    sub_247971834();
  }

  return sub_247971834();
}

uint64_t sub_24796BFD8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_24796C018@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_2479693C8(a1, &v6, a3);
  if (v3)
  {
    *a2 = v6;
  }

  return result;
}

unint64_t sub_24796C0DC()
{
  result = qword_27EE58EF8;
  if (!qword_27EE58EF8)
  {
    type metadata accessor for SiriVoiceTriggerService.Server();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE58EF8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24796C178(void (*a1)(int *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = a4 - a3;
  if (a4 >= a3)
  {
    if ((a4 - a3) < 0)
    {
      goto LABEL_23;
    }

    goto LABEL_5;
  }

  if ((a3 - a4) >= 0)
  {
    v7 = a4 - a3;
LABEL_5:
    v8 = MEMORY[0x277D84F90];
    if (!v7)
    {
      return v8;
    }

    v20 = MEMORY[0x277D84F90];
    sub_24796C2F4(0, v7 & ~(v7 >> 63), 0);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v8 = v20;
      v10 = a4 - a3;
      if (a4 < a3)
      {
        v10 = 0;
      }

      v16 = v10 + 1;
      while (1)
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v18 = a3 + v9;
        a1(&v19, &v18);
        if (v4)
        {
          goto LABEL_24;
        }

        v12 = v19;
        v20 = v8;
        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_24796C2F4((v13 > 1), v14 + 1, 1);
          v8 = v20;
        }

        *(v8 + 16) = v14 + 1;
        *(v8 + 4 * v14 + 32) = v12;
        if (a4 < a3)
        {
          goto LABEL_19;
        }

        if (v16 == ++v9)
        {
          goto LABEL_20;
        }

        if (v11 == v7)
        {
          return v8;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:

  __break(1u);
  return result;
}

char *sub_24796C2F4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24796C314(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24796C314(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE58F08, &qword_247971FB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_24796C45C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE58F00, &qword_247971FA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24796C4C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE58F00, &qword_247971FA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24796C534(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_24796F370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24796FBE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24796FD3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2479706E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247970CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCSIsInternalBuildSymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!CoreSpeechFoundationLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CoreSpeechFoundationLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278EB6708;
    v7 = 0;
    CoreSpeechFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = CoreSpeechFoundationLibraryCore_frameworkLibrary;
  if (!CoreSpeechFoundationLibraryCore_frameworkLibrary)
  {
    a1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreSpeechFoundationLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"CSSecureSiriAudioProvidingProxy.m" lineNumber:22 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "CSIsInternalBuild");
  *(*(a1[4] + 8) + 24) = result;
  getCSIsInternalBuildSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  return result;
}

void *__getAudioCaptureInitializeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AudioCaptureLibrary();
  result = dlsym(v2, "AudioCaptureInitialize");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAudioCaptureInitializeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AudioCaptureLibrary()
{
  v19 = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v0 = AudioCaptureLibraryCore_frameworkLibrary;
  v15 = AudioCaptureLibraryCore_frameworkLibrary;
  if (!AudioCaptureLibraryCore_frameworkLibrary)
  {
    v9[1] = MEMORY[0x277D85DD0];
    v9[2] = 3221225472;
    v9[3] = __AudioCaptureLibraryCore_block_invoke;
    v9[4] = &unk_278EB65A8;
    v10 = &v12;
    v11 = v9;
    v16 = xmmword_278EB6578;
    v17 = *off_278EB6588;
    v18 = 0;
    v13[3] = _sl_dlopen();
    AudioCaptureLibraryCore_frameworkLibrary = *(v10[1] + 24);
    v0 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v0)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AudioCaptureLibrary(void)"];
    v5 = v3;
    v6 = v3;
    v7 = v4;
    [v5 handleFailureInFunction:v4 file:@"CSSecureSiriAudioProvidingProxy.m" lineNumber:18 description:{@"%s", v9[0]}];
    v8 = v7;
    v0 = v6;

    __break(1u);
    goto LABEL_7;
  }

  v1 = v9[0];
  if (v9[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void sub_247971094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __AudioCaptureLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  AudioCaptureLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreSpeechFoundationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreSpeechFoundationLibraryCore_frameworkLibrary = result;
  return result;
}

unsigned __int8 *f32__v_visit(unsigned __int8 *result, uint64_t a2)
{
  v3 = result;
  v4 = *result;
  if (v4 != 1)
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        if (*(result + 2))
        {
          v5 = 0;
          do
          {
            result = (*(a2 + 16))(a2, v5, *(*(v3 + 1) + 4 * v5));
            ++v5;
          }

          while (v5 < *(v3 + 2));
        }

        return result;
      }

      printf("TB_FATAL: invalid tag in array metadata: 0x%x (%s:%d)\n", v4, "/Library/Caches/com.apple.xbs/Binaries/CoreSpeech_Common/install/TempContent/Objects/CoreSpeech.build/CoreSpeechExclave.build/DerivedSources/CoreSpeechExclave_C.c", 1928);
      _os_crash("TB_FATAL: invalid tag in array metadata: 0x%x", v7);
      __break(1u);
LABEL_16:
      printf("TB_ASSERT: (err == TB_ERROR_SUCCESS) && failed to wrap packed buffer, \b\b (%s:%d)\n", "CoreSpeechExclave_C.c", 1906);
      result = _os_crash("TB_ASSERT: (err == TB_ERROR_SUCCESS) && failed to wrap packed buffer");
      __break(1u);
      return result;
    }

    result = tb_message_subrange();
    if (!result)
    {
      return result;
    }

    printf("TB_ASSERT: (vErr == TB_ERROR_SUCCESS) && tb_message_subrange failed, \b\b (%s:%d)\n", "CoreSpeechExclave_C.c", 1925);
    _os_crash("TB_ASSERT: (vErr == TB_ERROR_SUCCESS) && tb_message_subrange failed");
    __break(1u);
  }

  tb_transport_message_buffer_wrap_buffer();
  if (tb_message_construct())
  {
    goto LABEL_16;
  }

  result = tb_message_configure_received();
  if (*(v3 + 3))
  {
    v6 = 0;
    do
    {
      tb_message_decode_f32();
      result = (*(a2 + 16))(a2, v6++, 0.0);
    }

    while (v6 < *(v3 + 3));
  }

  return result;
}

uint64_t __f32__v_visit_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 40) + 32))
  {
    v3 = 0;
    do
    {
      tb_message_decode_f32();
      (*(*(a1 + 32) + 16))(0.0);
      ++v3;
    }

    while (v3 < *(*(a1 + 40) + 32));
  }

  return 0;
}

uint64_t corespeechexclave_voicetriggersecondpassresulttriggered__decode(uint64_t a1, uint64_t a2)
{
  tb_message_precheck_decoding();
  tb_message_raw_decode_u64();
  tb_message_raw_decode_f64();
  tb_message_raw_decode_u32();
  tb_message_raw_decode_u64();
  tb_message_raw_decode_u64();
  tb_message_raw_decode_u64();
  v3 = *(a2 + 40);
  if (v3 != 0x8F4B41BADF9BCEB7 && v3 != 0x63184B8076456B7FLL && v3 != 0xFD9F2E793902DAD9)
  {
    return 7;
  }

  tb_message_raw_decode_u64();
  result = 0;
  v5 = *(a2 + 48);
  if (v5 <= 0xA2CA431DF93DFCD4)
  {
    if (v5 == 0x92393AFA3ED5D670)
    {
      return result;
    }

    v6 = 0x95C28B8FC17A7457;
LABEL_10:
    if (v5 == v6)
    {
      return result;
    }

    return 7;
  }

  if (v5 != 0xA2CA431DF93DFCD5 && v5 != 0xCEA6F7204A05BC07)
  {
    v6 = 0x70B00C30047C77C5;
    goto LABEL_10;
  }

  return result;
}

uint64_t corespeechexclave_sirivoicetriggerservice_bargeinprocess(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  result = tb_client_connection_message_construct();
  if (!result)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_complete();
    v3 = 0;
    tb_connection_send_query();
    return tb_client_connection_message_destruct();
  }

  return result;
}