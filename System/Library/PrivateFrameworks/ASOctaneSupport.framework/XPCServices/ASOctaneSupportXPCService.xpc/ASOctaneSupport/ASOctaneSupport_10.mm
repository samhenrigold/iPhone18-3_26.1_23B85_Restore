unint64_t sub_1000B8DEC()
{
  result = qword_1002B2FC8;
  if (!qword_1002B2FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B2FC8);
  }

  return result;
}

unint64_t sub_1000B8E44()
{
  result = qword_1002B2FD0;
  if (!qword_1002B2FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B2FD0);
  }

  return result;
}

unint64_t sub_1000B8E9C()
{
  result = qword_1002B2FD8;
  if (!qword_1002B2FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B2FD8);
  }

  return result;
}

uint64_t sub_1000B8F00(uint64_t a1)
{
  v1 = sub_1000BA63C(a1);
  switch(*(v6 + 32))
  {
    case 1:
      if (v3[2].i8[0] != 1)
      {
        return 0;
      }

      goto LABEL_15;
    case 2:
      if (v3[2].i8[0] != 2)
      {
        return 0;
      }

      goto LABEL_15;
    case 3:
      if (v1 | v4 | v5 | v2)
      {
        if (v3[2].i8[0] != 3)
        {
          return 0;
        }

        v7 = v3->i64[0] == 1 && (v3[1].i64[0] | v3[1].i64[1] | v3->i64[1]) == 0;
        if (!v7)
        {
          return 0;
        }
      }

      else
      {
        if (v3[2].i8[0] != 3)
        {
          return 0;
        }

        v18 = vorrq_s8(*v3, v3[1]);
        if (vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL)))
        {
          return 0;
        }
      }

      return 1;
    default:
      if (v3[2].i8[0])
      {
        return 0;
      }

LABEL_15:
      sub_1000BA5C4();
      if (v7 && v8 == v11 && v9 == v12 && v10 == v13)
      {
        return 1;
      }

      return sub_1001F7E18() & 1;
  }
}

uint64_t sub_1000B900C(uint64_t a1)
{
  v1 = sub_1000BA63C(a1);
  v7 = *(v6 + 32);
  if (v7 >> 6)
  {
    if (v7 >> 6 == 1)
    {
      if ((*(v3 + 32) & 0xC0) != 0x40)
      {
        goto LABEL_19;
      }

      goto LABEL_6;
    }

    v19[0] = v5;
    v19[1] = v4;
    v19[2] = v1;
    v19[3] = v2;
    v20 = v7 & 0x3F;
    if ((*(v3 + 32) & 0xC0) == 0x80)
    {
      v17 = sub_1000B8F00(v19);
      return v17 & 1;
    }

LABEL_19:
    v17 = 0;
    return v17 & 1;
  }

  if (*(v3 + 32) > 0x3Fu)
  {
    goto LABEL_19;
  }

LABEL_6:
  sub_1000BA5C4();
  v14 = v14 && v8 == v11;
  if (v14 && v9 == v12 && v10 == v13)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1001F7E18();
  }

  return v17 & 1;
}

void *sub_1000B90D8(uint64_t a1, unint64_t a2)
{
  v321 = _swiftEmptyArrayStorage;
  v4 = 15;
  v332 = 15;
  v333 = _swiftEmptyArrayStorage;
  v331 = 15;
  swift_beginAccess();
  swift_beginAccess();
  v5 = 0;
  v6 = 0;
  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v329 = 4 * v7;
  v330 = a1;
  sub_1000BA630();
  v8 = 1;
  v9 = 15;
  while (1)
  {
    v10 = v9 >> 14;
    if (v9 >> 14 >= v329)
    {
      break;
    }

    sub_1000BA4C0();
    v11 = sub_1001F6D98();
    v13 = v12;
    if ((sub_1001F6A38() & 1) != 0 || (v11 == qword_1002B2FE0 ? (v15 = v13 == qword_1002B2FE8) : (v15 = 0), v15 || (sub_1000BA5E4(v11, v14, qword_1002B2FE0, qword_1002B2FE8) & 1) != 0 || (v11 == qword_1002B2FF0 ? (v17 = v13 == qword_1002B2FF8) : (v17 = 0), v17 || (sub_1000BA5E4(v11, v16, qword_1002B2FF0, qword_1002B2FF8) & 1) != 0 || (v11 == qword_1002B3000 ? (v19 = v13 == qword_1002B3008) : (v19 = 0), v19))))
    {

      v21 = v6;
    }

    else
    {
      v20 = sub_1000BA5E4(v11, v18, qword_1002B3000, qword_1002B3008);

      if (v20)
      {
        v21 = v6;
      }

      else
      {
        v21 = v9;
      }

      v8 = v20 & v8;
    }

    sub_1000BA4C0();
    v22 = sub_1001F6C48();
    v23 = v22 >> 14;
    if (v5)
    {
      v24 = v21 >> 14;
      if (v5 == 1)
      {
        if (v8)
        {
          sub_1000BA4C0();
          v25 = sub_1001F6C48();
          v4 = v25;
          v331 = v25;
          v332 = v25;
          v5 = 1;
          v6 = v21;
          goto LABEL_110;
        }

        sub_1000BA4C0();
        sub_1001F6D98();
        sub_1000BA5FC();
        if (v15 && v32 == v34)
        {

          if (v329 <= v22 >> 14)
          {
            goto LABEL_101;
          }

          goto LABEL_96;
        }

        sub_1000BA5E4(v31, v32, v33, v34);
        sub_1000BA654();
        if ((v5 & 1) != 0 && v23 < v329)
        {
LABEL_96:
          sub_1000BA4F4();
          sub_1001F6D98();
          sub_1000BA5FC();
          if (v15 && v83 == v85)
          {
          }

          else
          {
            sub_1000BA5E4(v82, v83, v84, v85);
            v87 = sub_1000BA654();
            if ((v5 & 1) == 0)
            {
              goto LABEL_101;
            }
          }

          if (v24 < v4 >> 14)
          {
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
            JUMPOUT(0x1000B9B48);
          }

          v132 = sub_1000BA554(v87, v88, v89, v90, v91, v92, v93, v94, v307, v314, v321, v328, v329, v330);
          v133 = sub_1000BA534(v132);
          v139 = sub_1000BA468(v133, v134, v135, v136, v137, v138);
          if ((sub_1000BA618(v139, v140, v141, v142, v143, v144, v145, v146, v309, v316, v323) & 1) == 0)
          {
            v272 = sub_1000BA4B0();
            sub_1000327EC(v272, v273, v274, v8);
          }

          sub_1000BA524();
          if (v119)
          {
            sub_1000BA4D0(v147);
          }

          sub_1000BA498();
          v155 = 64;
LABEL_127:
          *(v154 + 64) = v155;
          sub_1000BA66C(v148, v149, v150, v151, v152, v153);
          sub_1000BA4F4();
          v4 = sub_1001F6C48();
          v5 = 0;
          v6 = 0;
          v331 = v4;
          v332 = v4;
          v8 = 1;
          sub_1000BA630();
          v9 = v156;
        }

        else
        {
LABEL_101:
          sub_1000BA4C0();
          v95 = sub_1001F6C48();
          sub_1000BA594(v95);
          v5 = 1;
          v6 = v21;
        }
      }

      else if (v8)
      {
        sub_1000BA4C0();
        v4 = sub_1001F6C48();
        v331 = v4;
        v332 = v4;
        v8 = 1;
        v5 = 2;
        v6 = v21;
        v9 = v4;
      }

      else
      {
        v8 = v328;
        sub_1000BA4C0();
        v43 = sub_1001F6D98();
        v45 = v44;
        if (v328 == 5)
        {
          if ((sub_1001F6A38() & 1) != 0 || ((sub_1000BA694(), v15) ? (v49 = v45 == v48) : (v49 = 0), v49 || (sub_1000BA5E4(v43, v46, v47, v48) & 1) != 0 || ((sub_1000BA694(), v15) ? (v53 = v45 == v52) : (v53 = 0), v53 || (sub_1000BA5E4(v43, v50, v51, v52) & 1) != 0 || ((sub_1000BA694(), v15) ? (v57 = v45 == v56) : (v57 = 0), v57))))
          {

LABEL_119:
            sub_1000BA4C0();
            v131 = sub_1001F6C48();
            sub_1000BA594(v131);
            sub_1000BA630();
            goto LABEL_135;
          }

          v58 = sub_1000BA5E4(v43, v54, v55, v56);

          if (v58)
          {
            goto LABEL_119;
          }

          if (v24 < v4 >> 14)
          {
            goto LABEL_200;
          }

          v67 = sub_1000BA554(v59, v60, v61, v62, v63, v64, v65, v66, v307, v314, v321, v328, v329, v330);
          v69 = sub_1000BA534(v67);
          v8 = v70;
          v72 = v71;
          v73 = v68;
          v74 = v69 >> 16;
          v75 = v70 >> 16;
          v76 = v71 == 26217 && v68 == 0xE200000000000000;
          if (v76 && !v74 && v75 == 2 || (LOBYTE(v307) = 0, (sub_1000BA574(26217) & 1) != 0))
          {

            v81 = 0;
          }

          else
          {
            v77 = v72 == 1718185061 && v73 == 0xE400000000000000;
            if (v77 && !v74 && v75 == 4 || (LOBYTE(v307) = 0, (sub_1000BA574(1718185061) & 1) != 0))
            {

              v81 = 1;
            }

            else
            {
              v78 = v72 == 1702063205 && v73 == 0xE400000000000000;
              if (v78 && !v74 && v75 == 4 || (LOBYTE(v307) = 0, (sub_1000BA574(1702063205) & 1) != 0))
              {

                v81 = 2;
              }

              else
              {
                v79 = v72 == 7499622 && v73 == 0xE300000000000000;
                if (v79 && !v74 && v75 == 3 || (LOBYTE(v307) = 0, (sub_1000BA574(7499622) & 1) != 0))
                {

                  v81 = 3;
                }

                else
                {
                  v80 = sub_1000BA164(6581861, 0xE300000000000000, v69, v8, v72, v73);

                  if (v80)
                  {
                    v81 = 4;
                  }

                  else
                  {
                    v81 = 5;
                  }
                }
              }
            }
          }

          sub_1000BA4C0();
          v278 = sub_1001F6C48();
          sub_1000BA594(v278);
          v328 = 5;
          v5 = 2;
          v6 = v21;
          if (v81 != 5)
          {
            v332 = v9;
            if (v81 == 2)
            {
              v8 = 0;
              v4 = v9;
              v279 = 2;
LABEL_192:
              v328 = v279;
              v6 = v21;
            }

            else
            {
              v6 = 0;
              v8 = 1;
              v4 = v9;
              v328 = v81;
              if (v81 == 4)
              {
                v8 = 0;
                v4 = v9;
                v279 = v81;
                goto LABEL_192;
              }
            }
          }
        }

        else
        {
          sub_1000BA694();
          if (v15 && v45 == v129)
          {

            if (v329 > v22 >> 14)
            {
              goto LABEL_129;
            }
          }

          else
          {
            sub_1000BA5E4(v43, v127, v128, v129);
            sub_1000BA654();
            if ((v43 & 1) != 0 && v23 < v329)
            {
LABEL_129:
              sub_1000BA4F4();
              sub_1001F6D98();
              v158 = v157;
              sub_1000BA5FC();
              if (v15 && v160 == v162)
              {

LABEL_145:
                switch(v328)
                {
                  case 1:
                    if (v24 < v4 >> 14)
                    {
                      goto LABEL_197;
                    }

                    v256 = sub_1000BA554(v164, v165, v166, v167, v168, v169, v170, v171, v307, v314, v321, v328, v329, v330);
                    v257 = sub_1000BA534(v256);
                    v263 = sub_1000BA468(v257, v258, v259, v260, v261, v262);
                    if ((sub_1000BA618(v263, v264, v265, v266, v267, v268, v269, v270, v313, v320, v327) & 1) == 0)
                    {
                      v303 = sub_1000BA4B0();
                      sub_1000327EC(v303, v304, v305, v8);
                    }

                    sub_1000BA524();
                    if (v119)
                    {
                      sub_1000BA4D0(v271);
                    }

                    sub_1000BA498();
                    v155 = -127;
                    goto LABEL_127;
                  case 2:
                    v230 = sub_1000BA504(v164, v165, v166, v167, v168, v169);
                    if ((sub_1000BA618(v230, v231, v232, v233, v234, v235, v236, v237, v307, v314, v321) & 1) == 0)
                    {
                      v290 = sub_1000BA4B0();
                      sub_1000327EC(v290, v291, v292, v328);
                      v8 = v293;
                    }

                    v238 = *(v8 + 16);
                    sub_1000BA688();
                    if (v119)
                    {
                      v294 = sub_10004B2F4(v239);
                      sub_1000327EC(v294, v295, v296, v8);
                      v8 = v148;
                    }

                    *(v8 + 16) = v158;
                    v154 = v8 + 40 * v238;
                    *(v154 + 32) = 0u;
                    *(v154 + 48) = 0u;
                    goto LABEL_162;
                  case 3:
                    if (v24 < v4 >> 14)
                    {
                      goto LABEL_199;
                    }

                    v240 = sub_1000BA554(v164, v165, v166, v167, v168, v169, v170, v171, v307, v314, v321, v328, v329, v330);
                    v241 = sub_1000BA534(v240);
                    v247 = sub_1000BA468(v241, v242, v243, v244, v245, v246);
                    if ((sub_1000BA618(v247, v248, v249, v250, v251, v252, v253, v254, v312, v319, v326) & 1) == 0)
                    {
                      v297 = sub_1000BA4B0();
                      sub_1000327EC(v297, v298, v299, v8);
                    }

                    sub_1000BA524();
                    if (v119)
                    {
                      sub_1000BA4D0(v255);
                    }

                    sub_1000BA498();
                    v155 = -126;
                    goto LABEL_127;
                  case 4:
                    v220 = sub_1000BA504(v164, v165, v166, v167, v168, v169);
                    if ((sub_1000BA618(v220, v221, v222, v223, v224, v225, v226, v227, v307, v314, v321) & 1) == 0)
                    {
                      v283 = sub_1000BA4B0();
                      sub_1000327EC(v283, v284, v285, v328);
                      v8 = v286;
                    }

                    v228 = *(v8 + 16);
                    sub_1000BA688();
                    if (v119)
                    {
                      v287 = sub_10004B2F4(v229);
                      sub_1000327EC(v287, v288, v289, v8);
                      v8 = v148;
                    }

                    *(v8 + 16) = v158;
                    v154 = v8 + 40 * v228;
                    *(v154 + 32) = 1;
                    *(v154 + 40) = 0;
                    *(v154 + 48) = 0;
                    *(v154 + 56) = 0;
LABEL_162:
                    v155 = -125;
                    goto LABEL_127;
                  default:
                    if (v24 < v4 >> 14)
                    {
                      goto LABEL_198;
                    }

                    v204 = sub_1000BA554(v164, v165, v166, v167, v168, v169, v170, v171, v307, v314, v321, v328, v329, v330);
                    v205 = sub_1000BA534(v204);
                    v211 = sub_1000BA468(v205, v206, v207, v208, v209, v210);
                    if ((sub_1000BA618(v211, v212, v213, v214, v215, v216, v217, v218, v311, v318, v325) & 1) == 0)
                    {
                      v300 = sub_1000BA4B0();
                      sub_1000327EC(v300, v301, v302, v8);
                    }

                    sub_1000BA524();
                    if (v119)
                    {
                      sub_1000BA4D0(v219);
                    }

                    sub_1000BA498();
                    v155 = 0x80;
                    break;
                }

                goto LABEL_127;
              }

              sub_1000BA5E4(v159, v160, v161, v162);
              v164 = sub_1000BA654();
              if (v43)
              {
                goto LABEL_145;
              }
            }
          }

          sub_1000BA4C0();
          v172 = sub_1001F6C48();
          sub_1000BA594(v172);
LABEL_135:
          v5 = 2;
          v6 = v21;
        }
      }
    }

    else
    {
      sub_1000BA4C0();
      sub_1001F6D98();
      sub_1000BA5FC();
      if (!v15 || v27 != v29)
      {
        goto LABEL_52;
      }

      if (v329 <= v22 >> 14)
      {
        goto LABEL_53;
      }

      sub_1000BA4F4();
      sub_1001F6D98();
      sub_1000BA5FC();
      v40 = v15 && v37 == v39;
      v41 = v4 >> 14;
      if (v40)
      {

        if (v10 != v4 >> 14)
        {
          if (v10 < v41)
          {
            goto LABEL_195;
          }

          v104 = sub_1000BA6A0(v96, v97, v98, v99, v100, v101, v102, v103, v307, v314, v321, v328, v329, v330);
          v110 = sub_1000BA468(v104, v105, v106, v107, v108, v109);
          if ((sub_1000BA618(v110, v111, v112, v113, v114, v115, v116, v117, v308, v315, v322) & 1) == 0)
          {
            v275 = sub_1000BA4B0();
            sub_1000327EC(v275, v276, v277, v8);
          }

          sub_1000BA524();
          if (v119)
          {
            sub_1000BA4D0(v118);
          }

          sub_1000BA498();
          *(v120 + 64) = 0;
          sub_1000BA66C(v121, v122, v123, v124, v125, v126);
        }

        sub_1000BA4F4();
        v4 = sub_1001F6C48();
        v6 = 0;
        v331 = v4;
        v332 = v4;
        v5 = 1;
        sub_1000BA630();
LABEL_110:
        v8 = 1;
        v9 = v25;
      }

      else
      {
        sub_1000BA5E4(v36, v37, v38, v39);
        sub_1000BA654();
        sub_1000BA4F4();
        sub_1001F6D98();
        sub_1000BA5FC();
        if (v15 && v27 == v29)
        {

          if (v10 != v4 >> 14)
          {
            if (v10 < v41)
            {
              goto LABEL_196;
            }

            v181 = sub_1000BA6A0(v173, v174, v175, v176, v177, v178, v179, v180, v307, v314, v321, v328, v329, v330);
            v187 = sub_1000BA468(v181, v182, v183, v184, v185, v186);
            if ((sub_1000BA618(v187, v188, v189, v190, v191, v192, v193, v194, v310, v317, v324) & 1) == 0)
            {
              v280 = sub_1000BA4B0();
              sub_1000327EC(v280, v281, v282, v8);
            }

            sub_1000BA524();
            if (v119)
            {
              sub_1000BA4D0(v195);
            }

            sub_1000BA498();
            *(v196 + 64) = 0;
            sub_1000BA66C(v197, v198, v199, v200, v201, v202);
          }

          sub_1000BA4F4();
          v4 = sub_1001F6C48();
          v6 = 0;
          v331 = v4;
          v332 = v4;
          v8 = 1;
          sub_1000BA630();
          v5 = 2;
          v9 = v203;
        }

        else
        {
LABEL_52:
          sub_1000BA5E4(v26, v27, v28, v29);
          sub_1000BA654();
LABEL_53:
          sub_1000BA4C0();
          v9 = sub_1001F6C48();
          v5 = 0;
          v331 = v9;
          v6 = v21;
        }
      }
    }
  }

  sub_1000B9B5C(&v331, &v332, &v333, v330, a2);
  swift_beginAccess();
  return v333;
}

unint64_t sub_1000B9B5C(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v8 = *a1;
  swift_beginAccess();
  result = *a2;
  if (v8 >> 14 != *a2 >> 14)
  {
    if (v8 >> 14 < result >> 14)
    {
      __break(1u);
    }

    else
    {
      v10 = sub_1001F6DB8();
      v12 = v11;
      v14 = v13;
      v16 = v15;
      swift_beginAccess();
      sub_100031F5C();
      v17 = *(*a3 + 16);
      sub_100032190(v17, v18, v19, v20, v21, v22);
      v23 = *a3;
      *(v23 + 16) = v17 + 1;
      v24 = v23 + 40 * v17;
      *(v24 + 32) = v10;
      *(v24 + 40) = v12;
      *(v24 + 48) = v14;
      *(v24 + 56) = v16;
      *(v24 + 64) = 0;
      *a3 = v23;
      return swift_endAccess();
    }
  }

  return result;
}

void *sub_1000B9C60(uint64_t a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 16);
  if (*a2 < v4)
  {
    v6 = a1;
    v126 = a1 + 32;
    v123 = _swiftEmptyArrayStorage;
    v125 = *(a1 + 16);
    while (1)
    {
      if (v3 >= v4)
      {
        goto LABEL_70;
      }

      v7 = (v126 + 40 * v3);
      v8 = *v7;
      v9 = v7[1];
      v11 = v7[2];
      v10 = v7[3];
      v12 = *(v7 + 32);
      if (!(v12 >> 6))
      {

        v17 = v123;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_1000BA4B0();
          sub_100032824(v97, v98, v99, v123);
          v17 = v100;
        }

        v19 = *(v17 + 16);
        v18 = *(v17 + 24);
        v2 = v19 + 1;
        if (v19 >= v18 >> 1)
        {
          v101 = sub_10004B2F4(v18);
          sub_100032824(v101, v102, v103, v17);
        }

        sub_1000BA5A4();
        *(v20 + 72) = 0;
        goto LABEL_16;
      }

      if (v12 >> 6 == 1)
      {

        v13 = v123;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = sub_1000BA4B0();
          sub_100032824(v90, v91, v92, v123);
          v13 = v93;
        }

        v15 = *(v13 + 16);
        v14 = *(v13 + 24);
        v2 = v15 + 1;
        if (v15 >= v14 >> 1)
        {
          v94 = sub_10004B2F4(v14);
          sub_100032824(v94, v95, v96, v13);
        }

        sub_1000BA5A4();
        *(v16 + 72) = 1;
LABEL_16:
        v6 = a1;
        goto LABEL_64;
      }

      v21 = v12 & 0x3F;
      if (v21 == 3)
      {
        if (!(v11 | v9 | v8 | v10) || (v8 == 1 ? (v22 = (v11 | v9 | v10) == 0) : (v22 = 0), v22))
        {
          sub_1000BA608();
          sub_1000BA29C(v119, v120, v121, v122, 3u);
          return v123;
        }
      }

      else if (v21 == 1)
      {
        return v123;
      }

      v23 = _swiftEmptyArrayStorage;
      while (1)
      {
        v24 = v3 >= v4;
        if (v3 >= v4)
        {
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
          JUMPOUT(0x1000BA154);
        }

        v25 = (v126 + 40 * v3);
        v26 = *(v25 + 32);
        if ((v26 & 0x80000000) == 0)
        {
          goto LABEL_57;
        }

        v28 = *v25;
        v27 = v25[1];
        v30 = v25[2];
        v29 = v25[3];
        v31 = *(v25 + 32);
        v2 = v26 & 0x3F;
        if (v24)
        {
          break;
        }

LABEL_33:
        *a2 = v3 + 1;
        v36 = sub_10009944C();
        sub_1000BA29C(v36, v37, v38, v39, v2);
        v40 = sub_1000B9C60(v6, a2);
        switch(v2)
        {
          case 0:
            v41 = sub_10009944C();
            v45 = 0;
            goto LABEL_36;
          case 1:
            v41 = sub_10009944C();
            v45 = 1;
LABEL_36:
            sub_1000BA29C(v41, v42, v43, v44, v45);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v56 = sub_1000BA4B0();
              sub_100032808(v56, v57, v58, v23);
              v23 = v59;
            }

            v47 = v23[2];
            v46 = v23[3];
            v2 = v47 + 1;
            if (v47 >= v46 >> 1)
            {
              v60 = sub_10004B2F4(v46);
              sub_100032808(v60, v61, v62, v23);
              v23 = v63;
            }

            v48 = sub_10009944C();
            sub_1000BA23C(v48, v49, v50, v51, v31);
            v23[2] = v2;
            v52 = &v23[6 * v47];
            v52[4] = v28;
            v52[5] = v27;
            v52[6] = v30;
            v52[7] = v29;
            v52[8] = v40;
            *(v52 + 72) = 0;
            v6 = a1;
            v4 = v125;
            goto LABEL_47;
          case 2:
            v76 = sub_10009944C();
            sub_1000BA29C(v76, v77, v78, v79, 2u);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v112 = sub_1000BA4B0();
              sub_100032824(v112, v113, v114, v115);
              v123 = v116;
            }

            v2 = v123[2];
            v80 = v123[3];
            if (v2 >= v80 >> 1)
            {
              sub_100032824(v80 > 1, v2 + 1, 1, v123);
              v123 = v117;
            }

            v81 = sub_10009944C();
            sub_1000BA23C(v81, v82, v83, v84, v31);
            v123[2] = v2 + 1;
            v85 = &v123[6 * v2];
            v85[4] = v28;
            v85[5] = v27;
            v85[6] = v30;
            v85[7] = v29;
            v85[8] = v40;
            *(v85 + 72) = 3;
            goto LABEL_56;
          case 3:
            if (v30 | v27 | v28 | v29)
            {

              goto LABEL_56;
            }

            v4 = v125;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v64 = sub_1000BA4B0();
              sub_100032808(v64, v65, v66, v23);
              v23 = v67;
            }

            v53 = v23[2];
            sub_1000BA688();
            if (v24)
            {
              v68 = sub_10004B2F4(v54);
              sub_100032808(v68, v69, v70, v23);
              v23 = v71;
            }

            v23[2] = v2;
            v55 = &v23[6 * v53];
            v55[4] = v40;
            *(v55 + 5) = 0u;
            *(v55 + 7) = 0u;
            *(v55 + 72) = 1;
LABEL_47:
            v3 = *a2;
            if (*a2 >= v4)
            {
              goto LABEL_57;
            }

            break;
          default:
            JUMPOUT(0);
        }
      }

      if (!(v30 | v27 | v28 | v29))
      {
        break;
      }

      sub_1000BA608();
      sub_1000BA23C(v72, v73, v74, v75, v31);
LABEL_56:
      v4 = v125;
LABEL_57:
      if (v23[2])
      {
        v86 = v123;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_1000BA4B0();
          sub_100032824(v104, v105, v106, v123);
          v86 = v107;
        }

        v87 = *(v86 + 16);
        sub_1000BA688();
        if (v24)
        {
          v108 = sub_10004B2F4(v88);
          sub_100032824(v108, v109, v110, v86);
          v86 = v111;
        }

        *(v86 + 16) = v2;
        v123 = v86;
        v89 = v86 + 48 * v87;
        *(v89 + 32) = v23;
        *(v89 + 40) = 0u;
        *(v89 + 56) = 0u;
        *(v89 + 72) = 2;
      }

      else
      {
      }

LABEL_64:
      v3 = *a2 + 1;
      if (__OFADD__(*a2, 1))
      {
        goto LABEL_71;
      }

      *a2 = v3;
      if (v3 >= v4)
      {
        return v123;
      }
    }

    sub_1000BA608();
    sub_1000BA23C(v32, v33, v34, v35, v31);
    goto LABEL_33;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000BA164(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v8 = a1 == a5 && a2 == a6;
  if (v8 && !(a3 >> 16) && v7 == a4 >> 16)
  {
    return 1;
  }

  else
  {
    return sub_1001F7E18() & 1;
  }
}

uint64_t sub_1000BA1CC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (a1 == a3 && a2 == a4 && v5 == v6)
  {
    return 1;
  }

  else
  {
    return sub_1001F7E18() & 1;
  }
}

uint64_t sub_1000BA23C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  switch(a5 >> 6)
  {
    case 2:
      result = sub_1000BA284(result, a2, a3, a4, a5 & 0x3F);
      break;
    case 3:
      return result;
    default:

      break;
  }

  return result;
}

uint64_t sub_1000BA284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 2u)
  {
  }

  return result;
}

double sub_1000BA29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1000BA2B4(uint64_t a1)
{
  if ((*(a1 + 32) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_1000BA2DC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3E && *(a1 + 33))
    {
      v2 = *a1 + 61;
    }

    else
    {
      v2 = (*(a1 + 32) & 0x3C | (*(a1 + 32) >> 6)) ^ 0x3F;
      if (v2 >= 0x3D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1000BA324(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 62;
    *(result + 8) = 0;
    if (a3 >= 0x3E)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1000BA3B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 33))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000BA3F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000BA43C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1000BA468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return swift_beginAccess();
}

void sub_1000BA498()
{
  *(v2 + 16) = v6;
  v7 = (v2 + 40 * v1);
  v7[4] = v0;
  v7[5] = v3;
  v7[6] = v4;
  v7[7] = v5;
}

void sub_1000BA4D0(unint64_t a1@<X8>)
{

  sub_1000327EC(a1 > 1, v2, 1, v1);
}

uint64_t sub_1000BA504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return swift_beginAccess();
}

uint64_t sub_1000BA534(uint64_t a1)
{

  return sub_1001F6DB8();
}

uint64_t sub_1000BA554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return sub_1001F6C48();
}

uint64_t sub_1000BA574(uint64_t a1)
{

  return sub_1001F7E18();
}

void sub_1000BA5A4()
{
  *(v4 + 16) = v0;
  v7 = (v4 + 48 * v2);
  v7[4] = v3;
  v7[5] = v6;
  v7[6] = v5;
  v7[7] = v1;
  v7[8] = 0;
}

uint64_t sub_1000BA5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1001F7EA8();
}

uint64_t sub_1000BA618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1000BA654()
{
}

uint64_t sub_1000BA66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  *(v7 - 88) = v6;

  return swift_endAccess();
}

uint64_t sub_1000BA6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return sub_1001F6DB8();
}

uint64_t sub_1000BA6C0(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_10027B350;
  v7._object = a2;
  v4 = sub_1001F7BD8(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000BA720(char a1)
{
  if (a1)
  {
    return 0x73656963696C6F70;
  }

  else
  {
    return 1634497893;
  }
}

uint64_t sub_1000BA774@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000BA6C0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1000BA7A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000BA720(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000BA7D8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000BA6C0(a1, a2);
  *a3 = result;
  return result;
}

_UNKNOWN **sub_1000BA800@<X0>(void *a1@<X8>)
{
  result = sub_1000BA714();
  *a1 = result;
  return result;
}

uint64_t sub_1000BA828(uint64_t a1)
{
  v2 = sub_1000BB5AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000BA864(uint64_t a1)
{
  v2 = sub_1000BB5AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BA8A0(void *a1)
{
  v2 = swift_allocObject();
  sub_1000BA8F0(a1);
  return v2;
}

void *sub_1000BA8F0(void *a1)
{
  v13[0] = sub_1000183C4(&qword_1002B31B8, &qword_100209A08);
  sub_10001A278();
  v5 = v4;
  sub_10001E844();
  __chkstk_darwin(v6);
  v8 = v13 - v7;
  sub_10001AE68(a1, a1[3]);
  sub_1000BB5AC();
  sub_1001F8178();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v5;
    v15 = 0;
    v10 = v13[0];
    v1[2] = sub_1001F7C78();
    v1[3] = v11;
    sub_1000183C4(&qword_1002B3180, &qword_1002099F0);
    v14 = 1;
    sub_1000BB654(&qword_1002B31C0, &qword_1002B31C8, &unk_100209970, &protocol conformance descriptor for <A> [A]);
    sub_1001F7CB8();
    (*(v9 + 8))(v8, v10);
    v1[4] = v13[1];
  }

  sub_100019CCC(a1);
  return v1;
}

uint64_t sub_1000BAB3C(void *a1)
{
  v4 = v1;
  v6 = sub_1000183C4(&qword_1002B3170, &qword_1002099E8);
  sub_10001A278();
  v8 = v7;
  sub_10001E844();
  __chkstk_darwin(v9);
  sub_100056624();
  sub_10001AE68(a1, a1[3]);
  v10 = sub_1000BB5AC();
  sub_1000566A8(&type metadata for OctaneAppPolicies.CodingKeys, v11, v10);
  v12 = *(v4 + 16);
  v13 = *(v4 + 24);
  v15 = 0;
  sub_1000BBBC8(v12, v13, &v15);
  if (!v2)
  {
    sub_1000183C4(&qword_1002B3180, &qword_1002099F0);
    sub_1000BB654(&qword_1002B3188, &qword_1002B3190, &unk_100209948, &protocol conformance descriptor for <A> [A]);
    sub_1001F7DC8();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t sub_1000BACD0()
{

  return v0;
}

uint64_t sub_1000BACF8()
{
  sub_1000BACD0();

  return swift_deallocClassInstance();
}

unint64_t sub_1000BAD50(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027B3C8;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000BADA8(char a1)
{
  if (!a1)
  {
    return 0x656C61636F6CLL;
  }

  if (a1 == 1)
  {
    return 0x52557963696C6F70;
  }

  return 0x65547963696C6F70;
}

uint64_t sub_1000BAE04@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000BA8A0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1000BAE78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000BAD50(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1000BAEA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000BADA8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000BAEDC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000BAD50(a1, a2);
  *a3 = result;
  return result;
}

_UNKNOWN **sub_1000BAF04@<X0>(void *a1@<X8>)
{
  result = sub_1000BAD9C();
  *a1 = result;
  return result;
}

uint64_t sub_1000BAF2C(uint64_t a1)
{
  v2 = sub_1000BB600();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000BAF68(uint64_t a1)
{
  v2 = sub_1000BB600();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BAFA4(void *a1)
{
  v2 = swift_allocObject();
  sub_1000BAFF4(a1);
  return v2;
}

void *sub_1000BAFF4(void *a1)
{
  v4 = v1;
  v6 = sub_1000183C4(&qword_1002B31A8, &qword_100209A00);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v7);
  sub_100056624();
  sub_10001AE68(a1, a1[3]);
  sub_1000BB600();
  sub_1001F8178();
  if (!v2)
  {
    sub_1000BBBE4();
    v8 = sub_1001F7C78();
    v12 = v8;
    v13 = v9;
    sub_1000E0BC4(v8, v9, &v22);
    v14 = v23;
    if (v23)
    {
      v15 = v22;
      v26 = v24;
      v27 = v25;

      *(v4 + 16) = v15;
      *(v4 + 24) = v14;
      *(v4 + 32) = v26;
      *(v4 + 48) = v27;
      sub_1000BBBE4();
      *(v4 + 56) = sub_1001F7C78();
      *(v4 + 64) = v16;
      sub_1000BBBE4();
      v17 = sub_1001F7C78();
      v19 = v18;
      sub_1000BBBF4();
      v21(v20, v6);
      *(v4 + 72) = v17;
      *(v4 + 80) = v19;
      goto LABEL_4;
    }

    v28 = 0;
    sub_1001F77B8(42);

    v29._countAndFlagsBits = v12;
    v29._object = v13;
    sub_1001F6CA8(v29);

    v30._object = 0x8000000100226ED0;
    v30._countAndFlagsBits = 0xD000000000000014;
    sub_1001F6CA8(v30);
    sub_1001F7848();
    swift_allocError();
    sub_100019C4C(&qword_1002B31B0, &qword_1002B31A8, &qword_100209A00, &protocol conformance descriptor for KeyedDecodingContainer<A>);
    sub_1001F7828();

    swift_willThrow();
    sub_1000BBBF4();
    v10(v3, v6);
  }

  swift_deallocPartialClassInstance();
LABEL_4:
  sub_100019CCC(a1);
  return v4;
}

uint64_t sub_1000BB370(void *a1)
{
  v4 = v1;
  v6 = sub_1000183C4(&qword_1002B3198, &qword_1002099F8);
  sub_10001A278();
  v8 = v7;
  sub_10001E844();
  __chkstk_darwin(v9);
  sub_100056624();
  sub_10001AE68(a1, a1[3]);
  v10 = sub_1000BB600();
  sub_1000566A8(&type metadata for OctaneAppPolicies.Policy.CodingKeys, v11, v10);
  v12 = v4[2];
  v13 = v4[3];
  v21 = 0;
  sub_1000BBBC8(v12, v13, &v21);
  if (!v2)
  {
    v14 = v4[7];
    v15 = v4[8];
    v20 = 1;
    sub_1000BBBC8(v14, v15, &v20);
    v16 = v4[9];
    v17 = v4[10];
    v19 = 2;
    sub_1000BBBC8(v16, v17, &v19);
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t sub_1000BB4B0()
{

  return v0;
}

uint64_t sub_1000BB504()
{
  sub_1000BB4B0();

  return swift_deallocClassInstance();
}

uint64_t sub_1000BB55C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000BAFA4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1000BB5AC()
{
  result = qword_1002B3178;
  if (!qword_1002B3178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3178);
  }

  return result;
}

unint64_t sub_1000BB600()
{
  result = qword_1002B31A0;
  if (!qword_1002B31A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B31A0);
  }

  return result;
}

uint64_t sub_1000BB654(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100019BC4(&qword_1002B3180, &qword_1002099F0);
    sub_1000BB6DC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000BB6DC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OctaneAppPolicies.Policy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OctaneAppPolicies.Policy.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000BB7E8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OctaneAppPolicies.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000BB8ECLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000BB96C()
{
  result = qword_1002B31E0;
  if (!qword_1002B31E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B31E0);
  }

  return result;
}

unint64_t sub_1000BBA08()
{
  result = qword_1002B31F8;
  if (!qword_1002B31F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B31F8);
  }

  return result;
}

unint64_t sub_1000BBA60()
{
  result = qword_1002B3200;
  if (!qword_1002B3200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3200);
  }

  return result;
}

unint64_t sub_1000BBAB8()
{
  result = qword_1002B3208;
  if (!qword_1002B3208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3208);
  }

  return result;
}

unint64_t sub_1000BBB10()
{
  result = qword_1002B3210;
  if (!qword_1002B3210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3210);
  }

  return result;
}

unint64_t sub_1000BBB68()
{
  result = qword_1002B3218;
  if (!qword_1002B3218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3218);
  }

  return result;
}

uint64_t sub_1000BBBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1001F7D88();
}

uint64_t sub_1000BBC28()
{
  sub_1000B3DE0();
  sub_1001F6C28();
}

uint64_t sub_1000BBCA0(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 4:
      sub_1000C94CC();
      break;
    case 6:
      sub_1000C98F4();
      break;
    case 7:
      sub_1000C9454();
      sub_1000C99E8();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BBDE8(void *a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_1000C98F4();
      break;
    case 2:
    case 3:
      sub_1000C9578();
      break;
    case 4:
      sub_1000C99D0();
      break;
    case 5:
      sub_1000C9454();
      break;
    case 6:
      sub_1000C9758();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BBF08(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 4:
    case 5:
      sub_1000C9BB8();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BC07C()
{
  sub_1000C99F4();
  switch(v0)
  {
    case 3:
      sub_1000C9BC4();
      break;
    case 5:
      sub_1000C94CC();
      break;
    case 6:
      sub_1000C95EC();
      break;
    case 7:
      sub_1000C9454();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BC178(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1000C994C();
    sub_1000C9804();
  }

  else
  {
    sub_1000C95C8();
  }

  sub_1001F6C28();
}

uint64_t sub_1000BC1DC()
{
  sub_1000C93D4();
  switch(v0)
  {
    case 1:
      sub_1000C99B8();
      break;
    case 2:
      sub_1000C93BC();
      break;
    case 3:
      sub_1000C937C();
      break;
    case 4:
      sub_1000C9738();
      break;
    case 6:
    case 7:
      sub_1000C9454();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BC2C0(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      sub_1000C9718();
      break;
    case 3:
      sub_1000C95A4();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BC38C()
{
  sub_1000C93D4();
  switch(v0)
  {
    case 1:
      sub_1000C93BC();
      break;
    case 2:
      sub_1000C937C();
      break;
    case 3:
      sub_1000C9454();
      sub_1000C99E8();
      break;
    case 4:
      sub_1000C99B8();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BC43C(uint64_t a1, char a2)
{
  sub_1001F6C28();
}

uint64_t sub_1000BC49C()
{
  sub_1000C9C80();
  sub_1001F6C28();
}

uint64_t sub_1000BC500(uint64_t a1, char a2)
{
  sub_1001F6C28();
}

uint64_t sub_1000BC5EC()
{
  sub_1000B3DE0();
  sub_1001F6C28();
}

uint64_t sub_1000BC658(void *a1, char a2)
{
  switch(a2)
  {
    case 2:
      sub_1000C9454();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BC784(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      sub_1000C9454();
      sub_1000C99E8();
      break;
    case 4:
      sub_1000C9784();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BC884(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      sub_1000C9784();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BC940()
{
  sub_1000B3DE0();
  sub_1001F6C28();
}

uint64_t sub_1000BC9A4(uint64_t a1, char a2)
{
  sub_1001F6C28();
}

uint64_t sub_1000BC9E4()
{
  sub_1000B3DE0();
  sub_1001F6C28();
}

uint64_t sub_1000BCA48()
{
  sub_1000C99F4();
  switch(v0)
  {
    case 3:
      sub_1000C9BC4();
      break;
    case 5:
      sub_1000C94CC();
      break;
    case 6:
      sub_1000C95EC();
      break;
    case 7:
      sub_1000C98E4();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BCB30(uint64_t a1, char a2)
{
  sub_1001F6C28();
}

uint64_t sub_1000BCB90(uint64_t a1, char a2)
{
  sub_1001F6C28();
}

uint64_t sub_1000BCC14(uint64_t a1, char a2)
{
  sub_1001F6C28();
}

uint64_t sub_1000BCD08(void *a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 4:
      sub_1000C9454();
      break;
    case 5:
      sub_1000C99E8();
      sub_1000C9454();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BCE48(uint64_t a1, char a2)
{
  sub_1001F6C28();
}

uint64_t sub_1000BCEC4(uint64_t a1, char a2)
{
  sub_1001F6C28();
}

uint64_t sub_1000BCF84(uint64_t a1, unsigned __int8 a2)
{
  sub_1001F6C28();
}

uint64_t sub_1000BD028(uint64_t a1, char a2)
{
  sub_1001F6C28();
}

uint64_t sub_1000BD098(uint64_t a1, uint64_t a2)
{
  sub_1000C9718();
  switch(v2)
  {
    case 2:
      sub_1000C95A4();
      break;
    case 4:
    case 5:
    case 6:
      sub_1000C9454();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BD1AC(uint64_t a1, char a2)
{
  sub_1001F6C28();
}

uint64_t sub_1000BD224(uint64_t a1, uint64_t a2)
{
  sub_1000C98F4();
  switch(v2)
  {
    case 1:
    case 2:
      sub_1000C9578();
      break;
    case 4:
      sub_1000C9454();
      break;
    case 5:
      sub_1000C9758();
      break;
    case 7:
      sub_1000C98E4();
      break;
    case 8:
      sub_1000C99D0();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BD388(uint64_t a1, char a2)
{
  sub_1001F6C28();
}

uint64_t sub_1000BD3F4(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    sub_1000C97CC();
  }

  sub_1001F6C28();
}

uint64_t sub_1000BD484(uint64_t a1, char a2)
{
  sub_1001F6C28();
}

uint64_t sub_1000BD530(uint64_t a1, char a2)
{
  sub_1001F6C28();
}

uint64_t sub_1000BD590(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    sub_1000C9C60();
  }

  sub_1001F6C28();
}

uint64_t sub_1000BD614(uint64_t a1, char a2)
{
  sub_1001F6C28();
}

uint64_t sub_1000BD678(uint64_t a1, char a2)
{
  sub_1001F6C28();
}

uint64_t sub_1000BD720()
{
  sub_1000C953C();
  switch(v0)
  {
    case 1:
    case 2:
    case 3:
      break;
    default:
      sub_1000C9454();
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BD7F4(void *a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 2:
      sub_1000C9454();
      break;
    case 3:
      sub_1000C9344();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BD8B0()
{
  sub_1000C9B5C();
  sub_1001F6C28();
}

uint64_t sub_1000BD910()
{
  sub_1000C93D4();
  switch(v0)
  {
    case 1:
      sub_1000C937C();
      break;
    case 2:
      sub_1000C93BC();
      break;
    case 3:
      sub_1000C9738();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BDA2C()
{
  sub_1000C93D4();
  switch(v0)
  {
    case 1:
      sub_1000C937C();
      break;
    case 2:
      sub_1000C93BC();
      break;
    case 3:
      sub_1000C9454();
      sub_1000C99E8();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BDAB8()
{
  sub_1000C9934();
  switch(v0)
  {
    case 1:
      sub_1000C9368();
      break;
    case 2:
      sub_1000C9344();
      break;
    case 3:
      sub_1000C9454();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BDBC4(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    sub_1000C953C();
  }

  sub_1001F6C28();
}

uint64_t sub_1000BDC30(void *a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_1000C9454();
      break;
    case 2:
    case 3:
      sub_1000C9454();
      sub_1000C9C80();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BDD10(uint64_t a1, char a2)
{
  sub_1001F6C28();
}

uint64_t sub_1000BDE08()
{
  sub_1000C953C();
  sub_1001F6C28();
}

uint64_t sub_1000BDF44(uint64_t a1, char a2)
{
  sub_1001F6C28();
}

uint64_t sub_1000BDFA4(uint64_t a1, char a2)
{
  sub_1001F6C28();
}

uint64_t sub_1000BE008(uint64_t a1, uint64_t a2)
{
  sub_1000C9578();
  switch(v2)
  {
    case 1:
      sub_1000C9454();
      break;
    case 2:
      sub_1000C9578();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BE0CC(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    sub_1000C9C4C();
  }

  sub_1001F6C28();
}

uint64_t sub_1000BE184(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1000C9634();
    sub_1000C97E8();
  }

  else
  {
    sub_1000C9610();
  }

  sub_1001F6C28();
}

uint64_t sub_1000BE1F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = a3(a2);
  sub_1000C9A68(v3, v4);
}

uint64_t sub_1000BE23C(uint64_t a1, uint64_t a2)
{
  sub_1000C9578();
  switch(v2)
  {
    case 1:
      sub_1000C9578();
      break;
    default:
      break;
  }

  sub_1001F6C28();
}

uint64_t sub_1000BE308(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = HTTPMethod.rawValue.getter(a2, a3);
  sub_1000C9A68(v3, v4);
}

Swift::Int sub_1000BE370(uint64_t a1, Swift::UInt a2)
{
  sub_1001F8068();
  sub_1001F8088(a2);
  return sub_1001F80D8();
}

Swift::Int sub_1000BE3B4(uint64_t a1)
{
  sub_1000C96E8(a1);
  sub_1000B3DE0();
  if (v1)
  {
    v4 = 0x2E746E756F636361;
  }

  else
  {
    v4 = 0xD00000000000001BLL;
  }

  sub_1000C9700(v2, v4, v3);

  return sub_1001F80D8();
}

Swift::Int sub_1000BE544(uint64_t a1)
{
  sub_1000C96E8(a1);
  if (v1)
  {
    sub_1000C994C();
    sub_1000C9804();
  }

  else
  {
    sub_1000C95C8();
  }

  sub_1000C9700(v2, v3, v4);

  return sub_1001F80D8();
}

Swift::Int sub_1000BE5F4(uint64_t a1)
{
  v2 = sub_1000C96E8(a1);
  if (v1)
  {
    v4 = 0x6C65636E6163;
  }

  else
  {
    v4 = 7041889;
  }

  sub_1000C9700(v2, v4, v3);

  return sub_1001F80D8();
}

Swift::Int sub_1000BE658(uint64_t a1)
{
  sub_1000C96E8(a1);
  sub_1000C9C80();
  sub_1001F6C28();

  return sub_1001F80D8();
}

Swift::Int sub_1000BE6E0(uint64_t a1)
{
  sub_1000C96E8(a1);
  sub_1000B3DE0();
  if (v1)
  {
    v4 = 0xD00000000000001CLL;
  }

  else
  {
    v4 = 0x6449656C646E7562;
  }

  sub_1000C9700(v2, v4, v3);

  return sub_1001F80D8();
}

Swift::Int sub_1000BE7C0(uint64_t a1)
{
  sub_1000C96E8(a1);
  sub_1000B3DE0();
  if (v1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 1634497893;
  }

  sub_1000C9700(v2, v4, v3);

  return sub_1001F80D8();
}

Swift::Int sub_1000BE828(uint64_t a1)
{
  sub_1000C96E8(a1);
  sub_1001F6C28();

  return sub_1001F80D8();
}

Swift::Int sub_1000BE87C(uint64_t a1)
{
  sub_1000C96E8(a1);
  sub_1000B3DE0();
  if (v1)
  {
    v4 = 1634497893;
  }

  else
  {
    v4 = 0xD000000000000010;
  }

  sub_1000C9700(v2, v4, v3);

  return sub_1001F80D8();
}

Swift::Int sub_1000BE8FC(uint64_t a1)
{
  v2 = sub_1000C96E8(a1);
  if (v1)
  {
    v4 = 0x7865646E69;
  }

  else
  {
    v4 = 1701869940;
  }

  sub_1000C9700(v2, v4, v3);

  return sub_1001F80D8();
}

Swift::Int sub_1000BE960(uint64_t a1)
{
  v2 = sub_1000C96E8(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x64656C62616E65;
    }

    else
    {
      v4 = 0x746E6572727563;
    }
  }

  else
  {
    v4 = 1701667182;
  }

  sub_1000C9700(v2, v4, v3);

  return sub_1001F80D8();
}

Swift::Int sub_1000BEA18(uint64_t a1)
{
  v2 = sub_1000C96E8(a1);
  if (v1)
  {
    v4 = 0x616B636174537369;
  }

  else
  {
    v4 = 0x6C69626967696C65;
  }

  sub_1000C9700(v2, v4, v3);

  return sub_1001F80D8();
}

Swift::Int sub_1000BEAB0(uint64_t a1)
{
  v2 = sub_1000C96E8(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x676E697473697865;
    }

    else
    {
      v4 = 0x64657269707865;
    }
  }

  else
  {
    v4 = 7824750;
  }

  sub_1000C9700(v2, v4, v3);

  return sub_1001F80D8();
}

Swift::Int sub_1000BEB58(uint64_t a1)
{
  v2 = sub_1000C96E8(a1);
  if (v1)
  {
    v4 = 0x626967696C457369;
  }

  else
  {
    v4 = 0x4449726566666FLL;
  }

  sub_1000C9700(v2, v4, v3);

  return sub_1001F80D8();
}

Swift::Int sub_1000BEBE4(uint64_t a1)
{
  v2 = sub_1000C96E8(a1);
  if (v1)
  {
    v4 = 0x636E657265666572;
  }

  else
  {
    v4 = 0x4449726566666FLL;
  }

  sub_1000C9700(v2, v4, v3);

  return sub_1001F80D8();
}

Swift::Int sub_1000BECA8(uint64_t a1)
{
  v2 = sub_1000C96E8(a1);
  if (v1)
  {
    v4 = 0x4C4157454E4552;
  }

  else
  {
    v4 = 0x4553414843525550;
  }

  sub_1000C9700(v2, v4, v3);

  return sub_1001F80D8();
}

Swift::Int sub_1000BED18(uint64_t a1)
{
  v2 = sub_1000C96E8(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x595F53415F594150;
    }

    else
    {
      v4 = 0x465F50555F594150;
    }
  }

  else
  {
    sub_1000C97CC();
  }

  sub_1000C9700(v2, v4, v3);

  return sub_1001F80D8();
}

Swift::Int sub_1000BEDAC(uint64_t a1)
{
  v2 = sub_1000C96E8(a1);
  if (v1)
  {
    v4 = 0x535F594C494D4146;
  }

  else
  {
    v4 = 0x4553414843525550;
  }

  sub_1000C9700(v2, v4, v3);

  return sub_1001F80D8();
}

Swift::Int sub_1000BEE5C(uint64_t a1)
{
  v2 = sub_1000C96E8(a1);
  if (v1)
  {
    v4 = 0x4C4452445453;
  }

  else
  {
    v4 = 1363432531;
  }

  sub_1000C9700(v2, v4, v3);

  return sub_1001F80D8();
}

Swift::Int sub_1000BEEC0(uint64_t a1)
{
  v2 = sub_1000C96E8(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x52557963696C6F70;
    }

    else
    {
      v4 = 0x65547963696C6F70;
    }
  }

  else
  {
    sub_1000C9C60();
  }

  sub_1000C9700(v2, v4, v3);

  return sub_1001F80D8();
}

Swift::Int sub_1000BEF48(uint64_t a1)
{
  v2 = sub_1000C96E8(a1);
  if (v1)
  {
    v4 = 0x73656963696C6F70;
  }

  else
  {
    v4 = 1634497893;
  }

  sub_1000C9700(v2, v4, v3);

  return sub_1001F80D8();
}

Swift::Int sub_1000BEFB0(uint64_t a1)
{
  v2 = sub_1000C96E8(a1);
  if (v1)
  {
    v4 = 0x6269726373627553;
  }

  else
  {
    v4 = 7954768;
  }

  sub_1000C9700(v2, v4, v3);

  return sub_1001F80D8();
}

Swift::Int sub_1000BF01C()
{
  sub_1001F8068();
  sub_1001F8088(2uLL);
  return sub_1001F80D8();
}

Swift::Int sub_1000BF0BC(uint64_t a1)
{
  sub_1000C96E8(a1);
  sub_1000C9B5C();
  sub_1001F6C28();

  return sub_1001F80D8();
}

Swift::Int sub_1000BF140(uint64_t a1)
{
  sub_1000C96E8(a1);
  sub_1001F8088(v1 + 10);
  return sub_1001F80D8();
}

Swift::Int sub_1000BF184(uint64_t a1)
{
  sub_1000C96E8(a1);
  sub_1001F8088(v1 + 1000);
  return sub_1001F80D8();
}

Swift::Int sub_1000BF254(uint64_t a1)
{
  v2 = sub_1000C96E8(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x6C65636E6143;
    }

    else
    {
      v4 = 27503;
    }
  }

  else
  {
    sub_1000C953C();
  }

  sub_1000C9700(v2, v4, v3);

  return sub_1001F80D8();
}

Swift::Int sub_1000BF2C8(uint64_t a1)
{
  sub_1000C96E8(a1);
  sub_1001F80B8(v1);
  return sub_1001F80D8();
}

Swift::Int sub_1000BF364(uint64_t a1)
{
  sub_1000C96E8(a1);
  sub_1001F8088(v1);
  return sub_1001F80D8();
}

Swift::Int sub_1000BF3A0(uint64_t a1)
{
  sub_1000C96E8(a1);
  sub_1001F8088(qword_10020A7C0[v1]);
  return sub_1001F80D8();
}

Swift::Int sub_1000BF3EC(uint64_t a1)
{
  sub_1000C96E8(a1);
  sub_1001F8088(v1 - 1);
  return sub_1001F80D8();
}

Swift::Int sub_1000BF42C(uint64_t a1)
{
  sub_1000C96E8(a1);
  sub_1001F8088(v1 + 1);
  return sub_1001F80D8();
}

Swift::Int sub_1000BF484(uint64_t a1)
{
  sub_1000C96E8(a1);
  sub_1001F8088(v1 & 1);
  return sub_1001F80D8();
}

Swift::Int sub_1000BF4D0(uint64_t a1)
{
  v2 = sub_1000C96E8(a1);
  if (v1)
  {
    v4 = 2036429415;
  }

  else
  {
    v4 = 0x6B63616C62;
  }

  sub_1000C9700(v2, v4, v3);

  return sub_1001F80D8();
}

Swift::Int sub_1000BF534(uint64_t a1)
{
  v2 = sub_1000C96E8(a1);
  if (v1)
  {
    v4 = 0x656772616CLL;
  }

  else
  {
    v4 = 0x6C616D726F6ELL;
  }

  sub_1000C9700(v2, v4, v3);

  return sub_1001F80D8();
}

Swift::Int sub_1000BF5B4(uint64_t a1)
{
  v2 = sub_1000C96E8(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x65756C6176;
    }

    else
    {
      v4 = 0x7475626972747461;
    }
  }

  else
  {
    sub_1000C9C4C();
  }

  sub_1000C9700(v2, v4, v3);

  return sub_1001F80D8();
}

Swift::Int sub_1000BF654()
{
  sub_1001F8068();
  sub_1001F6C28();
  return sub_1001F80D8();
}

Swift::Int sub_1000BF6A8(uint64_t a1)
{
  sub_1000C96E8(a1);
  if (v1)
  {
    sub_1000C9634();
    sub_1000C97E8();
  }

  else
  {
    sub_1000C9610();
  }

  sub_1000C9700(v2, v3, v4);

  return sub_1001F80D8();
}

Swift::Int sub_1000BF720(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_1001F8068();
  v5 = a3(a2);
  sub_1000C9A8C(v5, v6, v7);

  return sub_1001F80D8();
}

Swift::Int sub_1000BF78C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  sub_1001F8068();
  a3(v6, a2);
  return sub_1001F80D8();
}

Swift::Int sub_1000BF7D8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1001F8068();
  v5 = HTTPMethod.rawValue.getter(a2, a3);
  sub_1000C9A8C(v5, v6, v7);

  return sub_1001F80D8();
}

Swift::Int sub_1000BF84C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1001F8068();
  sub_1001F6C28();
  return sub_1001F80D8();
}

uint64_t sub_1000BF898(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = a1;
    sub_1001F8068();
    sub_1001F8088(v4);
    v5 = sub_1001F80D8();
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + v7) != v4);
  }

  return v2;
}

uint64_t sub_1000BF948(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1000BEAB0(*(a2 + 40)), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    while (1)
    {
      if (*(*(a2 + 48) + v6))
      {
        if (*(*(a2 + 48) + v6) == 1)
        {
          v8 = 0xE800000000000000;
          v9 = 0x676E697473697865;
        }

        else
        {
          v8 = 0xE700000000000000;
          v9 = 0x64657269707865;
        }
      }

      else
      {
        v8 = 0xE300000000000000;
        v9 = 7824750;
      }

      if (a1)
      {
        v10 = a1 == 1 ? 0x676E697473697865 : 0x64657269707865;
        v11 = a1 == 1 ? 0xE800000000000000 : 0xE700000000000000;
      }

      else
      {
        v11 = 0xE300000000000000;
        v10 = 7824750;
      }

      if (v9 == v10 && v8 == v11)
      {
        break;
      }

      v13 = sub_1001F7EA8();

      if ((v13 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v13 & 1;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

BOOL sub_1000BFAC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1001F8068();
  sub_1001F6C28();
  v6 = sub_1001F80D8();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_1001F7EA8();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t sub_1000BFBD0()
{
  v0 = sub_1000C5470(27, &type metadata for Int);
  if (v0 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!v0)
  {
    v2 = 0;
  }

  if (v1)
  {
    return 2;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000BFC34(void *a1, uint64_t a2)
{
  v3 = (v2 + *a1);
  if (!v3[1])
  {
    v4 = sub_1000C5388(a2);
    if (v5)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0xE000000000000000;
    }

    *v3 = v6;
    v3[1] = v7;
  }

  return sub_100037A2C();
}

uint64_t sub_1000BFCB0@<X0>(_OWORD *a1@<X8>)
{
  result = sub_1000C5388(20);
  if (v3)
  {
    sub_10014B7DC(result, v3, v14);
    v12 = v14[1];
    v13 = v14[0];
    v10 = v14[3];
    v11 = v14[2];
    v9 = v14[4];

    v5 = v9;
    v4 = v10;
    v7 = v11;
    v6 = v12;
    v8 = v13;
  }

  else
  {
    v8 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
    v4 = 0uLL;
    v5 = 0uLL;
  }

  *a1 = v8;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v4;
  a1[4] = v5;
  return result;
}

void sub_1000BFD40()
{
  v0 = sub_1000C5470(21, &type metadata for Double);
  if ((v2 & 1) == 0)
  {
    sub_1001F7468(v1, *&v0);
  }
}

double sub_1000BFDA8()
{
  sub_1001F6508();
  sub_10001A278();
  __chkstk_darwin(v1);
  sub_100023510();
  sub_1000C9BD8();
  v2 = (v0 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___purchaseDate);
  if ((*(v0 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___purchaseDate + 8) & 1) == 0)
  {
    return *v2;
  }

  *&v3 = COERCE_DOUBLE(sub_1000C5470(11, &type metadata for Double));
  if (v4)
  {
    sub_1001F64E8();
    sub_1001F6428();
    v6 = v5;
    v7 = sub_100037B7C();
    v8(v7);
  }

  else
  {
    v6 = *&v3;
  }

  *v2 = v6;
  v2[8] = 0;
  return v6;
}

uint64_t sub_1000BFEB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1000BFF04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LODWORD(v2) = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 = v4 | v2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1000BFF88()
{
  sub_1000C9ACC();
  v204 = v3;
  v205 = v4;
  sub_1000C9BAC();
  v189 = v5;
  v190 = sub_1001F6508();
  sub_10001A278();
  v185 = v6;
  __chkstk_darwin(v7);
  sub_100023510();
  v184 = (v9 - v8);
  v10 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  v11 = sub_100056658(v10);
  __chkstk_darwin(v11);
  v183 = &v181 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v182 = &v181 - v14;
  __chkstk_darwin(v15);
  sub_1000C98B4();
  sub_1000183C4(&unk_1002BC430, &qword_10020A068);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100200C80;
  *(v16 + 32) = 0x6E6F69746361;
  *(v16 + 40) = 0xE600000000000000;
  sub_1000C22AC();
  sub_1000C9B98();
  switch(v17)
  {
    case 1:
      sub_1000C9BFC();
      break;
    case 2:
      sub_1000C9BAC();
      sub_1000C9B84();
      break;
    case 3:
      sub_1000C99A0();
      break;
    default:
      break;
  }

  sub_1000C9940();
  *(v16 + 48) = v19;
  *(v16 + 56) = v18;
  *(v16 + 96) = sub_1000C9C8C();
  *(v16 + 120) = &type metadata for UInt;
  *(v16 + 128) = 0x64656873696E6966;
  *(v16 + 136) = 0xE800000000000000;
  *(v16 + 144) = sub_1000C2448() & 1;
  sub_1000C9B3C();
  *(v16 + 168) = v21;
  *(v16 + 176) = v20;
  *(v16 + 184) = 0xE900000000000044;
  *(v16 + 192) = sub_1000BFC34(&OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___productID, 9);
  *(v16 + 200) = v22;
  sub_1000C9B28();
  *(v16 + 216) = type metadata for String;
  *(v16 + 224) = v23;
  *(v16 + 232) = 0xEC00000065746144;
  *(v16 + 240) = sub_1000BFDA8();
  *(v16 + 264) = &type metadata for Double;
  *(v16 + 272) = 0x6574617473;
  *(v16 + 280) = 0xE500000000000000;
  *(v16 + 288) = sub_1000C43D8();
  *(v16 + 312) = &type metadata for Int;
  *(v16 + 320) = 1701869940;
  *(v16 + 328) = 0xE400000000000000;
  v24 = sub_1000C257C();
  v25 = 0x62616D75736E6F43;
  v26 = 0xEA0000000000656CLL;
  switch(v24)
  {
    case 1:
      sub_1000999EC();
      break;
    case 2:
      sub_1000B3DE0();
      v25 = v1 + 4;
      break;
    case 3:
      v26 = 0x8000000100221B90;
      v25 = v1 + 2;
      break;
    default:
      break;
  }

  *(v16 + 336) = v25;
  *(v16 + 344) = v26;
  sub_1000B3DE0();
  v27 = v1 - 3;
  *(v16 + 360) = type metadata for String;
  *(v16 + 368) = v1 - 3;
  *(v16 + 376) = v28;
  *(v16 + 384) = sub_1000C2750() & 1;
  sub_1000C9C24();
  *(v16 + 408) = &type metadata for Bool;
  *(v16 + 416) = v29;
  *(v16 + 424) = 0xE900000000000064;
  *(v16 + 432) = sub_1000BFBB0() & 1;
  sub_1000C9C10();
  *(v16 + 456) = &type metadata for Bool;
  *(v16 + 464) = v30;
  *(v16 + 472) = 0xE800000000000000;
  v31 = sub_1000C2550();
  *(v16 + 504) = &type metadata for Int;
  *(v16 + 480) = v31;
  sub_1000C9924();
  v32 = sub_1001F69B8();
  v33 = sub_1000C22E4();
  if (v33 == 3)
  {
    v34 = v32;
  }

  else
  {
    v200 = &type metadata for Int;
    *&v199 = v33 - 1;
    sub_10003708C(&v199, v201);
    swift_isUniquelyReferenced_nonNull_native();
    *&v197[0] = v32;
    sub_1000C9778();
    sub_1001E5A4C();
    v34 = *&v197[0];
  }

  sub_1000C5470(8, &type metadata for UInt);
  sub_1000C9940();
  v188 = 0x62616D75736E6F43;
  if ((v36 & 1) == 0)
  {
    v200 = &type metadata for UInt;
    sub_1000C96B0(v35);
    swift_isUniquelyReferenced_nonNull_native();
    *&v197[0] = v34;
    sub_1000C9778();
    sub_1001E5A4C();
    v34 = *&v197[0];
  }

  v37 = sub_1000C5470(12, &type metadata for Double);
  if ((v38 & 1) == 0)
  {
    v200 = &type metadata for Double;
    sub_1000C96B0(v37);
    swift_isUniquelyReferenced_nonNull_native();
    *&v197[0] = v34;
    sub_1001E5A4C();
    v34 = *&v197[0];
  }

  v186 = OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___type;
  switch(*(v0 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___type))
  {
    case 1:
      sub_1000995FC();
      sub_100099938();
      goto LABEL_19;
    case 2:
      sub_1000C9874();
      goto LABEL_19;
    case 3:
      v187 = 0x8000000100221B90;

      goto LABEL_22;
    default:
LABEL_19:
      v187 = 0x8000000100221B90;
      v39 = sub_1001F7EA8();

      if (v39)
      {
LABEL_22:
        v42 = sub_1000C5470(4, &type metadata for Double);
        if ((v43 & 1) == 0)
        {
          v200 = &type metadata for Double;
          sub_1000C96B0(v42);
          swift_isUniquelyReferenced_nonNull_native();
          *&v197[0] = v34;
          sub_1000C9778();
          sub_1001E5A4C();
        }

        v41 = v0;
        v44 = sub_1000C5388(15);
        if (v45)
        {
          v200 = type metadata for String;
          *&v199 = v44;
          *(&v199 + 1) = v45;
          sub_1000C93EC();
          sub_1000C9460();
          sub_1000C9820();
          sub_1000C9AFC(v46, v47, v48, v49);
          v50 = *&v197[0];
        }

        else
        {
          v51 = sub_1000C9CEC();
          if (v52)
          {
            v53 = v51;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v201[0] = v0;
            v55 = *(v0 + 24);
            sub_1000183C4(&unk_1002BCC50, &qword_10020A110);
            v56 = isUniquelyReferenced_nonNull_native;
            v41 = v0;
            sub_1001F7A98(v56, v55);
            v50 = *&v201[0];

            sub_10003708C((*(v50 + 56) + 32 * v53), &v199);
            sub_1001F7AB8();
          }

          else
          {
            sub_1000C97A4();
            v50 = v0;
          }

          sub_1000C8970(&v199, &qword_1002B34A0, &qword_1002009E0);
        }

        v57 = sub_1000C6260();
        v200 = &type metadata for Bool;
        LOBYTE(v199) = v57 & 1;
        sub_10003708C(&v199, v201);
        swift_isUniquelyReferenced_nonNull_native();
        *&v197[0] = v50;
        sub_1000C9BAC();
        sub_1000C9778();
        sub_1001E5A4C();
        v40 = *&v197[0];
        sub_1000C3914(29, v2);
        if (sub_1000C9CCC())
        {
          sub_1000C8970(v2, &unk_1002B3450, &qword_100202EE0);
          sub_10011108C(v32 + 2);
          if (v58)
          {
            sub_1000C9D44();
            sub_1000C9470();
            v59 = sub_1000183C4(&unk_1002BCC50, &qword_10020A110);
            sub_1000C951C(v59);
            sub_1000C94FC();
            sub_1000C97B0();
            sub_1000377A8();
            sub_1001F7AB8();
          }

          else
          {
            sub_1000C97A4();
          }

          v66 = v182;
          sub_1000C8970(&v199, &qword_1002B34A0, &qword_1002009E0);
          v62 = v190;
        }

        else
        {
          sub_1000C9B70();
          v60 = v184;
          v61(v184, v2, v41);
          sub_1000C8970(v2, &unk_1002B3450, &qword_100202EE0);
          v62 = v41;
          sub_1001F6428();
          v64 = v63;
          sub_1000C9940();
          (*(v65 + 8))(v60, v41);
          v200 = &type metadata for Double;
          *&v199 = v64;
          sub_1000C93EC();
          sub_1000C9460();
          sub_1000C9820();
          sub_1001E5A4C();
          v40 = *&v197[0];
          v66 = v182;
        }

        sub_1000C3914(30, v66);
        if (sub_10001C990(v66, 1, v62))
        {
          sub_1000C8970(v66, &unk_1002B3450, &qword_100202EE0);
          sub_10011108C(0x52676E696C6C6962);
          if (v67)
          {
            sub_1000C9D44();
            sub_1000C9470();
            v68 = sub_1000183C4(&unk_1002BCC50, &qword_10020A110);
            sub_1000C951C(v68);
            sub_1000C94FC();
            sub_1000C97B0();
            sub_1000377A8();
            sub_1001F7AB8();
          }

          else
          {
            sub_1000C97A4();
          }

          sub_1000C8970(&v199, &qword_1002B34A0, &qword_1002009E0);
        }

        else
        {
          v69 = v184;
          v70 = v185;
          (*(v185 + 16))(v184, v66, v62);
          sub_1000C8970(v66, &unk_1002B3450, &qword_100202EE0);
          sub_1001F6428();
          v72 = v71;
          (*(v70 + 8))(v69, v62);
          v200 = &type metadata for Double;
          *&v199 = v72;
          sub_1000C93EC();
          sub_1000C94E4();
          sub_1000C9778();
          sub_1001E5A4C();
          v40 = *&v197[0];
        }

        v73 = sub_1000C152C();
        switch(v73)
        {
          case 1:
            v73 = 1;
            goto LABEL_47;
          case 2:
            v73 = 2;
            goto LABEL_47;
          case 3:
            v73 = 10;
            goto LABEL_47;
          case 4:
            v73 = 11;
            goto LABEL_47;
          case 5:
            sub_1000C9CEC();
            if (v179)
            {
              sub_1000C9D44();
              sub_1000C9470();
              v180 = sub_1000183C4(&unk_1002BCC50, &qword_10020A110);
              sub_1000C951C(v180);
              sub_1000C94FC();
              sub_1000C97B0();
              sub_1000377A8();
              sub_1001F7AB8();
            }

            else
            {
              sub_1000C97A4();
            }

            sub_1000C8970(&v199, &qword_1002B34A0, &qword_1002009E0);
            goto LABEL_48;
          default:
LABEL_47:
            v200 = &type metadata for Int;
            *&v199 = v73;
            sub_1000C93EC();
            sub_1000C9460();
            sub_1000C9820();
            sub_1000C9AFC(v74, v75, v76, v77);
            v40 = *&v197[0];
LABEL_48:
            v78 = sub_1000C5470(25, &type metadata for UInt);
            if (v79)
            {
              sub_10011108C(v32 - 1);
              if (v80)
              {
                sub_1000C9D44();
                sub_1000C9470();
                v81 = sub_1000183C4(&unk_1002BCC50, &qword_10020A110);
                sub_1000C951C(v81);
                sub_1000C94FC();
                sub_1000C97B0();
                sub_1000377A8();
                sub_1001F7AB8();
              }

              else
              {
                sub_1000C97A4();
              }

              v82 = v183;
              sub_1000C8970(&v199, &qword_1002B34A0, &qword_1002009E0);
            }

            else
            {
              v200 = &type metadata for UInt;
              *&v199 = v78;
              sub_1000C93EC();
              sub_1000C94E4();
              sub_1000C9820();
              sub_1001E5A4C();
              v40 = *&v197[0];
              v82 = v183;
            }

            sub_1000C3914(33, v82);
            if (sub_1000C9CCC())
            {
              sub_1000C8970(v82, &unk_1002B3450, &qword_100202EE0);
              v83 = sub_10011108C(v32 + 8);
              if (v84)
              {
                v85 = v83;
                swift_isUniquelyReferenced_nonNull_native();
                *&v201[0] = v40;
                v40 = *(v40 + 24);
                v86 = sub_1000183C4(&unk_1002BCC50, &qword_10020A110);
                sub_1000C9D0C(v86);
                sub_1000C9CAC();
                sub_10003708C((*(v40 + 56) + 32 * v85), &v199);
                sub_1000C9484();
                sub_1001F7AB8();
              }

              else
              {
                sub_1000C97A4();
              }

              sub_1000C8970(&v199, &qword_1002B34A0, &qword_1002009E0);
            }

            else
            {
              sub_1000C9B70();
              v87 = v27;
              v88 = v184;
              v89(v184, v82, v41);
              sub_1000C8970(v82, &unk_1002B3450, &qword_100202EE0);
              sub_1001F6428();
              v91 = v90;
              v92 = v88;
              v27 = v87;
              (*(v32 + 8))(v92, v41);
              v200 = &type metadata for Double;
              *&v199 = v91;
              sub_1000C93EC();
              sub_1000C9460();
              sub_1000C9820();
              sub_1001E5A4C();
              v40 = *&v197[0];
            }

            break;
        }
      }

      else
      {
        v40 = v34;
        v41 = v0;
      }

      v93 = sub_1000C5470(3, &type metadata for Double);
      if ((v94 & 1) == 0)
      {
        v200 = &type metadata for Double;
        *&v199 = v93;
        sub_1000C93EC();
        sub_1000C94E4();
        sub_1000C9BAC();
        sub_1001E5A4C();
        v40 = *&v197[0];
        v95 = sub_1000BFBD0();
        if (v95 == 2)
        {
          v96 = sub_10011108C(v27);
          if (v97)
          {
            v98 = v96;
            swift_isUniquelyReferenced_nonNull_native();
            *&v201[0] = v40;
            v40 = *(v40 + 24);
            v99 = sub_1000183C4(&unk_1002BCC50, &qword_10020A110);
            sub_1000C9D0C(v99);
            sub_1000C9CAC();
            sub_10003708C((*(v40 + 56) + 32 * v98), &v199);
            sub_1000C9484();
            sub_1001F7AB8();
          }

          else
          {
            sub_1000C97A4();
          }

          sub_1000C8970(&v199, &qword_1002B34A0, &qword_1002009E0);
        }

        else
        {
          v200 = &type metadata for Int;
          *&v199 = v95;
          sub_1000C93EC();
          sub_1000C9460();
          sub_1000C9820();
          sub_1001E5A4C();
          v40 = *&v197[0];
        }
      }

      v100 = sub_1000C5670();
      if (v100 != 22)
      {
        v101 = sub_1000878CC(v100);
        v200 = type metadata for String;
        *&v199 = v101;
        *(&v199 + 1) = v102;
        sub_1000C93EC();
        v103 = sub_1000C9460();
        sub_1000C9AFC(v103, v104, 0x8000000100227030, v105);
        v40 = *&v197[0];
      }

      v106 = sub_1000C2E3C();
      if (v106)
      {
        v107 = v106;
        v108 = v106[2];
        if (v108)
        {
          v185 = v40;
          v190 = v41;
          *&v201[0] = _swiftEmptyArrayStorage;
          sub_1000375CC(0, v108, 0);
          v184 = v107;
          v109 = (v107 + 8);
          v110 = *&v201[0];
          do
          {
            v111 = *v109;
            v109 += 40;
            switch(v111)
            {
              case 1:
                sub_1000C98D4();
                *&v199 = v136;
                *(&v199 + 1) = 0xE600000000000000;
                v137 = sub_1000C9304();
                sub_10008A298(v137, v138, v139, v140, 1u);
                v210._countAndFlagsBits = sub_1000C9484();
                sub_1001F6CA8(v210);
                sub_1000998B0();
                sub_1000C9AB0();
                v117 = sub_1000C9304();
                v121 = 1;
                break;
              case 2:
                sub_1000C9904();
                *&v199 = v126;
                *(&v199 + 1) = 0xE500000000000000;
                v127 = sub_1000C9304();
                sub_10008A298(v127, v128, v129, v130, 2u);
                v208._countAndFlagsBits = sub_1000C9484();
                sub_1001F6CA8(v208);
                sub_1000998B0();
                sub_1000C9AB0();
                v117 = sub_1000C9304();
                v121 = 2;
                break;
              case 3:
                sub_1000C9558();
                *&v199 = v131 & 0xFFFFFFFFFFFFLL | 0x3A6B000000000000;
                *(&v199 + 1) = 0xE800000000000000;
                v132 = sub_1000C9304();
                sub_10008A298(v132, v133, v134, v135, 3u);
                v209._countAndFlagsBits = sub_1000C9484();
                sub_1001F6CA8(v209);
                sub_1000998B0();
                sub_1000C9AB0();
                v117 = sub_1000C9304();
                v121 = 3;
                break;
              case 4:
                *&v199 = 979661939;
                *(&v199 + 1) = 0xE400000000000000;
                v122 = sub_1000C9304();
                sub_10008A298(v122, v123, v124, v125, 4u);
                v207._countAndFlagsBits = sub_1000C9484();
                sub_1001F6CA8(v207);
                v117 = sub_1000C9304();
                v121 = 4;
                break;
              default:
                sub_1000C9914();
                *&v199 = v112;
                *(&v199 + 1) = 0xE600000000000000;
                v113 = sub_1000C9304();
                sub_10008A298(v113, v114, v115, v116, 0);
                v206._countAndFlagsBits = sub_1000C9484();
                sub_1001F6CA8(v206);
                v117 = sub_1000C9304();
                v121 = 0;
                break;
            }

            sub_100099050(v117, v118, v119, v120, v121);
            v141 = v199;
            *&v201[0] = v110;
            v143 = v110[2];
            v142 = v110[3];
            if (v143 >= v142 >> 1)
            {
              v144 = sub_10005669C(v142);
              sub_1000375CC(v144, v143 + 1, 1);
              v110 = *&v201[0];
            }

            v110[2] = v143 + 1;
            *&v110[2 * v143 + 4] = v141;
            --v108;
          }

          while (v108);

          v41 = v190;
        }

        else
        {

          v110 = _swiftEmptyArrayStorage;
        }

        v200 = sub_1000183C4(&qword_1002ACA10, qword_1001FEBF0);
        *&v199 = v110;
        sub_1000C93EC();
        sub_1000C94E4();
        sub_1000C9778();
        sub_1001E5A4C();
        v40 = *&v197[0];
      }

      v145 = sub_1000C1570(v106);
      if (v146)
      {
        v200 = type metadata for String;
        *&v199 = v145;
        *(&v199 + 1) = v146;
        sub_1000C93EC();
        sub_1000C94E4();
        sub_1000C9778();
        sub_1001E5A4C();
        v40 = *&v197[0];
      }

      sub_1000C56AC(v197);
      if (v198 != 255)
      {
        v201[0] = v197[0];
        v201[1] = v197[1];
        v202 = v198;
        v147 = sub_1000C5C28();
        v149 = v148;
        sub_1000C8970(v197, &qword_1002B3310, &qword_10020A0A0);
        v200 = type metadata for String;
        *&v199 = v147;
        *(&v199 + 1) = v149;
        sub_10003708C(&v199, &v193);
        swift_isUniquelyReferenced_nonNull_native();
        *&v192[0] = v40;
        sub_1000C98E4();
        sub_1001E5A4C();
        v40 = *&v192[0];
      }

      switch(*(v41 + v186))
      {
        case 1:
          v188 = 0x75736E6F436E6F4ELL;
          sub_1000999EC();
          v189 = v150;
          goto LABEL_92;
        case 2:
          v188 = 0xD000000000000017;
          v189 = 0x8000000100221B70;
          goto LABEL_92;
        case 3:

          goto LABEL_93;
        default:
LABEL_92:
          v152 = sub_1001F7EA8();

          if (v152)
          {
LABEL_93:
            v153 = sub_1000C1570(v151);
            v155 = *(v41 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___productID + 8);
            v156 = v155 == 0;
            if (v154)
            {
              if (v155)
              {
                if (v153 == *(v41 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___productID) && v154 == v155)
                {
                  v156 = 1;
                }

                else
                {
                  v156 = sub_1001F7EA8();
                }
              }

              else
              {
                v156 = 0;
              }
            }

            v200 = &type metadata for Bool;
            LOBYTE(v199) = v156 & 1;
            sub_10003708C(&v199, &v193);
            v158 = swift_isUniquelyReferenced_nonNull_native();
            *&v192[0] = v40;
            sub_1000C9AFC(&v193, v159, 0x8000000100227230, v158);
            v40 = *&v192[0];
          }

          sub_1000BFCB0(&v199);
          if (*(&v199 + 1))
          {
            v203 = v199;
            v196 = type metadata for String;
            v193 = v199;
            sub_10003708C(&v193, v192);
            sub_1000552A0(&v203, &v191);
            swift_isUniquelyReferenced_nonNull_native();
            v191 = v40;
            sub_1001E5A4C();
            sub_1000C8970(&v199, &qword_1002AEDE0, &unk_100207230);
            v40 = v191;
          }

          sub_1000BFD40();
          if ((v162 & 0x100000000) == 0)
          {
            v163 = v160;
            v164 = v161;
            v165 = v162;
            v166 = HIDWORD(v160);
            v167 = v41;
            v168 = v40;
            v169 = HIWORD(v160);
            v170 = v161 >> 16;
            v171 = HIDWORD(v161);
            v190 = v167;
            v172 = HIWORD(v161);
            v189 = v162 >> 16;
            type metadata accessor for Decimal(0);
            v196 = v173;
            LODWORD(v193) = v163;
            WORD2(v193) = v166;
            WORD3(v193) = v169;
            WORD4(v193) = v164;
            WORD5(v193) = v170;
            WORD6(v193) = v171;
            HIWORD(v193) = v172;
            v194 = v165;
            v195 = v189;
            sub_10003708C(&v193, v192);
            swift_isUniquelyReferenced_nonNull_native();
            v191 = v168;
            sub_1000C9578();
            sub_1001E5A4C();
            v40 = v191;
          }

          v174 = sub_1000C2D8C();
          v175 = 3157553;
          if (v174)
          {
            v175 = 3157554;
          }

          v196 = type metadata for String;
          *&v193 = v175;
          *(&v193 + 1) = 0xE300000000000000;
          sub_10003708C(&v193, v192);
          v176 = swift_isUniquelyReferenced_nonNull_native();
          v191 = v40;
          sub_1000C9AFC(v192, v177, 0x8000000100227090, v176);
          return v191;
      }
  }
}

uint64_t sub_1000C152C()
{
  v0 = sub_1000C5470(32, &type metadata for Int);
  if (v1)
  {
    return 5;
  }

  return sub_1000C4888(v0);
}

void *sub_1000C1570(uint64_t a1)
{
  result = sub_1000C2E3C();
  if (result)
  {
    sub_1000C45A0(result, &v2);

    if (v3 == 4)
    {
      return v2;
    }

    else
    {
      if (v3 != 255)
      {
        sub_1000C8970(&v2, &qword_1002B3310, &qword_10020A0A0);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1000C15EC(uint64_t a1)
{
  v1 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  sub_100056658(v1);
  sub_10001E844();
  __chkstk_darwin(v2);
  v4 = &v14 - v3;
  v5 = sub_1001F6508();
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100023510();
  v11 = v10 - v9;
  if (sub_1000C1760())
  {
    sub_1000C3914(29, v4);
    if (sub_10001C990(v4, 1, v5) != 1)
    {
      (*(v7 + 32))(v11, v4, v5);
      v12 = sub_1001F6498();
      (*(v7 + 8))(v11, v5);
      return v12 & 1;
    }

    sub_1000C8970(v4, &unk_1002B3450, &qword_100202EE0);
  }

  v12 = 0;
  return v12 & 1;
}

uint64_t sub_1000C1760()
{
  v3 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  sub_100056658(v3);
  sub_10001E844();
  __chkstk_darwin(v4);
  sub_1000C9BD8();
  v5 = sub_1001F6508();
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000C9858();
  __chkstk_darwin(v9);
  sub_1000C98B4();
  sub_1000C3914(30, v0);
  if (sub_10001C990(v0, 1, v5) == 1)
  {
    sub_1000C8970(v0, &unk_1002B3450, &qword_100202EE0);
    v10 = 0;
  }

  else
  {
    v11 = sub_1000C9B14();
    v12(v11);
    sub_1001F64E8();
    sub_100075518();
    v10 = sub_1001F6498();
    v13 = *(v7 + 8);
    v13(v1, v5);
    v13(v2, v5);
  }

  return v10 & 1;
}

uint64_t sub_1000C18DC()
{
  sub_1000C9880();
  sub_1000C257C();
  sub_1000995FC();
  sub_100099938();
  switch(v0)
  {
    case 1:
      goto LABEL_5;
    case 2:
      sub_1000C9874();
      sub_1000C9358();
      goto LABEL_5;
    case 3:
      sub_1000C9874();
LABEL_5:
      sub_1000C9C38();
      v1 = sub_1001F7EA8();

      if (v1)
      {
        goto LABEL_14;
      }

      if (qword_1002AC438 != -1)
      {
        swift_once();
      }

      v2 = qword_1002B3220;
      v3 = sub_1000C43D8();
      if ((sub_1000BF898(v3, v2) & 1) == 0)
      {
        goto LABEL_14;
      }

      sub_1001F6428();
      v5 = v4;
      if (sub_1000BFBB0())
      {
        v6 = COERCE_DOUBLE(sub_1000C5470(3, &type metadata for Double));
        if ((v7 & 1) == 0 && v5 > v6)
        {
          goto LABEL_14;
        }
      }

      v8 = COERCE_DOUBLE(sub_1000C5470(4, &type metadata for Double));
      if ((v9 & 1) == 0 && v5 > v8)
      {
        goto LABEL_14;
      }

      result = 1;
      break;
    default:

LABEL_14:
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_1000C1A68()
{
  v1 = (v0 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___id);
  if (*(v0 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___id + 8) != 1)
  {
    return *v1;
  }

  result = sub_1000C5470(7, &type metadata for UInt);
  if (v3)
  {
    result = 0;
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

void sub_1000C1ACC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000183C4(&qword_1002ADB80, &qword_1002008B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001FE9E0;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 64) = 4;

    sub_1000C6320();
  }

  else if (sub_1000C2E3C())
  {

    sub_1000C6320();
  }
}

uint64_t sub_1000C1B88(unsigned __int8 a1)
{
  v2 = a1;
  switch(a1)
  {
    case 1u:
      v2 = 1;
      goto LABEL_6;
    case 2u:
      v2 = 2;
      goto LABEL_6;
    case 3u:
      v2 = 10;
      goto LABEL_6;
    case 4u:
      v2 = 11;
      goto LABEL_6;
    case 5u:
      v5 = 0u;
      v6 = 0u;
      goto LABEL_7;
    default:
LABEL_6:
      *(&v6 + 1) = &type metadata for Int;
      *&v5 = v2;
LABEL_7:
      sub_1001C738C(&v5, 32);
      result = sub_1000C8970(&v5, &qword_1002B34A0, &qword_1002009E0);
      v4 = *(v1 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels);
      if ((v4 & 1) == 0)
      {
        *(v1 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels) = v4 | 1;
      }

      return result;
  }
}

uint64_t sub_1000C1C6C(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_1000C1C90(unsigned __int8 a1)
{
  v2 = *v1;
  if ((*v1 & a1) != 0)
  {
    *v1 = v2 & ~a1;
  }

  return sub_1000C9A5C((v2 & a1));
}

uint64_t sub_1000C1CBC(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_1000C1CD4(char a1)
{
  v2 = *v1;
  *v1 |= a1;
  return sub_1000C9A5C((v2 & a1));
}

uint64_t sub_1000C1D48(uint64_t a1)
{
  sub_1000C9B98();
  switch(v3)
  {
    case 1:
      sub_1000C9BFC();
      break;
    case 2:
      sub_1000C9B84();
      break;
    case 3:
      sub_1000C99A0();
      break;
    default:
      break;
  }

  v5[3] = type metadata for String;
  v5[0] = v2;
  v5[1] = v1;
  sub_1001C738C(v5, 0);
  return sub_1000C8970(v5, &qword_1002B34A0, &qword_1002009E0);
}

void sub_1000C1DF0(uint64_t a1, char a2)
{
  if (a2)
  {
    a1 = sub_1000C9594();
  }

  v4[0] = a1;
  sub_1000C954C();
  sub_1001C738C(v3, 12);
  sub_1000C8970(v4, &qword_1002B34A0, &qword_1002009E0);
  if ((*(v2 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels) & 2) == 0)
  {
    sub_1000C997C(OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels);
  }
}

void sub_1000C1E5C(char a1)
{
  v3 = &type metadata for Bool;
  v2[0] = a1;
  sub_1001C738C(v2, 24);
  sub_1000C8970(v2, &qword_1002B34A0, &qword_1002009E0);
  if ((*(v1 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels) & 2) == 0)
  {
    sub_1000C997C(OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels);
  }
}

uint64_t sub_1000C1EC0(char a1)
{
  result = 7959874;
  switch(a1)
  {
    case 1:
      result = 0x77656E6552;
      break;
    case 2:
      result = 0x6F6C6E776F646552;
      break;
    case 3:
      result = 0x65646172677055;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000C1F4C()
{
  sub_1000C9880();
  v3 = sub_100075518();
  v5 = sub_1000183C4(v3, v4);
  sub_100056658(v5);
  sub_10001E844();
  __chkstk_darwin(v6);
  sub_1000C982C(v7, v13);
  v8 = sub_1001F6508();
  if (sub_10001C990(v1, 1, v8) == 1)
  {
    sub_1000C8970(v1, &unk_1002B3450, &qword_100202EE0);
    v13 = 0u;
    v14 = 0u;
  }

  else
  {
    sub_1001F6428();
    *(&v14 + 1) = &type metadata for Double;
    *&v13 = v9;
    sub_10007E2C8();
    (*(v10 + 8))(v1, v8);
  }

  sub_1001C738C(&v13, 33);
  sub_1000C8970(&v13, &qword_1002B34A0, &qword_1002009E0);
  result = sub_1000C8970(v2, &unk_1002B3450, &qword_100202EE0);
  v12 = *(v0 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels);
  if ((v12 & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels) = v12 | 1;
  }

  return result;
}

void *sub_1000C20A4(uint64_t a1, char a2)
{
  sub_1000C257C();
  v4 = 0xEA0000000000656CLL;
  sub_1000C92EC();
  switch(v5)
  {
    case 1:
      v4 = 0xED0000656C62616DLL;
      sub_1000995FC();
      goto LABEL_4;
    case 2:
      v4 = 0x8000000100221B70;
      sub_1000C9358();
      goto LABEL_4;
    case 3:
      sub_1000C988C();
      if ((a2 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_6;
    default:
LABEL_4:
      sub_1000C94F0();
      v9 = sub_1000C9490(v6, v4, v7, v8);

      if (v9)
      {
        if (a2)
        {
LABEL_6:
          a1 = 0;
          v12[1] = 0;
          v12[2] = 0;
        }

LABEL_8:
        v12[0] = a1;
        sub_1000C954C();
        sub_1001C738C(v11, 34);
        return sub_1000C8970(v12, &qword_1002B34A0, &qword_1002009E0);
      }

      return result;
  }
}

void sub_1000C21D0(uint64_t a1, char a2)
{
  if (a2)
  {
    a1 = sub_1000C9594();
  }

  v5[0] = a1;
  sub_1000C954C();
  sub_1001C738C(v3, v4);
  sub_1000C8970(v5, &qword_1002B34A0, &qword_1002009E0);
  if ((*(v2 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels) & 2) == 0)
  {
    sub_1000C997C(OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels);
  }
}

void sub_1000C2244(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    sub_1000C9BF0();
  }

  v3[0] = a1;
  v3[1] = a2;
  sub_1000C954C();
  sub_1001C738C(v2, 15);
  sub_1000C8970(v3, &qword_1002B34A0, &qword_1002009E0);
  sub_1000C9568(OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels);
}

uint64_t sub_1000C22AC()
{
  v0 = sub_1000C5388(0);
  if (!v1)
  {
    return 0;
  }

  LODWORD(result) = sub_1000C481C(v0, v1);
  if (result == 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1000C22E4()
{
  v0 = sub_1000C5470(1, &type metadata for Int);
  if ((v0 + 1) < 3)
  {
    v2 = v0 + 1;
  }

  else
  {
    v2 = 3;
  }

  if (v1)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000C2320(unsigned __int8 a1)
{
  if (a1 == 3)
  {
    v2 = 0;
    v3 = 0;
    v9[1] = 0;
    v9[2] = 0;
  }

  else
  {
    v2 = a1 - 1;
    v3 = &type metadata for Int;
  }

  v9[0] = v2;
  v9[3] = v3;
  sub_1001C738C(v9, 1);
  sub_1000C8970(v9, &qword_1002B34A0, &qword_1002009E0);
  v4 = OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels;
  v5 = *(v1 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels);
  if ((v5 & 2) == 0)
  {
    *(v1 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels) = v5 | 2;
  }

  result = sub_1000C5388(15);
  if (v7)
  {

    v8 = *(v1 + v4);
    if ((v8 & 1) == 0)
    {
      *(v1 + v4) = v8 | 1;
    }
  }

  return result;
}

void sub_1000C23D8(unsigned __int8 a1)
{
  v2[3] = &type metadata for Int;
  v2[0] = a1;
  sub_1001C738C(v2, 14);
  sub_1000C8970(v2, &qword_1002B34A0, &qword_1002009E0);
  if ((*(v1 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels) & 2) == 0)
  {
    sub_1000C997C(OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels);
  }
}

uint64_t sub_1000C2468(uint64_t a1)
{
  sub_1000C257C();
  sub_1000995FC();
  sub_1000C9368();
  switch(v2)
  {
    case 1:
      goto LABEL_5;
    case 2:
      sub_1000C932C();
      goto LABEL_5;
    case 3:
      sub_1000C9454();
LABEL_5:
      sub_1000C9C38();
      sub_1001F7EA8();
      sub_1000C9A28();
      if (v1)
      {
        goto LABEL_6;
      }

      goto LABEL_8;
    default:

LABEL_6:
      if (sub_1000C2448())
      {
        return 0;
      }

LABEL_8:

      return sub_1000C2858();
  }
}

uint64_t sub_1000C2550()
{
  result = sub_1000C5470(13, &type metadata for Int);
  if (v1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000C257C()
{
  v1 = OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___type;
  result = *(v0 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___type);
  if (result == 4)
  {
    result = sub_1000C562C();
    *(v0 + v1) = result;
  }

  return result;
}

BOOL sub_1000C25B8(uint64_t a1)
{
  sub_1000C56AC(v3);
  if (v4 == 255)
  {
    return 0;
  }

  v1 = v4 == 0;
  sub_1000C8970(v3, &qword_1002B3310, &qword_10020A0A0);
  return v1;
}

uint64_t sub_1000C2620(char a1)
{
  if (a1 == 2)
  {
    v1 = 0;
    v2 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }

  else
  {
    v1 = a1 & 1;
    v2 = &type metadata for Int;
  }

  v4[0] = v1;
  v4[3] = v2;
  sub_1001C738C(v4, 27);
  return sub_1000C8970(v4, &qword_1002B34A0, &qword_1002009E0);
}

void sub_1000C2698(uint64_t a1, char a2)
{
  if (a2)
  {
    a1 = sub_1000C9594();
  }

  v4[0] = a1;
  sub_1000C954C();
  sub_1001C738C(v2, v3);
  sub_1000C8970(v4, &qword_1002B34A0, &qword_1002009E0);
  sub_1000C9568(OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels);
}

uint64_t sub_1000C2704(char a1, uint64_t a2)
{
  v4 = &type metadata for Bool;
  v3[0] = a1;
  sub_1001C738C(v3, a2);
  return sub_1000C8970(v3, &qword_1002B34A0, &qword_1002009E0);
}

uint64_t sub_1000C2770(uint64_t a1)
{
  sub_1000C56AC(&v2);
  if (v3 == 1)
  {
  }

  else if (v3 != 255)
  {
    sub_1000C8970(&v2, &qword_1002B3310, &qword_10020A0A0);
  }

  return sub_100037A2C();
}

uint64_t sub_1000C27E4(uint64_t a1)
{
  sub_1000C56AC(&v2);
  if (v3 == 3)
  {
  }

  else if (v3 != 255)
  {
    sub_1000C8970(&v2, &qword_1002B3310, &qword_10020A0A0);
  }

  return sub_100037A2C();
}

uint64_t sub_1000C2858()
{
  if (sub_1000C43D8() != 1)
  {
    goto LABEL_10;
  }

  sub_1000C257C();
  sub_1000C92EC();
  switch(v1)
  {
    case 1:

      goto LABEL_7;
    case 2:
      sub_1000C932C();
      break;
    case 3:
      sub_1000C9454();
      break;
    default:
      break;
  }

  sub_1001F7EA8();
  sub_1000C9A28();
  if ((v0 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  sub_1000C5470(8, &type metadata for UInt);
  if ((v2 & 1) == 0)
  {
LABEL_10:
    v3 = 0;
    return v3 & 1;
  }

LABEL_8:
  switch(sub_1000C22AC())
  {
    case 2u:

      goto LABEL_10;
    default:
      v4 = sub_1001F7EA8();

      v3 = v4 ^ 1;
      break;
  }

  return v3 & 1;
}

uint64_t sub_1000C2A24(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  sub_1000C9880();
  v5 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  sub_100056658(v5);
  sub_10001E844();
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  sub_1000C257C();
  sub_1000C92EC();
  switch(v9)
  {
    case 1:
      sub_100099938();
      sub_1000995FC();
      goto LABEL_4;
    case 2:
      sub_1000C9874();
      sub_1000C9358();
      goto LABEL_4;
    case 3:
      sub_1000C988C();
      goto LABEL_7;
    default:
LABEL_4:
      sub_1000C94F0();
      v13 = sub_1000C9490(v10, 0xEA0000000000656CLL, v11, v12);

      if ((v13 & 1) == 0)
      {
        return sub_1000C8970(v3, &unk_1002B3450, &qword_100202EE0);
      }

LABEL_7:
      sub_1000C89FC(v3, v8, &unk_1002B3450, &qword_100202EE0);
      v15 = sub_1001F6508();
      if (sub_10001C990(v8, 1, v15) == 1)
      {
        sub_1000C8970(v8, &unk_1002B3450, &qword_100202EE0);
        v20 = 0u;
        v21 = 0u;
      }

      else
      {
        sub_1001F6428();
        *(&v21 + 1) = &type metadata for Double;
        *&v20 = v16;
        sub_10007E2C8();
        v17 = sub_1000377A8();
        v18(v17);
      }

      sub_1001C738C(&v20, v4);
      sub_1000C8970(&v20, &qword_1002B34A0, &qword_1002009E0);
      result = sub_1000C8970(v3, &unk_1002B3450, &qword_100202EE0);
      v19 = *(v2 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels);
      if ((v19 & 1) == 0)
      {
        *(v2 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels) = v19 | 1;
      }

      return result;
  }
}

void *sub_1000C2C60(uint64_t a1)
{
  result = sub_1000C2E3C();
  if (result)
  {
    v2 = result[2];

    if (v2 && (sub_1000C152C() - 1) <= 4u && sub_1000C152C() != 2 && sub_1000C22E4())
    {
      return (sub_1000C22E4() != 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000C2CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((sub_1000C15EC(a1) & 1) != 0 && (sub_1000C5470(4, &type metadata for Double), (v4 & 1) == 0))
  {

    return sub_1001F6418();
  }

  else
  {
    sub_1001F6508();
    sub_10007E2C8();
    v7 = *(v6 + 16);

    return v7(a2, a1, v5);
  }
}

uint64_t sub_1000C2D8C()
{
  v0 = sub_1000C5388(26);
  if (v1)
  {
    v2 = sub_1000E3FC8(v0, v1);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_1000C2DBC@<X0>(uint64_t a1@<X8>)
{
  sub_1000C5388(22);
  if (v2)
  {
    sub_1001F6518();
  }

  else
  {
    v4 = sub_1001F6578();

    return sub_100018460(a1, 1, 1, v4);
  }
}

void *sub_1000C2E3C()
{
  sub_1000C257C();
  sub_1000C9934();
  sub_1000C92EC();
  switch(v1)
  {
    case 1:
      sub_1000C9368();
      sub_1000995FC();
      goto LABEL_4;
    case 2:
      sub_1000C932C();
      goto LABEL_4;
    case 3:
      sub_1000C988C();
      goto LABEL_7;
    default:
LABEL_4:
      sub_1000C942C();
      sub_1000C9A28();
      if ((v0 & 1) == 0)
      {
        return 0;
      }

LABEL_7:
      v2 = sub_1000C5544(19);
      if (!v2)
      {
        return 0;
      }

      v3 = v2;
      v4 = *(v2 + 16);
      if (v4)
      {
        sub_100033EA4(0, v4, 0);
        v5 = _swiftEmptyArrayStorage;
        v6 = (v3 + 40);
        do
        {
          v7 = *(v6 - 1);
          v8 = *v6;
          swift_bridgeObjectRetain_n();
          v9 = sub_100075518();
          sub_1000C57B4(v11, v9, v10);
          v12 = v23;
          if (v23 == 255)
          {
            v19 = 0u;
            v12 = 4;
            v13 = v8;
          }

          else
          {
            v19 = v22;
            v7 = v20;
            v13 = v21;
          }

          v15 = _swiftEmptyArrayStorage[2];
          v14 = _swiftEmptyArrayStorage[3];
          if (v15 >= v14 >> 1)
          {
            v17 = sub_10005669C(v14);
            sub_100033EA4(v17, v15 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v15 + 1;
          v16 = &_swiftEmptyArrayStorage[5 * v15];
          v16[4] = v7;
          v16[5] = v13;
          *(v16 + 3) = v19;
          *(v16 + 64) = v12;
          v6 += 2;
          --v4;
        }

        while (v4);
      }

      else
      {

        return _swiftEmptyArrayStorage;
      }

      return v5;
  }
}

void sub_1000C3010(void *a1@<X8>)
{
  v7 = sub_1000C2E3C();
  v8 = v7;
  if (!v7)
  {
    sub_1000C98C4();
    v14 = 0;
LABEL_94:
    v13 = 0;
    goto LABEL_95;
  }

  v67 = v7;
  v9 = sub_1000BFC34(&OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___productID, 9);
  v1 = sub_1000EE5B8(v9, v10);

  if (!v1)
  {

    v4 = 0;
    v3 = 0;
LABEL_93:
    v14 = 0;
    v8 = 0;
    goto LABEL_94;
  }

  v11 = *(v1 + 192);
  v12 = *(v1 + 200);

  v13 = sub_1000EE77C(v11, v12);

  if (!v13)
  {

    sub_1000C98C4();
    v14 = 0;
    v8 = 0;
LABEL_95:
    v62 = 0;
    v63 = 0;
    goto LABEL_96;
  }

  while (2)
  {
    if (!*(v8 + 16))
    {

      sub_1000C98C4();
      goto LABEL_93;
    }

    v4 = *(v8 + 32);
    v3 = *(v8 + 40);
    v1 = *(v8 + 48);
    v14 = *(v8 + 56);
    v15 = *(v8 + 64);
    v16 = sub_1000C93AC();
    sub_10008A298(v16, v17, v18, v14, v15);

    if (!*(v8 + 16))
    {
      goto LABEL_113;
    }

    sub_1000886C0(v8, v68);
    if (v68[32] == 255)
    {
      goto LABEL_114;
    }

    v13 = &v67;
    sub_100036830(0, 1, v19, v20, v21);
    sub_1000C8970(v68, &qword_1002B3310, &qword_10020A0A0);
    v66 = v14;
    switch(v15)
    {
      case 1:
        sub_1000C96CC();
        sub_1000C94AC();
        v39 = 0;
        while (2)
        {
          if (v5 == v39)
          {

            v57 = sub_1000C9398();
            v61 = 1;
            goto LABEL_87;
          }

          if (v2)
          {
            v13 = sub_1000C9AE4();
          }

          else
          {
            sub_1000C9994();
            if (v23)
            {
              goto LABEL_111;
            }

            sub_1000C9694();
          }

          if (__OFADD__(v39, 1))
          {
            goto LABEL_106;
          }

          v40 = sub_1000C9988();
          v42 = v26 && v3 == v41;
          if (!v42 && (sub_1000C9668(v40, v41) & 1) == 0)
          {

            ++v39;
            continue;
          }

          break;
        }

        v54 = sub_1000C98A4();
        v56 = sub_100025678(v54, v55);
        if (v56)
        {
          v8 = v56;

          v62 = v67;
          v63 = 1;
          goto LABEL_96;
        }

        v46 = sub_1000C93AC();
        v49 = v14;
        v50 = 1;
        goto LABEL_81;
      case 2:
        sub_1000C96CC();
        sub_1000C94AC();
        v31 = 0;
        while (2)
        {
          if (v5 == v31)
          {

            v57 = sub_1000C9398();
            v61 = 2;
            goto LABEL_87;
          }

          if (v2)
          {
            v13 = sub_1000C9AE4();
          }

          else
          {
            sub_1000C9994();
            if (v23)
            {
              goto LABEL_108;
            }

            sub_1000C9694();
          }

          if (__OFADD__(v31, 1))
          {
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
            JUMPOUT(0x1000C35FCLL);
          }

          v32 = sub_1000C9988();
          v34 = v26 && v3 == v33;
          if (!v34 && (sub_1000C9668(v32, v33) & 1) == 0)
          {

            ++v31;
            continue;
          }

          break;
        }

        v43 = sub_1000C98A4();
        v45 = sub_10002574C(v43, v44);
        if (v45)
        {
          v8 = v45;

          v62 = v67;
          v63 = 2;
          goto LABEL_96;
        }

        v46 = sub_1000C93AC();
        v49 = v14;
        v50 = 2;
LABEL_81:
        sub_100099050(v46, v47, v48, v49, v50);

        goto LABEL_88;
      case 3:
        sub_1000C96CC();
        sub_1000C94AC();
        v35 = 0;
        while (2)
        {
          if (v5 == v35)
          {

            v57 = sub_1000C9398();
            v61 = 3;
            goto LABEL_87;
          }

          if (v2)
          {
            v13 = sub_1000C9AE4();
          }

          else
          {
            sub_1000C9994();
            if (v23)
            {
              goto LABEL_110;
            }

            sub_1000C9694();
          }

          if (__OFADD__(v35, 1))
          {
            goto LABEL_107;
          }

          v36 = sub_1000C9988();
          v38 = v26 && v3 == v37;
          if (!v38 && (sub_1000C9668(v36, v37) & 1) == 0)
          {

            ++v35;
            continue;
          }

          break;
        }

        v51 = sub_1000C98A4();
        v53 = sub_100025820(v51, v52);
        if (v53)
        {
          v8 = v53;

          v62 = v67;
          v63 = 3;
          goto LABEL_96;
        }

        v46 = sub_1000C93AC();
        v49 = v14;
        v50 = 3;
        goto LABEL_81;
      case 4:
        sub_1000C96CC();
        sub_1000C94AC();
        v27 = 0;
LABEL_22:
        if (v5 == v27)
        {

          v57 = sub_1000C9398();
          v61 = 4;
LABEL_87:
          sub_100099050(v57, v58, v59, v60, v61);
LABEL_88:
          v8 = v67;
          continue;
        }

        if (v2)
        {
          v13 = sub_1000C9AE4();
        }

        else
        {
          sub_1000C9994();
          if (v23)
          {
            goto LABEL_112;
          }

          sub_1000C9694();
        }

        if (__OFADD__(v27, 1))
        {
          goto LABEL_104;
        }

        v28 = sub_1000C9988();
        v30 = v26 && v3 == v29;
        if (!v30 && (sub_1000C9668(v28, v29) & 1) == 0)
        {

          ++v27;
          goto LABEL_22;
        }

        sub_1000183C4(&qword_1002ADB80, &qword_1002008B0);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_1001FE9E0;
        v64 = v13[10];
        v65 = v13[11];

        *(v62 + 32) = v64;
        *(v62 + 40) = v65;
        *(v62 + 48) = 0;
        *(v62 + 56) = 0;
        v63 = 4;
        *(v62 + 64) = 4;

        v8 = 0;
LABEL_98:
        v14 = v66;
LABEL_96:
        *a1 = v4;
        a1[1] = v3;
        a1[2] = v1;
        a1[3] = v14;
        a1[4] = v63;
        a1[5] = v8;
        a1[6] = v13;
        a1[7] = v62;
        return;
      default:
        sub_1000C96CC();
        sub_1000C94AC();
        v22 = 0;
        while (2)
        {
          if (v5 == v22)
          {

            v57 = sub_1000C9398();
            v61 = 0;
            goto LABEL_87;
          }

          if (v2)
          {
            v13 = sub_1000C9AE4();
          }

          else
          {
            sub_1000C9994();
            if (v23)
            {
              goto LABEL_109;
            }

            sub_1000C9694();
          }

          if (__OFADD__(v22, 1))
          {
            goto LABEL_105;
          }

          v24 = sub_1000C9988();
          v26 = v26 && v3 == v25;
          if (!v26 && (sub_1000C9668(v24, v25) & 1) == 0)
          {

            ++v22;
            continue;
          }

          break;
        }

        v8 = v13[17];
        if (v8)
        {

          v63 = 0;
          v62 = v67;
          goto LABEL_98;
        }

        v46 = sub_1000C9398();
        v50 = 0;
        goto LABEL_81;
    }
  }
}

uint64_t sub_1000C3610()
{
  sub_1000C257C();
  sub_1000C9934();
  sub_1000C92EC();
  switch(v1)
  {
    case 1:
      sub_1000C9368();
      sub_1000995FC();
      goto LABEL_4;
    case 2:
      sub_1000C932C();
      goto LABEL_4;
    case 3:
      sub_1000C988C();
      return sub_1000C5470(34, &type metadata for Int);
    default:
LABEL_4:
      sub_1000C942C();
      sub_1000C9A28();
      if (v0)
      {
        return sub_1000C5470(34, &type metadata for Int);
      }

      else
      {
        return 0;
      }
  }
}

uint64_t sub_1000C36EC(uint64_t a1)
{
  v5 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  sub_100056658(v5);
  sub_10001E844();
  __chkstk_darwin(v6);
  sub_1000C9BD8();
  v7 = sub_1001F6508();
  sub_10001A278();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000C9858();
  __chkstk_darwin(v11);
  sub_1000C98B4();
  sub_1000C3914(a1, v1);
  if (sub_10001C990(v1, 1, v7) == 1)
  {
    sub_1000C8970(v1, &unk_1002B3450, &qword_100202EE0);
    v12 = 0;
  }

  else
  {
    v13 = sub_1000C9B14();
    v14(v13);
    sub_1001F64E8();
    sub_1000ACD54();
    sub_100075518();
    v15 = sub_1001F6A78();
    v16 = *(v9 + 8);
    v16(v2, v7);
    v16(v3, v7);
    v12 = v15 ^ 1;
  }

  return v12 & 1;
}

uint64_t sub_1000C3888()
{
  result = sub_1000C5470(31, &type metadata for Int);
  if (v1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000C38B4(uint64_t a1, char a2)
{
  if (a2)
  {
    a1 = sub_1000C9594();
  }

  v4[0] = a1;
  sub_1000C954C();
  sub_1001C738C(v2, 31);
  return sub_1000C8970(v4, &qword_1002B34A0, &qword_1002009E0);
}

uint64_t sub_1000C3914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000C5470(a1, &type metadata for Double);
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    sub_1001F6418();
    v4 = 0;
  }

  v5 = sub_1001F6508();

  return sub_100018460(a2, v4, 1, v5);
}

uint64_t sub_1000C398C(char a1)
{
  v1 = 3157553;
  if (a1)
  {
    v1 = 3157554;
  }

  v3[3] = type metadata for String;
  v3[0] = v1;
  v3[1] = 0xE300000000000000;
  sub_1001C738C(v3, 26);
  return sub_1000C8970(v3, &qword_1002B34A0, &qword_1002009E0);
}

void sub_1000C39F0(__objc2_class **a1, char a2, char a3)
{
  v6 = a1;
  v7 = *a1;
  if (*a1 == _TtCC25ASOctaneSupportXPCService18OctaneSubscription17IntroductoryOffer)
  {
    sub_1000BFC34(&OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___productID, 9);
    sub_1000C9B50();
    sub_1000183C4(&qword_1002ADB80, &qword_1002008B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001FE9E0;
    *(inited + 32) = sub_1000BFC34(&OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___productID, 9);
    *(inited + 40) = v10;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 64) = 4;
    if (a3)
    {
      sub_1000C56AC(v57);
      v11 = v58;
      if (v58 == 255)
      {
        v12 = _swiftEmptyArrayStorage;
      }

      else
      {
        v12 = swift_allocObject();
        v13 = v57[1];
        *(v12 + 2) = v57[0];
        *(v12 + 3) = v13;
        *(v12 + 1) = xmmword_1001FE9E0;
        *(v12 + 64) = v11;
      }

      v25 = sub_1000C2E3C();
      if (v25)
      {
        v26 = v25;

        inited = v26;
      }

      v61[0] = v12;
      sub_1001BA650(inited);
    }

    sub_1000C6320();
    v17 = 0;
    v18 = 0;
    v14 = 0;
    goto LABEL_21;
  }

  if (v7 == _TtCC25ASOctaneSupportXPCService18OctaneSubscription10AdHocOffer)
  {
    v14 = 1;
  }

  else
  {
    if (v7 == _TtCC25ASOctaneSupportXPCService18OctaneSubscription9CodeOffer)
    {
      v14 = 2;
      v15 = 3;
      v16 = 2;
      goto LABEL_11;
    }

    if (v7 != _TtCC25ASOctaneSupportXPCService18OctaneSubscription12WinbackOffer)
    {
      if (qword_1002AC510 == -1)
      {
        goto LABEL_48;
      }

      goto LABEL_55;
    }

    v14 = 3;
  }

  v15 = 13;
  v16 = 12;
LABEL_11:

  sub_1000BFC34(&OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___productID, 9);
  sub_1000C9B50();
  v17 = v6[v16];
  v18 = v6[v15];

  v20 = sub_1000C1570(v19);
  if (v21)
  {
    v22 = v20;
    v23 = v21;
    sub_1000183C4(&qword_1002ADB80, &qword_1002008B0);
    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_1001FE9E0;
    *(v24 + 32) = v22;
    *(v24 + 40) = v23;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 4;
  }

  sub_1000C6320();
LABEL_21:
  v59[0] = v3;
  v59[1] = v4;
  v59[2] = v17;
  v59[3] = v18;
  v60 = v14;
  if (*(v6 + 56))
  {
    v27 = 1;
  }

  else
  {
    v27 = v6[6];
  }

  if ((a2 & 1) == 0)
  {
LABEL_36:
    v42 = sub_1000C2E3C();
    if (!v42)
    {
      v50 = sub_100075518();
      sub_100099050(v50, v51, v17, v18, v14);
LABEL_46:
      sub_1000C6320();
      return;
    }

    v6 = v42;
    v43 = sub_1000C69AC(v59, v27);
    v44 = v43[2];
    v45 = v6[2];
    v46 = v45 + v44;
    if (!__OFADD__(v45, v44))
    {
      v47 = v43;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v46 > (v6[3] >> 1))
      {
        if (v45 <= v46)
        {
          v49 = v45 + v44;
        }

        else
        {
          v49 = v45;
        }

        sub_1000327BC(isUniquelyReferenced_nonNull_native, v49, 1, v6);
      }

      sub_1000C8354(0, 0, v44, v47);
      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_54;
  }

  if (!__OFSUB__(v27--, 1))
  {
    v61[0] = v3;
    v61[1] = v4;
    v61[2] = v17;
    v61[3] = v18;
    v62 = v14;
    v29 = sub_100075518();
    sub_10008A298(v29, v30, v17, v18, v14);
    sub_1000C5AB4();
    sub_1000C5DD0(*(v6 + 57));
    sub_100161BA8();
    sub_1000C6038(v31, v32);
    if (*v6 == _TtCC25ASOctaneSupportXPCService18OctaneSubscription9CodeOffer)
    {
      v33 = v6[10];
      v34 = v6[11];
    }

    else
    {
      v33 = 0;
      v34 = 0;
    }

    sub_1000C62C4(v33, v34);
    switch(*(v6 + 57))
    {
      case 1:

        goto LABEL_32;
      default:
        v36 = sub_1001F7EA8();

        if (v36)
        {
LABEL_32:
          sub_1001F7418(v35, 0);
          v40 = v39;
        }

        else
        {
          v37 = sub_100161AA0();
          if ((v41 & 0x100000000) != 0)
          {
            goto LABEL_36;
          }

          v40 = v41;
        }

        sub_1000C617C(v37, v38, v40);
        break;
    }

    goto LABEL_36;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  sub_10001B230(&qword_1002AC510);
LABEL_48:
  v52 = sub_1001F6688();
  sub_100019C94(v52, qword_1002E6180);

  oslog = sub_1001F6668();
  v53 = sub_1001F72A8();

  if (os_log_type_enabled(oslog, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v61[0] = v55;
    *v54 = 136315138;
    *(v54 + 4) = sub_1000E4544(v6[2], v6[3], v61);
    _os_log_impl(&_mh_execute_header, oslog, v53, "Unknown offer type with id: %s, cannot add offer to transaction", v54, 0xCu);
    sub_100019CCC(v55);
    sub_10003A72C(v55);
    sub_10003A72C(v54);
  }

  else
  {
  }
}

uint64_t sub_1000C3FF4(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v5 = sub_1001F6508();
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100023510();
  v11 = v10 - v9;
  if (sub_1000C672C())
  {
    sub_100161BA8();
    v13 = v12;
    v15 = v14;
LABEL_5:

    sub_1000BFDA8();
    sub_1001F6418();
    v19 = sub_10004B73C(v13, v15, v11, a2);
    (*(v7 + 8))(v11, v5);
    sub_1000C2698(v19, 0);
    return sub_1000C5470(4, &type metadata for Double);
  }

  v16 = sub_1000BFC34(&OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___productID, 9);
  v18 = sub_1000EE5B8(v16, v17);

  if (v18)
  {
    v13 = *(v18 + 176);
    v15 = *(v18 + 184);
    goto LABEL_5;
  }

  if (qword_1002AC510 != -1)
  {
    sub_10001B230(&qword_1002AC510);
  }

  v21 = sub_1001F6688();
  sub_100019C94(v21, qword_1002E6180);
  v22 = v3;
  v23 = sub_1001F6668();
  v24 = sub_1001F7298();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v25 = 136315138;

    v26 = sub_1000C9484();
    v29 = sub_1000E4544(v26, v27, v28);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v23, v24, "missing subscription for id: %s, cannot compute expiration", v25, 0xCu);
    sub_100019CCC(v30);
    sub_10003A72C(v30);
    sub_10003A72C(v25);
  }

  return 0;
}

uint64_t sub_1000C4280()
{
  sub_1000C9880();
  v3 = sub_100075518();
  v5 = sub_1000183C4(v3, v4);
  sub_100056658(v5);
  sub_10001E844();
  __chkstk_darwin(v6);
  sub_1000C982C(v7, v13);
  v8 = sub_1001F6578();
  if (sub_10001C990(v1, 1, v8) == 1)
  {
    sub_1000C8970(v1, &qword_1002AFA30, &unk_10020FA10);
    v13 = 0u;
    v14 = 0u;
  }

  else
  {
    *(&v14 + 1) = type metadata for String;
    *&v13 = sub_1001F6528();
    *(&v13 + 1) = v9;
    sub_10007E2C8();
    (*(v10 + 8))(v1, v8);
  }

  sub_1001C738C(&v13, 22);
  sub_1000C8970(&v13, &qword_1002B34A0, &qword_1002009E0);
  result = sub_1000C8970(v2, &qword_1002AFA30, &unk_10020FA10);
  v12 = *(v0 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels);
  if ((v12 & 2) == 0)
  {
    *(v0 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels) = v12 | 2;
  }

  return result;
}

uint64_t sub_1000C43D8()
{
  v0 = sub_1000C5470(14, &type metadata for Int);
  if (v1)
  {
    return 0;
  }

  LODWORD(result) = sub_1000C480C(v0);
  if (result == 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

BOOL sub_1000C4420(uint64_t a1)
{
  sub_1001F6508();
  sub_10001A278();
  __chkstk_darwin(v2);
  sub_100023510();
  sub_1000C9BD8();
  *&v3 = COERCE_DOUBLE(sub_1000C5470(a1, &type metadata for Double));
  if (v4)
  {
    return 0;
  }

  v6 = *&v3;
  sub_1001F64F8();
  sub_1001F6428();
  v8 = v7;
  v9 = sub_100037B7C();
  v10(v9);
  return v8 > v6;
}

uint64_t sub_1000C450C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  if (v1 == v2)
  {
    LOBYTE(result) = 0;
    return result | ((v1 == v2) << 8);
  }

  result = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (result < v1 || v2 - 1 >= v2)
  {
    goto LABEL_12;
  }

  result = sub_100064380(result, 0, *v0, *(v0 + 8), *(v0 + 16) | (*(v0 + 20) << 32) | (*(v0 + 22) << 48));
  if ((result & 0x100) == 0)
  {
    return result | ((v1 == v2) << 8);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1000C45A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = result + 40 * v3;
    v5 = *(v4 - 8);
    v6 = *v4;
    v7 = *(v4 + 8);
    v8 = *(v4 + 16);
    v9 = *(v4 + 24);
    result = sub_10008A298(v5, *v4, v7, v8, v9);
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = -1;
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  return result;
}

uint64_t sub_1000C4628(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_1001F6C58();
  return sub_1001F6D98();
}

uint64_t sub_1000C46A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  return sub_100037A2C();
}

char *sub_1000C46EC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1001C19A8();
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v3 + 32);
      }
    }

    return sub_1001F7808();
  }

  result = sub_1001F7B48();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

double sub_1000C4780()
{
  v0 = sub_1000C5470(23, &type metadata for Double);
  if ((v1 & 1) == 0)
  {
    return *&v0;
  }

  return sub_1000BFDA8();
}

uint64_t sub_1000C47C4()
{
  result = sub_1000C8768(&off_100279238);
  qword_1002B3220 = result;
  return result;
}

uint64_t sub_1000C47EC(uint64_t a1)
{
  if ((a1 + 1) < 3)
  {
    return a1 + 1;
  }

  else
  {
    return 3;
  }
}

unint64_t sub_1000C480C(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_1000C481C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100278EC0;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000C4868(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000C4888(unint64_t a1)
{
  if (a1 > 0xB)
  {
    return 5;
  }

  else
  {
    return byte_10020A7E8[a1];
  }
}

uint64_t sub_1000C48C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C47EC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000C48EC()
{
  v1 = sub_100056690();
  result = sub_1000C4800(v1);
  *v0 = result;
  return result;
}

unint64_t sub_1000C49E0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C480C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000C4B08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C481C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1000C4B38()
{
  v1 = sub_100056690();
  result = sub_1000C1EC0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1000C4C40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C4868(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000C4C6C()
{
  v1 = sub_100056690();
  result = sub_1000C4880(v1);
  *v0 = result;
  return result;
}

uint64_t sub_1000C4D68@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C4888(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000C4D94()
{
  v1 = sub_100056690();
  result = sub_1000C2C4C(v1);
  *v0 = result;
  return result;
}

uint64_t sub_1000C4E78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10002DFF4(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1000C4EA8(uint64_t a1)
{
  v2 = sub_1000C9584(a1);
  result = sub_1000EC36C(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1000C4EDC(uint64_t a1)
{
  v2 = sub_1000C9584(a1);
  result = sub_1000C1C60(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1000C4F04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000C1C6C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1000C4F38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000C1CBC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1000C4F74(uint64_t a1)
{
  v2 = sub_1000C9584(a1);
  result = sub_1000BFF60(v2, v3);
  *v1 = result;
  return result;
}

void *sub_1000C4FB8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000C4FC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000BFEB0(a1);
  *a2 = result;
  return result;
}

char *sub_1000C4FF0(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = a1;
  v5 = [v4 databaseID];
  v6 = [v4 propertyValues];
  sub_1001F6998();

  sub_1000C9924();
  isa = sub_1001F6988().super.isa;

  v8 = [v4 externalPropertyValues];

  sub_1000C9924();
  sub_1001F6998();

  v9 = sub_1001F6988().super.isa;

  v10 = [v3 initWithDatabaseID:v5 propertyValues:isa externalPropertyValues:v9];

  v11 = *&v4[OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels];
  v12 = v10;

  *&v12[OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels] = v11;
  return v12;
}

void *sub_1000C518C()
{
  sub_1000375CC(0, 37, 0);
  v0 = 0;
  do
  {
    v1 = sub_10013EBCC(*(&off_10027AD30 + v0 + 32));
    v3 = v2;
    v5 = _swiftEmptyArrayStorage[2];
    v4 = _swiftEmptyArrayStorage[3];
    if (v5 >= v4 >> 1)
    {
      sub_1000375CC(v4 > 1, v5 + 1, 1);
    }

    ++v0;
    _swiftEmptyArrayStorage[2] = v5 + 1;
    v6 = &_swiftEmptyArrayStorage[2 * v5];
    v6[4] = v1;
    v6[5] = v3;
  }

  while (v0 != 37);
  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000C52B0(uint64_t a1)
{
  sub_10013EBCC(a1);
  v2 = sub_1001F6B48();

  v3 = [v1 valueForProperty:v2];

  if (v3)
  {
    sub_1001F76D8();
    swift_unknownObjectRelease();
    sub_10003708C(&v5, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  sub_1000183C4(&qword_1002B34A0, &qword_1002009E0);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1000C5388(uint64_t a1)
{
  sub_10013EBCC(a1);
  v2 = sub_1001F6B48();

  v3 = [v1 valueForProperty:v2];

  if (v3)
  {
    sub_1001F76D8();
    v4 = swift_unknownObjectRelease();
    v12 = sub_1000C9BE4(v4, v5, v6, v7, v8, v9, v10, v11, v21);
    sub_10003708C(v12, v13);
  }

  v14 = sub_1000183C4(&qword_1002B34A0, &qword_1002009E0);
  sub_1000C9BE4(v14, v15, v14, type metadata for String, v16, v17, v18, v19, v21);
  if (swift_dynamicCast())
  {
    return v22;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000C5470(uint64_t a1, uint64_t a2)
{
  sub_10013EBCC(a1);
  v3 = sub_1001F6B48();

  v4 = [v2 valueForProperty:v3];

  if (v4)
  {
    sub_1001F76D8();
    v5 = swift_unknownObjectRelease();
    v13 = sub_1000C9BE4(v5, v6, v7, v8, v9, v10, v11, v12, v25);
    sub_10003708C(v13, v14);
  }

  v15 = sub_1000183C4(&qword_1002B34A0, &qword_1002009E0);
  sub_1000C9BE4(v15, v16, v15, v17, v18, v19, v20, v21, v25);
  v22 = swift_dynamicCast();
  v23 = v26;
  if (!v22)
  {
    return 0;
  }

  return v23;
}

uint64_t sub_1000C5544(uint64_t a1)
{
  sub_10013EBCC(a1);
  v2 = sub_1001F6B48();

  v3 = [v1 valueForProperty:v2];

  if (v3)
  {
    sub_1001F76D8();
    swift_unknownObjectRelease();
    sub_10003708C(&v5, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  sub_1000183C4(&qword_1002B34A0, &qword_1002009E0);
  sub_1000183C4(&qword_1002ACA10, qword_1001FEBF0);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000C562C()
{
  v0 = sub_1000C5388(16);
  if (!v1)
  {
    return 0;
  }

  LODWORD(result) = sub_1001E8640(v0, v1);
  if (result == 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

unint64_t sub_1000C5670()
{
  v0 = sub_1000C5388(10);
  if (!v1)
  {
    return 22;
  }

  return sub_100087B8C(v0, v1);
}

void sub_1000C56AC(uint64_t a1@<X8>)
{
  sub_1000C257C();
  v2 = 0xEA0000000000656CLL;
  sub_1000C92EC();
  switch(v3)
  {
    case 1:
      v2 = 0xED0000656C62616DLL;
      sub_1000995FC();
      goto LABEL_4;
    case 2:
      v2 = 0x8000000100221B70;
      sub_1000C9358();
      goto LABEL_4;
    case 3:
      sub_1000C988C();
      goto LABEL_7;
    default:
LABEL_4:
      sub_1000C94F0();
      v7 = sub_1000C9490(v4, v2, v5, v6);

      if ((v7 & 1) == 0)
      {
        goto LABEL_9;
      }

LABEL_7:
      v8 = sub_1000C5388(18);
      if (v9)
      {
        sub_1000C57B4(v13, v8, v9);
        v10 = v13[0];
        v11 = v13[1];
        v12 = v14;
      }

      else
      {
LABEL_9:
        v10 = 0uLL;
        v12 = -1;
        v11 = 0uLL;
      }

      *a1 = v10;
      *(a1 + 16) = v11;
      *(a1 + 32) = v12;
      return;
  }
}

void sub_1000C57B4(uint64_t a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  v31[0] = 58;
  v31[1] = 0xE100000000000000;
  v30[2] = v31;
  v4 = sub_1001BF6D8(0x7FFFFFFFFFFFFFFFLL, 1, sub_100048E80, v30, a2, a3);
  v5 = v4[2];
  if (v5)
  {
    v31[0] = _swiftEmptyArrayStorage;
    sub_1000375CC(0, v5, 0);
    v6 = v31[0];
    v7 = v4 + 7;
    do
    {

      sub_1000377A8();
      v8 = sub_1001F6BE8();
      v10 = v9;

      v31[0] = v6;
      v12 = v6[2];
      v11 = v6[3];
      if (v12 >= v11 >> 1)
      {
        sub_1000375CC(v11 > 1, v12 + 1, 1);
        v6 = v31[0];
      }

      v6[2] = v12 + 1;
      v13 = &v6[2 * v12];
      v13[4] = v8;
      v13[5] = v10;
      v7 += 4;
      --v5;
    }

    while (v5);
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
  }

  v14 = 0x6F72746E69;
  v15 = v6[2];
  if (v15 != 3)
  {
    if (v15 < 2)
    {
      goto LABEL_22;
    }

LABEL_23:
    v23 = v6[4];
    v24 = v6[5];
    v25 = v23 == 0x6F72746E69 && v24 == 0xE500000000000000;
    if (v25 || (sub_1000AD850(), (sub_1001F7EA8() & 1) != 0))
    {
      v19 = 0;
      v22 = 0;
      v21 = 0;
      v14 = v6[6];
      v26 = v6[7];
    }

    else
    {
      if (v23 != 6583411 || v24 != 0xE300000000000000)
      {
        sub_1000AD850();
        if ((sub_1001F7EA8() & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v19 = 0;
      v22 = 0;
      v14 = v6[6];
      v26 = v6[7];
      v21 = 4;
    }

    v16 = v26;
    goto LABEL_30;
  }

  v16 = v6[4];
  v17 = v6[5];
  if (v16 == 0x6F72746E69 && v17 == 0xE500000000000000)
  {
    goto LABEL_23;
  }

  v19 = 0xE500000000000000;
  sub_1000AD850();
  if (sub_1001F7EA8())
  {
    goto LABEL_23;
  }

  v20 = v16 == 0x636F686461 && v17 == 0xE500000000000000;
  if (v20 || (sub_1000C9A0C(0x636F686461, 0xE500000000000000) & 1) != 0)
  {
    sub_1000C9A40();
    v21 = 1;
LABEL_20:
    v22 = v17;
LABEL_30:

    goto LABEL_31;
  }

  v28 = v16 == 1701080931 && v17 == 0xE400000000000000;
  if (v28 || (sub_1000C9A0C(1701080931, 0xE400000000000000) & 1) != 0)
  {
    sub_1000C9A40();
    v21 = 2;
    goto LABEL_20;
  }

  v29 = v16 == 0x6B6361626E6977 && v17 == 0xE700000000000000;
  if (v29 || (sub_1000C9A0C(0x6B6361626E6977, 0xE700000000000000) & 1) != 0)
  {
    sub_1000C9A40();
    v21 = 3;
    goto LABEL_20;
  }

LABEL_22:
  v14 = 0;
  v16 = 0;
  v19 = 0;
  v22 = 0;
  v21 = -1;
LABEL_31:

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v19;
  *(a1 + 24) = v22;
  *(a1 + 32) = v21;
  sub_10001A1D4();
}

uint64_t sub_1000C5AB4()
{
  sub_1000C9880();
  sub_1000C257C();
  sub_1000C92EC();
  switch(v2)
  {
    case 1:
      sub_100099938();
      sub_1000995FC();
      goto LABEL_4;
    case 2:
      sub_1000C9874();
      sub_1000C9358();
      goto LABEL_4;
    case 3:
      sub_1000C988C();
      goto LABEL_7;
    default:
LABEL_4:
      sub_1000C94F0();
      v6 = sub_1000C9490(v3, 0xEA0000000000656CLL, v4, v5);

      if ((v6 & 1) == 0)
      {
        return sub_1000C8970(v1, &qword_1002B3310, &qword_10020A0A0);
      }

LABEL_7:
      v8 = *(v1 + 32);
      if (v8 == 255)
      {
        v10 = 0;
        v12 = 0;
        sub_1000C9BF0();
      }

      else
      {
        v9 = *(v1 + 16);
        v15 = *v1;
        v16 = v9;
        v17 = v8;
        v10 = sub_1000C5C28();
        v12 = v11;
        sub_1000C8970(v1, &qword_1002B3310, &qword_10020A0A0);
      }

      v14[0] = v10;
      v14[1] = v12;
      sub_1000C954C();
      sub_1001C738C(v13, 18);
      result = sub_1000C8970(v14, &qword_1002B34A0, &qword_1002009E0);
      *(v0 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels) |= 3uLL;
      return result;
  }
}

uint64_t sub_1000C5C28()
{
  v1 = *v0;
  switch(*(v0 + 32))
  {
    case 1:
      sub_1000C98D4();
      goto LABEL_8;
    case 2:
      sub_1000C9904();
      goto LABEL_8;
    case 3:
      sub_1000C9558();
      v4 = v5 & 0xFFFFFFFFFFFFLL | 0x3A6B000000000000;
LABEL_8:
      v7 = v4;
      sub_1001F6CA8(v3);
      sub_1000998B0();
      v1._countAndFlagsBits = sub_100037B7C();
      goto LABEL_9;
    case 4:
      v2 = 979661939;
      goto LABEL_4;
    default:
      sub_1000C9914();
LABEL_4:
      v7 = v2;
LABEL_9:
      sub_1001F6CA8(v1);
      return v7;
  }
}

unint64_t sub_1000C5D00()
{
  sub_1000C257C();
  sub_1000C9934();
  sub_1000C92EC();
  switch(v1)
  {
    case 1:
      sub_1000C9368();
      sub_1000995FC();
      goto LABEL_4;
    case 2:
      sub_1000C932C();
      goto LABEL_4;
    case 3:
      sub_1000C988C();
      goto LABEL_7;
    default:
LABEL_4:
      sub_1000C942C();
      sub_1000C9A28();
      if ((v0 & 1) == 0)
      {
        return 4;
      }

LABEL_7:
      sub_1000C5388(35);
      if (!v2)
      {
        return 4;
      }

      return sub_1001617C8();
  }
}

void sub_1000C5DD0(char a1)
{
  sub_1000C257C();
  v2 = 0xEA0000000000656CLL;
  sub_1000C92EC();
  switch(v3)
  {
    case 1:
      v2 = 0xED0000656C62616DLL;
      sub_1000995FC();
      goto LABEL_4;
    case 2:
      v2 = 0x8000000100221B70;
      sub_1000C9358();
      goto LABEL_4;
    case 3:
      sub_1000C988C();
      goto LABEL_7;
    default:
LABEL_4:
      sub_1000C94F0();
      v7 = sub_1000C9490(v4, v2, v5, v6);

      if (v7)
      {
LABEL_7:
        v8 = 0xE400000000000000;
        v9 = 1701736302;
        switch(a1)
        {
          case 1:
            v9 = 1701147238;
            goto LABEL_12;
          case 2:
            v8 = 0xEA00000000006F47;
            v9 = 0x756F597341796170;
            goto LABEL_12;
          case 3:
            v8 = 0xEA0000000000746ELL;
            v9 = 0x6F72467055796170;
            goto LABEL_12;
          case 4:
            v10 = 0u;
            v11 = 0u;
            goto LABEL_13;
          default:
LABEL_12:
            *(&v11 + 1) = type metadata for String;
            *&v10 = v9;
            *(&v10 + 1) = v8;
LABEL_13:
            sub_1001C738C(&v10, 35);
            sub_1000C8970(&v10, &qword_1002B34A0, &qword_1002009E0);
            sub_1000C9568(OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels);
            break;
        }
      }

      return;
  }
}

void sub_1000C5F7C()
{
  sub_1000C257C();
  sub_1000C9934();
  sub_1000C92EC();
  switch(v1)
  {
    case 1:
      sub_1000C9368();
      sub_1000995FC();
      goto LABEL_4;
    case 2:
      sub_1000C932C();
      goto LABEL_4;
    case 3:
      sub_1000C988C();
      goto LABEL_7;
    default:
LABEL_4:
      sub_1000C942C();
      sub_1000C9A28();
      if (v0)
      {
LABEL_7:
        v2 = sub_1000C5388(36);
        if (v3)
        {
          sub_1001EB808(v2, v3);
        }
      }

      return;
  }
}

void sub_1000C6038(uint64_t a1, uint64_t a2)
{
  sub_1000C257C();
  v4 = 0xEA0000000000656CLL;
  sub_1000C92EC();
  switch(v5)
  {
    case 1:
      v4 = 0xED0000656C62616DLL;
      sub_1000995FC();
      goto LABEL_4;
    case 2:
      v4 = 0x8000000100221B70;
      sub_1000C9358();
      goto LABEL_4;
    case 3:
      sub_1000C988C();
      goto LABEL_7;
    default:
LABEL_4:
      sub_1000C94F0();
      v9 = sub_1000C9490(v6, v4, v7, v8);

      if (v9)
      {
LABEL_7:
        if (a2 == 7)
        {
          sub_1000C9BF0();
        }

        else
        {
          v10 = sub_1001EBEE0(a1, a2);
        }

        v13[0] = v10;
        v13[1] = v11;
        sub_1000C954C();
        sub_1001C738C(v12, 36);
        sub_1000C8970(v13, &qword_1002B34A0, &qword_1002009E0);
        sub_1000C9568(OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels);
      }

      return;
  }
}

void sub_1000C617C(unint64_t a1, unint64_t a2, unint64_t a3)
{
  if ((a3 & 0x100000000) != 0)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = a1;
    v7 = HIDWORD(a1);
    v8 = HIWORD(a1);
    v9 = a2 >> 16;
    v10 = HIDWORD(a2);
    v11 = HIWORD(a2);
    v12 = a3 >> 16;
    type metadata accessor for Decimal(0);
    LODWORD(v14) = v6;
    WORD2(v14) = v7;
    HIWORD(v14) = v8;
    LOWORD(v15) = v5;
    WORD1(v15) = v9;
    WORD2(v15) = v10;
    HIWORD(v15) = v11;
    LOWORD(v16) = v4;
    WORD1(v16) = v12;
  }

  v17 = v13;
  sub_1001C738C(&v14, 21);
  sub_1000C8970(&v14, &qword_1002B34A0, &qword_1002009E0);
  if ((*(v3 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels) & 2) == 0)
  {
    sub_1000C997C(OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels);
  }
}

uint64_t sub_1000C6260()
{
  v1 = sub_1001F6B48();
  [v0 BOOLValueForProperty:v1];

  return sub_1000C52B0(24) & 1;
}

uint64_t sub_1000C62C4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    sub_1000C9BF0();
  }

  v4[0] = a1;
  v4[1] = a2;
  sub_1000C954C();
  sub_1001C738C(v2, 28);
  return sub_1000C8970(v4, &qword_1002B34A0, &qword_1002009E0);
}

void sub_1000C6320()
{
  sub_1000C9880();
  sub_1000C257C();
  sub_1000C92EC();
  switch(v2)
  {
    case 1:
      sub_100099938();
      sub_1000995FC();
      goto LABEL_4;
    case 2:
      sub_1000C9874();
      sub_1000C9358();
      goto LABEL_4;
    case 3:
      sub_1000C988C();
      goto LABEL_9;
    default:
LABEL_4:
      sub_1000C94F0();
      v6 = sub_1000C9490(v3, 0xEA0000000000656CLL, v4, v5);

      if (v6)
      {
LABEL_9:
        if (v1)
        {
          v8 = *(v1 + 16);
          if (v8)
          {
            sub_1000375CC(0, v8, 0);
            v9 = (v1 + 64);
            do
            {
              v10 = *v9;
              v9 += 40;
              switch(v10)
              {
                case 1:
                  sub_1000C98D4();
                  *&v45 = v35;
                  *(&v45 + 1) = 0xE600000000000000;
                  v36 = sub_1000C9318();
                  sub_10008A298(v36, v37, v38, v39, 1u);
                  v53._countAndFlagsBits = sub_100062234();
                  sub_1001F6CA8(v53);
                  sub_1000998B0();
                  v54._countAndFlagsBits = sub_1000C9970();
                  sub_1001F6CA8(v54);
                  v16 = sub_1000C9318();
                  v20 = 1;
                  break;
                case 2:
                  sub_1000C9904();
                  *&v45 = v25;
                  *(&v45 + 1) = 0xE500000000000000;
                  v26 = sub_1000C9318();
                  sub_10008A298(v26, v27, v28, v29, 2u);
                  v49._countAndFlagsBits = sub_100062234();
                  sub_1001F6CA8(v49);
                  sub_1000998B0();
                  v50._countAndFlagsBits = sub_1000C9970();
                  sub_1001F6CA8(v50);
                  v16 = sub_1000C9318();
                  v20 = 2;
                  break;
                case 3:
                  sub_1000C9558();
                  *&v45 = v30 & 0xFFFFFFFFFFFFLL | 0x3A6B000000000000;
                  *(&v45 + 1) = 0xE800000000000000;
                  v31 = sub_1000C9318();
                  sub_10008A298(v31, v32, v33, v34, 3u);
                  v51._countAndFlagsBits = sub_100062234();
                  sub_1001F6CA8(v51);
                  sub_1000998B0();
                  v52._countAndFlagsBits = sub_1000C9970();
                  sub_1001F6CA8(v52);
                  v16 = sub_1000C9318();
                  v20 = 3;
                  break;
                case 4:
                  *&v45 = 979661939;
                  *(&v45 + 1) = 0xE400000000000000;
                  v21 = sub_1000C9318();
                  sub_10008A298(v21, v22, v23, v24, 4u);
                  v48._countAndFlagsBits = sub_100062234();
                  sub_1001F6CA8(v48);
                  v16 = sub_1000C9318();
                  v20 = 4;
                  break;
                default:
                  sub_1000C9914();
                  *&v45 = v11;
                  *(&v45 + 1) = 0xE600000000000000;
                  v12 = sub_1000C9318();
                  sub_10008A298(v12, v13, v14, v15, 0);
                  v47._countAndFlagsBits = sub_100062234();
                  sub_1001F6CA8(v47);
                  v16 = sub_1000C9318();
                  v20 = 0;
                  break;
              }

              sub_100099050(v16, v17, v18, v19, v20);
              v40 = v45;
              v42 = _swiftEmptyArrayStorage[2];
              v41 = _swiftEmptyArrayStorage[3];
              if (v42 >= v41 >> 1)
              {
                v43 = sub_10005669C(v41);
                sub_1000375CC(v43, v42 + 1, 1);
              }

              _swiftEmptyArrayStorage[2] = v42 + 1;
              *&_swiftEmptyArrayStorage[2 * v42 + 4] = v40;
              --v8;
            }

            while (v8);
          }

          *(&v46 + 1) = sub_1000183C4(&qword_1002ACA10, qword_1001FEBF0);
          *&v45 = _swiftEmptyArrayStorage;
        }

        else
        {
          v45 = 0u;
          v46 = 0u;
        }

        sub_1001C738C(&v45, 19);
        sub_1000C8970(&v45, &qword_1002B34A0, &qword_1002009E0);
        v44 = *(v0 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels);
        if ((v44 & 1) == 0)
        {
          *(v0 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels) = v44 | 1;
        }

        sub_10001A1D4();
      }

      else
      {
        sub_10001A1D4();
      }

      return;
  }
}

uint64_t sub_1000C66A0()
{
  v0 = sub_1000C2E3C();
  v1 = v0;
  if (v0)
  {
    sub_1000C45A0(v0, v3);

    v1 = 0;
    if (v4 != 255)
    {
      if (v4 == 4)
      {
        v1 = sub_1000EE5B8(v3[0], v3[1]);
      }

      sub_1000C8970(v3, &qword_1002B3310, &qword_10020A0A0);
    }
  }

  return v1;
}

uint64_t sub_1000C672C()
{
  sub_1000C56AC(&v14);
  switch(v15)
  {
    case 0:
      v0 = sub_1000C9D2C(v14);
      sub_1000C8970(&v14, &qword_1002B3310, &qword_10020A0A0);
      if (!v0)
      {
        return 0;
      }

      v1 = *(v0 + 136);

      return v1;
    case 1:
      v9 = sub_1000C9D2C(v14);

      if (!v9)
      {
        goto LABEL_12;
      }

      v10 = sub_100037B7C();
      v5 = sub_100025678(v10, v11);
      goto LABEL_11;
    case 2:
      v2 = sub_1000C9D2C(v14);

      if (!v2)
      {
        goto LABEL_12;
      }

      v3 = sub_100037B7C();
      v5 = sub_10002574C(v3, v4);
      goto LABEL_11;
    case 3:
      v6 = sub_1000C9D2C(v14);

      if (v6)
      {
        v7 = sub_100037B7C();
        v5 = sub_100025820(v7, v8);
LABEL_11:
        v12 = v5;

        return v12;
      }

      else
      {
LABEL_12:

        return 0;
      }

    case 4:
      sub_1000C8970(&v14, &qword_1002B3310, &qword_10020A0A0);
      return 0;
    default:
      return 0;
  }
}

void *sub_1000C6894(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a3)
    {
      v5 = result;
      sub_1000183C4(&qword_1002B3358, &qword_10020A118);
      v6 = sub_1001F6F88();
      *(v6 + 16) = a3;
      v7 = a3 - 1;
      for (i = 32; ; i += 16)
      {
        v9 = (v6 + i);
        *v9 = v5;
        v9[1] = a2;
        if (!v7)
        {
          break;
        }

        --v7;
      }
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }

    return v6;
  }

  return result;
}

void *sub_1000C693C(void *result, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return _swiftEmptyArrayStorage;
    }

    v3 = result;
    v4 = sub_1001F6F88();
    *(v4 + 16) = a2;
    memset((v4 + 32), v3, a2);
    return v4;
  }

  return result;
}

void *sub_1000C69AC(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_1001F6F88();
      *(v4 + 16) = a2;
      v5 = a2 - 1;
      for (i = 32; ; i += 40)
      {
        v7 = v4 + i;
        v8 = *v3;
        v9 = *(v3 + 1);
        *(v7 + 32) = *(v3 + 32);
        *v7 = v8;
        *(v7 + 16) = v9;
        if (!v5)
        {
          break;
        }

        sub_1000C8908(v3, v10);
        --v5;
      }
    }

    else
    {
      sub_1000C8940(result);
      return _swiftEmptyArrayStorage;
    }

    return v4;
  }

  return result;
}

void *sub_1000C6A50(void *result, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return _swiftEmptyArrayStorage;
    }

    v3 = result;
    v4 = sub_1001F6F88();
    *(v4 + 16) = a2;
    memset((v4 + 32), v3 & 1, a2);
    return v4;
  }

  return result;
}

void sub_1000C6AC4(uint64_t a1)
{
  sub_1000C9ACC();
  v3 = v2;
  v5 = v4;
  if (v1)
  {
    v6 = v1;
    v7 = *(v1 + 16);
    if (v7)
    {
      sub_1000375CC(0, v7, 0);
      v8 = (v6 + 32);
      do
      {
        v9 = *v8++;
        v10 = sub_10013EBCC(v9);
        v12 = v11;
        v14 = _swiftEmptyArrayStorage[2];
        v13 = _swiftEmptyArrayStorage[3];
        if (v14 >= v13 >> 1)
        {
          v16 = sub_10005669C(v13);
          sub_1000375CC(v16, v14 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v14 + 1;
        v15 = &_swiftEmptyArrayStorage[2 * v14];
        v15[4] = v10;
        v15[5] = v12;
        --v7;
      }

      while (v7);
    }

    v17.super.isa = sub_1001F6F18().super.isa;
  }

  else
  {
    v17.super.isa = 0;
  }

  [swift_getObjCClassFromMetadata() queryOnConnection:v5 predicate:v3 orderingProperties:v17.super.isa];

  sub_1000A3DA0();
}

uint64_t sub_1000C6BE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v8.receiver = v2;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "copyWithZone:", a1);
  sub_1001F76D8();
  swift_unknownObjectRelease();
  result = swift_dynamicCast();
  *(v7 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels) = *&v2[OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels];
  a2[3] = ObjectType;
  *a2 = v7;
  return result;
}

void sub_1000C6CF8(uint64_t a1)
{
  sub_1000C9ACC();
  v14 = v2;
  v15 = v3;
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels] = 0;
  v7 = &v1[OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___bundleID];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v1[OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___id];
  *v8 = 0;
  v8[8] = 1;
  v9 = &v1[OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___productID];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v1[OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___purchaseDate];
  *v10 = 0;
  v10[8] = 1;
  v1[OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___type] = 4;
  sub_1000377A8();
  isa = sub_1001F6988().super.isa;

  v12 = sub_1001F6988().super.isa;

  v13.receiver = v1;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "initWithDatabaseID:propertyValues:externalPropertyValues:", v5, isa, v12);

  sub_1000A3DA0();
}

id sub_1000C6EC4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

_BYTE *storeEnumTagSinglePayload for Transaction.RevocationReason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000C7050);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000C708C()
{
  result = qword_1002B3280;
  if (!qword_1002B3280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3280);
  }

  return result;
}

unint64_t sub_1000C70E4()
{
  result = qword_1002B3288;
  if (!qword_1002B3288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3288);
  }

  return result;
}

unint64_t sub_1000C713C()
{
  result = qword_1002B3290;
  if (!qword_1002B3290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3290);
  }

  return result;
}

unint64_t sub_1000C7194()
{
  result = qword_1002B3298;
  if (!qword_1002B3298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3298);
  }

  return result;
}

unint64_t sub_1000C71EC()
{
  result = qword_1002B32A0;
  if (!qword_1002B32A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B32A0);
  }

  return result;
}

uint64_t sub_1000C7240()
{
  sub_1000C9ACC();
  v147 = v1;
  v148 = v2;
  v142 = v3;
  ObjectType = swift_getObjectType();
  v140 = sub_1001F8118();
  sub_10001A278();
  v139 = v4;
  __chkstk_darwin(v5);
  sub_100023510();
  v138 = v7 - v6;
  v8 = sub_1000183C4(&qword_1002B32E8, &qword_10020A060);
  sub_100056658(v8);
  sub_10001E844();
  __chkstk_darwin(v9);
  v137 = &v130 - v10;
  v11 = sub_1001F6508();
  sub_10001A278();
  v136 = v12;
  __chkstk_darwin(v13);
  sub_100023510();
  v135 = v15 - v14;
  v143 = v0;
  sub_1000183C4(&unk_1002BC430, &qword_10020A068);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100209D20;
  *(v16 + 32) = 0x4449656C646E7562;
  *(v16 + 40) = 0xE800000000000000;
  v17 = v0;
  *(v16 + 48) = sub_1000BFC34(&OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___bundleID, 2);
  *(v16 + 56) = v18;
  *(v16 + 96) = sub_1000C9C8C();
  sub_1000C9B3C();
  *(v16 + 120) = &type metadata for UInt;
  *(v16 + 128) = v19;
  *(v16 + 136) = 0xE900000000000044;
  *(v16 + 144) = sub_1000BFC34(&OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___productID, 9);
  *(v16 + 152) = v20;
  sub_1000C9B28();
  *(v16 + 168) = type metadata for String;
  *(v16 + 176) = v21;
  *(v16 + 184) = 0xEC00000065746144;
  sub_1000BFDA8();
  *(v16 + 216) = v11;
  sub_1000629FC((v16 + 192));
  sub_1001F6418();
  *(v16 + 224) = 1701869940;
  *(v16 + 232) = 0xE400000000000000;
  *(v16 + 240) = sub_1000C257C();
  *(v16 + 264) = &type metadata for OctaneIAPType;
  *(v16 + 272) = 0x6E6F69746361;
  *(v16 + 280) = 0xE600000000000000;
  *(v16 + 288) = sub_1000C22AC();
  *(v16 + 312) = &type metadata for Transaction.Action;
  *(v16 + 320) = 0x6C616E696769726FLL;
  *(v16 + 328) = 0xEA00000000004449;
  v22 = sub_1000C5470(8, &type metadata for UInt);
  v24 = v23;
  sub_1000183C4(&qword_1002B32F0, &unk_10020A070);
  *(v16 + 336) = v22;
  *(v16 + 344) = v24 & 1;
  sub_1000B3DE0();
  v133 = v25;
  *(v16 + 360) = v25;
  *(v16 + 368) = 0xD000000000000014;
  *(v16 + 376) = v26;
  sub_1000C5470(12, &type metadata for Double);
  v28 = v27;
  v29 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  *(v16 + 408) = v29;
  v30 = sub_1000629FC((v16 + 384));
  if (v28)
  {
    v31 = 1;
  }

  else
  {
    sub_1001F6418();
    v31 = 0;
  }

  v32 = 1;
  sub_100018460(v30, v31, 1, v11);
  strcpy((v16 + 416), "askToBuyStatus");
  *(v16 + 431) = -18;
  v33 = sub_1000C22E4();
  v34 = sub_1000183C4(&qword_1002B32F8, &qword_10020A080);
  *(v16 + 432) = v33;
  *(v16 + 456) = v34;
  *(v16 + 464) = 0x61446C65636E6163;
  *(v16 + 472) = 0xEA00000000006574;
  v35 = sub_1000C5470(3, &type metadata for Double);
  v37 = v36;
  v38 = sub_1000183C4(&qword_1002B3300, &qword_10020A088);
  *(v16 + 480) = v35;
  *(v16 + 488) = v37 & 1;
  *(v16 + 504) = v38;
  strcpy((v16 + 512), "expirationDate");
  *(v16 + 527) = -18;
  v39 = sub_1000C5470(4, &type metadata for Double);
  v41 = v40;
  v134 = v29;
  *(v16 + 552) = v29;
  v42 = sub_1000629FC((v16 + 528));
  if ((v41 & 1) == 0)
  {
    sub_1001F6418();
    v32 = 0;
  }

  sub_100018460(v42, v32, 1, v11);
  *(v16 + 560) = 0x64656873696E6966;
  *(v16 + 568) = 0xE800000000000000;
  v43 = sub_1000C2448();
  v132 = v11;
  *(v16 + 600) = &type metadata for Bool;
  *(v16 + 576) = v43 & 1;
  sub_1000C9964();
  *(v16 + 608) = 0xD000000000000010;
  *(v16 + 616) = v44;
  v45 = sub_1000C2750();
  *(v16 + 648) = &type metadata for Bool;
  *(v16 + 624) = v45 & 1;
  sub_1000B3DE0();
  *(v16 + 656) = 0xD000000000000013;
  sub_1000C9940();
  *(v16 + 664) = v46;
  v47 = sub_1000C5670();
  *(v16 + 696) = sub_1000183C4(&qword_1002B3308, &unk_10020A090);
  *(v16 + 672) = v47;
  *(v16 + 704) = 0x6574617473;
  *(v16 + 712) = 0xE500000000000000;
  v48 = sub_1000C43D8();
  *(v16 + 744) = &type metadata for Transaction.State;
  *(v16 + 720) = v48;
  sub_1000B3DE0();
  *(v16 + 752) = v42;
  *(v16 + 760) = v49;
  sub_1000C5388(15);
  sub_1000C9B50();
  v50 = sub_1000183C4(&qword_1002AEBE0, &qword_100203700);
  *(v16 + 792) = v50;
  *(v16 + 768) = v42;
  *(v16 + 776) = v39;
  sub_1000C9C10();
  *(v16 + 800) = v51;
  *(v16 + 808) = 0xE800000000000000;
  v52 = sub_1000C2550();
  *(v16 + 840) = &type metadata for Int;
  *(v16 + 816) = v52;
  sub_1000C9C24();
  *(v16 + 848) = v53;
  sub_1000C9BB8();
  *(v16 + 856) = v54;
  v55 = sub_1000BFBB0();
  *(v16 + 888) = &type metadata for Bool;
  *(v16 + 864) = v55 & 1;
  *(v16 + 896) = 0x726566666FLL;
  *(v16 + 904) = 0xE500000000000000;
  sub_1000C56AC(v144);
  *(v16 + 936) = sub_1000183C4(&qword_1002B3310, &qword_10020A0A0);
  v56 = swift_allocObject();
  *(v16 + 912) = v56;
  v57 = v144[1];
  *(v56 + 16) = v144[0];
  *(v56 + 32) = v57;
  *(v56 + 48) = v145;
  sub_1000B3DE0();
  *(v16 + 944) = 0xD000000000000010;
  v131 = 0xD000000000000010;
  *(v16 + 952) = v58;
  v59 = sub_1000C5D00();
  *(v16 + 984) = sub_1000183C4(&qword_1002B3318, &qword_10020A0A8);
  *(v16 + 960) = v59;
  *(v16 + 992) = 0x726550726566666FLL;
  *(v16 + 1000) = 0xEB00000000646F69;
  sub_1000C5F7C();
  v61 = v60;
  v63 = v62;
  *(v16 + 1032) = sub_1000183C4(&qword_1002B3320, &unk_10020A0B0);
  *(v16 + 1008) = v61;
  *(v16 + 1016) = v63;
  *(v16 + 1040) = 0x6F726665726F7473;
  *(v16 + 1048) = 0xEA0000000000746ELL;
  sub_1000BFCB0(v146);
  *(v16 + 1080) = sub_1000183C4(&qword_1002AEDE0, &unk_100207230);
  v64 = swift_allocObject();
  *(v16 + 1056) = v64;
  memcpy((v64 + 16), v146, 0x50uLL);
  *(v16 + 1088) = 0x6563697270;
  *(v16 + 1096) = 0xE500000000000000;
  sub_1000BFD40();
  sub_1000C9B50();
  v66 = v65;
  *(v16 + 1128) = sub_1000183C4(&qword_1002B3328, &unk_10020A0C0);
  *(v16 + 1104) = v61;
  *(v16 + 1112) = v63;
  *(v16 + 1120) = v66;
  *(v16 + 1124) = BYTE4(v66) & 1;
  *(v16 + 1136) = 0x756F636341707061;
  *(v16 + 1144) = 0xEF6E656B6F54746ELL;
  *(v16 + 1176) = sub_1000183C4(&qword_1002AFA30, &unk_10020FA10);
  v67 = sub_1000629FC((v16 + 1152));
  sub_1000C2DBC(v67);
  *(v16 + 1184) = 0x616470557473616CLL;
  *(v16 + 1192) = 0xEB00000000646574;
  sub_1000C4780();
  *(v16 + 1224) = v11;
  sub_1000629FC((v16 + 1200));
  sub_1001F6418();
  *(v16 + 1232) = 0x6461726770557369;
  *(v16 + 1240) = 0xEA00000000006465;
  v68 = sub_1000C6260();
  *(v16 + 1272) = &type metadata for Bool;
  *(v16 + 1248) = v68 & 1;
  sub_1000C9964();
  sub_1000C9940();
  v69 = v61 - 1;
  *(v16 + 1280) = v61 - 1;
  *(v16 + 1288) = v70;
  v71 = sub_1000C5470(25, &type metadata for UInt);
  *(v16 + 1320) = v133;
  *(v16 + 1296) = v71;
  *(v16 + 1304) = v72 & 1;
  sub_1000B3DE0();
  *(v16 + 1328) = v61;
  *(v16 + 1336) = v73;
  v74 = sub_1000C2D8C();
  *(v16 + 1368) = &unk_1002889A8;
  *(v16 + 1344) = v74;
  sub_1000B3DE0();
  *(v16 + 1376) = 0xD000000000000010;
  *(v16 + 1384) = v75;
  v76 = sub_1000BFBD0();
  *(v16 + 1416) = sub_1000183C4(&qword_1002B3330, &qword_10020A0D0);
  *(v16 + 1392) = v76;
  sub_1000B3DE0();
  *(v16 + 1424) = 0xD000000000000016;
  *(v16 + 1432) = v77;
  v78 = sub_1000C5388(28);
  *(v16 + 1464) = v50;
  *(v16 + 1440) = v78;
  *(v16 + 1448) = v79;
  *(v16 + 1472) = 0x52676E696C6C6962;
  *(v16 + 1480) = 0xEF646E4579727465;
  v80 = v134;
  *(v16 + 1512) = v134;
  v81 = sub_1000629FC((v16 + 1488));
  sub_1000C3914(30, v81);
  v133 = 0xD00000000000001CLL;
  *(v16 + 1520) = 0xD00000000000001CLL;
  *(v16 + 1528) = 0x80000001002270D0;
  *(v16 + 1560) = v80;
  v82 = sub_1000629FC((v16 + 1536));
  sub_1000C3914(29, v82);
  *(v16 + 1568) = 0x6553736568737570;
  *(v16 + 1576) = 0xEA0000000000746ELL;
  v83 = sub_1000C3888();
  LOBYTE(v61) = v84;
  *(v16 + 1608) = sub_1000183C4(&qword_1002B3338, &qword_10020A0D8);
  *(v16 + 1584) = v83;
  *(v16 + 1592) = v61 & 1;
  sub_1000B3DE0();
  *(v16 + 1616) = 0xD000000000000013;
  *(v16 + 1624) = v85;
  LOBYTE(v83) = sub_1000C152C();
  *(v16 + 1656) = sub_1000183C4(&qword_1002B02E0, &unk_10020A0E0);
  *(v16 + 1632) = v83;
  *(v16 + 1664) = 0xD00000000000001BLL;
  *(v16 + 1672) = 0x8000000100222E30;
  *(v16 + 1704) = v80;
  v86 = sub_1000629FC((v16 + 1680));
  sub_1000C3914(33, v86);
  sub_1000B3DE0();
  *(v16 + 1712) = v69;
  *(v16 + 1720) = v87;
  v88 = sub_1000C3610();
  LOBYTE(v61) = v89;
  v90 = sub_1000183C4(&qword_1002B1470, &qword_100207240);
  *(v16 + 1752) = v90;
  *(v16 + 1728) = v88;
  *(v16 + 1736) = v61 & 1;
  strcpy((v16 + 1760), "adHocOfferID");
  *(v16 + 1773) = 0;
  *(v16 + 1774) = -5120;
  v91 = sub_1000C2770(v90);
  *(v16 + 1800) = v50;
  *(v16 + 1776) = v91;
  *(v16 + 1784) = v92;
  sub_1000C9558();
  *(v16 + 1808) = v93 & 0xFFFFFFFFFFFFLL | 0x4F6B000000000000;
  *(v16 + 1816) = 0xEE00444972656666;
  v95 = sub_1000C27E4(v94);
  *(v16 + 1848) = v50;
  *(v16 + 1824) = v95;
  *(v16 + 1832) = v96;
  strcpy((v16 + 1856), "nextRenewalIDs");
  *(v16 + 1871) = -18;
  v97 = sub_1000C2E3C();
  v98 = sub_1000183C4(&qword_1002B3340, &qword_10020A0F0);
  *(v16 + 1896) = v98;
  *(v16 + 1872) = v97;
  *(v16 + 1904) = 0x7541646C756F6873;
  *(v16 + 1912) = 0xEF77656E65726F74;
  v99 = sub_1000C2C60(v98);
  *(v16 + 1944) = &type metadata for Bool;
  *(v16 + 1920) = v99 & 1;
  strcpy((v16 + 1952), "hasIntroOffer");
  *(v16 + 1966) = -4864;
  v100 = sub_1000C25B8(v99);
  *(v16 + 1992) = &type metadata for Bool;
  *(v16 + 1968) = v100;
  sub_1000B3DE0();
  *(v16 + 2000) = v69;
  *(v16 + 2008) = v101;
  v103 = sub_1000C1570(v102);
  *(v16 + 2040) = v50;
  *(v16 + 2016) = v103;
  *(v16 + 2024) = v104;
  *(v16 + 2048) = 0x6572697078457369;
  sub_1000C9BB8();
  *(v16 + 2056) = v105;
  v106 = sub_1000C4420(4);
  *(v16 + 2088) = &type metadata for Bool;
  *(v16 + 2064) = v106;
  *(v16 + 2096) = 0x6C65636E61437369;
  *(v16 + 2104) = 0xEB0000000064656CLL;
  v107 = sub_1000C4420(3);
  *(v16 + 2136) = &type metadata for Bool;
  *(v16 + 2112) = v107;
  sub_1000B3DE0();
  *(v16 + 2144) = v131;
  *(v16 + 2152) = v108;
  v109 = sub_1000C1760();
  *(v16 + 2184) = &type metadata for Bool;
  *(v16 + 2160) = v109 & 1;
  sub_1000B3DE0();
  *(v16 + 2192) = 0xD000000000000016;
  *(v16 + 2200) = v110;
  v111 = v135;
  sub_1001F64E8();
  LOBYTE(v50) = sub_1000C15EC(v111);
  v112 = *(v136 + 8);
  v113 = v132;
  v112(v111, v132);
  *(v16 + 2232) = &type metadata for Bool;
  *(v16 + 2208) = v50 & 1;
  sub_1000C9964();
  *(v16 + 2240) = 0xD000000000000011;
  *(v16 + 2248) = v114;
  v115 = sub_1000C36EC(30);
  *(v16 + 2280) = &type metadata for Bool;
  *(v16 + 2256) = v115 & 1;
  sub_1000B3DE0();
  *(v16 + 2288) = v133;
  *(v16 + 2296) = v116;
  v117 = sub_1000C36EC(29);
  *(v16 + 2328) = &type metadata for Bool;
  *(v16 + 2304) = v117 & 1;
  sub_1000B3DE0();
  *(v16 + 2336) = 0xD000000000000013;
  *(v16 + 2344) = v118;
  v119 = sub_1000C2858();
  *(v16 + 2376) = &type metadata for Bool;
  *(v16 + 2352) = v119 & 1;
  sub_1000C9964();
  *(v16 + 2384) = 0xD00000000000001ALL;
  *(v16 + 2392) = v120;
  v122 = sub_1000C2468(v121);
  *(v16 + 2424) = &type metadata for Bool;
  *(v16 + 2400) = v122 & 1;
  *(v16 + 2432) = 0x6576697463417369;
  *(v16 + 2440) = 0xE800000000000000;
  sub_1001F64E8();
  LOBYTE(v50) = sub_1000C18DC();
  v123 = sub_1000C9970();
  (v112)(v123);
  *(v16 + 2472) = &type metadata for Bool;
  *(v16 + 2448) = v50 & 1;
  sub_1000C9964();
  *(v16 + 2480) = 0xD000000000000017;
  *(v16 + 2488) = v124;
  sub_1001F64E8();
  *(v16 + 2520) = v113;
  v125 = sub_1000629FC((v16 + 2496));
  sub_1000C2CD8(v111, v125);
  v126 = sub_1000C9970();
  (v112)(v126);
  strcpy((v16 + 2528), "updatedModels");
  *(v16 + 2542) = -4864;
  v127 = *&v17[OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels];
  *(v16 + 2568) = &type metadata for Transaction.UpdatedModels;
  *(v16 + 2544) = v127;
  v128 = sub_1001F8108();
  sub_100018460(v137, 1, 1, v128);
  (*(v139 + 104))(v138, enum case for Mirror.AncestorRepresentation.generated(_:), v140);
  return sub_1001F8148();
}

uint64_t sub_1000C8184()
{
  v1 = *(v0 + 48);
  if (v1 != 255)
  {
    sub_100099050(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v1);
  }

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_1000C81CC()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 96, 7);
}

void sub_1000C8228(uint64_t a1)
{
  sub_1000C9ACC();
  v8 = v3 - v2;
  if (__OFSUB__(v3, v2))
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = v4;
  v10 = v3;
  v11 = v5;
  v12 = v6;
  v24 = v7;
  v13 = *v1;
  v14 = v13 + 32 + 24 * v2;
  sub_100075518();
  swift_arrayDestroy();
  v15 = v9 - v8;
  if (__OFSUB__(v9, v8))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v15)
  {
    goto LABEL_7;
  }

  v16 = *(v13 + 16);
  if (__OFSUB__(v16, v10))
  {
    goto LABEL_16;
  }

  sub_100033CE4((v13 + 32 + 24 * v10), v16 - v10, (v14 + 24 * v9));
  v17 = *(v13 + 16);
  v18 = __OFADD__(v17, v15);
  v19 = v17 + v15;
  if (v18)
  {
LABEL_17:
    __break(1u);
    return;
  }

  *(v13 + 16) = v19;
LABEL_7:
  if (v9 < 1)
  {
    sub_1000A3DA0();

    sub_1000C89CC(v20, v21, v22);
  }

  else
  {
    *v14 = v11;
    *(v14 + 8) = v12;
    *(v14 + 16) = v24;
    if (v14 + 24 < (v14 + 24 * v9))
    {
      sub_1000C89E4(v11, v12, v24);
      __break(1u);
    }

    sub_1000A3DA0();
  }
}

uint64_t sub_1000C8354(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = *(v9 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_15;
  }

  result = sub_100033CA0((v9 + 32 + 40 * a2), v13 - a2, (v10 + 40 * a3));
  v14 = *(v9 + 16);
  v11 = __OFADD__(v14, v12);
  v15 = v14 + v12;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v9 + 16) = v15;
LABEL_7:
  if (a3 >= 1)
  {
    if (*(a4 + 16) == a3)
    {
      swift_arrayInitWithCopy();
      goto LABEL_10;
    }

LABEL_17:
    __break(1u);
    return result;
  }

LABEL_10:
}

uint64_t sub_1000C844C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for SubscriptionRenewalCoordinator.RenewalTask(0);
  sub_1000AD850();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_16:
  result = sub_1001F7B48();
LABEL_6:
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1000375D8(&v7[v6], result - v6, (v5 + 8 * v3));
  if (v8)
  {
    result = sub_1001F7B48();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_18;
  }

  v4[2] = result + v9;
LABEL_12:
  if (v3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C8530(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  sub_1000AD850();
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = *(v7 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_11;
  }

  result = sub_100033C80((v7 + 32 + 16 * a2), v11 - a2, (v8 + 16 * a3));
  v12 = *(v7 + 16);
  v9 = __OFADD__(v12, v10);
  v13 = v12 + v10;
  if (v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v7 + 16) = v13;
LABEL_7:
  if (a3 > 0)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C85D8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptySetSingleton;
    goto LABEL_19;
  }

  sub_1000183C4(&unk_1002BC450, &unk_10020A100);
  result = sub_1001F7788();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    sub_1001F8068();

    sub_1001F6C28();
    result = sub_1001F80D8();
    v10 = ~(-1 << v3[32]);
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 6) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (sub_1001F7EA8() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 6) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 2);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 2) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1000C8768(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptySetSingleton;
    goto LABEL_14;
  }

  sub_1000183C4(&qword_1002B3348, &qword_10020A0F8);
  result = sub_1001F7788();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_14:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = *(a1 + 32 + v5++);
    sub_1001F8068();
    sub_1001F8088(v7);
    result = sub_1001F80D8();
    v8 = ~(-1 << v3[32]);
    while (1)
    {
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v6 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) == 0)
      {
        break;
      }

      if (*(*(v3 + 6) + v9) == v7)
      {
        goto LABEL_11;
      }

      result = v9 + 1;
    }

    *(v6 + 8 * v10) = v12 | v11;
    *(*(v3 + 6) + v9) = v7;
    v13 = *(v3 + 2);
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      goto LABEL_16;
    }

    *(v3 + 2) = v15;
LABEL_11:
    if (v5 == v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1000C88B4()
{
  result = qword_1002B3350;
  if (!qword_1002B3350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3350);
  }

  return result;
}

uint64_t sub_1000C8970(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1000183C4(a2, a3);
  sub_10007E2C8();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000C89CC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xBFu)
  {
  }

  return result;
}

double sub_1000C89E4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xBFu)
  {
  }

  return result;
}

uint64_t sub_1000C89FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1000183C4(a3, a4);
  sub_10007E2C8();
  v5 = sub_100037A2C();
  v6(v5);
  return a2;
}

uint64_t sub_1000C8A90(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 33))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000C8AD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

_BYTE *sub_1000C8B30(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000C8BFCLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Transaction.AskToBuyStatus(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000C8D00);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Transaction.Action(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000C8E04);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000C8E40()
{
  result = qword_1002B3360;
  if (!qword_1002B3360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3360);
  }

  return result;
}

unint64_t sub_1000C8E98()
{
  result = qword_1002B3368;
  if (!qword_1002B3368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3368);
  }

  return result;
}

unint64_t sub_1000C8EF0()
{
  result = qword_1002B3370;
  if (!qword_1002B3370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3370);
  }

  return result;
}

unint64_t sub_1000C8F48()
{
  result = qword_1002B3378;
  if (!qword_1002B3378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3378);
  }

  return result;
}

unint64_t sub_1000C8FA0()
{
  result = qword_1002B3380;
  if (!qword_1002B3380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3380);
  }

  return result;
}

unint64_t sub_1000C8FF8()
{
  result = qword_1002B3388;
  if (!qword_1002B3388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3388);
  }

  return result;
}

unint64_t sub_1000C9050()
{
  result = qword_1002B3390;
  if (!qword_1002B3390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3390);
  }

  return result;
}

unint64_t sub_1000C90A8()
{
  result = qword_1002B3398;
  if (!qword_1002B3398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3398);
  }

  return result;
}

unint64_t sub_1000C90FC()
{
  result = qword_1002B33A0;
  if (!qword_1002B33A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B33A0);
  }

  return result;
}

unint64_t sub_1000C9150()
{
  result = qword_1002B33A8;
  if (!qword_1002B33A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B33A8);
  }

  return result;
}

unint64_t sub_1000C91A4()
{
  result = qword_1002B33B0;
  if (!qword_1002B33B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B33B0);
  }

  return result;
}

unint64_t sub_1000C91F8()
{
  result = qword_1002B33B8;
  if (!qword_1002B33B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B33B8);
  }

  return result;
}

uint64_t sub_1000C93EC()
{
  sub_10003708C((v0 + 208), (v1 - 160));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1000C942C()
{

  return sub_1001F7EA8();
}

uint64_t sub_1000C9490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1001F7EA8();
}

double sub_1000C94AC()
{

  return result;
}

uint64_t sub_1000C94FC()
{
}

BOOL sub_1000C951C(uint64_t a1)
{

  return sub_1001F7A98(v1, v2);
}

uint64_t sub_1000C9668(uint64_t a1, uint64_t a2)
{

  return sub_1001F7EA8();
}

uint64_t sub_1000C9694()
{
}

_OWORD *sub_1000C96B0(uint64_t a1)
{
  *(v1 + 208) = a1;

  return sub_10003708C((v1 + 208), (v2 - 160));
}

uint64_t sub_1000C96CC()
{

  return sub_10013B560();
}

void *sub_1000C96E8(uint64_t a1, ...)
{

  return sub_1001F8068();
}

uint64_t sub_1000C9700(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_1001F6C28();
}

double sub_1000C97A4()
{
  result = 0.0;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  return result;
}

_OWORD *sub_1000C97B0()
{
  v4 = (*(v2 + 56) + 32 * v1);

  return sub_10003708C(v4, (v0 + 208));
}

uint64_t sub_1000C982C@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1000C89FC(v2, &a2 - a1, v3, v4);
}

uint64_t sub_1000C988C()
{
}

uint64_t sub_1000C9A0C(uint64_t a1, uint64_t a2)
{

  return sub_1001F7EA8();
}

uint64_t sub_1000C9A28()
{
}

double sub_1000C9A40()
{

  return result;
}

uint64_t sub_1000C9A68(uint64_t a1, uint64_t a2)
{

  return sub_1001F6C28();
}

uint64_t sub_1000C9A8C(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_1001F6C28();
}

void sub_1000C9AB0()
{
  v3._countAndFlagsBits = v1;
  v3._object = v0;

  sub_1001F6CA8(v3);
}

uint64_t sub_1000C9AE4()
{

  return sub_1001F7808();
}