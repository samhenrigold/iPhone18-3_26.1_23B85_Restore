unsigned __int8 *sub_1DCE85C94(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1;
  if (a1 == a2)
  {
    return v3;
  }

  v4 = sub_1DD0DB04C();
  v231 = *(v4 - 8);
  v232 = v4;
  v245 = *(v231 + 64);
  v228 = sub_1DD0DC76C();
  v241 = *(v228 - 8);
  v255 = v3;
  v227 = v241;
  v5 = *(v241 + 80);
  v223 = sub_1DD0DB1EC();
  v243 = *(v223 - 8);
  v222 = v243;
  v233 = *(v243 + 80) | v5;
  v229 = sub_1DD0DB4BC();
  v237 = *(v229 - 8);
  v256 = v237;
  v6 = *(v237 + 80) & 0xF8;
  v230 = sub_1DD0DB3EC();
  v7 = *(v230 - 8);
  v8 = *(v7 + 80);
  v9 = v6 | v8 | 7;
  v221 = sub_1DD0DD12C();
  v235 = *(v221 - 8);
  v220 = v235;
  v10 = *(v235 + 80);
  v11 = sub_1DD0DD08C();
  v12 = v9;
  v219 = v11;
  v13 = v11;
  v14 = v8;
  v15 = *(v13 - 8);
  v218 = v15;
  v16 = (v233 | (v10 | *(v15 + 80))) & 0xF8 | v9;
  v246 = v245 + v16;
  v17 = *(v241 + 64);
  v217 = v17 + 7;
  if (((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v17)
  {
    v17 = ((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v17 <= *(v243 + 64))
  {
    v17 = *(v243 + 64);
  }

  if (v17 <= 0x18)
  {
    v18 = 24;
  }

  else
  {
    v18 = v17;
  }

  v244 = *(v237 + 64) + v8;
  v212 = v7;
  v19 = *(v7 + 84);
  v20 = *(v7 + 64);
  v3 = v255;
  v211 = v20;
  if (!v19)
  {
    ++v20;
  }

  v234 = v20;
  v242 = v20 + 7;
  v225 = v244 & ~v8;
  v21 = (v20 + 7 + v225) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  v208 = v18;
  if (v22 <= v18)
  {
    v23 = v18;
  }

  else
  {
    v23 = (v21 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v24 = v21 + 31;
  v210 = (((((v24 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v210 > v23)
  {
    v23 = (((((v24 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v214 = *(v235 + 64);
  v215 = v9 + 16;
  v25 = *(v237 + 84);
  v224 = *(v7 + 84);
  v123 = v19 != 0;
  v26 = v19 - 1;
  if (v123)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (v27 <= v25)
  {
    v28 = *(v237 + 84);
  }

  else
  {
    v28 = v27;
  }

  if (v28 <= 0x7FFFFFFE)
  {
    v28 = 2147483646;
  }

  v216 = v28;
  v29 = ((v24 + ((v9 + 16 + ((v214 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v209 = v29;
  if (v29 <= v23)
  {
    v29 = v23;
  }

  v30 = *(v15 + 64);
  v207 = v30;
  if (v30 <= v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = v30;
  }

  v32 = (v31 + (v246 & ~v16) + 8) & 0xFFFFFFFFFFFFFFF8;
  v238 = *(a3 + 24);
  v236 = *(v238 - 8);
  if (*(v236 + 64) <= 9uLL)
  {
    v33 = 9;
  }

  else
  {
    v33 = *(*(v238 - 8) + 64);
  }

  if (((v32 + 63) & 0xFFFFFFFFFFFFFFF8) + 41 <= v33 + 1)
  {
    v34 = v33 + 1;
  }

  else
  {
    v34 = ((v32 + 63) & 0xFFFFFFFFFFFFFFF8) + 41;
  }

  if (v34 <= 0x29)
  {
    v35 = 41;
  }

  else
  {
    v35 = v34;
  }

  v36 = v255[v35];
  v37 = v36 - 7;
  if (v36 < 7)
  {
    v39 = a2;
  }

  else
  {
    if (v35 <= 3)
    {
      v38 = v35;
    }

    else
    {
      v38 = 4;
    }

    v39 = a2;
    switch(v38)
    {
      case 1:
        v40 = *v255;
        goto LABEL_48;
      case 2:
        v40 = *v255;
        goto LABEL_48;
      case 3:
        v40 = *v255 | (v255[2] << 16);
        goto LABEL_48;
      case 4:
        v40 = *v255;
LABEL_48:
        if (v35 < 4)
        {
          v40 |= v37 << (8 * v35);
        }

        v36 = v40 + 7;
        break;
      default:
        break;
    }
  }

  v41 = ~v16;
  v252 = ~v14;
  v254 = v31 + 1;
  v213 = ~v12;
  v226 = 8 * v33;
  switch(v36)
  {
    case 0u:
    case 1u:
    case 4u:
      goto LABEL_128;
    case 2u:
      (*(v231 + 8))(v255, v232);
      v42 = (&v255[v246] & v41);
      v47 = *(v42 + v31);
      v48 = v47 - 10;
      if (v47 >= 0xA)
      {
        if (v31 <= 3)
        {
          v49 = v31;
        }

        else
        {
          v49 = 4;
        }

        switch(v49)
        {
          case 1:
            v50 = *v42;
            goto LABEL_81;
          case 2:
            v50 = *v42;
            goto LABEL_81;
          case 3:
            v50 = *v42 | (*((&v255[v246] & v41) + 2) << 16);
            goto LABEL_81;
          case 4:
            v50 = *v42;
LABEL_81:
            if (v31 < 4)
            {
              v47 = (v50 | (v48 << (8 * v31))) + 10;
            }

            else
            {
              v47 = v50 + 10;
            }

            break;
          default:
            break;
        }
      }

      v206 = v32;
      switch(v47)
      {
        case 0u:
          goto LABEL_85;
        case 1u:
          goto LABEL_94;
        case 2u:
          goto LABEL_89;
        case 3u:
          goto LABEL_90;
        case 4u:
          goto LABEL_86;
        case 5u:
          goto LABEL_95;
        case 6u:
          goto LABEL_97;
        case 7u:
          goto LABEL_91;
        case 8u:
          goto LABEL_100;
        case 9u:
          goto LABEL_87;
        default:
          goto LABEL_125;
      }

      goto LABEL_125;
    case 3u:
      (*(v231 + 8))(v255, v232);
      v42 = (&v255[v246] & v41);
      v43 = *(v42 + v31);
      v44 = v43 - 10;
      if (v43 >= 0xA)
      {
        if (v31 <= 3)
        {
          v45 = v31;
        }

        else
        {
          v45 = 4;
        }

        switch(v45)
        {
          case 1:
            v46 = *v42;
            goto LABEL_73;
          case 2:
            v46 = *v42;
            goto LABEL_73;
          case 3:
            v46 = *v42 | (*((&v255[v246] & v41) + 2) << 16);
            goto LABEL_73;
          case 4:
            v46 = *v42;
LABEL_73:
            if (v31 < 4)
            {
              v43 = (v46 | (v44 << (8 * v31))) + 10;
            }

            else
            {
              v43 = v46 + 10;
            }

            break;
          default:
            goto LABEL_76;
        }
      }

      break;
    case 5u:
      v51 = v255[v33];
      v52 = v51 - 2;
      if (v51 >= 2)
      {
        if (v33 <= 3)
        {
          v53 = v33;
        }

        else
        {
          v53 = 4;
        }

        switch(v53)
        {
          case 1:
            v54 = *v255;
            goto LABEL_105;
          case 2:
            v54 = *v255;
            goto LABEL_105;
          case 3:
            v54 = *v255 | (v255[2] << 16);
            goto LABEL_105;
          case 4:
            v54 = *v255;
LABEL_105:
            if (v33 < 4)
            {
              v51 = (v54 | (v52 << v226)) + 2;
            }

            else
            {
              v51 = v54 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v51 == 1)
      {
        goto LABEL_111;
      }

      if (!v51)
      {
        (*(v236 + 8))(v255, v238);
      }

      goto LABEL_129;
    case 6u:
LABEL_111:

      goto LABEL_129;
    default:
      goto LABEL_129;
  }

LABEL_76:
  v206 = v32;
  switch(v43)
  {
    case 0u:
LABEL_85:
      v56 = v227;
      v55 = v228;
      goto LABEL_88;
    case 1u:
LABEL_94:
      v57 = v42;
      (*(v227 + 8))(v42, v228);

      goto LABEL_96;
    case 2u:
LABEL_89:
      v57 = v42;

      goto LABEL_96;
    case 3u:
LABEL_90:
      v57 = v42;
      swift_unknownObjectRelease();
      goto LABEL_96;
    case 4u:
LABEL_86:
      v56 = v222;
      v55 = v223;
      goto LABEL_88;
    case 5u:
LABEL_95:
      v57 = v42;

      goto LABEL_96;
    case 6u:
LABEL_97:
      v59 = v42;
      (*(v256 + 8))(v42, v229);
      v205 = v59;
      v60 = (v59 + v244) & v252;
      if (!__swift_getEnumTagSinglePayload(v60, 1, v230))
      {
        (*(v212 + 8))(v60, v230);
      }

      goto LABEL_99;
    case 7u:
LABEL_91:
      v58 = v42;
      (*(v256 + 8))(v42, v229);
      if (!__swift_getEnumTagSinglePayload((v58 + v244) & v252, 1, v230))
      {
        (*(v212 + 8))((v58 + v244) & v252, v230);
      }

      v205 = v58;

LABEL_99:

      goto LABEL_124;
    case 8u:
LABEL_100:
      v61 = v42;
      (*(v220 + 8))(v42, v221);
      v205 = v61;

      v62 = (v215 + ((v61 + v214 + 7) & 0xFFFFFFFFFFFFFFF8)) & v213;
      if (v25 == v216)
      {
        if (__swift_getEnumTagSinglePayload(v62, v25, v229))
        {
          goto LABEL_123;
        }

        v204 = (v244 + v62) & v252;
        goto LABEL_120;
      }

      if (v27 == v216)
      {
        v204 = (v244 + v62) & v252;
        if (v224 >= 2 && __swift_getEnumTagSinglePayload(v204, v224, v230) >= 2)
        {
          goto LABEL_123;
        }

        goto LABEL_120;
      }

      v63 = *(((v242 + ((v244 + v62) & v252)) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v63 >= 0xFFFFFFFF)
      {
        LODWORD(v63) = -1;
      }

      if ((v63 + 1) < 2)
      {
        v204 = (v244 + v62) & v252;
LABEL_120:
        (*(v256 + 8))(v62, v229);
        if (!__swift_getEnumTagSinglePayload(v204, 1, v230))
        {
          (*(v212 + 8))(v204, v230);
        }
      }

LABEL_123:

LABEL_124:
      v42 = v205;
LABEL_125:
      v64 = ((v42 + v254 + 7) & 0xFFFFFFFFFFFFFFF8) + 15;

      if (*((v64 & 0xFFFFFFFFFFFFFFF8) + 24) >= 0xFFFFFFFFuLL)
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v64 & 0xFFFFFFFFFFFFFFF8));
      }

      v32 = v206;
LABEL_128:

LABEL_129:
      v65 = v39[v35];
      v66 = v65 - 7;
      if (v65 >= 7)
      {
        if (v35 <= 3)
        {
          v67 = v35;
        }

        else
        {
          v67 = 4;
        }

        switch(v67)
        {
          case 1:
            v68 = *v39;
            goto LABEL_138;
          case 2:
            v68 = *v39;
            goto LABEL_138;
          case 3:
            v68 = *v39 | (v39[2] << 16);
            goto LABEL_138;
          case 4:
            v68 = *v39;
LABEL_138:
            if (v35 < 4)
            {
              v65 = (v68 | (v66 << (8 * v35))) + 7;
            }

            else
            {
              v65 = v68 + 7;
            }

            break;
          default:
            goto LABEL_141;
        }
      }

      break;
    case 9u:
LABEL_87:
      v56 = v218;
      v55 = v219;
LABEL_88:
      v57 = v42;
      (*(v56 + 8))(v42, v55);
LABEL_96:
      v42 = v57;
      goto LABEL_125;
    default:
      goto LABEL_125;
  }

LABEL_141:
  switch(v65)
  {
    case 0u:
      v69 = *(v39 + 1);
      *v255 = *v39;
      *(v255 + 1) = v69;
      *(v255 + 25) = *(v39 + 25);
      v255[v35] = 0;
      return v3;
    case 1u:
      v85 = *(v39 + 1);
      *v255 = *v39;
      *(v255 + 1) = v85;
      *(v255 + 25) = *(v39 + 25);
      v71 = 1;
      goto LABEL_239;
    case 2u:
      (*(v231 + 32))(v255, v39, v232);
      v72 = (&v255[v246] & v41);
      v73 = (&v39[v246] & v41);
      v74 = v73[v31];
      v75 = v74 - 10;
      if (v74 >= 0xA)
      {
        if (v31 <= 3)
        {
          v76 = v31;
        }

        else
        {
          v76 = 4;
        }

        switch(v76)
        {
          case 1:
            v77 = *v73;
            goto LABEL_171;
          case 2:
            v77 = *v73;
            goto LABEL_171;
          case 3:
            v77 = *v73 | (*((&v39[v246] & v41) + 2) << 16);
            goto LABEL_171;
          case 4:
            v77 = *v73;
LABEL_171:
            if (v31 < 4)
            {
              v74 = (v77 | (v75 << (8 * v31))) + 10;
            }

            else
            {
              v74 = v77 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v74)
      {
        case 0u:
          (*(v227 + 32))(&v255[v246] & v41, &v39[v246] & v41, v228);
          v72 = (&v255[v246] & v41);
          *(v72 + v31) = 0;
          goto LABEL_234;
        case 1u:
          v90 = (&v255[v246] & v41);
          (*(v227 + 32))(v90, &v39[v246] & v41, v228);
          v72 = v90;
          *((v90 + v217) & 0xFFFFFFFFFFFFFFF8) = *(&v73[v217] & 0xFFFFFFFFFFFFFFF8);
          v91 = 1;
          goto LABEL_205;
        case 2u:
          v94 = *v73;
          *((&v255[v246] & v41) + 0x10) = *((&v39[v246] & v41) + 0x10);
          *v72 = v94;
          v95 = 2;
          goto LABEL_233;
        case 3u:
          *v72 = *v73;
          v95 = 3;
          goto LABEL_233;
        case 4u:
          v90 = (&v255[v246] & v41);
          (*(v222 + 32))(v90, &v39[v246] & v41, v223);
          v72 = v90;
          v91 = 4;
          goto LABEL_205;
        case 5u:
          *v72 = *v73;
          v95 = 5;
          goto LABEL_233;
        case 6u:
          (*(v256 + 32))(&v255[v246] & v41, &v39[v246] & v41, v229);
          v102 = &v255[v246] & v41;
          v103 = ((v244 + v102) & v252);
          v104 = (&v73[v244] & v252);
          if (__swift_getEnumTagSinglePayload(v104, 1, v230))
          {
            memcpy(v103, v104, v234);
          }

          else
          {
            (*(v212 + 32))(v103, v104, v230);
            __swift_storeEnumTagSinglePayload(v103, 0, 1, v230);
          }

          v165 = ((v103 + v242) & 0xFFFFFFFFFFFFFFF8);
          v166 = ((v104 + v242) & 0xFFFFFFFFFFFFFFF8);
          *v165 = *v166;
          v167 = (v165 + 19) & 0xFFFFFFFFFFFFFFF8;
          v168 = (v166 + 19) & 0xFFFFFFFFFFFFFFF8;
          v169 = *v168;
          *(v167 + 4) = *(v168 + 4);
          *v167 = v169;
          v72 = (&v255[v246] & v41);
          *(v102 + v31) = 6;
          goto LABEL_234;
        case 7u:
          (*(v256 + 32))(&v255[v246] & v41, &v39[v246] & v41, v229);
          v247 = (&v255[v246] & v41);
          v98 = ((v247 + v244) & v252);
          v99 = (&v73[v244] & v252);
          if (__swift_getEnumTagSinglePayload(v99, 1, v230))
          {
            memcpy(v98, v99, v234);
          }

          else
          {
            (*(v212 + 32))(v98, v99, v230);
            __swift_storeEnumTagSinglePayload(v98, 0, 1, v230);
          }

          v125 = ((v98 + v242) & 0xFFFFFFFFFFFFFFF8);
          v126 = ((v99 + v242) & 0xFFFFFFFFFFFFFFF8);
          *v125 = *v126;
          v127 = (v125 + 19) & 0xFFFFFFFFFFFFFFF8;
          v128 = (v126 + 19) & 0xFFFFFFFFFFFFFFF8;
          v129 = *v128;
          *(v127 + 4) = *(v128 + 4);
          *v127 = v129;
          v72 = v247;
          v130 = ((v247 + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
          v131 = (&v73[v22 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v130 = *v131;
          v132 = ((v130 + 23) & 0xFFFFFFFFFFFFFFF8);
          v133 = ((v131 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v132 = *v133;
          *((v132 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v133 + 23) & 0xFFFFFFFFFFFFFFF8);
          v95 = 7;
LABEL_233:
          *(v72 + v31) = v95;
          goto LABEL_234;
        case 8u:
          v249 = (&v255[v246] & v41);
          (*(v220 + 32))(v72, v73, v221);
          v105 = ((v249 + v214 + 7) & 0xFFFFFFFFFFFFFFF8);
          v106 = (&v73[v214 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v105 = *v106;
          v239 = ((v105 + v215) & v213);
          v107 = ((v106 + v215) & v213);
          if (v25 == v216)
          {
            v108 = v234;
            v109 = ((v105 + v215) & v213);
            if (!__swift_getEnumTagSinglePayload(v107, v25, v229))
            {
              v110 = v244;
              v111 = ((v107 + v244) & v252);
              v112 = v230;
LABEL_251:
              (*(v256 + 32))(v109, v107, v229);
              v176 = ((v109 + v110) & v252);
              if (__swift_getEnumTagSinglePayload(v111, 1, v112))
              {
                v108 = v234;
                memcpy(v176, v111, v234);
                v177 = v207;
              }

              else
              {
                (*(v212 + 32))(v176, v111, v112);
                __swift_storeEnumTagSinglePayload(v176, 0, 1, v112);
                v177 = v207;
                v108 = v234;
              }

              v188 = ((v176 + v242) & 0xFFFFFFFFFFFFFFF8);
              v189 = ((v111 + v242) & 0xFFFFFFFFFFFFFFF8);
              *v188 = *v189;
              v190 = (v189 + 19) & 0xFFFFFFFFFFFFFFF8;
              v191 = *v190;
              v192 = (v188 + 19) & 0xFFFFFFFFFFFFFFF8;
              *(v192 + 4) = *(v190 + 4);
              *v192 = v191;
              v179 = v208;
              v178 = v209;
              v180 = v210;
              v193 = v211;
              v72 = v249;
              v109 = v239;
              if (!v224)
              {
                goto LABEL_265;
              }

LABEL_266:
              v194 = (((v225 + 7 + v193) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
              *((v109 + v194 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v107 + v194 + 7) & 0xFFFFFFFFFFFFFFF8);
              v195 = (((v225 + 7 + v108) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
              if (v195 <= v179)
              {
                v195 = v179;
              }

              if (v180 > v195)
              {
                v195 = v180;
              }

              if (v178 > v195)
              {
                v195 = v178;
              }

              if (v177 > v195)
              {
                v195 = v177;
              }

              *(v72 + v195) = 8;
LABEL_234:
              v134 = ((v72 + v254 + 7) & 0xFFFFFFFFFFFFFFF8);
              v135 = (&v73[v254 + 7] & 0xFFFFFFFFFFFFFFF8);
              *v134 = *v135;
              v136 = (v134 + 15) & 0xFFFFFFFFFFFFFFF8;
              v137 = (v135 + 15) & 0xFFFFFFFFFFFFFFF8;
              v138 = *v137;
              v139 = *(v137 + 16);
              *(v136 + 32) = *(v137 + 32);
              *v136 = v138;
              *(v136 + 16) = v139;
              *(v136 + 40) = *(v137 + 40);
              v140 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
              v141 = (&v255[v140 + 7] & 0xFFFFFFFFFFFFFFF8);
              v142 = (&v39[v140 + 7] & 0xFFFFFFFFFFFFFFF8);
              v143 = *v142;
              v144 = v142[1];
              *(v141 + 25) = *(v142 + 25);
              *v141 = v143;
              v141[1] = v144;
              v71 = 2;
              goto LABEL_239;
            }

LABEL_253:
            memcpy(v109, v107, v22);
            v179 = v208;
            v178 = v209;
            v180 = v210;
            v177 = v207;
            v72 = v249;
LABEL_265:
            v193 = v108;
            goto LABEL_266;
          }

          v111 = ((v107 + v244) & v252);
          if (v27 == v216)
          {
            v112 = v230;
            v109 = ((v105 + v215) & v213);
            if (v224 < 2)
            {
              goto LABEL_250;
            }

            v123 = __swift_getEnumTagSinglePayload((v107 + v244) & v252, v224, v230) >= 2;
          }

          else
          {
            v109 = ((v105 + v215) & v213);
            v175 = *(((v111 + v242) & 0xFFFFFFFFFFFFFFF8) + 8);
            if (v175 >= 0xFFFFFFFF)
            {
              LODWORD(v175) = -1;
            }

            v123 = (v175 + 1) >= 2;
          }

          v108 = v234;
          if (v123)
          {
            goto LABEL_253;
          }

          v112 = v230;
LABEL_250:
          v110 = v244;
          goto LABEL_251;
        case 9u:
          v90 = (&v255[v246] & v41);
          (*(v218 + 32))(v90, &v39[v246] & v41, v219);
          v72 = v90;
          v91 = 9;
LABEL_205:
          *(v90 + v31) = v91;
          goto LABEL_234;
        default:
          memcpy((&v255[v246] & v41), (&v39[v246] & v41), v254);
          v72 = (&v255[v246] & v41);
          goto LABEL_234;
      }

    case 3u:
      (*(v231 + 32))(v255, v39, v232);
      v78 = (&v255[v246] & v41);
      v79 = (&v39[v246] & v41);
      v80 = v79[v31];
      v81 = v80 - 10;
      if (v80 >= 0xA)
      {
        if (v31 <= 3)
        {
          v82 = v31;
        }

        else
        {
          v82 = 4;
        }

        switch(v82)
        {
          case 1:
            v83 = *v79;
            goto LABEL_179;
          case 2:
            v83 = *v79;
            goto LABEL_179;
          case 3:
            v83 = *v79 | (*((&v39[v246] & v41) + 2) << 16);
            goto LABEL_179;
          case 4:
            v83 = *v79;
LABEL_179:
            if (v31 < 4)
            {
              v80 = (v83 | (v81 << (8 * v31))) + 10;
            }

            else
            {
              v80 = v83 + 10;
            }

            break;
          default:
            goto LABEL_182;
        }
      }

      break;
    case 4u:
      v70 = *(v39 + 1);
      *v255 = *v39;
      *(v255 + 1) = v70;
      *(v255 + 25) = *(v39 + 25);
      v71 = 4;
      goto LABEL_239;
    case 5u:
      v86 = v39[v33];
      v87 = v86 - 2;
      if (v86 >= 2)
      {
        if (v33 <= 3)
        {
          v88 = v33;
        }

        else
        {
          v88 = 4;
        }

        switch(v88)
        {
          case 1:
            v89 = *v39;
            goto LABEL_186;
          case 2:
            v89 = *v39;
            goto LABEL_186;
          case 3:
            v89 = *v39 | (v39[2] << 16);
            goto LABEL_186;
          case 4:
            v89 = *v39;
LABEL_186:
            if (v33 < 4)
            {
              v86 = (v89 | (v87 << v226)) + 2;
            }

            else
            {
              v86 = v89 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v86 == 1)
      {
        *v255 = *v39;
        v255[8] = v39[8];
        v255[v33] = 1;
      }

      else if (v86)
      {
        memcpy(v255, v39, v33 + 1);
      }

      else
      {
        (*(v236 + 32))(v255, v39, v238);
        v255[v33] = 0;
      }

      v71 = 5;
      goto LABEL_239;
    case 6u:
      *v255 = *v39;
      v255[8] = v39[8];
      v71 = 6;
      goto LABEL_239;
    default:

      return memcpy(v255, v39, v35 + 1);
  }

LABEL_182:
  switch(v80)
  {
    case 0u:
      (*(v227 + 32))(&v255[v246] & v41, &v39[v246] & v41, v228);
      v78 = (&v255[v246] & v41);
      *(v78 + v31) = 0;
      goto LABEL_238;
    case 1u:
      v92 = (&v255[v246] & v41);
      (*(v227 + 32))(v92, &v39[v246] & v41, v228);
      v78 = v92;
      *((v92 + v217) & 0xFFFFFFFFFFFFFFF8) = *(&v79[v217] & 0xFFFFFFFFFFFFFFF8);
      v93 = 1;
      goto LABEL_210;
    case 2u:
      v96 = *v79;
      *((&v255[v246] & v41) + 0x10) = *((&v39[v246] & v41) + 0x10);
      *v78 = v96;
      v97 = 2;
      goto LABEL_237;
    case 3u:
      *v78 = *v79;
      v97 = 3;
      goto LABEL_237;
    case 4u:
      v92 = (&v255[v246] & v41);
      (*(v222 + 32))(v92, &v39[v246] & v41, v223);
      v78 = v92;
      v93 = 4;
      goto LABEL_210;
    case 5u:
      *v78 = *v79;
      v97 = 5;
      goto LABEL_237;
    case 6u:
      (*(v256 + 32))(&v255[v246] & v41, &v39[v246] & v41, v229);
      v113 = &v255[v246] & v41;
      v114 = ((v244 + v113) & v252);
      v115 = (&v79[v244] & v252);
      if (__swift_getEnumTagSinglePayload(v115, 1, v230))
      {
        memcpy(v114, v115, v234);
      }

      else
      {
        (*(v212 + 32))(v114, v115, v230);
        __swift_storeEnumTagSinglePayload(v114, 0, 1, v230);
      }

      v170 = ((v114 + v242) & 0xFFFFFFFFFFFFFFF8);
      v171 = ((v115 + v242) & 0xFFFFFFFFFFFFFFF8);
      *v170 = *v171;
      v172 = (v170 + 19) & 0xFFFFFFFFFFFFFFF8;
      v173 = (v171 + 19) & 0xFFFFFFFFFFFFFFF8;
      v174 = *v173;
      *(v172 + 4) = *(v173 + 4);
      *v172 = v174;
      v78 = (&v255[v246] & v41);
      *(v113 + v31) = 6;
      goto LABEL_238;
    case 7u:
      (*(v256 + 32))(&v255[v246] & v41, &v39[v246] & v41, v229);
      v248 = (&v255[v246] & v41);
      v100 = ((v248 + v244) & v252);
      v101 = (&v79[v244] & v252);
      if (__swift_getEnumTagSinglePayload(v101, 1, v230))
      {
        memcpy(v100, v101, v234);
      }

      else
      {
        (*(v212 + 32))(v100, v101, v230);
        __swift_storeEnumTagSinglePayload(v100, 0, 1, v230);
      }

      v145 = ((v100 + v242) & 0xFFFFFFFFFFFFFFF8);
      v146 = ((v101 + v242) & 0xFFFFFFFFFFFFFFF8);
      *v145 = *v146;
      v147 = (v145 + 19) & 0xFFFFFFFFFFFFFFF8;
      v148 = (v146 + 19) & 0xFFFFFFFFFFFFFFF8;
      v149 = *v148;
      *(v147 + 4) = *(v148 + 4);
      *v147 = v149;
      v78 = v248;
      v150 = ((v248 + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
      v151 = (&v79[v22 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v150 = *v151;
      v152 = ((v150 + 23) & 0xFFFFFFFFFFFFFFF8);
      v153 = ((v151 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v152 = *v153;
      *((v152 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v153 + 23) & 0xFFFFFFFFFFFFFFF8);
      v97 = 7;
LABEL_237:
      *(v78 + v31) = v97;
      goto LABEL_238;
    case 8u:
      v250 = (&v255[v246] & v41);
      (*(v220 + 32))(v78, v79, v221);
      v116 = ((v250 + v214 + 7) & 0xFFFFFFFFFFFFFFF8);
      v117 = (&v79[v214 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v116 = *v117;
      v240 = ((v116 + v215) & v213);
      v118 = ((v117 + v215) & v213);
      if (v25 == v216)
      {
        v119 = v234;
        if (!__swift_getEnumTagSinglePayload(v118, v25, v229))
        {
          v120 = v244;
          v121 = ((v118 + v244) & v252);
          v122 = v230;
          goto LABEL_260;
        }

LABEL_262:
        v184 = v240;
        memcpy(v240, v118, v22);
        v186 = v208;
        v185 = v209;
        v187 = v210;
        v183 = v207;
        v78 = v250;
LABEL_277:
        v201 = v119;
        goto LABEL_278;
      }

      v121 = ((v118 + v244) & v252);
      if (v27 == v216)
      {
        v122 = v230;
        if (v224 < 2)
        {
          goto LABEL_259;
        }

        v124 = __swift_getEnumTagSinglePayload((v118 + v244) & v252, v224, v230) >= 2;
      }

      else
      {
        v181 = *(((v121 + v242) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v181 >= 0xFFFFFFFF)
        {
          LODWORD(v181) = -1;
        }

        v124 = (v181 + 1) >= 2;
      }

      v119 = v234;
      if (v124)
      {
        goto LABEL_262;
      }

      v122 = v230;
LABEL_259:
      v120 = v244;
LABEL_260:
      (*(v256 + 32))(v240, v118, v229);
      v182 = ((v240 + v120) & v252);
      if (__swift_getEnumTagSinglePayload(v121, 1, v122))
      {
        v119 = v234;
        memcpy(v182, v121, v234);
        v183 = v207;
      }

      else
      {
        (*(v212 + 32))(v182, v121, v122);
        __swift_storeEnumTagSinglePayload(v182, 0, 1, v122);
        v183 = v207;
        v119 = v234;
      }

      v196 = ((v182 + v242) & 0xFFFFFFFFFFFFFFF8);
      v197 = ((v121 + v242) & 0xFFFFFFFFFFFFFFF8);
      *v196 = *v197;
      v198 = (v197 + 19) & 0xFFFFFFFFFFFFFFF8;
      v199 = *v198;
      v200 = (v196 + 19) & 0xFFFFFFFFFFFFFFF8;
      *(v200 + 4) = *(v198 + 4);
      *v200 = v199;
      v186 = v208;
      v185 = v209;
      v187 = v210;
      v201 = v211;
      v78 = v250;
      v184 = v240;
      if (!v224)
      {
        goto LABEL_277;
      }

LABEL_278:
      v202 = (((v225 + 7 + v201) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
      *((v184 + v202 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v118 + v202 + 7) & 0xFFFFFFFFFFFFFFF8);
      v203 = (((v225 + 7 + v119) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
      if (v203 <= v186)
      {
        v203 = v186;
      }

      if (v187 > v203)
      {
        v203 = v187;
      }

      if (v185 > v203)
      {
        v203 = v185;
      }

      if (v183 > v203)
      {
        v203 = v183;
      }

      *(v78 + v203) = 8;
LABEL_238:
      v154 = ((v78 + v254 + 7) & 0xFFFFFFFFFFFFFFF8);
      v155 = (&v79[v254 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v154 = *v155;
      v156 = (v154 + 15) & 0xFFFFFFFFFFFFFFF8;
      v157 = (v155 + 15) & 0xFFFFFFFFFFFFFFF8;
      v158 = *v157;
      v159 = *(v157 + 16);
      *(v156 + 32) = *(v157 + 32);
      *v156 = v158;
      *(v156 + 16) = v159;
      *(v156 + 40) = *(v157 + 40);
      v160 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
      v161 = (&v255[v160 + 7] & 0xFFFFFFFFFFFFFFF8);
      v162 = (&v39[v160 + 7] & 0xFFFFFFFFFFFFFFF8);
      v163 = *v162;
      v164 = v162[1];
      *(v161 + 25) = *(v162 + 25);
      *v161 = v163;
      v161[1] = v164;
      v71 = 3;
LABEL_239:
      v255[v35] = v71;
      return v3;
    case 9u:
      v92 = (&v255[v246] & v41);
      (*(v218 + 32))(v92, &v39[v246] & v41, v219);
      v78 = v92;
      v93 = 9;
LABEL_210:
      *(v92 + v31) = v93;
      goto LABEL_238;
    default:
      memcpy((&v255[v246] & v41), (&v39[v246] & v41), v254);
      v78 = (&v255[v246] & v41);
      goto LABEL_238;
  }
}

uint64_t sub_1DCE87850(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v35 = *(*(sub_1DD0DB04C() - 8) + 64);
  v32 = *(sub_1DD0DC76C() - 8);
  v3 = *(v32 + 80);
  v33 = *(sub_1DD0DB1EC() - 8);
  v29 = *(v33 + 80) | v3;
  v31 = *(sub_1DD0DB4BC() - 8);
  v4 = *(v31 + 80) & 0xF8;
  v5 = *(sub_1DD0DB3EC() - 8);
  v6 = *(v5 + 80);
  v7 = v4 | v6 | 7;
  v30 = *(sub_1DD0DD12C() - 8);
  v8 = *(v30 + 80);
  v9 = *(sub_1DD0DD08C() - 8);
  v10 = (v29 | (v8 | *(v9 + 80))) & 0xF8 | v7;
  v11 = (v35 + v10) & ~v10;
  v12 = *(v32 + 64);
  if (((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v12)
  {
    v12 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v12 <= *(v33 + 64))
  {
    v12 = *(v33 + 64);
  }

  v13 = *(v5 + 64) + ((*(v31 + 64) + v6) & ~v6);
  if (!*(v5 + 84))
  {
    ++v13;
  }

  v14 = (v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 19) | 5;
  if (v12 <= v15)
  {
    v12 = (v14 + 19) | 5;
  }

  v16 = ((((((v14 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 <= v16)
  {
    v12 = v16;
  }

  if (v12 <= ((v15 + ((v7 + ((*(v30 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v12 = ((v15 + ((v7 + ((*(v30 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v17 = *(v9 + 64);
  if (v12 > v17)
  {
    v17 = v12;
  }

  if (v17 <= 0x18)
  {
    v17 = 24;
  }

  v18 = ((((v11 + v17 + 8) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 41;
  v19 = *(*(*(a3 + 24) - 8) + 64);
  if (v19 <= 9)
  {
    v19 = 9;
  }

  if (v18 <= v19 + 1)
  {
    v18 = v19 + 1;
  }

  v20 = 41;
  if (v18 > 0x29)
  {
    v20 = v18;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_42;
  }

  v21 = v20 + 1;
  v22 = 8 * (v20 + 1);
  if ((v20 + 1) <= 3)
  {
    v25 = ((a2 + ~(-1 << v22) - 248) >> v22) + 1;
    if (HIWORD(v25))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_42;
      }

      goto LABEL_34;
    }

    if (v25 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_42;
      }

      goto LABEL_34;
    }

    if (v25 < 2)
    {
LABEL_42:
      v27 = *(a1 + v20);
      if (v27 >= 8)
      {
        return (v27 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v23 = *(a1 + v21);
  if (!*(a1 + v21))
  {
    goto LABEL_42;
  }

LABEL_34:
  v26 = (v23 - 1) << v22;
  if (v21 > 3)
  {
    v26 = 0;
  }

  if (v21)
  {
    if (v21 > 3)
    {
      LODWORD(v21) = 4;
    }

    switch(v21)
    {
      case 2:
        LODWORD(v21) = *a1;
        break;
      case 3:
        LODWORD(v21) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v21) = *a1;
        break;
      default:
        LODWORD(v21) = *a1;
        break;
    }
  }

  return (v21 | v26) + 249;
}

void sub_1DCE87CD0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v37 = *(*(sub_1DD0DB04C() - 8) + 64);
  v34 = *(sub_1DD0DC76C() - 8);
  v4 = *(v34 + 80);
  v35 = *(sub_1DD0DB1EC() - 8);
  v31 = *(v35 + 80) | v4;
  v33 = *(sub_1DD0DB4BC() - 8);
  v5 = *(v33 + 80) & 0xF8;
  v6 = *(sub_1DD0DB3EC() - 8);
  v7 = *(v6 + 80);
  v8 = v5 | v7 | 7;
  v32 = *(sub_1DD0DD12C() - 8);
  v9 = *(v32 + 80);
  v10 = *(sub_1DD0DD08C() - 8);
  v11 = (v31 | (v9 | *(v10 + 80))) & 0xF8 | v8;
  v12 = (v37 + v11) & ~v11;
  v13 = *(v34 + 64);
  if (((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v13)
  {
    v13 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v13 <= *(v35 + 64))
  {
    v13 = *(v35 + 64);
  }

  v14 = *(v6 + 64) + ((*(v33 + 64) + v7) & ~v7);
  if (!*(v6 + 84))
  {
    ++v14;
  }

  v15 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 19) | 5;
  if (v13 <= v16)
  {
    v13 = (v15 + 19) | 5;
  }

  v17 = ((((((v15 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 <= v17)
  {
    v13 = v17;
  }

  if (v13 <= ((v16 + ((v8 + ((*(v32 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v13 = ((v16 + ((v8 + ((*(v32 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v18 = *(v10 + 64);
  if (v13 > v18)
  {
    v18 = v13;
  }

  if (v18 <= 0x18)
  {
    v18 = 24;
  }

  v19 = ((((v12 + v18 + 8) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 41;
  v20 = *(*(*(a4 + 24) - 8) + 64);
  if (v20 <= 9)
  {
    v20 = 9;
  }

  if (v19 <= v20 + 1)
  {
    v19 = v20 + 1;
  }

  if (v19 <= 0x29)
  {
    v19 = 41;
  }

  v21 = v19 + 1;
  v22 = 8 * (v19 + 1);
  if (a3 < 0xF9)
  {
    v25 = 0;
    v23 = a1;
    v24 = a2;
  }

  else
  {
    v23 = a1;
    v24 = a2;
    if (v21 <= 3)
    {
      v28 = ((a3 + ~(-1 << v22) - 248) >> v22) + 1;
      if (HIWORD(v28))
      {
        v25 = 4;
      }

      else
      {
        if (v28 < 0x100)
        {
          v29 = 1;
        }

        else
        {
          v29 = 2;
        }

        if (v28 >= 2)
        {
          v25 = v29;
        }

        else
        {
          v25 = 0;
        }
      }
    }

    else
    {
      v25 = 1;
    }
  }

  if (v24 > 0xF8)
  {
    v26 = v24 - 249;
    if (v21 < 4)
    {
      v27 = (v26 >> v22) + 1;
      if (v19 != -1)
      {
        v30 = v26 & ~(-1 << v22);
        bzero(v23, v21);
        if (v21 == 3)
        {
          *v23 = v30;
          v23[2] = BYTE2(v30);
        }

        else if (v21 == 2)
        {
          *v23 = v30;
        }

        else
        {
          *v23 = v26;
        }
      }
    }

    else
    {
      bzero(v23, v19 + 1);
      *v23 = v26;
      v27 = 1;
    }

    switch(v25)
    {
      case 1:
        v23[v21] = v27;
        break;
      case 2:
        *&v23[v21] = v27;
        break;
      case 3:
LABEL_57:
        __break(1u);
        break;
      case 4:
        *&v23[v21] = v27;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v25)
    {
      case 1:
        v23[v21] = 0;
        if (!v24)
        {
          return;
        }

        goto LABEL_46;
      case 2:
        *&v23[v21] = 0;
        goto LABEL_45;
      case 3:
        goto LABEL_57;
      case 4:
        *&v23[v21] = 0;
        if (!v24)
        {
          return;
        }

        goto LABEL_46;
      default:
LABEL_45:
        if (v24)
        {
LABEL_46:
          v23[v19] = -v24;
        }

        break;
    }
  }
}

uint64_t sub_1DCE881D4(unsigned __int8 *a1, uint64_t a2)
{
  v27 = *(*(sub_1DD0DB04C() - 8) + 64);
  v25 = *(sub_1DD0DC76C() - 8);
  v2 = *(v25 + 80);
  v26 = *(sub_1DD0DB1EC() - 8);
  v22 = *(v26 + 80) | v2;
  v24 = *(sub_1DD0DB4BC() - 8);
  v3 = *(v24 + 80) & 0xF8;
  v4 = *(sub_1DD0DB3EC() - 8);
  v5 = *(v4 + 80);
  v6 = v3 | v5 | 7;
  v23 = *(sub_1DD0DD12C() - 8);
  v7 = *(v23 + 80);
  v8 = *(sub_1DD0DD08C() - 8);
  v9 = (v22 | (v7 | *(v8 + 80))) & 0xF8 | v6;
  v10 = (v27 + v9) & ~v9;
  v11 = *(v25 + 64);
  if (((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v11)
  {
    v11 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v11 <= *(v26 + 64))
  {
    v11 = *(v26 + 64);
  }

  v12 = *(v4 + 64) + ((*(v24 + 64) + v5) & ~v5);
  if (!*(v4 + 84))
  {
    ++v12;
  }

  v13 = (v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 19) | 5;
  if (v11 <= v14)
  {
    v11 = (v13 + 19) | 5;
  }

  v15 = ((((((v13 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v11 <= v15)
  {
    v11 = v15;
  }

  if (v11 <= ((v14 + ((v6 + ((*(v23 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v11 = ((v14 + ((v6 + ((*(v23 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v16 = *(v8 + 64);
  if (v11 > v16)
  {
    v16 = v11;
  }

  if (v16 <= 0x18)
  {
    v16 = 24;
  }

  v17 = ((((v10 + v16 + 8) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 41;
  v18 = *(*(*(a2 + 24) - 8) + 64);
  if (v18 <= 9)
  {
    v18 = 9;
  }

  if (v17 <= v18 + 1)
  {
    v17 = v18 + 1;
  }

  if (v17 <= 0x29)
  {
    v17 = 41;
  }

  result = a1[v17];
  if (result >= 7)
  {
    if (v17 <= 3)
    {
      v20 = v17;
    }

    else
    {
      v20 = 4;
    }

    switch(v20)
    {
      case 1:
        v21 = *a1;
        goto LABEL_32;
      case 2:
        v21 = *a1;
        goto LABEL_32;
      case 3:
        v21 = *a1 | (a1[2] << 16);
        goto LABEL_32;
      case 4:
        v21 = *a1;
LABEL_32:
        if (v17 < 4)
        {
          result = (v21 | ((result - 7) << (8 * v17))) + 7;
        }

        else
        {
          result = (v21 + 7);
        }

        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_1DCE885C4(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v28 = *(*(sub_1DD0DB04C() - 8) + 64);
  v26 = *(sub_1DD0DC76C() - 8);
  v3 = *(v26 + 80);
  v27 = *(sub_1DD0DB1EC() - 8);
  v23 = *(v27 + 80) | v3;
  v25 = *(sub_1DD0DB4BC() - 8);
  v4 = *(v25 + 80) & 0xF8;
  v5 = *(sub_1DD0DB3EC() - 8);
  v6 = *(v5 + 80);
  v7 = v4 | v6 | 7;
  v24 = *(sub_1DD0DD12C() - 8);
  v8 = *(v24 + 80);
  v9 = *(sub_1DD0DD08C() - 8);
  v10 = (v23 | (v8 | *(v9 + 80))) & 0xF8 | v7;
  v11 = (v28 + v10) & ~v10;
  v12 = *(v26 + 64);
  if (((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v12)
  {
    v12 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v12 <= *(v27 + 64))
  {
    v12 = *(v27 + 64);
  }

  v13 = *(v5 + 64) + ((*(v25 + 64) + v6) & ~v6);
  if (!*(v5 + 84))
  {
    ++v13;
  }

  v14 = (v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 19) | 5;
  if (v12 <= v15)
  {
    v12 = (v14 + 19) | 5;
  }

  v16 = ((((((v14 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 <= v16)
  {
    v12 = v16;
  }

  if (v12 <= ((v15 + ((v7 + ((*(v24 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v12 = ((v15 + ((v7 + ((*(v24 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v17 = *(v9 + 64);
  if (v12 > v17)
  {
    v17 = v12;
  }

  if (v17 <= 0x18)
  {
    v17 = 24;
  }

  v18 = ((((v11 + v17 + 8) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 41;
  v19 = *(*(*(a3 + 24) - 8) + 64);
  if (v19 <= 9)
  {
    v19 = 9;
  }

  if (v18 <= v19 + 1)
  {
    v18 = v19 + 1;
  }

  if (v18 <= 0x29)
  {
    v20 = 41;
  }

  else
  {
    v20 = v18;
  }

  if (a2 <= 6)
  {
    a1[v20] = a2;
    return;
  }

  v21 = a2 - 7;
  if (v20 < 4)
  {
    a1[v20] = (v21 >> (8 * v20)) + 7;
    if (!v20)
    {
      return;
    }

    v21 &= ~(-1 << (8 * v20));
  }

  else
  {
    a1[v20] = 7;
  }

  if (v20 >= 4)
  {
    v22 = 4;
  }

  else
  {
    v22 = v20;
  }

  bzero(a1, v20);
  switch(v22)
  {
    case 2:
      *a1 = v21;
      break;
    case 3:
      *a1 = v21;
      a1[2] = BYTE2(v21);
      break;
    case 4:
      *a1 = v21;
      break;
    default:
      *a1 = v21;
      break;
  }
}

uint64_t sub_1DCE889F0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *sub_1DCE88A84(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  if (*(v4 + 64) <= 9uLL)
  {
    v5 = 9;
  }

  else
  {
    v5 = *(*(*(a3 + 24) - 8) + 64);
  }

  if ((*(v4 + 80) & 0x1000F8) != 0 || (v5 + 1) > 0x18)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v7 = a2[v5];
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    if (v5 <= 3)
    {
      v9 = v5;
    }

    else
    {
      v9 = 4;
    }

    switch(v9)
    {
      case 1:
        v10 = *a2;
        goto LABEL_19;
      case 2:
        v10 = *a2;
        goto LABEL_19;
      case 3:
        v10 = *a2 | (a2[2] << 16);
        goto LABEL_19;
      case 4:
        v10 = *a2;
LABEL_19:
        v11 = (v10 | (v8 << (8 * v5))) + 2;
        v7 = v10 + 2;
        if (v5 < 4)
        {
          v7 = v11;
        }

        break;
      default:
        break;
    }
  }

  if (v7 == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = a2[8];
    *(a1 + v5) = 1;
  }

  else
  {
    (*(v4 + 16))(a1);
    *(a1 + v5) = 0;
  }

  return a1;
}

unsigned __int8 *sub_1DCE88BF0(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(*(*(a2 + 24) - 8) + 64);
  if (v2 <= 9)
  {
    v2 = 9;
  }

  v3 = result[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    switch(v5)
    {
      case 1:
        v6 = *result;
        goto LABEL_12;
      case 2:
        v6 = *result;
        goto LABEL_12;
      case 3:
        v6 = *result | (result[2] << 16);
        goto LABEL_12;
      case 4:
        v6 = *result;
LABEL_12:
        v7 = (v6 | (v4 << (8 * v2))) + 2;
        v3 = v6 + 2;
        if (v2 < 4)
        {
          v3 = v7;
        }

        break;
      default:
        break;
    }
  }

  if (v3 != 1)
  {
    return (*(*(*(a2 + 24) - 8) + 8))();
  }

  return result;
}

uint64_t sub_1DCE88CD8(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 24) - 8) + 64) <= 9uLL)
  {
    v4 = 9;
  }

  else
  {
    v4 = *(*(*(a3 + 24) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    switch(v7)
    {
      case 1:
        v8 = *a2;
        goto LABEL_13;
      case 2:
        v8 = *a2;
        goto LABEL_13;
      case 3:
        v8 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v8 = *a2;
LABEL_13:
        v9 = (v8 | (v6 << (8 * v4))) + 2;
        v5 = v8 + 2;
        if (v4 < 4)
        {
          v5 = v9;
        }

        break;
      default:
        break;
    }
  }

  if (v5 == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = a2[8];
    v10 = 1;
  }

  else
  {
    (*(*(*(a3 + 24) - 8) + 16))(a1);
    v10 = 0;
  }

  *(a1 + v4) = v10;
  return a1;
}

unsigned __int8 *sub_1DCE88E04(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 24);
    v6 = *(v5 - 8);
    if (*(v6 + 64) <= 9uLL)
    {
      v7 = 9;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = a1[v7];
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      switch(v10)
      {
        case 1:
          v11 = *a1;
          goto LABEL_14;
        case 2:
          v11 = *a1;
          goto LABEL_14;
        case 3:
          v11 = *a1 | (a1[2] << 16);
          goto LABEL_14;
        case 4:
          v11 = *a1;
LABEL_14:
          v12 = (v11 | (v9 << (8 * v7))) + 2;
          v8 = v11 + 2;
          if (v7 < 4)
          {
            v8 = v12;
          }

          break;
        default:
          break;
      }
    }

    if (v8 != 1)
    {
      (*(v6 + 8))(a1, v5);
    }

    v13 = a2[v7];
    v14 = v13 - 2;
    if (v13 >= 2)
    {
      if (v7 <= 3)
      {
        v15 = v7;
      }

      else
      {
        v15 = 4;
      }

      switch(v15)
      {
        case 1:
          v16 = *a2;
          goto LABEL_27;
        case 2:
          v16 = *a2;
          goto LABEL_27;
        case 3:
          v16 = *a2 | (a2[2] << 16);
          goto LABEL_27;
        case 4:
          v16 = *a2;
LABEL_27:
          v17 = (v16 | (v14 << (8 * v7))) + 2;
          v13 = v16 + 2;
          if (v7 < 4)
          {
            v13 = v17;
          }

          break;
        default:
          break;
      }
    }

    if (v13 == 1)
    {
      v18 = *a2;
      a1[8] = a2[8];
      *a1 = v18;
      v19 = 1;
    }

    else
    {
      (*(v6 + 16))(a1, a2, v5);
      v19 = 0;
    }

    a1[v7] = v19;
  }

  return a1;
}

uint64_t sub_1DCE88FF0(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 24) - 8) + 64) <= 9uLL)
  {
    v4 = 9;
  }

  else
  {
    v4 = *(*(*(a3 + 24) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    switch(v7)
    {
      case 1:
        v8 = *a2;
        goto LABEL_13;
      case 2:
        v8 = *a2;
        goto LABEL_13;
      case 3:
        v8 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v8 = *a2;
LABEL_13:
        v9 = (v8 | (v6 << (8 * v4))) + 2;
        v5 = v8 + 2;
        if (v4 < 4)
        {
          v5 = v9;
        }

        break;
      default:
        break;
    }
  }

  if (v5 == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = a2[8];
    v10 = 1;
  }

  else
  {
    (*(*(*(a3 + 24) - 8) + 32))(a1);
    v10 = 0;
  }

  *(a1 + v4) = v10;
  return a1;
}

unsigned __int8 *sub_1DCE8911C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 24);
    v6 = *(v5 - 8);
    if (*(v6 + 64) <= 9uLL)
    {
      v7 = 9;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = a1[v7];
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      switch(v10)
      {
        case 1:
          v11 = *a1;
          goto LABEL_14;
        case 2:
          v11 = *a1;
          goto LABEL_14;
        case 3:
          v11 = *a1 | (a1[2] << 16);
          goto LABEL_14;
        case 4:
          v11 = *a1;
LABEL_14:
          v12 = (v11 | (v9 << (8 * v7))) + 2;
          v8 = v11 + 2;
          if (v7 < 4)
          {
            v8 = v12;
          }

          break;
        default:
          break;
      }
    }

    if (v8 != 1)
    {
      (*(v6 + 8))(a1, v5);
    }

    v13 = a2[v7];
    v14 = v13 - 2;
    if (v13 >= 2)
    {
      if (v7 <= 3)
      {
        v15 = v7;
      }

      else
      {
        v15 = 4;
      }

      switch(v15)
      {
        case 1:
          v16 = *a2;
          goto LABEL_27;
        case 2:
          v16 = *a2;
          goto LABEL_27;
        case 3:
          v16 = *a2 | (a2[2] << 16);
          goto LABEL_27;
        case 4:
          v16 = *a2;
LABEL_27:
          v17 = (v16 | (v14 << (8 * v7))) + 2;
          v13 = v16 + 2;
          if (v7 < 4)
          {
            v13 = v17;
          }

          break;
        default:
          break;
      }
    }

    if (v13 == 1)
    {
      *a1 = *a2;
      a1[8] = a2[8];
      v18 = 1;
    }

    else
    {
      (*(v6 + 32))(a1, a2, v5);
      v18 = 0;
    }

    a1[v7] = v18;
  }

  return a1;
}

uint64_t sub_1DCE89308(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = 9;
  if (*(v3 + 64) > 9uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1DCE8942C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= 9)
  {
    v5 = 9;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1DCE895F0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 24) - 8);
  v3 = 9;
  if (*(v2 + 64) > 9uLL)
  {
    v3 = *(v2 + 64);
  }

  v4 = a1[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    switch(v6)
    {
      case 1:
        v7 = *a1;
        goto LABEL_12;
      case 2:
        v7 = *a1;
        goto LABEL_12;
      case 3:
        v7 = *a1 | (a1[2] << 16);
        goto LABEL_12;
      case 4:
        v7 = *a1;
LABEL_12:
        v8 = (v7 | (v5 << (8 * v3))) + 2;
        LODWORD(v4) = v7 + 2;
        if (v3 >= 4)
        {
          v4 = v4;
        }

        else
        {
          v4 = v8;
        }

        break;
      default:
        return v4;
    }
  }

  return v4;
}

void sub_1DCE89694(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 24) - 8) + 64) <= 9uLL)
  {
    v4 = 9;
  }

  else
  {
    v4 = *(*(*(a3 + 24) - 8) + 64);
  }

  if (a2 > 1)
  {
    v5 = a2 - 2;
    if (v4 < 4)
    {
      a1[v4] = (v5 >> (8 * v4)) + 2;
      if (v4)
      {
        v6 = v5 & ~(-1 << (8 * v4));
        bzero(a1, v4);
        if (v4 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v4 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v5;
        }
      }
    }

    else
    {
      a1[v4] = 2;
      bzero(a1, v4);
      *a1 = v5;
    }
  }

  else
  {
    a1[v4] = a2;
  }
}

uint64_t sub_1DCE89770()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_90_9();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_0_84(v3);
  OUTLINED_FUNCTION_26_14();

  return sub_1DCE7B54C(v5, v6, v7, v8, v9, v10, v0, v1);
}

uint64_t sub_1DCE8981C()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_81();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_86(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCE7BA38(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE898A8()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_81();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_86(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCE7BE34(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE89934()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_81();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_86(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCE7C274(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE899C0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_13_17(v1);
  OUTLINED_FUNCTION_92_7();
  OUTLINED_FUNCTION_26_14();

  return sub_1DCE7C4F8(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCE89A64()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_81();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_86(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCE7C764(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE89B74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  OUTLINED_FUNCTION_20_0(v0);
  return sub_1DCE7C1D4();
}

uint64_t sub_1DCE89BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  type metadata accessor for DisambiguationResult(255, v7, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v8 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_20_0(v8);
  v10 = v4 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_1DCE7B9C4(a1, v10, v6, v7);
}

uint64_t sub_1DCE89D1C()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_81();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_86(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCE7B194(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE89DA8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_13_17(v1);
  OUTLINED_FUNCTION_92_7();
  OUTLINED_FUNCTION_26_14();

  return sub_1DCE7AFDC(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCE89E4C()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_81();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_86(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCE7ADF4(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE89ED8()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_81();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_86(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCE7AC0C(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE89F64()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_81();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_86(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCE7AA24(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE89FF0()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_90_9();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_0_84(v3);
  OUTLINED_FUNCTION_26_14();

  return sub_1DCE7A718(v5, v6, v7, v8, v9, v10, v0, v1);
}

uint64_t sub_1DCE8A0F4()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_13_17(v2);

  return sub_1DCE79DB0(v4, v0);
}

uint64_t sub_1DCE8A17C()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_15(v3);

  return sub_1DCE79E5C(v5, v6, v1);
}

uint64_t sub_1DCE8A210()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_15(v3);

  return sub_1DCE79C48(v5, v6, v1);
}

uint64_t sub_1DCE8A2A4()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_15(v3);

  return sub_1DCE79CFC(v5, v6, v1);
}

uint64_t sub_1DCE8A338()
{
  OUTLINED_FUNCTION_21();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_33_1();
  v3(v2);
  return v0;
}

uint64_t sub_1DCE8A390(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 OUTLINED_FUNCTION_106_4(uint64_t a1)
{
  *(v2 + 184) = a1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  result = *(v1 + 25);
  *(v2 + 41) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_117_3()
{
}

void sub_1DCE8A52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v9);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v16 - v12;
  v14 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a6;
  v15[5] = 0;
  v15[6] = a1;
  v15[7] = a2;
  sub_1DD0DCF8C();
}

void PromptForValueFlowStrategy.makeErrorResponse(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v5);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v12 - v8;
  v10 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1DD0FDE28;
  v11[5] = 0;
  v11[6] = a2;
  v11[7] = a3;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE8A724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1DCB4AE1C;

  return PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse()();
}

uint64_t PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_73_0(v0, v1, v2);
  OUTLINED_FUNCTION_25_1();
  v9 = (v3 + *v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_84(v5);

  return v9(v7);
}

uint64_t sub_1DCE8A8D0(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence()();
}

uint64_t PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence()()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDBBA0();
}

uint64_t sub_1DCE8A9EC(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AD3C;

  return PromptForValueFlowStrategyAsync.makeFlowCancelledResponse()();
}

uint64_t PromptForValueFlowStrategyAsync.makeFlowCancelledResponse()()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDCA70();
}

uint64_t sub_1DCE8AB08(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return PromptForValueFlowStrategyAsync.makeErrorResponse(_:)();
}

uint64_t PromptForValueFlowStrategyAsync.makeErrorResponse(_:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDC444();
}

uint64_t PromptForValueFlowStrategyAsync.actionForInputWrapper(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE8AC40()
{
  OUTLINED_FUNCTION_42();
  (*(v0[5] + 16))(v0[3], v0[4]);
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t PromptForValueFlowAsync.exitValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OUTLINED_FUNCTION_80_8();
  v8 = type metadata accessor for PromptForValueFlowAsync.State(v4, v5, v6, v7);
  OUTLINED_FUNCTION_9();
  v10 = v9;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v36[-v13 - 8];
  v15 = *(v3 + 112);
  OUTLINED_FUNCTION_156(&v1[v15], v36);
  (*(v10 + 16))(v14, &v1[v15], v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v26 = v14[8];
    *a1 = *v14;
    *(a1 + 8) = v26;
    v27 = OUTLINED_FUNCTION_80_8();
    type metadata accessor for PromptResult(v27, v28, v29, v30);
    return swift_storeEnumTagMultiPayload();
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v20 = OUTLINED_FUNCTION_80_8();
    type metadata accessor for PromptResult(v20, v21, v22, v23);
    OUTLINED_FUNCTION_2();
    return (*(v24 + 32))(a1, v14);
  }

  else
  {
    *a1 = sub_1DCE8C0C0(EnumCaseMultiPayload, v17, v18, v19);
    *(a1 + 8) = 0;
    v31 = OUTLINED_FUNCTION_80_8();
    type metadata accessor for PromptResult(v31, v32, v33, v34);
    swift_storeEnumTagMultiPayload();
    return (*(v10 + 8))(v14, v8);
  }
}

uint64_t PromptForValueFlow.__allocating_init(strategy:outputPublisher:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  PromptForValueFlow.init(strategy:outputPublisher:)(a1, a2);
  return v4;
}

uint64_t PromptForValueFlow.init(strategy:outputPublisher:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *(*v2 + 88);
  v6 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = OUTLINED_FUNCTION_24_17();
  v12 = type metadata accessor for PromptForValueFlowAsync(v8, v9, v10, v11);
  v13 = OUTLINED_FUNCTION_24_17();
  type metadata accessor for AnyPromptForValueFlowStrategy(v13, v14, v15, v16);
  OUTLINED_FUNCTION_52_1();
  v17 = swift_unknownObjectRetain();
  v18 = sub_1DCE8B02C(v17, v6, v5);
  sub_1DCB17CA0(a2, &v23);
  v19 = type metadata accessor for OutputPublisherAsyncAdapter();
  v20 = swift_allocObject();
  sub_1DCAFF9E8(&v23, v20 + 16);
  v24 = v19;
  v25 = &protocol witness table for OutputPublisherAsyncAdapter;
  *&v23 = v20;
  WitnessTable = swift_getWitnessTable();
  PromptForValueFlowAsync.__allocating_init<A>(strategy:outputPublisher:)(v18, &v23, AssociatedTypeWitness, WitnessTable);
  OUTLINED_FUNCTION_52_1();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  *(v3 + 16) = v12;
  return v3;
}

uint64_t sub_1DCE8B02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_63_12();
  swift_allocObject();
  v6 = OUTLINED_FUNCTION_52_1();
  sub_1DCE8DD40(v6, a2, a3);
  return v3;
}

void PromptForValueFlowAsync.on(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v53[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for PromptForValueFlowAsync.State(0, *(v4 + 80), v9, v10);
  OUTLINED_FUNCTION_9();
  v13 = v12;
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v53[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v53[-v20];
  v22 = *(v4 + 112);
  OUTLINED_FUNCTION_156(v1 + v22, v54 + 1);
  (*(v13 + 16))(v21, v1 + v22, v11);
  LODWORD(v22) = swift_getEnumCaseMultiPayload();
  (*(v13 + 8))(v21, v11);
  if (v22 != 5)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v30 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v30, qword_1EDE57E00);
    v31 = sub_1DD0DD8EC();
    v32 = sub_1DD0DE6DC();
    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_14;
    }

    v33 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v33);
    v34 = "PromptForValueFlow received input but is not in the promptSent state. Ignoring.";
    goto LABEL_13;
  }

  v23 = type metadata accessor for Input(0);
  sub_1DCB2479C(a1 + *(v23 + 20), v8, type metadata accessor for Parse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1DCB28690(v8, type metadata accessor for Parse);
  if (EnumCaseMultiPayload == 10)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v25 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v25, qword_1EDE57E00);
    v26 = sub_1DD0DD8EC();
    v27 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v27))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_2_3(&dword_1DCAFC000, v28, v29, "PromptForValueFlow received empty parse. Will handle and reprompt.");
      OUTLINED_FUNCTION_80();
    }

LABEL_7:

    OUTLINED_FUNCTION_131();
LABEL_8:
    swift_storeEnumTagMultiPayload();
    sub_1DCB753CC(v18);
    goto LABEL_15;
  }

  if (sub_1DCE967E0(a1))
  {
    (*(v2[2] + 16))(v54, a1);
    if (!LOBYTE(v54[0]))
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v47 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v47, qword_1EDE57E00);
      v26 = sub_1DD0DD8EC();
      v48 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v48))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_2_3(&dword_1DCAFC000, v49, v50, "PromptForValueFlow received cancel action from delegate. Transitioning to cancelled state.");
        OUTLINED_FUNCTION_80();
      }

      goto LABEL_7;
    }

    if (LOBYTE(v54[0]) == 1)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v35 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v35, qword_1EDE57E00);
      v36 = sub_1DD0DD8EC();
      v37 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v37))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_36_1(&dword_1DCAFC000, v38, v39, "PromptForValueFlow received handle action from delegate. Transitioning to responseReceived state.");
        OUTLINED_FUNCTION_80();
      }

      OUTLINED_FUNCTION_13_57();
      sub_1DCB2479C(a1, v18, v40);
      OUTLINED_FUNCTION_131();
      goto LABEL_8;
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v51 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v51, qword_1EDE57E00);
    v31 = sub_1DD0DD8EC();
    v32 = sub_1DD0DE6DC();
    if (!os_log_type_enabled(v31, v32))
    {
LABEL_14:

      goto LABEL_15;
    }

    v52 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v52);
    v34 = "PromptForValueFlow received ignore action from delegate. Ignoring.";
LABEL_13:
    _os_log_impl(&dword_1DCAFC000, v31, v32, v34, v18, 2u);
    OUTLINED_FUNCTION_62();
    goto LABEL_14;
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v41 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v41, qword_1EDE57E00);
  v42 = sub_1DD0DD8EC();
  v43 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v43))
  {
    *OUTLINED_FUNCTION_50_0() = 0;
    OUTLINED_FUNCTION_36_1(&dword_1DCAFC000, v44, v45, "PromptForValueFlow received low confidence input. Treating as misunderstood and will reprompt.");
    OUTLINED_FUNCTION_80();
  }

  OUTLINED_FUNCTION_13_57();
  sub_1DCB2479C(a1, v18, v46);
  OUTLINED_FUNCTION_131();
  swift_storeEnumTagMultiPayload();
  sub_1DCB753CC(v18);
LABEL_15:
  OUTLINED_FUNCTION_49();
}

uint64_t PromptForValueFlow.execute()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE8B638()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_101_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_31_1(v1);

  return PromptForValueFlowAsync.execute()();
}

uint64_t sub_1DCE8B6BC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE8B7B8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE8B8B4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_6_60();
  sub_1DCB28690(v0, v1);
  OUTLINED_FUNCTION_62_10();

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCE8B934()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE8BA30()
{
  OUTLINED_FUNCTION_39();
  (*(v0[10] + 8))(v0[12], v0[9]);
  OUTLINED_FUNCTION_62_10();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCE8BABC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE8BBB8()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 112);
  OUTLINED_FUNCTION_12_52();
  v3 = v2;
  sub_1DCB753CC(v0);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_62_10();

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCE8BC54()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 128);
  OUTLINED_FUNCTION_12_52();
  v3 = v2;
  sub_1DCB753CC(v0);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_62_10();

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCE8BCF0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_6_60();
  sub_1DCB28690(v2, v3);
  v4 = *(v1 + 144);
  OUTLINED_FUNCTION_12_52();
  v5 = v4;
  sub_1DCB753CC(v0);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_62_10();

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCE8BD98()
{
  OUTLINED_FUNCTION_39();
  (*(v1[10] + 8))(v1[12], v1[9]);
  v2 = v1[20];
  OUTLINED_FUNCTION_12_52();
  v3 = v2;
  sub_1DCB753CC(v0);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_62_10();

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCE8BE4C()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 176);
  OUTLINED_FUNCTION_12_52();
  v3 = v2;
  sub_1DCB753CC(v0);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_62_10();

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t PromptForValueFlow.__deallocating_deinit()
{
  PromptForValueFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCE8C000(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return PromptForValueFlow.execute()(a1);
}

uint64_t sub_1DCE8C0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = type metadata accessor for PromptForValueFlowAsync.State(0, *(*v4 + 80), a3, a4);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v17 - v9;
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1DD0DEC1C();
  v20 = v18;
  v21 = v19;
  MEMORY[0x1E12A6780](0xD000000000000020, 0x80000001DD113180);
  v11 = *(*v4 + 112);
  swift_beginAccess();
  (*(v7 + 16))(v10, v5 + v11, v6);
  swift_getWitnessTable();
  sub_1DD0DF08C();
  (*(v7 + 8))(v10, v6);
  v12 = v20;
  v13 = v21;
  type metadata accessor for CommandFailure();
  swift_allocObject();
  v14 = CommandFailure.init(errorCode:reason:)(-1, v12, v13);
  sub_1DCC7AE30();
  result = swift_allocError();
  *v16 = v14;
  return result;
}

uint64_t sub_1DCE8C2B8()
{
  OUTLINED_FUNCTION_42();
  v2 = OUTLINED_FUNCTION_44_19(v1);
  v6 = OUTLINED_FUNCTION_80_9(v2, *(v3 + 80), v4, v5);
  OUTLINED_FUNCTION_20_0(v6);
  *(v0 + 80) = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE8C33C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_24_5();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 88) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_115(v1);
  v3 = OUTLINED_FUNCTION_10_3();

  return sub_1DCB63BBC(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCE8C3E0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_44_19(v1);
  v3 = *(v2 + 80);
  v0[9] = v3;
  v6 = type metadata accessor for PromptForValueFlowAsync.State(0, v3, v4, v5);
  v0[10] = v6;
  OUTLINED_FUNCTION_20_0(v6);
  v0[11] = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE8C470()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_24_5();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 96) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_115(v1);
  v3 = OUTLINED_FUNCTION_10_3();

  return sub_1DCB63BBC(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCE8C514()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE8C614()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 88);
  type metadata accessor for PromptResult(0, *(v0 + 72), v2, v3);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1DCB753CC(v1);
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCE8C6BC()
{
  OUTLINED_FUNCTION_42();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  OUTLINED_FUNCTION_66();
  v5 = *(v4 + 80);
  v1[10] = v5;
  v6 = OUTLINED_FUNCTION_24_17();
  v10 = type metadata accessor for PromptForValueFlowAsync.State(v6, v7, v8, v9);
  v1[11] = v10;
  OUTLINED_FUNCTION_20_0(v10);
  v1[12] = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24_17();
  v1[13] = sub_1DD0DE97C();
  OUTLINED_FUNCTION_24_0();
  v1[14] = v11;
  v1[15] = OUTLINED_FUNCTION_38();
  v1[16] = *(v5 - 8);
  v1[17] = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DCE8C7EC()
{
  OUTLINED_FUNCTION_42();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[18] = v1;
  *v1 = v2;
  v1[1] = sub_1DCE8C884;
  v3 = v0[15];
  v4 = v0[8];

  return sub_1DCE8EE30(v3, v4);
}

uint64_t sub_1DCE8C884()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE8C980()
{
  OUTLINED_FUNCTION_41();
  v1 = v0[15];
  v2 = v0[10];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v4 = v0[12];
  if (EnumTagSinglePayload == 1)
  {
    (*(v0[14] + 8))(v1, v0[13]);
    v5 = OUTLINED_FUNCTION_80_8();
    type metadata accessor for PromptResult(v5, v6, v7, v8);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1DCB753CC(v4);
  }

  else
  {
    v10 = v0[16];
    v9 = v0[17];
    (*(v10 + 32))(v9, v1, v2);
    (*(v10 + 16))(v4, v9, v2);
    v11 = OUTLINED_FUNCTION_80_8();
    type metadata accessor for PromptResult(v11, v12, v13, v14);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1DCB753CC(v4);
    (*(v10 + 8))(v9, v2);
  }

  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_29();

  return v15();
}

uint64_t sub_1DCE8CB18()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[19];
  v2 = v0[9];
  v4 = v2[6];
  v3 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v4);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[21] = v6;
  *v6 = v7;
  v6[1] = sub_1DCE8CC08;

  return sub_1DCB63BBC((v0 + 2), &unk_1DD0FE320, v5, v4, v3);
}

uint64_t sub_1DCE8CC08()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE8CD14()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v1 = v0[19];
  v2 = v0[12];
  v3 = v0[10];
  *v2 = v1;
  *(v2 + 8) = 1;
  type metadata accessor for PromptResult(0, v3, v4, v5);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v6 = v1;
  sub_1DCB753CC(v2);

  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_152();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1DCE8CDF4()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 152);

  swift_willThrow();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_152();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE8CE8C()
{
  OUTLINED_FUNCTION_42();
  v2 = OUTLINED_FUNCTION_44_19(v1);
  v6 = OUTLINED_FUNCTION_80_9(v2, *(v3 + 80), v4, v5);
  OUTLINED_FUNCTION_20_0(v6);
  *(v0 + 80) = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE8CF10()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_24_5();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 88) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_115(v1);
  v3 = OUTLINED_FUNCTION_10_3();

  return sub_1DCB63BBC(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCE8CFB4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE8D0B4()
{
  OUTLINED_FUNCTION_42();
  v2 = OUTLINED_FUNCTION_44_19(v1);
  v6 = OUTLINED_FUNCTION_80_9(v2, *(v3 + 80), v4, v5);
  OUTLINED_FUNCTION_20_0(v6);
  *(v0 + 80) = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCE8D138()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_24_5();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 88) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_115(v1);
  v3 = OUTLINED_FUNCTION_10_3();

  return sub_1DCB63BBC(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCE8D1DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE8D1FC, 0, 0);
}

uint64_t sub_1DCE8D1FC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_101_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31_1(v1);

  return sub_1DCE8EF28(v3);
}

uint64_t sub_1DCE8D280(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE8D2A0, 0, 0);
}

uint64_t sub_1DCE8D2A0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_101_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31_1(v1);

  return sub_1DCE8EFF0(v3);
}

uint64_t sub_1DCE8D324(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE8D344, 0, 0);
}

uint64_t sub_1DCE8D344()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_101_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31_1(v1);

  return sub_1DCE8F0B8(v3);
}

uint64_t sub_1DCE8D3C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE8D3E8, 0, 0);
}

uint64_t sub_1DCE8D3E8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_101_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31_1(v1);

  return sub_1DCE8F180(v3);
}

uint64_t sub_1DCE8D46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCE8D490, 0, 0);
}

uint64_t sub_1DCE8D490()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_101_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[5] = v1;
  *v1 = v2;
  v1[1] = sub_1DCBEA100;
  v3 = v0[4];
  v4 = v0[2];

  return sub_1DCE8F248(v4, v3);
}

uint64_t sub_1DCE8D610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = (*(a6 + 24) + **(a6 + 24));
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  v11[1] = sub_1DCB4AE1C;

  return v13(a1, a2, a5, a6);
}

uint64_t sub_1DCE8D748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = (*(a5 + 32) + **(a5 + 32));
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_1DCB4AE1C;

  return v11(a1, a4, a5);
}

uint64_t sub_1DCE8D878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = (*(a5 + 40) + **(a5 + 40));
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_1DCB4AE1C;

  return v11(a1, a4, a5);
}

uint64_t sub_1DCE8D9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = (*(a5 + 48) + **(a5 + 48));
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_1DCB4AE1C;

  return v11(a1, a4, a5);
}

uint64_t sub_1DCE8DAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = (*(a5 + 56) + **(a5 + 56));
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_1DCB4AE1C;

  return v11(a1, a4, a5);
}

uint64_t sub_1DCE8DC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = (*(a6 + 64) + **(a6 + 64));
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  v11[1] = sub_1DCB4AE1C;

  return v13(a1, a2, a5, a6);
}

uint64_t *sub_1DCE8DD40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v3[16] = swift_getObjectType();
  v3[2] = sub_1DCE8DEB0(a1, *(v7 + 80), a2, a3);
  v3[3] = v8;
  OUTLINED_FUNCTION_136();
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_58_13(v9);
  v3[4] = &unk_1DD0FE350;
  v3[5] = v10;
  OUTLINED_FUNCTION_136();
  v11 = swift_allocObject();
  v12 = OUTLINED_FUNCTION_58_13(v11);
  v3[6] = &unk_1DD0FE360;
  v3[7] = v12;
  OUTLINED_FUNCTION_136();
  v13 = swift_allocObject();
  v14 = OUTLINED_FUNCTION_58_13(v13);
  v3[8] = &unk_1DD0FE370;
  v3[9] = v14;
  OUTLINED_FUNCTION_136();
  v15 = swift_allocObject();
  v16 = OUTLINED_FUNCTION_58_13(v15);
  v3[10] = &unk_1DD0FE380;
  v3[11] = v16;
  OUTLINED_FUNCTION_136();
  v17 = swift_allocObject();
  v18 = OUTLINED_FUNCTION_58_13(v17);
  v3[12] = &unk_1DD0FE390;
  v3[13] = v18;
  OUTLINED_FUNCTION_136();
  v19 = swift_allocObject();
  v20 = OUTLINED_FUNCTION_58_13(v19);
  v3[14] = &unk_1DD0FE3A0;
  v3[15] = v20;
  swift_unknownObjectRetain_n();
  return v3;
}

uint64_t (*sub_1DCE8DEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;
  swift_unknownObjectRetain();
  return sub_1DCE967B0;
}

uint64_t sub_1DCE8DF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE8DF58, 0, 0);
}

uint64_t sub_1DCE8DF58()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v1;
  *(v2 + 40) = vextq_s8(v3, v3, 8uLL);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  sub_1DD0DE97C();
  OUTLINED_FUNCTION_17();
  *v4 = v5;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DCE8E03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19[1] = a2;
  sub_1DD0DE97C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v11 = sub_1DD0DE47C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v19 - v14;
  (*(v12 + 16))(v19 - v14, a1, v11);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a4;
  *(v17 + 3) = a5;
  *(v17 + 4) = a6;
  (*(v12 + 32))(&v17[v16], v15, v11);
  (*(a6 + 24))(a3, sub_1DCE966EC, v17, a5, a6);
}

uint64_t sub_1DCE8E1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DD0DE97C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v4 = sub_1DD0DE47C();
  return sub_1DD05EBE4(a1, v4);
}

uint64_t sub_1DCE8E264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCE8E28C, 0, 0);
}

uint64_t sub_1DCE8E28C()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_51_22();
  OUTLINED_FUNCTION_21_34(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_46_0(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCE8E348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  (*(a5 + 32))(sub_1DCE706A4, v14, a4, a5);
}

uint64_t sub_1DCE8E4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCE8E4E0, 0, 0);
}

uint64_t sub_1DCE8E4E0()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_51_22();
  OUTLINED_FUNCTION_21_34(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_46_0(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCE8E59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  (*(a5 + 40))(sub_1DCE706A4, v14, a4, a5);
}

uint64_t sub_1DCE8E70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCE8E734, 0, 0);
}

uint64_t sub_1DCE8E734()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_51_22();
  OUTLINED_FUNCTION_21_34(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_46_0(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCE8E7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  (*(a5 + 48))(sub_1DCE706A4, v14, a4, a5);
}

uint64_t sub_1DCE8E960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCE8E988, 0, 0);
}

uint64_t sub_1DCE8E988()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_51_22();
  OUTLINED_FUNCTION_21_34(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_46_0(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCE8EA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  (*(a5 + 56))(sub_1DCE706A4, v14, a4, a5);
}

uint64_t sub_1DCE8EBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE8EBDC, 0, 0);
}

uint64_t sub_1DCE8EBDC()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v1;
  *(v2 + 40) = vextq_s8(v3, v3, 8uLL);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v4 = v5;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DCE8ECB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - v13;
  (*(v11 + 16))(&v18 - v13, a1, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v14, v10);
  (*(a6 + 64))(a3, sub_1DCE6FBE8, v16, a5, a6);
}

uint64_t sub_1DCE8EE30(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE8EE48()
{
  OUTLINED_FUNCTION_42();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 40) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_46_1(v1);

  return v4(v3);
}

uint64_t sub_1DCE8EF28(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE8EF3C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_1_4();
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_33_3(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_31_1(v2);

  return v6(v4);
}

uint64_t sub_1DCE8EFF0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE8F004()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_1_4();
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_33_3(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_31_1(v2);

  return v6(v4);
}

uint64_t sub_1DCE8F0B8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE8F0CC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_1_4();
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_33_3(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_31_1(v2);

  return v6(v4);
}

uint64_t sub_1DCE8F180(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE8F194()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_1_4();
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_33_3(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_31_1(v2);

  return v6(v4);
}

uint64_t sub_1DCE8F248(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE8F260()
{
  OUTLINED_FUNCTION_42();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 40) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_46_1(v1);

  return v4(v3);
}

uint64_t sub_1DCE8F340()
{
  if (*(v0 + 128))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC360, &qword_1DD0FE290);
    v1 = sub_1DD0DE02C();
    v3 = v2;
  }

  else
  {
    v3 = 0xEB00000000656C62;
    v1 = 0x616C696176616E75;
  }

  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0xD000000000000030, 0x80000001DD120320);
  MEMORY[0x1E12A6780](v1, v3);

  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1DCE8F428(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCE8EE30(a1, a2);
}

uint64_t sub_1DCE8F4D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCE8EF28(a1);
}

uint64_t sub_1DCE8F568(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCE8EFF0(a1);
}

uint64_t sub_1DCE8F600(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCE8F0B8(a1);
}

uint64_t sub_1DCE8F698(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCE8F180(a1);
}

uint64_t sub_1DCE8F730(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCE8F248(a1, a2);
}

uint64_t sub_1DCE8F7FC()
{
  OUTLINED_FUNCTION_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_84(v1);

  return PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse()();
}

uint64_t sub_1DCE8F890()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence()();
}

uint64_t dispatch thunk of PromptForValueFlowStrategyAsync.parseValueResponse(input:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v0, v1, v2, v3);
  OUTLINED_FUNCTION_24_0();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_1(v5);

  return v8(v7);
}

uint64_t dispatch thunk of PromptForValueFlowStrategyAsync.makePromptForValue()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_73_0(v0, v1, v2);
  OUTLINED_FUNCTION_25_1();
  v9 = (v3 + *v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_84(v5);

  return v9(v7);
}

uint64_t dispatch thunk of PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_73_0(v0, v1, v2);
  OUTLINED_FUNCTION_25_1();
  v9 = (v3 + *v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_84(v5);

  return v9(v7);
}

uint64_t dispatch thunk of PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_73_0(v0, v1, v2);
  OUTLINED_FUNCTION_25_1();
  v9 = (v3 + *v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_84(v5);

  return v9(v7);
}

uint64_t dispatch thunk of PromptForValueFlowStrategyAsync.makeFlowCancelledResponse()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_73_0(v0, v1, v2);
  OUTLINED_FUNCTION_25_1();
  v9 = (v3 + *v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_84(v5);

  return v9(v7);
}

uint64_t dispatch thunk of PromptForValueFlowStrategyAsync.makeErrorResponse(_:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v0, v1, v2, v3);
  OUTLINED_FUNCTION_24_0();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_1(v5);

  return v8(v7);
}

uint64_t sub_1DCE90028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for PromptForValueFlowAsync.State(319, *(a1 + 80), a3, a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DCE90168(uint64_t a1)
{
  result = type metadata accessor for Input(319);
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for PromptResult(319, *(a1 + 16), v3, v4);
    if (v6 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

char *sub_1DCE90238(char *a1, unsigned __int8 *a2, uint64_t a3)
{
  v212 = sub_1DD0DB04C();
  v236 = *(v212 - 8);
  v241 = *(v236 + 64);
  v209 = sub_1DD0DC76C();
  v228 = *(v209 - 8);
  v208 = v228;
  v3 = *(v228 + 80);
  v207 = sub_1DD0DB1EC();
  v230 = *(v207 - 8);
  v206 = v230;
  v218 = *(v230 + 80) | v3;
  v211 = sub_1DD0DB4BC();
  v226 = *(v211 - 8);
  v240 = v226;
  v215 = *(v226 + 80);
  v210 = sub_1DD0DB3EC();
  v221 = *(v210 - 8);
  v4 = *(v221 + 80);
  v5 = v215 & 0xF8 | v4 | 7u;
  v6 = sub_1DD0DD12C();
  v224 = *(v6 - 8);
  v204 = v224;
  v205 = v6;
  v7 = *(v224 + 80);
  v8 = sub_1DD0DD08C();
  v9 = *(v8 - 8);
  v10 = v7 | *(v9 + 80);
  v11 = (v218 | (v7 | *(v9 + 80))) & 0xF8 | v5;
  v12 = *(v228 + 64);
  v13 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 <= v12)
  {
    v13 = *(v228 + 64);
  }

  if (v13 <= *(v230 + 64))
  {
    v13 = *(v230 + 64);
  }

  v14 = v4;
  v15 = *(v226 + 64) + v4;
  v231 = v4;
  v203 = v221;
  v16 = *(v221 + 84);
  v17 = *(v221 + 64);
  if (v16)
  {
    v18 = *(v221 + 64);
  }

  else
  {
    v18 = v17 + 1;
  }

  v229 = v15 & ~v4;
  v19 = (v18 + 7 + v229) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v13 <= v20)
  {
    v13 = (v19 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v21 = v19 + 31;
  if (v13 <= (((((v21 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v13 = (((((v21 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v22 = *(v224 + 64);
  v23 = v5 + 16;
  v24 = v215 & 0xF8 | v4 | 7u;
  v25 = *(v226 + 84);
  v26 = v16 - 1;
  if (!v16)
  {
    v26 = 0;
  }

  v225 = v26;
  if (v26 <= v25)
  {
    v26 = *(v226 + 84);
  }

  if (v26 <= 0x7FFFFFFE)
  {
    v26 = 2147483646;
  }

  v227 = v26;
  v27 = ((v21 + ((v5 + 16 + ((v22 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v5)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 <= v27)
  {
    v13 = v27;
  }

  v28 = *(*(v8 - 8) + 64);
  if (v13 > v28)
  {
    v28 = v13;
  }

  if (v28 <= 0x18)
  {
    v29 = 24;
  }

  else
  {
    v29 = v28;
  }

  v30 = ((((v29 + ((v241 + v11) & ~v11) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  v31 = *(a3 + 16);
  v32 = *(v31 - 8);
  if (*(v32 + 64) <= 9uLL)
  {
    v33 = 9;
  }

  else
  {
    v33 = *(v32 + 64);
  }

  v34 = v33 + 1;
  if (v33 + 1 > v30)
  {
    v30 = v33 + 1;
  }

  if (v30 <= 9)
  {
    v35 = 9;
  }

  else
  {
    v35 = v30;
  }

  v36 = *(v236 + 80);
  v37 = *(v32 + 80);
  if (((v37 | v36) & 0xF8 | v11) != 7 || ((v218 | v215 | v14 | v10 | v36 | v37) & 0x100000) != 0 || (v35 + 1) > 0x18)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v235 = v22;
  v38 = a2[v35];
  v39 = v38 - 4;
  if (v38 >= 4)
  {
    if (v35 <= 3)
    {
      v40 = v35;
    }

    else
    {
      v40 = 4;
    }

    switch(v40)
    {
      case 1:
        v41 = *a2;
        goto LABEL_46;
      case 2:
        v41 = *a2;
        goto LABEL_46;
      case 3:
        v41 = *a2 | (a2[2] << 16);
        goto LABEL_46;
      case 4:
        v41 = *a2;
LABEL_46:
        if (v35 < 4)
        {
          v41 |= v39 << (8 * v35);
        }

        v38 = v41 + 4;
        break;
      default:
        break;
    }
  }

  switch(v38)
  {
    case 0u:
      v197 = ~v24;
      v42 = v35;
      v219 = ~v231;
      v222 = *(v8 - 8);
      v43 = v8;
      v216 = v15;
      v195 = v18 + 7;
      v193 = v16;
      v191 = v17;
      __n = v18;
      v232 = v29 + 1;
      v44 = *(v236 + 16);
      v237 = v29;
      v44(a1, a2, v212);
      v213 = &a1[v241 + 7];
      v45 = (v213 & 0xFFFFFFFFFFFFFFF8);
      v242 = &a2[v241 + 7];
      v46 = (v242 & 0xFFFFFFFFFFFFFFF8);
      v47 = *((v242 & 0xFFFFFFFFFFFFFFF8) + v237);
      v48 = v47 - 10;
      if (v47 < 0xA)
      {
        v50 = v222;
      }

      else
      {
        if (v237 <= 3)
        {
          v49 = v237;
        }

        else
        {
          v49 = 4;
        }

        v50 = v222;
        switch(v49)
        {
          case 1:
            v51 = *v46;
            goto LABEL_92;
          case 2:
            v51 = *v46;
            goto LABEL_92;
          case 3:
            v51 = *v46 | (v46[2] << 16);
            goto LABEL_92;
          case 4:
            v51 = *v46;
LABEL_92:
            if (v237 < 4)
            {
              v47 = (v51 | (v48 << (8 * v237))) + 10;
            }

            else
            {
              v47 = v51 + 10;
            }

            break;
          default:
            break;
        }
      }

      v201 = v42;
      switch(v47)
      {
        case 0u:
          (*(v208 + 16))(v45, v46, v209);
          *((v213 & 0xFFFFFFFFFFFFFFF8) + v237) = 0;
          goto LABEL_120;
        case 1u:
          (*(v208 + 16))(v45, v46, v209);
          *(((v213 | 7) + v12) & 0xFFFFFFFFFFFFFFF8) = *(((v242 | 7) + v12) & 0xFFFFFFFFFFFFFFF8);
          *((v213 & 0xFFFFFFFFFFFFFFF8) + v237) = 1;
          sub_1DD0DCF8C();
        case 2u:
          *v45 = *v46;
          v45[1] = *(v46 + 1);
          v45[2] = *(v46 + 2);
          *(v45 + v237) = 2;

          goto LABEL_120;
        case 3u:
          *v45 = *v46;
          *(v45 + v237) = 3;
          swift_unknownObjectRetain();
          goto LABEL_120;
        case 4u:
          v73 = v237;
          v74 = v213 & 0xFFFFFFFFFFFFFFF8;
          (*(v206 + 16))(v45, v46, v207);
          v75 = 4;
          goto LABEL_106;
        case 5u:
          v87 = *v46;
          *v45 = *v46;
          *(v45 + v237) = 5;
          v88 = v87;
          goto LABEL_120;
        case 6u:
          (*(v240 + 16))(v45, v46, v211);
          v109 = ((v216 + (v213 & 0xFFFFFFFFFFFFFFF8)) & v219);
          v110 = (&v46[v216] & v219);
          if (__swift_getEnumTagSinglePayload(v110, 1, v210))
          {
            v111 = __n;
            memcpy(v109, v110, __n);
            v82 = v232;
          }

          else
          {
            (*(v203 + 16))(v109, v110, v210);
            __swift_storeEnumTagSinglePayload(v109, 0, 1, v210);
            v82 = v232;
            v111 = __n;
          }

          v89 = v213;
          v90 = v242;
          v58 = a1;
          v159 = ((v109 + v111 + 7) & 0xFFFFFFFFFFFFFFF8);
          v160 = ((v110 + v111 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v159 = *v160;
          v159[1] = v160[1];
          v161 = (v159 + 19) & 0xFFFFFFFFFFFFFFF8;
          v162 = (v160 + 19) & 0xFFFFFFFFFFFFFFF8;
          v163 = *v162;
          *(v161 + 4) = *(v162 + 4);
          *v161 = v163;
          *((v213 & 0xFFFFFFFFFFFFFFF8) + v237) = 6;

          goto LABEL_123;
        case 7u:
          (*(v240 + 16))(v45, v46, v211);
          v79 = ((v216 + (v213 & 0xFFFFFFFFFFFFFFF8)) & v219);
          v80 = (&v46[v216] & v219);
          if (__swift_getEnumTagSinglePayload(v80, 1, v210))
          {
            v81 = __n;
            memcpy(v79, v80, __n);
            v82 = v232;
          }

          else
          {
            (*(v203 + 16))(v79, v80, v210);
            __swift_storeEnumTagSinglePayload(v79, 0, 1, v210);
            v82 = v232;
            v81 = __n;
          }

          v89 = v213;
          v90 = v242;
          v137 = ((v79 + v81 + 7) & 0xFFFFFFFFFFFFFFF8);
          v138 = ((v80 + v81 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v137 = *v138;
          v137[1] = v138[1];
          v139 = (v137 + 19) & 0xFFFFFFFFFFFFFFF8;
          v140 = (v138 + 19) & 0xFFFFFFFFFFFFFFF8;
          v141 = *v140;
          *(v139 + 4) = *(v140 + 4);
          *v139 = v141;
          v142 = (((v213 | 7) + v20) & 0xFFFFFFFFFFFFFFF8);
          v143 = (((v242 | 7) + v20) & 0xFFFFFFFFFFFFFFF8);
          *v142 = *v143;
          v142[1] = v143[1];
          v144 = ((v142 + 23) & 0xFFFFFFFFFFFFFFF8);
          v145 = ((v143 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v144 = *v145;
          v144[1] = v145[1];
          v146 = ((v144 + 23) & 0xFFFFFFFFFFFFFFF8);
          v147 = ((v145 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v146 = *v147;
          v146[1] = v147[1];
          *((v213 & 0xFFFFFFFFFFFFFFF8) + v237) = 7;

          goto LABEL_122;
        case 8u:
          (*(v204 + 16))(v45, v46, v205);
          v115 = (((v213 | 7) + v235) & 0xFFFFFFFFFFFFFFF8);
          v116 = (((v242 | 7) + v235) & 0xFFFFFFFFFFFFFFF8);
          *v115 = *v116;
          v115[1] = v116[1];
          v117 = ((v115 + v23) & v197);
          v118 = ((v116 + v23) & v197);

          if (v25 != v227)
          {
            v123 = ((v118 + v216) & v219);
            v82 = v232;
            if (v225 == v227)
            {
              v124 = v210;
              v89 = v213;
              if (v193 < 2)
              {
                v120 = v211;
LABEL_166:
                v125 = v240;
                v122 = v216;
                v121 = v219;
                goto LABEL_167;
              }

              v120 = v211;
              if (__swift_getEnumTagSinglePayload((v118 + v216) & v219, v193, v210) >= 2)
              {
                goto LABEL_183;
              }
            }

            else
            {
              v169 = *(((v123 + v195) & 0xFFFFFFFFFFFFFFF8) + 8);
              if (v169 >= 0xFFFFFFFF)
              {
                LODWORD(v169) = -1;
              }

              v120 = v211;
              v89 = v213;
              if ((v169 + 1) >= 2)
              {
                goto LABEL_183;
              }
            }

            v124 = v210;
            goto LABEL_166;
          }

          v119 = v25;
          v120 = v211;
          v82 = v232;
          v89 = v213;
          if (__swift_getEnumTagSinglePayload(v118, v119, v211))
          {
LABEL_183:
            memcpy(v117, v118, v20);
            v90 = v242;
            v58 = a1;
LABEL_184:
            v176 = __n;
            goto LABEL_185;
          }

          v122 = v216;
          v121 = v219;
          v123 = ((v118 + v216) & v219);
          v124 = v210;
          v125 = v240;
LABEL_167:
          (*(v125 + 16))(v117, v118, v120);
          if (__swift_getEnumTagSinglePayload(v123, 1, v124))
          {
            memcpy(((v117 + v122) & v121), v123, __n);
          }

          else
          {
            (*(v203 + 16))((v117 + v122) & v121, v123, v124);
            __swift_storeEnumTagSinglePayload((v117 + v122) & v121, 0, 1, v124);
          }

          v90 = v242;
          v58 = a1;
          v171 = ((v195 + ((v117 + v122) & v121)) & 0xFFFFFFFFFFFFFFF8);
          v172 = ((v123 + v195) & 0xFFFFFFFFFFFFFFF8);
          *v171 = *v172;
          v171[1] = v172[1];
          v173 = (v171 + 19) & 0xFFFFFFFFFFFFFFF8;
          v174 = (v172 + 19) & 0xFFFFFFFFFFFFFFF8;
          v175 = *v174;
          *(v173 + 4) = *(v174 + 4);
          *v173 = v175;

          v82 = v232;
          v176 = v191;
          if (!v193)
          {
            goto LABEL_184;
          }

LABEL_185:
          v183 = (((v229 + v176 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
          v184 = ((v117 + v183 + 7) & 0xFFFFFFFFFFFFFFF8);
          v185 = *((v118 + v183 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v184 = v185;
          *((v213 & 0xFFFFFFFFFFFFFFF8) + v237) = 8;
          v186 = v185;
LABEL_123:
          v91 = (((v90 | 7) + v82) & 0xFFFFFFFFFFFFFFF8);
          v92 = (((v89 | 7) + v82) & 0xFFFFFFFFFFFFFFF8);
          *v92 = *v91;
          v93 = (v92 + 15) & 0xFFFFFFFFFFFFFFF8;
          v94 = (v91 + 15) & 0xFFFFFFFFFFFFFFF8;
          v95 = *(v94 + 24);

          if (v95 < 0xFFFFFFFF)
          {
            v96 = *v94;
            v97 = *(v94 + 16);
            *(v93 + 32) = *(v94 + 32);
            *v93 = v96;
            *(v93 + 16) = v97;
          }

          else
          {
            *(v93 + 24) = v95;
            *(v93 + 32) = *(v94 + 32);
            (**(v95 - 8))(v93, v94, v95);
          }

          *(v93 + 40) = *(v94 + 40);
          v58[v201] = 0;
          return v58;
        case 9u:
          v73 = v237;
          v74 = v213 & 0xFFFFFFFFFFFFFFF8;
          (*(v50 + 16))(v45, v46, v43);
          v75 = 9;
LABEL_106:
          *(v74 + v73) = v75;
LABEL_120:
          v82 = v232;
          goto LABEL_121;
        default:
          v82 = v232;
          memcpy(v45, (v242 & 0xFFFFFFFFFFFFFFF8), v232);
LABEL_121:
          v89 = v213;
          v90 = v242;
LABEL_122:
          v58 = a1;
          goto LABEL_123;
      }

    case 1u:
      v198 = ~v24;
      v60 = v35;
      v220 = ~v231;
      v223 = *(v8 - 8);
      v61 = v8;
      v217 = v15;
      v196 = v18 + 7;
      v194 = v16;
      v192 = v17;
      __na = v18;
      v233 = v29 + 1;
      v62 = *(v236 + 16);
      v238 = v29;
      v62(a1, a2, v212);
      v214 = &a1[v241 + 7];
      v63 = (v214 & 0xFFFFFFFFFFFFFFF8);
      v243 = &a2[v241 + 7];
      v64 = (v243 & 0xFFFFFFFFFFFFFFF8);
      v65 = *((v243 & 0xFFFFFFFFFFFFFFF8) + v238);
      v66 = v65 - 10;
      if (v65 < 0xA)
      {
        v68 = v223;
      }

      else
      {
        if (v238 <= 3)
        {
          v67 = v238;
        }

        else
        {
          v67 = 4;
        }

        v68 = v223;
        switch(v67)
        {
          case 1:
            v69 = *v64;
            goto LABEL_98;
          case 2:
            v69 = *v64;
            goto LABEL_98;
          case 3:
            v69 = *v64 | (v64[2] << 16);
            goto LABEL_98;
          case 4:
            v69 = *v64;
LABEL_98:
            if (v238 < 4)
            {
              v65 = (v69 | (v66 << (8 * v238))) + 10;
            }

            else
            {
              v65 = v69 + 10;
            }

            break;
          default:
            goto LABEL_101;
        }
      }

      break;
    case 2u:
      v52 = a2[v33];
      v53 = v52 - 2;
      if (v52 >= 2)
      {
        if (v33 <= 3)
        {
          v54 = v33;
        }

        else
        {
          v54 = 4;
        }

        switch(v54)
        {
          case 1:
            v55 = *a2;
            goto LABEL_79;
          case 2:
            v55 = *a2;
            goto LABEL_79;
          case 3:
            v55 = *a2 | (a2[2] << 16);
            goto LABEL_79;
          case 4:
            v55 = *a2;
LABEL_79:
            if (v33 < 4)
            {
              v52 = (v55 | (v53 << (8 * v33))) + 2;
            }

            else
            {
              v52 = v55 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v52 == 1)
      {
        v71 = *a2;
        v72 = *a2;
        *a1 = v71;
        a1[8] = a2[8];
        a1[v33] = 1;
        v58 = a1;
      }

      else if (v52)
      {
        v58 = a1;
        memcpy(a1, a2, v34);
      }

      else
      {
        (*(v32 + 16))(a1, a2, v31);
        a1[v33] = 0;
        v58 = a1;
      }

      v59 = 2;
      goto LABEL_88;
    case 3u:
      v56 = *a2;
      v57 = *a2;
      v58 = a1;
      *a1 = v56;
      a1[8] = a2[8];
      v59 = 3;
LABEL_88:
      v58[v35] = v59;
      return v58;
    default:

      return memcpy(a1, a2, v29 + 1);
  }

LABEL_101:
  v202 = v60;
  switch(v65)
  {
    case 0u:
      (*(v208 + 16))(v63, v64, v209);
      *((v214 & 0xFFFFFFFFFFFFFFF8) + v238) = 0;
      goto LABEL_128;
    case 1u:
      (*(v208 + 16))(v63, v64, v209);
      *(((v214 | 7) + v12) & 0xFFFFFFFFFFFFFFF8) = *(((v243 | 7) + v12) & 0xFFFFFFFFFFFFFFF8);
      *((v214 & 0xFFFFFFFFFFFFFFF8) + v238) = 1;
      sub_1DD0DCF8C();
    case 2u:
      *v63 = *v64;
      v63[1] = *(v64 + 1);
      v63[2] = *(v64 + 2);
      *(v63 + v238) = 2;

      goto LABEL_128;
    case 3u:
      *v63 = *v64;
      *(v63 + v238) = 3;
      swift_unknownObjectRetain();
      goto LABEL_128;
    case 4u:
      v76 = v238;
      v77 = v214 & 0xFFFFFFFFFFFFFFF8;
      (*(v206 + 16))(v63, v64, v207);
      v78 = 4;
      goto LABEL_108;
    case 5u:
      v98 = *v64;
      *v63 = *v64;
      *(v63 + v238) = 5;
      v99 = v98;
      goto LABEL_128;
    case 6u:
      (*(v240 + 16))(v63, v64, v211);
      v112 = ((v217 + (v214 & 0xFFFFFFFFFFFFFFF8)) & v220);
      v113 = (&v64[v217] & v220);
      if (__swift_getEnumTagSinglePayload(v113, 1, v210))
      {
        v114 = __na;
        memcpy(v112, v113, __na);
        v86 = v233;
      }

      else
      {
        (*(v203 + 16))(v112, v113, v210);
        __swift_storeEnumTagSinglePayload(v112, 0, 1, v210);
        v86 = v233;
        v114 = __na;
      }

      v100 = v214;
      v101 = v243;
      v58 = a1;
      v164 = ((v112 + v114 + 7) & 0xFFFFFFFFFFFFFFF8);
      v165 = ((v113 + v114 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v164 = *v165;
      v164[1] = v165[1];
      v166 = (v164 + 19) & 0xFFFFFFFFFFFFFFF8;
      v167 = (v165 + 19) & 0xFFFFFFFFFFFFFFF8;
      v168 = *v167;
      *(v166 + 4) = *(v167 + 4);
      *v166 = v168;
      *((v214 & 0xFFFFFFFFFFFFFFF8) + v238) = 6;

      goto LABEL_131;
    case 7u:
      (*(v240 + 16))(v63, v64, v211);
      v83 = ((v217 + (v214 & 0xFFFFFFFFFFFFFFF8)) & v220);
      v84 = (&v64[v217] & v220);
      if (__swift_getEnumTagSinglePayload(v84, 1, v210))
      {
        v85 = __na;
        memcpy(v83, v84, __na);
        v86 = v233;
      }

      else
      {
        (*(v203 + 16))(v83, v84, v210);
        __swift_storeEnumTagSinglePayload(v83, 0, 1, v210);
        v86 = v233;
        v85 = __na;
      }

      v100 = v214;
      v101 = v243;
      v148 = ((v83 + v85 + 7) & 0xFFFFFFFFFFFFFFF8);
      v149 = ((v84 + v85 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v148 = *v149;
      v148[1] = v149[1];
      v150 = (v148 + 19) & 0xFFFFFFFFFFFFFFF8;
      v151 = (v149 + 19) & 0xFFFFFFFFFFFFFFF8;
      v152 = *v151;
      *(v150 + 4) = *(v151 + 4);
      *v150 = v152;
      v153 = (((v214 | 7) + v20) & 0xFFFFFFFFFFFFFFF8);
      v154 = (((v243 | 7) + v20) & 0xFFFFFFFFFFFFFFF8);
      *v153 = *v154;
      v153[1] = v154[1];
      v155 = ((v153 + 23) & 0xFFFFFFFFFFFFFFF8);
      v156 = ((v154 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v155 = *v156;
      v155[1] = v156[1];
      v157 = ((v155 + 23) & 0xFFFFFFFFFFFFFFF8);
      v158 = ((v156 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v157 = *v158;
      v157[1] = v158[1];
      *((v214 & 0xFFFFFFFFFFFFFFF8) + v238) = 7;

      goto LABEL_130;
    case 8u:
      (*(v204 + 16))(v63, v64, v205);
      v126 = (((v214 | 7) + v235) & 0xFFFFFFFFFFFFFFF8);
      v127 = (((v243 | 7) + v235) & 0xFFFFFFFFFFFFFFF8);
      *v126 = *v127;
      v126[1] = v127[1];
      v128 = ((v126 + v23) & v198);
      v129 = ((v127 + v23) & v198);

      if (v25 == v227)
      {
        v130 = v25;
        v131 = v211;
        v86 = v233;
        v100 = v214;
        if (!__swift_getEnumTagSinglePayload(v129, v130, v211))
        {
          v133 = v217;
          v132 = v220;
          v134 = ((v129 + v217) & v220);
          v135 = v210;
          v136 = v240;
          goto LABEL_174;
        }

LABEL_187:
        memcpy(v128, v129, v20);
        v101 = v243;
        v58 = a1;
        goto LABEL_188;
      }

      v134 = ((v129 + v217) & v220);
      v86 = v233;
      if (v225 == v227)
      {
        v135 = v210;
        v100 = v214;
        if (v194 < 2)
        {
          v131 = v211;
LABEL_173:
          v136 = v240;
          v133 = v217;
          v132 = v220;
LABEL_174:
          (*(v136 + 16))(v128, v129, v131);
          if (__swift_getEnumTagSinglePayload(v134, 1, v135))
          {
            memcpy(((v128 + v133) & v132), v134, __na);
          }

          else
          {
            (*(v203 + 16))((v128 + v133) & v132, v134, v135);
            __swift_storeEnumTagSinglePayload((v128 + v133) & v132, 0, 1, v135);
          }

          v101 = v243;
          v58 = a1;
          v177 = ((v196 + ((v128 + v133) & v132)) & 0xFFFFFFFFFFFFFFF8);
          v178 = ((v134 + v196) & 0xFFFFFFFFFFFFFFF8);
          *v177 = *v178;
          v177[1] = v178[1];
          v179 = (v177 + 19) & 0xFFFFFFFFFFFFFFF8;
          v180 = (v178 + 19) & 0xFFFFFFFFFFFFFFF8;
          v181 = *v180;
          *(v179 + 4) = *(v180 + 4);
          *v179 = v181;

          v86 = v233;
          v182 = v192;
          if (v194)
          {
LABEL_189:
            v187 = (((v229 + v182 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
            v188 = ((v128 + v187 + 7) & 0xFFFFFFFFFFFFFFF8);
            v189 = *((v129 + v187 + 7) & 0xFFFFFFFFFFFFFFF8);
            *v188 = v189;
            *((v214 & 0xFFFFFFFFFFFFFFF8) + v238) = 8;
            v190 = v189;
LABEL_131:
            v102 = (((v101 | 7) + v86) & 0xFFFFFFFFFFFFFFF8);
            v103 = (((v100 | 7) + v86) & 0xFFFFFFFFFFFFFFF8);
            *v103 = *v102;
            v104 = (v103 + 15) & 0xFFFFFFFFFFFFFFF8;
            v105 = (v102 + 15) & 0xFFFFFFFFFFFFFFF8;
            v106 = *(v105 + 24);

            if (v106 < 0xFFFFFFFF)
            {
              v107 = *v105;
              v108 = *(v105 + 16);
              *(v104 + 32) = *(v105 + 32);
              *v104 = v107;
              *(v104 + 16) = v108;
            }

            else
            {
              *(v104 + 24) = v106;
              *(v104 + 32) = *(v105 + 32);
              (**(v106 - 8))(v104, v105, v106);
            }

            *(v104 + 40) = *(v105 + 40);
            v58[v202] = 1;
            return v58;
          }

LABEL_188:
          v182 = __na;
          goto LABEL_189;
        }

        v131 = v211;
        if (__swift_getEnumTagSinglePayload((v129 + v217) & v220, v194, v210) >= 2)
        {
          goto LABEL_187;
        }
      }

      else
      {
        v170 = *(((v134 + v196) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v170 >= 0xFFFFFFFF)
        {
          LODWORD(v170) = -1;
        }

        v131 = v211;
        v100 = v214;
        if ((v170 + 1) >= 2)
        {
          goto LABEL_187;
        }
      }

      v135 = v210;
      goto LABEL_173;
    case 9u:
      v76 = v238;
      v77 = v214 & 0xFFFFFFFFFFFFFFF8;
      (*(v68 + 16))(v63, v64, v61);
      v78 = 9;
LABEL_108:
      *(v77 + v76) = v78;
LABEL_128:
      v86 = v233;
      goto LABEL_129;
    default:
      v86 = v233;
      memcpy(v63, (v243 & 0xFFFFFFFFFFFFFFF8), v233);
LABEL_129:
      v100 = v214;
      v101 = v243;
LABEL_130:
      v58 = a1;
      goto LABEL_131;
  }
}

_BYTE *sub_1DCE919CC(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v225 = *(sub_1DD0DB04C() - 8);
  v238 = *(v225 + 64);
  v222 = sub_1DD0DC76C();
  v232 = *(v222 - 8);
  v221 = v232;
  v3 = *(v232 + 80);
  v220 = sub_1DD0DB1EC();
  v236 = *(v220 - 8);
  v219 = v236;
  v226 = *(v236 + 80) | v3;
  v224 = sub_1DD0DB4BC();
  v230 = *(v224 - 8);
  v246 = v230;
  v4 = *(v230 + 80) & 0xF8;
  v223 = sub_1DD0DB3EC();
  v5 = *(v223 - 8);
  v6 = *(v5 + 80);
  v7 = v4 | v6 | 7;
  v218 = sub_1DD0DD12C();
  v228 = *(v218 - 8);
  v217 = v228;
  v8 = *(v228 + 80);
  v216 = sub_1DD0DD08C();
  v9 = *(v216 - 8);
  v10 = v232;
  v233 = v9;
  v11 = (v226 | (v8 | *(v9 + 80))) & 0xF8 | v7;
  v12 = v238 + v11;
  v13 = *(v10 + 64);
  v227 = v13 + 7;
  if (((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v13)
  {
    v13 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v13 <= *(v236 + 64))
  {
    v13 = *(v236 + 64);
  }

  if (v13 <= 0x18)
  {
    v14 = 24;
  }

  else
  {
    v14 = v13;
  }

  v239 = *(v230 + 64) + v6;
  v214 = v5;
  v15 = *(v5 + 84);
  if (v15)
  {
    v16 = *(v5 + 64);
  }

  else
  {
    v16 = *(v5 + 64) + 1;
  }

  v17 = (v16 + 7 + (v239 & ~v6)) & 0xFFFFFFFFFFFFFFF8;
  v237 = (v17 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v237 <= v14)
  {
    v18 = v14;
  }

  else
  {
    v18 = (v17 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v19 = v17 + 31;
  v20 = ((((v19 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = v20 + 16;
  if (v20 + 16 > v18)
  {
    v18 = v20 + 16;
  }

  v215 = *(v228 + 64);
  v229 = v7 + 16;
  v22 = v4 | v6 | 7;
  v23 = (v7 + 16 + ((v215 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v7;
  v24 = *(v230 + 84);
  v25 = v15 - 1;
  if (!v15)
  {
    v25 = 0;
  }

  v213 = v25;
  if (v25 <= v24)
  {
    v25 = *(v230 + 84);
  }

  if (v25 <= 0x7FFFFFFE)
  {
    v25 = 2147483646;
  }

  v231 = v25;
  v26 = (v19 + v23) & 0xFFFFFFFFFFFFFFF8;
  v27 = v26 + 8;
  if (v26 + 8 <= v18)
  {
    v28 = v18;
  }

  else
  {
    v28 = v26 + 8;
  }

  if (*(v9 + 64) <= v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = *(v9 + 64);
  }

  v30 = a2;
  v31 = ((((v29 + (v12 & ~v11) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  v32 = *(*(a3 + 16) - 8);
  if (*(v32 + 64) <= 9uLL)
  {
    v33 = 9;
  }

  else
  {
    v33 = *(v32 + 64);
  }

  if (v33 + 1 > v31)
  {
    v31 = v33 + 1;
  }

  if (v31 <= 9)
  {
    v34 = 9;
  }

  else
  {
    v34 = v31;
  }

  v35 = a2[v34];
  v36 = v35 - 4;
  if (v35 < 4)
  {
    result = a1;
  }

  else
  {
    if (v34 <= 3)
    {
      v37 = v34;
    }

    else
    {
      v37 = 4;
    }

    result = a1;
    switch(v37)
    {
      case 1:
        v39 = *a2;
        goto LABEL_46;
      case 2:
        v39 = *a2;
        goto LABEL_46;
      case 3:
        v39 = *a2 | (a2[2] << 16);
        goto LABEL_46;
      case 4:
        v39 = *a2;
LABEL_46:
        if (v34 < 4)
        {
          v39 |= v36 << (8 * v34);
        }

        v35 = v39 + 4;
        break;
      default:
        break;
    }
  }

  v40 = ~v11;
  switch(v35)
  {
    case 0u:
      v41 = ~v22;
      v241 = ~v6;
      v197 = *(v5 + 64);
      v199 = v239 & ~v6;
      v201 = *(v9 + 64);
      v203 = v27;
      v205 = v21;
      v207 = v14;
      __n = v16;
      v211 = v16 + 7;
      v244 = v29 + 1;
      v42 = v29;
      v43 = v30;
      (*(v225 + 32))(result);
      result = a1;
      v44 = v42;
      v45 = (&a1[v12] & v40);
      v46 = (&v43[v12] & v40);
      v47 = v46[v42];
      v48 = v47 - 10;
      if (v47 >= 0xA)
      {
        if (v42 <= 3)
        {
          v49 = v42;
        }

        else
        {
          v49 = 4;
        }

        switch(v49)
        {
          case 1:
            v50 = *v46;
            goto LABEL_89;
          case 2:
            v50 = *v46;
            goto LABEL_89;
          case 3:
            v50 = *v46 | (*((&v43[v12] & v40) + 2) << 16);
            goto LABEL_89;
          case 4:
            v50 = *v46;
LABEL_89:
            if (v42 < 4)
            {
              v47 = (v50 | (v48 << (8 * v42))) + 10;
            }

            else
            {
              v47 = v50 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v47)
      {
        case 0u:
          v67 = &a1[v12] & v40;
          v68 = &v43[v12] & v40;
          v69 = v44;
          (*(v221 + 32))(v67, v68, v222);
          result = a1;
          v45 = v67;
          *(v67 + v69) = 0;
          goto LABEL_118;
        case 1u:
          v73 = &a1[v12] & v40;
          v95 = &v43[v12] & v40;
          v75 = v44;
          (*(v221 + 32))(v73, v95, v222);
          result = a1;
          v45 = v73;
          *((v227 + v73) & 0xFFFFFFFFFFFFFFF8) = *(&v46[v227] & 0xFFFFFFFFFFFFFFF8);
          v76 = 1;
          goto LABEL_113;
        case 2u:
          v83 = *v46;
          *((&a1[v12] & v40) + 0x10) = *((&v43[v12] & v40) + 0x10);
          *v45 = v83;
          v84 = 2;
          goto LABEL_117;
        case 3u:
          *v45 = *v46;
          v84 = 3;
          goto LABEL_117;
        case 4u:
          v73 = &a1[v12] & v40;
          v74 = &v43[v12] & v40;
          v75 = v44;
          (*(v219 + 32))(v73, v74, v220);
          result = a1;
          v45 = v73;
          v76 = 4;
          goto LABEL_113;
        case 5u:
          *v45 = *v46;
          v84 = 5;
LABEL_117:
          *(v45 + v42) = v84;
          goto LABEL_118;
        case 6u:
          v99 = v34;
          (*(v246 + 32))(v45, v46, v224);
          v100 = &a1[v12] & v40;
          v101 = ((v239 + v100) & v241);
          v102 = (&v46[v239] & v241);
          if (__swift_getEnumTagSinglePayload(v102, 1, v223))
          {
            memcpy(v101, v102, __n);
          }

          else
          {
            (*(v214 + 32))(v101, v102, v223);
            __swift_storeEnumTagSinglePayload(v101, 0, 1, v223);
          }

          v155 = ((v101 + v211) & 0xFFFFFFFFFFFFFFF8);
          v156 = ((v102 + v211) & 0xFFFFFFFFFFFFFFF8);
          *v155 = *v156;
          v157 = (v155 + 19) & 0xFFFFFFFFFFFFFFF8;
          v158 = (v156 + 19) & 0xFFFFFFFFFFFFFFF8;
          v159 = *v158;
          *(v157 + 4) = *(v158 + 4);
          *v157 = v159;
          v45 = v100;
          *(v100 + v42) = 6;
          v34 = v99;
          goto LABEL_148;
        case 7u:
          v87 = v34;
          (*(v246 + 32))(v45, v46, v224);
          v88 = &a1[v12] & v40;
          v89 = ((v239 + v88) & v241);
          v90 = (&v46[v239] & v241);
          if (__swift_getEnumTagSinglePayload(v90, 1, v223))
          {
            memcpy(v89, v90, __n);
          }

          else
          {
            (*(v214 + 32))(v89, v90, v223);
            __swift_storeEnumTagSinglePayload(v89, 0, 1, v223);
          }

          v137 = ((v89 + v211) & 0xFFFFFFFFFFFFFFF8);
          v138 = ((v90 + v211) & 0xFFFFFFFFFFFFFFF8);
          *v137 = *v138;
          v139 = (v137 + 19) & 0xFFFFFFFFFFFFFFF8;
          v140 = (v138 + 19) & 0xFFFFFFFFFFFFFFF8;
          v141 = *v140;
          *(v139 + 4) = *(v140 + 4);
          *v139 = v141;
          v45 = v88;
          v142 = ((v237 + v88 + 7) & 0xFFFFFFFFFFFFFFF8);
          v143 = (&v46[v237 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v142 = *v143;
          v144 = ((v142 + 23) & 0xFFFFFFFFFFFFFFF8);
          v145 = ((v143 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v144 = *v145;
          *((v144 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v145 + 23) & 0xFFFFFFFFFFFFFFF8);
          *(v88 + v42) = 7;
          v34 = v87;
LABEL_148:
          v97 = v244;
          goto LABEL_176;
        case 8u:
          v234 = v34;
          v107 = &a1[v12] & v40;
          (*(v217 + 32))(v45, v46, v218);
          v108 = ((v215 + v107 + 7) & 0xFFFFFFFFFFFFFFF8);
          v109 = (&v46[v215 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v108 = *v109;
          v110 = ((v108 + v229) & v41);
          v111 = ((v109 + v229) & v41);
          if (v24 != v231)
          {
            v112 = v239;
            v114 = ((v111 + v239) & v241);
            if (v213 == v231)
            {
              if (v15 >= 2 && __swift_getEnumTagSinglePayload((v111 + v239) & v241, v15, v223) >= 2)
              {
                goto LABEL_137;
              }
            }

            else
            {
              v165 = *(((v114 + v211) & 0xFFFFFFFFFFFFFFF8) + 8);
              if (v165 >= 0xFFFFFFFF)
              {
                LODWORD(v165) = -1;
              }

              if ((v165 + 1) >= 2)
              {
                goto LABEL_137;
              }
            }

            v115 = v246;
            v113 = v241;
            goto LABEL_156;
          }

          v112 = v239;
          if (__swift_getEnumTagSinglePayload((v109 + v229) & v41, v24, v224))
          {
LABEL_137:
            memcpy(v110, v111, v237);
            v97 = v244;
            v126 = v207;
            v125 = __n;
            v128 = v203;
            v127 = v205;
            v129 = v199;
            v130 = v201;
            v45 = v107;
LABEL_166:
            v174 = v125;
            goto LABEL_167;
          }

          v113 = v241;
          v114 = ((v111 + v239) & v241);
          v115 = v246;
LABEL_156:
          (*(v115 + 32))(v110, v111, v224);
          v166 = ((v110 + v112) & v113);
          if (__swift_getEnumTagSinglePayload(v114, 1, v223))
          {
            memcpy(v166, v114, __n);
          }

          else
          {
            (*(v214 + 32))(v166, v114, v223);
            __swift_storeEnumTagSinglePayload(v166, 0, 1, v223);
          }

          v125 = __n;
          v169 = ((v166 + v211) & 0xFFFFFFFFFFFFFFF8);
          v170 = ((v114 + v211) & 0xFFFFFFFFFFFFFFF8);
          *v169 = *v170;
          v171 = (v170 + 19) & 0xFFFFFFFFFFFFFFF8;
          v172 = *v171;
          v173 = (v169 + 19) & 0xFFFFFFFFFFFFFFF8;
          *(v173 + 4) = *(v171 + 4);
          *v173 = v172;
          v97 = v244;
          v127 = v205;
          v126 = v207;
          v130 = v201;
          v128 = v203;
          v129 = v199;
          v174 = v197;
          v45 = v107;
          if (!v15)
          {
            goto LABEL_166;
          }

LABEL_167:
          v175 = v129 + 7;
          *((v110 + ((((v175 + v174) & 0xFFFFFFFFFFFFFFF8) + 19) | 5) + 7) & 0xFFFFFFFFFFFFFFF8) = *((v111 + ((((v175 + v174) & 0xFFFFFFFFFFFFFFF8) + 19) | 5) + 7) & 0xFFFFFFFFFFFFFFF8);
          v176 = (((v175 + v125) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
          if (v176 <= v126)
          {
            v176 = v126;
          }

          if (v127 > v176)
          {
            v176 = v127;
          }

          if (v128 > v176)
          {
            v176 = v128;
          }

          if (v130 > v176)
          {
            v176 = v130;
          }

          *(v45 + v176) = 8;
          v34 = v234;
LABEL_176:
          result = a1;
LABEL_177:
          v177 = ((v45 + v97 + 7) & 0xFFFFFFFFFFFFFFF8);
          v178 = (&v46[v97 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v177 = *v178;
          v179 = (v177 + 15) & 0xFFFFFFFFFFFFFFF8;
          v180 = (v178 + 15) & 0xFFFFFFFFFFFFFFF8;
          v181 = *v180;
          v182 = *(v180 + 16);
          *(v179 + 32) = *(v180 + 32);
          *v179 = v181;
          *(v179 + 16) = v182;
          *(v179 + 40) = *(v180 + 40);
          result[v34] = 0;
          return result;
        case 9u:
          v73 = &a1[v12] & v40;
          v81 = &v43[v12] & v40;
          v75 = v44;
          (*(v233 + 32))(v73, v81, v216);
          result = a1;
          v45 = v73;
          v76 = 9;
LABEL_113:
          *(v73 + v75) = v76;
LABEL_118:
          v97 = v244;
          goto LABEL_177;
        default:
          memcpy((&a1[v12] & v40), (&v43[v12] & v40), v244);
          result = a1;
          v45 = (&a1[v12] & v40);
          v97 = v244;
          goto LABEL_177;
      }

    case 1u:
      v56 = ~v22;
      v242 = ~v6;
      v198 = *(v5 + 64);
      v200 = v239 & ~v6;
      v202 = *(v9 + 64);
      v204 = v27;
      v206 = v21;
      v208 = v14;
      __na = v16;
      v212 = v16 + 7;
      v245 = v29 + 1;
      v57 = v29;
      v58 = v30;
      (*(v225 + 32))(result);
      result = a1;
      v59 = v57;
      v60 = (&a1[v12] & v40);
      v61 = (&v58[v12] & v40);
      v62 = v61[v57];
      v63 = v62 - 10;
      if (v62 >= 0xA)
      {
        if (v57 <= 3)
        {
          v64 = v57;
        }

        else
        {
          v64 = 4;
        }

        switch(v64)
        {
          case 1:
            v65 = *v61;
            goto LABEL_95;
          case 2:
            v65 = *v61;
            goto LABEL_95;
          case 3:
            v65 = *v61 | (*((&v58[v12] & v40) + 2) << 16);
            goto LABEL_95;
          case 4:
            v65 = *v61;
LABEL_95:
            if (v57 < 4)
            {
              v62 = (v65 | (v63 << (8 * v57))) + 10;
            }

            else
            {
              v62 = v65 + 10;
            }

            break;
          default:
            goto LABEL_98;
        }
      }

      break;
    case 2u:
      v51 = a2[v33];
      v52 = v51 - 2;
      if (v51 >= 2)
      {
        if (v33 <= 3)
        {
          v53 = v33;
        }

        else
        {
          v53 = 4;
        }

        switch(v53)
        {
          case 1:
            v54 = *a2;
            goto LABEL_77;
          case 2:
            v54 = *a2;
            goto LABEL_77;
          case 3:
            v54 = *a2 | (a2[2] << 16);
            goto LABEL_77;
          case 4:
            v54 = *a2;
LABEL_77:
            if (v33 < 4)
            {
              v51 = (v54 | (v52 << (8 * v33))) + 2;
            }

            else
            {
              v51 = v54 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v51 == 1)
      {
        *result = *a2;
        result[8] = a2[8];
        result[v33] = 1;
      }

      else
      {
        v66 = result;
        if (v51)
        {
          memcpy(result, a2, v33 + 1);
          result = v66;
        }

        else
        {
          (*(v32 + 32))();
          result = v66;
          v66[v33] = 0;
        }
      }

      v55 = 2;
      goto LABEL_192;
    case 3u:
      *result = *a2;
      result[8] = a2[8];
      v55 = 3;
      goto LABEL_192;
    default:

      return memcpy(result, a2, v34 + 1);
  }

LABEL_98:
  switch(v62)
  {
    case 0u:
      v70 = &a1[v12] & v40;
      v71 = &v58[v12] & v40;
      v72 = v59;
      (*(v221 + 32))(v70, v71, v222);
      result = a1;
      v60 = v70;
      *(v70 + v72) = 0;
      goto LABEL_121;
    case 1u:
      v77 = &a1[v12] & v40;
      v96 = &v58[v12] & v40;
      v79 = v59;
      (*(v221 + 32))(v77, v96, v222);
      result = a1;
      v60 = v77;
      *((v227 + v77) & 0xFFFFFFFFFFFFFFF8) = *(&v61[v227] & 0xFFFFFFFFFFFFFFF8);
      v80 = 1;
      goto LABEL_115;
    case 2u:
      v85 = *v61;
      *((&a1[v12] & v40) + 0x10) = *((&v58[v12] & v40) + 0x10);
      *v60 = v85;
      v86 = 2;
      goto LABEL_120;
    case 3u:
      *v60 = *v61;
      v86 = 3;
      goto LABEL_120;
    case 4u:
      v77 = &a1[v12] & v40;
      v78 = &v58[v12] & v40;
      v79 = v59;
      (*(v219 + 32))(v77, v78, v220);
      result = a1;
      v60 = v77;
      v80 = 4;
      goto LABEL_115;
    case 5u:
      *v60 = *v61;
      v86 = 5;
LABEL_120:
      *(v60 + v57) = v86;
      goto LABEL_121;
    case 6u:
      v103 = v34;
      (*(v246 + 32))(v60, v61, v224);
      v104 = &a1[v12] & v40;
      v105 = ((v239 + v104) & v242);
      v106 = (&v61[v239] & v242);
      if (__swift_getEnumTagSinglePayload(v106, 1, v223))
      {
        memcpy(v105, v106, __na);
      }

      else
      {
        (*(v214 + 32))(v105, v106, v223);
        __swift_storeEnumTagSinglePayload(v105, 0, 1, v223);
      }

      v160 = ((v105 + v212) & 0xFFFFFFFFFFFFFFF8);
      v161 = ((v106 + v212) & 0xFFFFFFFFFFFFFFF8);
      *v160 = *v161;
      v162 = (v160 + 19) & 0xFFFFFFFFFFFFFFF8;
      v163 = (v161 + 19) & 0xFFFFFFFFFFFFFFF8;
      v164 = *v163;
      *(v162 + 4) = *(v163 + 4);
      *v162 = v164;
      v60 = v104;
      *(v104 + v57) = 6;
      v34 = v103;
      goto LABEL_151;
    case 7u:
      v91 = v34;
      (*(v246 + 32))(v60, v61, v224);
      v92 = &a1[v12] & v40;
      v93 = ((v239 + v92) & v242);
      v94 = (&v61[v239] & v242);
      if (__swift_getEnumTagSinglePayload(v94, 1, v223))
      {
        memcpy(v93, v94, __na);
      }

      else
      {
        (*(v214 + 32))(v93, v94, v223);
        __swift_storeEnumTagSinglePayload(v93, 0, 1, v223);
      }

      v146 = ((v93 + v212) & 0xFFFFFFFFFFFFFFF8);
      v147 = ((v94 + v212) & 0xFFFFFFFFFFFFFFF8);
      *v146 = *v147;
      v148 = (v146 + 19) & 0xFFFFFFFFFFFFFFF8;
      v149 = (v147 + 19) & 0xFFFFFFFFFFFFFFF8;
      v150 = *v149;
      *(v148 + 4) = *(v149 + 4);
      *v148 = v150;
      v60 = v92;
      v151 = ((v237 + v92 + 7) & 0xFFFFFFFFFFFFFFF8);
      v152 = (&v61[v237 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v151 = *v152;
      v153 = ((v151 + 23) & 0xFFFFFFFFFFFFFFF8);
      v154 = ((v152 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v153 = *v154;
      *((v153 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v154 + 23) & 0xFFFFFFFFFFFFFFF8);
      *(v92 + v57) = 7;
      v34 = v91;
LABEL_151:
      v98 = v245;
      goto LABEL_190;
    case 8u:
      v235 = v34;
      v116 = &a1[v12] & v40;
      (*(v217 + 32))(v60, v61, v218);
      v117 = ((v215 + v116 + 7) & 0xFFFFFFFFFFFFFFF8);
      v118 = (&v61[v215 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v117 = *v118;
      v119 = ((v117 + v229) & v56);
      v120 = ((v118 + v229) & v56);
      if (v24 == v231)
      {
        v121 = v239;
        if (!__swift_getEnumTagSinglePayload((v118 + v229) & v56, v24, v224))
        {
          v122 = v242;
          v123 = ((v120 + v239) & v242);
          v124 = v246;
          goto LABEL_162;
        }

LABEL_141:
        memcpy(v119, v120, v237);
        v98 = v245;
        v132 = v208;
        v131 = __na;
        v134 = v204;
        v133 = v206;
        v135 = v200;
        v136 = v202;
        v60 = v116;
        goto LABEL_180;
      }

      v121 = v239;
      v123 = ((v120 + v239) & v242);
      if (v213 == v231)
      {
        if (v15 >= 2 && __swift_getEnumTagSinglePayload((v120 + v239) & v242, v15, v223) >= 2)
        {
          goto LABEL_141;
        }
      }

      else
      {
        v167 = *(((v123 + v212) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v167 >= 0xFFFFFFFF)
        {
          LODWORD(v167) = -1;
        }

        if ((v167 + 1) >= 2)
        {
          goto LABEL_141;
        }
      }

      v124 = v246;
      v122 = v242;
LABEL_162:
      (*(v124 + 32))(v119, v120, v224);
      v168 = ((v119 + v121) & v122);
      if (__swift_getEnumTagSinglePayload(v123, 1, v223))
      {
        memcpy(v168, v123, __na);
      }

      else
      {
        (*(v214 + 32))(v168, v123, v223);
        __swift_storeEnumTagSinglePayload(v168, 0, 1, v223);
      }

      v131 = __na;
      v183 = ((v168 + v212) & 0xFFFFFFFFFFFFFFF8);
      v184 = ((v123 + v212) & 0xFFFFFFFFFFFFFFF8);
      *v183 = *v184;
      v185 = (v184 + 19) & 0xFFFFFFFFFFFFFFF8;
      v186 = *v185;
      v187 = (v183 + 19) & 0xFFFFFFFFFFFFFFF8;
      *(v187 + 4) = *(v185 + 4);
      *v187 = v186;
      v98 = v245;
      v133 = v206;
      v132 = v208;
      v136 = v202;
      v134 = v204;
      v135 = v200;
      v188 = v198;
      v60 = v116;
      if (v15)
      {
LABEL_181:
        v189 = v135 + 7;
        *((v119 + ((((v189 + v188) & 0xFFFFFFFFFFFFFFF8) + 19) | 5) + 7) & 0xFFFFFFFFFFFFFFF8) = *((v120 + ((((v189 + v188) & 0xFFFFFFFFFFFFFFF8) + 19) | 5) + 7) & 0xFFFFFFFFFFFFFFF8);
        v190 = (((v189 + v131) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
        if (v190 <= v132)
        {
          v190 = v132;
        }

        if (v133 > v190)
        {
          v190 = v133;
        }

        if (v134 > v190)
        {
          v190 = v134;
        }

        if (v136 > v190)
        {
          v190 = v136;
        }

        *(v60 + v190) = 8;
        v34 = v235;
LABEL_190:
        result = a1;
LABEL_191:
        v191 = ((v60 + v98 + 7) & 0xFFFFFFFFFFFFFFF8);
        v192 = (&v61[v98 + 7] & 0xFFFFFFFFFFFFFFF8);
        *v191 = *v192;
        v193 = (v191 + 15) & 0xFFFFFFFFFFFFFFF8;
        v194 = (v192 + 15) & 0xFFFFFFFFFFFFFFF8;
        v195 = *v194;
        v196 = *(v194 + 16);
        *(v193 + 32) = *(v194 + 32);
        *v193 = v195;
        *(v193 + 16) = v196;
        *(v193 + 40) = *(v194 + 40);
        v55 = 1;
LABEL_192:
        result[v34] = v55;
        return result;
      }

LABEL_180:
      v188 = v131;
      goto LABEL_181;
    case 9u:
      v77 = &a1[v12] & v40;
      v82 = &v58[v12] & v40;
      v79 = v59;
      (*(v233 + 32))(v77, v82, v216);
      result = a1;
      v60 = v77;
      v80 = 9;
LABEL_115:
      *(v77 + v79) = v80;
LABEL_121:
      v98 = v245;
      goto LABEL_191;
    default:
      memcpy((&a1[v12] & v40), (&v58[v12] & v40), v245);
      result = a1;
      v60 = (&a1[v12] & v40);
      v98 = v245;
      goto LABEL_191;
  }
}

unsigned __int8 *sub_1DCE92E78(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1;
  if (a1 == a2)
  {
    return v3;
  }

  v4 = sub_1DD0DB04C();
  v220 = *(v4 - 8);
  v221 = v4;
  v231 = *(v220 + 64);
  v217 = sub_1DD0DC76C();
  v228 = *(v217 - 8);
  v5 = *(v228 + 80);
  v214 = sub_1DD0DB1EC();
  v229 = *(v214 - 8);
  v213 = v229;
  v222 = *(v229 + 80) | v5;
  v218 = sub_1DD0DB4BC();
  v226 = *(v218 - 8);
  v236 = v3;
  v237 = v226;
  v6 = *(v226 + 80) & 0xF8;
  v219 = sub_1DD0DB3EC();
  v7 = *(v219 - 8);
  v8 = *(v7 + 80);
  v9 = v6 | v8 | 7;
  v212 = sub_1DD0DD12C();
  v224 = *(v212 - 8);
  v211 = v224;
  v10 = *(v224 + 80);
  v11 = sub_1DD0DD08C();
  v12 = v9;
  v210 = v11;
  v13 = v11;
  v14 = v8;
  v15 = *(v13 - 8);
  v209 = v15;
  v16 = (v222 | (v10 | *(v15 + 80))) & 0xF8 | v9;
  v17 = v231 + v16;
  v18 = *(v228 + 64);
  v208 = v18 + 7;
  if (((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v18)
  {
    v18 = ((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v18 <= *(v229 + 64))
  {
    v18 = *(v229 + 64);
  }

  if (v18 <= 0x18)
  {
    v19 = 24;
  }

  else
  {
    v19 = v18;
  }

  v232 = *(v226 + 64) + v8;
  v203 = v7;
  v20 = *(v7 + 84);
  v21 = *(v7 + 64);
  v202 = v21;
  if (!v20)
  {
    ++v21;
  }

  v223 = v21;
  v22 = v21 + 7;
  v215 = v232 & ~v8;
  v23 = (v21 + 7 + v215) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  v201 = v19;
  if (v24 <= v19)
  {
    v25 = v19;
  }

  else
  {
    v25 = (v23 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v26 = v23 + 31;
  v200 = (((((v26 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v200 > v25)
  {
    v25 = (((((v26 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v3 = v236;
  v205 = *(v224 + 64);
  v206 = v9 + 16;
  v27 = *(v226 + 84);
  v216 = *(v7 + 84);
  v28 = v20 != 0;
  v29 = v20 - 1;
  if (!v28)
  {
    v29 = 0;
  }

  v197 = v29;
  if (v29 <= v27)
  {
    v29 = *(v226 + 84);
  }

  if (v29 <= 0x7FFFFFFE)
  {
    v29 = 2147483646;
  }

  v207 = v29;
  v30 = ((v26 + ((v9 + 16 + ((v205 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v199 = v30;
  if (v30 <= v25)
  {
    v30 = v25;
  }

  v31 = *(v15 + 64);
  if (v31 <= v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = *(v15 + 64);
  }

  v33 = *(a3 + 16);
  v227 = *(v33 - 8);
  if (*(v227 + 64) <= 9uLL)
  {
    v34 = 9;
  }

  else
  {
    v34 = *(v227 + 64);
  }

  if (v34 + 1 > ((((v32 + (v17 & ~v16) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41)
  {
    v35 = v34 + 1;
  }

  else
  {
    v35 = ((((v32 + (v17 & ~v16) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  }

  if (v35 <= 9)
  {
    v36 = 9;
  }

  else
  {
    v36 = v35;
  }

  v37 = v236[v36];
  v38 = v37 - 4;
  if (v37 >= 4)
  {
    if (v36 <= 3)
    {
      v39 = v36;
    }

    else
    {
      v39 = 4;
    }

    switch(v39)
    {
      case 1:
        v40 = *v236;
        goto LABEL_45;
      case 2:
        v40 = *v236;
        goto LABEL_45;
      case 3:
        v40 = *v236 | (v236[2] << 16);
        goto LABEL_45;
      case 4:
        v40 = *v236;
LABEL_45:
        if (v36 < 4)
        {
          v40 |= v38 << (8 * v36);
        }

        v37 = v40 + 4;
        break;
      default:
        break;
    }
  }

  v198 = v31;
  v234 = v32 + 1;
  v41 = ~v16;
  v230 = ~v14;
  v204 = ~v12;
  v225 = 8 * v34;
  switch(v37)
  {
    case 0u:
      (*(v220 + 8))(v236, v221);
      v42 = (&v236[v17] & v41);
      v43 = v42[v32];
      v44 = v43 - 10;
      if (v43 >= 0xA)
      {
        if (v32 <= 3)
        {
          v45 = v32;
        }

        else
        {
          v45 = 4;
        }

        switch(v45)
        {
          case 1:
            v46 = *v42;
            goto LABEL_82;
          case 2:
            v46 = *v42;
            goto LABEL_82;
          case 3:
            v46 = *v42 | (*((&v236[v17] & v41) + 2) << 16);
            goto LABEL_82;
          case 4:
            v46 = *v42;
LABEL_82:
            if (v32 < 4)
            {
              v43 = (v46 | (v44 << (8 * v32))) + 10;
            }

            else
            {
              v43 = v46 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v43)
      {
        case 0u:
          goto LABEL_91;
        case 1u:
          goto LABEL_100;
        case 2u:
          goto LABEL_95;
        case 3u:
          goto LABEL_96;
        case 4u:
          goto LABEL_92;
        case 5u:
          goto LABEL_101;
        case 6u:
          goto LABEL_102;
        case 7u:
          goto LABEL_97;
        case 8u:
          goto LABEL_105;
        case 9u:
          goto LABEL_93;
        default:
          goto LABEL_121;
      }

      goto LABEL_121;
    case 1u:
      (*(v220 + 8))(v236, v221);
      v42 = (&v236[v17] & v41);
      v51 = v42[v32];
      v52 = v51 - 10;
      if (v51 >= 0xA)
      {
        if (v32 <= 3)
        {
          v53 = v32;
        }

        else
        {
          v53 = 4;
        }

        switch(v53)
        {
          case 1:
            v54 = *v42;
            goto LABEL_87;
          case 2:
            v54 = *v42;
            goto LABEL_87;
          case 3:
            v54 = *v42 | (*((&v236[v17] & v41) + 2) << 16);
            goto LABEL_87;
          case 4:
            v54 = *v42;
LABEL_87:
            if (v32 < 4)
            {
              v51 = (v54 | (v52 << (8 * v32))) + 10;
            }

            else
            {
              v51 = v54 + 10;
            }

            break;
          default:
            goto LABEL_90;
        }
      }

      break;
    case 2u:
      v47 = v236[v34];
      v48 = v47 - 2;
      if (v47 >= 2)
      {
        if (v34 <= 3)
        {
          v49 = v34;
        }

        else
        {
          v49 = 4;
        }

        switch(v49)
        {
          case 1:
            v50 = *v236;
            goto LABEL_74;
          case 2:
            v50 = *v236;
            goto LABEL_74;
          case 3:
            v50 = *v236 | (v236[2] << 16);
            goto LABEL_74;
          case 4:
            v50 = *v236;
LABEL_74:
            if (v34 < 4)
            {
              v47 = (v50 | (v48 << v225)) + 2;
            }

            else
            {
              v47 = v50 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v47 == 1)
      {
        goto LABEL_80;
      }

      if (!v47)
      {
        (*(v227 + 8))(v236, v33);
      }

      goto LABEL_123;
    case 3u:
LABEL_80:

      goto LABEL_123;
    default:
      goto LABEL_123;
  }

LABEL_90:
  switch(v51)
  {
    case 0u:
LABEL_91:
      v56 = v228;
      v55 = v217;
      goto LABEL_94;
    case 1u:
LABEL_100:
      (*(v228 + 8))(v42, v217);

      goto LABEL_121;
    case 2u:
LABEL_95:

      goto LABEL_104;
    case 3u:
LABEL_96:
      swift_unknownObjectRelease();
      goto LABEL_121;
    case 4u:
LABEL_92:
      v56 = v213;
      v55 = v214;
      goto LABEL_94;
    case 5u:
LABEL_101:
      v57 = *v42;
      goto LABEL_120;
    case 6u:
LABEL_102:
      (*(v237 + 8))(v42, v218);
      if (!__swift_getEnumTagSinglePayload(&v42[v232] & v230, 1, v219))
      {
        (*(v203 + 8))(&v42[v232] & v230, v219);
      }

LABEL_104:

      goto LABEL_121;
    case 7u:
LABEL_97:
      (*(v237 + 8))(v42, v218);
      if (!__swift_getEnumTagSinglePayload(&v42[v232] & v230, 1, v219))
      {
        (*(v203 + 8))(&v42[v232] & v230, v219);
      }

      goto LABEL_121;
    case 8u:
LABEL_105:
      v194 = v22;
      (*(v211 + 8))(v42, v212);
      v58 = &v42[v205 + 7] & 0xFFFFFFFFFFFFFFF8;

      v59 = (v206 + v58) & v204;
      if (v27 == v207)
      {
        v60 = (v206 + v58) & v204;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v60, v27, v218);
        v59 = v60;
        v22 = v194;
        if (EnumTagSinglePayload)
        {
          goto LABEL_119;
        }

        v193 = (v232 + v59) & v230;
        goto LABEL_116;
      }

      v62 = (v232 + v59) & v230;
      v22 = v194;
      if (v197 == v207)
      {
        v193 = (v232 + v59) & v230;
        if (v216 >= 2)
        {
          v191 = v59;
          v63 = __swift_getEnumTagSinglePayload(v62, v216, v219);
          v59 = v191;
          if (v63 >= 2)
          {
            goto LABEL_119;
          }
        }

        goto LABEL_116;
      }

      v64 = *(((v194 + v62) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v64 >= 0xFFFFFFFF)
      {
        LODWORD(v64) = -1;
      }

      if ((v64 + 1) < 2)
      {
        v193 = (v232 + v59) & v230;
LABEL_116:
        v192 = v59;
        (*(v237 + 8))(v59, v218);
        if (!__swift_getEnumTagSinglePayload(v193, 1, v219))
        {
          (*(v203 + 8))(v193, v219);
        }

        v59 = v192;
      }

LABEL_119:
      v57 = *((v24 + v59 + 7) & 0xFFFFFFFFFFFFFFF8);
LABEL_120:

LABEL_121:
      v65 = &v42[v234 + 7];
      v66 = v22;
      v67 = (v65 & 0xFFFFFFFFFFFFFFF8) + 15;

      v68 = (v67 & 0xFFFFFFFFFFFFFFF8);
      v22 = v66;
      if (v68[3] >= 0xFFFFFFFFuLL)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v68);
      }

LABEL_123:
      v69 = a2[v36];
      v70 = v69 - 4;
      if (v69 >= 4)
      {
        if (v36 <= 3)
        {
          v71 = v36;
        }

        else
        {
          v71 = 4;
        }

        switch(v71)
        {
          case 1:
            v72 = *a2;
            goto LABEL_132;
          case 2:
            v72 = *a2;
            goto LABEL_132;
          case 3:
            v72 = *a2 | (a2[2] << 16);
            goto LABEL_132;
          case 4:
            v72 = *a2;
LABEL_132:
            if (v36 < 4)
            {
              v69 = (v72 | (v70 << (8 * v36))) + 4;
            }

            else
            {
              v69 = v72 + 4;
            }

            break;
          default:
            goto LABEL_135;
        }
      }

      break;
    case 9u:
LABEL_93:
      v56 = v209;
      v55 = v210;
LABEL_94:
      (*(v56 + 8))(v42, v55);
      goto LABEL_121;
    default:
      goto LABEL_121;
  }

LABEL_135:
  switch(v69)
  {
    case 0u:
      (*(v220 + 32))(v236);
      v73 = (&v236[v17] & v41);
      v74 = (&a2[v17] & v41);
      v75 = v74[v32];
      v76 = v75 - 10;
      if (v75 >= 0xA)
      {
        if (v32 <= 3)
        {
          v77 = v32;
        }

        else
        {
          v77 = 4;
        }

        switch(v77)
        {
          case 1:
            v78 = *v74;
            goto LABEL_175;
          case 2:
            v78 = *v74;
            goto LABEL_175;
          case 3:
            v78 = *(&a2[v17] & v41) | (*((&a2[v17] & v41) + 2) << 16);
            goto LABEL_175;
          case 4:
            v78 = *v74;
LABEL_175:
            if (v32 < 4)
            {
              v75 = (v78 | (v76 << (8 * v32))) + 10;
            }

            else
            {
              v75 = v78 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v75)
      {
        case 0u:
          (*(v228 + 32))(&v236[v17] & v41, v74, v217);
          *(v73 + v32) = 0;
          goto LABEL_229;
        case 1u:
          (*(v228 + 32))(&v236[v17] & v41, v74, v217);
          *((v73 + v208) & 0xFFFFFFFFFFFFFFF8) = *(&v74[v208] & 0xFFFFFFFFFFFFFFF8);
          v91 = 1;
          goto LABEL_228;
        case 2u:
          v93 = *v74;
          *((&v236[v17] & v41) + 0x10) = *((&a2[v17] & v41) + 0x10);
          *v73 = v93;
          v91 = 2;
          goto LABEL_228;
        case 3u:
          *v73 = *v74;
          v91 = 3;
          goto LABEL_228;
        case 4u:
          (*(v213 + 32))(&v236[v17] & v41, v74, v214);
          v91 = 4;
          goto LABEL_228;
        case 5u:
          *v73 = *v74;
          v91 = 5;
          goto LABEL_228;
        case 6u:
          (*(v237 + 32))(&v236[v17] & v41, v74, v218);
          v99 = ((v73 + v232) & v230);
          v100 = (&v74[v232] & v230);
          if (__swift_getEnumTagSinglePayload(v100, 1, v219))
          {
            memcpy(v99, v100, v223);
          }

          else
          {
            (*(v203 + 32))(v99, v100, v219);
            __swift_storeEnumTagSinglePayload(v99, 0, 1, v219);
          }

          v147 = ((v99 + v22) & 0xFFFFFFFFFFFFFFF8);
          v148 = ((v100 + v22) & 0xFFFFFFFFFFFFFFF8);
          *v147 = *v148;
          v149 = (v147 + 19) & 0xFFFFFFFFFFFFFFF8;
          v150 = (v148 + 19) & 0xFFFFFFFFFFFFFFF8;
          v151 = *v150;
          *(v149 + 4) = *(v150 + 4);
          *v149 = v151;
          v91 = 6;
          goto LABEL_228;
        case 7u:
          (*(v237 + 32))(&v236[v17] & v41, v74, v218);
          v95 = ((v73 + v232) & v230);
          v96 = (&v74[v232] & v230);
          if (__swift_getEnumTagSinglePayload(v96, 1, v219))
          {
            memcpy(v95, v96, v223);
          }

          else
          {
            (*(v203 + 32))(v95, v96, v219);
            __swift_storeEnumTagSinglePayload(v95, 0, 1, v219);
          }

          v129 = ((v95 + v22) & 0xFFFFFFFFFFFFFFF8);
          v130 = ((v96 + v22) & 0xFFFFFFFFFFFFFFF8);
          *v129 = *v130;
          v131 = (v129 + 19) & 0xFFFFFFFFFFFFFFF8;
          v132 = (v130 + 19) & 0xFFFFFFFFFFFFFFF8;
          v133 = *v132;
          *(v131 + 4) = *(v132 + 4);
          *v131 = v133;
          v134 = ((v73 + v24 + 7) & 0xFFFFFFFFFFFFFFF8);
          v135 = (&v74[v24 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v134 = *v135;
          v136 = ((v134 + 23) & 0xFFFFFFFFFFFFFFF8);
          v137 = ((v135 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v136 = *v137;
          *((v136 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v137 + 23) & 0xFFFFFFFFFFFFFFF8);
          v91 = 7;
          goto LABEL_228;
        case 8u:
          v195 = v22;
          (*(v211 + 32))(&v236[v17] & v41, v74, v212);
          v103 = ((v73 + v205 + 7) & 0xFFFFFFFFFFFFFFF8);
          v104 = (&v74[v205 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v103 = *v104;
          v105 = ((v103 + v206) & v204);
          v106 = ((v104 + v206) & v204);
          if (v27 == v207)
          {
            v107 = __swift_getEnumTagSinglePayload(v106, v27, v218);
            v109 = v230;
            v108 = v232;
            if (!v107)
            {
              v110 = ((v106 + v232) & v230);
              goto LABEL_239;
            }

LABEL_217:
            memcpy(v105, v106, v24);
            v119 = v223;
            v121 = v200;
            v120 = v201;
            v123 = v198;
            v122 = v199;
LABEL_248:
            v175 = v119;
            goto LABEL_249;
          }

          v109 = v230;
          v108 = v232;
          v110 = ((v106 + v232) & v230);
          if (v197 != v207)
          {
            v169 = *(((v110 + v195) & 0xFFFFFFFFFFFFFFF8) + 8);
            if (v169 >= 0xFFFFFFFF)
            {
              LODWORD(v169) = -1;
            }

            if ((v169 + 1) < 2)
            {
              goto LABEL_239;
            }

            goto LABEL_217;
          }

          if (v216 >= 2 && __swift_getEnumTagSinglePayload((v106 + v232) & v230, v216, v219) >= 2)
          {
            goto LABEL_217;
          }

LABEL_239:
          (*(v237 + 32))(v105, v106, v218);
          v170 = v105;
          v171 = ((v105 + v108) & v109);
          if (__swift_getEnumTagSinglePayload(v110, 1, v219))
          {
            memcpy(v171, v110, v223);
          }

          else
          {
            (*(v203 + 32))(v171, v110, v219);
            __swift_storeEnumTagSinglePayload(v171, 0, 1, v219);
          }

          v120 = v201;
          v175 = v202;
          v176 = ((v171 + v195) & 0xFFFFFFFFFFFFFFF8);
          v177 = ((v110 + v195) & 0xFFFFFFFFFFFFFFF8);
          *v176 = *v177;
          v178 = (v177 + 19) & 0xFFFFFFFFFFFFFFF8;
          v179 = *v178;
          v180 = (v176 + 19) & 0xFFFFFFFFFFFFFFF8;
          *(v180 + 4) = *(v178 + 4);
          *v180 = v179;
          v119 = v223;
          v122 = v199;
          v121 = v200;
          v123 = v198;
          v105 = v170;
          if (!v216)
          {
            goto LABEL_248;
          }

LABEL_249:
          v181 = (((v215 + 7 + v175) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
          *((v105 + v181 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v106 + v181 + 7) & 0xFFFFFFFFFFFFFFF8);
          v182 = (((v215 + 7 + v119) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
          if (v182 <= v120)
          {
            v182 = v120;
          }

          if (v121 > v182)
          {
            v182 = v121;
          }

          if (v122 > v182)
          {
            v182 = v122;
          }

          if (v123 > v182)
          {
            v182 = v123;
          }

          *(v73 + v182) = 8;
LABEL_229:
          v152 = ((v73 + v234 + 7) & 0xFFFFFFFFFFFFFFF8);
          v153 = (&v74[v234 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v152 = *v153;
          v154 = (v152 + 15) & 0xFFFFFFFFFFFFFFF8;
          v155 = (v153 + 15) & 0xFFFFFFFFFFFFFFF8;
          v156 = *v155;
          v157 = *(v155 + 16);
          *(v154 + 32) = *(v155 + 32);
          *v154 = v156;
          *(v154 + 16) = v157;
          *(v154 + 40) = *(v155 + 40);
          v236[v36] = 0;
          return v3;
        case 9u:
          (*(v209 + 32))(&v236[v17] & v41, v74, v210);
          v91 = 9;
LABEL_228:
          *(v73 + v32) = v91;
          goto LABEL_229;
        default:
          memcpy((&v236[v17] & v41), v74, v234);
          goto LABEL_229;
      }

    case 1u:
      (*(v220 + 32))(v236);
      v84 = (&v236[v17] & v41);
      v85 = (&a2[v17] & v41);
      v86 = v85[v32];
      v87 = v86 - 10;
      if (v86 >= 0xA)
      {
        if (v32 <= 3)
        {
          v88 = v32;
        }

        else
        {
          v88 = 4;
        }

        switch(v88)
        {
          case 1:
            v89 = *v85;
            goto LABEL_181;
          case 2:
            v89 = *v85;
            goto LABEL_181;
          case 3:
            v89 = *(&a2[v17] & v41) | (*((&a2[v17] & v41) + 2) << 16);
            goto LABEL_181;
          case 4:
            v89 = *v85;
LABEL_181:
            if (v32 < 4)
            {
              v86 = (v89 | (v87 << (8 * v32))) + 10;
            }

            else
            {
              v86 = v89 + 10;
            }

            break;
          default:
            goto LABEL_184;
        }
      }

      break;
    case 2u:
      v79 = a2[v34];
      v80 = v79 - 2;
      if (v79 >= 2)
      {
        if (v34 <= 3)
        {
          v81 = v34;
        }

        else
        {
          v81 = 4;
        }

        switch(v81)
        {
          case 1:
            v82 = *a2;
            goto LABEL_163;
          case 2:
            v82 = *a2;
            goto LABEL_163;
          case 3:
            v82 = *a2 | (a2[2] << 16);
            goto LABEL_163;
          case 4:
            v82 = *a2;
LABEL_163:
            if (v34 < 4)
            {
              v79 = (v82 | (v80 << v225)) + 2;
            }

            else
            {
              v79 = v82 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v79 == 1)
      {
        *v236 = *a2;
        v236[8] = a2[8];
        v236[v34] = 1;
      }

      else if (v79)
      {
        memcpy(v236, a2, v34 + 1);
      }

      else
      {
        (*(v227 + 32))(v236);
        v236[v34] = 0;
      }

      v83 = 2;
      goto LABEL_234;
    case 3u:
      *v236 = *a2;
      v236[8] = a2[8];
      v83 = 3;
      goto LABEL_234;
    default:

      return memcpy(v236, a2, v36 + 1);
  }

LABEL_184:
  switch(v86)
  {
    case 0u:
      (*(v228 + 32))(&v236[v17] & v41, v85, v217);
      *(v84 + v32) = 0;
      goto LABEL_233;
    case 1u:
      (*(v228 + 32))(&v236[v17] & v41, v85, v217);
      *((v84 + v208) & 0xFFFFFFFFFFFFFFF8) = *(&v85[v208] & 0xFFFFFFFFFFFFFFF8);
      v92 = 1;
      goto LABEL_232;
    case 2u:
      v94 = *v85;
      *((&v236[v17] & v41) + 0x10) = *((&a2[v17] & v41) + 0x10);
      *v84 = v94;
      v92 = 2;
      goto LABEL_232;
    case 3u:
      *v84 = *v85;
      v92 = 3;
      goto LABEL_232;
    case 4u:
      (*(v213 + 32))(&v236[v17] & v41, v85, v214);
      v92 = 4;
      goto LABEL_232;
    case 5u:
      *v84 = *v85;
      v92 = 5;
      goto LABEL_232;
    case 6u:
      (*(v237 + 32))(&v236[v17] & v41, v85, v218);
      v101 = ((v84 + v232) & v230);
      v102 = (&v85[v232] & v230);
      if (__swift_getEnumTagSinglePayload(v102, 1, v219))
      {
        memcpy(v101, v102, v223);
      }

      else
      {
        (*(v203 + 32))(v101, v102, v219);
        __swift_storeEnumTagSinglePayload(v101, 0, 1, v219);
      }

      v158 = ((v101 + v22) & 0xFFFFFFFFFFFFFFF8);
      v159 = ((v102 + v22) & 0xFFFFFFFFFFFFFFF8);
      *v158 = *v159;
      v160 = (v158 + 19) & 0xFFFFFFFFFFFFFFF8;
      v161 = (v159 + 19) & 0xFFFFFFFFFFFFFFF8;
      v162 = *v161;
      *(v160 + 4) = *(v161 + 4);
      *v160 = v162;
      v92 = 6;
      goto LABEL_232;
    case 7u:
      (*(v237 + 32))(&v236[v17] & v41, v85, v218);
      v97 = ((v84 + v232) & v230);
      v98 = (&v85[v232] & v230);
      if (__swift_getEnumTagSinglePayload(v98, 1, v219))
      {
        memcpy(v97, v98, v223);
      }

      else
      {
        (*(v203 + 32))(v97, v98, v219);
        __swift_storeEnumTagSinglePayload(v97, 0, 1, v219);
      }

      v138 = ((v97 + v22) & 0xFFFFFFFFFFFFFFF8);
      v139 = ((v98 + v22) & 0xFFFFFFFFFFFFFFF8);
      *v138 = *v139;
      v140 = (v138 + 19) & 0xFFFFFFFFFFFFFFF8;
      v141 = (v139 + 19) & 0xFFFFFFFFFFFFFFF8;
      v142 = *v141;
      *(v140 + 4) = *(v141 + 4);
      *v140 = v142;
      v143 = ((v84 + v24 + 7) & 0xFFFFFFFFFFFFFFF8);
      v144 = (&v85[v24 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v143 = *v144;
      v145 = ((v143 + 23) & 0xFFFFFFFFFFFFFFF8);
      v146 = ((v144 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v145 = *v146;
      *((v145 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v146 + 23) & 0xFFFFFFFFFFFFFFF8);
      v92 = 7;
      goto LABEL_232;
    case 8u:
      v196 = v22;
      (*(v211 + 32))(&v236[v17] & v41, v85, v212);
      v111 = ((v84 + v205 + 7) & 0xFFFFFFFFFFFFFFF8);
      v112 = (&v85[v205 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v111 = *v112;
      v113 = ((v111 + v206) & v204);
      v114 = ((v112 + v206) & v204);
      if (v27 == v207)
      {
        v115 = __swift_getEnumTagSinglePayload(v114, v27, v218);
        v117 = v230;
        v116 = v232;
        if (!v115)
        {
          v118 = ((v114 + v232) & v230);
          goto LABEL_244;
        }
      }

      else
      {
        v117 = v230;
        v116 = v232;
        v118 = ((v114 + v232) & v230);
        if (v197 == v207)
        {
          if (v216 < 2 || __swift_getEnumTagSinglePayload((v114 + v232) & v230, v216, v219) < 2)
          {
            goto LABEL_244;
          }
        }

        else
        {
          v172 = *(((v118 + v196) & 0xFFFFFFFFFFFFFFF8) + 8);
          if (v172 >= 0xFFFFFFFF)
          {
            LODWORD(v172) = -1;
          }

          if ((v172 + 1) < 2)
          {
LABEL_244:
            (*(v237 + 32))(v113, v114, v218);
            v173 = v113;
            v174 = ((v113 + v116) & v117);
            if (__swift_getEnumTagSinglePayload(v118, 1, v219))
            {
              memcpy(v174, v118, v223);
            }

            else
            {
              (*(v203 + 32))(v174, v118, v219);
              __swift_storeEnumTagSinglePayload(v174, 0, 1, v219);
            }

            v125 = v201;
            v183 = v202;
            v184 = ((v174 + v196) & 0xFFFFFFFFFFFFFFF8);
            v185 = ((v118 + v196) & 0xFFFFFFFFFFFFFFF8);
            *v184 = *v185;
            v186 = (v185 + 19) & 0xFFFFFFFFFFFFFFF8;
            v187 = *v186;
            v188 = (v184 + 19) & 0xFFFFFFFFFFFFFFF8;
            *(v188 + 4) = *(v186 + 4);
            *v188 = v187;
            v124 = v223;
            v127 = v199;
            v126 = v200;
            v128 = v198;
            v113 = v173;
            if (v216)
            {
LABEL_261:
              v189 = (((v215 + 7 + v183) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
              *((v113 + v189 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v114 + v189 + 7) & 0xFFFFFFFFFFFFFFF8);
              v190 = (((v215 + 7 + v124) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
              if (v190 <= v125)
              {
                v190 = v125;
              }

              if (v126 > v190)
              {
                v190 = v126;
              }

              if (v127 > v190)
              {
                v190 = v127;
              }

              if (v128 > v190)
              {
                v190 = v128;
              }

              *(v84 + v190) = 8;
LABEL_233:
              v163 = ((v84 + v234 + 7) & 0xFFFFFFFFFFFFFFF8);
              v164 = (&v85[v234 + 7] & 0xFFFFFFFFFFFFFFF8);
              *v163 = *v164;
              v165 = (v163 + 15) & 0xFFFFFFFFFFFFFFF8;
              v166 = (v164 + 15) & 0xFFFFFFFFFFFFFFF8;
              v167 = *v166;
              v168 = *(v166 + 16);
              *(v165 + 32) = *(v166 + 32);
              *v165 = v167;
              *(v165 + 16) = v168;
              *(v165 + 40) = *(v166 + 40);
              v83 = 1;
LABEL_234:
              v236[v36] = v83;
              return v3;
            }

LABEL_260:
            v183 = v124;
            goto LABEL_261;
          }
        }
      }

      memcpy(v113, v114, v24);
      v124 = v223;
      v126 = v200;
      v125 = v201;
      v128 = v198;
      v127 = v199;
      goto LABEL_260;
    case 9u:
      (*(v209 + 32))(&v236[v17] & v41, v85, v210);
      v92 = 9;
LABEL_232:
      *(v84 + v32) = v92;
      goto LABEL_233;
    default:
      memcpy((&v236[v17] & v41), v85, v234);
      goto LABEL_233;
  }
}

uint64_t sub_1DCE94800(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v36 = *(*(sub_1DD0DB04C() - 8) + 64);
  v33 = *(sub_1DD0DC76C() - 8);
  v3 = *(v33 + 80);
  v34 = *(sub_1DD0DB1EC() - 8);
  v30 = *(v34 + 80) | v3;
  v32 = *(sub_1DD0DB4BC() - 8);
  v4 = *(v32 + 80) & 0xF8;
  v5 = *(sub_1DD0DB3EC() - 8);
  v6 = *(v5 + 80);
  v7 = v4 | v6 | 7;
  v31 = *(sub_1DD0DD12C() - 8);
  v8 = *(v31 + 80);
  v9 = *(sub_1DD0DD08C() - 8);
  v10 = (v30 | (v8 | *(v9 + 80))) & 0xF8 | v7;
  v11 = (v36 + v10) & ~v10;
  v12 = *(v33 + 64);
  if (((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v12)
  {
    v12 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v12 <= *(v34 + 64))
  {
    v12 = *(v34 + 64);
  }

  v13 = *(v5 + 64) + ((*(v32 + 64) + v6) & ~v6);
  if (!*(v5 + 84))
  {
    ++v13;
  }

  v14 = (v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 19) | 5;
  if (v12 <= v15)
  {
    v12 = (v14 + 19) | 5;
  }

  v16 = ((((((v14 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 <= v16)
  {
    v12 = v16;
  }

  if (v12 <= ((v15 + ((v7 + ((*(v31 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v12 = ((v15 + ((v7 + ((*(v31 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v17 = *(v9 + 64);
  if (v12 > v17)
  {
    v17 = v12;
  }

  if (v17 <= 0x18)
  {
    v17 = 24;
  }

  v18 = ((((v11 + v17 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  v19 = *(*(*(a3 + 16) - 8) + 64);
  if (v19 <= 9)
  {
    v19 = 9;
  }

  if (v19 + 1 > v18)
  {
    v18 = v19 + 1;
  }

  if (v18 <= 9)
  {
    v20 = 9;
  }

  else
  {
    v20 = v18;
  }

  v21 = (3u >> (8 * v20)) ^ 0xFB;
  if (v20 > 3)
  {
    v21 = 251;
  }

  if (!a2)
  {
    return 0;
  }

  if (v21 >= a2)
  {
    goto LABEL_45;
  }

  v22 = v20 + 1;
  v23 = 8 * (v20 + 1);
  if ((v20 + 1) <= 3)
  {
    v26 = ((~(-1 << v23) + a2 - v21) >> v23) + 1;
    if (HIWORD(v26))
    {
      v24 = *(a1 + v22);
      if (!v24)
      {
        goto LABEL_45;
      }

      goto LABEL_37;
    }

    if (v26 > 0xFF)
    {
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_45;
      }

      goto LABEL_37;
    }

    if (v26 < 2)
    {
LABEL_45:
      v28 = *(a1 + v20);
      if (v21 <= (v28 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v28);
      }
    }
  }

  v24 = *(a1 + v22);
  if (!*(a1 + v22))
  {
    goto LABEL_45;
  }

LABEL_37:
  v27 = (v24 - 1) << v23;
  if (v22 > 3)
  {
    v27 = 0;
  }

  if (v22)
  {
    if (v22 > 3)
    {
      LODWORD(v22) = 4;
    }

    switch(v22)
    {
      case 2:
        LODWORD(v22) = *a1;
        break;
      case 3:
        LODWORD(v22) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v22) = *a1;
        break;
      default:
        LODWORD(v22) = *a1;
        break;
    }
  }

  return v21 + (v22 | v27) + 1;
}

void sub_1DCE94CA4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v38 = *(*(sub_1DD0DB04C() - 8) + 64);
  v35 = *(sub_1DD0DC76C() - 8);
  v4 = *(v35 + 80);
  v36 = *(sub_1DD0DB1EC() - 8);
  v32 = *(v36 + 80) | v4;
  v34 = *(sub_1DD0DB4BC() - 8);
  v5 = *(v34 + 80) & 0xF8;
  v6 = *(sub_1DD0DB3EC() - 8);
  v7 = *(v6 + 80);
  v8 = v5 | v7 | 7;
  v33 = *(sub_1DD0DD12C() - 8);
  v9 = *(v33 + 80);
  v10 = *(sub_1DD0DD08C() - 8);
  v11 = (v32 | (v9 | *(v10 + 80))) & 0xF8 | v8;
  v12 = (v38 + v11) & ~v11;
  v13 = *(v35 + 64);
  if (((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v13)
  {
    v13 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v13 <= *(v36 + 64))
  {
    v13 = *(v36 + 64);
  }

  v14 = *(v6 + 64) + ((*(v34 + 64) + v7) & ~v7);
  if (!*(v6 + 84))
  {
    ++v14;
  }

  v15 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 19) | 5;
  if (v13 <= v16)
  {
    v13 = (v15 + 19) | 5;
  }

  v17 = ((((((v15 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 <= v17)
  {
    v13 = v17;
  }

  if (v13 <= ((v16 + ((v8 + ((*(v33 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v13 = ((v16 + ((v8 + ((*(v33 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v18 = *(v10 + 64);
  if (v13 > v18)
  {
    v18 = v13;
  }

  if (v18 <= 0x18)
  {
    v18 = 24;
  }

  v19 = ((((v12 + v18 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  v20 = *(*(*(a4 + 16) - 8) + 64);
  if (v20 <= 9)
  {
    v20 = 9;
  }

  if (v20 + 1 > v19)
  {
    v19 = v20 + 1;
  }

  if (v19 <= 9)
  {
    v19 = 9;
  }

  if (v19 <= 3)
  {
    v21 = (3u >> (8 * v19)) ^ 0xFB;
  }

  else
  {
    v21 = 251;
  }

  v22 = v19 + 1;
  v23 = 8 * (v19 + 1);
  if (v21 >= a3)
  {
    v26 = 0;
    v24 = a1;
    v25 = a2;
  }

  else
  {
    v24 = a1;
    v25 = a2;
    if (v22 <= 3)
    {
      v29 = ((~(-1 << v23) + a3 - v21) >> v23) + 1;
      if (HIWORD(v29))
      {
        v26 = 4;
      }

      else
      {
        if (v29 < 0x100)
        {
          v30 = 1;
        }

        else
        {
          v30 = 2;
        }

        if (v29 >= 2)
        {
          v26 = v30;
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else
    {
      v26 = 1;
    }
  }

  if (v21 >= v25)
  {
    switch(v26)
    {
      case 1:
        v24[v22] = 0;
        if (v25)
        {
          goto LABEL_49;
        }

        break;
      case 2:
        *&v24[v22] = 0;
        if (v25)
        {
          goto LABEL_49;
        }

        break;
      case 3:
LABEL_60:
        __break(1u);
        break;
      case 4:
        *&v24[v22] = 0;
        goto LABEL_48;
      default:
LABEL_48:
        if (v25)
        {
LABEL_49:
          v24[v19] = -v25;
        }

        break;
    }
  }

  else
  {
    v27 = ~v21 + v25;
    if (v22 < 4)
    {
      v28 = (v27 >> v23) + 1;
      if (v19 != -1)
      {
        v31 = v27 & ~(-1 << v23);
        bzero(v24, v22);
        if (v22 == 3)
        {
          *v24 = v31;
          v24[2] = BYTE2(v31);
        }

        else if (v22 == 2)
        {
          *v24 = v31;
        }

        else
        {
          *v24 = v27;
        }
      }
    }

    else
    {
      bzero(v24, v22);
      *v24 = v27;
      v28 = 1;
    }

    switch(v26)
    {
      case 1:
        v24[v22] = v28;
        break;
      case 2:
        *&v24[v22] = v28;
        break;
      case 3:
        goto LABEL_60;
      case 4:
        *&v24[v22] = v28;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCE951C4(unsigned __int8 *a1, uint64_t a2)
{
  v28 = *(*(sub_1DD0DB04C() - 8) + 64);
  v26 = *(sub_1DD0DC76C() - 8);
  v2 = *(v26 + 80);
  v27 = *(sub_1DD0DB1EC() - 8);
  v23 = *(v27 + 80) | v2;
  v25 = *(sub_1DD0DB4BC() - 8);
  v3 = *(v25 + 80) & 0xF8;
  v4 = *(sub_1DD0DB3EC() - 8);
  v5 = *(v4 + 80);
  v6 = v3 | v5 | 7;
  v24 = *(sub_1DD0DD12C() - 8);
  v7 = *(v24 + 80);
  v8 = *(sub_1DD0DD08C() - 8);
  v9 = (v23 | (v7 | *(v8 + 80))) & 0xF8 | v6;
  v10 = (v28 + v9) & ~v9;
  v11 = *(v26 + 64);
  if (((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v11)
  {
    v11 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v11 <= *(v27 + 64))
  {
    v11 = *(v27 + 64);
  }

  v12 = *(v4 + 64) + ((*(v25 + 64) + v5) & ~v5);
  if (!*(v4 + 84))
  {
    ++v12;
  }

  v13 = (v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 19) | 5;
  if (v11 <= v14)
  {
    v11 = (v13 + 19) | 5;
  }

  v15 = ((((((v13 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v11 <= v15)
  {
    v11 = v15;
  }

  if (v11 <= ((v14 + ((v6 + ((*(v24 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v11 = ((v14 + ((v6 + ((*(v24 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v16 = *(v8 + 64);
  if (v11 > v16)
  {
    v16 = v11;
  }

  if (v16 <= 0x18)
  {
    v16 = 24;
  }

  v17 = ((((v10 + v16 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  v18 = *(*(*(a2 + 16) - 8) + 64);
  if (v18 <= 9)
  {
    v18 = 9;
  }

  if (v18 + 1 > v17)
  {
    v17 = v18 + 1;
  }

  if (v17 <= 9)
  {
    v19 = 9;
  }

  else
  {
    v19 = v17;
  }

  result = a1[v19];
  if (result >= 4)
  {
    if (v19 <= 3)
    {
      v21 = v19;
    }

    else
    {
      v21 = 4;
    }

    switch(v21)
    {
      case 1:
        v22 = *a1;
        goto LABEL_33;
      case 2:
        v22 = *a1;
        goto LABEL_33;
      case 3:
        v22 = *a1 | (a1[2] << 16);
        goto LABEL_33;
      case 4:
        v22 = *a1;
LABEL_33:
        if (v19 < 4)
        {
          result = (v22 | ((result - 4) << (8 * v19))) + 4;
        }

        else
        {
          result = (v22 + 4);
        }

        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_1DCE955B0(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(sub_1DD0DB04C() - 8);
  v6 = v5;
  v53 = a1;
  if (a2 > 3)
  {
    v51 = *(v5 + 64);
    v47 = *(sub_1DD0DC76C() - 8);
    v22 = *(v47 + 80);
    v49 = *(sub_1DD0DB1EC() - 8);
    v43 = *(v49 + 80) | v22;
    v45 = *(sub_1DD0DB4BC() - 8);
    v23 = *(v45 + 80) & 0xF8;
    v24 = *(sub_1DD0DB3EC() - 8);
    v25 = *(v24 + 80);
    v26 = v23 | v25 | 7;
    v44 = *(sub_1DD0DD12C() - 8);
    v27 = *(v44 + 80);
    v28 = *(sub_1DD0DD08C() - 8);
    v29 = (v43 | (v27 | *(v28 + 80))) & 0xF8 | v26;
    v30 = (v51 + v29) & ~v29;
    v31 = *(v47 + 64);
    if (((v31 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v31)
    {
      v31 = ((v31 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    if (v31 <= *(v49 + 64))
    {
      v31 = *(v49 + 64);
    }

    v32 = *(v24 + 64) + ((*(v45 + 64) + v25) & ~v25);
    if (!*(v24 + 84))
    {
      ++v32;
    }

    v33 = (v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = (v33 + 19) | 5;
    if (v31 <= v34)
    {
      v31 = (v33 + 19) | 5;
    }

    v35 = ((((((v33 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    if (v31 <= v35)
    {
      v31 = v35;
    }

    if (v31 <= ((v34 + ((v26 + ((*(v44 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v26) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
    {
      v31 = ((v34 + ((v26 + ((*(v44 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v26) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    v36 = *(v28 + 64);
    if (v31 > v36)
    {
      v36 = v31;
    }

    if (v36 <= 0x18)
    {
      v36 = 24;
    }

    v37 = ((((v30 + v36 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
    v38 = *(*(*(a3 + 16) - 8) + 64);
    if (v38 <= 9)
    {
      v38 = 9;
    }

    if (v38 + 1 > v37)
    {
      v37 = v38 + 1;
    }

    if (v37 <= 9)
    {
      v39 = 9;
    }

    else
    {
      v39 = v37;
    }

    v40 = a2 - 4;
    if (v39 < 4)
    {
      v41 = v53;
      v53[v39] = (v40 >> (8 * v39)) + 4;
      if (!v39)
      {
        return;
      }

      v40 &= ~(-1 << (8 * v39));
    }

    else
    {
      v41 = v53;
      v53[v39] = 4;
    }

    if (v39 >= 4)
    {
      v42 = 4;
    }

    else
    {
      v42 = v39;
    }

    bzero(v41, v39);
    switch(v42)
    {
      case 2:
        *v41 = v40;
        break;
      case 3:
        *v41 = v40;
        v41[2] = BYTE2(v40);
        break;
      case 4:
        *v41 = v40;
        break;
      default:
        *v41 = v40;
        break;
    }
  }

  else
  {
    v50 = *(sub_1DD0DC76C() - 8);
    v48 = *(sub_1DD0DB1EC() - 8);
    v7 = *(sub_1DD0DB4BC() - 8);
    v8 = *(sub_1DD0DB3EC() - 8);
    v46 = *(sub_1DD0DD12C() - 8);
    v9 = *(sub_1DD0DD08C() - 8);
    v10 = *(*(*(a3 + 16) - 8) + 64);
    if (v10 <= 9)
    {
      v10 = 9;
    }

    v11 = *(v8 + 80);
    v12 = v11 | *(v7 + 80) & 0xF8 | 7;
    v13 = v12 | ((*(v48 + 80) | *(v50 + 80)) | (*(v46 + 80) | *(v9 + 80))) & 0xF8;
    v14 = (*(v6 + 64) + v13) & ~v13;
    v15 = *(v50 + 64);
    if (((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v15)
    {
      v15 = ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    if (v15 <= *(v48 + 64))
    {
      v15 = *(v48 + 64);
    }

    v16 = *(v8 + 64) + ((*(v7 + 64) + v11) & ~v11);
    if (!*(v8 + 84))
    {
      ++v16;
    }

    v17 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = (v17 + 19) | 5;
    if (v15 <= v18)
    {
      v15 = (v17 + 19) | 5;
    }

    v19 = ((((((v17 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    if (v15 <= v19)
    {
      v15 = v19;
    }

    if (v15 <= ((v18 + ((v12 + ((*(v46 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
    {
      v15 = ((v18 + ((v12 + ((*(v46 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    v20 = *(v9 + 64);
    if (v15 > v20)
    {
      v20 = v15;
    }

    if (v20 <= 0x18)
    {
      v20 = 24;
    }

    v21 = ((((v14 + v20 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
    if (v10 + 1 > v21)
    {
      v21 = v10 + 1;
    }

    if (v21 <= 9)
    {
      v21 = 9;
    }

    a1[v21] = a2;
  }
}

uint64_t sub_1DCE95D18()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_30_30();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_59(v1);

  return sub_1DCE8DC08(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCE95DAC()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_93(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCE8DAD8(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCE95E38()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_93(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCE8D9A8(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCE95EC4()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_93(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCE8D878(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCE95F50()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_93(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCE8D748(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCE95FDC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_30_30();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_59(v1);

  return sub_1DCE8D610(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCE9609C()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCE8D1DC(v3, v4);
}

uint64_t sub_1DCE96120()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCE8D3C8(v3, v4);
}

uint64_t sub_1DCE961A4()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_13_17(v4);

  return sub_1DCE8D46C(v6, v2, v1);
}

uint64_t sub_1DCE9623C()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCE8D324(v3, v4);
}

uint64_t sub_1DCE962C0()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCE8D280(v3, v4);
}

uint64_t sub_1DCE96344()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_30_30();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_59(v1);

  return sub_1DCE8DF30(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCE963D8()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_93(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCE8E264(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCE96464()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_93(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCE8E4B8(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCE964F0()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_93(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCE8E70C(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCE9657C()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_93(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCE8E960(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCE96608()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_30_30();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_59(v1);

  return sub_1DCE8EBB4(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCE966EC(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1DD0DE97C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v4 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_20_0(v4);
  v6 = v1 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_1DCE8E1F0(a1, v6, v3);
}

uint64_t sub_1DCE967E0(uint64_t a1)
{
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_1_93();
  MEMORY[0x1EEE9AC00](v3, v4);
  v5 = OUTLINED_FUNCTION_0_87();
  sub_1DCB29E58(a1 + *(v5 + 20), v1);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1DCB29EBC(v1);
    return 1;
  }

  v6 = OUTLINED_FUNCTION_2_78();
  if (v6 == v9 && 0x80000001DD115AF0 == a1)
  {

    return 0;
  }

  v11 = OUTLINED_FUNCTION_3_94(v6, v7, v8, 0x80000001DD115AF0);

  result = 0;
  if ((v11 & 1) == 0)
  {
    return 1;
  }

  return result;
}

BOOL sub_1DCE968C8(uint64_t a1)
{
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_1_93();
  MEMORY[0x1EEE9AC00](v3, v4);
  v5 = OUTLINED_FUNCTION_0_87();
  sub_1DCB29E58(a1 + *(v5 + 20), v1);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1DCB29EBC(v1);
    return 0;
  }

  v6 = OUTLINED_FUNCTION_2_78();
  if (v6 != v9 || 0x80000001DD115AF0 != a1)
  {
    v11 = OUTLINED_FUNCTION_3_94(v6, v7, v8, 0x80000001DD115AF0);

    return (v11 & 1) != 0;
  }

  return 1;
}

uint64_t sub_1DCE969AC(void *a1)
{
  result = type metadata accessor for USOKeyPath(319, a1[2], a1[3], a1[4]);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void sub_1DCE96A40(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((((*(v4 + 64) + ((v5 + 48) & ~v5) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16 <= 0x18)
  {
    v8 = a2[1];
    *a1 = *a2;
    a1[1] = v8;
    v9 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
    v10 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v9 = *v10;
    v9[1] = v10[1];
    v11 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
    v12 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
    v13 = v12[1];
    *v11 = *v12;
    v11[1] = v13;

    sub_1DD0DCF8C();
  }

  *a1 = *a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE96BDC(uint64_t a1, uint64_t a2)
{

  (*(*(*(a2 + 24) - 8) + 8))((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + *(*(*(a2 + 24) - 8) + 80) + 16) & ~*(*(*(a2 + 24) - 8) + 80));
}

void sub_1DCE96CA4(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v5[1] = v6[1];
  v7 = ((v5 + 23) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  sub_1DD0DCF8C();
}

void sub_1DCE96DC8(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];

  v5 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v5[1] = v6[1];

  v7 = ((v5 + 23) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  sub_1DD0DCF8C();
}

_OWORD *sub_1DCE96F20(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = ((v4 + 23) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((v5 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + 16) & ~v10;
  v12 = (v7 + v10 + 16) & ~v10;
  (*(v8 + 32))(v11, v12);
  v13 = *(v9 + 32) + 7;
  v14 = ((v13 + v11) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + v12) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  *((v14 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *sub_1DCE96FF8(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;

  v7 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];

  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;

  v11 = *(*(a3 + 24) - 8);
  v12 = v11 + 40;
  v13 = *(v11 + 80);
  v14 = (v9 + v13 + 16) & ~v13;
  v15 = (v10 + v13 + 16) & ~v13;
  (*(v11 + 40))(v14, v15);
  v16 = *(v12 + 24) + 7;
  v17 = ((v16 + v14) & 0xFFFFFFFFFFFFFFF8);
  v18 = v16 + v15;
  v19 = (v18 & 0xFFFFFFFFFFFFFFF8) + 23;
  *v17 = *(v18 & 0xFFFFFFFFFFFFFFF8);

  *((v17 + 23) & 0xFFFFFFFFFFFFFFF8) = *(v19 & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_1DCE9711C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((((((result + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v7 + 16) & ~v7, v6, v4);
    }

    else
    {
      v17 = *(result + 8);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((((*(*(v4 - 8) + 64) + ((v7 + 48) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1DCE9727C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((*(*(v6 - 8) + 64) + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((((*(*(v6 - 8) + 64) + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v8 & 0x80000000) != 0)
          {
            v18 = (((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;

            __swift_storeEnumTagSinglePayload(v18, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    if (((((*(*(v6 - 8) + 64) + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((*(*(v6 - 8) + 64) + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCE9748C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for USOKeyPath(0, a2, a3, a4);
  OUTLINED_FUNCTION_2();
  v9 = *(v8 + 32);

  return v9(a5, a1, v7);
}

uint64_t sub_1DCE974F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 16);
  v168 = sub_1DD0DB9FC();
  OUTLINED_FUNCTION_0_1();
  v167 = v7;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v10);
  v179 = a2;
  v165 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v187 = (v162 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a2 + 24);
  OUTLINED_FUNCTION_0_1();
  v174 = v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_24_1();
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v22 = v162 - v21;
  MEMORY[0x1EEE9AC00](v20, v23);
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v24, v25);
  OUTLINED_FUNCTION_13_2(v162 - v26);
  v188 = v6;
  v27 = sub_1DD0DBAAC();
  v172 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_0_1();
  v170 = v28;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v29, v30);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v31);
  v180 = v27;
  v177 = *(v27 - 8);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v32, v33);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5D98, &qword_1DD0F3EB0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v35, v36);
  OUTLINED_FUNCTION_34_0();
  v184 = v37;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28A8, &unk_1DD0FE400);
  OUTLINED_FUNCTION_0_1();
  v183 = v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v41, v42);
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = v162 - v45;
  type metadata accessor for Input(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = v162 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v51 = sub_1DD0DD8FC();
  v52 = __swift_project_value_buffer(v51, qword_1EDE57E00);
  sub_1DCC174D4(a1, v50);
  v185 = v52;
  v53 = sub_1DD0DD8EC();
  v54 = sub_1DD0DE6DC();
  v55 = os_log_type_enabled(v53, v54);
  v181 = v46;
  v163 = v22;
  if (v55)
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v182 = v14;
    v58 = a3;
    v59 = v57;
    v191 = v57;
    *v56 = 136315138;
    v60 = Input.description.getter();
    v62 = v61;
    sub_1DCE984F8(v50);
    v63 = sub_1DCB10E9C(v60, v62, &v191);

    *(v56 + 4) = v63;
    _os_log_impl(&dword_1DCAFC000, v53, v54, "[PromptInputResolver] Resolving user input %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v59);
    a3 = v58;
    v14 = v182;
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  else
  {

    sub_1DCE984F8(v50);
  }

  sub_1DCE2FF24();
  v64 = v187;
  v65 = v188;
  if (v66)
  {
    sub_1DCC9FB70();
    *a3 = swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v67 = sub_1DD0DF22C();
    swift_storeEnumTagMultiPayload();
    v68 = a3;
LABEL_8:
    v69 = 0;
    v70 = v67;
    return __swift_storeEnumTagSinglePayload(v68, v69, 1, v70);
  }

  sub_1DCE30A18();
  if (!v71)
  {
    v73 = v184;
    __swift_storeEnumTagSinglePayload(v184, 1, 1, v186);
    goto LABEL_15;
  }

  v72 = sub_1DD0DC5BC();

  v73 = v184;
  sub_1DCC62440(v72);

  if (__swift_getEnumTagSinglePayload(v73, 1, v186) == 1)
  {
LABEL_15:
    sub_1DCB0E9D8(v73, &qword_1ECCA5D98, &qword_1DD0F3EB0);
    v104 = sub_1DD0DD8EC();
    v105 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_22(v105))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v106, v107, "[PromptInputResolver] Could not extract task from input.");
      OUTLINED_FUNCTION_80();
    }

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    goto LABEL_18;
  }

  v162[0] = a3;
  v182 = v14;
  v74 = v183;
  v75 = v181;
  v76 = v73;
  v77 = v186;
  (*(v183 + 32))(v181, v76, v186);
  v78 = *(v74 + 16);
  v78(v178, v75, v77);
  v79 = *(v179 + 32);
  v80 = v176;
  sub_1DD0DBA9C();
  v81 = v180;
  if (__swift_getEnumTagSinglePayload(v80, 1, v180) == 1)
  {
    (*(v170 + 8))(v80, v172);
    v82 = v171;
    v78(v171, v75, v186);
    v83 = v185;
    v84 = v75;
    v85 = sub_1DD0DD8EC();
    v86 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_22(v86))
    {
      v87 = swift_slowAlloc();
      v88 = v186;
      v89 = v87;
      v187 = swift_slowAlloc();
      v191 = v187;
      *v89 = 136315394;
      LODWORD(v185) = v83;
      v78(v178, v82, v88);
      v90 = sub_1DD0DE02C();
      v92 = v91;
      v93 = *(v183 + 8);
      v94 = v82;
      v95 = v88;
      v93(v94, v88);
      v96 = sub_1DCB10E9C(v90, v92, &v191);

      *(v89 + 4) = v96;
      *(v89 + 12) = 2080;
      v97 = v166;
      sub_1DD0DBB3C();
      v98 = v168;
      v99 = sub_1DD0DB9DC();
      v101 = v100;
      (*(v167 + 8))(v97, v98);
      v102 = sub_1DCB10E9C(v99, v101, &v191);

      *(v89 + 14) = v102;
      _os_log_impl(&dword_1DCAFC000, v85, v185, "[PromptInputResolver] Could not cast %s to DynamicTask<%s>).", v89, 0x16u);
      swift_arrayDestroy();
      v103 = v162[0];
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();

      v93(v181, v95);
    }

    else
    {

      v125 = *(v183 + 8);
      v126 = v186;
      v125(v82, v186);
      v125(v84, v126);
      v103 = v162[0];
    }

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v70 = sub_1DD0DF22C();
    v68 = v103;
    goto LABEL_19;
  }

  v109 = v175;
  (*(v177 + 32))(v175, v80, v81);
  v110 = v182;
  v111 = type metadata accessor for USOKeyPath(0, v65, v182, v79);
  v112 = v173;
  if ((USOKeyPath.nodeExists(_:)() & 1) == 0)
  {
    v127 = v165;
    v128 = v179;
    (*(v165 + 16))(v64, v112, v179);
    v129 = sub_1DD0DD8EC();
    v130 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v191 = v132;
      *v131 = 136315138;
      v133 = v64[1];
      v188 = *v64;
      v134 = *(v127 + 8);

      v134(v64, v128);
      v135 = sub_1DCB10E9C(v188, v133, &v191);
      a3 = v162[0];

      *(v131 + 4) = v135;
      OUTLINED_FUNCTION_26_20(&dword_1DCAFC000, v136, v137, "[PromptInputResolver] No node found for input and USOKeyPath %s.");
      __swift_destroy_boxed_opaque_existential_1Tm(v132);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();

      OUTLINED_FUNCTION_1_94();
      v138(v175, v180);
      v139 = OUTLINED_FUNCTION_0_88();
      v140(v139);
    }

    else
    {

      (*(v127 + 8))(v64, v128);
      OUTLINED_FUNCTION_1_94();
      v141(v109, v180);
      v142 = OUTLINED_FUNCTION_0_88();
      v143(v142);
      a3 = v162[0];
    }

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
LABEL_18:
    v70 = sub_1DD0DF22C();
    v68 = a3;
LABEL_19:
    v69 = 1;
    return __swift_storeEnumTagSinglePayload(v68, v69, 1, v70);
  }

  v113 = v169;
  USOKeyPath.getValue(_:)(v109, v111);
  v114 = *(v174 + 16);
  v114(v164, v113, v110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8A00, &qword_1DD0FE410);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v190 = 0;
    memset(v189, 0, sizeof(v189));
    sub_1DCB0E9D8(v189, qword_1ECCA8A08, &qword_1DD0FE418);
LABEL_35:
    v144 = v163;
    v114(v163, v113, v110);
    v145 = sub_1DD0DD8EC();
    v146 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      v191 = v148;
      *v147 = 136315138;
      v114(v162[1], v144, v110);
      v149 = sub_1DD0DE02C();
      v151 = v150;
      v152 = v174;
      (*(v174 + 8))(v144, v110);
      v153 = sub_1DCB10E9C(v149, v151, &v191);

      *(v147 + 4) = v153;
      OUTLINED_FUNCTION_26_20(&dword_1DCAFC000, v154, v155, "[PromptInputResolver] Resolved input to value: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v148);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();

      v156 = v152;
      OUTLINED_FUNCTION_1_94();
      v158 = v175;
    }

    else
    {

      v156 = v174;
      (*(v174 + 8))(v144, v110);
      OUTLINED_FUNCTION_1_94();
      v158 = v109;
    }

    v157(v158, v180);
    v159 = OUTLINED_FUNCTION_0_88();
    v160(v159);
    v161 = v162[0];
    (*(v156 + 32))(v162[0], v169, v110);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v67 = sub_1DD0DF22C();
    swift_storeEnumTagMultiPayload();
    v68 = v161;
    goto LABEL_8;
  }

  sub_1DCAFF9E8(v189, &v191);
  v115 = v192;
  v116 = v193;
  __swift_project_boxed_opaque_existential_1(&v191, v192);
  if (((*(v116 + 8))(v115, v116) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v191);
    goto LABEL_35;
  }

  v117 = sub_1DD0DD8EC();
  v118 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_22(v118))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v119, v120, "[PromptInputResolver] No value was found for this input.");
    OUTLINED_FUNCTION_80();
  }

  (*(v174 + 8))(v113, v110);
  OUTLINED_FUNCTION_1_94();
  v121(v109, v180);
  v122 = OUTLINED_FUNCTION_0_88();
  v123(v122);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v124 = sub_1DD0DF22C();
  __swift_storeEnumTagSinglePayload(v162[0], 1, 1, v124);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v191);
}