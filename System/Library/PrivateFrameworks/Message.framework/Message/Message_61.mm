unint64_t sub_1B0BE28B8()
{
  result = qword_1EB6DB6A0;
  if (!qword_1EB6DB6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E5448, &qword_1B0ED0360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DB6A0);
  }

  return result;
}

unint64_t sub_1B0BE291C()
{
  result = qword_1EB6DCF00;
  if (!qword_1EB6DCF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCF00);
  }

  return result;
}

uint64_t sub_1B0BE29CC(uint64_t a1)
{
  result = _s6LoggerVMa_0(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ConnectionState(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1B0BE2B1C(uint64_t a1, unint64_t a2, char a3)
{
  sub_1B0BDCD94(a1, a2, a3 & 1);

  CommandConnection.flush()();
}

uint64_t sub_1B0BE2B48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1B0BE2BA8(uint64_t a1)
{
  v3 = *(_s6LoggerVMa_0(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 17) & ~*(v3 + 80));

  sub_1B0BEDDD0(a1, v4, v5);
}

double sub_1B0BE2C30(unint64_t a1)
{
  if (a1 >> 62 == 1)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

unint64_t sub_1B0BE2C90(uint64_t a1)
{
  v1 = CommandConnection.send(_:)(a1);
  CommandConnection.flush()();
  return v1;
}

double sub_1B0BE2CCC(uint64_t a1)
{
  *a1 = 3;
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
  *(a1 + 168) = 0;
  *(a1 + 176) = 7;
  return result;
}

uint64_t sub_1B0BE2D30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B0BE2D94(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1B044CEF8(result);
  }

  return result;
}

double sub_1B0BE2DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    return sub_1B0B6DCB0(a3, a4, a5);
  }

  return result;
}

uint64_t sub_1B0BE2E5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5480, &qword_1B0ED0470);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0BE2ECC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5480, &qword_1B0ED0470);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B0BE2F58(void *a1, uint64_t a2)
{
  v265 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 3);
  v262 = *(a1 + 2);
  v263 = v2;
  v264 = *(a1 + 4);
  v3 = *(a1 + 1);
  v260 = *a1;
  v261 = v3;
  if (!*(a2 + 16))
  {
    return;
  }

  sub_1B0E46C28();
  v5 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = a1[7];
  if ((v8 & 0x1000000000000000) != 0)
  {
    v9 = a1[6];
    v252 = *a1;
    v253 = v5;
    v254 = v7;
    v255 = v6;
    v256 = *(a1 + 2);
    v257 = v9;
    v258 = v8 & 0xEFFFFFFFFFFFFFFFLL;
    v259 = *(a1 + 4);
    MEMORY[0x1B2728D70](1);
    sub_1B0C0EF30(&v247);
  }

  else
  {
    MEMORY[0x1B2728D70](0);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  v10 = sub_1B0E46CB8();
  v11 = a2;
  v12 = a2 + 56;
  v13 = -1 << *(a2 + 32);
  v14 = v10 & ~v13;
  if (((*(a2 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return;
  }

  v15 = ~v13;
  v239 = ~v13;
  while (1)
  {
    v17 = (*(v11 + 48) + 80 * v14);
    v247 = *v17;
    v19 = v17[3];
    v18 = v17[4];
    v20 = v17[2];
    v248 = v17[1];
    v249 = v20;
    v250 = v19;
    v251 = v18;
    v21 = *(&v247 + 1);
    v22 = *(&v248 + 1);
    v23 = v248;
    v24 = *(&v19 + 1);
    if ((*(&v19 + 1) & 0x1000000000000000) == 0)
    {
      if ((*(a1 + 63) & 0x10) == 0)
      {
        v25 = a1[2];
        v26 = a1[3];
        if (v247 == *a1 || (v27 = sub_1B0E46A78(), v15 = v239, v12 = a2 + 56, (v27 & 1) != 0))
        {
          if (v23 == v25 && v22 == v26)
          {
            return;
          }

LABEL_7:
          v16 = sub_1B0E46A78();
          v15 = v239;
          v12 = a2 + 56;
          if (v16)
          {
            return;
          }

          goto LABEL_8;
        }
      }

      goto LABEL_8;
    }

    v28 = a1[7];
    if ((v28 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }

    v30 = *a1;
    v29 = a1[1];
    v31 = a1[2];
    v32 = a1[3];
    v33 = a1[9];
    v34 = (*(&v251 + 1) >> 59) & 6 | ((*(&v250 + 1) & 0x2000000000000000) != 0);
    if (v34 <= 2)
    {
      break;
    }

    if (v34 > 4)
    {
      v37 = (v28 >> 61) & 1;
      v38 = v33 >> 59;
      if (v34 == 5)
      {
        if ((v38 & 6 | v37) != 5)
        {
          goto LABEL_8;
        }
      }

      else if ((v38 & 6 | v37) != 6)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (v34 != 3)
      {
        if (((v33 >> 59) & 6 | ((v28 & 0x2000000000000000) != 0)) != 4)
        {
          goto LABEL_8;
        }

        v43 = *(&v247 + 1) >> 62;
        v44 = v29 >> 62;
        v237 = a1[3];
        if (*(&v247 + 1) >> 62 == 3)
        {
          v45 = 0;
          if (v247 != __PAIR128__(0xC000000000000000, 0))
          {
            goto LABEL_142;
          }

          if (v29 >> 62 != 3)
          {
            goto LABEL_142;
          }

          v45 = 0;
          if (v30 || v29 != 0xC000000000000000)
          {
            goto LABEL_142;
          }

          goto LABEL_157;
        }

        if (v43 > 1)
        {
          if (v43 == 2)
          {
            v54 = *(v247 + 16);
            v53 = *(v247 + 24);
            v50 = __OFSUB__(v53, v54);
            v45 = v53 - v54;
            if (v50)
            {
              goto LABEL_411;
            }
          }

          else
          {
            v45 = 0;
          }
        }

        else if (v43)
        {
          LODWORD(v45) = DWORD1(v247) - v247;
          if (__OFSUB__(DWORD1(v247), v247))
          {
            goto LABEL_413;
          }

          v45 = v45;
        }

        else
        {
          v45 = BYTE14(v247);
        }

LABEL_142:
        if (v44 > 1)
        {
          if (v44 != 2)
          {
            if (v45)
            {
              goto LABEL_8;
            }

            goto LABEL_157;
          }

          v87 = *(v30 + 16);
          v86 = *(v30 + 24);
          v50 = __OFSUB__(v86, v87);
          v85 = v86 - v87;
          if (v50)
          {
            goto LABEL_407;
          }
        }

        else if (v44)
        {
          LODWORD(v85) = HIDWORD(v30) - v30;
          if (__OFSUB__(HIDWORD(v30), v30))
          {
            goto LABEL_405;
          }

          v85 = v85;
        }

        else
        {
          v85 = BYTE6(v29);
        }

        if (v45 != v85)
        {
          goto LABEL_8;
        }

        if (v45 >= 1)
        {
          v224 = a1[2];
          if (v43 > 1)
          {
            if (v43 != 2)
            {
              *&v240[6] = 0;
              *v240 = 0;
              v145 = v29;
              v146 = v30;
              sub_1B03B2000(v30, v29);
              sub_1B0BD6700(&v247, &v241);
              sub_1B03B2000(v146, v145);
              sub_1B0AE2440(v240, v146, v145, &v241);
              sub_1B0391D50(v146, v145);
              v90 = v146;
              v91 = v145;
              goto LABEL_248;
            }

            v108 = *(v247 + 16);
            v109 = *(v247 + 24);
          }

          else
          {
            if (!v43)
            {
              *v240 = v247;
              *&v240[8] = DWORD2(v247);
              *&v240[12] = WORD6(v247);
              v88 = v29;
              v89 = v30;
              sub_1B03B2000(v30, v29);
              sub_1B0BD6700(&v247, &v241);
              sub_1B03B2000(v89, v88);
              sub_1B0AE2440(v240, v89, v88, &v241);
              sub_1B0391D50(v89, v88);
              v90 = v89;
              v91 = v88;
LABEL_248:
              sub_1B0391D50(v90, v91);
              v11 = a2;
              v93 = v224;
              if ((v241 & 1) == 0)
              {
                goto LABEL_394;
              }

LABEL_158:
              v94 = v22 >> 62;
              v95 = v237 >> 62;
              if (v22 >> 62 == 3)
              {
                v96 = 0;
                v97 = v237;
                if (!v23 && v22 == 0xC000000000000000 && v237 >> 62 == 3)
                {
                  v96 = 0;
                  if (!v93 && v237 == 0xC000000000000000)
                  {
                    goto LABEL_402;
                  }
                }
              }

              else if (v94 == 2)
              {
                v131 = *(v23 + 16);
                v130 = *(v23 + 24);
                v50 = __OFSUB__(v130, v131);
                v96 = v130 - v131;
                if (v50)
                {
                  goto LABEL_427;
                }

                v97 = v237;
              }

              else
              {
                v97 = v237;
                if (v94 == 1)
                {
                  LODWORD(v96) = HIDWORD(v23) - v23;
                  if (__OFSUB__(HIDWORD(v23), v23))
                  {
                    goto LABEL_426;
                  }

                  v96 = v96;
                }

                else
                {
                  v96 = BYTE6(v22);
                }
              }

              if (v95 > 1)
              {
                if (v95 != 2)
                {
                  goto LABEL_393;
                }

                v134 = *(v93 + 16);
                v133 = *(v93 + 24);
                v50 = __OFSUB__(v133, v134);
                v132 = v133 - v134;
                if (v50)
                {
                  goto LABEL_418;
                }
              }

              else if (v95)
              {
                LODWORD(v132) = HIDWORD(v93) - v93;
                if (__OFSUB__(HIDWORD(v93), v93))
                {
                  goto LABEL_417;
                }

                v132 = v132;
              }

              else
              {
                v132 = BYTE6(v97);
              }

              if (v96 != v132)
              {
                goto LABEL_394;
              }

              if (v96 < 1)
              {
                goto LABEL_402;
              }

              v135 = v97;
              v136 = v93;
              sub_1B03B2000(v93, v97);
              v137 = v23;
              v138 = v22;
              goto LABEL_233;
            }

            v108 = v247;
            v109 = v247 >> 32;
            if (v247 >> 32 < v247)
            {
              goto LABEL_431;
            }
          }

          v142 = a1[1];
          v143 = *a1;
          sub_1B03B2000(v30, v29);
          sub_1B03B2000(v143, v142);
          sub_1B0BD6700(&v247, &v241);
          sub_1B03B2000(v143, v142);
          v144 = sub_1B0AB87A0(v108, v109, v21 & 0x3FFFFFFFFFFFFFFFLL, v143, v142);
          sub_1B0391D50(v143, v142);
          sub_1B0391D50(v143, v142);
          sub_1B0391D50(v143, v142);
          v11 = a2;
          v93 = v224;
          if ((v144 & 1) == 0)
          {
            goto LABEL_394;
          }

          goto LABEL_158;
        }

LABEL_157:
        v244 = v250;
        v246 = v251;
        v242 = v248;
        v243 = v249;
        v241 = v247;
        v245 = *(&v250 + 1) & 0xEFFFFFFFFFFFFFFFLL;
        v92 = v31;
        sub_1B0BD1224(&v241, v240);
        v93 = v92;
        goto LABEL_158;
      }

      if (((v33 >> 59) & 6 | ((v28 & 0x2000000000000000) != 0)) != 3)
      {
        goto LABEL_8;
      }
    }

    if (v247 == __PAIR128__(v29, v30) || (v46 = a1[2], v47 = sub_1B0E46A78(), v31 = v46, v15 = v239, v12 = a2 + 56, (v47 & 1) != 0))
    {
      if (v23 == v31 && v22 == v32)
      {
        return;
      }

      goto LABEL_7;
    }

LABEL_8:
    v14 = (v14 + 1) & v15;
    if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return;
    }
  }

  if (!v34)
  {
    if ((v33 >> 59) & 6 | ((v28 & 0x2000000000000000) != 0))
    {
      goto LABEL_8;
    }

    v39 = *(&v247 + 1) >> 62;
    v236 = a1[3];
    if (*(&v247 + 1) >> 62 == 3)
    {
      v40 = 0;
      if (v247 == __PAIR128__(0xC000000000000000, 0) && v29 >> 62 == 3)
      {
        v40 = 0;
        if (!v30 && v29 == 0xC000000000000000)
        {
          goto LABEL_195;
        }
      }
    }

    else if (v39 > 1)
    {
      if (v39 == 2)
      {
        v56 = *(v247 + 16);
        v55 = *(v247 + 24);
        v50 = __OFSUB__(v55, v56);
        v40 = v55 - v56;
        if (v50)
        {
          goto LABEL_422;
        }
      }

      else
      {
        v40 = 0;
      }
    }

    else if (v39)
    {
      LODWORD(v40) = DWORD1(v247) - v247;
      if (__OFSUB__(DWORD1(v247), v247))
      {
        goto LABEL_421;
      }

      v40 = v40;
    }

    else
    {
      v40 = BYTE14(v247);
    }

    v110 = v29 >> 62;
    if ((v29 >> 62) > 1)
    {
      if (v110 != 2)
      {
        if (v40)
        {
          goto LABEL_8;
        }

        goto LABEL_195;
      }

      v113 = *(v30 + 16);
      v112 = *(v30 + 24);
      v50 = __OFSUB__(v112, v113);
      v111 = v112 - v113;
      if (v50)
      {
        goto LABEL_409;
      }
    }

    else if (v110)
    {
      LODWORD(v111) = HIDWORD(v30) - v30;
      if (__OFSUB__(HIDWORD(v30), v30))
      {
        goto LABEL_410;
      }

      v111 = v111;
    }

    else
    {
      v111 = BYTE6(v29);
    }

    if (v40 != v111)
    {
      goto LABEL_8;
    }

    if (v40 >= 1)
    {
      v225 = a1[2];
      if (v39 <= 1)
      {
        if (!v39)
        {
          *v240 = v247;
          *&v240[8] = DWORD2(v247);
          *&v240[12] = WORD6(v247);
          v114 = v29;
          v115 = v30;
          sub_1B0BD6700(&v247, &v241);
          sub_1B03B2000(v115, v114);
          sub_1B0AE2440(v240, v115, v114, &v241);
          v116 = v115;
          v117 = v114;
          goto LABEL_278;
        }

        v230 = *a1;
        v233 = a1[1];
        v157 = v247;
        if (v247 >> 32 < v247)
        {
          goto LABEL_436;
        }

        sub_1B0BD6700(&v247, &v241);
        sub_1B03B2000(v230, v233);
        v158 = sub_1B0E42A98();
        if (v158)
        {
          v159 = sub_1B0E42AC8();
          if (__OFSUB__(v157, v159))
          {
            goto LABEL_440;
          }

          v158 += v157 - v159;
        }

        sub_1B0E42AB8();
        v160 = v158;
        v162 = v230;
        v161 = v233;
LABEL_277:
        sub_1B0AE2440(v160, v162, v161, &v241);
        v116 = v162;
        v117 = v161;
LABEL_278:
        sub_1B0391D50(v116, v117);
        v11 = a2;
        v119 = v225;
        if ((v241 & 1) == 0)
        {
          goto LABEL_394;
        }

        goto LABEL_196;
      }

      if (v39 != 2)
      {
        *&v240[6] = 0;
        *v240 = 0;
        v161 = v29;
        v162 = v30;
        sub_1B0BD6700(&v247, &v241);
        sub_1B03B2000(v162, v161);
        v160 = v240;
        goto LABEL_277;
      }

      v126 = *(v247 + 16);
      v127 = *(v247 + 24);
      v128 = a1[1];
      v129 = *a1;
      sub_1B03B2000(v30, v29);
      sub_1B0BD6700(&v247, &v241);
      sub_1B03B2000(v129, v128);
      LOBYTE(v126) = sub_1B0AB87A0(v126, v127, v21 & 0x3FFFFFFFFFFFFFFFLL, v129, v128);
      sub_1B0391D50(v129, v128);
      sub_1B0391D50(v129, v128);
      v11 = a2;
      v119 = v225;
      if ((v126 & 1) == 0)
      {
        goto LABEL_394;
      }

LABEL_196:
      v120 = v22 >> 62;
      if (v22 >> 62 == 3)
      {
        v121 = 0;
        if (!v23 && v22 == 0xC000000000000000 && v236 >> 62 == 3)
        {
          v121 = 0;
          if (!v119 && v236 == 0xC000000000000000)
          {
LABEL_402:
            sub_1B0BD2F90(&v247);
            return;
          }
        }
      }

      else if (v120 > 1)
      {
        if (v120 == 2)
        {
          v125 = *(v23 + 16);
          v124 = *(v23 + 24);
          v50 = __OFSUB__(v124, v125);
          v121 = v124 - v125;
          if (v50)
          {
            goto LABEL_434;
          }
        }

        else
        {
          v121 = 0;
        }
      }

      else if (v120)
      {
        LODWORD(v121) = HIDWORD(v23) - v23;
        if (__OFSUB__(HIDWORD(v23), v23))
        {
          goto LABEL_435;
        }

        v121 = v121;
      }

      else
      {
        v121 = BYTE6(v22);
      }

      v147 = v236 >> 62;
      if ((v236 >> 62) > 1)
      {
        if (v147 != 2)
        {
          if (!v121)
          {
            goto LABEL_402;
          }

LABEL_394:
          sub_1B0BD2F90(&v247);
          v15 = v239;
          v12 = a2 + 56;
          goto LABEL_8;
        }

        v150 = *(v119 + 16);
        v149 = *(v119 + 24);
        v50 = __OFSUB__(v149, v150);
        v148 = v149 - v150;
        if (v50)
        {
          goto LABEL_425;
        }
      }

      else if (v147)
      {
        LODWORD(v148) = HIDWORD(v119) - v119;
        if (__OFSUB__(HIDWORD(v119), v119))
        {
          goto LABEL_424;
        }

        v148 = v148;
      }

      else
      {
        v148 = BYTE6(v236);
      }

      if (v121 != v148)
      {
        goto LABEL_394;
      }

      if (v121 < 1)
      {
        goto LABEL_402;
      }

      if (v120 > 1)
      {
        if (v120 == 2)
        {
          v155 = *(v23 + 16);
          v156 = *(v23 + 24);
          goto LABEL_281;
        }

        *(&v241 + 6) = 0;
        *&v241 = 0;
        v152 = v236;
        v151 = v119;
        sub_1B03B2000(v119, v236);
        sub_1B03B2000(v151, v236);
        v153 = v151;
        v154 = v236;
      }

      else
      {
        if (v120)
        {
          v155 = v23;
          v156 = v23 >> 32;
          if (v23 >> 32 < v23)
          {
            goto LABEL_439;
          }

LABEL_281:
          v163 = v119;
          sub_1B03B2000(v119, v236);
          sub_1B03B2000(v163, v236);
          sub_1B03B2000(v163, v236);
          v122 = sub_1B0AB87A0(v155, v156, v22 & 0x3FFFFFFFFFFFFFFFLL, v163, v236);
          sub_1B0391D50(v163, v236);
          sub_1B0BD2F90(&v247);
          sub_1B0391D50(v163, v236);
          sub_1B0391D50(v163, v236);
LABEL_282:
          v11 = a2;
LABEL_283:
          v15 = v239;
          v12 = a2 + 56;
          if (v122)
          {
            return;
          }

          goto LABEL_8;
        }

        *&v241 = v23;
        WORD4(v241) = v22;
        BYTE10(v241) = BYTE2(v22);
        BYTE11(v241) = BYTE3(v22);
        BYTE12(v241) = BYTE4(v22);
        BYTE13(v241) = BYTE5(v22);
        v151 = v119;
        sub_1B03B2000(v119, v236);
        sub_1B03B2000(v151, v236);
        v152 = v236;
        v153 = v151;
        v154 = v236;
      }

      sub_1B0AE2440(&v241, v153, v154, v240);
      sub_1B0BD2F90(&v247);
      sub_1B0391D50(v151, v152);
      sub_1B0391D50(v151, v152);
      v123 = v240[0];
LABEL_287:
      v11 = a2;
      v15 = v239;
      v12 = a2 + 56;
      if (v123)
      {
        return;
      }

      goto LABEL_8;
    }

LABEL_195:
    v244 = v250;
    v246 = v251;
    v242 = v248;
    v243 = v249;
    v241 = v247;
    v245 = *(&v250 + 1) & 0xEFFFFFFFFFFFFFFFLL;
    v118 = v31;
    sub_1B0BD1224(&v241, v240);
    v119 = v118;
    goto LABEL_196;
  }

  if (v34 != 1)
  {
    if (((v33 >> 59) & 6 | ((v28 & 0x2000000000000000) != 0)) != 2)
    {
      goto LABEL_8;
    }

    v41 = *(&v247 + 1) >> 62;
    if (*(&v247 + 1) >> 62 == 3)
    {
      v42 = 0;
      if (v247 == __PAIR128__(0xC000000000000000, 0) && v29 >> 62 == 3)
      {
        v42 = 0;
        if (!v30 && v29 == 0xC000000000000000)
        {
          return;
        }
      }
    }

    else if (v41 > 1)
    {
      if (v41 == 2)
      {
        v52 = *(v247 + 16);
        v51 = *(v247 + 24);
        v50 = __OFSUB__(v51, v52);
        v42 = v51 - v52;
        if (v50)
        {
          goto LABEL_412;
        }
      }

      else
      {
        v42 = 0;
      }
    }

    else if (v41)
    {
      LODWORD(v42) = DWORD1(v247) - v247;
      if (__OFSUB__(DWORD1(v247), v247))
      {
        goto LABEL_414;
      }

      v42 = v42;
    }

    else
    {
      v42 = BYTE14(v247);
    }

    v73 = v29 >> 62;
    if ((v29 >> 62) > 1)
    {
      if (v73 != 2)
      {
        if (!v42)
        {
          return;
        }

        goto LABEL_8;
      }

      v76 = *(v30 + 16);
      v75 = *(v30 + 24);
      v50 = __OFSUB__(v75, v76);
      v74 = v75 - v76;
      if (v50)
      {
        goto LABEL_404;
      }
    }

    else if (v73)
    {
      LODWORD(v74) = HIDWORD(v30) - v30;
      if (__OFSUB__(HIDWORD(v30), v30))
      {
        __break(1u);
LABEL_404:
        __break(1u);
LABEL_405:
        __break(1u);
LABEL_406:
        __break(1u);
LABEL_407:
        __break(1u);
LABEL_408:
        __break(1u);
LABEL_409:
        __break(1u);
LABEL_410:
        __break(1u);
LABEL_411:
        __break(1u);
LABEL_412:
        __break(1u);
LABEL_413:
        __break(1u);
LABEL_414:
        __break(1u);
LABEL_415:
        __break(1u);
LABEL_416:
        __break(1u);
LABEL_417:
        __break(1u);
LABEL_418:
        __break(1u);
LABEL_419:
        __break(1u);
LABEL_420:
        __break(1u);
LABEL_421:
        __break(1u);
LABEL_422:
        __break(1u);
LABEL_423:
        __break(1u);
LABEL_424:
        __break(1u);
LABEL_425:
        __break(1u);
LABEL_426:
        __break(1u);
LABEL_427:
        __break(1u);
LABEL_428:
        __break(1u);
LABEL_429:
        __break(1u);
LABEL_430:
        __break(1u);
LABEL_431:
        __break(1u);
LABEL_432:
        __break(1u);
LABEL_433:
        __break(1u);
LABEL_434:
        __break(1u);
LABEL_435:
        __break(1u);
LABEL_436:
        __break(1u);
LABEL_437:
        __break(1u);
LABEL_438:
        __break(1u);
LABEL_439:
        __break(1u);
LABEL_440:
        __break(1u);
LABEL_441:
        __break(1u);
LABEL_442:
        __break(1u);
LABEL_443:
        __break(1u);
LABEL_444:
        __break(1u);
LABEL_445:
        __break(1u);
      }

      v74 = v74;
    }

    else
    {
      v74 = BYTE6(v29);
    }

    if (v42 != v74)
    {
      goto LABEL_8;
    }

    if (v42 < 1)
    {
      return;
    }

    if (v41 > 1)
    {
      v81 = *a1;
      v82 = a1[1];
      if (v41 == 2)
      {
        v83 = *(v247 + 16);
        v84 = *(v247 + 24);
LABEL_208:
        sub_1B0BD6700(a1, &v241);
        sub_1B0BD6700(a1, &v241);
        sub_1B0BD6700(&v247, &v241);
        sub_1B0BD6700(a1, &v241);
        v122 = sub_1B0AB87A0(v83, v84, v21 & 0x3FFFFFFFFFFFFFFFLL, v81, v82);
        sub_1B0BD2F90(a1);
        sub_1B0BD2F90(&v247);
        sub_1B0BD2F90(a1);
        sub_1B0BD2F90(a1);
        goto LABEL_282;
      }

      *&v240[6] = 0;
      *v240 = 0;
      sub_1B0BD6700(a1, &v241);
      sub_1B0BD6700(&v247, &v241);
      sub_1B0BD6700(a1, &v241);
      v79 = v81;
      v80 = v82;
    }

    else
    {
      if (v41)
      {
        v83 = v247;
        v84 = v247 >> 32;
        if (v247 >> 32 < v247)
        {
          goto LABEL_423;
        }

        v81 = *a1;
        v82 = a1[1];
        goto LABEL_208;
      }

      *v240 = v247;
      *&v240[8] = DWORD2(v247);
      *&v240[12] = WORD6(v247);
      v77 = v29;
      v78 = v30;
      sub_1B0BD6700(a1, &v241);
      sub_1B0BD6700(&v247, &v241);
      sub_1B0BD6700(a1, &v241);
      v79 = v78;
      v80 = v77;
    }

    sub_1B0AE2440(v240, v79, v80, &v241);
    sub_1B0BD2F90(&v247);
    sub_1B0BD2F90(a1);
    sub_1B0BD2F90(a1);
    v123 = v241;
    goto LABEL_287;
  }

  if (((v33 >> 59) & 6 | ((v28 & 0x2000000000000000) != 0)) != 1)
  {
    goto LABEL_8;
  }

  v228 = *(&v249 + 1);
  v229 = v249;
  v221 = v251;
  v222 = v250;
  v226 = a1[4];
  v227 = a1[5];
  v35 = *(&v247 + 1) >> 62;
  v220 = a1[8];
  v235 = a1[3];
  if (*(&v247 + 1) >> 62 == 3)
  {
    v36 = 0;
    if (v247 != __PAIR128__(0xC000000000000000, 0))
    {
      goto LABEL_94;
    }

    if (v29 >> 62 != 3)
    {
      goto LABEL_94;
    }

    v36 = 0;
    if (v30 || v29 != 0xC000000000000000)
    {
      goto LABEL_94;
    }

    goto LABEL_109;
  }

  if (v35 > 1)
  {
    if (v35 == 2)
    {
      v49 = *(v247 + 16);
      v48 = *(v247 + 24);
      v50 = __OFSUB__(v48, v49);
      v36 = v48 - v49;
      if (v50)
      {
        goto LABEL_415;
      }
    }

    else
    {
      v36 = 0;
    }
  }

  else if (v35)
  {
    LODWORD(v36) = DWORD1(v247) - v247;
    if (__OFSUB__(DWORD1(v247), v247))
    {
      goto LABEL_416;
    }

    v36 = v36;
  }

  else
  {
    v36 = BYTE14(v247);
  }

LABEL_94:
  v57 = v29 >> 62;
  if ((v29 >> 62) > 1)
  {
    if (v57 != 2)
    {
      if (v36)
      {
        goto LABEL_8;
      }

      goto LABEL_109;
    }

    v60 = *(v30 + 16);
    v59 = *(v30 + 24);
    v50 = __OFSUB__(v59, v60);
    v58 = v59 - v60;
    if (v50)
    {
      goto LABEL_408;
    }
  }

  else if (v57)
  {
    LODWORD(v58) = HIDWORD(v30) - v30;
    if (__OFSUB__(HIDWORD(v30), v30))
    {
      goto LABEL_406;
    }

    v58 = v58;
  }

  else
  {
    v58 = BYTE6(v29);
  }

  if (v36 != v58)
  {
    goto LABEL_8;
  }

  if (v36 < 1)
  {
LABEL_109:
    v216 = a1[6];
    v244 = v250;
    v246 = v251;
    v242 = v248;
    v243 = v249;
    v241 = v247;
    v245 = *(&v250 + 1) & 0xEFFFFFFFFFFFFFFFLL;
    v65 = v31;
    v66 = v33;
    v232 = *(&v251 + 1);
    sub_1B0BD1224(&v241, v240);
    v67 = v232;
    v68 = v66;
    v69 = v65;
    goto LABEL_110;
  }

  v223 = a1[2];
  v216 = a1[6];
  v217 = a1[9];
  v231 = *(&v251 + 1);
  if (v35 > 1)
  {
    if (v35 != 2)
    {
      *&v240[6] = 0;
      *v240 = 0;
      v140 = v29;
      v141 = v30;
      sub_1B03B2000(v30, v29);
      sub_1B0BD6700(&v247, &v241);
      sub_1B03B2000(v141, v140);
      sub_1B0AE2440(v240, v141, v140, &v241);
      sub_1B0391D50(v141, v140);
      v63 = v141;
      v64 = v140;
      goto LABEL_242;
    }

    v211 = *(v247 + 24);
    v213 = *(v247 + 16);
    v100 = a1[1];
    v101 = *a1;
    sub_1B03B2000(v30, v29);
    sub_1B03B2000(v101, v100);
    sub_1B0BD6700(&v247, &v241);
    sub_1B03B2000(v101, v100);
    v102 = v21 & 0x3FFFFFFFFFFFFFFFLL;
    v104 = v211;
    v103 = v213;
    v105 = v101;
    v106 = v100;
    v107 = v100;
    goto LABEL_239;
  }

  if (v35)
  {
    v212 = v247;
    v214 = v247 >> 32;
    if (v247 >> 32 < v247)
    {
      goto LABEL_430;
    }

    v139 = a1[1];
    v101 = *a1;
    sub_1B03B2000(v30, v29);
    sub_1B03B2000(v101, v139);
    sub_1B0BD6700(&v247, &v241);
    sub_1B03B2000(v101, v139);
    v102 = v21 & 0x3FFFFFFFFFFFFFFFLL;
    v103 = v212;
    v104 = v214;
    v105 = v101;
    v107 = v139;
    v106 = v139;
LABEL_239:
    v215 = sub_1B0AB87A0(v103, v104, v102, v105, v106);
    sub_1B0391D50(v101, v107);
    sub_1B0391D50(v101, v107);
    sub_1B0391D50(v101, v107);
    v11 = a2;
    v69 = v223;
    v68 = v217;
    v67 = v231;
    if ((v215 & 1) == 0)
    {
      goto LABEL_394;
    }

    goto LABEL_110;
  }

  *v240 = v247;
  *&v240[8] = DWORD2(v247);
  *&v240[12] = WORD6(v247);
  v61 = v29;
  v62 = v30;
  sub_1B03B2000(v30, v29);
  sub_1B0BD6700(&v247, &v241);
  sub_1B03B2000(v62, v61);
  sub_1B0AE2440(v240, v62, v61, &v241);
  sub_1B0391D50(v62, v61);
  v63 = v62;
  v64 = v61;
LABEL_242:
  sub_1B0391D50(v63, v64);
  v11 = a2;
  v69 = v223;
  v68 = v217;
  v67 = v231;
  if ((v241 & 1) == 0)
  {
    goto LABEL_394;
  }

LABEL_110:
  v70 = v22 >> 62;
  if (v22 >> 62 != 3)
  {
    if (v70 > 1)
    {
      v72 = v235;
      if (v70 == 2)
      {
        v99 = *(v23 + 16);
        v98 = *(v23 + 24);
        v50 = __OFSUB__(v98, v99);
        v71 = v98 - v99;
        if (v50)
        {
          goto LABEL_428;
        }
      }

      else
      {
        v71 = 0;
      }
    }

    else
    {
      v72 = v235;
      if (v70)
      {
        LODWORD(v71) = HIDWORD(v23) - v23;
        if (__OFSUB__(HIDWORD(v23), v23))
        {
          goto LABEL_429;
        }

        v71 = v71;
      }

      else
      {
        v71 = BYTE6(v22);
      }
    }

    goto LABEL_290;
  }

  v71 = 0;
  if (v23)
  {
    v72 = v235;
    goto LABEL_290;
  }

  v72 = v235;
  if (v22 == 0xC000000000000000 && v235 >> 62 == 3)
  {
    v71 = 0;
    if (!v69 && v235 == 0xC000000000000000)
    {
      goto LABEL_313;
    }
  }

LABEL_290:
  v164 = v72 >> 62;
  if ((v72 >> 62) > 1)
  {
    if (v164 == 2)
    {
      v167 = *(v69 + 16);
      v166 = *(v69 + 24);
      v50 = __OFSUB__(v166, v167);
      v165 = v166 - v167;
      if (v50)
      {
        goto LABEL_420;
      }

      goto LABEL_299;
    }

    if (v71)
    {
      goto LABEL_394;
    }

    goto LABEL_313;
  }

  if (v164)
  {
    LODWORD(v165) = HIDWORD(v69) - v69;
    if (__OFSUB__(HIDWORD(v69), v69))
    {
      goto LABEL_419;
    }

    v165 = v165;
  }

  else
  {
    v165 = BYTE6(v72);
  }

LABEL_299:
  if (v71 != v165)
  {
    goto LABEL_394;
  }

  if (v71 < 1)
  {
    goto LABEL_313;
  }

  v218 = v68;
  v234 = v67;
  if (v70 > 1)
  {
    if (v70 != 2)
    {
      *(&v241 + 6) = 0;
      *&v241 = 0;
      v176 = v69;
      sub_1B03B2000(v69, v72);
      sub_1B03B2000(v176, v72);
      sub_1B0AE2440(&v241, v176, v72, v240);
      sub_1B0391D50(v176, v72);
      v170 = v176;
      v171 = v72;
      goto LABEL_312;
    }

    v168 = v72;
    v172 = *(v23 + 16);
    v173 = *(v23 + 24);
    goto LABEL_309;
  }

  v168 = v72;
  if (v70)
  {
    v172 = v23;
    v173 = v23 >> 32;
    if (v23 >> 32 < v23)
    {
      goto LABEL_441;
    }

LABEL_309:
    v174 = v69;
    sub_1B03B2000(v69, v168);
    sub_1B03B2000(v174, v168);
    sub_1B03B2000(v174, v168);
    v175 = sub_1B0AB87A0(v172, v173, v22 & 0x3FFFFFFFFFFFFFFFLL, v174, v168);
    sub_1B0391D50(v174, v168);
    sub_1B0391D50(v174, v168);
    sub_1B0391D50(v174, v168);
    v11 = a2;
    v68 = v218;
    v67 = v234;
    if ((v175 & 1) == 0)
    {
      goto LABEL_394;
    }

    goto LABEL_313;
  }

  *&v241 = v23;
  WORD4(v241) = v22;
  BYTE10(v241) = BYTE2(v22);
  BYTE11(v241) = BYTE3(v22);
  BYTE12(v241) = BYTE4(v22);
  BYTE13(v241) = BYTE5(v22);
  v169 = v69;
  sub_1B03B2000(v69, v72);
  sub_1B03B2000(v169, v72);
  sub_1B0AE2440(&v241, v169, v72, v240);
  sub_1B0391D50(v169, v72);
  v170 = v169;
  v171 = v72;
LABEL_312:
  sub_1B0391D50(v170, v171);
  v11 = a2;
  v68 = v218;
  v67 = v234;
  if ((v240[0] & 1) == 0)
  {
    goto LABEL_394;
  }

LABEL_313:
  v177 = v228 >> 62;
  v178 = v227 >> 62;
  if (v228 >> 62 == 3)
  {
    v179 = 0;
    v180 = v229;
    if (v229)
    {
      goto LABEL_328;
    }

    if (v228 != 0xC000000000000000)
    {
      goto LABEL_328;
    }

    if (v227 >> 62 != 3)
    {
      goto LABEL_328;
    }

    v179 = 0;
    if (v226 || v227 != 0xC000000000000000)
    {
      goto LABEL_328;
    }
  }

  else
  {
    v180 = v229;
    if (v177 == 2)
    {
      v182 = *(v229 + 16);
      v181 = *(v229 + 24);
      v50 = __OFSUB__(v181, v182);
      v179 = v181 - v182;
      if (v50)
      {
        goto LABEL_438;
      }
    }

    else if (v177 == 1)
    {
      LODWORD(v179) = HIDWORD(v229) - v229;
      if (__OFSUB__(HIDWORD(v229), v229))
      {
        goto LABEL_437;
      }

      v179 = v179;
    }

    else
    {
      v179 = BYTE6(v228);
    }

LABEL_328:
    if (v178 > 1)
    {
      if (v178 != 2)
      {
        if (v179)
        {
          goto LABEL_394;
        }

        goto LABEL_342;
      }

      v185 = *(v226 + 16);
      v184 = *(v226 + 24);
      v50 = __OFSUB__(v184, v185);
      v183 = v184 - v185;
      if (v50)
      {
        goto LABEL_432;
      }
    }

    else if (v178)
    {
      LODWORD(v183) = HIDWORD(v226) - v226;
      if (__OFSUB__(HIDWORD(v226), v226))
      {
        goto LABEL_433;
      }

      v183 = v183;
    }

    else
    {
      v183 = BYTE6(v227);
    }

    if (v179 != v183)
    {
      goto LABEL_394;
    }

    if (v179 >= 1)
    {
      v219 = v68;
      v186 = v67;
      sub_1B03B2000(v226, v227);
      v187 = sub_1B0AB8610(v180, v228, v226, v227);
      v67 = v186;
      v68 = v219;
      v11 = a2;
      if ((v187 & 1) == 0)
      {
        goto LABEL_394;
      }
    }
  }

LABEL_342:
  v188 = v24 & 0xCFFFFFFFFFFFFFFFLL;
  v189 = v28 & 0xCFFFFFFFFFFFFFFFLL;
  v190 = v24 >> 62;
  v191 = v28 >> 62;
  if (v24 >> 62 == 3)
  {
    v192 = 0;
    v193 = v222;
    if (v222)
    {
      goto LABEL_357;
    }

    if (v188 != 0xC000000000000000)
    {
      goto LABEL_357;
    }

    if (v28 >> 62 != 3)
    {
      goto LABEL_357;
    }

    v192 = 0;
    if (v216 || v189 != 0xC000000000000000)
    {
      goto LABEL_357;
    }
  }

  else
  {
    v193 = v222;
    if (v190 == 2)
    {
      v195 = *(v222 + 16);
      v194 = *(v222 + 24);
      v50 = __OFSUB__(v194, v195);
      v192 = v194 - v195;
      if (v50)
      {
        goto LABEL_445;
      }
    }

    else if (v190 == 1)
    {
      LODWORD(v192) = HIDWORD(v222) - v222;
      if (__OFSUB__(HIDWORD(v222), v222))
      {
        goto LABEL_444;
      }

      v192 = v192;
    }

    else
    {
      v192 = BYTE6(v24);
    }

LABEL_357:
    if (v191 > 1)
    {
      if (v191 != 2)
      {
        if (v192)
        {
          goto LABEL_394;
        }

        goto LABEL_371;
      }

      v198 = *(v216 + 16);
      v197 = *(v216 + 24);
      v50 = __OFSUB__(v197, v198);
      v196 = v197 - v198;
      if (v50)
      {
        goto LABEL_442;
      }
    }

    else if (v191)
    {
      LODWORD(v196) = HIDWORD(v216) - v216;
      if (__OFSUB__(HIDWORD(v216), v216))
      {
        goto LABEL_443;
      }

      v196 = v196;
    }

    else
    {
      v196 = BYTE6(v28);
    }

    if (v192 != v196)
    {
      goto LABEL_394;
    }

    if (v192 >= 1)
    {
      v199 = v28 & 0xCFFFFFFFFFFFFFFFLL;
      v200 = v68;
      v201 = v67;
      sub_1B03B2000(v216, v199);
      v202 = sub_1B0AB8610(v193, v188, v216, v189);
      v67 = v201;
      v68 = v200;
      v11 = a2;
      if ((v202 & 1) == 0)
      {
        goto LABEL_394;
      }
    }
  }

LABEL_371:
  v203 = v67 & 0xCFFFFFFFFFFFFFFFLL;
  v135 = v68 & 0xCFFFFFFFFFFFFFFFLL;
  v204 = v67 >> 62;
  v205 = v68 >> 62;
  if (v67 >> 62 == 3)
  {
    v96 = 0;
    if (!v221 && v203 == 0xC000000000000000 && v68 >> 62 == 3)
    {
      v96 = 0;
      if (!v220 && v135 == 0xC000000000000000)
      {
        goto LABEL_402;
      }
    }
  }

  else if (v204 == 2)
  {
    v207 = *(v221 + 16);
    v206 = *(v221 + 24);
    v50 = __OFSUB__(v206, v207);
    v96 = v206 - v207;
    if (v50)
    {
      goto LABEL_448;
    }
  }

  else if (v204 == 1)
  {
    LODWORD(v96) = HIDWORD(v221) - v221;
    if (__OFSUB__(HIDWORD(v221), v221))
    {
      goto LABEL_447;
    }

    v96 = v96;
  }

  else
  {
    v96 = BYTE6(v67);
  }

  if (v205 <= 1)
  {
    if (v205)
    {
      LODWORD(v208) = HIDWORD(v220) - v220;
      if (__OFSUB__(HIDWORD(v220), v220))
      {
        goto LABEL_446;
      }

      v208 = v208;
    }

    else
    {
      v208 = BYTE6(v68);
    }

    goto LABEL_397;
  }

  if (v205 != 2)
  {
LABEL_393:
    if (!v96)
    {
      goto LABEL_402;
    }

    goto LABEL_394;
  }

  v210 = *(v220 + 16);
  v209 = *(v220 + 24);
  v50 = __OFSUB__(v209, v210);
  v208 = v209 - v210;
  if (!v50)
  {
LABEL_397:
    if (v96 != v208)
    {
      goto LABEL_394;
    }

    if (v96 < 1)
    {
      goto LABEL_402;
    }

    v136 = v220;
    sub_1B03B2000(v220, v68 & 0xCFFFFFFFFFFFFFFFLL);
    v137 = v221;
    v138 = v203;
LABEL_233:
    v122 = sub_1B0AB8610(v137, v138, v136, v135);
    v11 = a2;
    sub_1B0BD2F90(&v247);
    goto LABEL_283;
  }

  __break(1u);
LABEL_446:
  __break(1u);
LABEL_447:
  __break(1u);
LABEL_448:
  __break(1u);
  sub_1B0BD2F90(a1);
  sub_1B0BD2F90(a1);
  v244 = v263;
  v246 = v264;
  v242 = v261;
  v243 = v262;
  v241 = v260;
  v245 = *(&v263 + 1) & 0xEFFFFFFFFFFFFFFFLL;
  sub_1B0BE8F74(&v241);

  __break(1u);
}

uint64_t CommandCounter.withNext<A>(_:)(uint64_t (*a1)(void))
{
  v3 = *v1;
  *v1 = (*v1 + 1) & 0xFFFFFF;
  result = a1();
  if (v2)
  {
    *v1 = v3;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B0BE4C1C(char a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = sub_1B0C1AA74(v4, a2);
  v6 = v5;
  v7 = *(v5 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_5:
    v34 = v9;
    sub_1B0BE7CF8(&v34);

    v12 = v34;
    v13 = *(v34 + 2);
    if (v13)
    {
      v34 = v8;
      sub_1B0BFE5B4(0, v13, 0);
      v14 = v34;
      v15 = *(v34 + 2);
      v16 = 8 * v15;
      v17 = 32;
      do
      {
        v18 = *&v12[v17];
        v34 = v14;
        v19 = *(v14 + 3);
        v20 = v15 + 1;
        if (v15 >= v19 >> 1)
        {
          sub_1B0BFE5B4((v19 > 1), v15 + 1, 1);
          v14 = v34;
        }

        *(v14 + 2) = v20;
        v21 = &v14[v16];
        v21[32] = a1;
        *(v21 + 9) = v18;
        v16 += 8;
        v17 += 4;
        v15 = v20;
        --v13;
      }

      while (v13);

      v22 = *(v14 + 2);
      if (v22)
      {
        goto LABEL_11;
      }
    }

    else
    {

      v14 = MEMORY[0x1E69E7CC0];
      v22 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v22)
      {
LABEL_11:
        v34 = v8;
        sub_1B041D32C(0, v22, 0);
        v23 = v34;
        v24 = (v14 + 36);
        do
        {
          v25 = Tag.debugDescription.getter(*(v24 - 4) | (*v24 << 32));
          v34 = v23;
          v28 = *(v23 + 2);
          v27 = *(v23 + 3);
          if (v28 >= v27 >> 1)
          {
            v30 = v25;
            v31 = v26;
            sub_1B041D32C((v27 > 1), v28 + 1, 1);
            v26 = v31;
            v25 = v30;
            v23 = v34;
          }

          v24 += 2;
          *(v23 + 2) = v28 + 1;
          v29 = &v23[16 * v28];
          *(v29 + 4) = v25;
          *(v29 + 5) = v26;
          --v22;
        }

        while (v22);

        goto LABEL_18;
      }
    }

    v23 = MEMORY[0x1E69E7CC0];
LABEL_18:
    v34 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0, MEMORY[0x1E69E6310]);
    v32 = sub_1B0E448E8();

    return v32;
  }

  v9 = sub_1B0C0CA64(*(v5 + 16), 0);
  v10 = sub_1B0B8C130(&v34, v9 + 8, v7, v6);
  v11 = v34;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03D91F8(v11);
  if (v10 == v7)
  {
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t CommandID.hashValue.getter(unint64_t a1)
{
  sub_1B0E46C28();
  sub_1B0E46C88();
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0BE4FF4()
{
  sub_1B0E46C28();
  sub_1B0E46C88();
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0BE508C(uint64_t a1)
{
  sub_1B0E46C28();
  sub_1B0E46C88();
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

BOOL sub_1B0BE5140(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  return *a1 == *a2 && a1[1] < a2[1];
}

BOOL sub_1B0BE5170(_DWORD *a1, _DWORD *a2)
{
  if (*a2 < *a1)
  {
    return 0;
  }

  return *a2 != *a1 || a2[1] >= a1[1];
}

BOOL sub_1B0BE51A0(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0;
  }

  return *a1 != *a2 || a1[1] >= a2[1];
}

BOOL sub_1B0BE51D0(_DWORD *a1, _DWORD *a2)
{
  if (*a2 < *a1)
  {
    return 1;
  }

  return *a2 == *a1 && a2[1] < a1[1];
}

uint64_t ConnectionCommandIDSet.commands.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t ConnectionCommandIDSet.idleOrNoop.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t static ConnectionCommandIDSet.__derived_struct_equals(_:_:)(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if (sub_1B03B6298(a2, a5))
  {
    v8 = sub_1B03B6298(a3, a6);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1B0BE5360(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v29 = result + 56;
  v30 = result;
  v28 = v8;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v31 = (v7 - 1) & v7;
LABEL_13:
    v13 = *(result + 48) + 32 * (v10 | (v3 << 6));
    v15 = *v13;
    v14 = *(v13 + 8);
    v16 = *(v13 + 16);
    v17 = *(v13 + 24);
    sub_1B0E46C28();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v33 = v16;
    sub_1B0E46C68();
    if (v17 != 1)
    {
      MEMORY[0x1B2728DB0](v16 >> 14);
    }

    v18 = sub_1B0E46CB8();
    v19 = -1 << *(v2 + 32);
    v20 = v18 & ~v19;
    if (((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
LABEL_32:

      return 0;
    }

    v21 = ~v19;
    v22 = *(a2 + 48);
    while (1)
    {
      v24 = v22 + 32 * v20;
      v25 = *(v24 + 16);
      v26 = *(v24 + 24);
      v27 = *v24 == v15 && *(v24 + 8) == v14;
      if (!v27 && (sub_1B0E46A78() & 1) == 0)
      {
        goto LABEL_21;
      }

      if ((v26 & 1) == 0)
      {
        break;
      }

      if (v17)
      {
        goto LABEL_29;
      }

LABEL_21:
      v20 = (v20 + 1) & v21;
      if (((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    if (((v25 ^ v33) & 0xFFFFFFFFFFFFC000) != 0)
    {
      v23 = 1;
    }

    else
    {
      v23 = v17;
    }

    if (v23)
    {
      goto LABEL_21;
    }

LABEL_29:

    v4 = v29;
    result = v30;
    v7 = v31;
    v2 = a2;
    v8 = v28;
  }

  while (v31);
LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v31 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0BE5598(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v23 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a2 + 56;
  v24 = v7;
  v25 = result;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v9 = __clz(__rbit64(v6));
    v26 = (v6 - 1) & v6;
LABEL_13:
    v12 = *(*(result + 48) + 16 * (v9 | (v3 << 6)) + 8);
    sub_1B0E46C28();
    if (v12)
    {
      MEMORY[0x1B2728D70](0);
      sub_1B0E44BB8();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      MEMORY[0x1B2728D70](1);
    }

    v13 = sub_1B0E46CB8();
    v14 = -1 << *(a2 + 32);
    v15 = v13 & ~v14;
    if (((*(v8 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
LABEL_33:

      return 0;
    }

    v16 = ~v14;
    while (1)
    {
      if (!*(*(a2 + 48) + 16 * v15 + 8))
      {
        if (!v12)
        {
          goto LABEL_30;
        }

        goto LABEL_19;
      }

      if (!v12)
      {
        goto LABEL_19;
      }

      v17 = sub_1B0E44BB8();
      v19 = v18;
      if (v17 == sub_1B0E44BB8() && v19 == v20)
      {
        break;
      }

      v22 = sub_1B0E46A78();

      if (v22)
      {
        goto LABEL_29;
      }

LABEL_19:
      v15 = (v15 + 1) & v16;
      if (((*(v8 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

LABEL_29:

LABEL_30:
    v7 = v24;
    result = v25;
    v6 = v26;
  }

  while (v26);
LABEL_8:
  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v11 = *(v23 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1B0BE5804(uint64_t a1, uint64_t a2)
{
  v249 = *MEMORY[0x1E69E9840];
  if (a1 != a2)
  {
    v2 = a2;
    if (*(a1 + 16) == *(a2 + 16))
    {
      v3 = 0;
      v4 = a1 + 56;
      v5 = 1 << *(a1 + 32);
      if (v5 < 64)
      {
        v6 = ~(-1 << v5);
      }

      else
      {
        v6 = -1;
      }

      v7 = v6 & *(a1 + 56);
      v8 = (v5 + 63) >> 6;
      v224 = a2 + 56;
      v220 = a1 + 56;
      v221 = a1;
      v219 = v8;
      if (v7)
      {
LABEL_7:
        v9 = __clz(__rbit64(v7));
        v222 = (v7 - 1) & v7;
        goto LABEL_13;
      }

LABEL_8:
      v10 = v3;
      do
      {
        v3 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_409:
          __break(1u);
LABEL_410:
          __break(1u);
LABEL_411:
          __break(1u);
LABEL_412:
          __break(1u);
LABEL_413:
          __break(1u);
LABEL_414:
          __break(1u);
LABEL_415:
          __break(1u);
LABEL_416:
          __break(1u);
LABEL_417:
          __break(1u);
LABEL_418:
          __break(1u);
LABEL_419:
          __break(1u);
LABEL_420:
          __break(1u);
LABEL_421:
          __break(1u);
LABEL_422:
          __break(1u);
LABEL_423:
          __break(1u);
LABEL_424:
          __break(1u);
LABEL_425:
          __break(1u);
LABEL_426:
          __break(1u);
LABEL_427:
          __break(1u);
LABEL_428:
          __break(1u);
LABEL_429:
          __break(1u);
LABEL_430:
          __break(1u);
LABEL_431:
          __break(1u);
LABEL_432:
          __break(1u);
LABEL_433:
          __break(1u);
LABEL_434:
          __break(1u);
LABEL_435:
          __break(1u);
LABEL_436:
          __break(1u);
LABEL_437:
          __break(1u);
LABEL_438:
          __break(1u);
LABEL_439:
          __break(1u);
LABEL_440:
          __break(1u);
LABEL_441:
          __break(1u);
LABEL_442:
          __break(1u);
LABEL_443:
          __break(1u);
LABEL_444:
          __break(1u);
LABEL_445:
          __break(1u);
LABEL_446:
          __break(1u);
LABEL_447:
          __break(1u);
LABEL_448:
          __break(1u);
        }

        if (v3 >= v8)
        {
          return;
        }

        v11 = *(v4 + 8 * v3);
        ++v10;
      }

      while (!v11);
      v9 = __clz(__rbit64(v11));
      v222 = (v11 - 1) & v11;
LABEL_13:
      v12 = (*(a1 + 48) + 80 * (v9 | (v3 << 6)));
      v238 = *v12;
      v13 = v12[4];
      v15 = v12[1];
      v14 = v12[2];
      v241 = v12[3];
      v242 = v13;
      v239 = v15;
      v240 = v14;
      sub_1B0E46C28();
      if ((*(&v241 + 1) & 0x1000000000000000) != 0)
      {
        v243 = v238;
        v244 = v239;
        v245 = v240;
        v246 = v241;
        v247 = *(&v241 + 1) & 0xEFFFFFFFFFFFFFFFLL;
        v248 = v242;
        MEMORY[0x1B2728D70](1);
        v235 = v240;
        *&v236 = v241;
        v237 = v242;
        v233 = v238;
        v234 = v239;
        *(&v236 + 1) = *(&v241 + 1) & 0xEFFFFFFFFFFFFFFFLL;
        sub_1B0BD1224(&v233, &v227);
        sub_1B0C0EF30(v226);
      }

      else
      {
        MEMORY[0x1B2728D70](0);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      }

      v16 = sub_1B0E46CB8();
      v17 = -1 << *(v2 + 32);
      v18 = v16 & ~v17;
      v19 = v224;
      if ((*(v224 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        v20 = ~v17;
        v223 = ~v17;
        do
        {
          v21 = (*(v2 + 48) + 80 * v18);
          v233 = *v21;
          v23 = v21[3];
          v22 = v21[4];
          v24 = v21[2];
          v234 = v21[1];
          v235 = v24;
          v236 = v23;
          v237 = v22;
          v25 = *(&v234 + 1);
          v26 = v234;
          v27 = *(&v23 + 1);
          if ((*(&v23 + 1) & 0x1000000000000000) != 0)
          {
            v29 = *(&v241 + 1);
            if ((*(&v241 + 1) & 0x1000000000000000) == 0)
            {
              goto LABEL_19;
            }

            v30 = *(&v237 + 1);
            v32 = *(&v239 + 1);
            v31 = v239;
            v33 = *(&v242 + 1);
            v34 = (*(&v237 + 1) >> 59) & 6 | ((*(&v236 + 1) & 0x2000000000000000) != 0);
            if (v34 <= 2)
            {
              if (v34)
              {
                if (v34 == 1)
                {
                  if (((*(&v242 + 1) >> 59) & 6 | ((*(&v241 + 1) & 0x2000000000000000) != 0)) == 1)
                  {
                    v212 = *(&v235 + 1);
                    v213 = v235;
                    v206 = v237;
                    v207 = v236;
                    v211 = v240;
                    v35 = *(&v233 + 1) >> 62;
                    if (*(&v233 + 1) >> 62 == 3)
                    {
                      v36 = 0;
                      if (v233 == __PAIR128__(0xC000000000000000, 0) && *(&v238 + 1) >> 62 == 3)
                      {
                        v36 = 0;
                        if (v238 == __PAIR128__(0xC000000000000000, 0))
                        {
                          goto LABEL_119;
                        }
                      }
                    }

                    else if (v35 > 1)
                    {
                      if (v35 == 2)
                      {
                        v49 = *(v233 + 16);
                        v48 = *(v233 + 24);
                        v50 = __OFSUB__(v48, v49);
                        v36 = v48 - v49;
                        if (v50)
                        {
                          goto LABEL_421;
                        }
                      }

                      else
                      {
                        v36 = 0;
                      }
                    }

                    else if (v35)
                    {
                      LODWORD(v36) = DWORD1(v233) - v233;
                      if (__OFSUB__(DWORD1(v233), v233))
                      {
                        goto LABEL_418;
                      }

                      v36 = v36;
                    }

                    else
                    {
                      v36 = BYTE14(v233);
                    }

                    v57 = *(&v238 + 1) >> 62;
                    if ((*(&v238 + 1) >> 62) > 1)
                    {
                      if (v57 == 2)
                      {
                        v59 = *(v238 + 16);
                        v58 = *(v238 + 24);
                        v50 = __OFSUB__(v58, v59);
                        v60 = v58 - v59;
                        if (v50)
                        {
                          goto LABEL_412;
                        }

                        if (v36 == v60)
                        {
                          goto LABEL_114;
                        }
                      }

                      else if (!v36)
                      {
                        goto LABEL_119;
                      }
                    }

                    else if (v57)
                    {
                      if (__OFSUB__(DWORD1(v238), v238))
                      {
                        goto LABEL_411;
                      }

                      if (v36 == DWORD1(v238) - v238)
                      {
LABEL_114:
                        if (v36 < 1)
                        {
LABEL_119:
                          v202 = v242;
                          v203 = v241;
                          v230 = v236;
                          v232 = v237;
                          v228 = v234;
                          v229 = v235;
                          v227 = v233;
                          v231 = *(&v236 + 1) & 0xEFFFFFFFFFFFFFFFLL;
                          v215 = *(&v239 + 1);
                          v62 = v239;
                          sub_1B0BD1224(&v227, v226);
                          v63 = v215;
                          goto LABEL_120;
                        }

                        v214 = *(&v239 + 1);
                        v208 = v239;
                        v204 = v238;
                        v202 = v242;
                        v203 = v241;
                        if (v35 > 1)
                        {
                          if (v35 == 2)
                          {
                            v195 = *(v233 + 24);
                            v197 = *(v233 + 16);
                            v199 = *(&v233 + 1);
                            v94 = v238;
                            sub_1B03B2000(v238, *(&v238 + 1));
                            sub_1B03B2000(v94, *(&v204 + 1));
                            sub_1B0BD6700(&v233, &v227);
                            sub_1B03B2000(v94, *(&v204 + 1));
                            v200 = sub_1B0AB87A0(v197, v195, v199 & 0x3FFFFFFFFFFFFFFFLL, v204, *(&v204 + 1));
                            sub_1B0391D50(v204, *(&v204 + 1));
                            v96 = *(&v204 + 1);
                            v95 = v204;
                            goto LABEL_255;
                          }

                          *&v226[6] = 0;
                          *v226 = 0;
                          v61 = v238;
                          sub_1B03B2000(v238, *(&v238 + 1));
                          sub_1B0BD6700(&v233, &v227);
                          sub_1B03B2000(v61, *(&v204 + 1));
LABEL_258:
                          sub_1B0AE2440(v226, v61, *(&v204 + 1), &v227);
                          sub_1B0391D50(v204, *(&v204 + 1));
                          sub_1B0391D50(v204, *(&v204 + 1));
                          v63 = v214;
                          v62 = v208;
                          if (v227)
                          {
                            goto LABEL_120;
                          }

LABEL_398:
                          sub_1B0BD2F90(&v233);
                          v2 = a2;
                        }

                        else
                        {
                          if (!v35)
                          {
                            *v226 = v233;
                            *&v226[8] = DWORD2(v233);
                            *&v226[12] = WORD6(v233);
                            v61 = v238;
                            sub_1B03B2000(v238, *(&v238 + 1));
                            sub_1B0BD6700(&v233, &v227);
                            sub_1B03B2000(v61, *(&v204 + 1));
                            goto LABEL_258;
                          }

                          v198 = v233 >> 32;
                          v201 = *(&v233 + 1);
                          v196 = v233;
                          if (v233 >> 32 < v233)
                          {
                            goto LABEL_437;
                          }

                          v140 = v238;
                          sub_1B03B2000(v238, *(&v238 + 1));
                          sub_1B03B2000(v140, *(&v204 + 1));
                          sub_1B0BD6700(&v233, &v227);
                          sub_1B03B2000(v204, *(&v204 + 1));
                          v200 = sub_1B0AB87A0(v196, v198, v201 & 0x3FFFFFFFFFFFFFFFLL, v204, *(&v204 + 1));
                          v96 = *(&v204 + 1);
                          sub_1B0391D50(v204, *(&v204 + 1));
                          v95 = v204;
LABEL_255:
                          sub_1B0391D50(v95, v96);
                          sub_1B0391D50(v204, v96);
                          v63 = v214;
                          v62 = v208;
                          if ((v200 & 1) == 0)
                          {
                            goto LABEL_398;
                          }

LABEL_120:
                          v64 = v25 >> 62;
                          if (v25 >> 62 == 3)
                          {
                            v65 = 0;
                            if (v26)
                            {
                              goto LABEL_228;
                            }

                            if (v25 != 0xC000000000000000)
                            {
                              goto LABEL_228;
                            }

                            if (v63 >> 62 != 3)
                            {
                              goto LABEL_228;
                            }

                            v65 = 0;
                            if (v62 || v63 != 0xC000000000000000)
                            {
                              goto LABEL_228;
                            }
                          }

                          else
                          {
                            if (v64 == 2)
                            {
                              v130 = *(v26 + 16);
                              v129 = *(v26 + 24);
                              v50 = __OFSUB__(v129, v130);
                              v65 = v129 - v130;
                              if (v50)
                              {
                                goto LABEL_432;
                              }
                            }

                            else if (v64 == 1)
                            {
                              LODWORD(v65) = HIDWORD(v26) - v26;
                              if (__OFSUB__(HIDWORD(v26), v26))
                              {
                                goto LABEL_433;
                              }

                              v65 = v65;
                            }

                            else
                            {
                              v65 = BYTE6(v25);
                            }

LABEL_228:
                            v133 = v63 >> 62;
                            if ((v63 >> 62) > 1)
                            {
                              if (v133 != 2)
                              {
                                if (v65)
                                {
                                  goto LABEL_398;
                                }

                                goto LABEL_242;
                              }

                              v136 = *(v62 + 16);
                              v135 = *(v62 + 24);
                              v50 = __OFSUB__(v135, v136);
                              v134 = v135 - v136;
                              if (v50)
                              {
                                goto LABEL_426;
                              }
                            }

                            else if (v133)
                            {
                              LODWORD(v134) = HIDWORD(v62) - v62;
                              if (__OFSUB__(HIDWORD(v62), v62))
                              {
                                goto LABEL_425;
                              }

                              v134 = v134;
                            }

                            else
                            {
                              v134 = BYTE6(v63);
                            }

                            if (v65 != v134)
                            {
                              goto LABEL_398;
                            }

                            if (v65 >= 1)
                            {
                              v218 = v63;
                              sub_1B03B2000(v62, v63);
                              if ((sub_1B0AB8610(v26, v25, v62, v218) & 1) == 0)
                              {
                                goto LABEL_398;
                              }
                            }
                          }

LABEL_242:
                          v137 = v212 >> 62;
                          v138 = *(&v211 + 1) >> 62;
                          if (v212 >> 62 == 3)
                          {
                            v139 = 0;
                            if (!v213 && v212 == 0xC000000000000000 && *(&v211 + 1) >> 62 == 3)
                            {
                              v139 = 0;
                              if (v211 == __PAIR128__(0xC000000000000000, 0))
                              {
                                goto LABEL_317;
                              }
                            }
                          }

                          else if (v137 == 2)
                          {
                            v161 = *(v213 + 16);
                            v160 = *(v213 + 24);
                            v50 = __OFSUB__(v160, v161);
                            v139 = v160 - v161;
                            if (v50)
                            {
                              goto LABEL_444;
                            }
                          }

                          else if (v137 == 1)
                          {
                            LODWORD(v139) = HIDWORD(v213) - v213;
                            if (__OFSUB__(HIDWORD(v213), v213))
                            {
                              goto LABEL_443;
                            }

                            v139 = v139;
                          }

                          else
                          {
                            v139 = BYTE6(v212);
                          }

                          if (v138 <= 1)
                          {
                            if (v138)
                            {
                              LODWORD(v162) = DWORD1(v211) - v211;
                              if (__OFSUB__(DWORD1(v211), v211))
                              {
                                goto LABEL_439;
                              }

                              v162 = v162;
                            }

                            else
                            {
                              v162 = BYTE14(v211);
                            }

                            goto LABEL_312;
                          }

                          if (v138 == 2)
                          {
                            v164 = *(v211 + 16);
                            v163 = *(v211 + 24);
                            v50 = __OFSUB__(v163, v164);
                            v162 = v163 - v164;
                            if (v50)
                            {
                              goto LABEL_438;
                            }

LABEL_312:
                            if (v139 != v162)
                            {
                              goto LABEL_398;
                            }

                            if (v139 >= 1)
                            {
                              sub_1B03B2000(v211, *(&v211 + 1));
                              if ((sub_1B0AB8610(v213, v212, v211, *(&v211 + 1)) & 1) == 0)
                              {
                                goto LABEL_398;
                              }
                            }
                          }

                          else if (v139)
                          {
                            goto LABEL_398;
                          }

LABEL_317:
                          v165 = v27 & 0xCFFFFFFFFFFFFFFFLL;
                          v166 = v29 & 0xCFFFFFFFFFFFFFFFLL;
                          v167 = v27 >> 62;
                          v168 = v29 >> 62;
                          if (v27 >> 62 == 3)
                          {
                            v169 = 0;
                            v170 = v207;
                            if (v207)
                            {
                              goto LABEL_355;
                            }

                            if (v165 != 0xC000000000000000)
                            {
                              goto LABEL_355;
                            }

                            if (v29 >> 62 != 3)
                            {
                              goto LABEL_355;
                            }

                            v169 = 0;
                            if (v203 || v166 != 0xC000000000000000)
                            {
                              goto LABEL_355;
                            }
                          }

                          else
                          {
                            if (v167 == 2)
                            {
                              v170 = v207;
                              v178 = *(v207 + 16);
                              v177 = *(v207 + 24);
                              v50 = __OFSUB__(v177, v178);
                              v169 = v177 - v178;
                              if (v50)
                              {
                                goto LABEL_450;
                              }
                            }

                            else if (v167 == 1)
                            {
                              v170 = v207;
                              LODWORD(v169) = HIDWORD(v207) - v207;
                              if (__OFSUB__(HIDWORD(v207), v207))
                              {
                                __break(1u);
LABEL_450:
                                __break(1u);
LABEL_451:
                                __break(1u);
LABEL_452:
                                __break(1u);
LABEL_453:
                                __break(1u);
LABEL_454:
                                __break(1u);
                                sub_1B0BD2F90(&v238);
                                sub_1B0BD2F90(&v238);
                                v230 = v241;
                                v232 = v242;
                                v228 = v239;
                                v229 = v240;
                                v227 = v238;
                                v231 = *(&v241 + 1) & 0xEFFFFFFFFFFFFFFFLL;
                                sub_1B0BE8F74(&v227);

                                __break(1u);
                                return;
                              }

                              v169 = v169;
                            }

                            else
                            {
                              v169 = BYTE6(v27);
                              v170 = v207;
                            }

LABEL_355:
                            if (v168 > 1)
                            {
                              if (v168 != 2)
                              {
                                if (v169)
                                {
                                  goto LABEL_398;
                                }

                                goto LABEL_369;
                              }

                              v181 = *(v203 + 16);
                              v180 = *(v203 + 24);
                              v50 = __OFSUB__(v180, v181);
                              v179 = v180 - v181;
                              if (v50)
                              {
                                goto LABEL_447;
                              }
                            }

                            else if (v168)
                            {
                              LODWORD(v179) = HIDWORD(v203) - v203;
                              if (__OFSUB__(HIDWORD(v203), v203))
                              {
                                goto LABEL_448;
                              }

                              v179 = v179;
                            }

                            else
                            {
                              v179 = BYTE6(v29);
                            }

                            if (v169 != v179)
                            {
                              goto LABEL_398;
                            }

                            if (v169 >= 1)
                            {
                              sub_1B03B2000(v203, v29 & 0xCFFFFFFFFFFFFFFFLL);
                              if ((sub_1B0AB8610(v170, v165, v203, v166) & 1) == 0)
                              {
                                goto LABEL_398;
                              }
                            }
                          }

LABEL_369:
                          v182 = v30 & 0xCFFFFFFFFFFFFFFFLL;
                          v183 = v33 & 0xCFFFFFFFFFFFFFFFLL;
                          v184 = v30 >> 62;
                          v185 = v33 >> 62;
                          if (v30 >> 62 == 3)
                          {
                            v186 = 0;
                            v187 = v206;
                            if (!v206 && v182 == 0xC000000000000000 && v33 >> 62 == 3)
                            {
                              v186 = 0;
                              if (!v202 && v183 == 0xC000000000000000)
                              {
LABEL_404:
                                sub_1B0BD2F90(&v238);
                                sub_1B0BD2F90(&v233);
                                a1 = v221;
                                v2 = a2;
                                goto LABEL_401;
                              }
                            }
                          }

                          else if (v184 == 2)
                          {
                            v187 = v206;
                            v189 = *(v206 + 16);
                            v188 = *(v206 + 24);
                            v50 = __OFSUB__(v188, v189);
                            v186 = v188 - v189;
                            if (v50)
                            {
                              goto LABEL_454;
                            }
                          }

                          else if (v184 == 1)
                          {
                            v187 = v206;
                            LODWORD(v186) = HIDWORD(v206) - v206;
                            if (__OFSUB__(HIDWORD(v206), v206))
                            {
                              goto LABEL_453;
                            }

                            v186 = v186;
                          }

                          else
                          {
                            v186 = BYTE6(v30);
                            v187 = v206;
                          }

                          if (v185 > 1)
                          {
                            if (v185 != 2)
                            {
                              if (!v186)
                              {
                                goto LABEL_404;
                              }

                              goto LABEL_398;
                            }

                            v192 = *(v202 + 16);
                            v191 = *(v202 + 24);
                            v50 = __OFSUB__(v191, v192);
                            v190 = v191 - v192;
                            if (v50)
                            {
                              goto LABEL_451;
                            }
                          }

                          else if (v185)
                          {
                            LODWORD(v190) = HIDWORD(v202) - v202;
                            if (__OFSUB__(HIDWORD(v202), v202))
                            {
                              goto LABEL_452;
                            }

                            v190 = v190;
                          }

                          else
                          {
                            v190 = BYTE6(v33);
                          }

                          if (v186 != v190)
                          {
                            goto LABEL_398;
                          }

                          if (v186 < 1)
                          {
                            goto LABEL_404;
                          }

                          sub_1B03B2000(v202, v33 & 0xCFFFFFFFFFFFFFFFLL);
                          v193 = sub_1B0AB8610(v187, v182, v202, v183);
                          sub_1B0BD2F90(&v233);
                          v2 = a2;
                          if (v193)
                          {
LABEL_399:
                            v194 = &v238;
                            goto LABEL_400;
                          }
                        }

LABEL_27:
                        v19 = v224;
LABEL_47:
                        v20 = v223;
                        goto LABEL_20;
                      }
                    }

                    else if (v36 == BYTE14(v238))
                    {
                      goto LABEL_114;
                    }
                  }

LABEL_19:
                  v2 = a2;
                  goto LABEL_20;
                }

                if (((*(&v242 + 1) >> 59) & 6 | ((*(&v241 + 1) & 0x2000000000000000) != 0)) != 2)
                {
                  goto LABEL_19;
                }

                v39 = *(&v233 + 1) >> 62;
                v2 = a2;
                if (*(&v233 + 1) >> 62 == 3)
                {
                  v40 = 0;
                  if (v233 == __PAIR128__(0xC000000000000000, 0) && *(&v238 + 1) >> 62 == 3)
                  {
                    v40 = 0;
                    if (v238 == __PAIR128__(0xC000000000000000, 0))
                    {
                      goto LABEL_399;
                    }
                  }
                }

                else if (v39 > 1)
                {
                  if (v39 == 2)
                  {
                    v52 = *(v233 + 16);
                    v51 = *(v233 + 24);
                    v50 = __OFSUB__(v51, v52);
                    v40 = v51 - v52;
                    if (v50)
                    {
                      goto LABEL_422;
                    }
                  }

                  else
                  {
                    v40 = 0;
                  }
                }

                else if (v39)
                {
                  LODWORD(v40) = DWORD1(v233) - v233;
                  if (__OFSUB__(DWORD1(v233), v233))
                  {
                    goto LABEL_419;
                  }

                  v40 = v40;
                }

                else
                {
                  v40 = BYTE14(v233);
                }

                v66 = *(&v238 + 1) >> 62;
                if ((*(&v238 + 1) >> 62) > 1)
                {
                  if (v66 != 2)
                  {
                    if (!v40)
                    {
                      goto LABEL_399;
                    }

                    goto LABEL_20;
                  }

                  v69 = *(v238 + 16);
                  v68 = *(v238 + 24);
                  v50 = __OFSUB__(v68, v69);
                  v67 = v68 - v69;
                  if (v50)
                  {
                    goto LABEL_410;
                  }
                }

                else if (v66)
                {
                  LODWORD(v67) = DWORD1(v238) - v238;
                  if (__OFSUB__(DWORD1(v238), v238))
                  {
                    goto LABEL_409;
                  }

                  v67 = v67;
                }

                else
                {
                  v67 = BYTE14(v238);
                }

                if (v40 != v67)
                {
                  goto LABEL_20;
                }

                if (v40 < 1)
                {
                  goto LABEL_399;
                }

                if (v39 <= 1)
                {
                  if (!v39)
                  {
                    *v226 = v233;
                    *&v226[8] = DWORD2(v233);
                    *&v226[12] = WORD6(v233);
                    v70 = *(&v238 + 1);
                    v71 = v238;
                    sub_1B0BD6700(&v238, &v227);
                    sub_1B0BD6700(&v238, &v227);
                    sub_1B0BD6700(&v233, &v227);
                    sub_1B0AE2440(v226, v71, v70, &v227);
                    sub_1B0BD2F90(&v233);
                    sub_1B0BD2F90(&v238);
                    sub_1B0BD2F90(&v238);
                    v72 = v227;
                    goto LABEL_284;
                  }

                  v116 = v233;
                  v117 = v233 >> 32;
                  if (v233 >> 32 < v233)
                  {
                    goto LABEL_429;
                  }

                  v118 = v238;
                  v119 = *(&v233 + 1);
                  sub_1B0BD6700(&v238, &v227);
                  sub_1B0BD6700(&v238, &v227);
                  sub_1B0BD6700(&v238, &v227);
                  sub_1B0BD6700(&v233, &v227);
                  v77 = v119 & 0x3FFFFFFFFFFFFFFFLL;
                  v78 = v116;
                  v79 = v117;
                  v81 = *(&v118 + 1);
                  v80 = v118;
LABEL_212:
                  v120 = sub_1B0AB87A0(v78, v79, v77, v80, v81);
                  sub_1B0BD2F90(&v238);
                  sub_1B0BD2F90(&v233);
                  sub_1B0BD2F90(&v238);
                  sub_1B0BD2F90(&v238);
LABEL_330:
                  v20 = v223;
                  v19 = v224;
                  if (v120)
                  {
                    goto LABEL_399;
                  }

                  goto LABEL_20;
                }

                v73 = v238;
                if (v39 == 2)
                {
                  v74 = *(v233 + 16);
                  v75 = *(v233 + 24);
                  v76 = *(&v233 + 1);
                  sub_1B0BD6700(&v238, &v227);
                  sub_1B0BD6700(&v238, &v227);
                  sub_1B0BD6700(&v238, &v227);
                  sub_1B0BD6700(&v233, &v227);
                  v77 = v76 & 0x3FFFFFFFFFFFFFFFLL;
                  v78 = v74;
                  v79 = v75;
                  v81 = *(&v73 + 1);
                  v80 = v73;
                  goto LABEL_212;
                }

                *&v226[6] = 0;
                *v226 = 0;
                sub_1B0BD6700(&v238, &v227);
                sub_1B0BD6700(&v238, &v227);
                sub_1B0BD6700(&v233, &v227);
                sub_1B0AE2440(v226, v73, *(&v73 + 1), &v227);
                sub_1B0BD2F90(&v233);
                sub_1B0BD2F90(&v238);
                sub_1B0BD2F90(&v238);
                v121 = v227;
LABEL_333:
                v20 = v223;
                v19 = v224;
                if (v121 == 1)
                {
                  goto LABEL_399;
                }

                goto LABEL_20;
              }

              if ((*(&v242 + 1) >> 59) & 6 | ((*(&v241 + 1) & 0x2000000000000000) != 0))
              {
                goto LABEL_19;
              }

              v46 = *(&v233 + 1) >> 62;
              if (*(&v233 + 1) >> 62 == 3)
              {
                v47 = 0;
                if (v233 == __PAIR128__(0xC000000000000000, 0) && *(&v238 + 1) >> 62 == 3)
                {
                  v47 = 0;
                  if (v238 == __PAIR128__(0xC000000000000000, 0))
                  {
                    goto LABEL_199;
                  }
                }
              }

              else if (v46 > 1)
              {
                if (v46 == 2)
                {
                  v56 = *(v233 + 16);
                  v55 = *(v233 + 24);
                  v50 = __OFSUB__(v55, v56);
                  v47 = v55 - v56;
                  if (v50)
                  {
                    goto LABEL_427;
                  }
                }

                else
                {
                  v47 = 0;
                }
              }

              else if (v46)
              {
                LODWORD(v47) = DWORD1(v233) - v233;
                if (__OFSUB__(DWORD1(v233), v233))
                {
                  goto LABEL_428;
                }

                v47 = v47;
              }

              else
              {
                v47 = BYTE14(v233);
              }

              v104 = *(&v238 + 1) >> 62;
              if ((*(&v238 + 1) >> 62) > 1)
              {
                v2 = a2;
                if (v104 == 2)
                {
                  v107 = *(v238 + 16);
                  v106 = *(v238 + 24);
                  v50 = __OFSUB__(v106, v107);
                  v105 = v106 - v107;
                  if (v50)
                  {
                    goto LABEL_416;
                  }

                  goto LABEL_193;
                }

                if (v47)
                {
                  goto LABEL_20;
                }
              }

              else
              {
                v2 = a2;
                if (v104)
                {
                  LODWORD(v105) = DWORD1(v238) - v238;
                  if (__OFSUB__(DWORD1(v238), v238))
                  {
                    goto LABEL_415;
                  }

                  v105 = v105;
                }

                else
                {
                  v105 = BYTE14(v238);
                }

LABEL_193:
                if (v47 != v105)
                {
                  goto LABEL_20;
                }

                if (v47 >= 1)
                {
                  v210 = v239;
                  if (v46 > 1)
                  {
                    v217 = *(&v239 + 1);
                    if (v46 == 2)
                    {
                      v124 = *(v233 + 16);
                      v125 = *(v233 + 24);
                      v126 = *(&v233 + 1);
                      v127 = *(&v238 + 1);
                      v128 = v238;
                      sub_1B03B2000(v238, *(&v238 + 1));
                      sub_1B0BD6700(&v233, &v227);
                      sub_1B03B2000(v128, v127);
                      LOBYTE(v124) = sub_1B0AB87A0(v124, v125, v126 & 0x3FFFFFFFFFFFFFFFLL, v128, v127);
                      sub_1B0391D50(v128, v127);
                      sub_1B0391D50(v128, v127);
                      v108 = v217;
                      v113 = v210;
                      if ((v124 & 1) == 0)
                      {
                        goto LABEL_398;
                      }

                      goto LABEL_200;
                    }

                    *&v226[6] = 0;
                    *v226 = 0;
                    v158 = *(&v238 + 1);
                    v159 = v238;
                    sub_1B0BD6700(&v233, &v227);
                    sub_1B03B2000(v159, v158);
                    v157 = v226;
                  }

                  else
                  {
                    if (!v46)
                    {
                      v108 = *(&v239 + 1);
                      *v226 = v233;
                      *&v226[8] = DWORD2(v233);
                      *&v226[12] = WORD6(v233);
                      v109 = *(&v238 + 1);
                      v110 = v238;
                      sub_1B0BD6700(&v233, &v227);
                      sub_1B03B2000(v110, v109);
                      sub_1B0AE2440(v226, v110, v109, &v227);
                      sub_1B0391D50(v110, v109);
                      v111 = v227;
LABEL_297:
                      v113 = v210;
                      if ((v111 & 1) == 0)
                      {
                        goto LABEL_398;
                      }

LABEL_200:
                      v114 = v25 >> 62;
                      if (v25 >> 62 == 3)
                      {
                        v115 = 0;
                        v2 = a2;
                        if (!v26 && v25 == 0xC000000000000000 && v108 >> 62 == 3)
                        {
                          v115 = 0;
                          if (!v113 && v108 == 0xC000000000000000)
                          {
LABEL_403:
                            sub_1B0BD2F90(&v238);
                            v194 = &v233;
LABEL_400:
                            sub_1B0BD2F90(v194);
                            a1 = v221;
LABEL_401:
                            v8 = v219;
                            v4 = v220;
                            v7 = v222;
                            if (v222)
                            {
                              goto LABEL_7;
                            }

                            goto LABEL_8;
                          }
                        }
                      }

                      else if (v114 > 1)
                      {
                        v2 = a2;
                        if (v114 == 2)
                        {
                          v123 = *(v26 + 16);
                          v122 = *(v26 + 24);
                          v50 = __OFSUB__(v122, v123);
                          v115 = v122 - v123;
                          if (v50)
                          {
                            goto LABEL_441;
                          }
                        }

                        else
                        {
                          v115 = 0;
                        }
                      }

                      else
                      {
                        v2 = a2;
                        if (v114)
                        {
                          LODWORD(v115) = HIDWORD(v26) - v26;
                          if (__OFSUB__(HIDWORD(v26), v26))
                          {
                            goto LABEL_440;
                          }

                          v115 = v115;
                        }

                        else
                        {
                          v115 = BYTE6(v25);
                        }
                      }

                      v147 = v108 >> 62;
                      if ((v108 >> 62) > 1)
                      {
                        if (v147 != 2)
                        {
                          if (!v115)
                          {
                            goto LABEL_403;
                          }

                          goto LABEL_398;
                        }

                        v150 = *(v113 + 16);
                        v149 = *(v113 + 24);
                        v50 = __OFSUB__(v149, v150);
                        v148 = v149 - v150;
                        if (v50)
                        {
                          goto LABEL_430;
                        }
                      }

                      else if (v147)
                      {
                        LODWORD(v148) = HIDWORD(v113) - v113;
                        if (__OFSUB__(HIDWORD(v113), v113))
                        {
                          goto LABEL_431;
                        }

                        v148 = v148;
                      }

                      else
                      {
                        v148 = BYTE6(v108);
                      }

                      if (v115 != v148)
                      {
                        goto LABEL_398;
                      }

                      if (v115 < 1)
                      {
                        goto LABEL_403;
                      }

                      if (v114 <= 1)
                      {
                        if (!v114)
                        {
                          *&v227 = v26;
                          WORD4(v227) = v25;
                          BYTE10(v227) = BYTE2(v25);
                          BYTE11(v227) = BYTE3(v25);
                          BYTE12(v227) = BYTE4(v25);
                          BYTE13(v227) = BYTE5(v25);
                          v151 = v113;
                          sub_1B03B2000(v113, v108);
                          sub_1B03B2000(v151, v108);
                          sub_1B0AE2440(&v227, v151, v108, v226);
                          sub_1B0BD2F90(&v233);
                          sub_1B0391D50(v151, v108);
                          sub_1B0391D50(v151, v108);
                          v72 = v226[0];
LABEL_284:
                          v20 = v223;
                          v19 = v224;
                          if (v72)
                          {
                            goto LABEL_399;
                          }

                          goto LABEL_20;
                        }

                        v152 = v26;
                        v153 = v26 >> 32;
                        if (v153 < v152)
                        {
                          goto LABEL_445;
                        }

                        goto LABEL_329;
                      }

                      if (v114 == 2)
                      {
                        v152 = *(v26 + 16);
                        v153 = *(v26 + 24);
LABEL_329:
                        v171 = v113;
                        sub_1B03B2000(v113, v108);
                        sub_1B03B2000(v171, v108);
                        sub_1B03B2000(v171, v108);
                        v120 = sub_1B0AB87A0(v152, v153, v25 & 0x3FFFFFFFFFFFFFFFLL, v171, v108);
                        sub_1B0391D50(v171, v108);
                        sub_1B0BD2F90(&v233);
                        sub_1B0391D50(v171, v108);
                        sub_1B0391D50(v171, v108);
                        goto LABEL_330;
                      }

                      *(&v227 + 6) = 0;
                      *&v227 = 0;
                      v172 = v113;
                      sub_1B03B2000(v113, v108);
                      sub_1B03B2000(v172, v108);
                      sub_1B0AE2440(&v227, v172, v108, v226);
                      sub_1B0BD2F90(&v233);
                      sub_1B0391D50(v172, v108);
                      sub_1B0391D50(v172, v108);
                      v121 = v226[0];
                      goto LABEL_333;
                    }

                    v205 = v238;
                    v217 = *(&v239 + 1);
                    v154 = v233;
                    if (v233 >> 32 < v233)
                    {
                      goto LABEL_442;
                    }

                    sub_1B0BD6700(&v233, &v227);
                    sub_1B03B2000(v205, *(&v205 + 1));
                    v155 = sub_1B0E42A98();
                    if (v155)
                    {
                      v156 = sub_1B0E42AC8();
                      if (__OFSUB__(v154, v156))
                      {
                        goto LABEL_446;
                      }

                      v155 += v154 - v156;
                    }

                    sub_1B0E42AB8();
                    v157 = v155;
                    v158 = *(&v205 + 1);
                    v159 = v205;
                  }

                  sub_1B0AE2440(v157, v159, v158, &v227);
                  sub_1B0391D50(v159, v158);
                  v111 = v227;
                  v108 = v217;
                  goto LABEL_297;
                }
              }

LABEL_199:
              v230 = v236;
              v232 = v237;
              v228 = v234;
              v229 = v235;
              v227 = v233;
              v231 = *(&v236 + 1) & 0xEFFFFFFFFFFFFFFFLL;
              v108 = *(&v239 + 1);
              v112 = v239;
              sub_1B0BD1224(&v227, v226);
              v113 = v112;
              goto LABEL_200;
            }

            if (v34 <= 4)
            {
              if (v34 == 3)
              {
                if (((*(&v242 + 1) >> 59) & 6 | ((*(&v241 + 1) & 0x2000000000000000) != 0)) == 3)
                {
                  v2 = a2;
                  if (v233 == v238)
                  {
                    goto LABEL_62;
                  }

                  goto LABEL_63;
                }
              }

              else if (((*(&v242 + 1) >> 59) & 6 | ((*(&v241 + 1) & 0x2000000000000000) != 0)) == 4)
              {
                v41 = *(&v233 + 1) >> 62;
                v42 = *(&v238 + 1) >> 62;
                if (*(&v233 + 1) >> 62 == 3)
                {
                  v43 = 0;
                  if (v233 == __PAIR128__(0xC000000000000000, 0) && *(&v238 + 1) >> 62 == 3)
                  {
                    v43 = 0;
                    if (v238 == __PAIR128__(0xC000000000000000, 0))
                    {
                      goto LABEL_166;
                    }
                  }
                }

                else if (v41 > 1)
                {
                  if (v41 == 2)
                  {
                    v54 = *(v233 + 16);
                    v53 = *(v233 + 24);
                    v50 = __OFSUB__(v53, v54);
                    v43 = v53 - v54;
                    if (v50)
                    {
                      goto LABEL_420;
                    }
                  }

                  else
                  {
                    v43 = 0;
                  }
                }

                else if (v41)
                {
                  LODWORD(v43) = DWORD1(v233) - v233;
                  if (__OFSUB__(DWORD1(v233), v233))
                  {
                    goto LABEL_417;
                  }

                  v43 = v43;
                }

                else
                {
                  v43 = BYTE14(v233);
                }

                if (v42 > 1)
                {
                  v2 = a2;
                  if (v42 == 2)
                  {
                    v84 = *(v238 + 16);
                    v83 = *(v238 + 24);
                    v50 = __OFSUB__(v83, v84);
                    v82 = v83 - v84;
                    if (v50)
                    {
                      goto LABEL_414;
                    }

                    goto LABEL_160;
                  }

                  if (v43)
                  {
                    goto LABEL_20;
                  }
                }

                else
                {
                  v2 = a2;
                  if (v42)
                  {
                    LODWORD(v82) = DWORD1(v238) - v238;
                    if (__OFSUB__(DWORD1(v238), v238))
                    {
                      goto LABEL_413;
                    }

                    v82 = v82;
                  }

                  else
                  {
                    v82 = BYTE14(v238);
                  }

LABEL_160:
                  if (v43 != v82)
                  {
                    goto LABEL_20;
                  }

                  if (v43 >= 1)
                  {
                    v209 = v239;
                    if (v41 > 1)
                    {
                      v216 = *(&v239 + 1);
                      if (v41 != 2)
                      {
                        *&v226[6] = 0;
                        *v226 = 0;
                        v145 = *(&v238 + 1);
                        v146 = v238;
                        sub_1B03B2000(v238, *(&v238 + 1));
                        sub_1B0BD6700(&v233, &v227);
                        sub_1B03B2000(v146, v145);
                        sub_1B0AE2440(v226, v146, v145, &v227);
                        sub_1B0391D50(v146, v145);
                        sub_1B0391D50(v146, v145);
                        v88 = v227;
                        v85 = v216;
                        goto LABEL_265;
                      }

                      v97 = *(v233 + 16);
                      v98 = *(v233 + 24);
                      v99 = *(&v233 + 1);
                      v100 = *(&v238 + 1);
                      v101 = v238;
                      sub_1B03B2000(v238, *(&v238 + 1));
                      sub_1B03B2000(v101, v100);
                      sub_1B0BD6700(&v233, &v227);
                      sub_1B03B2000(v101, v100);
                      v102 = sub_1B0AB87A0(v97, v98, v99 & 0x3FFFFFFFFFFFFFFFLL, v101, v100);
                      sub_1B0391D50(v101, v100);
                      sub_1B0391D50(v101, v100);
                      v103 = v101;
                    }

                    else
                    {
                      if (!v41)
                      {
                        v85 = *(&v239 + 1);
                        *v226 = v233;
                        *&v226[8] = DWORD2(v233);
                        *&v226[12] = WORD6(v233);
                        v86 = *(&v238 + 1);
                        v87 = v238;
                        sub_1B03B2000(v238, *(&v238 + 1));
                        sub_1B0BD6700(&v233, &v227);
                        sub_1B03B2000(v87, v86);
                        sub_1B0AE2440(v226, v87, v86, &v227);
                        sub_1B0391D50(v87, v86);
                        sub_1B0391D50(v87, v86);
                        v88 = v227;
LABEL_265:
                        v90 = v209;
                        if ((v88 & 1) == 0)
                        {
                          goto LABEL_398;
                        }

LABEL_167:
                        v91 = v25 >> 62;
                        v92 = v85 >> 62;
                        if (v25 >> 62 == 3)
                        {
                          v93 = 0;
                          if (v26)
                          {
                            v2 = a2;
                          }

                          else
                          {
                            v2 = a2;
                            if (v25 == 0xC000000000000000 && v85 >> 62 == 3)
                            {
                              v93 = 0;
                              if (!v90 && v85 == 0xC000000000000000)
                              {
                                goto LABEL_403;
                              }
                            }
                          }
                        }

                        else if (v91 == 2)
                        {
                          v132 = *(v26 + 16);
                          v131 = *(v26 + 24);
                          v50 = __OFSUB__(v131, v132);
                          v93 = v131 - v132;
                          v2 = a2;
                          if (v50)
                          {
                            goto LABEL_434;
                          }
                        }

                        else
                        {
                          v2 = a2;
                          if (v91 == 1)
                          {
                            LODWORD(v93) = HIDWORD(v26) - v26;
                            if (__OFSUB__(HIDWORD(v26), v26))
                            {
                              goto LABEL_435;
                            }

                            v93 = v93;
                          }

                          else
                          {
                            v93 = BYTE6(v25);
                          }
                        }

                        if (v92 > 1)
                        {
                          if (v92 != 2)
                          {
                            if (!v93)
                            {
                              goto LABEL_403;
                            }

                            goto LABEL_398;
                          }

                          v175 = *(v90 + 16);
                          v174 = *(v90 + 24);
                          v50 = __OFSUB__(v174, v175);
                          v173 = v174 - v175;
                          if (v50)
                          {
                            goto LABEL_424;
                          }
                        }

                        else if (v92)
                        {
                          LODWORD(v173) = HIDWORD(v90) - v90;
                          if (__OFSUB__(HIDWORD(v90), v90))
                          {
                            goto LABEL_423;
                          }

                          v173 = v173;
                        }

                        else
                        {
                          v173 = BYTE6(v85);
                        }

                        if (v93 != v173)
                        {
                          goto LABEL_398;
                        }

                        if (v93 < 1)
                        {
                          goto LABEL_403;
                        }

                        v176 = v90;
                        sub_1B03B2000(v90, v85);
                        LOBYTE(v176) = sub_1B0AB8610(v26, v25, v176, v85);
                        sub_1B0BD2F90(&v233);
                        if (v176)
                        {
                          goto LABEL_399;
                        }

                        goto LABEL_27;
                      }

                      v216 = *(&v239 + 1);
                      v141 = v233;
                      v142 = v233 >> 32;
                      if (v233 >> 32 < v233)
                      {
                        goto LABEL_436;
                      }

                      v143 = *(&v233 + 1);
                      v100 = *(&v238 + 1);
                      v144 = v238;
                      sub_1B03B2000(v238, *(&v238 + 1));
                      sub_1B03B2000(v144, v100);
                      sub_1B0BD6700(&v233, &v227);
                      sub_1B03B2000(v144, v100);
                      v102 = sub_1B0AB87A0(v141, v142, v143 & 0x3FFFFFFFFFFFFFFFLL, v144, v100);
                      sub_1B0391D50(v144, v100);
                      sub_1B0391D50(v144, v100);
                      v103 = v144;
                    }

                    sub_1B0391D50(v103, v100);
                    v85 = v216;
                    v90 = v209;
                    if ((v102 & 1) == 0)
                    {
                      goto LABEL_398;
                    }

                    goto LABEL_167;
                  }
                }

LABEL_166:
                v230 = v236;
                v232 = v237;
                v228 = v234;
                v229 = v235;
                v227 = v233;
                v231 = *(&v236 + 1) & 0xEFFFFFFFFFFFFFFFLL;
                v85 = *(&v239 + 1);
                v89 = v239;
                sub_1B0BD1224(&v227, v226);
                v90 = v89;
                goto LABEL_167;
              }

              goto LABEL_19;
            }

            v37 = (*(&v241 + 1) >> 61) & 1;
            v38 = *(&v242 + 1) >> 59;
            if (v34 != 5)
            {
              v2 = a2;
              if ((v38 & 6 | v37) != 6)
              {
                goto LABEL_20;
              }

LABEL_61:
              if (v233 == v238)
              {
LABEL_62:
                if (*(&v233 + 1) != *(&v238 + 1))
                {
                  goto LABEL_63;
                }

LABEL_64:
                if (v26 == v31 && v25 == v32)
                {
                  goto LABEL_399;
                }

LABEL_26:
                if (sub_1B0E46A78())
                {
                  goto LABEL_399;
                }

                goto LABEL_27;
              }

LABEL_63:
              v44 = v239;
              v45 = sub_1B0E46A78();
              v32 = *(&v44 + 1);
              v31 = v44;
              v20 = v223;
              v19 = v224;
              if ((v45 & 1) == 0)
              {
                goto LABEL_20;
              }

              goto LABEL_64;
            }

            v2 = a2;
            if ((v38 & 6 | v37) == 5)
            {
              goto LABEL_61;
            }
          }

          else if ((HIBYTE(v241) & 0x10) == 0)
          {
            v28 = v239;
            if (v233 != v238 && (sub_1B0E46A78() & 1) == 0)
            {
              v19 = v224;
              goto LABEL_47;
            }

            if (__PAIR128__(v25, v26) == v28)
            {
              goto LABEL_399;
            }

            goto LABEL_26;
          }

LABEL_20:
          v18 = (v18 + 1) & v20;
        }

        while (((*(v19 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0);
      }

      sub_1B0BD2F90(&v238);
    }
  }
}

uint64_t sub_1B0BE7524(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = *(result + 56);
  v26 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v4;
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v27 = v8;
  v28 = result;
  if ((v6 & v4) == 0)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v11 = (v7 - 1) & v7;
LABEL_13:
    v14 = (*(result + 48) + 24 * (v10 | (v3 << 6)));
    v15 = *v14;
    v31 = v14[1];
    v16 = v14[2];
    sub_1B0E46C28();
    v29 = v11;
    v30 = v15;
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        MEMORY[0x1B2728D70](3);
        goto LABEL_26;
      }

      if (v16 == 3)
      {
        MEMORY[0x1B2728D70](4);
        goto LABEL_26;
      }
    }

    else
    {
      if (!v16)
      {
        MEMORY[0x1B2728D70](1);
        goto LABEL_26;
      }

      if (v16 == 1)
      {
        MEMORY[0x1B2728D70](2);
        goto LABEL_26;
      }
    }

    MEMORY[0x1B2728D70](0);
    sub_1B0E46C68();
    sub_1B04420D8(v15);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if ((~v15 & 0xF000000000000007) != 0)
    {
      ResponseTextCode.hash(into:)(v32, v15);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
LABEL_26:
    v17 = sub_1B0E46CB8();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_46:
      sub_1B0BD1488(v30, v31, v16);
      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 24 * v19);
      v22 = *v21;
      v23 = v21[1];
      v24 = v21[2];
      if (v24 > 1)
      {
        break;
      }

      if (v24)
      {
        if (v24 != 1)
        {
          goto LABEL_39;
        }

        if (v16 == 1)
        {
          goto LABEL_43;
        }
      }

      else if (!v16)
      {
        goto LABEL_43;
      }

LABEL_29:
      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    if (v24 == 2)
    {
      if (v16 == 2)
      {
        goto LABEL_43;
      }

      goto LABEL_29;
    }

    if (v24 == 3)
    {
      if (v16 == 3)
      {
        goto LABEL_43;
      }

      goto LABEL_29;
    }

LABEL_39:
    if (v16 < 4)
    {
      goto LABEL_29;
    }

    sub_1B04420D8(*v21);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v25 = static ResponseText.__derived_struct_equals(_:_:)(v22, v23, v24, v30, v31, v16);
    sub_1B0BD1488(v22, v23, v24);
    if ((v25 & 1) == 0)
    {
      goto LABEL_29;
    }

    sub_1B0BD1488(v30, v31, v16);
LABEL_43:
    v8 = v27;
    result = v28;
    v7 = v29;
  }

  while (v29);
LABEL_8:
  v12 = v3;
  while (1)
  {
    v3 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v13 = *(v26 + 8 * v3);
    ++v12;
    if (v13)
    {
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0BE7848(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  v3 = *(a1 + 16);
  if (sub_1B03B6298(*(a1 + 8), *(a2 + 8)))
  {
    v4 = sub_1B03B6298(v3, v2);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t ConnectionCommandIDSet.isDisjoint(with:)(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a1 == a4)
  {
    return sub_1B0B8715C(a5, a2);
  }

  else
  {
    return 1;
  }
}

uint64_t ConnectionCommandIDSet.normalCommandCount.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) <= *(a2 + 16) >> 3)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0BE7E2C(a3);
    v5 = a2;
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v5 = sub_1B0BE7F24(a3, a2);
  }

  v6 = *(v5 + 16);

  return v6;
}

uint64_t ConnectionCommandIDSet.makeIterator()(int a1, uint64_t a2, uint64_t a3)
{
  v6 = -1 << *(a2 + 32);
  v7 = a2 + 56;
  v8 = ~v6;
  v9 = -v6;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a2 + 56);
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = v7;
  v12[4] = v8;
  v12[5] = 0;
  v12[6] = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5498, &qword_1B0ED0490);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1B0BE83AC;
  *(v14 + 24) = v13;
  swift_bridgeObjectRetain_n();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v14;
}

uint64_t sub_1B0BE7A7C@<X0>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  result = swift_beginAccess();
  v7 = a1[5];
  v8 = a1[6];
  if (v8)
  {
    v9 = a1[5];
LABEL_10:
    v13 = 0;
    v14 = *(*(a1[2] + 48) + ((v9 << 8) | (4 * __clz(__rbit64(v8)))));
    a1[5] = v9;
    a1[6] = (v8 - 1) & v8;
    v15 = a2 | (v14 << 32);
LABEL_11:
    *a3 = v15;
    *(a3 + 8) = v13;
  }

  else
  {
    v10 = (a1[4] + 64) >> 6;
    if (v10 <= v7 + 1)
    {
      v11 = v7 + 1;
    }

    else
    {
      v11 = (a1[4] + 64) >> 6;
    }

    v12 = v11 - 1;
    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v9 >= v10)
      {
        v15 = 0;
        a1[5] = v12;
        a1[6] = 0;
        v13 = 1;
        goto LABEL_11;
      }

      v8 = *(a1[3] + 8 * v9);
      ++v7;
      if (v8)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B0BE7B60@<X0>(uint64_t *a1@<X8>)
{
  v3 = ConnectionCommandIDSet.makeIterator()(*v1, *(v1 + 8), *(v1 + 16));

  *a1 = v3;
  return result;
}

void *sub_1B0BE7BC0()
{
  v1 = sub_1B0BE89BC(*v0, *(v0 + 8), *(v0 + 16));

  return v1;
}

uint64_t sub_1B0BE7C1C(uint64_t *a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v9 = ConnectionCommandIDSet.makeIterator()(a4, a5, a6);

  v11 = 0;
  if (!a2 || !a3)
  {
LABEL_11:
    *a1 = v9;
    return v11;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    sub_1B0E466E8();
    if (v14)
    {
      v11 = 0;
    }

    else
    {
      v11 = 0;
      v12 = v13;
      while (1)
      {
        *a2 = v12;
        if (a3 - 1 == v11)
        {
          break;
        }

        sub_1B0E466E8();
        v12 = v13;
        ++v11;
        ++a2;
        if (v14)
        {
          goto LABEL_11;
        }
      }

      v11 = a3;
    }

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0BE7CF8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0C0E08C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1B0E469A8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 4;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1B0E45278();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1B0B93C70(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void sub_1B0BE7E2C(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        sub_1B0BE84C8(*(*(a1 + 48) + ((v9 << 8) | (4 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_1B0BE7F24(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v54 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v47 = a1;
    v48 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v46 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v47;
          v16 = v48;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {
              v38 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v48 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v47;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v5 = *(*(v15 + 48) + ((v48 << 8) | (4 * v18)));
        sub_1B0E46C28();
        sub_1B0E46C88();
        v19 = sub_1B0E46CB8();
        v20 = -1 << *(v6 + 32);
        v2 = v19 & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
      }

      while (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0);
      v21 = *(v6 + 48);
      if (*(v21 + 4 * v2) == v5)
      {
        break;
      }

      while (1)
      {
        v2 = (v2 + 1) & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
        if (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0)
        {
          break;
        }

        if (*(v21 + 4 * v2) == v5)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v51 = v46;
    v52 = v48;
    v53 = v11;
    v50[0] = v47;
    v50[1] = v8;
    v14 = (63 - v20) >> 6;
    v5 = 8 * v14;
    v22 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v14 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v40 = swift_slowAlloc();
      memcpy(v40, (v6 + 56), v5);
      v41 = sub_1B0BE85DC(v40, v14, v6, v2, v50);

      MEMORY[0x1B272C230](v40, -1, -1);
      v4 = v50[0];
      v46 = v51;
      v48 = v52;
      v6 = v41;
      goto LABEL_41;
    }

LABEL_18:
    v43 = v14;
    v44 = &v42;
    MEMORY[0x1EEE9AC00](v22);
    v14 = &v42 - v23;
    memcpy(&v42 - v23, (v6 + 56), v5);
    v24 = *(v6 + 16);
    *(v14 + 8 * v3) &= ~v4;
    v25 = v24 - 1;
    v3 = 1;
    v4 = v47;
LABEL_19:
    v45 = v25;
    while (v11)
    {
LABEL_27:
      v29 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v5 = *(*(v4 + 48) + ((v48 << 8) | (4 * v29)));
      sub_1B0E46C28();
      v2 = v49;
      sub_1B0E46C88();
      v30 = sub_1B0E46CB8();
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = 1 << v32;
      if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) != 0)
      {
        v35 = *(v6 + 48);
        if (*(v35 + 4 * v32) == v5)
        {
LABEL_20:
          v26 = *(v14 + 8 * v33);
          *(v14 + 8 * v33) = v26 & ~v34;
          if ((v26 & v34) != 0)
          {
            v25 = v45 - 1;
            if (__OFSUB__(v45, 1))
            {
              __break(1u);
            }

            if (v45 == 1)
            {

              v6 = MEMORY[0x1E69E7CD0];
              goto LABEL_41;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v36 = ~v31;
          while (1)
          {
            v32 = (v32 + 1) & v36;
            v33 = v32 >> 6;
            v34 = 1 << v32;
            if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) == 0)
            {
              break;
            }

            if (*(v35 + 4 * v32) == v5)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v27 = v48;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v28 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v28);
      ++v27;
      if (v11)
      {
        v48 = v28;
        goto LABEL_27;
      }
    }

    if (v12 <= v48 + 1)
    {
      v37 = v48 + 1;
    }

    else
    {
      v37 = v12;
    }

    v48 = v37 - 1;
    v6 = sub_1B0BE87B4(v14, v43, v45, v6);
LABEL_41:
    v38 = v4;
LABEL_43:
    sub_1B03D91F8(v38);
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v6;
}

unint64_t sub_1B0BE83BC()
{
  result = qword_1EB6E54A0;
  if (!qword_1EB6E54A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E54A0);
  }

  return result;
}

unint64_t sub_1B0BE8410()
{
  result = qword_1EB6DCE78;
  if (!qword_1EB6DCE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCE78);
  }

  return result;
}

unint64_t sub_1B0BE84C8(uint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  sub_1B0E46C28();
  sub_1B0E46C88();
  v4 = sub_1B0E46CB8();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    while (*(*(v3 + 48) + 4 * v6) != v2)
    {
      v6 = (v6 + 1) & v7;
      if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v1;
    v13 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B0C23BAC();
      v11 = v13;
    }

    v8 = *(*(v11 + 48) + 4 * v6);
    sub_1B0B91784(v6);
    v9 = 0;
    *v1 = v13;
  }

  else
  {
LABEL_5:
    v8 = 0;
    v9 = 1;
  }

  return v8 | (v9 << 32);
}

uint64_t sub_1B0BE85DC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_9:
    v17 = *(*(*a5 + 48) + ((v14 << 8) | (4 * __clz(__rbit64(v13)))));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    sub_1B0E46C28();
    sub_1B0E46C88();
    result = sub_1B0E46CB8();
    v18 = -1 << *(a3 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) != 0)
    {
      v22 = *(a3 + 48);
      if (*(v22 + 4 * v19) == v17)
      {
LABEL_2:
        v11 = v7[v20];
        v7[v20] = v11 & ~v21;
        if ((v11 & v21) != 0)
        {
          if (__OFSUB__(v9--, 1))
          {
LABEL_24:
            __break(1u);
            return result;
          }

          if (!v9)
          {
            return MEMORY[0x1E69E7CD0];
          }
        }
      }

      else
      {
        v23 = ~v18;
        while (1)
        {
          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) == 0)
          {
            break;
          }

          if (*(v22 + 4 * v19) == v17)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v15 = (a5[2] + 64) >> 6;
  v16 = a5[3];
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v14 >= v15)
    {
      break;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  if (v15 <= v12 + 1)
  {
    v25 = v12 + 1;
  }

  else
  {
    v25 = (a5[2] + 64) >> 6;
  }

  a5[3] = v25 - 1;
  a5[4] = 0;

  return sub_1B0BE87B4(v7, a2, v9, a3);
}

uint64_t sub_1B0BE87B4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E54B8, ":&\t");
  result = sub_1B0E46228();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 4 * (v13 | (v11 << 6)));
    sub_1B0E46C28();
    sub_1B0E46C88();
    result = sub_1B0E46CB8();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 4 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_1B0BE89BC(int a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4308, &qword_1B0EC5050);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size_0(v7);
    v9 = v8 - 32;
    if (v8 < 32)
    {
      v9 = v8 - 25;
    }

    v10 = 2 * (v9 >> 3);
    v7[2] = v6;
    v7[3] = v10;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
    v10 = *(MEMORY[0x1E69E7CC0] + 24);
  }

  v11 = v7 + 4;
  v12 = v10 >> 1;
  ConnectionCommandIDSet.makeIterator()(a1, a2, a3);
  if (v6)
  {
    v12 -= v6;
    do
    {
      result = sub_1B0E466E8();
      if (v30)
      {
        goto LABEL_37;
      }

      *v11++ = v29;
    }

    while (--v6);
  }

  result = sub_1B0E466E8();
  if ((v30 & 1) == 0)
  {
    v14 = v29;
    while (1)
    {
      if (!v12)
      {
        v15 = v7[3];
        if (((v15 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_35;
        }

        v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4308, &qword_1B0EC5050);
        v18 = swift_allocObject();
        v19 = _swift_stdlib_malloc_size_0(v18);
        v20 = v19 - 32;
        if (v19 < 32)
        {
          v20 = v19 - 25;
        }

        v21 = v20 >> 3;
        v18[2] = v17;
        v18[3] = 2 * (v20 >> 3);
        v22 = (v18 + 4);
        v23 = v7[3] >> 1;
        if (v7[2])
        {
          if (v18 != v7 || v22 >= &v7[v23 + 4])
          {
            memmove(v18 + 4, v7 + 4, 8 * v23);
          }

          v7[2] = 0;
        }

        v11 = (v22 + 8 * v23);
        v12 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - v23;

        v7 = v18;
      }

      v25 = __OFSUB__(v12--, 1);
      if (v25)
      {
        break;
      }

      *v11++ = v14;
      result = sub_1B0E466E8();
      v14 = v29;
      if (v30)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_30:

  v26 = v7[3];
  if (v26 < 2)
  {
    return v7;
  }

  v27 = v26 >> 1;
  v25 = __OFSUB__(v27, v12);
  v28 = v27 - v12;
  if (!v25)
  {
    v7[2] = v28;
    return v7;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

char *sub_1B0BE8BE0(uint64_t a1)
{
  v2 = sub_1B0E44578();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v3);
  sub_1B0BE8FC8();
  sub_1B0E44F08();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E54C8, &unk_1B0ED0780);
  v7 = *(a1 + *(result + 9));
  v8 = v27[0];
  v9 = MEMORY[0x1E69E7CC0];
  v10 = 0;
  if (v7)
  {
    v11 = v27[1];
    v12 = (MEMORY[0x1E69E7CC0] + 32);
    do
    {
      v13 = *(v8 + 16);
      if (v11 == v13)
      {
        break;
      }

      if (v11 >= v13)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v14 = *(v8 + v11 + 32);
      if (!v10)
      {
        v15 = *(v9 + 3);
        if (((v15 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EE0, &qword_1B0E99B40);
        v18 = swift_allocObject();
        v19 = 2 * _swift_stdlib_malloc_size_0(v18) - 64;
        *(v18 + 2) = v17;
        *(v18 + 3) = v19;
        v20 = v18 + 32;
        v21 = *(v9 + 3) >> 1;
        if (*(v9 + 2))
        {
          v22 = v9 + 32;
          if (v18 != v9 || v20 >= &v22[v21])
          {
            memmove(v18 + 32, v22, v21);
          }

          *(v9 + 2) = 0;
        }

        v12 = &v20[v21];
        v10 = (v19 >> 1) - v21;

        v9 = v18;
      }

      v23 = __OFSUB__(v10--, 1);
      if (v23)
      {
        goto LABEL_23;
      }

      *v12++ = v14;
      ++v11;
      --v7;
    }

    while (v7);
  }

  v24 = *(v9 + 3);
  if (v24 < 2)
  {
    return v9;
  }

  v25 = v24 >> 1;
  v23 = __OFSUB__(v25, v10);
  v26 = v25 - v10;
  if (!v23)
  {
    *(v9 + 2) = v26;
    return v9;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1B0BE8E14()
{
  result = sub_1B0E466E8();
  v1 = MEMORY[0x1E69E7CC0];
  v2 = 0;
  if ((v18 & 1) == 0)
  {
    v3 = v17;
    v4 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      if (!v2)
      {
        v5 = v1[3];
        if (((v5 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
        if (v6 <= 1)
        {
          v7 = 1;
        }

        else
        {
          v7 = v6;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EE0, &qword_1B0E99B40);
        v8 = swift_allocObject();
        v9 = 2 * _swift_stdlib_malloc_size_0(v8) - 64;
        v8[2] = v7;
        v8[3] = v9;
        v10 = (v8 + 4);
        v11 = v1[3] >> 1;
        if (v1[2])
        {
          if (v8 != v1 || v10 >= v1 + v11 + 32)
          {
            memmove(v8 + 4, v1 + 4, v11);
          }

          v1[2] = 0;
        }

        v4 = (v10 + v11);
        v2 = (v9 >> 1) - v11;

        v1 = v8;
      }

      v13 = __OFSUB__(v2--, 1);
      if (v13)
      {
        break;
      }

      *v4++ = v3;
      result = sub_1B0E466E8();
      v3 = v17;
      if (v18)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:
  v14 = v1[3];
  if (v14 < 2)
  {
    return v1;
  }

  v15 = v14 >> 1;
  v13 = __OFSUB__(v15, v2);
  v16 = v15 - v2;
  if (!v13)
  {
    v1[2] = v16;
    return v1;
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_1B0BE8FC8()
{
  result = qword_1EB6E54C0;
  if (!qword_1EB6E54C0)
  {
    sub_1B0E44578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E54C0);
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B0BE9048(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0BE9090(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0BE90E4(uint64_t *a1, unsigned __int8 *a2)
{
  v38 = a1;
  v47 = _s19CommandOutputBufferV12ContinuationVMa(0);
  MEMORY[0x1EEE9AC00](v47);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E54D0, &unk_1B0ED07F0);
  MEMORY[0x1EEE9AC00](v46);
  v6 = &v36 - v5;
  v48 = _s19CommandOutputBufferV7ElementOMa(0);
  v40 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v37 = &v36 - v10;
  v11 = _s19CommandOutputBufferV7CommandVMa(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &a2[*(type metadata accessor for ConnectionCommand(0) + 20)];
  v16 = *a2;
  LODWORD(a2) = *(a2 + 1);
  v17 = sub_1B0E443C8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 16);
  v39 = v15;
  v42 = v19;
  v43 = v18;
  v19(v14, v15, v17);
  v20 = &v14[*(v12 + 28)];
  v44 = a2;
  v45 = v16;
  *v20 = v16;
  *(v20 + 1) = a2;
  v14[*(v12 + 32)] = 0;
  v36 = v14;
  v21 = v14;
  v23 = v37;
  v22 = v38;
  sub_1B03D60F8(v21, v37, _s19CommandOutputBufferV7CommandVMa);
  swift_storeEnumTagMultiPayload();
  v24 = *v22;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v26 = v24[2];
    v25 = v24[3];
    if (v26 >= v25 >> 1)
    {
      v24 = sub_1B0C0C7A8((v25 > 1), v26 + 1, 1, v24);
    }

    v24[2] = v26 + 1;
    v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v40 = *(v40 + 72);
    sub_1B03D6160(v23, v24 + v41 + v40 * v26, _s19CommandOutputBufferV7ElementOMa);
    *v22 = v24;
    v27 = *&v39[*(type metadata accessor for ClientCommand.Encoded(0) + 20)];
    v39 = *(v27 + 16);
    if (!v39)
    {
      break;
    }

    v22 = 0;
    while (v22 < *(v27 + 16))
    {
      v28 = v42;
      v29 = v27 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v22;
      v30 = *(v46 + 48);
      *v6 = v22;
      v28(&v6[v30], v29, v17);
      v28(v4, &v6[v30], v17);
      v31 = v47;
      v32 = &v4[*(v47 + 20)];
      v33 = v44;
      *v32 = v45;
      *(v32 + 1) = v33;
      *&v4[*(v31 + 24)] = v22;
      sub_1B03D60F8(v4, v8, _s19CommandOutputBufferV12ContinuationVMa);
      swift_storeEnumTagMultiPayload();
      v23 = v24[2];
      v34 = v24[3];
      if (v23 >= v34 >> 1)
      {
        v24 = sub_1B0C0C7A8((v34 > 1), v23 + 1, 1, v24);
      }

      v22 = (v22 + 1);
      sub_1B03DA84C(v4, _s19CommandOutputBufferV12ContinuationVMa);
      v24[2] = v23 + 1;
      sub_1B03D6160(v8, v24 + v41 + v23 * v40, _s19CommandOutputBufferV7ElementOMa);
      sub_1B0BEA538(v6);
      if (v39 == v22)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    v24 = sub_1B0C0C7A8(0, v24[2] + 1, 1, v24);
  }

LABEL_10:
  *v38 = v24;
  return sub_1B03DA84C(v36, _s19CommandOutputBufferV7CommandVMa);
}

BOOL sub_1B0BE95B0(void (*a1)(uint64_t *))
{
  v3 = _s19CommandOutputBufferV7ElementOMa(0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(*v1 + 16);
  if (v8 != 1)
  {
    goto LABEL_5;
  }

  sub_1B03D60F8(v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), _s19CommandOutputBufferV7ElementOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1B03DA84C(v6, _s19CommandOutputBufferV7ElementOMa);
  if (EnumCaseMultiPayload != 2)
  {
    v8 = *(v7 + 16);
LABEL_5:
    v10 = v8 != 0;
    goto LABEL_6;
  }

  v10 = 0;
LABEL_6:
  a1(v1);
  return v10;
}

uint64_t sub_1B0BE96F8(uint64_t *a1, unsigned __int8 *a2)
{
  v38 = a1;
  v3 = sub_1B0E443C8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s19CommandOutputBufferV7ElementOMa(0);
  v40 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  v13 = _s19CommandOutputBufferV7CommandVMa(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &a2[*(type metadata accessor for ConnectionCommand(0) + 20)];
  v18 = *a2;
  LODWORD(a2) = *(a2 + 1);
  v36 = v4;
  v19 = *(v4 + 16);
  v39 = v17;
  v42 = v19;
  (v19)(v16);
  v20 = &v16[*(v14 + 28)];
  v43 = a2;
  v44 = v18;
  *v20 = v18;
  v21 = v38;
  *(v20 + 1) = a2;
  v16[*(v14 + 32)] = 1;
  v37 = v16;
  sub_1B03D60F8(v16, v12, _s19CommandOutputBufferV7CommandVMa);
  v45 = v7;
  swift_storeEnumTagMultiPayload();
  v22 = *v21;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = sub_1B0C0C7A8(0, v22[2] + 1, 1, v22);
  }

  v24 = v22[2];
  v23 = v22[3];
  if (v24 >= v23 >> 1)
  {
    v22 = sub_1B0C0C7A8((v23 > 1), v24 + 1, 1, v22);
  }

  v22[2] = v24 + 1;
  v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v40 = *(v40 + 72);
  sub_1B03D6160(v12, v22 + v41 + v40 * v24, _s19CommandOutputBufferV7ElementOMa);
  *v21 = v22;
  v25 = *&v39[*(type metadata accessor for ClientCommand.Encoded(0) + 20)];
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = (v25 + ((*(v36 + 80) + 32) & ~*(v36 + 80)));
    v39 = *(v36 + 72);
    v28 = (v36 + 8);
    do
    {
      v29 = v42;
      v42(v6, v27, v3);
      v29(v9, v6, v3);
      v30 = &v9[*(_s19CommandOutputBufferV8IdleDoneVMa(0) + 20)];
      v31 = v43;
      *v30 = v44;
      *(v30 + 1) = v31;
      swift_storeEnumTagMultiPayload();
      v33 = v22[2];
      v32 = v22[3];
      if (v33 >= v32 >> 1)
      {
        v22 = sub_1B0C0C7A8((v32 > 1), v33 + 1, 1, v22);
      }

      (*v28)(v6, v3);
      v22[2] = v33 + 1;
      sub_1B03D6160(v9, v22 + v41 + v33 * v40, _s19CommandOutputBufferV7ElementOMa);
      v27 = &v39[v27];
      --v26;
    }

    while (v26);
    *v38 = v22;
  }

  return sub_1B03DA84C(v37, _s19CommandOutputBufferV7CommandVMa);
}

uint64_t sub_1B0BE9B24(uint64_t *a1, uint64_t a2)
{
  v4 = _s19CommandOutputBufferV7ElementOMa(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s19CommandOutputBufferV9HandshakeVMa(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2 + *(type metadata accessor for HandshakeReply.Encoded(0) + 20);
  v13 = *v12;
  v14 = *(v12 + 4);
  v15 = sub_1B0E443C8();
  (*(*(v15 - 8) + 16))(v11, a2, v15);
  v16 = &v11[*(v9 + 28)];
  *v16 = v13;
  *(v16 + 1) = v14;
  sub_1B03D60F8(v11, v7, _s19CommandOutputBufferV9HandshakeVMa);
  swift_storeEnumTagMultiPayload();
  v17 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_1B0C0C7A8(0, v17[2] + 1, 1, v17);
  }

  v19 = v17[2];
  v18 = v17[3];
  if (v19 >= v18 >> 1)
  {
    v17 = sub_1B0C0C7A8((v18 > 1), v19 + 1, 1, v17);
  }

  sub_1B03DA84C(v11, _s19CommandOutputBufferV9HandshakeVMa);
  v17[2] = v19 + 1;
  result = sub_1B03D6160(v7, v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19, _s19CommandOutputBufferV7ElementOMa);
  *a1 = v17;
  return result;
}

uint64_t sub_1B0BE9D78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  done = _s19CommandOutputBufferV8IdleDoneVMa(0);
  MEMORY[0x1EEE9AC00](done - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s19CommandOutputBufferV9HandshakeVMa(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s19CommandOutputBufferV12ContinuationVMa(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s19CommandOutputBufferV7CommandVMa(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s19CommandOutputBufferV7ElementOMa(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03D60F8(v2, v18, _s19CommandOutputBufferV7ElementOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1B03D6160(v18, v6, _s19CommandOutputBufferV8IdleDoneVMa);
      v15 = v6;
    }

    else
    {
      sub_1B03D6160(v18, v9, _s19CommandOutputBufferV9HandshakeVMa);
      v15 = v9;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1B03D6160(v18, v12, _s19CommandOutputBufferV12ContinuationVMa);
    v15 = v12;
  }

  else
  {
    sub_1B03D6160(v18, v15, _s19CommandOutputBufferV7CommandVMa);
  }

  v20 = sub_1B0E443C8();
  return (*(*(v20 - 8) + 32))(a1, v15, v20);
}

unint64_t sub_1B0BEA028()
{
  v1 = v0;
  done = _s19CommandOutputBufferV8IdleDoneVMa(0);
  MEMORY[0x1EEE9AC00](done);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s19CommandOutputBufferV9HandshakeVMa(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s19CommandOutputBufferV12ContinuationVMa(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s19CommandOutputBufferV7CommandVMa(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s19CommandOutputBufferV7ElementOMa(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03D60F8(v1, v15, _s19CommandOutputBufferV7ElementOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1B03D6160(v15, v3, _s19CommandOutputBufferV8IdleDoneVMa);
      v22 = &v3[*(done + 20)];
      v18 = *v22;
      v19 = *(v22 + 1);
      v20 = _s19CommandOutputBufferV8IdleDoneVMa;
      v21 = v3;
    }

    else
    {
      sub_1B03D6160(v15, v6, _s19CommandOutputBufferV9HandshakeVMa);
      v24 = &v6[*(v4 + 20)];
      v18 = *v24;
      v19 = *(v24 + 1);
      v20 = _s19CommandOutputBufferV9HandshakeVMa;
      v21 = v6;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1B03D6160(v15, v9, _s19CommandOutputBufferV12ContinuationVMa);
    v23 = &v9[*(v7 + 20)];
    v18 = *v23;
    v19 = *(v23 + 1);
    v20 = _s19CommandOutputBufferV12ContinuationVMa;
    v21 = v9;
  }

  else
  {
    sub_1B03D6160(v15, v12, _s19CommandOutputBufferV7CommandVMa);
    v17 = &v12[*(v10 + 20)];
    v18 = *v17;
    v19 = *(v17 + 1);
    v20 = _s19CommandOutputBufferV7CommandVMa;
    v21 = v12;
  }

  sub_1B03DA84C(v21, v20);
  return v18 | (v19 << 32);
}

uint64_t sub_1B0BEA368(uint64_t a1, uint64_t a2)
{
  v2 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  if (v2 != _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0())
  {
    return 0;
  }

  sub_1B0E443C8();
  sub_1B075CEE0();
  sub_1B0E45668();
  v3 = sub_1B0E456C8();
  if (v6 == v5)
  {
    return 1;
  }

  MEMORY[0x1EEE9AC00](v3);
  sub_1B0E44328();
  return v6;
}

uint64_t sub_1B0BEA4D8@<X0>(const void *a1@<X0>, BOOL *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  result = memcmp(v5, a1, v6);
  *a2 = result == 0;
  return result;
}

uint64_t sub_1B0BEA538(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E54D0, &unk_1B0ED07F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B0BEA5A0()
{
  result = qword_1EB6E54D8;
  if (!qword_1EB6E54D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E54D8);
  }

  return result;
}

unint64_t sub_1B0BEA5F4()
{
  result = qword_1EB6E54E0;
  if (!qword_1EB6E54E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E54E0);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_20Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0E443C8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_21Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0E443C8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B0BEA82C(uint64_t a1)
{
  result = sub_1B0E443C8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0BEA8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B0E443C8();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0BEA92C(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

uint64_t sub_1B0BEA960(uint64_t a1)
{
  result = _s19CommandOutputBufferV7CommandVMa(319);
  if (v2 <= 0x3F)
  {
    result = _s19CommandOutputBufferV12ContinuationVMa(319);
    if (v3 <= 0x3F)
    {
      result = _s19CommandOutputBufferV8IdleDoneVMa(319);
      if (v4 <= 0x3F)
      {
        result = _s19CommandOutputBufferV9HandshakeVMa(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_1B0BEAA00()
{
  result = qword_1EB6E54E8;
  if (!qword_1EB6E54E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E54E8);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for OptionalMillisecondDate(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

double sub_1B0BEAAA4@<D0>(uint64_t a1@<X8>)
{
  *a1 = 2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 5;
  return result;
}

double sub_1B0BEAACC@<D0>(char a1@<W3>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_1B0BEABDC(v9);
  }

  else
  {
    sub_1B0BEAC20(v9);
  }

  v19 = v9[8];
  v20 = v9[9];
  v21 = v9[10];
  v22 = v10;
  v15 = v9[4];
  v16 = v9[5];
  v17 = v9[6];
  v18 = v9[7];
  v11 = v9[0];
  v12 = v9[1];
  v13 = v9[2];
  v14 = v9[3];
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v31 = v21;
  v32 = v22;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v3 = v20;
  *(a2 + 128) = v19;
  *(a2 + 144) = v3;
  *(a2 + 160) = v31;
  *(a2 + 176) = v32;
  v4 = v28;
  *(a2 + 64) = v27;
  *(a2 + 80) = v4;
  v5 = v30;
  *(a2 + 96) = v29;
  *(a2 + 112) = v5;
  v6 = v24;
  *a2 = v23;
  *(a2 + 16) = v6;
  result = *&v25;
  v8 = v26;
  *(a2 + 32) = v25;
  *(a2 + 48) = v8;
  return result;
}

double sub_1B0BEABDC(uint64_t a1)
{
  *a1 = 2;
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
  *(a1 + 168) = 0;
  *(a1 + 176) = 7;
  return result;
}

double sub_1B0BEAC20(uint64_t a1)
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
  *(a1 + 168) = 0;
  *(a1 + 176) = 7;
  return result;
}

uint64_t sub_1B0BEAC64()
{
  v1 = v0;
  v2 = sub_1B0E43BC8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B0E43B58();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  (*(v3 + 16))(v5, v1, v2, v11);
  if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E6977B08])
  {
    (*(v3 + 96))(v5, v2);
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18E0, &qword_1B0ED0CD0) + 48);
    v15 = *(v7 + 32);
    v15(v13, v5, v6);
    v16 = sub_1B0E43BB8();
    (*(*(v16 - 8) + 8))(&v5[v14], v16);
    v15(v9, v13, v6);
    if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E6977AF0])
    {
      (*(v7 + 96))(v9, v6);
      v17 = *v9;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5510, &qword_1B0ED0CD8);
      sub_1B0398EFC(v9 + *(v18 + 48), &qword_1EB6E5518, &qword_1B0ED0CE0);
      return v17;
    }

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }

  return 0;
}

uint64_t sub_1B0BEAF64(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v56 = a1;
  v47 = type metadata accessor for LoggableCommand(0);
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s6LoggerVMa_0(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for OutboundContent(0);
  MEMORY[0x1EEE9AC00](v55);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ClientCommand(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v54 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v53 = &v46 - v14;
  v15 = sub_1B0E43828();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v7 + 28);
  v50 = v3 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
  v20 = (v3 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger + v19);
  v21 = *(v20 + 1);
  v49 = *v20;
  sub_1B0E43838();
  v22 = swift_allocObject();
  v52 = v3;
  v23 = v56;
  swift_weakInit();

  sub_1B0BFF130(v23, a2, v18, sub_1B0BEFC44, v22);

  (*(v16 + 8))(v18, v15);

  sub_1B03FD208(a2, v10, type metadata accessor for OutboundContent);
  if (swift_getEnumCaseMultiPayload())
  {
    v24 = type metadata accessor for OutboundContent;
    v25 = v10;
  }

  else
  {
    v26 = v49;
    v55 = v21;
    v27 = v23;
    v28 = v53;
    sub_1B0423D50(v10, v53, type metadata accessor for ClientCommand);
    v29 = v51;
    sub_1B03FD208(v50, v51, _s6LoggerVMa_0);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B03FD208(v28, v54, type metadata accessor for ClientCommand);
    v30 = sub_1B0E43988();
    v31 = sub_1B0E439A8();
    (*(*(v31 - 8) + 8))(v29, v31);
    v32 = sub_1B0E45908();
    if (os_log_type_enabled(v30, v32))
    {
      v33 = v27;
      v34 = HIDWORD(v27);
      v35 = v26;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v57 = v37;
      *v36 = 68158466;
      *(v36 + 4) = 2;
      *(v36 + 8) = 256;
      *(v36 + 10) = v35;

      *(v36 + 11) = 2082;
      v38 = ConnectionID.debugDescription.getter(v55);
      v40 = sub_1B0399D64(v38, v39, &v57);

      *(v36 + 13) = v40;
      *(v36 + 21) = 2082;
      v41 = v48;
      v42 = v54;
      sub_1B03FD208(v54, &v48[*(v47 + 20)], type metadata accessor for ClientCommand);
      *v41 = v33;
      *(v41 + 4) = v34;
      v43 = LoggableCommand.makeDescriptionWithoutPII()();
      sub_1B03D6AC4(v41, type metadata accessor for LoggableCommand);
      sub_1B03D6AC4(v42, type metadata accessor for ClientCommand);
      v44 = sub_1B0399D64(v43._countAndFlagsBits, v43._object, &v57);

      *(v36 + 23) = v44;
      _os_log_impl(&dword_1B0389000, v30, v32, "[%.*hhx-%{public}s] Sent 'C: %{public}s'", v36, 0x1Fu);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v37, -1, -1);
      MEMORY[0x1B272C230](v36, -1, -1);
    }

    else
    {

      sub_1B03D6AC4(v54, type metadata accessor for ClientCommand);
    }

    v25 = v28;
    v24 = type metadata accessor for ClientCommand;
  }

  return sub_1B03D6AC4(v25, v24);
}

uint64_t sub_1B0BEB53C()
{
  v0 = sub_1B0E439A8();
  __swift_allocate_value_buffer(v0, qword_1EB6DCEB8);
  __swift_project_value_buffer(v0, qword_1EB6DCEB8);
  return sub_1B0E43998();
}

uint64_t ConnectionConfiguration.endpoint.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B0E43BC8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

{
  v3 = sub_1B0E43BC8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ConnectionConfiguration.endpoint.setter(uint64_t a1)
{
  v3 = sub_1B0E43BC8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

{
  v3 = sub_1B0E43BC8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

void (*ConnectionConfiguration.endpoint.modify())()
{
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
}

{
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
}

uint64_t ConnectionConfiguration.prohibitConstrainedPaths.getter()
{
  return *(v0 + *(type metadata accessor for ConnectionConfiguration(0) + 20));
}

{
  return *(v0 + *(type metadata accessor for ConnectionConfiguration(0) + 20));
}

uint64_t ConnectionConfiguration.prohibitConstrainedPaths.setter(char a1)
{
  result = type metadata accessor for ConnectionConfiguration(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

{
  result = type metadata accessor for ConnectionConfiguration(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

void (*ConnectionConfiguration.prohibitConstrainedPaths.modify())()
{
  type metadata accessor for ConnectionConfiguration(0);
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
}

{
  type metadata accessor for ConnectionConfiguration(0);
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
}

double ConnectionConfiguration.prohibitedInterfaceTypes.getter()
{
  type metadata accessor for ConnectionConfiguration(0);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

{
  type metadata accessor for ConnectionConfiguration(0);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

uint64_t ConnectionConfiguration.prohibitedInterfaceTypes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ConnectionConfiguration(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

{
  v3 = *(type metadata accessor for ConnectionConfiguration(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

void (*ConnectionConfiguration.prohibitedInterfaceTypes.modify())()
{
  type metadata accessor for ConnectionConfiguration(0);
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
}

{
  type metadata accessor for ConnectionConfiguration(0);
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
}

uint64_t ConnectionConfiguration.transportLayerSecurity.getter()
{
  return *(v0 + *(type metadata accessor for ConnectionConfiguration(0) + 28));
}

{
  return *(v0 + *(type metadata accessor for ConnectionConfiguration(0) + 28));
}

uint64_t ConnectionConfiguration.transportLayerSecurity.setter(char a1)
{
  result = type metadata accessor for ConnectionConfiguration(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

{
  result = type metadata accessor for ConnectionConfiguration(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

void (*ConnectionConfiguration.transportLayerSecurity.modify())()
{
  type metadata accessor for ConnectionConfiguration(0);
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
}

{
  type metadata accessor for ConnectionConfiguration(0);
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
}

uint64_t ConnectionConfiguration.sourceApplicationBundleIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ConnectionConfiguration(0) + 32));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

{
  v1 = *(v0 + *(type metadata accessor for ConnectionConfiguration(0) + 32));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t ConnectionConfiguration.sourceApplicationBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ConnectionConfiguration(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

{
  v5 = (v2 + *(type metadata accessor for ConnectionConfiguration(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*ConnectionConfiguration.sourceApplicationBundleIdentifier.modify())()
{
  type metadata accessor for ConnectionConfiguration(0);
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
}

{
  type metadata accessor for ConnectionConfiguration(0);
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
}

uint64_t ConnectionConfiguration.networkAccountIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ConnectionConfiguration(0) + 36));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

{
  v1 = *(v0 + *(type metadata accessor for ConnectionConfiguration(0) + 40));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t ConnectionConfiguration.networkAccountIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ConnectionConfiguration(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

{
  v5 = (v2 + *(type metadata accessor for ConnectionConfiguration(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*ConnectionConfiguration.networkAccountIdentifier.modify())()
{
  type metadata accessor for ConnectionConfiguration(0);
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
}

{
  type metadata accessor for ConnectionConfiguration(0);
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
}

BOOL static ConnectionConfiguration.SourceApplicationKind.__derived_enum_equals(_:_:)(int a1, int a2)
{
  return ((a2 ^ a1) & 1) == 0;
}

{
  return ((a2 ^ a1) & 1) == 0;
}

uint64_t ConnectionConfiguration.SourceApplicationKind.hash(into:)(uint64_t a1, char a2)
{
  return MEMORY[0x1B2728D70](a2 & 1);
}

{
  return MEMORY[0x1B2728D70](a2 & 1);
}

uint64_t ConnectionConfiguration.SourceApplicationKind.hashValue.getter(char a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1 & 1);
  return sub_1B0E46CB8();
}

{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1 & 1);
  return sub_1B0E46CB8();
}

BOOL static ConnectionConfiguration.TransportLayerSecurity.__derived_enum_equals(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 >> 6)
  {
    if (a1 >> 6 == 1)
    {
      if ((a2 & 0xC0) == 0x40)
      {
        return ((a2 ^ a1) & 0x3F) == 0;
      }
    }

    else if (a2 == 128)
    {
      return 1;
    }
  }

  else if (a2 <= 0x3Fu)
  {
    return a1 == a2;
  }

  return 0;
}

{
  if (a1 >> 6)
  {
    if (a1 >> 6 == 1)
    {
      if ((a2 & 0xC0) == 0x40)
      {
        return ((a2 ^ a1) & 0x3F) == 0;
      }
    }

    else if (a2 == 128)
    {
      return 1;
    }
  }

  else if (a2 <= 0x3Fu)
  {
    return a1 == a2;
  }

  return 0;
}

BOOL sub_1B0BEBB40(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) == 0x40)
      {
        return ((v3 ^ v2) & 0x3F) == 0;
      }
    }

    else if (v3 == 128)
    {
      return 1;
    }
  }

  else if (v3 < 0x40)
  {
    return v2 == v3;
  }

  return 0;
}

unint64_t sub_1B0BEBBA4()
{
  result = qword_1EB6E54F0;
  if (!qword_1EB6E54F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E54F0);
  }

  return result;
}

void sub_1B0BEBC20(uint64_t a1)
{
  sub_1B0E43BC8();
  if (v1 <= 0x3F)
  {
    sub_1B0BEBCCC(319);
    if (v2 <= 0x3F)
    {
      sub_1B07CEB70(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B0BEBCCC(uint64_t a1)
{
  if (!qword_1EB6DB0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E54F8, &qword_1B0ED0BA8);
    v1 = sub_1B0E45D88();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6DB0C0);
    }
  }
}

ValueMetadata *type metadata accessor for ConnectionConfiguration.SourceApplicationKind()
{
  return &type metadata for ConnectionConfiguration.SourceApplicationKind;
}

{
  return &type metadata for ConnectionConfiguration.SourceApplicationKind;
}

uint64_t getEnumTagSinglePayload for ConnectionConfiguration.TransportLayerSecurity(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3E)
  {
    goto LABEL_17;
  }

  if (a2 + 194 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 194) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 194;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 194;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 194;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x3C | (*a1 >> 6)) ^ 0x3F;
  if (v6 >= 0x3D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for ConnectionConfiguration.TransportLayerSecurity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 194 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 194) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3E)
  {
    v4 = 0;
  }

  if (a2 > 0x3D)
  {
    v5 = ((a2 - 62) >> 8) + 1;
    *result = a2 - 62;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B0BEBE98(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 3u) + 2;
  }
}

_BYTE *sub_1B0BEBEC4(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 & 3 ^ 0x82;
  }

  return result;
}

ValueMetadata *type metadata accessor for ConnectionConfiguration.TransportLayerSecurity()
{
  return &type metadata for ConnectionConfiguration.TransportLayerSecurity;
}

{
  return &type metadata for ConnectionConfiguration.TransportLayerSecurity;
}

BOOL sub_1B0BEBF20(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  v12 = a2[5];
  if (!(v3 >> 62))
  {
    if (v7 >> 62)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (v3 >> 62 == 1)
  {
    if (v7 >> 62 != 1)
    {
      return 0;
    }

LABEL_6:
    if (sub_1B0C1BE5C(v3, a1[1], a1[2], v7, v8, v9))
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (v7 >> 62 != 2 || v7 != 0x8000000000000000 || (v9 | v8) != 0)
  {
    return 0;
  }

LABEL_7:

  return sub_1B0BEE93C(v4, v5, v6, v10, v11, v12);
}

uint64_t sub_1B0BEC000()
{
  v1 = v0;
  v2 = sub_1B0E43828();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B0E43868();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = tracingSignposter.unsafeMutableAddressor();
  (*(v10 + 16))(v12, v13, v9);
  v22 = OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
  sub_1B03FD208(v1 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v8, _s6LoggerVMa_0);
  sub_1B0E43838();
  sub_1B03D6AC4(v8, _s6LoggerVMa_0);
  v14 = sub_1B0E43858();
  v15 = sub_1B0E45AE8();
  if (sub_1B0E45D38())
  {
    v16 = swift_slowAlloc();
    v21 = v2;
    v17 = v16;
    *v16 = 67109120;
    *(v16 + 1) = 2;
    v18 = sub_1B0E43818();
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v14, v15, v18, "Connection.networkStateUpdate", "%u", v17, 8u);
    v19 = v17;
    v2 = v21;
    MEMORY[0x1B272C230](v19, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  (*(v10 + 8))(v12, v9);

  sub_1B0E43C88();

  sub_1B03D6AC4(v1 + v22, _s6LoggerVMa_0);
  sub_1B03D6AC4(v1 + OBJC_IVAR____TtC15IMAP2Connection10Connection_configuration, type metadata accessor for ConnectionConfiguration);
  sub_1B0BE2890(v1 + OBJC_IVAR____TtC15IMAP2Connection10Connection_delegate);

  return v1;
}

uint64_t sub_1B0BEC378()
{
  sub_1B0BEC000();

  return swift_deallocClassInstance();
}

uint64_t sub_1B0BEC3D8(uint64_t a1)
{
  result = _s6LoggerVMa_0(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ConnectionConfiguration(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1B0BEC4F4(uint64_t a1)
{
  result = type metadata accessor for ClientCommand(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0BEC55C(uint64_t a1)
{
  v82 = type metadata accessor for ConnectionEvent(0);
  v84 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v83 = v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B0E43C58();
  v5 = *(v4 - 8);
  v89 = v4;
  v90 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B0E441A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v71 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v86 = v71 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v88 = v71 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v71 - v20;
  if (qword_1EB6DCEB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1B0E439A8();
  __swift_project_value_buffer(v22, qword_1EB6DCEB8);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v85 = v1;
  v23 = v9;
  v24 = *(v9 + 16);
  v24(v21, a1, v8);
  v24(v88, a1, v8);
  v24(v86, a1, v8);
  v24(v14, a1, v8);
  v81 = a1;
  v24(v11, a1, v8);
  v25 = sub_1B0E43988();
  v26 = sub_1B0E45908();
  if (os_log_type_enabled(v25, v26))
  {
    v75 = v26;
    v77 = v25;
    v78 = v14;
    v79 = v11;
    v27 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v94[0] = v74;
    *v27 = 68159490;
    *(v27 + 4) = 2;
    *(v27 + 8) = 256;
    v28 = v85 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
    v29 = v28 + *(_s6LoggerVMa_0(0) + 20);
    *(v27 + 10) = *v29;

    *(v27 + 11) = 2082;
    v30 = ConnectionID.debugDescription.getter(*(v29 + 4));
    v32 = sub_1B0399D64(v30, v31, v94);

    *(v27 + 13) = v32;
    *(v27 + 21) = 1024;
    LODWORD(v29) = sub_1B0E44148() & 1;
    v33 = *(v23 + 8);
    v33(v21, v8);
    *(v27 + 23) = v29;
    *(v27 + 27) = 2082;
    v34 = v88;
    v35 = sub_1B04258C0();
    v37 = v36;
    v80 = v23 + 8;
    v73 = v33;
    v33(v34, v8);
    v38 = sub_1B0399D64(v35, v37, v94);

    *(v27 + 29) = v38;
    v76 = v27;
    *(v27 + 37) = 2082;
    v39 = v86;
    v40 = sub_1B0E44178();
    v41 = *(v40 + 16);
    v42 = v84;
    if (v41)
    {
      v72 = v8;
      v93 = MEMORY[0x1E69E7CC0];
      sub_1B041D32C(0, v41, 0);
      v43 = v93;
      v88 = *(v90 + 16);
      v44 = (*(v90 + 80) + 32) & ~*(v90 + 80);
      v71[1] = v40;
      v45 = v40 + v44;
      v87 = *(v90 + 72);
      v90 += 16;
      v46 = (v90 - 8);
      do
      {
        v47 = v89;
        (v88)(v7, v45, v89);
        v91 = sub_1B0E43BE8();
        v92 = v48;
        MEMORY[0x1B2726E80](10285, 0xE200000000000000);
        v49 = sub_1B0425CC8();
        MEMORY[0x1B2726E80](v49);

        MEMORY[0x1B2726E80](41, 0xE100000000000000);
        v50 = v91;
        v51 = v92;
        (*v46)(v7, v47);
        v93 = v43;
        v53 = *(v43 + 16);
        v52 = *(v43 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_1B041D32C((v52 > 1), v53 + 1, 1);
          v43 = v93;
        }

        *(v43 + 16) = v53 + 1;
        v54 = v43 + 16 * v53;
        *(v54 + 32) = v50;
        *(v54 + 40) = v51;
        v45 += v87;
        --v41;
      }

      while (v41);

      v56 = v83;
      v42 = v84;
      v39 = v86;
      v8 = v72;
    }

    else
    {

      v43 = MEMORY[0x1E69E7CC0];
      v56 = v83;
    }

    v91 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0, MEMORY[0x1E69E6310]);
    v57 = sub_1B0E448E8();
    v59 = v58;

    v60 = v73;
    v73(v39, v8);
    v61 = sub_1B0399D64(v57, v59, v94);

    v62 = v76;
    *(v76 + 39) = v61;
    *(v62 + 47) = 1024;
    v63 = v78;
    LODWORD(v57) = sub_1B0E44128() & 1;
    v60(v63, v8);
    *(v62 + 49) = v57;
    *(v62 + 53) = 1024;
    v64 = v79;
    LODWORD(v61) = sub_1B0E44138() & 1;
    v60(v64, v8);
    *(v62 + 55) = v61;
    v65 = v77;
    _os_log_impl(&dword_1B0389000, v77, v75, "[%.*hhx-%{public}s] Path did change. Constrained: %{BOOL}d, status: %{public}s, interfaces: %{public}s, IPv4: %{BOOL}d, IPv6: %{BOOL}d", v62, 0x3Bu);
    v66 = v74;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v66, -1, -1);
    MEMORY[0x1B272C230](v62, -1, -1);
  }

  else
  {
    v55 = *(v23 + 8);
    v55(v11, v8);
    v55(v14, v8);
    v55(v21, v8);

    v55(v86, v8);
    v55(v88, v8);
    v56 = v83;
    v42 = v84;
  }

  v67 = MEMORY[0x1E69E7CD0];
  v91 = MEMORY[0x1E69E7CD0];
  if (sub_1B0E44148())
  {
    sub_1B0C1FF58();
    v67 = v91;
  }

  *v56 = v67;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5508, &unk_1B0ED0CC0);
  v68 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1B0EC1E70;
  sub_1B03FD208(v56, v69 + v68, type metadata accessor for ConnectionEvent);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1B0426318(v69);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return sub_1B03D6AC4(v56, type metadata accessor for ConnectionEvent);
}

void sub_1B0BECE50(char a1)
{
  v2 = v1;
  if (qword_1EB6DCEB0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B0E439A8();
  __swift_project_value_buffer(v4, qword_1EB6DCEB8);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  oslog = sub_1B0E43988();
  v5 = sub_1B0E45908();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 68158466;
    *(v6 + 4) = 2;
    *(v6 + 8) = 256;
    v8 = v2 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
    v9 = v8 + *(_s6LoggerVMa_0(0) + 20);
    *(v6 + 10) = *v9;

    *(v6 + 11) = 2082;
    v10 = ConnectionID.debugDescription.getter(*(v9 + 4));
    v12 = sub_1B0399D64(v10, v11, &v14);

    *(v6 + 13) = v12;
    *(v6 + 21) = 1024;
    *(v6 + 23) = (a1 & 1) == 0;
    _os_log_impl(&dword_1B0389000, oslog, v5, "[%.*hhx-%{public}s] Is viable: %{BOOL}d", v6, 0x1Bu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x1B272C230](v7, -1, -1);
    MEMORY[0x1B272C230](v6, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1B0BED048(char a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B0BED0A8(a1 & 1);
  }

  return result;
}

uint64_t sub_1B0BED0A8(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for ConnectionEvent(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB6DCEB0 != -1)
  {
    swift_once();
  }

  v8 = sub_1B0E439A8();
  __swift_project_value_buffer(v8, qword_1EB6DCEB8);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v9 = sub_1B0E43988();
  v10 = sub_1B0E45908();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 68158466;
    *(v11 + 4) = 2;
    *(v11 + 8) = 256;
    v24 = v4;
    v25 = v12;
    v13 = v5;
    v14 = a1;
    v15 = v2 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
    v16 = v15 + *(_s6LoggerVMa_0(0) + 20);
    *(v11 + 10) = *v16;

    *(v11 + 11) = 2082;
    v17 = ConnectionID.debugDescription.getter(*(v16 + 4));
    v19 = sub_1B0399D64(v17, v18, &v25);

    *(v11 + 13) = v19;
    *(v11 + 21) = 1024;
    v20 = v14 & 1;
    v5 = v13;
    *(v11 + 23) = v20;
    _os_log_impl(&dword_1B0389000, v9, v10, "[%.*hhx-%{public}s] Better path available: %{BOOL}d", v11, 0x1Bu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x1B272C230](v12, -1, -1);
    MEMORY[0x1B272C230](v11, -1, -1);
  }

  else
  {

    LOBYTE(v20) = a1 & 1;
  }

  *v7 = v20;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5508, &unk_1B0ED0CC0);
  v21 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1B0EC1E70;
  sub_1B03FD208(v7, v22 + v21, type metadata accessor for ConnectionEvent);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1B0426318(v22);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return sub_1B03D6AC4(v7, type metadata accessor for ConnectionEvent);
}

uint64_t sub_1B0BED3D0(void (*a1)(char *, char *, uint64_t))
{
  v77 = a1;
  v2 = type metadata accessor for ConnectionEvent(0);
  v3 = *(v2 - 8);
  v74 = v2;
  v75 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v76 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v72);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v71 = &v69 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v69 - v10;
  v12 = sub_1B0E441D8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v69 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v78 = &v69 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v79 = &v69 - v21;
  v22 = sub_1B0E44468();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = (&v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(v1 + OBJC_IVAR____TtC15IMAP2Connection10Connection_queue);
  *v26 = v27;
  (*(v23 + 104))(v26, *MEMORY[0x1E69E8020], v22, v24);
  v28 = v27;
  LOBYTE(v27) = sub_1B0E44488();
  result = (*(v23 + 8))(v26, v22);
  if (v27)
  {
    *(v1 + OBJC_IVAR____TtC15IMAP2Connection10Connection_lastMessageTime) = static MonotonicTime.now()();
    sub_1B03B5C80(v77, v11, &unk_1EB6E5A90, &unk_1B0EDC020);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      return sub_1B0398EFC(v11, &unk_1EB6E5A90, &unk_1B0EDC020);
    }

    else
    {
      v30 = v1;
      v31 = v13;
      v32 = v79;
      (*(v13 + 32))(v79, v11, v12);
      v33 = *(v13 + 16);
      v34 = v78;
      v33(v78, v32, v12);
      if ((*(v13 + 88))(v34, v12) == *MEMORY[0x1E6977D68] && (v33(v17, v78, v12), (*(v13 + 96))(v17, v12), *v17 == 89))
      {
        v77 = v33;
        v35 = v30 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
        v36 = v71;
        sub_1B03FD208(v30 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v71, _s6LoggerVMa_0);

        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v37 = sub_1B0E43988();
        v38 = sub_1B0E439A8();
        (*(*(v38 - 8) + 8))(v36, v38);
        v39 = sub_1B0E45908();
        if (os_log_type_enabled(v37, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v80 = v41;
          *v40 = 68158210;
          *(v40 + 4) = 2;
          *(v40 + 8) = 256;
          v42 = v35 + *(v72 + 20);
          *(v40 + 10) = *v42;

          *(v40 + 11) = 2082;
          v43 = ConnectionID.debugDescription.getter(*(v42 + 4));
          v45 = sub_1B0399D64(v43, v44, &v80);

          *(v40 + 13) = v45;
          _os_log_impl(&dword_1B0389000, v37, v39, "[%.*hhx-%{public}s] Failed to send data (connection is cancelled)", v40, 0x15u);
          __swift_destroy_boxed_opaque_existential_0Tm(v41);
          MEMORY[0x1B272C230](v41, -1, -1);
          MEMORY[0x1B272C230](v40, -1, -1);
        }

        else
        {
        }

        v65 = v76;
        v50 = v77;
      }

      else
      {
        v71 = v13;
        v46 = v30 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
        sub_1B03FD208(v30 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v6, _s6LoggerVMa_0);

        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v47 = v73;
        v33(v73, v79, v12);
        v48 = sub_1B0E43988();
        v49 = sub_1B0E439A8();
        (*(*(v49 - 8) + 8))(v6, v49);
        v50 = v33;
        v51 = sub_1B0E458E8();
        if (os_log_type_enabled(v48, v51))
        {
          v52 = swift_slowAlloc();
          v77 = v50;
          v53 = v52;
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v80 = v70;
          *v53 = 68158466;
          *(v53 + 4) = 2;
          *(v53 + 8) = 256;
          v54 = v46 + *(v72 + 20);
          *(v53 + 10) = *v54;

          *(v53 + 11) = 2082;
          v55 = ConnectionID.debugDescription.getter(*(v54 + 4));
          v57 = sub_1B0399D64(v55, v56, &v80);

          *(v53 + 13) = v57;
          *(v53 + 21) = 2112;
          sub_1B0422494(&qword_1EB6DB9A0, MEMORY[0x1E6977D78], MEMORY[0x1E6977D88]);
          v58 = swift_allocError();
          v77(v59, v47, v12);
          v60 = sub_1B0E42CC8();
          v61 = v71;
          (*(v71 + 8))(v47, v12);

          *(v53 + 23) = v60;
          v62 = v69;
          *v69 = v60;
          _os_log_impl(&dword_1B0389000, v48, v51, "[%.*hhx-%{public}s] Failed to send data: %@", v53, 0x1Fu);
          sub_1B0398EFC(v62, &unk_1EB6E2630, &qword_1B0E97970);
          MEMORY[0x1B272C230](v62, -1, -1);
          v63 = v70;
          __swift_destroy_boxed_opaque_existential_0Tm(v70);
          MEMORY[0x1B272C230](v63, -1, -1);
          v64 = v53;
          v50 = v77;
          MEMORY[0x1B272C230](v64, -1, -1);

          v31 = v61;
        }

        else
        {

          v31 = v71;
          (*(v71 + 8))(v47, v12);
        }

        v65 = v76;
      }

      v66 = *(v31 + 8);
      v66(v78, v12);
      v50(v65, v79, v12);
      type metadata accessor for ConnectionEvent.FailureReason(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5508, &unk_1B0ED0CC0);
      v67 = (*(v75 + 80) + 32) & ~*(v75 + 80);
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_1B0EC1E70;
      sub_1B03FD208(v65, v68 + v67, type metadata accessor for ConnectionEvent);
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1B0426318(v68);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      sub_1B03D6AC4(v65, type metadata accessor for ConnectionEvent);
      sub_1B0E43E28();
      return (v66)(v79, v12);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B0BEDDD0(uint64_t a1, char a2, uint64_t a3)
{
  v5 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  if (a2)
  {
    sub_1B03FD208(a3, &v36 - v15, _s6LoggerVMa_0);
    sub_1B03FD208(a3, v13, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v17 = sub_1B0E43988();
    v18 = sub_1B0E45908();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = v20;
      *v19 = 68158210;
      *(v19 + 4) = 2;
      *(v19 + 8) = 256;
      v21 = v13[*(v5 + 20)];
      sub_1B03D6AC4(v13, _s6LoggerVMa_0);
      *(v19 + 10) = v21;
      *(v19 + 11) = 2082;
      v22 = *&v16[*(v5 + 20) + 4];
      sub_1B03D6AC4(v16, _s6LoggerVMa_0);
      v23 = ConnectionID.debugDescription.getter(v22);
      v25 = sub_1B0399D64(v23, v24, &v37);

      *(v19 + 13) = v25;
      _os_log_impl(&dword_1B0389000, v17, v18, "[%.*hhx-%{public}s] Did request opportunistic STARTTLS", v19, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x1B272C230](v20, -1, -1);
      v26 = v19;
LABEL_6:
      MEMORY[0x1B272C230](v26, -1, -1);

      return;
    }

    sub_1B03D6AC4(v13, _s6LoggerVMa_0);

    v35 = v16;
  }

  else
  {
    sub_1B03FD208(a3, v10, _s6LoggerVMa_0);
    sub_1B03FD208(a3, v7, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v17 = sub_1B0E43988();
    v27 = sub_1B0E45908();
    if (os_log_type_enabled(v17, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 68158210;
      *(v28 + 4) = 2;
      *(v28 + 8) = 256;
      v30 = v7[*(v5 + 20)];
      sub_1B03D6AC4(v7, _s6LoggerVMa_0);
      *(v28 + 10) = v30;
      *(v28 + 11) = 2082;
      v31 = *&v10[*(v5 + 20) + 4];
      sub_1B03D6AC4(v10, _s6LoggerVMa_0);
      v32 = ConnectionID.debugDescription.getter(v31);
      v34 = sub_1B0399D64(v32, v33, &v37);

      *(v28 + 13) = v34;
      _os_log_impl(&dword_1B0389000, v17, v27, "[%.*hhx-%{public}s] Did request STARTTLS", v28, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      MEMORY[0x1B272C230](v29, -1, -1);
      v26 = v28;
      goto LABEL_6;
    }

    sub_1B03D6AC4(v7, _s6LoggerVMa_0);

    v35 = v10;
  }

  sub_1B03D6AC4(v35, _s6LoggerVMa_0);
}

void sub_1B0BEE1E0(char a1, uint64_t a2)
{
  v3 = type metadata accessor for ConnectionEvent(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5508, &unk_1B0ED0CC0);
      v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1B0EC1E70;
      sub_1B03FD208(v6, v8 + v7, type metadata accessor for ConnectionEvent);
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1B0426318(v8);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      sub_1B03D6AC4(v6, type metadata accessor for ConnectionEvent);
    }
  }
}

uint64_t sub_1B0BEE394(uint64_t a1)
{
  v2 = type metadata accessor for ConnectionEvent(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B0E441D8();
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  type metadata accessor for ConnectionEvent.FailureReason(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5508, &unk_1B0ED0CC0);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B0EC1E70;
  sub_1B03FD208(v5, v8 + v7, type metadata accessor for ConnectionEvent);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1B0426318(v8);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_1B03D6AC4(v5, type metadata accessor for ConnectionEvent);
  return sub_1B0E43E28();
}

int64_t sub_1B0BEE588()
{
  v1 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = static MonotonicTime.now()();
  v5 = (v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_throttleInfo);
  if (*(v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_throttleInfo + 16))
  {
    goto LABEL_2;
  }

  v6 = *v5;
  v7 = v5[1];
  v8 = __OFSUB__(result, *v5);
  v9 = result - *v5;
  if (result >= *v5)
  {
LABEL_8:
    if (!v8)
    {
      goto LABEL_9;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (__OFSUB__(v6, result))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = __OFSUB__(0, v6 - result);
  v9 = result - v6;
  if (v8)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  v10 = v9 / 1000000000.0;
  if (v10 <= 20.0)
  {
    if (!__OFADD__(v7, 1))
    {
      v5[1] = v7 + 1;
      return result;
    }

    goto LABEL_22;
  }

  if (v10 >= 120.0)
  {
LABEL_2:
    *v5 = result;
    v5[1] = 1;
    *(v5 + 16) = 0;
    return result;
  }

  v11 = result;
  v12 = v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
  sub_1B03FD208(v0 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v3, _s6LoggerVMa_0);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v13 = sub_1B0E43988();
  v14 = sub_1B0E439A8();
  (*(*(v14 - 8) + 8))(v3, v14);
  v15 = sub_1B0E458E8();
  if (!os_log_type_enabled(v13, v15))
  {

    goto LABEL_19;
  }

  v16 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  v24 = v17;
  *v16 = 68158722;
  *(v16 + 4) = 2;
  *(v16 + 8) = 256;
  v18 = v12 + *(v1 + 20);
  *(v16 + 10) = *v18;

  *(v16 + 11) = 2082;
  v19 = ConnectionID.debugDescription.getter(*(v18 + 4));
  v21 = sub_1B0399D64(v19, v20, &v24);

  *(v16 + 13) = v21;
  *(v16 + 21) = 2048;
  *(v16 + 23) = v7;
  *(v16 + 31) = 2048;
  v22 = round(v10);
  if (*&v22 >> 52 > 0x7FEuLL)
  {
    goto LABEL_23;
  }

  if (v22 > -9.22337204e18)
  {
    if (v22 < 9.22337204e18)
    {
      *(v16 + 33) = v22;
      _os_log_impl(&dword_1B0389000, v13, v15, "[%.*hhx-%{public}s] Connection was throttled by server (%ld commands in %ld seconds).", v16, 0x29u);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x1B272C230](v17, -1, -1);
      MEMORY[0x1B272C230](v16, -1, -1);

LABEL_19:
      result = v11;
      goto LABEL_2;
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1B0BEE8A0()
{
  sub_1B03948EC();
  v0 = sub_1B0E44E98();
  MEMORY[0x1B2726E80](v0);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1B2726E80](62, 0xE100000000000000);

  return 7876668;
}

BOOL sub_1B0BEE93C(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a3 == 1)
  {
    return a6 == 1;
  }

  if (a6 == 1 || a4 != a1)
  {
    return 0;
  }

  if (a3)
  {
    if (!a6)
    {
      return 0;
    }

    return a2 == a5 && a3 == a6 || (sub_1B0E46A78() & 1) != 0;
  }

  else
  {
    return !a6;
  }
}

uint64_t sub_1B0BEE9D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0E441D8();
  v34 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ConnectionEvent.FailureReason(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v33 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5538, &qword_1B0ED0E00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v33 - v14;
  v17 = (&v33 + *(v16 + 56) - v14);
  sub_1B03FD208(a1, &v33 - v14, type metadata accessor for ConnectionEvent.FailureReason);
  sub_1B03FD208(a2, v17, type metadata accessor for ConnectionEvent.FailureReason);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_13;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1B03FD208(v15, v12, type metadata accessor for ConnectionEvent.FailureReason);
    v20 = *v12;
    v19 = v12[1];
    v21 = v12[2];
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B0BD1488(v20, v19, v21);
LABEL_13:
      sub_1B0398EFC(v15, &qword_1EB6E5538, &qword_1B0ED0E00);
LABEL_14:
      v23 = 0;
      return v23 & 1;
    }

    v26 = *v17;
    v27 = v17[1];
    v28 = v17[2];
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        if (v28 != 2)
        {
          goto LABEL_30;
        }

        goto LABEL_11;
      }

      if (v21 == 3)
      {
        if (v28 != 3)
        {
          goto LABEL_30;
        }

        goto LABEL_11;
      }
    }

    else
    {
      if (!v21)
      {
        if (v28)
        {
          goto LABEL_30;
        }

        goto LABEL_11;
      }

      if (v21 == 1)
      {
        if (v28 != 1)
        {
          goto LABEL_30;
        }

        goto LABEL_11;
      }
    }

    if (v28 < 4)
    {
      sub_1B0BD1488(v26, v27, v28);
      v26 = v20;
      v27 = v19;
      v28 = v21;
LABEL_30:
      sub_1B0BD1488(v26, v27, v28);
LABEL_31:
      sub_1B03D6AC4(v15, type metadata accessor for ConnectionEvent.FailureReason);
      goto LABEL_14;
    }

    v29 = *v17;
    v30 = v17[1];
    v31 = v28;
    v32 = static ResponseText.__derived_struct_equals(_:_:)(v20, v19, v21, v29, v30, v28);
    sub_1B0BD1488(v29, v30, v31);
    sub_1B0BD1488(v20, v19, v21);
    if ((v32 & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_11:
    sub_1B03D6AC4(v15, type metadata accessor for ConnectionEvent.FailureReason);
    v23 = 1;
    return v23 & 1;
  }

  sub_1B03FD208(v15, v9, type metadata accessor for ConnectionEvent.FailureReason);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v34 + 8))(v9, v4);
    goto LABEL_13;
  }

  v22 = v34;
  (*(v34 + 32))(v6, v17, v4);
  v23 = MEMORY[0x1B27262E0](v9, v6);
  v24 = *(v22 + 8);
  v24(v6, v4);
  v24(v9, v4);
  sub_1B03D6AC4(v15, type metadata accessor for ConnectionEvent.FailureReason);
  return v23 & 1;
}

uint64_t sub_1B0BEEE20(char *a1, uint64_t a2)
{
  v92 = a1;
  v3 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v91 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ConnectionEvent.FailureReason(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v90 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B0E43DF8();
  v88 = *(v7 - 8);
  v89 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v87 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ConnectionEvent(0);
  MEMORY[0x1EEE9AC00](v9);
  v86 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v85 = (&v85 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v85 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v85 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v85 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v85 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v85 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5540, &qword_1B0ED0E08);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v85 - v29;
  v32 = (&v85 + *(v31 + 56) - v29);
  sub_1B03FD208(v92, &v85 - v29, type metadata accessor for ConnectionEvent);
  v33 = a2;
  v34 = v32;
  sub_1B03FD208(v33, v32, type metadata accessor for ConnectionEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v36 = v27;
    v37 = v24;
    v39 = v87;
    v38 = v88;
    v40 = v89;
    v41 = v90;
    v42 = v91;
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v43 = v36;
        sub_1B03FD208(v30, v36, type metadata accessor for ConnectionEvent);
        if (swift_getEnumCaseMultiPayload())
        {
          (*(v38 + 8))(v43, v40);
          goto LABEL_38;
        }

        v80 = v38;
        (*(v38 + 32))(v39, v34, v40);
        v45 = MEMORY[0x1B2725F00](v43, v39);
        v81 = *(v80 + 8);
        v81(v39, v40);
        v81(v43, v40);
        goto LABEL_41;
      }

      v60 = v37;
      sub_1B03FD208(v30, v37, type metadata accessor for ConnectionEvent);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_1B03D6AC4(v60, type metadata accessor for ConnectionEvent.FailureReason);
        goto LABEL_38;
      }

      sub_1B0423D50(v32, v41, type metadata accessor for ConnectionEvent.FailureReason);
      v45 = sub_1B0BEE9D4(v60, v41);
      sub_1B03D6AC4(v41, type metadata accessor for ConnectionEvent.FailureReason);
      v46 = v60;
      v47 = type metadata accessor for ConnectionEvent.FailureReason;
LABEL_23:
      sub_1B03D6AC4(v46, v47);
LABEL_41:
      v82 = v30;
LABEL_42:
      sub_1B03D6AC4(v82, type metadata accessor for ConnectionEvent);
      return v45 & 1;
    }

    v44 = v32;
    if (EnumCaseMultiPayload == 2)
    {
      sub_1B03FD208(v30, v21, type metadata accessor for ConnectionEvent);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_1B03D6AC4(v21, type metadata accessor for UntaggedResponse);
        goto LABEL_38;
      }

      sub_1B0423D50(v32, v42, type metadata accessor for UntaggedResponse);
      v45 = static UntaggedResponse.__derived_enum_equals(_:_:)(v21, v42);
      sub_1B03D6AC4(v42, type metadata accessor for UntaggedResponse);
      v46 = v21;
      v47 = type metadata accessor for UntaggedResponse;
      goto LABEL_23;
    }

    sub_1B03FD208(v30, v18, type metadata accessor for ConnectionEvent);
    v61 = *v18;
    v62 = *(v18 + 1);
    v63 = *(v18 + 2);
    v64 = v18[24];
    v65 = v18[28];
    v66 = *(v18 + 8);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      sub_1B0BB6FE0(v61, v62, v63, v64);
      goto LABEL_38;
    }

    v92 = v30;
    v68 = *v32;
    v67 = v32[1];
    v69 = v32[2];
    v70 = *(v44 + 24);
    v71 = *(v44 + 28);
    v72 = *(v44 + 8);
    if (v64)
    {
      if (v64 == 1)
      {
        if (v70 == 1)
        {
          LODWORD(v91) = v71;
          v73 = static ResponseText.__derived_struct_equals(_:_:)(v61, v62, v63, v68, v67, v69);
          sub_1B0BB6FE0(v68, v67, v69, 1u);
          v74 = v61;
          v75 = v62;
          v76 = v63;
          v77 = 1;
          goto LABEL_50;
        }

LABEL_58:
        sub_1B0BB6FE0(v68, v67, v69, v70);
        sub_1B0BB6FE0(v61, v62, v63, v64);
        goto LABEL_59;
      }

      if (v70 != 2)
      {
        goto LABEL_58;
      }

      LODWORD(v91) = v71;
      v73 = static ResponseText.__derived_struct_equals(_:_:)(v61, v62, v63, v68, v67, v69);
      sub_1B0BB6FE0(v68, v67, v69, 2u);
      v74 = v61;
      v75 = v62;
      v76 = v63;
      v77 = 2;
    }

    else
    {
      if (v70)
      {
        goto LABEL_58;
      }

      LODWORD(v91) = v71;
      v73 = static ResponseText.__derived_struct_equals(_:_:)(v61, v62, v63, v68, v67, v69);
      sub_1B0BB6FE0(v68, v67, v69, 0);
      v74 = v61;
      v75 = v62;
      v76 = v63;
      v77 = 0;
    }

LABEL_50:
    sub_1B0BB6FE0(v74, v75, v76, v77);
    if (v73)
    {
      v45 = v65 == v91 && v66 == v72;
      v82 = v92;
      goto LABEL_42;
    }

LABEL_59:
    sub_1B03D6AC4(v92, type metadata accessor for ConnectionEvent);
    goto LABEL_39;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    v48 = v32;
    if (EnumCaseMultiPayload == 4)
    {
      sub_1B03FD208(v30, v15, type metadata accessor for ConnectionEvent);
      v50 = *v15;
      v49 = *(v15 + 1);
      v51 = v15[16];
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_1B0BCDEB0(v50, v49, v51);
        goto LABEL_38;
      }

      v53 = *v32;
      v52 = v32[1];
      if (v51)
      {
        if (v48[2])
        {
          v54 = sub_1B0AB8858(v50, v49, *v48, v48[1]);
          sub_1B0BCDEB0(v53, v52, 1);
          v55 = v50;
          v56 = v49;
          v57 = 1;
LABEL_64:
          sub_1B0BCDEB0(v55, v56, v57);
          if (v54)
          {
            goto LABEL_30;
          }

LABEL_65:
          sub_1B03D6AC4(v30, type metadata accessor for ConnectionEvent);
          goto LABEL_39;
        }
      }

      else if ((v48[2] & 1) == 0)
      {
        if (v50 == v53 && v49 == v52)
        {
          sub_1B0BCDEB0(v50, v49, 0);
          sub_1B0BCDEB0(v50, v49, 0);
          goto LABEL_30;
        }

        v54 = sub_1B0E46A78();
        sub_1B0BCDEB0(v53, v52, 0);
        v55 = v50;
        v56 = v49;
        v57 = 0;
        goto LABEL_64;
      }

      sub_1B0BCDEB0(*v48, v48[1], v51 ^ 1);
      sub_1B0BCDEB0(v50, v49, v51);
      goto LABEL_65;
    }

    v78 = v85;
    sub_1B03FD208(v30, v85, type metadata accessor for ConnectionEvent);
    v79 = *v78;
    if (swift_getEnumCaseMultiPayload() != 5)
    {

      goto LABEL_38;
    }

    v45 = sub_1B0429CE0(v79, *v32);

    goto LABEL_41;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (swift_getEnumCaseMultiPayload() == 8)
    {
LABEL_30:
      sub_1B03D6AC4(v30, type metadata accessor for ConnectionEvent);
      v45 = 1;
      return v45 & 1;
    }

LABEL_38:
    sub_1B0398EFC(v30, &qword_1EB6E5540, &qword_1B0ED0E08);
LABEL_39:
    v45 = 0;
    return v45 & 1;
  }

  v58 = v86;
  sub_1B03FD208(v30, v86, type metadata accessor for ConnectionEvent);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    goto LABEL_38;
  }

  v59 = *v58 ^ *v32;
  sub_1B03D6AC4(v30, type metadata accessor for ConnectionEvent);
  v45 = v59 ^ 1;
  return v45 & 1;
}

uint64_t sub_1B0BEF83C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientCommand(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OutboundContent(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5500, &unk_1B0ED0CB0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v29 - v14;
  v17 = &v29 + *(v16 + 56) - v14;
  sub_1B03FD208(a1, &v29 - v14, type metadata accessor for OutboundContent);
  sub_1B03FD208(a2, v17, type metadata accessor for OutboundContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1B03FD208(v15, v12, type metadata accessor for OutboundContent);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B0423D50(v17, v6, type metadata accessor for ClientCommand);
      v25 = static ClientCommand.__derived_enum_equals(_:_:)(v12, v6);
      sub_1B03D6AC4(v6, type metadata accessor for ClientCommand);
      sub_1B03D6AC4(v12, type metadata accessor for ClientCommand);
      sub_1B03D6AC4(v15, type metadata accessor for OutboundContent);
      return v25 & 1;
    }

    sub_1B03D6AC4(v12, type metadata accessor for ClientCommand);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_11;
    }

LABEL_13:
    sub_1B0398EFC(v15, &qword_1EB6E5500, &unk_1B0ED0CB0);
LABEL_14:
    v25 = 0;
    return v25 & 1;
  }

  sub_1B03FD208(v15, v9, type metadata accessor for OutboundContent);
  v20 = *v9;
  v19 = *(v9 + 1);
  v21 = v9[16];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B0BCDEB0(v20, v19, v21);
    goto LABEL_13;
  }

  v23 = *v17;
  v22 = *(v17 + 1);
  if ((v21 & 1) == 0)
  {
    if ((v17[16] & 1) == 0)
    {
      if (v20 == v23 && v19 == v22)
      {
        sub_1B0BCDEB0(v20, v19, 0);
        sub_1B0BCDEB0(v20, v19, 0);
      }

      else
      {
        v28 = sub_1B0E46A78();
        sub_1B0BCDEB0(v23, v22, 0);
        sub_1B0BCDEB0(v20, v19, 0);
        if ((v28 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      goto LABEL_11;
    }

LABEL_18:
    sub_1B0BCDEB0(*v17, *(v17 + 1), v21 ^ 1);
    sub_1B0BCDEB0(v20, v19, v21);
LABEL_19:
    sub_1B03D6AC4(v15, type metadata accessor for OutboundContent);
    goto LABEL_14;
  }

  if ((v17[16] & 1) == 0)
  {
    goto LABEL_18;
  }

  v24 = sub_1B0AB8858(v20, v19, *v17, *(v17 + 1));
  sub_1B0BCDEB0(v23, v22, 1);
  sub_1B0BCDEB0(v20, v19, 1);
  if (!v24)
  {
    goto LABEL_19;
  }

LABEL_11:
  sub_1B03D6AC4(v15, type metadata accessor for OutboundContent);
  v25 = 1;
  return v25 & 1;
}

uint64_t sub_1B0BEFC7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    sub_1B0447F00(a1);
  }
}

unint64_t sub_1B0BEFCC8(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[2];
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v7 = *a1 >> 62;
  if (v7)
  {
    if (v7 != 1)
    {
      if (v5 >> 62 != 2)
      {
        return 0;
      }

      if (v5 != 0x8000000000000000 || (v6 | v4) != 0)
      {
        return 0;
      }

      goto LABEL_24;
    }

    v7 = 0;
    if (v5 >> 62 == 1 && *a1 == v5)
    {
      if (WORD1(v2) != WORD1(v5))
      {
        return 0;
      }

      if (v3)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }
  }

  else if (!(v5 >> 62) && *a1 == v5)
  {
    if (WORD1(v2) != WORD1(v5))
    {
      return 0;
    }

    if (v3)
    {
LABEL_7:
      if (!v6)
      {
        return 0;
      }

      if (a1[1] != v4 || v3 != v6)
      {
        v8 = a1;
        v9 = a2;
        v10 = sub_1B0E46A78();
        a2 = v9;
        v11 = v10;
        a1 = v8;
        if ((v11 & 1) == 0)
        {
          return 0;
        }
      }

LABEL_24:
      v13 = a1[5];
      v14 = a2[5];
      if (v13 == 1)
      {
        if (v14 == 1)
        {
          return 1;
        }
      }

      else if (v14 != 1 && *(a1 + 24) == *(a2 + 24))
      {
        if (v13)
        {
          if (v14 && (a1[4] == a2[4] && v13 == v14 || (sub_1B0E46A78() & 1) != 0))
          {
            return 1;
          }
        }

        else if (!v14)
        {
          return 1;
        }
      }

      return 0;
    }

LABEL_16:
    if (v6)
    {
      return 0;
    }

    goto LABEL_24;
  }

  return v7;
}

uint64_t sub_1B0BEFE34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0BEFE90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

void *sub_1B0BEFEF0(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = a2;
  }

  return result;
}

uint64_t sub_1B0BEFF30(uint64_t a1)
{
  result = sub_1B0E441D8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B0BEFF9C(uint64_t a1)
{
  sub_1B0E43DF8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ConnectionEvent.FailureReason(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UntaggedResponse(319);
      if (v3 <= 0x3F)
      {
        sub_1B0BF005C();
        if (v4 <= 0x3F)
        {
          sub_1B0BF00BC(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B0BF005C()
{
  if (!qword_1EB6DD0F0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6DD0F0);
    }
  }
}

void sub_1B0BF00BC(uint64_t a1)
{
  if (!qword_1EB6DAD78)
  {
    sub_1B0BF0118();
    v1 = sub_1B0E45588();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6DAD78);
    }
  }
}

unint64_t sub_1B0BF0118()
{
  result = qword_1EB6DCE88;
  if (!qword_1EB6DCE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCE88);
  }

  return result;
}

uint64_t sub_1B0BF01B4(uint64_t a1)
{
  result = type metadata accessor for ClientCommand.Encoded(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0BF0230(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 4);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 30;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B0BF0280(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      HIDWORD(v3) = -a2;
      LODWORD(v3) = -a2;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 >> 2) << 32;
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_15IMAP2Connection0B6ActionO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return *a1 + 2;
  }
}

uint64_t sub_1B0BF0310(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 4);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 30;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B0BF0360(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      HIDWORD(v3) = -a2;
      LODWORD(v3) = -a2;
      *result = (v3 >> 2) << 32;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0;
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t *sub_1B0BF03AC(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result | (a2 << 62);
  }

  else
  {
    result[1] = 0;
    result[2] = 0;
    result[3] = 0;
    *result = (a2 - 2) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_1B0BF0404(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 == 1)
    {
      if (a5 >> 62 == 1)
      {
        return static PushRegistrationResponse.__derived_struct_equals(_:_:)(a1, a2, a3, a4, a5, a6, a7, a8);
      }
    }

    else
    {
      v9 = a3 | a2 | a4;
      if (a1 != 0x8000000000000000 || v9)
      {
        if (a1 != 0x8000000000000001 || v9)
        {
          if (a1 != 0x8000000000000002 || v9)
          {
            if (a1 != 0x8000000000000003 || v9)
            {
              if (a5 >> 62 == 2 && a5 == 0x8000000000000004 && !(a7 | a6 | a8))
              {
                return 1;
              }
            }

            else if (a5 >> 62 == 2 && a5 == 0x8000000000000003 && !(a7 | a6 | a8))
            {
              return 1;
            }
          }

          else if (a5 >> 62 == 2 && a5 == 0x8000000000000002 && !(a7 | a6 | a8))
          {
            return 1;
          }
        }

        else if (a5 >> 62 == 2 && a5 == 0x8000000000000001 && !(a7 | a6 | a8))
        {
          return 1;
        }
      }

      else if (a5 >> 62 == 2 && a5 == 0x8000000000000000 && !(a7 | a6 | a8))
      {
        return 1;
      }
    }
  }

  else if (!(a5 >> 62))
  {
    return ((a5 ^ a1) & 0x101FFLL) == 0;
  }

  return 0;
}

uint64_t ConnectionState.isClosed.getter()
{
  v1 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B038CA0C(v0, v3, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    sub_1B038C704(v3, type metadata accessor for ConnectionState);
    return 0;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1B038C704(v3, type metadata accessor for ConnectionState);
  }

  else if (EnumCaseMultiPayload != 4)
  {
    return 0;
  }

  return 1;
}

uint64_t ConnectionState.isReadyForCommands.getter()
{
  v1 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B038CA0C(v0, v3, type metadata accessor for ConnectionState);
  v4 = 0;
  v5 = 1 << swift_getEnumCaseMultiPayload();
  if ((v5 & 0xB) != 0)
  {
    goto LABEL_4;
  }

  if ((v5 & 0x30) == 0)
  {
    v4 = 1;
LABEL_4:
    sub_1B038C704(v3, type metadata accessor for ConnectionState);
  }

  return v4;
}

BOOL ConnectionState.selectMailbox(name:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B038CA0C(v2, v7, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    memcpy(v37, v7, 0x162uLL);
    v9 = *(v7 + 21);
    v38[8] = *(v7 + 20);
    v38[9] = v9;
    v39 = *(v7 + 176);
    v10 = *(v7 + 17);
    v38[4] = *(v7 + 16);
    v38[5] = v10;
    v11 = *(v7 + 19);
    v38[6] = *(v7 + 18);
    v38[7] = v11;
    v12 = *(v7 + 13);
    v38[0] = *(v7 + 12);
    v38[1] = v12;
    v13 = *(v7 + 15);
    v38[2] = *(v7 + 14);
    v38[3] = v13;
    v14 = sub_1B0BE2780(v38);
    v15 = sub_1B03DB9A4(v38);
    if (v14 && (*(v15 + 8) | (*(v15 + 8) << 32)) == (v3 | (v3 << 32)) && (sub_1B04520BC(*v15, a1) & 1) != 0)
    {
      sub_1B0BE278C(v37);
    }

    else
    {
      sub_1B038C704(v2, type metadata accessor for ConnectionState);
      sub_1B0C0B08C(a1, v3, v35);
      v16 = v37[0];
      v17 = v37[23];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B039F420(&v37[1], &v24);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0BE278C(v37);
      v32 = v35[8];
      v33 = v35[9];
      v34 = v36;
      v28 = v35[4];
      v29 = v35[5];
      v30 = v35[6];
      v31 = v35[7];
      v24 = v35[0];
      v25 = v35[1];
      v26 = v35[2];
      v27 = v35[3];
      sub_1B0BF5A2C(&v24);
      *v2 = v16;
      *(v2 + 120) = *&v37[15];
      *(v2 + 136) = *&v37[17];
      *(v2 + 152) = *&v37[19];
      *(v2 + 168) = *&v37[21];
      *(v2 + 56) = *&v37[7];
      *(v2 + 72) = *&v37[9];
      *(v2 + 88) = *&v37[11];
      *(v2 + 104) = *&v37[13];
      *(v2 + 8) = *&v37[1];
      *(v2 + 24) = *&v37[3];
      *(v2 + 40) = *&v37[5];
      *(v2 + 184) = v17;
      v18 = v33;
      *(v2 + 320) = v32;
      *(v2 + 336) = v18;
      *(v2 + 352) = v34;
      v19 = v29;
      *(v2 + 256) = v28;
      *(v2 + 272) = v19;
      v20 = v31;
      *(v2 + 288) = v30;
      *(v2 + 304) = v20;
      v21 = v25;
      *(v2 + 192) = v24;
      *(v2 + 208) = v21;
      v22 = v27;
      *(v2 + 224) = v26;
      *(v2 + 240) = v22;
      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    sub_1B038C704(v7, type metadata accessor for ConnectionState);
  }

  return EnumCaseMultiPayload == 2;
}