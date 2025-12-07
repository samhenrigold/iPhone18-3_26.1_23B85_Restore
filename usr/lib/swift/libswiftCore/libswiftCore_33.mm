uint64_t specialized static BinaryFloatingPoint._convert<A>(from:)(float *a1, uint64_t a2, char *a3, swift *a4)
{
  v519 = a1;
  v533 = *(a3 - 1);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v532 = &v501 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v505 = &v501 - v12;
  swift_getAssociatedTypeWitness(255, v14, v13, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v16 = v15;
  v526 = *(swift_getAssociatedConformanceWitness(a4, a3, v15, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger) + 8);
  v507 = *(v526 + 24);
  v529 = *(v507 + 16);
  swift_getAssociatedTypeWitness(0, v529, v16, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v525 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v518 = &v501 - v19;
  v520 = swift_checkMetadataState(0, v16);
  v517 = *(v520 - 1);
  v21 = MEMORY[0x1EEE9AC00](v520, v20);
  v23 = &v501 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v27 = &v501 - v26;
  v29 = MEMORY[0x1EEE9AC00](v25, v28);
  v531 = &v501 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v510 = &v501 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v506 = &v501 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35, v37);
  v509 = (&v501 - v39);
  v41 = MEMORY[0x1EEE9AC00](v38, v40);
  v508 = &v501 - v42;
  v44 = MEMORY[0x1EEE9AC00](v41, v43);
  v515 = &v501 - v45;
  v47 = MEMORY[0x1EEE9AC00](v44, v46);
  v511 = &v501 - v48;
  v50 = MEMORY[0x1EEE9AC00](v47, v49);
  v521 = &v501 - v51;
  v53 = MEMORY[0x1EEE9AC00](v50, v52);
  v514 = &v501 - v54;
  v56 = MEMORY[0x1EEE9AC00](v53, v55);
  v502 = &v501 - v57;
  MEMORY[0x1EEE9AC00](v56, v58);
  v528 = (&v501 - v59);
  v530 = a4;
  v60 = *(a4 + 2);
  swift_getAssociatedTypeWitness(255, v60, a3, &protocol requirements base descriptor for FloatingPoint, associated type descriptor for FloatingPoint.Exponent);
  v62 = v61;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v60, a3, v61, &protocol requirements base descriptor for FloatingPoint, associated conformance descriptor for FloatingPoint.FloatingPoint.Exponent: SignedInteger);
  v63 = *(AssociatedConformanceWitness + 8);
  v516 = *(v63 + 24);
  v524 = *(v516 + 2);
  swift_getAssociatedTypeWitness(0, v524, v62, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v522 = v64;
  MEMORY[0x1EEE9AC00](v64, v65);
  v523 = &v501 - v66;
  v67 = v62;
  v68 = v60;
  v69 = swift_checkMetadataState(0, v67);
  v537 = *(v69 - 1);
  v71 = MEMORY[0x1EEE9AC00](v69, v70);
  v512 = &v501 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = MEMORY[0x1EEE9AC00](v71, v73);
  v504 = &v501 - v75;
  v77 = MEMORY[0x1EEE9AC00](v74, v76);
  v513 = &v501 - v78;
  v80 = MEMORY[0x1EEE9AC00](v77, v79);
  v82 = &v501 - v81;
  v84 = MEMORY[0x1EEE9AC00](v80, v83);
  v86 = &v501 - v85;
  v88 = MEMORY[0x1EEE9AC00](v84, v87);
  v535 = &v501 - v89;
  MEMORY[0x1EEE9AC00](v88, v90);
  v538 = &v501 - v91;
  if ((v68[48])(a3, v68))
  {
    if (((v68[21])(a3, v68) & 1) == 0)
    {
      *v519 = 0.0;
      return 1;
    }

    v479 = 0x80000000;
    goto LABEL_238;
  }

  if (((v68[47])(a3, v68) & 1) == 0)
  {
    if (((v68[50])(a3, v68) & 1) == 0)
    {
      v480 = v530;
      v481 = *(v530 + 15);
      v481(a3, v530);
      v482 = v481;
      v538 = v481;
      v483 = v505;
      (v68[12])(a3, v68);
      v482(a3, v480);
      v484 = v68;
      v485 = v533[1];
      (v485)(v483, a3);
      v527 = v484;
      v486 = v532;
      (v484[13])(a3, v484);
      (v538)(a3, v480);
      (v485)(v486, a3);
      v487 = v526;
      v488 = v508;
      v489 = v520;
      (*(v526 + 208))(v27, v23, v520, v526);
      v490 = *(v517 + 8);
      v490(v23, v489);
      v490(v27, v489);
      v491 = v515;
      (*(v487 + 184))(v488, v489, v487);
      v490(v488, v489);
      v492 = v531;
      v493 = v528;
      (*(v487 + 192))(v528, v491, v489, v487);
      v490(v491, v489);
      v490(v493, v489);
      v494 = (*(v487 + 120))(v489, v487);
      v490(v492, v489);
      v495 = v527;
      v496 = (*(v527 + 52))(a3, v527);
      v497 = (*(v495 + 21))(a3, v495);
      result = 0;
      if (v497)
      {
        v498 = 0x80000000;
      }

      else
      {
        v498 = 0;
      }

      v499 = v498 & 0xFFE00000 | v494 & 0x1FFFFF;
      if (v496)
      {
        v500 = 2141192192;
      }

      else
      {
        v500 = 2143289344;
      }

      v154 = v499 | v500;
      goto LABEL_74;
    }

    if (((v68[21])(a3, v68) & 1) == 0)
    {
LABEL_237:
      v479 = 2139095040;
      goto LABEL_238;
    }

    v479 = -8388608;
LABEL_238:
    *v519 = v479;
    return 1;
  }

  v505 = v82;
  v92 = v538;
  v93 = v68;
  (v68[22])(a3, v68);
  v539 = -126;
  v94 = *(v63 + 64);
  v95 = v94(v69, v63);
  v536 = a3;
  v534 = a2;
  v531 = (v63 + 64);
  v532 = v94;
  if ((v95 & 1) == 0)
  {
    v100 = v94(v69, v63);
    v533 = *(v63 + 128);
    v101 = (v533)(v69, v63);
    v99 = v93;
    if (v100)
    {
      if (v101 > 64)
      {
        v104 = *(v63 + 96);
        v105 = lazy protocol witness table accessor for type Int and conformance Int(v101, v102, v103);
        v106 = v535;
        v104(&v539, &type metadata for Int, v105, v69, v63);
        v92 = v538;
        v107 = (*(*(*(v63 + 32) + 8) + 16))(v538, v106, v69);
        (*(v537 + 8))(v106, v69);
        if (v107)
        {
          goto LABEL_17;
        }

        goto LABEL_21;
      }

      v112 = v524;
      v113 = v522;
      v114 = swift_getAssociatedConformanceWitness(v524, v69, v522, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v115 = v523;
      (*(v114 + 8))(&qword_18071E0A8, 256, v113, v114);
      v116 = v535;
      (v112[3])(v115, v69, v112);
      v92 = v538;
      LOBYTE(v113) = (*(*(*(v63 + 32) + 8) + 16))(v538, v116, v69);
      (*(v537 + 8))(v116, v69);
      if (v113)
      {
        goto LABEL_17;
      }
    }

    else if (v101 >= 64)
    {
      goto LABEL_21;
    }

    if ((*(v63 + 120))(v69, v63) >= -126)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  v533 = *(v63 + 128);
  v96 = (v533)(v69, v63);
  if (v96 < 64)
  {
    v99 = v93;
    if ((*(v63 + 120))(v69, v63) > -127)
    {
      goto LABEL_21;
    }

LABEL_17:
    v527 = v99;
    v117 = v524;
    v118 = v522;
    v119 = swift_getAssociatedConformanceWitness(v524, v69, v522, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v120 = *(v119 + 8);
    v121 = v523;
    v512 = v119;
    v510 = (v119 + 8);
    v509 = v120;
    (v120)(&qword_1806729C0, 512, v118);
    v122 = v117 + 3;
    v123 = v117[3];
    v124 = v535;
    v125 = v117;
    v126 = v538;
    v506 = v122;
    v504 = v123;
    (v123)(v121, v69, v125);
    v127 = *(v516 + 1);
    v501 = *(v127 + 24);
    v501(v126, v124, v69, v127);
    v516 = *(v537 + 8);
    (v516)(v124, v69);
    v128 = v532;
    v129 = (v532)(v69, v63);
    AssociatedConformanceWitness = v127;
    if (v129)
    {
      v130 = (v533)(v69, v63);
      if (v130 < 64)
      {
        v133 = (*(v63 + 120))(v69, v63);
        v134 = v516;
        (v516)(v86, v69);
        if (v133 > -150)
        {
          goto LABEL_75;
        }

LABEL_72:
        (v134)(v126, v69);
        if (((*(v527 + 21))(v536) & 1) == 0)
        {
          result = 0;
          *v519 = 0.0;
          return result;
        }

        result = 0;
        v154 = 0x80000000;
LABEL_74:
        *v519 = v154;
        return result;
      }

      v539 = -149;
      v171 = *(v63 + 96);
      v172 = lazy protocol witness table accessor for type Int and conformance Int(v130, v131, v132);
      v173 = v535;
      v171(&v539, &type metadata for Int, v172, v69, v63);
      v126 = v538;
      v174 = (*(*(*(v63 + 32) + 8) + 16))(v86, v173, v69);
      v134 = v516;
      (v516)(v173, v69);
      (v134)(v86, v69);
      if (v174)
      {
        goto LABEL_72;
      }

LABEL_75:
      v218 = v523;
      v509(&qword_1806729C0, 512);
      v219 = v535;
      v220 = v218;
      v221 = v516;
      (v504)(v220, v69, v524);
      v222 = v505;
      v501(v126, v219, v69, AssociatedConformanceWitness);
      (v221)(v219, v69);
      v223 = v532;
      if ((v532)(v69, v63))
      {
        v224 = (v533)(v69, v63);
        v227 = v527;
        if (v224 >= 64)
        {
          v539 = -149;
          v228 = *(v63 + 96);
          v229 = lazy protocol witness table accessor for type Int and conformance Int(v224, v225, v226);
          v230 = v535;
          v228(&v539, &type metadata for Int, v229, v69, v63);
          v221 = v516;
          v231 = (*(*(*(v63 + 16) + 8) + 8))(v222, v230, v69);
          v232 = v230;
          v126 = v538;
          v233 = v69;
          goto LABEL_81;
        }

        goto LABEL_85;
      }

      v234 = v223(v69, v63);
      v235 = (v533)(v69, v63);
      v227 = v527;
      if (v234)
      {
        if (v235 > 64)
        {
          v539 = -149;
          v238 = *(v63 + 96);
          v239 = lazy protocol witness table accessor for type Int and conformance Int(v235, v236, v237);
          v240 = v535;
          v238(&v539, &type metadata for Int, v239, v69, v63);
          v231 = (*(*(*(v63 + 16) + 8) + 8))(v222, v240, v69);
          v232 = v240;
          v126 = v538;
          v233 = v69;
          v221 = v516;
LABEL_81:
          (v221)(v232, v233);
          (v221)(v222, v69);
          v202 = v514;
          if (v231)
          {
            goto LABEL_86;
          }

          goto LABEL_95;
        }

        v247 = v523;
        v509(&qword_18071E0A8, 256);
        v248 = v535;
        (v504)(v247, v69, v524);
        v249 = (*(*(*(v63 + 32) + 8) + 32))(v222, v248, v69);
        v221 = v516;
        (v516)(v248, v69);
        if (v249)
        {
LABEL_85:
          v241 = (*(v63 + 120))(v69, v63);
          (v221)(v222, v69);
          v202 = v514;
          if (v241 == -149)
          {
LABEL_86:
            (v221)(v126, v69);
            v242 = v536;
            v243 = (*(v530 + 17))(v536);
            v244 = (*(v227 + 21))(v242, v227);
            result = 0;
            v245 = -0.0;
            if ((v244 & 1) == 0)
            {
              v245 = 0.0;
            }

            LODWORD(v246) = 1;
            if (v244)
            {
              v246 = COERCE_FLOAT(-2147483647);
            }

            if (v243)
            {
              v245 = v246;
            }

            goto LABEL_243;
          }

LABEL_95:
          v99 = v513;
          (*(v537 + 16))(v513, v126, v69);
          if (((v532)(v69, v63) & 1) == 0 || (v533)(v69, v63) < 65)
          {
            goto LABEL_153;
          }

          v539 = 0x8000000000000000;
          v250 = v532;
          if ((v532)(v69, v63))
          {
            v251 = (v533)(v69, v63);
            if (v251 >= 64)
            {
              v254 = *(v63 + 96);
              v255 = lazy protocol witness table accessor for type Int and conformance Int(v251, v252, v253);
              v256 = v535;
              v254(&v539, &type metadata for Int, v255, v69, v63);
              v202 = v514;
              v257 = (*(*(*(v63 + 32) + 8) + 16))(v99, v256, v69);
              v258 = v256;
              v126 = v538;
              (v516)(v258, v69);
              if (v257)
              {
                goto LABEL_235;
              }

              goto LABEL_153;
            }
          }

          else
          {
            v259 = v250(v69, v63);
            v260 = (v533)(v69, v63);
            v263 = v260 < 64;
            if ((v259 & 1) == 0)
            {
              goto LABEL_111;
            }

            if (v260 > 64)
            {
              v264 = *(v63 + 96);
              v265 = lazy protocol witness table accessor for type Int and conformance Int(v260, v261, v262);
              v266 = v535;
              v264(&v539, &type metadata for Int, v265, v69, v63);
              v267 = (*(*(*(v63 + 32) + 8) + 16))(v99, v266, v69);
              v268 = v266;
              v126 = v538;
              (v516)(v268, v69);
              v202 = v514;
              if (v267)
              {
                goto LABEL_235;
              }

LABEL_153:
              v375 = v99;
              v376 = v533;
              if (v533)(v69, v63) <= 64 && ((v376)(v69, v63) != 64 || ((v532)(v69, v63)))
              {
                goto LABEL_163;
              }

              v539 = 0x7FFFFFFFFFFFFFFFLL;
              v377 = (v532)(v69, v63);
              v378 = (v376)(v69, v63);
              if (v377)
              {
                if (v378 > 64)
                {
                  goto LABEL_156;
                }
              }

              else if (v378 >= 64)
              {
LABEL_156:
                v381 = *(v63 + 96);
                v382 = lazy protocol witness table accessor for type Int and conformance Int(v378, v379, v380);
                v383 = v535;
                v381(&v539, &type metadata for Int, v382, v69, v63);
                v375 = v513;
                v384 = (*(*(*(v63 + 32) + 8) + 16))(v383, v513, v69);
                v385 = v383;
                v126 = v538;
                (v516)(v385, v69);
                v202 = v514;
                if (v384)
                {
                  goto LABEL_235;
                }

                goto LABEL_163;
              }

              v375 = v513;
              (*(v63 + 120))(v69, v63);
              v202 = v514;
LABEL_163:
              v386 = (*(v63 + 120))(v69, v63);
              v387 = v516;
              result = (v516)(v375, v69);
              v201 = (v386 + 149);
              if (!__OFADD__(v386, 149))
              {
                (v387)(v126, v69);
                v388 = v530;
                v389 = *(v530 + 17);
                v390 = v536;
                v532 = v530 + 136;
                v533 = v389;
                v391 = (v389)(v536, v530);
                v69 = v528;
                v537 = *(v388 + 15);
                (v537)(v390, v388);
                v392 = v520;
                v393 = (*(v526 + 144))(v520);
                v538 = *(v517 + 8);
                (v538)(v69, v392);
                v273 = &v201[-v391 - v393];
                v394 = (*(v527 + 46))(v390);
                v535 = v273;
                v531 = v201;
                if ((v394 & 1) == 0)
                {
                  LODWORD(v524) = 0;
                  v137 = v526;
                  goto LABEL_176;
                }

                v137 = v526;
                if (v201 >= -32 && v201 <= 32)
                {
                  if ((v201 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_247;
                  }

                  if (v201 != 32)
                  {
                    LODWORD(v524) = 1 << v201;
                    goto LABEL_176;
                  }
                }

                goto LABEL_167;
              }

              __break(1u);
              goto LABEL_240;
            }

            v372 = v523;
            v509(&qword_18071E0A8, 256);
            v373 = v535;
            (v504)(v372, v69, v524);
            v374 = (*(*(*(v63 + 32) + 8) + 16))(v99, v373, v69);
            (v516)(v373, v69);
            v202 = v514;
            if (v374)
            {
              goto LABEL_235;
            }
          }

LABEL_152:
          (*(v63 + 120))(v69, v63);
          goto LABEL_153;
        }
      }

      else if (v235 < 64)
      {
        goto LABEL_85;
      }

      (v221)(v222, v69);
      v202 = v514;
      goto LABEL_95;
    }

    v155 = v128(v69, v63);
    v156 = (v533)(v69, v63);
    if (v155)
    {
      if (v156 > 64)
      {
        v539 = -149;
        v159 = *(v63 + 96);
        v160 = lazy protocol witness table accessor for type Int and conformance Int(v156, v157, v158);
        v161 = v535;
        v159(&v539, &type metadata for Int, v160, v69, v63);
        v162 = (*(*(*(v63 + 32) + 8) + 16))(v86, v161, v69);
        v134 = v516;
        (v516)(v161, v69);
        (v134)(v86, v69);
        v126 = v538;
        if (v162)
        {
          goto LABEL_72;
        }

        goto LABEL_75;
      }

      v176 = v523;
      v509(&qword_18071E0A8, 256);
      v177 = v535;
      (v504)(v176, v69, v524);
      v178 = (*(*(*(v63 + 32) + 8) + 16))(v86, v177, v69);
      v179 = v177;
      v134 = v516;
      (v516)(v179, v69);
      if (v178)
      {
        (v134)(v86, v69);
        v126 = v538;
        goto LABEL_72;
      }

      v175 = (*(v63 + 120))(v69, v63);
      (v134)(v86, v69);
    }

    else
    {
      if (v156 >= 64)
      {
        (v516)(v86, v69);
        v126 = v538;
        goto LABEL_75;
      }

      v175 = (*(v63 + 120))(v69, v63);
      v134 = v516;
      (v516)(v86, v69);
    }

    v126 = v538;
    if (v175 >= -149)
    {
      goto LABEL_75;
    }

    goto LABEL_72;
  }

  v108 = *(v63 + 96);
  v109 = lazy protocol witness table accessor for type Int and conformance Int(v96, v97, v98);
  v110 = v535;
  v108(&v539, &type metadata for Int, v109, v69, v63);
  v92 = v538;
  v111 = (*(*(*(v63 + 32) + 8) + 16))(v538, v110, v69);
  (*(v537 + 8))(v110, v69);
  v99 = v93;
  if (v111)
  {
    goto LABEL_17;
  }

LABEL_21:
  v539 = 127;
  v135 = v532;
  v136 = (v532)(v69, v63);
  v137 = (v63 + 128);
  v138 = (v533)(v69, v63);
  if (v136)
  {
    if (v138 > 64)
    {
      goto LABEL_23;
    }
  }

  else if (v138 > 63)
  {
LABEL_23:
    v141 = *(v63 + 96);
    v142 = lazy protocol witness table accessor for type Int and conformance Int(v138, v139, v140);
    v143 = v535;
    v141(&v539, &type metadata for Int, v142, v69, v63);
    v92 = v538;
    v144 = (*(*(*(v63 + 32) + 8) + 16))(v143, v538, v69);
    (*(v537 + 8))(v143, v69);
    if ((v144 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_30;
  }

  if ((*(v63 + 120))(v69, v63) > 127)
  {
LABEL_30:
    (*(v537 + 8))(v92, v69);
    if ((*(v99 + 21))(v536, v99))
    {
      result = 0;
      v154 = -8388608;
    }

    else
    {
      result = 0;
      v154 = 2139095040;
    }

    goto LABEL_74;
  }

LABEL_24:
  v145 = v135(v69, v63);
  v527 = v99;
  if (v145)
  {
    v146 = (v533)(v69, v63);
    if (v146 >= 64)
    {
      v539 = 0;
      v149 = *(v63 + 96);
      v150 = lazy protocol witness table accessor for type Int and conformance Int(v146, v147, v148);
      v151 = v535;
      v149(&v539, &type metadata for Int, v150, v69, v63);
      v92 = v538;
      v152 = (*(*(*(v63 + 32) + 8) + 16))(v538, v151, v69);
      (*(v537 + 8))(v151, v69);
      if (v152)
      {
        goto LABEL_60;
      }

LABEL_52:
      v185 = v512;
      (*(v537 + 32))(v512, v92, v69);
      if (v135(v69, v63))
      {
        v186 = v524;
        v187 = v522;
        v188 = swift_getAssociatedConformanceWitness(v524, v69, v522, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v189 = v523;
        (*(v188 + 8))(&qword_18071E0A8, 256, v187, v188);
        v190 = v535;
        (v186[3])(v189, v69, v186);
        LOBYTE(v187) = (*(*(*(v63 + 32) + 8) + 32))(v512, v190, v69);
        v191 = v190;
        v185 = v512;
        (*(v537 + 8))(v191, v69);
        if ((v187 & 1) == 0)
        {
          goto LABEL_235;
        }
      }

      v126 = v533;
      if ((v533)(v69, v63) <= 63)
      {
        goto LABEL_109;
      }

      v539 = -1;
      v192 = v135(v69, v63);
      v193 = v126(v69, v63);
      if (v192)
      {
        if (v193 <= 64)
        {
          v196 = v524;
          v197 = v522;
          v198 = swift_getAssociatedConformanceWitness(v524, v69, v522, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
          v126 = v523;
          (*(v198 + 8))(&qword_18071E0A8, 256, v197, v198);
          v199 = v535;
          (v196[3])(v126, v69, v196);
          v200 = v512;
          LOBYTE(v197) = (*(*(*(v63 + 32) + 8) + 40))(v512, v199, v69);
          (*(v537 + 8))(v199, v69);
          if (v197)
          {
            (*(v63 + 120))(v69, v63);
          }

          v185 = v200;
          goto LABEL_109;
        }
      }

      else if (v193 <= 64)
      {
        v185 = v512;
        (*(v63 + 120))(v69, v63);
LABEL_109:
        v63 = (*(v63 + 120))(v69, v63);
        (*(v537 + 8))(v185, v69);
        v272 = (v63 + 127);
        v263 = v63 < -127;
        if (v63 < 0xFFFFFFFFFFFFFF81)
        {
LABEL_115:
          v523 = v272;
          v274 = v526;
          v275 = v528;
          v276 = v530;
          v277 = *(v530 + 17);
          v532 = ((v530 + 136) & 0xFFFFFFFFFFFFLL | 0x1E66000000000000);
          v533 = v277;
          v278 = v536;
          v279 = (v277)(v536, v530);
          v280 = (v276 + 120);
          v537 = *(v276 + 15);
          (v537)(v278, v276);
          v281 = v275;
          v282 = *(v274 + 144);
          v201 = v520;
          v514 = (v274 + 144);
          v513 = v282;
          v283 = (v282)(v520, v274);
          v284 = (v517 + 8);
          v538 = *(v517 + 8);
          (v538)(v281, v201);
          v535 = 23 - v279 - v283;
          LOBYTE(v279) = (*(v527 + 49))(v278);
          v285 = v529;
          v286 = v525;
          v287 = swift_getAssociatedConformanceWitness(v529, v201, v525, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
          v288 = *(v287 + 8);
          v531 = v284;
          v522 = (v285 + 3);
          v524 = v280;
          if (v279)
          {
            v289 = v518;
            v288(&qword_1806729C0, 512, v286, v287);
            v516 = v285[3];
            (v516)(v289, v201, v285);
            v290 = v530;
            v291 = (v533)(v278, v530);
            v292 = v515;
            (v537)(v278, v290);
            v293 = (v513)(v201, v274);
            v294 = v292;
            v295 = v538;
            v296 = (v538)(v294, v201);
            v539 = v293 + v291;
            v297 = *(v274 + 256);
            v300 = lazy protocol witness table accessor for type Int and conformance Int(v296, v298, v299);
            v301 = v509;
            v302 = v528;
            v297(v528, &v539, &type metadata for Int, v300, v201, v274);
            (v295)(v302, v201);
            v137 = v274;
            v69 = v302;
            v303 = v290;
          }

          else
          {
            v304 = v518;
            v288(&qword_18071E0A8, 256, v286, v287);
            v301 = v509;
            v516 = v285[3];
            (v516)(v304, v201, v285);
            v137 = v274;
            v69 = v528;
            v303 = v530;
            v295 = v538;
          }

          v305 = v510;
          v306 = v535;
          if ((v535 & 0x8000000000000000) == 0)
          {
            (v537)(v536, v303);
            (v137[28])(v301, v69, v201, v137);
            (v295)(v69, v201);
            (v295)(v301, v201);
            v524 = v137[8];
            if ((v524)(v201, v137))
            {
              v307 = v529;
              v308 = v525;
              v309 = swift_getAssociatedConformanceWitness(v529, v201, v525, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
              v310 = v518;
              (*(v309 + 8))(&qword_18071E0A8, 256, v308, v309);
              v311 = v310;
              v305 = v510;
              (v516)(v311, v201, v307);
              LOBYTE(v307) = (*(*(v137[4] + 1) + 32))(v305, v69, v201);
              (v295)(v69, v201);
              if ((v307 & 1) == 0)
              {
                goto LABEL_235;
              }
            }

            v312 = v137[16];
            if ((v312)(v201, v137) <= 31)
            {
              goto LABEL_143;
            }

            LODWORD(v539) = -1;
            v313 = (v524)(v201, v137);
            v314 = (v312)(v201, v137);
            if (v313)
            {
              v317 = v538;
              if (v314 > 32)
              {
                v318 = v137[12];
                v319 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(v314, v315, v316);
                (v318)(&v539, &type metadata for UInt32, v319, v201, v137);
                v320 = (*(*(v137[4] + 1) + 16))(v69, v305, v201);
                (v317)(v69, v201);
                if (v320)
                {
                  goto LABEL_235;
                }

                goto LABEL_143;
              }

              v355 = v529;
              v356 = v525;
              v357 = swift_getAssociatedConformanceWitness(v529, v201, v525, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
              v358 = v518;
              (*(v357 + 8))(&qword_18071E0A8, 256, v356, v357);
              v359 = v358;
              v305 = v510;
              (v516)(v359, v201, v355);
              LOBYTE(v355) = (*(*(v137[4] + 1) + 40))(v305, v69, v201);
              (v317)(v69, v201);
              if ((v355 & 1) == 0)
              {
LABEL_143:
                v360 = (v137[15])(v201, v137);
                (v538)(v305, v201);
                if (v535 < 0x20)
                {
                  v335 = (v360 << v535);
                }

                else
                {
                  v335 = 0;
                }

LABEL_146:
                v361 = 23;
                v362 = v536;
                v363 = v533;
                v364 = v530;
                v365 = v523;
                goto LABEL_205;
              }
            }

            else if (v314 > 32)
            {
              v347 = v137[12];
              v348 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(v314, v315, v316);
              (v347)(&v539, &type metadata for UInt32, v348, v201, v137);
              v349 = (*(*(v137[4] + 1) + 16))(v69, v305, v201);
              (v538)(v69, v201);
              if (v349)
              {
                goto LABEL_235;
              }

              goto LABEL_143;
            }

            (v137[15])(v201, v137);
            goto LABEL_143;
          }

          v202 = v515;
          (v537)(v536, v303);
          (v137[28])(v301, v202, v201, v137);
          v273 = v531;
          (v295)(v202, v201);
          v321 = (v295)(v301, v201);
          if (!__OFSUB__(0, v306))
          {
            v539 = -v306;
            v324 = v137[30];
            v325 = lazy protocol witness table accessor for type Int and conformance Int(v321, v322, v323);
            v326 = v506;
            (v324)(v69, &v539, &type metadata for Int, v325, v201, v137);
            (v295)(v69, v201);
            v327 = v137[8];
            if ((v327)(v201, v137))
            {
              v328 = v529;
              v329 = v525;
              v330 = swift_getAssociatedConformanceWitness(v529, v201, v525, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
              v331 = v518;
              (*(v330 + 8))(&qword_18071E0A8, 256, v329, v330);
              v332 = v528;
              (v516)(v331, v201, v328);
              LOBYTE(v328) = (*(*(v137[4] + 1) + 32))(v506, v332, v201);
              v333 = v332;
              v326 = v506;
              (v295)(v333, v201);
              if ((v328 & 1) == 0)
              {
                goto LABEL_235;
              }
            }

            v334 = v137[16];
            if ((v334)(v201, v137) > 31)
            {
              LODWORD(v539) = -1;
              v336 = (v327)(v201, v137);
              v337 = (v334)(v201, v137);
              if (v336)
              {
                v340 = v538;
                if (v337 <= 32)
                {
                  v366 = v529;
                  v367 = v525;
                  v368 = swift_getAssociatedConformanceWitness(v529, v201, v525, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
                  v369 = v518;
                  (*(v368 + 8))(&qword_18071E0A8, 256, v367, v368);
                  v370 = v528;
                  (v516)(v369, v201, v366);
                  v371 = v506;
                  LOBYTE(v366) = (*(*(v137[4] + 1) + 40))(v506, v370, v201);
                  (v340)(v370, v201);
                  if (v366)
                  {
                    (v137[15])(v201, v137);
                  }

                  v326 = v371;
                }

                else
                {
                  v341 = v137[12];
                  v342 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(v337, v338, v339);
                  v343 = v528;
                  (v341)(&v539, &type metadata for UInt32, v342, v201, v137);
                  v344 = v506;
                  v345 = (*(*(v137[4] + 1) + 16))(v343, v506, v201);
                  v346 = v343;
                  v326 = v344;
                  (v340)(v346, v201);
                  if (v345)
                  {
                    goto LABEL_235;
                  }
                }
              }

              else if (v337 <= 32)
              {
                (v137[15])(v201, v137);
              }

              else
              {
                v350 = v137[12];
                v351 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(v337, v338, v339);
                v352 = v528;
                (v350)(&v539, &type metadata for UInt32, v351, v201, v137);
                v353 = (*(*(v137[4] + 1) + 16))(v352, v506, v201);
                v354 = v352;
                v326 = v506;
                (v538)(v354, v201);
                if (v353)
                {
                  goto LABEL_235;
                }
              }
            }

            v335 = (v137[15])(v201, v137);
            (v538)(v326, v201);
            goto LABEL_146;
          }

          goto LABEL_245;
        }

        __break(1u);
LABEL_111:
        v202 = v514;
        if (!v263)
        {
          goto LABEL_153;
        }

        goto LABEL_152;
      }

      v215 = *(v63 + 96);
      v216 = lazy protocol witness table accessor for type UInt and conformance UInt(v193, v194, v195);
      v126 = v535;
      v215(&v539, &type metadata for UInt, v216, v69, v63);
      v185 = v512;
      v217 = (*(*(*(v63 + 32) + 8) + 16))(v126, v512, v69);
      (*(v537 + 8))(v126, v69);
      if (v217)
      {
        goto LABEL_235;
      }

      goto LABEL_109;
    }

    goto LABEL_51;
  }

  v163 = v135(v69, v63);
  v164 = (v533)(v69, v63);
  if ((v163 & 1) == 0)
  {
    if (v164 >= 64)
    {
      goto LABEL_52;
    }

LABEL_51:
    if (((*(v63 + 120))(v69, v63) & 0x8000000000000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_60;
  }

  if (v164 > 64)
  {
    v539 = 0;
    v167 = *(v63 + 96);
    v168 = lazy protocol witness table accessor for type Int and conformance Int(v164, v165, v166);
    v169 = v535;
    v167(&v539, &type metadata for Int, v168, v69, v63);
    v92 = v538;
    v170 = (*(*(*(v63 + 32) + 8) + 16))(v538, v169, v69);
    (*(v537 + 8))(v169, v69);
    if (v170)
    {
      goto LABEL_60;
    }

    goto LABEL_52;
  }

  v180 = v524;
  v181 = v522;
  v182 = swift_getAssociatedConformanceWitness(v524, v69, v522, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v183 = v523;
  (*(v182 + 8))(&qword_18071E0A8, 256, v181, v182);
  v184 = v535;
  (v180[3])(v183, v69, v180);
  v92 = v538;
  LOBYTE(v181) = (*(*(*(v63 + 32) + 8) + 16))(v538, v184, v69);
  (*(v537 + 8))(v184, v69);
  if ((v181 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_60:
  v201 = v504;
  (*(*(AssociatedConformanceWitness + 16) + 16))(v92, v69);
  v202 = v135;
  v203 = *(v537 + 8);
  v537 += 8;
  v203(v92, v69);
  if ((v202)(v69, v63))
  {
    v204 = v524;
    v205 = v522;
    v206 = swift_getAssociatedConformanceWitness(v524, v69, v522, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v207 = v523;
    (*(v206 + 8))(&qword_18071E0A8, 256, v205, v206);
    v202 = v535;
    (v204[3])(v207, v69, v204);
    LOBYTE(v205) = (*(*(*(v63 + 32) + 8) + 32))(v201, v202, v69);
    v203(v202, v69);
    if ((v205 & 1) == 0)
    {
      goto LABEL_235;
    }
  }

  v208 = v533;
  if ((v533)(v69, v63) > 63)
  {
    v539 = -1;
    v202 = (v532)(v69, v63);
    v209 = (v208)(v69, v63);
    if (v202)
    {
      if (v209 <= 64)
      {
        v137 = v524;
        v212 = v522;
        v213 = swift_getAssociatedConformanceWitness(v524, v69, v522, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v214 = v523;
        (*(v213 + 8))(&qword_18071E0A8, 256, v212, v213);
        v202 = v535;
        (v137[3])(v214, v69, v137);
        v201 = v504;
        LOBYTE(v212) = (*(*(*(v63 + 32) + 8) + 40))(v504, v202, v69);
        v203(v202, v69);
        if (v212)
        {
          (*(v63 + 120))(v69, v63);
        }

        goto LABEL_114;
      }
    }

    else if (v209 <= 64)
    {
      v201 = v504;
      (*(v63 + 120))(v69, v63);
      goto LABEL_114;
    }

    v202 = v63 + 96;
    v137 = *(v63 + 96);
    v269 = lazy protocol witness table accessor for type UInt and conformance UInt(v209, v210, v211);
    v270 = v535;
    (v137)(&v539, &type metadata for UInt, v269, v69, v63);
    v201 = v504;
    v271 = (*(*(*(v63 + 32) + 8) + 16))(v270, v504, v69);
    v203(v270, v69);
    if (v271)
    {
      goto LABEL_235;
    }
  }

LABEL_114:
  v273 = (*(v63 + 120))(v69, v63);
  v203(v201, v69);
  v272 = (127 - v273);
  if (v273 <= 0x7F)
  {
    goto LABEL_115;
  }

  __break(1u);
LABEL_245:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_247:
    if (v201 == -32)
    {
LABEL_167:
      LODWORD(v524) = 0;
      if ((v273 & 0x8000000000000000) == 0)
      {
        break;
      }

      goto LABEL_168;
    }

    LODWORD(v524) = 0;
LABEL_176:
    if ((v273 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_168:
    v395 = (v537)(v536, v530);
    if (!__OFSUB__(0, v273))
    {
      v539 = -v273;
      v398 = v137[30];
      v399 = lazy protocol witness table accessor for type Int and conformance Int(v395, v396, v397);
      v400 = v502;
      v201 = v520;
      (v398)(v69, &v539, &type metadata for Int, v399, v520, v137);
      (v538)(v69, v201);
      v401 = v137[8];
      if ((v401)(v201, v137))
      {
        v402 = v529;
        v403 = v525;
        v404 = swift_getAssociatedConformanceWitness(v529, v201, v525, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v405 = v518;
        (*(v404 + 8))(&qword_18071E0A8, 256, v403, v404);
        (v402[3])(v405, v201, v402);
        LOBYTE(v402) = (*(*(v137[4] + 1) + 32))(v400, v69, v201);
        (v538)(v69, v201);
        if ((v402 & 1) == 0)
        {
          goto LABEL_235;
        }
      }

      v406 = v137[16];
      if ((v406)(v201, v137) <= 31)
      {
        goto LABEL_203;
      }

      LODWORD(v539) = -1;
      v407 = (v401)(v201, v137);
      v408 = (v406)(v201, v137);
      if (v407)
      {
        v411 = v528;
        if (v408 > 32)
        {
          v137 = v526;
          v412 = *(v526 + 96);
          v413 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(v408, v409, v410);
          goto LABEL_192;
        }

        v435 = v529;
        v201 = v520;
        v436 = v525;
        v437 = swift_getAssociatedConformanceWitness(v529, v520, v525, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v438 = v518;
        (*(v437 + 8))(&qword_18071E0A8, 256, v436, v437);
        (v435[3])(v438, v201, v435);
        v137 = v526;
        LOBYTE(v435) = (*(*(*(v526 + 32) + 8) + 40))(v400, v411, v201);
        (v538)(v411, v201);
        if (v435)
        {
          (v137[15])(v201, v137);
        }
      }

      else
      {
        if (v408 > 32)
        {
          v137 = v526;
          v412 = *(v526 + 96);
          v413 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(v408, v409, v410);
          v411 = v528;
LABEL_192:
          v201 = v520;
          v412(&v539, &type metadata for UInt32, v413, v520, v137);
          v428 = (*(*(v137[4] + 1) + 16))(v411, v400, v201);
          (v538)(v411, v201);
          if (v428)
          {
            goto LABEL_235;
          }

          goto LABEL_203;
        }

        v137 = v526;
        v201 = v520;
        (*(v526 + 120))(v520, v526);
      }

LABEL_203:
      v434 = (v137[15])(v201, v137);
      (v538)(v400, v201);
      goto LABEL_204;
    }
  }

  (v537)(v536, v530);
  v414 = v137[8];
  v201 = v520;
  if ((v414)(v520, v137))
  {
    v415 = v529;
    v416 = v525;
    v417 = swift_getAssociatedConformanceWitness(v529, v201, v525, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v418 = v518;
    (*(v417 + 8))(&qword_18071E0A8, 256, v416, v417);
    (v415[3])(v418, v201, v415);
    LOBYTE(v415) = (*(*(v137[4] + 1) + 32))(v202, v69, v201);
    (v538)(v69, v201);
    if ((v415 & 1) == 0)
    {
      goto LABEL_235;
    }
  }

  v419 = v137[16];
  if ((v419)(v201, v137) <= 31)
  {
    goto LABEL_197;
  }

  LODWORD(v539) = -1;
  v420 = (v414)(v201, v137);
  v421 = (v419)(v201, v137);
  if (v420)
  {
    v424 = v528;
    if (v421 > 32)
    {
      v137 = v526;
      v425 = *(v526 + 96);
      v426 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(v421, v422, v423);
      goto LABEL_185;
    }

    v429 = v529;
    v201 = v520;
    v430 = v525;
    v431 = swift_getAssociatedConformanceWitness(v529, v520, v525, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v432 = v518;
    (*(v431 + 8))(&qword_18071E0A8, 256, v430, v431);
    (v429[3])(v432, v201, v429);
    v137 = v526;
    LOBYTE(v429) = (*(*(*(v526 + 32) + 8) + 40))(v202, v424, v201);
    (v538)(v424, v201);
    if (v429)
    {
      (v137[15])(v201, v137);
    }

    goto LABEL_197;
  }

  if (v421 <= 32)
  {
    v137 = v526;
    v201 = v520;
    (*(v526 + 120))(v520, v526);
    goto LABEL_197;
  }

  v137 = v526;
  v425 = *(v526 + 96);
  v426 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(v421, v422, v423);
  v424 = v528;
LABEL_185:
  v201 = v520;
  v425(&v539, &type metadata for UInt32, v426, v520, v137);
  v427 = (*(*(v137[4] + 1) + 16))(v424, v202, v201);
  (v538)(v424, v201);
  if (v427)
  {
LABEL_235:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_197:
  v433 = (v137[15])(v201, v137);
  (v538)(v202, v201);
  if (v535 < 0x20)
  {
    v434 = v433 << v535;
  }

  else
  {
    v434 = 0;
  }

LABEL_204:
  v362 = v536;
  v363 = v533;
  v365 = 0;
  v335 = v524 | v434;
  v364 = v530;
  v361 = v531;
LABEL_205:
  v439 = *(v527 + 21);
  v531 = v527 + 168;
  v524 = v439;
  if ((v439)(v362))
  {
    v440 = 0x80000000;
  }

  else
  {
    v440 = 0;
  }

  v516 = v335;
  v441 = v335 & 0x7FFFFF | (v365 << 23) | v440;
  if (v361 >= (v363)(v362, v364))
  {
    *v519 = v441;
    return 1;
  }

  LODWORD(v514) = v441;
  v442 = v529;
  v443 = v525;
  v444 = swift_getAssociatedConformanceWitness(v529, v201, v525, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v445 = v518;
  v523 = *(v444 + 8);
  (v523)(&qword_1806729C0, 512, v443, v444);
  v446 = v442[3];
  v447 = v528;
  v533 = v442 + 3;
  v522 = v446;
  v448 = (v446)(v445, v201, v442);
  if (__OFSUB__(0, v535))
  {
    __break(1u);
    goto LABEL_237;
  }

  v539 = -v535;
  v532 = (v444 + 8);
  v451 = v526;
  v535 = v444;
  v452 = v445;
  v453 = *(v526 + 256);
  v454 = lazy protocol witness table accessor for type Int and conformance Int(v448, v449, v450);
  v453(v447, &v539, &type metadata for Int, v454, v201, v451);
  v455 = v517 + 8;
  (v538)(v447, v201);
  (v537)(v536, v364);
  v456 = v523;
  (v523)(&qword_1806729C0, 512, v443, v535);
  v457 = v508;
  v458 = v522;
  (v522)(v452, v201, v529);
  v459 = v515;
  (*(*(v507 + 8) + 40))(v521, v457, v201);
  (v538)(v457, v201);
  v460 = v511;
  (*(v451 + 192))(v447, v459, v201, v451);
  (v538)(v459, v201);
  (v538)(v447, v201);
  v456(qword_18071E0B8, 768);
  v461 = v452;
  (v458)(v452, v201, v529);
  v462 = *(v451 + 152);
  v462(v521, v459, v201, v451);
  (v538)(v459, v201);
  v463 = *(v451 + 32);
  v464 = v538;
  v465 = *(v463 + 8);
  v466 = (*(v465 + 16))(v460, v447, v201, v465);
  v537 = v455;
  (v464)(v447, v201);
  if (v466)
  {
    (v464)(v460, v201);
    (v464)(v521, v201);
    result = 0;
    *v519 = v514;
    return result;
  }

  v4 = *&v514;
  if ((v524)(v536, v527))
  {
    v467 = 0.0 - v4;
    v468 = v529;
    v470 = v522;
    v469 = v523;
    if ((0.0 - v4) != INFINITY)
    {
      LODWORD(v467) += (SLODWORD(v467) >> 31) | 1;
    }

    v5 = -v467;
  }

  else
  {
    v5 = v4 + 0.0;
    v468 = v529;
    v470 = v522;
    v469 = v523;
    if (v4 != INFINITY)
    {
      LODWORD(v5) += (SLODWORD(v5) >> 31) | 1;
    }
  }

  v469(qword_18071E0B8, 768);
  v471 = v515;
  v472 = v520;
  (v470)(v461, v520, v468);
  v473 = v528;
  v474 = v521;
  v462(v521, v471, v472, v526);
  v475 = v471;
  v476 = v538;
  (v538)(v475, v472);
  (v476)(v474, v472);
  v477 = v511;
  v478 = (*(v465 + 40))(v511, v473, v472, v465);
  (v476)(v473, v472);
  (v476)(v477, v472);
  result = 0;
  if (v478)
  {
    *v519 = v5;
    return result;
  }

LABEL_240:
  if (__clz(__rbit32(LODWORD(v5) & 0x7FFFFF)) >= __clz(__rbit32(v516)))
  {
    v245 = v5;
  }

  else
  {
    v245 = v4;
  }

LABEL_243:
  *v519 = v245;
  return result;
}

uint64_t specialized static BinaryFloatingPoint._convert<A>(from:)(short float *a1, uint64_t a2, char *a3, swift *a4)
{
  v521 = a1;
  v535 = *(a3 - 1);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v534 = (&v503 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v11);
  v507 = &v503 - v12;
  swift_getAssociatedTypeWitness(255, v14, v13, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v16 = v15;
  v528 = *(swift_getAssociatedConformanceWitness(a4, a3, v15, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger) + 8);
  v509 = *(v528 + 24);
  v531 = *(v509 + 16);
  swift_getAssociatedTypeWitness(0, v531, v16, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v527 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v520 = &v503 - v19;
  v522 = swift_checkMetadataState(0, v16);
  v519 = *(v522 - 1);
  v21 = MEMORY[0x1EEE9AC00](v522, v20);
  v23 = &v503 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v27 = &v503 - v26;
  v29 = MEMORY[0x1EEE9AC00](v25, v28);
  v533 = &v503 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v512 = &v503 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v508 = &v503 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35, v37);
  v511 = (&v503 - v39);
  v41 = MEMORY[0x1EEE9AC00](v38, v40);
  v510 = &v503 - v42;
  v44 = MEMORY[0x1EEE9AC00](v41, v43);
  v517 = &v503 - v45;
  v47 = MEMORY[0x1EEE9AC00](v44, v46);
  v513 = &v503 - v48;
  v50 = MEMORY[0x1EEE9AC00](v47, v49);
  v523 = &v503 - v51;
  v53 = MEMORY[0x1EEE9AC00](v50, v52);
  v516 = &v503 - v54;
  v56 = MEMORY[0x1EEE9AC00](v53, v55);
  v504 = &v503 - v57;
  MEMORY[0x1EEE9AC00](v56, v58);
  v530 = (&v503 - v59);
  v532 = a4;
  v60 = *(a4 + 2);
  swift_getAssociatedTypeWitness(255, v60, a3, &protocol requirements base descriptor for FloatingPoint, associated type descriptor for FloatingPoint.Exponent);
  v62 = v61;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v60, a3, v61, &protocol requirements base descriptor for FloatingPoint, associated conformance descriptor for FloatingPoint.FloatingPoint.Exponent: SignedInteger);
  v63 = *(AssociatedConformanceWitness + 8);
  v518 = *(v63 + 24);
  v526 = *(v518 + 16);
  swift_getAssociatedTypeWitness(0, v526, v62, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v524 = v64;
  MEMORY[0x1EEE9AC00](v64, v65);
  v525 = &v503 - v66;
  v67 = v62;
  v68 = v60;
  v69 = swift_checkMetadataState(0, v67);
  v539 = *(v69 - 1);
  v71 = MEMORY[0x1EEE9AC00](v69, v70);
  v514 = &v503 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = MEMORY[0x1EEE9AC00](v71, v73);
  v506 = &v503 - v75;
  v77 = MEMORY[0x1EEE9AC00](v74, v76);
  v515 = &v503 - v78;
  v80 = MEMORY[0x1EEE9AC00](v77, v79);
  v82 = &v503 - v81;
  v84 = MEMORY[0x1EEE9AC00](v80, v83);
  v86 = &v503 - v85;
  v88 = MEMORY[0x1EEE9AC00](v84, v87);
  v537 = &v503 - v89;
  MEMORY[0x1EEE9AC00](v88, v90);
  v540 = &v503 - v91;
  if ((v68[48])(a3, v68))
  {
    if (((v68[21])(a3, v68) & 1) == 0)
    {
      v481 = 0;
LABEL_240:
      *v521 = v481;
      return 1;
    }

    v480 = 0x8000;
    goto LABEL_239;
  }

  if ((v68[47])(a3, v68))
  {
    v507 = v82;
    v92 = v540;
    v93 = v68;
    (v68[22])(a3, v68);
    v541 = -14;
    v94 = *(v63 + 64);
    v95 = v94(v69, v63);
    v538 = a3;
    v536 = a2;
    v533 = (v63 + 64);
    v534 = v94;
    if (v95)
    {
      v535 = *(v63 + 128);
      v96 = (v535)(v69, v63);
      if (v96 < 64)
      {
        v99 = v93;
        if ((*(v63 + 120))(v69, v63) > -15)
        {
          goto LABEL_21;
        }

LABEL_17:
        v529 = v99;
        v117 = v526;
        v118 = v524;
        v119 = swift_getAssociatedConformanceWitness(v526, v69, v524, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v120 = *(v119 + 8);
        v121 = v525;
        v514 = v119;
        v512 = (v119 + 8);
        v511 = v120;
        (v120)(&qword_1806729C0, 512, v118);
        v122 = v117 + 3;
        v123 = v117[3];
        v124 = v537;
        v125 = v117;
        v126 = v540;
        v508 = v122;
        v506 = v123;
        (v123)(v121, v69, v125);
        v127 = *(v518 + 8);
        v503 = *(v127 + 24);
        v503(v126, v124, v69, v127);
        v518 = *(v539 + 8);
        (v518)(v124, v69);
        v128 = v534;
        v129 = v534(v69, v63);
        AssociatedConformanceWitness = v127;
        if (v129)
        {
          v130 = (v535)(v69, v63);
          if (v130 < 64)
          {
            v133 = (*(v63 + 120))(v69, v63);
            v134 = v518;
            (v518)(v86, v69);
            if (v133 > -25)
            {
              goto LABEL_75;
            }

LABEL_72:
            v134(v126, v69);
            if (((*(v529 + 21))(v538) & 1) == 0)
            {
              result = 0;
              LOWORD(v218) = 0;
              goto LABEL_84;
            }

            result = 0;
            v154 = 0x8000;
LABEL_74:
            v218 = *&v154;
LABEL_84:
            *v521 = v218;
            return result;
          }

          v541 = -24;
          v171 = *(v63 + 96);
          v172 = lazy protocol witness table accessor for type Int and conformance Int(v130, v131, v132);
          v173 = v537;
          v171(&v541, &type metadata for Int, v172, v69, v63);
          v126 = v540;
          v174 = (*(*(*(v63 + 32) + 8) + 16))(v86, v173, v69);
          v134 = v518;
          (v518)(v173, v69);
          v134(v86, v69);
          if (v174)
          {
            goto LABEL_72;
          }

LABEL_75:
          v219 = v525;
          v511(&qword_1806729C0, 512);
          v220 = v537;
          v221 = v219;
          v222 = v518;
          (v506)(v221, v69, v526);
          v223 = v507;
          v503(v126, v220, v69, AssociatedConformanceWitness);
          v222(v220, v69);
          v224 = v534;
          if (v534(v69, v63))
          {
            v225 = (v535)(v69, v63);
            v228 = v529;
            if (v225 >= 64)
            {
              v541 = -24;
              v229 = *(v63 + 96);
              v230 = lazy protocol witness table accessor for type Int and conformance Int(v225, v226, v227);
              v231 = v537;
              v229(&v541, &type metadata for Int, v230, v69, v63);
              v222 = v518;
              v232 = (*(*(*(v63 + 16) + 8) + 8))(v223, v231, v69);
              v233 = v231;
              v126 = v540;
              v234 = v69;
              goto LABEL_81;
            }

            goto LABEL_86;
          }

          v235 = v224(v69, v63);
          v236 = (v535)(v69, v63);
          v228 = v529;
          if (v235)
          {
            if (v236 > 64)
            {
              v541 = -24;
              v239 = *(v63 + 96);
              v240 = lazy protocol witness table accessor for type Int and conformance Int(v236, v237, v238);
              v241 = v537;
              v239(&v541, &type metadata for Int, v240, v69, v63);
              v232 = (*(*(*(v63 + 16) + 8) + 8))(v223, v241, v69);
              v233 = v241;
              v126 = v540;
              v234 = v69;
              v222 = v518;
LABEL_81:
              v222(v233, v234);
              v222(v223, v69);
              v202 = v516;
              if (v232)
              {
                goto LABEL_87;
              }

              goto LABEL_96;
            }

            v247 = v525;
            v511(&qword_18071E0A8, 256);
            v248 = v537;
            (v506)(v247, v69, v526);
            v249 = (*(*(*(v63 + 32) + 8) + 32))(v223, v248, v69);
            v222 = v518;
            (v518)(v248, v69);
            if (v249)
            {
LABEL_86:
              v242 = (*(v63 + 120))(v69, v63);
              v222(v223, v69);
              v202 = v516;
              if (v242 == -24)
              {
LABEL_87:
                v222(v126, v69);
                v243 = v538;
                v244 = (*(v532 + 17))(v538);
                v245 = (*(v228 + 21))(v243, v228);
                result = 0;
                LOWORD(v218) = 0x8000;
                if ((v245 & 1) == 0)
                {
                  v218 = COERCE_SHORT_FLOAT(0);
                }

                LOWORD(v246) = 1;
                if (v245)
                {
                  v246 = COERCE_SHORT_FLOAT(-32767);
                }

                if (v244)
                {
                  v218 = v246;
                }

                goto LABEL_84;
              }

LABEL_96:
              v99 = v515;
              (*(v539 + 16))(v515, v126, v69);
              if ((v534(v69, v63) & 1) == 0 || (v535)(v69, v63) < 65)
              {
                goto LABEL_154;
              }

              v541 = 0x8000000000000000;
              v250 = v534;
              if (v534(v69, v63))
              {
                v251 = (v535)(v69, v63);
                if (v251 >= 64)
                {
                  v254 = *(v63 + 96);
                  v255 = lazy protocol witness table accessor for type Int and conformance Int(v251, v252, v253);
                  v256 = v537;
                  v254(&v541, &type metadata for Int, v255, v69, v63);
                  v202 = v516;
                  v257 = (*(*(*(v63 + 32) + 8) + 16))(v99, v256, v69);
                  v258 = v256;
                  v126 = v540;
                  (v518)(v258, v69);
                  if (v257)
                  {
                    goto LABEL_236;
                  }

                  goto LABEL_154;
                }
              }

              else
              {
                v259 = v250(v69, v63);
                v260 = (v535)(v69, v63);
                v263 = v260 < 64;
                if ((v259 & 1) == 0)
                {
                  goto LABEL_112;
                }

                if (v260 > 64)
                {
                  v264 = *(v63 + 96);
                  v265 = lazy protocol witness table accessor for type Int and conformance Int(v260, v261, v262);
                  v266 = v537;
                  v264(&v541, &type metadata for Int, v265, v69, v63);
                  v267 = (*(*(*(v63 + 32) + 8) + 16))(v99, v266, v69);
                  v268 = v266;
                  v126 = v540;
                  (v518)(v268, v69);
                  v202 = v516;
                  if (v267)
                  {
                    goto LABEL_236;
                  }

LABEL_154:
                  v375 = v99;
                  v376 = v535;
                  if (v535)(v69, v63) <= 64 && ((v376)(v69, v63) != 64 || (v534(v69, v63)))
                  {
                    goto LABEL_164;
                  }

                  v541 = 0x7FFFFFFFFFFFFFFFLL;
                  v377 = v534(v69, v63);
                  v378 = (v376)(v69, v63);
                  if (v377)
                  {
                    if (v378 > 64)
                    {
                      goto LABEL_157;
                    }
                  }

                  else if (v378 >= 64)
                  {
LABEL_157:
                    v381 = *(v63 + 96);
                    v382 = lazy protocol witness table accessor for type Int and conformance Int(v378, v379, v380);
                    v383 = v537;
                    v381(&v541, &type metadata for Int, v382, v69, v63);
                    v375 = v515;
                    v384 = (*(*(*(v63 + 32) + 8) + 16))(v383, v515, v69);
                    v385 = v383;
                    v126 = v540;
                    (v518)(v385, v69);
                    v202 = v516;
                    if (v384)
                    {
                      goto LABEL_236;
                    }

LABEL_164:
                    v386 = (*(v63 + 120))(v69, v63);
                    v387 = v518;
                    result = (v518)(v375, v69);
                    v201 = (v386 + 24);
                    if (__OFADD__(v386, 24))
                    {
                      __break(1u);
LABEL_242:
                      if (__clz(__rbit32(LOWORD(v5) & 0x3FF | 0x10000)) >= __clz(__rbit32(v518 | 0x10000)))
                      {
                        v218 = v5;
                      }

                      else
                      {
                        v218 = v4;
                      }

                      goto LABEL_84;
                    }

                    v387(v126, v69);
                    v388 = v532;
                    v389 = *(v532 + 17);
                    v390 = v538;
                    v534 = (v532 + 136);
                    v535 = v389;
                    v391 = (v389)(v538, v532);
                    v69 = v530;
                    v539 = *(v388 + 15);
                    (v539)(v390, v388);
                    v392 = v522;
                    v393 = (*(v528 + 144))(v522);
                    v540 = *(v519 + 8);
                    (v540)(v69, v392);
                    v273 = &v201[-v391 - v393];
                    v394 = (*(v529 + 46))(v390);
                    v537 = v273;
                    v533 = v201;
                    if (v394)
                    {
                      v137 = v528;
                      if (v201 < -16 || v201 > 16)
                      {
                        goto LABEL_168;
                      }

                      if ((v201 & 0x8000000000000000) != 0)
                      {
                        goto LABEL_248;
                      }

                      if (v201 == 16)
                      {
                        goto LABEL_168;
                      }

                      LODWORD(v526) = 1 << v201;
                    }

                    else
                    {
                      LODWORD(v526) = 0;
                      v137 = v528;
                    }

LABEL_177:
                    if ((v273 & 0x8000000000000000) == 0)
                    {
LABEL_178:
                      (v539)(v538, v532);
                      v414 = v137[8];
                      v201 = v522;
                      if ((v414)(v522, v137) & 1) == 0 || (v415 = v531, v416 = v527, v417 = swift_getAssociatedConformanceWitness(v531, v201, v527, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral), v418 = v520, (*(v417 + 8))(&qword_18071E0A8, 256, v416, v417), (v415[3])(v418, v201, v415), LOBYTE(v415) = (*(*(v137[4] + 1) + 32))(v202, v69, v201), (v540)(v69, v201), (v415))
                      {
                        v419 = v137[16];
                        if ((v419)(v201, v137) > 15)
                        {
                          LOWORD(v541) = -1;
                          v420 = (v414)(v201, v137);
                          v421 = (v419)(v201, v137);
                          if (v420)
                          {
                            v424 = v530;
                            if (v421 > 16)
                            {
                              v137 = v528;
                              v425 = *(v528 + 96);
                              v426 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v421, v422, v423);
                              goto LABEL_186;
                            }

                            v429 = v531;
                            v201 = v522;
                            v430 = v527;
                            v431 = swift_getAssociatedConformanceWitness(v531, v522, v527, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
                            v432 = v520;
                            (*(v431 + 8))(&qword_18071E0A8, 256, v430, v431);
                            (v429[3])(v432, v201, v429);
                            v137 = v528;
                            LOBYTE(v429) = (*(*(*(v528 + 32) + 8) + 40))(v202, v424, v201);
                            (v540)(v424, v201);
                            if (v429)
                            {
                              (v137[15])(v201, v137);
                            }
                          }

                          else
                          {
                            if (v421 > 16)
                            {
                              v137 = v528;
                              v425 = *(v528 + 96);
                              v426 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v421, v422, v423);
                              v424 = v530;
LABEL_186:
                              v201 = v522;
                              v425(&v541, &type metadata for UInt16, v426, v522, v137);
                              v427 = (*(*(v137[4] + 1) + 16))(v424, v202, v201);
                              (v540)(v424, v201);
                              if (v427)
                              {
                                goto LABEL_236;
                              }

                              goto LABEL_198;
                            }

                            v137 = v528;
                            v201 = v522;
                            (*(v528 + 120))(v522, v528);
                          }
                        }

LABEL_198:
                        v433 = (v137[15])(v201, v137);
                        (v540)(v202, v201);
                        if (v537 < 0x10)
                        {
                          v434 = v433 << v537;
                        }

                        else
                        {
                          v434 = 0;
                        }

                        goto LABEL_205;
                      }

LABEL_236:
                      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
                    }

                    while (1)
                    {
                      v395 = (v539)(v538, v532);
                      if (!__OFSUB__(0, v273))
                      {
                        break;
                      }

LABEL_247:
                      __break(1u);
LABEL_248:
                      if (v201 != -16)
                      {
                        LODWORD(v526) = 0;
                        goto LABEL_177;
                      }

LABEL_168:
                      LODWORD(v526) = 0;
                      if ((v273 & 0x8000000000000000) == 0)
                      {
                        goto LABEL_178;
                      }
                    }

                    v541 = -v273;
                    v398 = v137[30];
                    v399 = lazy protocol witness table accessor for type Int and conformance Int(v395, v396, v397);
                    v400 = v504;
                    v201 = v522;
                    (v398)(v69, &v541, &type metadata for Int, v399, v522, v137);
                    (v540)(v69, v201);
                    v401 = v137[8];
                    if ((v401)(v201, v137))
                    {
                      v402 = v531;
                      v403 = v527;
                      v404 = swift_getAssociatedConformanceWitness(v531, v201, v527, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
                      v405 = v520;
                      (*(v404 + 8))(&qword_18071E0A8, 256, v403, v404);
                      (v402[3])(v405, v201, v402);
                      LOBYTE(v402) = (*(*(v137[4] + 1) + 32))(v400, v69, v201);
                      (v540)(v69, v201);
                      if ((v402 & 1) == 0)
                      {
                        goto LABEL_236;
                      }
                    }

                    v406 = v137[16];
                    if ((v406)(v201, v137) > 15)
                    {
                      LOWORD(v541) = -1;
                      v407 = (v401)(v201, v137);
                      v408 = (v406)(v201, v137);
                      if (v407)
                      {
                        v411 = v530;
                        if (v408 <= 16)
                        {
                          v435 = v531;
                          v201 = v522;
                          v436 = v527;
                          v437 = swift_getAssociatedConformanceWitness(v531, v522, v527, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
                          v438 = v520;
                          (*(v437 + 8))(&qword_18071E0A8, 256, v436, v437);
                          (v435[3])(v438, v201, v435);
                          v137 = v528;
                          LOBYTE(v435) = (*(*(*(v528 + 32) + 8) + 40))(v400, v411, v201);
                          (v540)(v411, v201);
                          if (v435)
                          {
                            (v137[15])(v201, v137);
                          }

                          goto LABEL_204;
                        }

                        v137 = v528;
                        v412 = *(v528 + 96);
                        v413 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v408, v409, v410);
                      }

                      else
                      {
                        if (v408 <= 16)
                        {
                          v137 = v528;
                          v201 = v522;
                          (*(v528 + 120))(v522, v528);
                          goto LABEL_204;
                        }

                        v137 = v528;
                        v412 = *(v528 + 96);
                        v413 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v408, v409, v410);
                        v411 = v530;
                      }

                      v201 = v522;
                      v412(&v541, &type metadata for UInt16, v413, v522, v137);
                      v428 = (*(*(v137[4] + 1) + 16))(v411, v400, v201);
                      (v540)(v411, v201);
                      if (v428)
                      {
                        goto LABEL_236;
                      }
                    }

LABEL_204:
                    v434 = (v137[15])(v201, v137);
                    (v540)(v400, v201);
LABEL_205:
                    v362 = v538;
                    v363 = v535;
                    v365 = 0;
                    v335 = v526 | v434;
                    v364 = v532;
                    v361 = v533;
                    goto LABEL_206;
                  }

                  v375 = v515;
                  (*(v63 + 120))(v69, v63);
                  v202 = v516;
                  goto LABEL_164;
                }

                v372 = v525;
                v511(&qword_18071E0A8, 256);
                v373 = v537;
                (v506)(v372, v69, v526);
                v374 = (*(*(*(v63 + 32) + 8) + 16))(v99, v373, v69);
                (v518)(v373, v69);
                v202 = v516;
                if (v374)
                {
                  goto LABEL_236;
                }
              }

LABEL_153:
              (*(v63 + 120))(v69, v63);
              goto LABEL_154;
            }
          }

          else if (v236 < 64)
          {
            goto LABEL_86;
          }

          v222(v223, v69);
          v202 = v516;
          goto LABEL_96;
        }

        v155 = v128(v69, v63);
        v156 = (v535)(v69, v63);
        if (v155)
        {
          if (v156 > 64)
          {
            v541 = -24;
            v159 = *(v63 + 96);
            v160 = lazy protocol witness table accessor for type Int and conformance Int(v156, v157, v158);
            v161 = v537;
            v159(&v541, &type metadata for Int, v160, v69, v63);
            v162 = (*(*(*(v63 + 32) + 8) + 16))(v86, v161, v69);
            v134 = v518;
            (v518)(v161, v69);
            v134(v86, v69);
            v126 = v540;
            if (v162)
            {
              goto LABEL_72;
            }

            goto LABEL_75;
          }

          v176 = v525;
          v511(&qword_18071E0A8, 256);
          v177 = v537;
          (v506)(v176, v69, v526);
          v178 = (*(*(*(v63 + 32) + 8) + 16))(v86, v177, v69);
          v179 = v177;
          v134 = v518;
          (v518)(v179, v69);
          if (v178)
          {
            v134(v86, v69);
            v126 = v540;
            goto LABEL_72;
          }

          v175 = (*(v63 + 120))(v69, v63);
          v134(v86, v69);
        }

        else
        {
          if (v156 >= 64)
          {
            (v518)(v86, v69);
            v126 = v540;
            goto LABEL_75;
          }

          v175 = (*(v63 + 120))(v69, v63);
          v134 = v518;
          (v518)(v86, v69);
        }

        v126 = v540;
        if (v175 >= -24)
        {
          goto LABEL_75;
        }

        goto LABEL_72;
      }

      v108 = *(v63 + 96);
      v109 = lazy protocol witness table accessor for type Int and conformance Int(v96, v97, v98);
      v110 = v537;
      v108(&v541, &type metadata for Int, v109, v69, v63);
      v92 = v540;
      v111 = (*(*(*(v63 + 32) + 8) + 16))(v540, v110, v69);
      (*(v539 + 8))(v110, v69);
      v99 = v93;
      if (v111)
      {
        goto LABEL_17;
      }

LABEL_21:
      v541 = 15;
      v135 = v534;
      v136 = v534(v69, v63);
      v137 = (v63 + 128);
      v138 = (v535)(v69, v63);
      if (v136)
      {
        if (v138 > 64)
        {
          goto LABEL_23;
        }
      }

      else if (v138 > 63)
      {
LABEL_23:
        v141 = *(v63 + 96);
        v142 = lazy protocol witness table accessor for type Int and conformance Int(v138, v139, v140);
        v143 = v537;
        v141(&v541, &type metadata for Int, v142, v69, v63);
        v92 = v540;
        v144 = (*(*(*(v63 + 32) + 8) + 16))(v143, v540, v69);
        (*(v539 + 8))(v143, v69);
        if ((v144 & 1) == 0)
        {
          goto LABEL_24;
        }

LABEL_30:
        (*(v539 + 8))(v92, v69);
        if ((*(v99 + 21))(v538, v99))
        {
          result = 0;
          v154 = -1024;
        }

        else
        {
          result = 0;
          v154 = 31744;
        }

        goto LABEL_74;
      }

      if ((*(v63 + 120))(v69, v63) <= 15)
      {
LABEL_24:
        v145 = v135(v69, v63);
        v529 = v99;
        if (v145)
        {
          v146 = (v535)(v69, v63);
          if (v146 >= 64)
          {
            v541 = 0;
            v149 = *(v63 + 96);
            v150 = lazy protocol witness table accessor for type Int and conformance Int(v146, v147, v148);
            v151 = v537;
            v149(&v541, &type metadata for Int, v150, v69, v63);
            v92 = v540;
            v152 = (*(*(*(v63 + 32) + 8) + 16))(v540, v151, v69);
            (*(v539 + 8))(v151, v69);
            if ((v152 & 1) == 0)
            {
              goto LABEL_52;
            }

LABEL_60:
            v201 = v506;
            (*(*(AssociatedConformanceWitness + 16) + 16))(v92, v69);
            v202 = v135;
            v203 = *(v539 + 8);
            v539 += 8;
            v203(v92, v69);
            if ((v202)(v69, v63))
            {
              v204 = v526;
              v205 = v524;
              v206 = swift_getAssociatedConformanceWitness(v526, v69, v524, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
              v207 = v525;
              (*(v206 + 8))(&qword_18071E0A8, 256, v205, v206);
              v202 = v537;
              (v204[3])(v207, v69, v204);
              LOBYTE(v205) = (*(*(*(v63 + 32) + 8) + 32))(v201, v202, v69);
              v203(v202, v69);
              if ((v205 & 1) == 0)
              {
                goto LABEL_236;
              }
            }

            v208 = v535;
            if ((v535)(v69, v63) > 63)
            {
              v541 = -1;
              v202 = v534(v69, v63);
              v209 = (v208)(v69, v63);
              if (v202)
              {
                if (v209 <= 64)
                {
                  v137 = v526;
                  v212 = v524;
                  v213 = swift_getAssociatedConformanceWitness(v526, v69, v524, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
                  v214 = v525;
                  (*(v213 + 8))(&qword_18071E0A8, 256, v212, v213);
                  v202 = v537;
                  (v137[3])(v214, v69, v137);
                  v201 = v506;
                  LOBYTE(v212) = (*(*(*(v63 + 32) + 8) + 40))(v506, v202, v69);
                  v203(v202, v69);
                  if (v212)
                  {
                    (*(v63 + 120))(v69, v63);
                  }

                  goto LABEL_115;
                }
              }

              else if (v209 <= 64)
              {
                v201 = v506;
                (*(v63 + 120))(v69, v63);
                goto LABEL_115;
              }

              v202 = v63 + 96;
              v137 = *(v63 + 96);
              v269 = lazy protocol witness table accessor for type UInt and conformance UInt(v209, v210, v211);
              v270 = v537;
              (v137)(&v541, &type metadata for UInt, v269, v69, v63);
              v201 = v506;
              v271 = (*(*(*(v63 + 32) + 8) + 16))(v270, v506, v69);
              v203(v270, v69);
              if (v271)
              {
                goto LABEL_236;
              }
            }

LABEL_115:
            v273 = (*(v63 + 120))(v69, v63);
            v203(v201, v69);
            v272 = (15 - v273);
            if (v273 > 0xF)
            {
              __break(1u);
              goto LABEL_246;
            }

LABEL_116:
            v525 = v272;
            v274 = v528;
            v275 = v530;
            v276 = v532;
            v277 = *(v532 + 17);
            v534 = ((v532 + 136) & 0xFFFFFFFFFFFFLL | 0x1E66000000000000);
            v535 = v277;
            v278 = v538;
            v279 = (v277)(v538, v532);
            v280 = (v276 + 120);
            v539 = *(v276 + 15);
            (v539)(v278, v276);
            v281 = v275;
            v282 = *(v274 + 144);
            v201 = v522;
            v516 = (v274 + 144);
            v515 = v282;
            v283 = (v282)(v522, v274);
            v284 = (v519 + 8);
            v540 = *(v519 + 8);
            (v540)(v281, v201);
            v537 = 10 - v279 - v283;
            LOBYTE(v279) = (*(v529 + 49))(v278);
            v285 = v531;
            v286 = v527;
            v287 = swift_getAssociatedConformanceWitness(v531, v201, v527, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v288 = *(v287 + 8);
            v533 = v284;
            v524 = (v285 + 3);
            v526 = v280;
            if (v279)
            {
              v289 = v520;
              v288(&qword_1806729C0, 512, v286, v287);
              v518 = v285[3];
              (v518)(v289, v201, v285);
              v290 = v532;
              v291 = (v535)(v278, v532);
              v292 = v517;
              (v539)(v278, v290);
              v293 = (v515)(v201, v274);
              v294 = v292;
              v295 = v540;
              v296 = (v540)(v294, v201);
              v541 = v293 + v291;
              v297 = *(v274 + 256);
              v300 = lazy protocol witness table accessor for type Int and conformance Int(v296, v298, v299);
              v301 = v511;
              v302 = v530;
              v297(v530, &v541, &type metadata for Int, v300, v201, v274);
              (v295)(v302, v201);
              v137 = v274;
              v69 = v302;
              v303 = v290;
            }

            else
            {
              v304 = v520;
              v288(&qword_18071E0A8, 256, v286, v287);
              v301 = v511;
              v518 = v285[3];
              (v518)(v304, v201, v285);
              v137 = v274;
              v69 = v530;
              v303 = v532;
              v295 = v540;
            }

            v305 = v512;
            v306 = v537;
            if ((v537 & 0x8000000000000000) == 0)
            {
              (v539)(v538, v303);
              (v137[28])(v301, v69, v201, v137);
              (v295)(v69, v201);
              (v295)(v301, v201);
              v526 = v137[8];
              if ((v526)(v201, v137))
              {
                v307 = v531;
                v308 = v527;
                v309 = swift_getAssociatedConformanceWitness(v531, v201, v527, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
                v310 = v520;
                (*(v309 + 8))(&qword_18071E0A8, 256, v308, v309);
                v311 = v310;
                v305 = v512;
                (v518)(v311, v201, v307);
                LOBYTE(v307) = (*(*(v137[4] + 1) + 32))(v305, v69, v201);
                (v295)(v69, v201);
                if ((v307 & 1) == 0)
                {
                  goto LABEL_236;
                }
              }

              v312 = v137[16];
              if ((v312)(v201, v137) <= 15)
              {
                goto LABEL_144;
              }

              LOWORD(v541) = -1;
              v313 = (v526)(v201, v137);
              v314 = (v312)(v201, v137);
              if (v313)
              {
                v317 = v540;
                if (v314 > 16)
                {
                  v318 = v137[12];
                  v319 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v314, v315, v316);
                  (v318)(&v541, &type metadata for UInt16, v319, v201, v137);
                  v320 = (*(*(v137[4] + 1) + 16))(v69, v305, v201);
                  (v317)(v69, v201);
                  if (v320)
                  {
                    goto LABEL_236;
                  }

                  goto LABEL_144;
                }

                v355 = v531;
                v356 = v527;
                v357 = swift_getAssociatedConformanceWitness(v531, v201, v527, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
                v358 = v520;
                (*(v357 + 8))(&qword_18071E0A8, 256, v356, v357);
                v359 = v358;
                v305 = v512;
                (v518)(v359, v201, v355);
                LOBYTE(v355) = (*(*(v137[4] + 1) + 40))(v305, v69, v201);
                (v317)(v69, v201);
                if ((v355 & 1) == 0)
                {
LABEL_144:
                  v360 = (v137[15])(v201, v137);
                  (v540)(v305, v201);
                  if (v537 < 0x10)
                  {
                    v335 = (v360 << v537);
                  }

                  else
                  {
                    v335 = 0;
                  }

                  goto LABEL_147;
                }
              }

              else if (v314 > 16)
              {
                v347 = v137[12];
                v348 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v314, v315, v316);
                (v347)(&v541, &type metadata for UInt16, v348, v201, v137);
                v349 = (*(*(v137[4] + 1) + 16))(v69, v305, v201);
                (v540)(v69, v201);
                if (v349)
                {
                  goto LABEL_236;
                }

                goto LABEL_144;
              }

              (v137[15])(v201, v137);
              goto LABEL_144;
            }

            v202 = v517;
            (v539)(v538, v303);
            (v137[28])(v301, v202, v201, v137);
            v273 = v533;
            (v295)(v202, v201);
            v321 = (v295)(v301, v201);
            if (!__OFSUB__(0, v306))
            {
              v541 = -v306;
              v324 = v137[30];
              v325 = lazy protocol witness table accessor for type Int and conformance Int(v321, v322, v323);
              v326 = v508;
              (v324)(v69, &v541, &type metadata for Int, v325, v201, v137);
              (v295)(v69, v201);
              v327 = v137[8];
              if ((v327)(v201, v137))
              {
                v328 = v531;
                v329 = v527;
                v330 = swift_getAssociatedConformanceWitness(v531, v201, v527, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
                v331 = v520;
                (*(v330 + 8))(&qword_18071E0A8, 256, v329, v330);
                v332 = v530;
                (v518)(v331, v201, v328);
                LOBYTE(v328) = (*(*(v137[4] + 1) + 32))(v508, v332, v201);
                v333 = v332;
                v326 = v508;
                (v295)(v333, v201);
                if ((v328 & 1) == 0)
                {
                  goto LABEL_236;
                }
              }

              v334 = v137[16];
              if ((v334)(v201, v137) > 15)
              {
                LOWORD(v541) = -1;
                v336 = (v327)(v201, v137);
                v337 = (v334)(v201, v137);
                if (v336)
                {
                  v340 = v540;
                  if (v337 <= 16)
                  {
                    v366 = v531;
                    v367 = v527;
                    v368 = swift_getAssociatedConformanceWitness(v531, v201, v527, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
                    v369 = v520;
                    (*(v368 + 8))(&qword_18071E0A8, 256, v367, v368);
                    v370 = v530;
                    (v518)(v369, v201, v366);
                    v371 = v508;
                    LOBYTE(v366) = (*(*(v137[4] + 1) + 40))(v508, v370, v201);
                    (v340)(v370, v201);
                    if (v366)
                    {
                      (v137[15])(v201, v137);
                    }

                    v326 = v371;
                  }

                  else
                  {
                    v341 = v137[12];
                    v342 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v337, v338, v339);
                    v343 = v530;
                    (v341)(&v541, &type metadata for UInt16, v342, v201, v137);
                    v344 = v508;
                    v345 = (*(*(v137[4] + 1) + 16))(v343, v508, v201);
                    v346 = v343;
                    v326 = v344;
                    (v340)(v346, v201);
                    if (v345)
                    {
                      goto LABEL_236;
                    }
                  }
                }

                else if (v337 <= 16)
                {
                  (v137[15])(v201, v137);
                }

                else
                {
                  v350 = v137[12];
                  v351 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v337, v338, v339);
                  v352 = v530;
                  (v350)(&v541, &type metadata for UInt16, v351, v201, v137);
                  v353 = (*(*(v137[4] + 1) + 16))(v352, v508, v201);
                  v354 = v352;
                  v326 = v508;
                  (v540)(v354, v201);
                  if (v353)
                  {
                    goto LABEL_236;
                  }
                }
              }

              v335 = (v137[15])(v201, v137);
              (v540)(v326, v201);
LABEL_147:
              v361 = 10;
              v362 = v538;
              v363 = v535;
              v364 = v532;
              v365 = v525;
LABEL_206:
              v439 = *(v529 + 21);
              v533 = v529 + 168;
              v526 = v439;
              if ((v439)(v362))
              {
                v440 = -32768;
              }

              else
              {
                v440 = 0;
              }

              v518 = v335;
              v441 = v335 & 0x3FF | ((v365 & 0x1F) << 10) | v440;
              if (v361 >= (v363)(v362, v364))
              {
                *v521 = v441;
                return 1;
              }

              LODWORD(v516) = v441;
              v442 = v531;
              v443 = v527;
              v444 = swift_getAssociatedConformanceWitness(v531, v201, v527, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
              v445 = v520;
              v525 = *(v444 + 8);
              (v525)(&qword_1806729C0, 512, v443, v444);
              v446 = v442[3];
              v447 = v530;
              v535 = v442 + 3;
              v524 = v446;
              v448 = (v446)(v445, v201, v442);
              if (!__OFSUB__(0, v537))
              {
                v541 = -v537;
                v534 = (v444 + 8);
                v451 = v528;
                v537 = v444;
                v452 = v445;
                v453 = *(v528 + 256);
                v454 = lazy protocol witness table accessor for type Int and conformance Int(v448, v449, v450);
                v453(v447, &v541, &type metadata for Int, v454, v201, v451);
                v455 = v519 + 8;
                (v540)(v447, v201);
                (v539)(v538, v364);
                v456 = v525;
                (v525)(&qword_1806729C0, 512, v443, v537);
                v457 = v510;
                v458 = v524;
                (v524)(v452, v201, v531);
                v459 = v517;
                (*(*(v509 + 8) + 40))(v523, v457, v201);
                (v540)(v457, v201);
                v460 = v513;
                (*(v451 + 192))(v447, v459, v201, v451);
                (v540)(v459, v201);
                (v540)(v447, v201);
                v456(qword_18071E0B8, 768);
                v461 = v452;
                (v458)(v452, v201, v531);
                v462 = *(v451 + 152);
                v462(v523, v459, v201, v451);
                (v540)(v459, v201);
                v463 = *(v451 + 32);
                v464 = v540;
                v465 = *(v463 + 8);
                v466 = (*(v465 + 16))(v460, v447, v201, v465);
                v539 = v455;
                (v464)(v447, v201);
                if (v466)
                {
                  (v464)(v460, v201);
                  (v464)(v523, v201);
                  result = 0;
                  *v521 = v516;
                  return result;
                }

                v4 = *&v516;
                v467 = (v526)(v538, v529);
                HIWORD(v468) = 0;
                if (v467)
                {
                  *&v468 = COERCE_SHORT_FLOAT(0) - v4;
                  v469 = v531;
                  v471 = v524;
                  v470 = v525;
                  if ((COERCE_SHORT_FLOAT(0) - v4) != COERCE_SHORT_FLOAT(31744))
                  {
                    v468 += (v468 >> 15) | 1;
                  }

                  v5 = -*&v468;
                }

                else
                {
                  v5 = v4 + COERCE_SHORT_FLOAT(0);
                  v469 = v531;
                  v471 = v524;
                  v470 = v525;
                  if (v4 != COERCE_SHORT_FLOAT(31744))
                  {
                    LOWORD(v5) += (SLOWORD(v5) >> 15) | 1;
                  }
                }

                v470(qword_18071E0B8, 768);
                v472 = v517;
                v473 = v522;
                (v471)(v461, v522, v469);
                v474 = v530;
                v475 = v523;
                v462(v523, v472, v473, v528);
                v476 = v472;
                v477 = v540;
                (v540)(v476, v473);
                (v477)(v475, v473);
                v478 = v513;
                v479 = (*(v465 + 40))(v513, v474, v473, v465);
                (v477)(v474, v473);
                (v477)(v478, v473);
                result = 0;
                if (v479)
                {
                  *v521 = v5;
                  return result;
                }

                goto LABEL_242;
              }

              __break(1u);
              goto LABEL_238;
            }

LABEL_246:
            __break(1u);
            goto LABEL_247;
          }
        }

        else
        {
          v163 = v135(v69, v63);
          v164 = (v535)(v69, v63);
          if (v163)
          {
            if (v164 > 64)
            {
              v541 = 0;
              v167 = *(v63 + 96);
              v168 = lazy protocol witness table accessor for type Int and conformance Int(v164, v165, v166);
              v169 = v537;
              v167(&v541, &type metadata for Int, v168, v69, v63);
              v92 = v540;
              v170 = (*(*(*(v63 + 32) + 8) + 16))(v540, v169, v69);
              (*(v539 + 8))(v169, v69);
              if (v170)
              {
                goto LABEL_60;
              }

              goto LABEL_52;
            }

            v180 = v526;
            v181 = v524;
            v182 = swift_getAssociatedConformanceWitness(v526, v69, v524, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v183 = v525;
            (*(v182 + 8))(&qword_18071E0A8, 256, v181, v182);
            v184 = v537;
            (v180[3])(v183, v69, v180);
            v92 = v540;
            LOBYTE(v181) = (*(*(*(v63 + 32) + 8) + 16))(v540, v184, v69);
            (*(v539 + 8))(v184, v69);
            if (v181)
            {
              goto LABEL_60;
            }
          }

          else if (v164 >= 64)
          {
            goto LABEL_52;
          }
        }

        if ((*(v63 + 120))(v69, v63) < 0)
        {
          goto LABEL_60;
        }

LABEL_52:
        v185 = v514;
        (*(v539 + 32))(v514, v92, v69);
        if (v135(v69, v63))
        {
          v186 = v526;
          v187 = v524;
          v188 = swift_getAssociatedConformanceWitness(v526, v69, v524, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
          v189 = v525;
          (*(v188 + 8))(&qword_18071E0A8, 256, v187, v188);
          v190 = v537;
          (v186[3])(v189, v69, v186);
          LOBYTE(v187) = (*(*(*(v63 + 32) + 8) + 32))(v514, v190, v69);
          v191 = v190;
          v185 = v514;
          (*(v539 + 8))(v191, v69);
          if ((v187 & 1) == 0)
          {
            goto LABEL_236;
          }
        }

        v126 = v535;
        if ((v535)(v69, v63) > 63)
        {
          v541 = -1;
          v192 = v135(v69, v63);
          v193 = v126(v69, v63);
          if (v192)
          {
            if (v193 <= 64)
            {
              v196 = v526;
              v197 = v524;
              v198 = swift_getAssociatedConformanceWitness(v526, v69, v524, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
              v126 = v525;
              (*(v198 + 8))(&qword_18071E0A8, 256, v197, v198);
              v199 = v537;
              (v196[3])(v126, v69, v196);
              v200 = v514;
              LOBYTE(v197) = (*(*(*(v63 + 32) + 8) + 40))(v514, v199, v69);
              (*(v539 + 8))(v199, v69);
              if (v197)
              {
                (*(v63 + 120))(v69, v63);
              }

              v185 = v200;
              goto LABEL_110;
            }
          }

          else if (v193 <= 64)
          {
            v185 = v514;
            (*(v63 + 120))(v69, v63);
            goto LABEL_110;
          }

          v215 = *(v63 + 96);
          v216 = lazy protocol witness table accessor for type UInt and conformance UInt(v193, v194, v195);
          v126 = v537;
          v215(&v541, &type metadata for UInt, v216, v69, v63);
          v185 = v514;
          v217 = (*(*(*(v63 + 32) + 8) + 16))(v126, v514, v69);
          (*(v539 + 8))(v126, v69);
          if (v217)
          {
            goto LABEL_236;
          }
        }

LABEL_110:
        v63 = (*(v63 + 120))(v69, v63);
        (*(v539 + 8))(v185, v69);
        v272 = (v63 + 15);
        v263 = v63 < -15;
        if (v63 >= 0xFFFFFFFFFFFFFFF1)
        {
          __break(1u);
LABEL_112:
          v202 = v516;
          if (!v263)
          {
            goto LABEL_154;
          }

          goto LABEL_153;
        }

        goto LABEL_116;
      }

      goto LABEL_30;
    }

    v100 = v94(v69, v63);
    v535 = *(v63 + 128);
    v101 = (v535)(v69, v63);
    v99 = v93;
    if (v100)
    {
      if (v101 > 64)
      {
        v104 = *(v63 + 96);
        v105 = lazy protocol witness table accessor for type Int and conformance Int(v101, v102, v103);
        v106 = v537;
        v104(&v541, &type metadata for Int, v105, v69, v63);
        v92 = v540;
        v107 = (*(*(*(v63 + 32) + 8) + 16))(v540, v106, v69);
        (*(v539 + 8))(v106, v69);
        if (v107)
        {
          goto LABEL_17;
        }

        goto LABEL_21;
      }

      v112 = v526;
      v113 = v524;
      v114 = swift_getAssociatedConformanceWitness(v526, v69, v524, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v115 = v525;
      (*(v114 + 8))(&qword_18071E0A8, 256, v113, v114);
      v116 = v537;
      (v112[3])(v115, v69, v112);
      v92 = v540;
      LOBYTE(v113) = (*(*(*(v63 + 32) + 8) + 16))(v540, v116, v69);
      (*(v539 + 8))(v116, v69);
      if (v113)
      {
        goto LABEL_17;
      }
    }

    else if (v101 >= 64)
    {
      goto LABEL_21;
    }

    if ((*(v63 + 120))(v69, v63) >= -14)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if ((v68[50])(a3, v68))
  {
    if (((v68[21])(a3, v68) & 1) == 0)
    {
LABEL_238:
      v480 = 31744;
      goto LABEL_239;
    }

    v480 = -1024;
LABEL_239:
    v481 = v480;
    goto LABEL_240;
  }

  v482 = v532;
  v483 = *(v532 + 15);
  v483(a3, v532);
  v484 = v483;
  v540 = v483;
  v485 = v507;
  (v68[12])(a3, v68);
  v484(a3, v482);
  v486 = v68;
  v487 = v535[1];
  (v487)(v485, a3);
  v529 = v486;
  v488 = v534;
  (v486[13])(a3, v486);
  (v540)(a3, v482);
  (v487)(v488, a3);
  v489 = v528;
  v490 = v510;
  v491 = v522;
  (*(v528 + 208))(v27, v23, v522, v528);
  v492 = *(v519 + 8);
  v492(v23, v491);
  v492(v27, v491);
  v493 = v517;
  (*(v489 + 184))(v490, v491, v489);
  v492(v490, v491);
  v494 = v533;
  v495 = v530;
  (*(v489 + 192))(v530, v493, v491, v489);
  v492(v493, v491);
  v492(v495, v491);
  v496 = (*(v489 + 120))(v491, v489);
  v492(v494, v491);
  v497 = v529;
  v498 = (*(v529 + 52))(a3, v529);
  v499 = (*(v497 + 21))(a3, v497);
  result = 0;
  if (v499)
  {
    v500 = 0x8000;
  }

  else
  {
    v500 = 0;
  }

  v501 = v500 & 0xFF00 | v496;
  if (v498)
  {
    v502 = 32000;
  }

  else
  {
    v502 = 32256;
  }

  *v521 = v501 | v502;
  return result;
}

uint64_t static BinaryFloatingPoint._convert<A>(from:)(char *a1, uint64_t a2, Class *a3, char *a4, uint64_t a5, swift *a6)
{
  v798 = a2;
  v764 = a1;
  v774 = *(a4 - 1);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v772 = &v707 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v12);
  v768 = &v707 - v13;
  swift_getAssociatedTypeWitness(255, v15, v14, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v17 = v16;
  v773 = *(swift_getAssociatedConformanceWitness(a6, a4, v16, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger) + 8);
  v717 = *(v773 + 24);
  v770 = *(v717 + 16);
  swift_getAssociatedTypeWitness(0, v770, v17, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v769 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v756 = &v707 - v20;
  swift_getAssociatedTypeWitness(255, a5, a3, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v22 = v21;
  v746 = *(swift_getAssociatedConformanceWitness(a5, a3, v21, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger) + 8);
  v721 = *(v746[3] + 16);
  swift_getAssociatedTypeWitness(0, v721, v22, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v720 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v722 = &v707 - v25;
  v800 = swift_checkMetadataState(0, v17);
  v771 = *(v800 - 1);
  v27 = MEMORY[0x1EEE9AC00](v800, v26);
  v761 = &v707 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v784 = &v707 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v785 = (&v707 - v34);
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v718 = &v707 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v755 = &v707 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39, v41);
  v739 = &v707 - v43;
  v45 = MEMORY[0x1EEE9AC00](v42, v44);
  v733 = (&v707 - v46);
  v48 = MEMORY[0x1EEE9AC00](v45, v47);
  v758 = &v707 - v49;
  MEMORY[0x1EEE9AC00](v48, v50);
  v781 = &v707 - v51;
  swift_getAssociatedTypeWitness(255, a5, a3, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawExponent);
  v53 = v52;
  v731 = *(swift_getAssociatedConformanceWitness(a5, a3, v52, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger) + 8);
  v732 = *(v731 + 3);
  v726 = *(v732 + 16);
  swift_getAssociatedTypeWitness(0, v726, v53, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v725 = v54;
  MEMORY[0x1EEE9AC00](v54, v55);
  v724 = &v707 - v56;
  swift_getTupleTypeMetadata2(0, a3, &type metadata for Bool, 0, 0);
  v59 = MEMORY[0x1EEE9AC00](v57 - 8, v58);
  v707 = &v707 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59, v61);
  v708 = &v707 - v62;
  v63 = *(a5 + 16);
  v712 = *(v63 + 16);
  v742 = *(*(v712 + 8) + 16);
  swift_getAssociatedTypeWitness(0, v742, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v740 = v64;
  MEMORY[0x1EEE9AC00](v64, v65);
  v741 = &v707 - v66;
  v753 = a5;
  v715 = *(a5 + 8);
  swift_getAssociatedTypeWitness(0, v715, a3, &protocol requirements base descriptor for ExpressibleByFloatLiteral, associated type descriptor for ExpressibleByFloatLiteral.FloatLiteralType);
  v713 = v67;
  MEMORY[0x1EEE9AC00](v67, v68);
  v714 = &v707 - v69;
  swift_getAssociatedTypeWitness(255, v63, a3, &protocol requirements base descriptor for FloatingPoint, associated type descriptor for FloatingPoint.Exponent);
  v71 = v70;
  v790 = v63;
  v797 = *(swift_getAssociatedConformanceWitness(v63, a3, v70, &protocol requirements base descriptor for FloatingPoint, associated conformance descriptor for FloatingPoint.FloatingPoint.Exponent: SignedInteger) + 8);
  v723 = *(v797 + 24);
  v736 = *(v723 + 16);
  swift_getAssociatedTypeWitness(0, v736, v71, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v734 = v72;
  MEMORY[0x1EEE9AC00](v72, v73);
  v735 = &v707 - v74;
  v786 = a6;
  v75 = *(a6 + 2);
  swift_getAssociatedTypeWitness(255, v75, a4, &protocol requirements base descriptor for FloatingPoint, associated type descriptor for FloatingPoint.Exponent);
  v77 = v76;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v75, a4, v76, &protocol requirements base descriptor for FloatingPoint, associated conformance descriptor for FloatingPoint.FloatingPoint.Exponent: SignedInteger);
  v783 = *(AssociatedConformanceWitness + 8);
  v745 = *(v783 + 24);
  v767 = *(v745 + 16);
  swift_getAssociatedTypeWitness(0, v767, v77, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v765 = v78;
  MEMORY[0x1EEE9AC00](v78, v79);
  v766 = &v707 - v80;
  v81 = swift_checkMetadataState(0, v71);
  v82 = *(v81 - 1);
  v84 = MEMORY[0x1EEE9AC00](v81, v83);
  v747 = &v707 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = MEMORY[0x1EEE9AC00](v84, v86);
  v727 = &v707 - v88;
  v90 = MEMORY[0x1EEE9AC00](v87, v89);
  v792 = &v707 - v91;
  v93 = MEMORY[0x1EEE9AC00](v90, v92);
  v782 = &v707 - v94;
  MEMORY[0x1EEE9AC00](v93, v95);
  v795 = &v707 - v96;
  v751 = swift_checkMetadataState(0, v22);
  v757 = *(v751 - 1);
  v98 = MEMORY[0x1EEE9AC00](v751, v97);
  v779 = &v707 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = MEMORY[0x1EEE9AC00](v98, v100);
  v709 = &v707 - v102;
  v104 = MEMORY[0x1EEE9AC00](v101, v103);
  v775 = &v707 - v105;
  v107 = MEMORY[0x1EEE9AC00](v104, v106);
  v710 = &v707 - v108;
  v110 = MEMORY[0x1EEE9AC00](v107, v109);
  v776 = &v707 - v111;
  v113 = MEMORY[0x1EEE9AC00](v110, v112);
  v754 = &v707 - v114;
  v116 = MEMORY[0x1EEE9AC00](v113, v115);
  v728 = &v707 - v117;
  v119 = MEMORY[0x1EEE9AC00](v116, v118);
  v719 = &v707 - v120;
  v122 = MEMORY[0x1EEE9AC00](v119, v121);
  v759 = &v707 - v123;
  v125 = MEMORY[0x1EEE9AC00](v122, v124);
  v744 = &v707 - v126;
  MEMORY[0x1EEE9AC00](v125, v127);
  v748 = &v707 - v128;
  v763 = swift_checkMetadataState(0, v53);
  v749 = *(v763 - 1);
  v130 = MEMORY[0x1EEE9AC00](v763, v129);
  v730 = &v707 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = MEMORY[0x1EEE9AC00](v130, v132);
  v752 = &v707 - v134;
  v136 = MEMORY[0x1EEE9AC00](v133, v135);
  v729 = &v707 - v137;
  v139 = MEMORY[0x1EEE9AC00](v136, v138);
  v762 = &v707 - v140;
  v799 = a3;
  v778 = *(a3 - 1);
  v142 = MEMORY[0x1EEE9AC00](v139, v141);
  v760 = &v707 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = MEMORY[0x1EEE9AC00](v142, v144);
  v147 = &v707 - v146;
  v149 = MEMORY[0x1EEE9AC00](v145, v148);
  v151 = &v707 - v150;
  v153 = MEMORY[0x1EEE9AC00](v149, v152);
  v716 = &v707 - v154;
  v156 = MEMORY[0x1EEE9AC00](v153, v155);
  v158 = &v707 - v157;
  v160 = MEMORY[0x1EEE9AC00](v156, v159);
  v743 = &v707 - v161;
  MEMORY[0x1EEE9AC00](v160, v162);
  v794 = &v707 - v163;
  v164 = a4;
  v777 = swift_checkMetadataState(0, v77);
  v791 = *(v777 - 1);
  v166 = MEMORY[0x1EEE9AC00](v777, v165);
  v738 = &v707 - ((v167 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = MEMORY[0x1EEE9AC00](v166, v168);
  v750 = &v707 - v170;
  v172 = MEMORY[0x1EEE9AC00](v169, v171);
  v793 = &v707 - v173;
  MEMORY[0x1EEE9AC00](v172, v174);
  v796 = &v707 - v175;
  if ((*(v75 + 384))(a4, v75))
  {
    if ((*(v75 + 168))(a4, v75))
    {
      v625 = v715;
      v626 = v799;
      v627 = v713;
      v628 = swift_getAssociatedConformanceWitness(v715, v799, v713, &protocol requirements base descriptor for ExpressibleByFloatLiteral, associated conformance descriptor for ExpressibleByFloatLiteral.ExpressibleByFloatLiteral.FloatLiteralType: _ExpressibleByBuiltinFloatLiteral);
      v629 = v714;
      (*(v628 + 8))(v627, v628, -0.0);
    }

    else
    {
      v625 = v742;
      v626 = v799;
      v634 = v740;
      v635 = swift_getAssociatedConformanceWitness(v742, v799, v740, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v629 = v741;
      (*(v635 + 8))(&qword_18071E0A8, 256, v634, v635);
    }

    (v625[3])(v629, v626, v625);
    return 1;
  }

  v780 = v771;
  v176 = (*(v75 + 376))(a4, v75);
  v788 = v75;
  v789 = a4;
  if ((v176 & 1) == 0)
  {
    if (((*(v75 + 400))(a4, v75) & 1) == 0)
    {
      v636 = v786;
      v637 = *(v786 + 120);
      v637(v164, v786);
      v638 = *(v75 + 96);
      v795 = v151;
      v639 = v768;
      v638(v164, v75);
      v637(v164, v636);
      v797 = *(v774 + 8);
      (v797)(v639, v164);
      v640 = v772;
      (*(v75 + 104))(v164, v75);
      v641 = v761;
      v637(v164, v636);
      (v797)(v640, v164);
      v642 = v773;
      v643 = v739;
      v644 = v784;
      v645 = v800;
      (*(v773 + 208))(v784, v641, v800, v773);
      v646 = *(v780 + 8);
      v646(v641, v645);
      v646(v644, v645);
      v647 = v642;
      v648 = *(v642 + 184);
      v649 = v758;
      v650 = v647;
      v648(v643, v645);
      v646(v643, v645);
      v651 = v650;
      v652 = *(v650 + 192);
      v653 = v781;
      v652(v781, v649, v645, v651);
      v646(v649, v645);
      v646(v653, v645);
      v654 = v790;
      v655 = v743;
      v656 = v799;
      (*(v790 + 120))(v799, v790);
      v657 = (v753 + 120);
      v658 = *(v753 + 120);
      v658(v656);
      v660 = v778 + 8;
      v659 = *(v778 + 8);
      v659(v655, v656);
      v661 = v795;
      v786 = *(v654 + 96);
      v787 = (v654 + 96);
      (v786)(v656, v654);
      v662 = v753;
      (v658)(v656, v753);
      v659(v661, v656);
      v783 = *(v654 + 104);
      v784 = (v654 + 104);
      (v783)(v656, v654);
      v663 = v709;
      v793 = v658;
      v794 = v657;
      (v658)(v656, v662);
      v796 = v659;
      v797 = v660;
      v659(v147, v656);
      v664 = v746;
      v665 = v710;
      v666 = v775;
      v667 = v751;
      v791 = v746[26];
      v792 = (v746 + 26);
      (v791)(v775, v663, v751, v746);
      v668 = *(v757 + 8);
      v668(v663, v667);
      v668(v666, v667);
      v669 = v776;
      (v664[23])(v665, v667, v664);
      v668(v665, v667);
      v670 = v664[24];
      v671 = v754;
      v672 = v759;
      v670(v759, v669, v667, v664);
      v668(v669, v667);
      v668(v672, v667);
      (v664[12])(v785, v800, v773, v667, v664);
      v670(v672, v671, v667, v664);
      v673 = v672;
      v674 = v753;
      v668(v673, v667);
      v668(v671, v667);
      v675 = v788;
      v676 = v789;
      LOBYTE(v663) = (*(v788 + 416))(v789, v788);
      LODWORD(v798) = (*(v675 + 168))(v676, v675);
      v800 = (v674 + 56);
      v677 = v743;
      if (v663)
      {
        v678 = v790;
        v679 = v783;
        (v783)(v656, v790);
        (*(v674 + 112))(v656, v674);
        (v796)(v677, v656);
        v680 = v795;
        v679(v656, v678);
      }

      else
      {
        v681 = v790;
        v682 = v786;
        (v786)(v656, v790);
        (*(v674 + 112))(v656, v674);
        (v796)(v677, v656);
        v680 = v795;
        v682(v656, v681);
      }

      v683 = v776;
      (v793)(v656, v674);
      (v796)(v680, v656);
      v684 = v759;
      v685 = v779;
      v686 = v751;
      (v791)(v779, v683, v751, v746);
      v668(v683, v686);
      v668(v685, v686);
      v687 = v760;
      (*(v674 + 56))(v798 & 1, v752, v684, v656, v674);
      (*(v778 + 32))(v764, v687, v656);
      return 0;
    }

    v630 = (*(v75 + 168))(a4, v75);
    v631 = *(v790 + 112);
    v632 = v799;
    v633 = v743;
    if (v630)
    {
      v631(v799);
      (*(v712 + 16))(v633, v632);
      (*(v778 + 8))(v633, v632);
    }

    else
    {
      v631(v799);
    }

    return 1;
  }

  v787 = v82;
  v754 = v158;
  v177 = v81;
  v178 = v796;
  (*(v75 + 176))(v164, v75);
  v179 = v790;
  v180 = v794;
  v181 = v799;
  (*(v790 + 152))(v799, v790);
  v182 = *(v179 + 176);
  v761 = (v179 + 176);
  v760 = v182;
  (v182)(v181, v179);
  v183 = *(v778 + 8);
  v772 = (v778 + 8);
  v768 = v183;
  (v183)(v180, v181);
  v184 = v783;
  v185 = (v783 + 64);
  v186 = *(v783 + 64);
  v187 = v777;
  LODWORD(v181) = v186(v777, v783);
  v188 = v797;
  v784 = *(v797 + 64);
  v785 = (v797 + 64);
  v189 = (v784)(v177, v797);
  v775 = v186;
  v776 = v185;
  if (((v181 ^ v189) & 1) == 0)
  {
    v774 = *(v184 + 128);
    v199 = (v774)(v187, v184);
    v779 = *(v188 + 128);
    v197 = v178;
    v200 = v188;
    if (v199 >= (v779)(v177, v188))
    {
      v194 = v793;
      (*(v184 + 96))(v795, v177, v188, v187, v184);
      v216 = (*(*(*(v184 + 32) + 8) + 16))(v178, v194, v187);
      (*(v791 + 1))(v194, v187);
      v195 = v187;
      v196 = v184;
      if (v216)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v201 = v793;
      (*(v791 + 2))(v793, v197, v187);
      v202 = *(v188 + 96);
      v195 = v187;
      v203 = v782;
      v202(v201, v187, v184, v177, v200);
      v204 = v795;
      v205 = (*(*(*(v200 + 32) + 8) + 16))(v203, v795, v177);
      v206 = v787[1];
      (v206)(v203, v177);
      (v206)(v204, v177);
      v197 = v796;
      v196 = v184;
      v194 = v201;
      if (v205)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_39;
  }

  v190 = v186(v187, v184);
  v774 = *(v184 + 128);
  v191 = (v774)(v187, v184);
  v192 = *(v188 + 128);
  v193 = v192(v177, v188);
  v779 = v192;
  if ((v190 & 1) == 0)
  {
    v207 = v793;
    if (v191 >= v193)
    {
      v195 = v777;
      v222 = v736;
      v223 = v734;
      v224 = swift_getAssociatedConformanceWitness(v736, v177, v734, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v225 = v735;
      (*(v224 + 8))(&qword_18071E0A8, 256, v223, v224);
      v226 = v782;
      (v222[3])(v225, v177, v222);
      v227 = v797;
      v228 = v795;
      LOBYTE(v223) = (*(*(*(v797 + 32) + 8) + 40))(v795, v226, v177);
      v229 = v787[1];
      (v229)(v226, v177);
      if ((v223 & 1) == 0)
      {
        (v229)(v228, v177);
        v197 = v796;
        v196 = v783;
        goto LABEL_39;
      }

      v196 = v783;
      (*(v783 + 96))(v228, v177, v227, v195, v783);
      v197 = v796;
      v230 = (*(*(*(v196 + 32) + 8) + 16))(v796, v207, v195);
      (*(v791 + 1))(v207, v195);
      v194 = v207;
      if (v230)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v197 = v796;
      v195 = v777;
      (*(v791 + 2))(v793, v796, v777);
      v208 = v797;
      v209 = v782;
      v210 = v207;
      v211 = v783;
      (*(v797 + 96))(v210, v195, v783, v177, v797);
      v212 = *(*(*(v208 + 32) + 8) + 16);
      v213 = v795;
      v214 = v212(v209, v795, v177);
      v215 = v787[1];
      (v215)(v209, v177);
      (v215)(v213, v177);
      v196 = v211;
      v194 = v793;
      if (v214)
      {
        goto LABEL_22;
      }
    }

LABEL_39:
    v281 = v197;
    v282 = v790;
    v283 = v799;
    (*(v790 + 120))(v799, v790);
    v284 = v747;
    (v760)(v283, v282);
    v285 = v784;
    v286 = (v784)(v177, v797);
    v287 = v196;
    if ((v286 ^ (v775)(v195, v196)))
    {
      v288 = v797;
      v289 = (v285)(v177, v797);
      v290 = (v779)(v177, v288);
      v291 = (v774)(v195, v287);
      v292 = v788;
      v293 = v284;
      v294 = v177;
      if (v289)
      {
        if (v291 < v290)
        {
          v295 = v791;
          v296 = v793;
          v297 = v796;
          v298 = v177;
          v299 = v195;
          (*(v791 + 2))(v793, v796, v195);
          v300 = v797;
          v301 = v782;
          v302 = v195;
          v303 = v783;
          (*(v797 + 96))(v296, v302, v783, v298, v797);
          LODWORD(v797) = (*(*(*(v300 + 32) + 8) + 16))(v284, v301, v298);
          v304 = v787[1];
          (v304)(v301, v298);
          v305 = v284;
          v306 = v296;
          v287 = v303;
          v195 = v299;
          (v304)(v305, v298);
          v292 = v788;
          if ((v797 & 1) == 0)
          {
            goto LABEL_83;
          }

          goto LABEL_61;
        }

        v335 = v736;
        v336 = v734;
        v337 = swift_getAssociatedConformanceWitness(v736, v177, v734, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v338 = v735;
        (*(v337 + 8))(&qword_18071E0A8, 256, v336, v337);
        v339 = v782;
        (v335[3])(v338, v177, v335);
        v340 = v797;
        LOBYTE(v336) = (*(*(*(v797 + 32) + 8) + 16))(v284, v339, v177);
        v341 = v787[1];
        (v341)(v339, v177);
        v297 = v796;
        if (v336)
        {
          (v341)(v284, v177);
          v292 = v788;
          v295 = v791;
          goto LABEL_61;
        }

        v287 = v783;
        v306 = v793;
        (*(v783 + 96))(v293, v177, v340, v195, v783);
LABEL_46:
        v310 = (*(*(*(v287 + 32) + 8) + 16))(v306, v297, v195);
        v295 = v791;
        (*(v791 + 1))(v306, v195);
        v292 = v788;
        if ((v310 & 1) == 0)
        {
          goto LABEL_83;
        }

        goto LABEL_61;
      }

      if (v290 < v291)
      {
        v306 = v793;
        (*(v287 + 96))(v293, v177, v797, v195, v287);
        v297 = v796;
        v311 = (*(*(*(v287 + 32) + 8) + 16))(v306, v796, v195);
        v295 = v791;
        (*(v791 + 1))(v306, v195);
        if ((v311 & 1) == 0)
        {
LABEL_83:
          v383 = v775;
          if ((v775)(v195, v287))
          {
            v384 = v297;
            v385 = (v774)(v195, v287);
            v388 = v791;
            if (v385 < 64)
            {
              v389 = (*(v287 + 120))(v195, v287);
              v390 = v742;
              v391 = v741;
              if (v389 < 0)
              {
                goto LABEL_107;
              }

LABEL_106:
              v428 = v799;
              v429 = v740;
              v430 = swift_getAssociatedConformanceWitness(v390, v799, v740, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
              (*(v430 + 8))(&qword_1806729C0, 512, v429, v430);
              v431 = v743;
              (v390[3])(v391, v428, v390);
              v432 = v753;
              v433 = v752;
              (*(v753 + 112))(v428, v753);
              v434 = v431;
              v435 = v768;
              (v768)(v434, v428);
              v436 = v793;
              v388[4](v793, v384, v195);
              v437 = v730;
              v438 = v195;
              v439 = v763;
              (*(v731 + 11))(v436, v438, v287, v763);
              v440 = v729;
              (*(*(v732 + 8) + 24))(v433, v437, v439);
LABEL_108:
              v447 = v749;
              v448 = *(v749 + 8);
              v448(v437, v439);
              v448(v433, v439);
              (*(v447 + 32))(v762, v440, v439);
              v449 = v794;
              v450 = (*(v432 + 136))(v428, v432);
              v435(v449, v428);
              v451 = v786;
              v452 = (v786 + 136);
              v453 = v789;
              v794 = *(v786 + 136);
              v795 = (v794)(v789, v786);
              v454 = v781;
              v797 = *(v451 + 120);
              (v797)(v453, v451);
              v455 = v800;
              v785 = *(v773 + 144);
              v456 = v785(v800);
              v457 = *(v780 + 8);
              v780 += 8;
              v457(v454, v455);
              v792 = v450;
              v795 = v450 - v795 - v456;
              LOBYTE(v450) = (*(v788 + 392))(v453);
              v458 = v770;
              v459 = v769;
              v460 = swift_getAssociatedConformanceWitness(v770, v455, v769, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
              v461 = *(v460 + 8);
              v787 = v458 + 3;
              v796 = v457;
              v793 = v452;
              v791 = (v451 + 120);
              if (v450)
              {
                v462 = v756;
                v461(&qword_1806729C0, 512, v459, v460);
                (v458[3])(v462, v455, v458);
                v463 = v786;
                v464 = (v794)(v453, v786);
                v465 = v758;
                (v797)(v453, v463);
                v466 = v773;
                v467 = (v785)(v455, v773);
                v468 = v796;
                v469 = (v796)(v465, v455);
                v801 = v467 + v464;
                v470 = *(v466 + 256);
                v473 = lazy protocol witness table accessor for type Int and conformance Int(v469, v471, v472);
                v474 = v733;
                v475 = v781;
                v470(v781, &v801, &type metadata for Int, v473, v455, v466);
                (v468)(v475, v455);
                v476 = v746;
              }

              else
              {
                v477 = v756;
                v461(&qword_18071E0A8, 256, v459, v460);
                v474 = v733;
                (v458[3])(v477, v455, v458);
                v476 = v746;
                v466 = v773;
              }

              v478 = v757;
              v479 = v751;
              v480 = v795;
              if ((v795 & 0x8000000000000000) == 0)
              {
                v481 = v758;
                (v797)(v789, v786);
                v482 = v781;
                v483 = v800;
                (*(v466 + 224))(v474, v481, v800, v466);
                v484 = v796;
                (v796)(v481, v483);
                (v484)(v474, v483);
                v485 = v759;
                v486 = (v476[11])(v482, v483, v466, v479, v476);
                v801 = v480;
                v487 = v476[32];
                v490 = lazy protocol witness table accessor for type Int and conformance Int(v486, v488, v489);
                v491 = v728;
                v487(v485, &v801, &type metadata for Int, v490, v479, v476);
                (*(v478 + 8))(v485, v479);
LABEL_115:
                v501 = v748;
                (*(v478 + 32))(v748, v491, v479);
                goto LABEL_149;
              }

              v492 = v739;
              (v797)(v789, v786);
              v420 = v474;
              v493 = v800;
              (*(v466 + 224))(v474, v492, v800, v466);
              v494 = v796;
              (v796)(v492, v493);
              v495 = (v494)(v474, v493);
              if (!__OFSUB__(0, v480))
              {
                v801 = -v480;
                v791 = *(v466 + 240);
                v498 = lazy protocol witness table accessor for type Int and conformance Int(v495, v496, v497);
                v499 = v781;
                v500 = v758;
                (v791)(v758, &v801, &type metadata for Int, v498, v493, v466);
                (v494)(v500, v493);
                v491 = v728;
                (v476[11])(v499, v493, v466, v479, v476);
                goto LABEL_115;
              }

              __break(1u);
              goto LABEL_182;
            }

            v801 = 0;
            v399 = *(v287 + 96);
            v400 = lazy protocol witness table accessor for type Int and conformance Int(v385, v386, v387);
            v399(&v801, &type metadata for Int, v400, v195, v287);
            v398 = (*(*(*(v287 + 32) + 8) + 16))(v297, v306, v195);
            goto LABEL_91;
          }

          v392 = v383(v195, v287);
          v393 = (v774)(v195, v287);
          v388 = v791;
          if (v392)
          {
            if (v393 > 64)
            {
              v801 = 0;
              v396 = *(v287 + 96);
              v397 = lazy protocol witness table accessor for type Int and conformance Int(v393, v394, v395);
              v396(&v801, &type metadata for Int, v397, v195, v287);
              v384 = v796;
              v398 = (*(*(*(v287 + 32) + 8) + 16))(v796, v306, v195);
LABEL_91:
              v401 = v398;
              (v388[1])(v306, v195);
              v390 = v742;
              v391 = v741;
              if ((v401 & 1) == 0)
              {
                goto LABEL_106;
              }

              goto LABEL_107;
            }

            v424 = v767;
            v425 = v765;
            v426 = swift_getAssociatedConformanceWitness(v767, v195, v765, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v427 = v766;
            (*(v426 + 8))(&qword_18071E0A8, 256, v425, v426);
            (v424[3])(v427, v195, v424);
            v384 = v796;
            LOBYTE(v425) = (*(*(*(v287 + 32) + 8) + 16))(v796, v306, v195);
            (v388[1])(v306, v195);
            v390 = v742;
            v391 = v741;
            if (v425)
            {
              goto LABEL_107;
            }
          }

          else
          {
            v390 = v742;
            v391 = v741;
            v384 = v796;
            if (v393 >= 64)
            {
              goto LABEL_106;
            }
          }

          if (((*(v287 + 120))(v195, v287) & 0x8000000000000000) == 0)
          {
            goto LABEL_106;
          }

LABEL_107:
          v428 = v799;
          v441 = v740;
          v442 = swift_getAssociatedConformanceWitness(v390, v799, v740, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
          (*(v442 + 8))(&qword_1806729C0, 512, v441, v442);
          v443 = v743;
          (v390[3])(v391, v428, v390);
          v432 = v753;
          v433 = v752;
          (*(v753 + 112))(v428, v753);
          v444 = v443;
          v435 = v768;
          (v768)(v444, v428);
          v445 = v793;
          (*(*(AssociatedConformanceWitness + 16) + 16))(v384, v195);
          (v388[1])(v384, v195);
          v437 = v730;
          v446 = v195;
          v439 = v763;
          (*(v731 + 11))(v445, v446, v287, v763);
          v440 = v729;
          (*(*(v732 + 8) + 40))(v433, v437, v439);
          goto LABEL_108;
        }

LABEL_61:
        v342 = v799;
        v343 = v768;
        (v768)(v794, v799);
        v295[1](v297, v195);
        v344 = (*(v292 + 168))(v789, v292);
        v345 = *(v790 + 112);
        if (v344)
        {
          v346 = v743;
          v345(v342);
          (*(v712 + 16))(v346, v342);
          v343(v346, v342);
        }

        else
        {
          v345(v342);
        }

        return 0;
      }

      v347 = v767;
      v348 = v765;
      v349 = swift_getAssociatedConformanceWitness(v767, v195, v765, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v350 = v766;
      (*(v349 + 8))(&qword_18071E0A8, 256, v348, v349);
      v306 = v793;
      (v347[3])(v350, v195, v347);
      v297 = v796;
      LOBYTE(v348) = (*(*(*(v287 + 32) + 8) + 40))(v796, v306, v195);
      v295 = v791;
      (*(v791 + 1))(v306, v195);
      if ((v348 & 1) == 0)
      {
        (v787[1])(v747, v177);
        goto LABEL_83;
      }

      (v295[2])(v306, v297, v195);
      v351 = v797;
      v352 = v782;
      (*(v797 + 96))(v306, v195, v287, v294, v797);
      v353 = v747;
      v313 = (*(*(*(v351 + 32) + 8) + 16))(v747, v352, v294);
      v314 = v787[1];
      (v314)(v352, v294);
      v316 = v353;
      v306 = v793;
      v317 = v294;
    }

    else
    {
      v307 = v797;
      v308 = (v779)(v177, v797);
      v297 = v281;
      v309 = v284;
      if (v308 < (v774)(v195, v287))
      {
        v306 = v793;
        (*(v287 + 96))(v309, v177, v307, v195, v287);
        goto LABEL_46;
      }

      v295 = v791;
      (*(v791 + 2))(v793, v297, v195);
      v312 = v782;
      (*(v307 + 96))(v793, v195, v287, v177, v307);
      v313 = (*(*(*(v307 + 32) + 8) + 16))(v309, v312, v177);
      v314 = v787[1];
      v315 = v312;
      v306 = v793;
      (v314)(v315, v177);
      v316 = v309;
      v317 = v177;
    }

    (v314)(v316, v317);
    v292 = v788;
    if ((v313 & 1) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_61;
  }

  v194 = v793;
  if (v193 >= v191)
  {
    v217 = v767;
    v195 = v777;
    v218 = v765;
    v219 = swift_getAssociatedConformanceWitness(v767, v777, v765, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v220 = v766;
    (*(v219 + 8))(&qword_18071E0A8, 256, v218, v219);
    (v217[3])(v220, v195, v217);
    v196 = v783;
    v197 = v796;
    LOBYTE(v218) = (*(*(*(v783 + 32) + 8) + 16))(v796, v194, v195);
    v221 = v791;
    (*(v791 + 1))(v194, v195);
    if (v218)
    {
      (v787[1])(v795, v177);
    }

    else
    {
      v221[2](v194, v197, v195);
      v231 = v797;
      v232 = v782;
      (*(v797 + 96))(v793, v195, v196, v177, v797);
      v233 = v795;
      v234 = (*(*(*(v231 + 32) + 8) + 16))(v232, v795, v177);
      v235 = v787[1];
      v194 = v793;
      (v235)(v232, v177);
      (v235)(v233, v177);
      v197 = v796;
      if ((v234 & 1) == 0)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
    v195 = v777;
    v196 = v783;
    (*(v783 + 96))(v795, v177, v797, v777, v783);
    v197 = v796;
    v198 = (*(*(*(v196 + 32) + 8) + 16))(v796, v194, v195);
    (*(v791 + 1))(v194, v195);
    if ((v198 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

LABEL_22:
  v737 = v177;
  v236 = v790;
  v237 = v799;
  (*(v790 + 160))(v799, v790);
  (v760)(v237, v236);
  v238 = v767;
  v239 = v765;
  v240 = swift_getAssociatedConformanceWitness(v767, v195, v765, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v241 = *(v240 + 8);
  v242 = v766;
  v761 = v240;
  v760 = (v240 + 8);
  v747 = v241;
  (v241)(&qword_1806729C0, 512, v239);
  v243 = v238[3];
  v743 = (v238 + 3);
  v733 = v243;
  (v243)(v242, v195, v238);
  v244 = v194;
  v245 = *(v745 + 8);
  v246 = *(v245 + 24);
  v247 = v196;
  v248 = v750;
  v745 = v245;
  v732 = v245 + 24;
  v731 = v246;
  (v246)(v197, v244, v195);
  v249 = *(v791 + 1);
  v250 = v244;
  v251 = v737;
  v777 = v791 + 8;
  v795 = v249;
  v249(v250, v195);
  v252 = v775;
  v253 = (v775)(v195, v196);
  v254 = v797;
  if (((v253 ^ (v784)(v251, v797)) & 1) == 0)
  {
    v266 = (v774)(v195, v247);
    if (v266 >= (v779)(v251, v254))
    {
      v260 = v787;
      v271 = v782;
      (v787[2])(v782, v792, v251);
      v272 = v793;
      (*(v247 + 96))(v271, v251, v254, v195, v247);
      v268 = (*(*(*(v247 + 32) + 8) + 16))(v248, v272, v195);
      v259 = v795;
      (v795)(v272, v195);
      v259(v248, v195);
      v265 = v796;
    }

    else
    {
      v267 = v782;
      (*(v254 + 96))(v248, v195, v247, v251, v254);
      v268 = (*(*(*(v254 + 32) + 8) + 16))(v267, v792, v251);
      v260 = v787;
      (v787[1])(v267, v251);
      v259 = v795;
      v265 = v796;
    }

    v258 = v247;
    if (v268)
    {
      goto LABEL_34;
    }

    goto LABEL_69;
  }

  v255 = v252(v195, v247);
  v256 = (v774)(v195, v247);
  v257 = (v779)(v251, v254);
  v258 = v247;
  if (v255)
  {
    v259 = v795;
    if (v257 < v256)
    {
      v260 = v787;
      v261 = v782;
      (v787[2])(v782, v792, v251);
      v262 = v793;
      (*(v247 + 96))(v261, v251, v254, v195, v247);
      v263 = v750;
      LOBYTE(v261) = (*(*(*(v247 + 32) + 8) + 16))(v750, v262, v195);
      v259(v262, v195);
      v264 = v263;
      v258 = v247;
      v259(v264, v195);
      v265 = v796;
      if (v261)
      {
        goto LABEL_34;
      }

      goto LABEL_69;
    }

    v318 = v766;
    (v747)(&qword_18071E0A8, 256);
    v319 = v793;
    (v733)(v318, v195, v767);
    v320 = v750;
    v321 = (*(*(*(v258 + 32) + 8) + 16))(v750, v319, v195);
    v259(v319, v195);
    v260 = v787;
    if ((v321 & 1) == 0)
    {
      v354 = v782;
      (*(v254 + 96))(v320, v195, v258, v251, v254);
      v355 = (*(*(*(v254 + 32) + 8) + 16))(v354, v792, v251);
      (v260[1])(v354, v251);
      v265 = v796;
      if (v355)
      {
        goto LABEL_34;
      }

      goto LABEL_69;
    }

    v259(v320, v195);
    v265 = v796;
LABEL_34:
    (v260[1])(v792, v251);
    v273 = v259;
    v274 = v799;
    (v768)(v794, v799);
    v273(v265, v195);
    if ((*(v788 + 168))(v789))
    {
      v275 = v715;
      v276 = v713;
      v277 = swift_getAssociatedConformanceWitness(v715, v274, v713, &protocol requirements base descriptor for ExpressibleByFloatLiteral, associated conformance descriptor for ExpressibleByFloatLiteral.ExpressibleByFloatLiteral.FloatLiteralType: _ExpressibleByBuiltinFloatLiteral);
      v278 = v714;
      (*(v277 + 8))(v276, v277, -0.0);
    }

    else
    {
      v275 = v742;
      v279 = v740;
      v280 = swift_getAssociatedConformanceWitness(v742, v274, v740, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v278 = v741;
      (*(v280 + 8))(&qword_18071E0A8, 256, v279, v280);
    }

    (v275[3])(v278, v274, v275);
    return 0;
  }

  v259 = v795;
  if (v256 < v257)
  {
    v269 = v782;
    (*(v254 + 96))(v750, v195, v247, v251, v254);
    v270 = (*(*(*(v254 + 32) + 8) + 16))(v269, v792, v251);
    v260 = v787;
    (v787[1])(v269, v251);
    v265 = v796;
    if ((v270 & 1) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_34;
  }

  v322 = v736;
  v323 = v734;
  v324 = swift_getAssociatedConformanceWitness(v736, v251, v734, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v325 = v735;
  (*(v324 + 8))(&qword_18071E0A8, 256, v323, v324);
  v326 = v782;
  (v322[3])(v325, v251, v322);
  LOBYTE(v323) = (*(*(*(v254 + 32) + 8) + 40))(v792, v326, v251);
  v260 = v787;
  (v787[1])(v326, v251);
  v327 = v796;
  if ((v323 & 1) == 0)
  {
    v259(v750, v195);
    v265 = v327;
    goto LABEL_69;
  }

  (v260[2])(v326, v792, v251);
  v328 = v793;
  (*(v258 + 96))(v326, v737, v254, v195, v258);
  v329 = *(*(*(v258 + 32) + 8) + 16);
  v330 = v258;
  v331 = v750;
  v332 = v329(v750, v328, v195);
  v333 = v328;
  v251 = v737;
  v259(v333, v195);
  v334 = v331;
  v258 = v330;
  v259(v334, v195);
  v265 = v327;
  if (v332)
  {
    goto LABEL_34;
  }

LABEL_69:
  v356 = v766;
  (v747)(&qword_1806729C0, 512);
  v357 = v793;
  (v733)(v356, v195, v767);
  v358 = v258;
  v359 = v254;
  v360 = v738;
  v361 = v265;
  v362 = v357;
  v363 = v357;
  v364 = v737;
  v731(v361, v362, v195, v745);
  v259(v363, v195);
  v365 = v775;
  v366 = (v775)(v195, v358);
  if (((v366 ^ (v784)(v364, v359)) & 1) == 0)
  {
    v376 = v363;
    v377 = (v774)(v195, v358);
    v378 = v792;
    if (v377 < (v779)(v364, v359))
    {
      v372 = v782;
      (*(v359 + 96))(v360, v195, v358, v364, v359);
      v379 = (*(*(*(v359 + 16) + 8) + 8))(v372, v378, v364);
      (v787[1])(v372, v364);
      v373 = v376;
      if (v379)
      {
        goto LABEL_101;
      }

      goto LABEL_117;
    }

    v372 = v782;
    (v787[2])(v782, v378, v364);
    v373 = v376;
    (*(v358 + 96))(v372, v364, v359, v195, v358);
    v374 = (*(*(*(v358 + 16) + 8) + 8))(v360, v376, v195);
    v375 = v376;
    goto LABEL_79;
  }

  v367 = v365(v195, v358);
  v368 = (v774)(v195, v358);
  v369 = v792;
  v370 = (v779)(v364, v359);
  if ((v367 & 1) == 0)
  {
    if (v368 < v370)
    {
      v359 = v797;
      v372 = v782;
      v358 = v783;
      (*(v797 + 96))(v360, v195, v783, v364, v797);
      v380 = (*(*(*(v359 + 16) + 8) + 8))(v372, v369, v364);
      v381 = v787;
      goto LABEL_97;
    }

    v410 = v736;
    v411 = v734;
    v412 = swift_getAssociatedConformanceWitness(v736, v364, v734, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v413 = v735;
    (*(v412 + 8))(&qword_18071E0A8, 256, v411, v412);
    v414 = v369;
    v415 = v782;
    (v410[3])(v413, v364, v410);
    LOBYTE(v411) = (*(*(*(v797 + 32) + 8) + 32))(v414, v415, v364);
    v416 = v787;
    v417 = v415;
    v406 = v738;
    (v787[1])(v417, v364);
    if (v411)
    {
      v372 = v782;
      (v416[2])(v782, v414, v364);
      v358 = v783;
      v373 = v793;
      v359 = v797;
      (*(v783 + 96))(v372, v364, v797, v195, v783);
      v418 = (*(*(*(v358 + 16) + 8) + 8))(v406, v373, v195);
      v419 = v795;
      (v795)(v373, v195);
      v419(v406, v195);
      if (v418)
      {
        goto LABEL_101;
      }

      goto LABEL_117;
    }

LABEL_116:
    (v795)(v406, v195);
    v372 = v782;
    v358 = v783;
    v373 = v793;
    v359 = v797;
    goto LABEL_117;
  }

  v371 = v787;
  if (v370 < v368)
  {
    v372 = v782;
    (v787[2])(v782, v369, v364);
    v358 = v783;
    v373 = v793;
    v359 = v797;
    (*(v783 + 96))(v372, v364, v797, v195, v783);
    v374 = (*(*(*(v358 + 16) + 8) + 8))(v360, v373, v195);
    v375 = v373;
LABEL_79:
    v382 = v795;
    (v795)(v375, v195);
    v382(v360, v195);
    if (v374)
    {
      goto LABEL_101;
    }

    goto LABEL_117;
  }

  v402 = v369;
  v403 = v766;
  (v747)(&qword_18071E0A8, 256);
  v404 = v793;
  v405 = v403;
  v406 = v738;
  (v733)(v405, v195, v767);
  v407 = (*(*(*(v783 + 32) + 8) + 32))(v406, v404, v195);
  (v795)(v404, v195);
  if ((v407 & 1) == 0)
  {
    goto LABEL_116;
  }

  v359 = v797;
  v372 = v782;
  v408 = v406;
  v409 = v371;
  v358 = v783;
  (*(v797 + 96))(v408, v195, v783, v364, v797);
  v380 = (*(*(*(v359 + 16) + 8) + 8))(v372, v402, v364);
  v381 = v409;
LABEL_97:
  (v381[1])(v372, v364);
  v373 = v793;
  if (v380)
  {
LABEL_101:
    (v787[1])(v792, v364);
    (v795)(v796, v195);
    v420 = v789;
    if ((*(v786 + 136))(v789))
    {
      if ((*(v788 + 168))(v420))
      {
        v421 = v708;
        v422 = v794;
        v423 = v799;
        (*(v712 + 16))(v794, v799);
        (v768)(v422, v423);
      }

      else
      {
        v421 = v708;
        v423 = v799;
        (*(v778 + 32))(v708, v794, v799);
      }

LABEL_188:
      (*(v778 + 32))(v764, v421, v423);
      return 0;
    }

LABEL_183:
    (v768)(v794, v799);
    if ((*(v788 + 168))(v420))
    {
      v701 = v715;
      v423 = v799;
      v702 = v713;
      v703 = swift_getAssociatedConformanceWitness(v715, v799, v713, &protocol requirements base descriptor for ExpressibleByFloatLiteral, associated conformance descriptor for ExpressibleByFloatLiteral.ExpressibleByFloatLiteral.FloatLiteralType: _ExpressibleByBuiltinFloatLiteral);
      v704 = v714;
      (*(v703 + 8))(v702, v703, -0.0);
    }

    else
    {
      v701 = v742;
      v423 = v799;
      v705 = v740;
      v706 = swift_getAssociatedConformanceWitness(v742, v799, v740, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v704 = v741;
      (*(v706 + 8))(&qword_18071E0A8, 256, v705, v706);
    }

    v421 = v708;
    (v701[3])(v704, v423, v701);
    goto LABEL_188;
  }

LABEL_117:
  v502 = v726;
  v503 = v763;
  v504 = v725;
  v505 = swift_getAssociatedConformanceWitness(v726, v763, v725, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v506 = v724;
  (*(v505 + 8))(&qword_18071E0A8, 256, v504, v505);
  (v502[3])(v506, v503, v502);
  (*(v791 + 2))(v373, v796, v195);
  (*(v359 + 88))(v373, v195, v358, v364, v359);
  v507 = v727;
  v508 = v792;
  (*(*(v723 + 8) + 40))(v372, v792, v364);
  v509 = v787[1];
  (v509)(v372, v364);
  v510 = (v784)(v364, v359);
  v511 = v779;
  if ((v510 & 1) == 0 || (v779)(v364, v359) < 65)
  {
    goto LABEL_131;
  }

  v512 = v784;
  if (((v784)(v364, v359) & 1) == 0)
  {
    v519 = (v512)(v364, v359);
    v511 = v779;
    v520 = (v779)(v364, v359);
    if ((v519 & 1) == 0)
    {
      v359 = v797;
      v508 = v792;
      if (v520 >= 64)
      {
        goto LABEL_131;
      }

      goto LABEL_130;
    }

    if (v520 <= 64)
    {
      v526 = v736;
      v527 = v734;
      v528 = swift_getAssociatedConformanceWitness(v736, v364, v734, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v529 = v735;
      (*(v528 + 8))(&qword_18071E0A8, 256, v527, v528);
      v530 = v782;
      (v526[3])(v529, v364, v526);
      v359 = v797;
      LOBYTE(v527) = (*(*(*(v797 + 32) + 8) + 16))(v507, v530, v364);
      (v509)(v530, v364);
      v508 = v792;
      if ((v527 & 1) == 0)
      {
        goto LABEL_130;
      }
    }

    else
    {
      v801 = 0x8000000000000000;
      v359 = v797;
      v793 = *(v797 + 96);
      v523 = lazy protocol witness table accessor for type Int and conformance Int(v520, v521, v522);
      v524 = v782;
      (v793)(&v801, &type metadata for Int, v523, v364, v359);
      v525 = (*(*(*(v359 + 32) + 8) + 16))(v507, v524, v364);
      (v509)(v524, v364);
      v508 = v792;
      if ((v525 & 1) == 0)
      {
        goto LABEL_131;
      }
    }

LABEL_135:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v511 = v779;
  v513 = (v779)(v364, v359);
  v508 = v792;
  if (v513 < 64)
  {
LABEL_130:
    (*(v359 + 120))(v364, v359);
    goto LABEL_131;
  }

  v801 = 0x8000000000000000;
  v793 = *(v359 + 96);
  v516 = lazy protocol witness table accessor for type Int and conformance Int(v513, v514, v515);
  v517 = v782;
  (v793)(&v801, &type metadata for Int, v516, v364, v359);
  v508 = v792;
  v518 = (*(*(*(v359 + 32) + 8) + 16))(v507, v517, v364);
  (v509)(v517, v364);
  if (v518)
  {
    goto LABEL_135;
  }

LABEL_131:
  if (v511(v364, v359) <= 64 && (v511(v364, v359) != 64 || ((v784)(v364, v359) & 1) != 0))
  {
    goto LABEL_141;
  }

  v793 = v509;
  v531 = (v784)(v364, v359);
  v532 = v511(v364, v359);
  if (v531)
  {
    if (v532 >= 65)
    {
      goto LABEL_134;
    }

LABEL_140:
    (*(v359 + 120))(v364, v359);
    v508 = v792;
    v509 = v793;
    goto LABEL_141;
  }

  if (v532 < 64)
  {
    goto LABEL_140;
  }

LABEL_134:
  v801 = 0x7FFFFFFFFFFFFFFFLL;
  v535 = *(v359 + 96);
  v536 = lazy protocol witness table accessor for type Int and conformance Int(v532, v533, v534);
  v537 = v782;
  v535(&v801, &type metadata for Int, v536, v364, v359);
  v538 = (*(*(*(v359 + 32) + 8) + 16))(v537, v507, v364);
  v509 = v793;
  (v793)(v537, v364);
  v508 = v792;
  if (v538)
  {
    goto LABEL_135;
  }

LABEL_141:
  (v509)(v508, v364);
  (v768)(v794, v799);
  (v795)(v796, v195);
  v539 = (*(v359 + 120))(v364, v359);
  (v509)(v507, v364);
  v540 = v786;
  v541 = *(v786 + 136);
  v542 = v789;
  v793 = (v786 + 136);
  v543 = v541(v789, v786);
  v420 = (v540 + 120);
  v544 = v781;
  v797 = *(v540 + 120);
  (v797)(v542, v540);
  v545 = v800;
  v546 = (*(v773 + 144))(v800);
  v547 = *(v780 + 8);
  v780 += 8;
  v796 = v547;
  (v547)(v544, v545);
  v795 = v539 - (v543 + v546);
  LOBYTE(v546) = (*(v788 + 368))(v542);
  v548 = v721;
  v479 = v751;
  v549 = v720;
  v550 = swift_getAssociatedConformanceWitness(v721, v751, v720, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v551 = *(v550 + 8);
  v792 = v539;
  v794 = v541;
  if (v546)
  {
    v552 = v722;
    v551(&qword_1806729C0, 512, v549, v550);
    v553 = v759;
    v554 = (v548[3])(v552, v479, v548);
    v801 = v539;
    v555 = v746;
    v556 = v746[32];
    v559 = lazy protocol witness table accessor for type Int and conformance Int(v554, v557, v558);
    v556(v553, &v801, &type metadata for Int, v559, v479, v555);
    (*(v757 + 8))(v553, v479);
  }

  else
  {
    v560 = v722;
    v551(&qword_18071E0A8, 256, v549, v550);
    (v548[3])(v560, v479, v548);
    v555 = v746;
  }

  v561 = v773;
  v562 = v795;
  if (v795 < 0)
  {
    v571 = v795;
    v572 = v758;
    v573 = (v797)(v789, v786);
    if (__OFSUB__(0, v571))
    {
LABEL_182:
      __break(1u);
      goto LABEL_183;
    }

    v801 = -v571;
    v576 = *(v561 + 240);
    v577 = lazy protocol witness table accessor for type Int and conformance Int(v573, v574, v575);
    v578 = v781;
    v579 = v800;
    v576(v572, &v801, &type metadata for Int, v577, v800, v561);
    (v796)(v572, v579);
    v570 = v719;
    (v555[11])(v578, v579, v561, v479, v555);
    v478 = v757;
  }

  else
  {
    v563 = v781;
    (v797)(v789, v786);
    v564 = v759;
    v565 = (v555[11])(v563, v800, v561, v479, v555);
    v801 = v562;
    v566 = v555[32];
    v569 = lazy protocol witness table accessor for type Int and conformance Int(v565, v567, v568);
    v570 = v719;
    v566(v564, &v801, &type metadata for Int, v569, v479, v555);
    v478 = v757;
    (*(v757 + 8))(v564, v479);
  }

  v501 = v748;
  v580 = v744;
  (v555[26])(v744, v570, v479, v555);
  v581 = *(v478 + 8);
  v581(v570, v479);
  v581(v580, v479);
LABEL_149:
  v582 = v789;
  v583 = *(v788 + 168);
  v793 = (v788 + 168);
  v791 = v583;
  v584 = v583(v789);
  v585 = v752;
  (*(v749 + 32))(v752, v762, v763);
  v586 = v759;
  (*(v478 + 16))(v759, v501, v479);
  v587 = v754;
  v588 = v586;
  v589 = v799;
  (*(v753 + 56))(v584 & 1, v585, v588, v799);
  v590 = (v794)(v582, v786);
  if (v792 >= v590)
  {
    (*(v478 + 8))(v501, v479);
    (*(v778 + 32))(v764, v587, v589);
    return 1;
  }

  v591 = v770;
  v592 = v800;
  v593 = v769;
  v594 = swift_getAssociatedConformanceWitness(v770, v800, v769, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v595 = *(v594 + 8);
  v596 = v756;
  v794 = (v594 + 8);
  v595(&qword_1806729C0, 512, v593, v594);
  v597 = v591[3];
  v598 = v781;
  v599 = (v597)(v596, v592, v591);
  if (__OFSUB__(0, v795))
  {
    __break(1u);
    goto LABEL_174;
  }

  v801 = -v795;
  v795 = v597;
  v602 = v773;
  v603 = v595;
  v792 = v595;
  v604 = *(v773 + 256);
  v605 = lazy protocol witness table accessor for type Int and conformance Int(v599, v600, v601);
  v604(v598, &v801, &type metadata for Int, v605, v800, v602);
  v785 = v594;
  v787 = v591 + 3;
  v606 = v796;
  (v796)(v598, v800);
  (v797)(v789);
  v607 = v756;
  v603(&qword_1806729C0, 512);
  v608 = v739;
  (v795)(v607, v800, v770);
  v609 = v758;
  (*(*(v717 + 8) + 40))(v755, v608, v800);
  (v606)(v608, v800);
  v610 = v718;
  (*(v602 + 192))(v598, v609, v800, v602);
  (v606)(v609, v800);
  (v606)(v598, v800);
  (v792)(qword_18071E0B8, 768);
  (v795)(v607, v800, v770);
  v611 = v755;
  v786 = *(v602 + 152);
  (v786)(v755, v609, v800, v602);
  (v606)(v609, v800);
  v612 = *(v602 + 32);
  v613 = v800;
  v614 = *(*(v612 + 8) + 16);
  v797 = *(v612 + 8);
  v615 = v614(v610, v598, v800);
  (v606)(v598, v613);
  if ((v615 & 1) == 0)
  {
    if ((v791)(v789, v788))
    {
      (*(v790 + 328))(v799);
    }

    else
    {
      (*(v790 + 320))(v799);
    }

    v617 = v755;
    v618 = v756;
    (v792)(qword_18071E0B8, 768);
    v619 = v758;
    (v795)(v618, v613, v770);
    v620 = v781;
    (v786)(v617, v619, v613, v773);
    v621 = v619;
    v622 = v796;
    (v796)(v621, v613);
    (v622)(v617, v613);
    v623 = (*(v797 + 40))(v610, v620, v613);
    (v622)(v620, v613);
    (v622)(v610, v613);
    if (v623)
    {
      v624 = v799;
      (v768)(v754, v799);
      (*(v757 + 8))(v748, v751);
      (*(v778 + 32))(v764, v716, v624);
      return 0;
    }

LABEL_174:
    v688 = v746;
    v689 = v746[18];
    v690 = v748;
    v691 = v751;
    v800 = v689(v751, v746);
    v692 = *(v757 + 8);
    v692(v690, v691);
    v693 = v759;
    v694 = v716;
    v695 = v799;
    (*(v753 + 120))(v799);
    v696 = v689(v691, v688);
    v692(v693, v691);
    if (v696 >= v800)
    {
      v697 = v754;
    }

    else
    {
      v697 = v694;
    }

    if (v696 >= v800)
    {
      v698 = v694;
    }

    else
    {
      v698 = v754;
    }

    (v768)(v697, v695);
    v699 = *(v778 + 32);
    v700 = v707;
    v699(v707, v698, v695);
    v699(v764, v700, v695);
    return 0;
  }

  (v606)(v610, v613);
  (v606)(v611, v613);
  (*(v757 + 8))(v748, v751);
  (*(v778 + 32))(v764, v754, v799);
  return 0;
}

uint64_t static BinaryInteger.> infix<A>(_:_:)(uint64_t a1, uint64_t a2, Class *a3, Class *a4, uint64_t a5, uint64_t a6)
{
  v68 = *(*(a5 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v68, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v67 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v66 = &v61 - v14;
  v65 = *(*(a6 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v65, a4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v64 = v15;
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v63 = &v61 - v18;
  v72 = *(a3 - 1);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v71 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v20, v22);
  v69 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a6 + 64);
  v25 = v24(a4, a6);
  if (((v25 ^ (*(a5 + 64))(a3, a5)) & 1) == 0)
  {
    v35 = (*(a6 + 128))(a4, a6);
    if (v35 >= (*(a5 + 128))(a3, a5))
    {
      v44 = v71;
      (*(v72 + 16))(v71, a1, a3);
      v45 = v69;
      (*(a6 + 96))(v44, a3, a5, a4, a6);
      v38 = (*(*(*(a6 + 32) + 8) + 16))(a2, v45, a4);
      v39 = *(v70 + 8);
      v40 = v45;
      v43 = a4;
      goto LABEL_11;
    }

    v36 = v69;
    (*(v70 + 16))(v69, a2, a4);
    v37 = v71;
    (*(a5 + 96))(v36, a4, a6, a3, a5);
    v38 = (*(*(*(a5 + 32) + 8) + 16))(v37, a1, a3);
    v39 = *(v72 + 8);
    v40 = v37;
LABEL_9:
    v43 = a3;
LABEL_11:
    v39(v40, v43);
    return v38 & 1;
  }

  v26 = v24(a4, a6);
  v27 = *(a6 + 128);
  v62 = a2;
  v28 = v27(a4, a6);
  v29 = *(a5 + 128);
  v61 = a1;
  v30 = v29(a3, a5);
  if ((v26 & 1) == 0)
  {
    v32 = v70;
    v41 = v71;
    if (v28 >= v30)
    {
      v53 = v67;
      v54 = v68;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v68, a3, v67, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v56 = v66;
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v53, AssociatedConformanceWitness);
      (v54[3])(v56, a3, v54);
      v57 = v61;
      LOBYTE(v53) = (*(*(*(a5 + 32) + 8) + 40))(v61, v41, a3);
      v58 = v72;
      (*(v72 + 8))(v41, a3);
      v59 = v62;
      if ((v53 & 1) == 0)
      {
        v38 = 0;
        return v38 & 1;
      }

      (*(v58 + 16))(v41, v57, a3);
      v33 = v69;
      (*(a6 + 96))(v41, a3, a5, a4, a6);
      v34 = (*(*(*(a6 + 32) + 8) + 16))(v59, v33, a4);
      goto LABEL_16;
    }

    v42 = v69;
    (*(v70 + 16))(v69, v62, a4);
    (*(a5 + 96))(v42, a4, a6, a3, a5);
    v38 = (*(*(*(a5 + 32) + 8) + 16))(v41, v61, a3);
    v39 = *(v72 + 8);
    v40 = v41;
    goto LABEL_9;
  }

  v32 = v70;
  v31 = v71;
  if (v30 < v28)
  {
    (*(v72 + 16))(v71, v61, a3);
    v33 = v69;
    (*(a6 + 96))(v31, a3, a5, a4, a6);
    v34 = (*(*(*(a6 + 32) + 8) + 16))(v62, v33, a4);
LABEL_16:
    v38 = v34;
    (*(v32 + 8))(v33, a4);
    return v38 & 1;
  }

  v46 = v64;
  v47 = v65;
  v48 = swift_getAssociatedConformanceWitness(v65, a4, v64, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v49 = v63;
  (*(v48 + 8))(&qword_18071E0A8, 256, v46, v48);
  v50 = v69;
  (v47[3])(v49, a4, v47);
  v51 = v62;
  LOBYTE(v46) = (*(*(*(a6 + 32) + 8) + 16))(v62, v50, a4);
  (*(v32 + 8))(v50, a4);
  v52 = v72;
  if (v46)
  {
    v38 = 1;
  }

  else
  {
    (*(v32 + 16))(v50, v51, a4);
    (*(a5 + 96))(v50, a4, a6, a3, a5);
    v38 = (*(*(*(a5 + 32) + 8) + 16))(v31, v61, a3);
    (*(v52 + 8))(v31, a3);
  }

  return v38 & 1;
}

BOOL specialized BinaryFloatingPoint.isTotallyOrdered(belowOrEqualTo:)(float a1, float a2)
{
  if (*&a2 < *&a1)
  {
    return 1;
  }

  if (LODWORD(a2) >> 15 != LODWORD(a1) >> 15)
  {
    return (SLOWORD(a2) >> 15) & 1;
  }

  v3 = (SLOWORD(a2) >> 10) & 0x1F;
  v4 = (LODWORD(a1) >> 10) & 0x1F;
  if (v4 < v3)
  {
    return (SLOWORD(a2) >> 15) & 1;
  }

  if (v3 < v4)
  {
    return SLOWORD(a2) >= 0;
  }

  if ((LOWORD(a1) & 0x3FFu) < (LOWORD(a2) & 0x3FFu))
  {
    return (SLOWORD(a2) >> 15) & 1;
  }

  return SLOWORD(a2) >= 0 || (LOWORD(a2) & 0x3FFu) >= (LOWORD(a1) & 0x3FFu);
}

uint64_t specialized BinaryFloatingPoint.isTotallyOrdered(belowOrEqualTo:)(float a1, float a2)
{
  if (a2 < a1)
  {
    return 1;
  }

  v3 = LODWORD(a2) >> 31;
  v4 = (LODWORD(a2) >> 23);
  v5 = (LODWORD(a1) >> 23);
  v6 = LODWORD(a2) & 0x7FFFFF;
  v7 = LODWORD(a1) & 0x7FFFFF;
  v9 = a2 >= 0.0 || v6 >= v7;
  if (v7 < v6)
  {
    v10 = LODWORD(a2) >> 31;
  }

  else
  {
    v10 = v9;
  }

  v11 = a2 >= 0.0;
  if (v4 >= v5)
  {
    v11 = v10;
  }

  if (v5 < v4)
  {
    v11 = LODWORD(a2) >> 31;
  }

  if (v3 == LODWORD(a1) >> 31)
  {
    return v11;
  }

  else
  {
    return v3;
  }
}

BOOL specialized BinaryFloatingPoint.isTotallyOrdered(belowOrEqualTo:)(double a1, double a2)
{
  if (a2 < a1)
  {
    return 1;
  }

  v3 = (*&a2 >> 52) & 0x7FFLL;
  v4 = (*&a1 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = *&a1 & 0xFFFFFFFFFFFFFLL;
  v8 = a2 >= 0.0 || v5 >= v6;
  if (v6 < v5)
  {
    v8 = *&a2 >> 63;
  }

  if (v3 < v4)
  {
    v8 = a2 >= 0.0;
  }

  if (v4 < v3)
  {
    v8 = *&a2 >> 63;
  }

  if ((*&a2 ^ *&a1) >= 0)
  {
    return v8;
  }

  else
  {
    return *&a2 >> 63;
  }
}

uint64_t BinaryFloatingPoint.isTotallyOrdered(belowOrEqualTo:)(uint64_t a1, Class *a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v58 = *(v7 - 8);
  v59 = v7;
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v57 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v56 = v50 - v12;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawExponent);
  v14 = v13;
  v15 = *(v13 - 8);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = v50 - v21;
  v23 = *(a3 + 16);
  v24 = *(*(v23 + 24) + 8);
  v25 = *(v24 + 16);
  v60 = v3;
  if (v25(v3, a1, a2, v24))
  {
    goto LABEL_2;
  }

  if ((*(v24 + 40))(a1, v60, a2, v24))
  {
    v26 = 0;
    return v26 & 1;
  }

  v53 = v15;
  v54 = a3;
  v27 = a1;
  v28 = v23;
  v29 = v23 + 168;
  v30 = *(v23 + 168);
  v31 = v30(a2, v28);
  v55 = v27;
  if ((v30(a2, v28) ^ v31))
  {
    v26 = v30(a2, v28);
    return v26 & 1;
  }

  v51 = v28;
  v52 = v30;
  v50[1] = v29;
  v32 = v54;
  v33 = *(v54 + 112);
  v33(a2, v54);
  v50[0] = v33;
  v33(a2, v32);
  v34 = *(*(*(swift_getAssociatedConformanceWitness(v32, a2, v14, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger) + 8) + 32) + 8);
  v35 = (*(v34 + 40))(v22, v19, v14);
  v36 = *(v53 + 1);
  v36(v19, v14);
  v53 = v36;
  v36(v22, v14);
  if (v35)
  {
LABEL_7:
    v26 = v52(a2, v51);
    return v26 & 1;
  }

  v37 = v50[0];
  (v50[0])(a2, v32);
  v37(a2, v32);
  v38 = (*(v34 + 16))(v22, v19, v14, v34);
  v39 = v53;
  v53(v19, v14);
  v39(v22, v14);
  if (v38)
  {
    goto LABEL_10;
  }

  v41 = *(v32 + 15);
  v42 = v56;
  v41(a2, v32);
  v43 = v57;
  v41(a2, v32);
  v44 = v59;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v32, a2, v59, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawSignificand: UnsignedInteger);
  v46 = *(*(*(*(AssociatedConformanceWitness + 8) + 32) + 8) + 40);
  v53 = *(*(*(AssociatedConformanceWitness + 8) + 32) + 8);
  v47 = v46(v42, v43, v44);
  v48 = *(v58 + 8);
  v48(v43, v44);
  v48(v42, v44);
  if (v47)
  {
    goto LABEL_7;
  }

  v41(a2, v32);
  v41(a2, v32);
  v49 = (*(v53 + 2))(v42, v43, v44);
  v48(v43, v44);
  v48(v42, v44);
  if (v49)
  {
LABEL_10:
    v26 = (v52(a2, v51) & 1) == 0;
    return v26 & 1;
  }

LABEL_2:
  v26 = 1;
  return v26 & 1;
}

BOOL _sSBss17FixedWidthInteger14RawSignificandRpzrlE8_convert4fromx5value_Sb5exacttqd___tSzRd__lFZSd_s7_Int128VTt1g5(void *a1, int64_t a2, uint64_t a3)
{
  if (!(a3 | a2))
  {
    *a1 = 0;
    return 1;
  }

  v6 = -__PAIR128__(v3, a2) >> 64;
  if (a3 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = -a2;
  }

  if (a3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = v6;
  }

  v9 = specialized FixedWidthInteger._binaryLogarithm()(v7, v8);
  if (v9 >= 1024)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
LABEL_10:
      result = 0;
      *a1 = 0x7FF0000000000000;
      return result;
    }

    goto LABEL_41;
  }

  v11 = v9 - 53;
  if (v9 < 53)
  {
    if (v8 || v9 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    *a1 = (a3 & 0x8000000000000000 | (v9 << 52) | (v7 << (52 - v9)) & 0xFFFFFFFFFFFFFLL) + 0x3FF0000000000000;
    return 1;
  }

  if (v9 <= 0xB4)
  {
    if (v11 > 0x3F)
    {
      if ((v11 & 0x3F) == 0x3F)
      {
        goto LABEL_47;
      }

      v13 = 0;
      v12 = 1 << v11;
    }

    else if (v9 == 53)
    {
      v12 = 0;
      v13 = 1;
    }

    else
    {
      v12 = 1uLL >> (53 - v9);
      v13 = 1 << v11;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  *(&v15 + 1) = v12;
  *&v15 = v13;
  v14 = v15 >> 63;
  if (!v14 && !(2 * v13))
  {
LABEL_47:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v16 = (__PAIR128__(v14, 2 * v13) - 1) >> 64;
  v17 = (2 * v13 - 1) & v7;
  v18 = v16 & v8;
  if (v9 > 0xB3)
  {
    LOBYTE(v19) = 0;
    v20 = 0;
    if (v12 == v18)
    {
      goto LABEL_29;
    }

LABEL_34:
    if (v12 < v18)
    {
      goto LABEL_38;
    }

LABEL_35:
    if (v18 != v12 || v17 != v13 || (v19 & 1) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_38;
  }

  v19 = (v8 << (52 - v9)) | (v7 >> (v9 - 52));
  if ((v9 - 52) >= 0x40)
  {
    v19 = v8 >> (v9 - 52);
  }

  v20 = v19 & 0xFFFFFFFFFFFFFLL;
  if (v12 != v18)
  {
    goto LABEL_34;
  }

LABEL_29:
  if (v13 >= v17)
  {
    goto LABEL_35;
  }

LABEL_38:
  if (v20 < 0xFFFFFFFFFFFFFLL)
  {
    ++v20;
  }

  else
  {
    if (v9 >= 0x3FF)
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_41:
      result = 0;
      *a1 = 0xFFF0000000000000;
      return result;
    }

    ++v9;
    v20 = 0x10000000000000;
  }

LABEL_44:
  *a1 = (a3 & 0x8000000000000000 | v20 & 0xFFFFFFFFFFFFFLL | (v9 << 52)) + 0x3FF0000000000000;
  return (v18 | v17) == 0;
}

uint64_t specialized static BinaryFloatingPoint<>._convert<A>(from:)(void *a1, uint64_t a2, Class *a3, uint64_t a4)
{
  v8 = *(a4 + 24);
  swift_getAssociatedTypeWitness(255, v8, a3, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, a3, v9, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Numeric);
  v233 = *(AssociatedConformanceWitness + 16);
  swift_getAssociatedTypeWitness(0, v233, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v227 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v228 = &v211 - v13;
  v240 = v8;
  v14 = *(v8 + 16);
  swift_getAssociatedTypeWitness(0, v14, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v241 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v242 = &v211 - v17;
  v238 = swift_checkMetadataState(0, v10);
  v239 = *(v238 - 1);
  v19 = MEMORY[0x1EEE9AC00](v238 - 1, v18);
  v230 = &v211 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v231 = &v211 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v224 = &v211 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v225 = &v211 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v236 = &v211 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v232 = &v211 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34, v36);
  v237 = &v211 - v38;
  v39 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v37, v40);
  v42 = &v211 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(a4 + 64);
  v44 = v43(a3, a4);
  v223 = v14;
  v234 = v43;
  v235 = a4 + 64;
  if (v44)
  {
    v229 = *(a4 + 128);
    v45 = v229(a3, a4);
    if (v45 >= 64)
    {
LABEL_15:
      v243 = 0;
      v62 = *(a4 + 96);
      v63 = lazy protocol witness table accessor for type Int and conformance Int(v45, v46, v47);
      v62(&v243, &type metadata for Int, v63, a3, a4);
      v64 = (*(*(*(a4 + 16) + 8) + 8))(a2, v42, a3);
      (*(v39 + 8))(v42, a3);
      if (v64)
      {
        goto LABEL_16;
      }

LABEL_7:
      v52 = v237;
      v240[7](a3);
      v53 = v238;
      v54 = swift_getAssociatedConformanceWitness(a4, a3, v238, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
      v55 = (*(v54 + 136))(v53, v54);
      if (v55 >= 1024)
      {
        v56 = a1;
        (*(v239 + 8))(v52, v53);
        v57 = v234;
        if ((v234(a3, a4) & 1) == 0)
        {
          goto LABEL_59;
        }

        if (v57(a3, a4))
        {
          v58 = v229(a3, a4);
          if (v58 >= 64)
          {
            v243 = 0;
            v61 = v42;
            goto LABEL_31;
          }
        }

        else
        {
          v61 = v42;
          v119 = v57(a3, a4);
          v58 = v229(a3, a4);
          if (v119)
          {
            if (v58 > 64)
            {
              v243 = 0;
LABEL_31:
              v120 = *(a4 + 96);
              v121 = lazy protocol witness table accessor for type Int and conformance Int(v58, v59, v60);
              v120(&v243, &type metadata for Int, v121, a3, a4);
              v122 = (*(*(*(a4 + 32) + 8) + 16))(a2, v61, a3);
              (*(v39 + 8))(v61, a3);
              if (v122)
              {
                goto LABEL_60;
              }

LABEL_59:
              v65 = 0;
              *v56 = 0x7FF0000000000000;
              return v65 & 1;
            }

            v140 = v223;
            v141 = v241;
            v142 = swift_getAssociatedConformanceWitness(v223, a3, v241, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v143 = v242;
            (*(v142 + 8))(&qword_18071E0A8, 256, v141, v142);
            v140[3](v143, a3, v140);
            LOBYTE(v140) = (*(*(*(a4 + 32) + 8) + 16))(a2, v61, a3);
            (*(v39 + 8))(v61, a3);
            if (v140)
            {
LABEL_60:
              v65 = 0;
              *v56 = 0xFFF0000000000000;
              return v65 & 1;
            }
          }

          else if (v58 >= 64)
          {
            goto LABEL_59;
          }
        }

        if (((*(a4 + 120))(a3, a4) & 0x8000000000000000) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_60;
      }

      v213 = v42;
      v214 = v39;
      v221 = a1;
      v220 = a2;
      v222 = v55;
      if (v55 >= 53)
      {
        v67 = v55;
        v68 = v233;
        v69 = v227;
        v70 = v55 - 53;
        v230 = swift_getAssociatedConformanceWitness(v233, v53, v227, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v218 = *(v230 + 1);
        v219 = v230 + 8;
        v71 = v228;
        v218(&qword_1806729C0, 512, v69, v230);
        v72 = v68;
        v73 = v68[3];
        v217 = v68 + 3;
        v216 = v73;
        v74 = v236;
        v75 = (v73)(v71, v53, v72);
        v212 = v67 - 52;
        v243 = v70;
        v211 = v54 + 256;
        v76 = *(v54 + 256);
        v215 = lazy protocol witness table accessor for type Int and conformance Int(v75, v77, v78);
        v76(v74, &v243, &type metadata for Int, v215, v53, v54);
        v239 = *(v239 + 8);
        (v239)(v74, v53);
        v218(qword_18071E0B8, 768, v69, v230);
        v79 = v224;
        v80 = v71;
        (v216)(v71, v53, v233);
        v81 = AssociatedConformanceWitness;
        (*(AssociatedConformanceWitness + 64))(v79, v232, v53, AssociatedConformanceWitness);
        (v239)(v79, v53);
        v218(&qword_1806729C0, 512, v69, v230);
        (v216)(v80, v53, v233);
        v82 = v225;
        v83 = v236;
        (*(*(v81 + 8) + 40))(v236, v79, v53);
        v84 = v239;
        (v239)(v79, v53);
        v84(v83, v53);
        v85 = v237;
        (*(v54 + 192))(v237, v82, v53, v54);
        v84(v82, v53);
        v243 = v212;
        (*(v54 + 240))(v85, &v243, &type metadata for Int, v215, v53, v54);
        v84(v85, v53);
        v86 = *(v54 + 120);
        v237 = v54;
        v224 = v86;
        v225 = (v54 + 120);
        v87 = (v86)(v53, v54);
        v88 = v84;
        v84(v83, v53);
        v89 = v231;
        AssociatedConformanceWitness = v87 & 0xFFFFFFFFFFFFFLL;
        v90 = swift_getAssociatedConformanceWitness(v240, a3, v53, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        v91 = v232;
        v92 = (*(v90 + 40))(v89);
        v240 = v90;
        if (v92)
        {
          v88(v91, v53);
          v93 = v222;
          v94 = v88;
          v95 = AssociatedConformanceWitness;
        }

        else
        {
          v123 = (*(*(v90 + 8) + 8))(v89, v91, v53);
          v88(v91, v53);
          if ((v123 & 1) == 0)
          {
            v124 = v238;
            v95 = AssociatedConformanceWitness;
            goto LABEL_50;
          }

          v94 = v88;
          v93 = v222;
          v95 = AssociatedConformanceWitness;
          if ((v87 & 1) == 0)
          {
            v124 = v238;
            goto LABEL_50;
          }
        }

        v124 = v238;
        if (v95 == 0xFFFFFFFFFFFFFLL)
        {
          if (v93 >= 0x3FF)
          {
            v94(v231, v238);
            v125 = v234;
            v126 = v234(a3, a4);
            v127 = v221;
            if (v126)
            {
              if (v125(a3, a4))
              {
                v128 = v220;
                if (v229(a3, a4) < 64)
                {
                  goto LABEL_116;
                }

                v243 = 0;
                v205 = v213;
                (*(a4 + 96))(&v243, &type metadata for Int, v215, a3, a4);
                v203 = (*(*(*(a4 + 32) + 8) + 16))(v128, v205, a3);
                (*(v214 + 8))(v205, a3);
              }

              else
              {
                v199 = v125(a3, a4);
                v200 = v220;
                v201 = v229(a3, a4);
                if ((v199 & 1) == 0)
                {
                  if (v201 >= 64)
                  {
                    goto LABEL_117;
                  }

LABEL_116:
                  if (((*(a4 + 120))(a3, a4) & 0x8000000000000000) == 0)
                  {
                    goto LABEL_117;
                  }

LABEL_118:
                  v65 = 0;
                  *v127 = 0xFFF0000000000000;
                  return v65 & 1;
                }

                if (v201 <= 64)
                {
                  v206 = v223;
                  v207 = v241;
                  v208 = swift_getAssociatedConformanceWitness(v223, a3, v241, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
                  v209 = v242;
                  (*(v208 + 8))(&qword_18071E0A8, 256, v207, v208);
                  v210 = v213;
                  v206[3](v209, a3, v206);
                  LOBYTE(v206) = (*(*(*(a4 + 32) + 8) + 16))(v200, v210, a3);
                  (*(v214 + 8))(v210, a3);
                  if (v206)
                  {
                    goto LABEL_118;
                  }

                  goto LABEL_116;
                }

                v243 = 0;
                v202 = v213;
                (*(a4 + 96))(&v243, &type metadata for Int, v215, a3, a4);
                v203 = (*(*(*(a4 + 32) + 8) + 16))(v200, v202, a3);
                (*(v214 + 8))(v202, a3);
              }

              if (v203)
              {
                goto LABEL_118;
              }
            }

LABEL_117:
            v65 = 0;
            *v127 = 0x7FF0000000000000;
            return v65 & 1;
          }

          v222 = v93 + 1;
          v95 = 0x10000000000000;
        }

        else
        {
          ++v95;
        }

LABEL_50:
        v134 = v234;
        if ((v234(a3, a4) & 1) == 0)
        {
          goto LABEL_69;
        }

        if (v134(a3, a4))
        {
          v135 = v220;
          if (v229(a3, a4) < 64)
          {
LABEL_68:
            if (((*(a4 + 120))(a3, a4) & 0x8000000000000000) == 0)
            {
              goto LABEL_69;
            }

            goto LABEL_109;
          }

          v243 = 0;
          v150 = v213;
          (*(a4 + 96))(&v243, &type metadata for Int, v215, a3, a4);
          v139 = (*(*(*(a4 + 32) + 8) + 16))(v135, v150, a3);
          v151 = v150;
          v124 = v238;
          (*(v214 + 8))(v151, a3);
        }

        else
        {
          v136 = v134(a3, a4);
          v137 = v229(a3, a4);
          if ((v136 & 1) == 0)
          {
            if (v137 < 64)
            {
              goto LABEL_68;
            }

            goto LABEL_69;
          }

          if (v137 <= 64)
          {
            v194 = v223;
            v195 = v241;
            v196 = swift_getAssociatedConformanceWitness(v223, a3, v241, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v197 = v242;
            (*(v196 + 8))(&qword_18071E0A8, 256, v195, v196);
            v198 = v213;
            (*(v194 + 3))(v197, a3, v194);
            LOBYTE(v195) = (*(*(*(a4 + 32) + 8) + 16))(v220, v198, a3);
            (*(v214 + 8))(v198, a3);
            if (v195)
            {
              v152 = 0x8000000000000000;
              v124 = v238;
              goto LABEL_70;
            }

            v204 = (*(a4 + 120))(a3, a4);
            v124 = v238;
            if ((v204 & 0x8000000000000000) == 0)
            {
              goto LABEL_69;
            }

LABEL_109:
            v152 = 0x8000000000000000;
LABEL_70:
            *v221 = (v95 & 0xFFFFFFFFFFFFFLL | (v222 << 52)) + v152 + 0x3FF0000000000000;
            v153 = v237;
            v154 = *(v237 + 8);
            v155 = v154(v124, v237);
            v156 = v231;
            if (v155)
            {
              if ((*(v153 + 16))(v124, v153) < 64)
              {
                goto LABEL_78;
              }
            }

            else
            {
              v157 = v154(v124, v153);
              v158 = (*(v153 + 16))(v124, v153);
              if ((v157 & 1) == 0)
              {
                v161 = v240;
                if (v158 < 64)
                {
LABEL_78:
                  v162 = (v224)(v124, v153);
                  (v239)(v156, v124);
LABEL_79:
                  v65 = v162 == 0;
                  return v65 & 1;
                }

                v243 = 0;
                v159 = v236;
                (*(v153 + 12))(&v243, &type metadata for Int, v215, v124, v153);
                v160 = *(v161 + 1);
LABEL_82:
                v65 = (*(v160 + 1))(v156, v159, v124);
                v168 = v239;
                (v239)(v159, v124);
                v168(v156, v124);
                return v65 & 1;
              }

              if (v158 <= 64)
              {
                v163 = v228;
                (v218)(&qword_18071E0A8, 256);
                v164 = v236;
                (v216)(v163, v124, v233);
                v165 = (v240[4])(v156, v164, v124);
                v166 = v164;
                v167 = v239;
                (v239)(v166, v124);
                if ((v165 & 1) == 0)
                {
                  v167(v156, v124);
                  v65 = 0;
                  return v65 & 1;
                }

                v162 = (v224)(v124, v153);
                v167(v156, v124);
                goto LABEL_79;
              }
            }

            v243 = 0;
            v159 = v236;
            (*(v153 + 12))(&v243, &type metadata for Int, v215, v124, v153);
            v160 = v240[1];
            goto LABEL_82;
          }

          v243 = 0;
          v138 = v213;
          (*(a4 + 96))(&v243, &type metadata for Int, v215, a3, a4);
          v139 = (*(*(*(a4 + 32) + 8) + 16))(v220, v138, a3);
          (*(v214 + 8))(v138, a3);
        }

        if (v139)
        {
          goto LABEL_109;
        }

LABEL_69:
        v152 = 0;
        goto LABEL_70;
      }

      v96 = v230;
      (*(v239 + 32))(v230, v52, v53);
      v97 = *(v54 + 64);
      if (v97(v53, v54))
      {
        v98 = v233;
        v99 = v227;
        v100 = swift_getAssociatedConformanceWitness(v233, v53, v227, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v101 = v54;
        v102 = v228;
        (*(v100 + 8))(&qword_18071E0A8, 256, v99, v100);
        v103 = v236;
        v104 = v102;
        v54 = v101;
        v96 = v230;
        (v98[3])(v104, v53, v98);
        v105 = swift_getAssociatedConformanceWitness(v240, a3, v53, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        LOBYTE(v98) = (*(v105 + 32))(v96, v103, v53, v105);
        (*(v239 + 8))(v103, v53);
        if ((v98 & 1) == 0)
        {
LABEL_119:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      v106 = v54;
      v107 = *(v54 + 128);
      if (v107(v53, v106) <= 63)
      {
LABEL_84:
        v169 = v106[15](v53, v106);
        (*(v239 + 8))(v96, v53);
        v170 = v234;
        v171 = v234(a3, a4);
        v172 = v221;
        if ((v171 & 1) == 0)
        {
          goto LABEL_98;
        }

        if (v170(a3, a4))
        {
          v173 = v220;
          v174 = v229(a3, a4);
          if (v174 < 64)
          {
            goto LABEL_97;
          }

          v243 = 0;
          v185 = *(a4 + 96);
          v186 = lazy protocol witness table accessor for type Int and conformance Int(v174, v175, v176);
          v187 = v213;
          v185(&v243, &type metadata for Int, v186, a3, a4);
          v184 = (*(*(*(a4 + 32) + 8) + 16))(v173, v187, a3);
          (*(v214 + 8))(v187, a3);
        }

        else
        {
          v177 = v170(a3, a4);
          v178 = v229(a3, a4);
          if ((v177 & 1) == 0)
          {
            if (v178 < 64)
            {
LABEL_97:
              if (((*(a4 + 120))(a3, a4) & 0x8000000000000000) == 0)
              {
                goto LABEL_98;
              }

LABEL_99:
              v193 = 0x8000000000000000;
LABEL_100:
              if ((v222 & 0x8000000000000000) == 0)
              {
                *v172 = ((v169 << (52 - v222)) & 0xFFFFFFFFFFFFFLL | (v222 << 52)) + v193 + 0x3FF0000000000000;
                goto LABEL_17;
              }

              goto LABEL_119;
            }

LABEL_98:
            v193 = 0;
            goto LABEL_100;
          }

          if (v178 <= 64)
          {
            v188 = v223;
            v189 = v241;
            v190 = swift_getAssociatedConformanceWitness(v223, a3, v241, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v191 = v242;
            (*(v190 + 8))(&qword_18071E0A8, 256, v189, v190);
            v192 = v213;
            (*(v188 + 3))(v191, a3, v188);
            LOBYTE(v189) = (*(*(*(a4 + 32) + 8) + 16))(v220, v192, a3);
            (*(v214 + 8))(v192, a3);
            if (v189)
            {
              goto LABEL_99;
            }

            goto LABEL_97;
          }

          v243 = 0;
          v181 = *(a4 + 96);
          v182 = lazy protocol witness table accessor for type Int and conformance Int(v178, v179, v180);
          v183 = v213;
          v181(&v243, &type metadata for Int, v182, a3, a4);
          v184 = (*(*(*(a4 + 32) + 8) + 16))(v220, v183, a3);
          (*(v214 + 8))(v183, a3);
        }

        if (v184)
        {
          goto LABEL_99;
        }

        goto LABEL_98;
      }

      v243 = -1;
      v108 = v97(v53, v106);
      v237 = v106;
      v109 = v107(v53, v106);
      if (v108)
      {
        if (v109 > 64)
        {
          v106 = v237;
          v112 = *(v237 + 12);
          v113 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v109, v110, v111);
          v114 = v236;
          v112(&v243, &type metadata for UInt64, v113, v53, v106);
          v115 = swift_getAssociatedConformanceWitness(v240, a3, v53, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
          v116 = v230;
          v117 = (*(v115 + 16))(v114, v230, v53, v115);
          v118 = v114;
          v96 = v116;
          (*(v239 + 8))(v118, v53);
          goto LABEL_46;
        }

        v144 = v233;
        v145 = v227;
        v146 = swift_getAssociatedConformanceWitness(v233, v53, v227, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v147 = v228;
        (*(v146 + 8))(&qword_18071E0A8, 256, v145, v146);
        v148 = v236;
        (v144[3])(v147, v53, v144);
        v149 = swift_getAssociatedConformanceWitness(v240, a3, v53, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        v96 = v230;
        LOBYTE(v144) = (*(v149 + 40))(v230, v148, v53, v149);
        (*(v239 + 8))(v148, v53);
        if ((v144 & 1) == 0)
        {
          v106 = v237;
          goto LABEL_84;
        }
      }

      else if (v109 > 64)
      {
        v106 = v237;
        v129 = *(v237 + 12);
        v130 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v109, v110, v111);
        v131 = v236;
        v129(&v243, &type metadata for UInt64, v130, v53, v106);
        v132 = swift_getAssociatedConformanceWitness(v240, a3, v53, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        v117 = (*(v132 + 16))(v131, v230, v53, v132);
        v133 = v131;
        v96 = v230;
        (*(v239 + 8))(v133, v53);
LABEL_46:
        if (v117)
        {
          goto LABEL_119;
        }

        goto LABEL_84;
      }

      v106 = v237;
      (*(v237 + 15))(v53, v237);
      goto LABEL_84;
    }
  }

  else
  {
    v48 = v43(a3, a4);
    v229 = *(a4 + 128);
    v45 = v229(a3, a4);
    if (v48)
    {
      if (v45 > 64)
      {
        goto LABEL_15;
      }

      v49 = v241;
      v50 = swift_getAssociatedConformanceWitness(v14, a3, v241, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v51 = v242;
      (*(v50 + 8))(&qword_18071E0A8, 256, v49, v50);
      (*(v14 + 24))(v51, a3, v14);
      LOBYTE(v49) = (*(*(*(a4 + 32) + 8) + 32))(a2, v42, a3);
      (*(v39 + 8))(v42, a3);
      if ((v49 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else if (v45 >= 64)
    {
      goto LABEL_15;
    }
  }

  if ((*(a4 + 120))(a3, a4))
  {
    goto LABEL_7;
  }

LABEL_16:
  *a1 = 0;
LABEL_17:
  v65 = 1;
  return v65 & 1;
}

uint64_t specialized static BinaryFloatingPoint<>._convert<A>(from:)(_DWORD *a1, uint64_t a2, Class *a3, uint64_t a4)
{
  v8 = *(a4 + 24);
  swift_getAssociatedTypeWitness(255, v8, a3, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, a3, v9, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Numeric);
  v232 = *(AssociatedConformanceWitness + 16);
  swift_getAssociatedTypeWitness(0, v232, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v226 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v227 = &v210 - v13;
  v239 = v8;
  v14 = *(v8 + 16);
  swift_getAssociatedTypeWitness(0, v14, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v240 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v241 = &v210 - v17;
  v237 = swift_checkMetadataState(0, v10);
  v238 = *(v237 - 1);
  v19 = MEMORY[0x1EEE9AC00](v237 - 1, v18);
  v229 = &v210 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v230 = &v210 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v223 = &v210 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v224 = &v210 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v235 = &v210 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v231 = &v210 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34, v36);
  v236 = &v210 - v38;
  v39 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v37, v40);
  v42 = &v210 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(a4 + 64);
  v44 = v43(a3, a4);
  v222 = v14;
  v233 = v43;
  v234 = a4 + 64;
  if (v44)
  {
    v228 = *(a4 + 128);
    v45 = v228(a3, a4);
    if (v45 >= 64)
    {
LABEL_15:
      v242 = 0;
      v62 = *(a4 + 96);
      v63 = lazy protocol witness table accessor for type Int and conformance Int(v45, v46, v47);
      v62(&v242, &type metadata for Int, v63, a3, a4);
      v64 = (*(*(*(a4 + 16) + 8) + 8))(a2, v42, a3);
      (*(v39 + 8))(v42, a3);
      if (v64)
      {
        goto LABEL_16;
      }

LABEL_7:
      v52 = v236;
      v239[7](a3);
      v53 = v237;
      v54 = swift_getAssociatedConformanceWitness(a4, a3, v237, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
      v55 = (*(v54 + 136))(v53, v54);
      if (v55 >= 128)
      {
        v56 = a1;
        (*(v238 + 8))(v52, v53);
        v57 = v233;
        if ((v233(a3, a4) & 1) == 0)
        {
          goto LABEL_59;
        }

        if (v57(a3, a4))
        {
          v58 = v228(a3, a4);
          if (v58 >= 64)
          {
            v242 = 0;
            v61 = v42;
            goto LABEL_31;
          }
        }

        else
        {
          v61 = v42;
          v122 = v57(a3, a4);
          v58 = v228(a3, a4);
          if (v122)
          {
            if (v58 > 64)
            {
              v242 = 0;
LABEL_31:
              v123 = *(a4 + 96);
              v124 = lazy protocol witness table accessor for type Int and conformance Int(v58, v59, v60);
              v123(&v242, &type metadata for Int, v124, a3, a4);
              v125 = (*(*(*(a4 + 32) + 8) + 16))(a2, v61, a3);
              (*(v39 + 8))(v61, a3);
              if (v125)
              {
                goto LABEL_60;
              }

LABEL_59:
              v65 = 0;
              *v56 = 2139095040;
              return v65 & 1;
            }

            v143 = v222;
            v144 = v240;
            v145 = swift_getAssociatedConformanceWitness(v222, a3, v240, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v146 = v241;
            (*(v145 + 8))(&qword_18071E0A8, 256, v144, v145);
            v143[3](v146, a3, v143);
            LOBYTE(v143) = (*(*(*(a4 + 32) + 8) + 16))(a2, v61, a3);
            (*(v39 + 8))(v61, a3);
            if (v143)
            {
LABEL_60:
              v65 = 0;
              *v56 = -8388608;
              return v65 & 1;
            }
          }

          else if (v58 >= 64)
          {
            goto LABEL_59;
          }
        }

        if (((*(a4 + 120))(a3, a4) & 0x8000000000000000) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_60;
      }

      v212 = v42;
      v213 = v39;
      v220 = a1;
      v219 = a2;
      v221 = v55;
      if (v55 >= 24)
      {
        v67 = v55;
        v68 = v232;
        v69 = v226;
        v70 = v55 - 24;
        v229 = swift_getAssociatedConformanceWitness(v232, v53, v226, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v217 = *(v229 + 1);
        v218 = v229 + 8;
        v71 = v227;
        v217(&qword_1806729C0, 512, v69, v229);
        v72 = v68;
        v73 = v68[3];
        v216 = v68 + 3;
        v215 = v73;
        v74 = v235;
        v75 = (v73)(v71, v53, v72);
        v211 = v67 - 23;
        v242 = v70;
        v210 = v54 + 256;
        v76 = *(v54 + 256);
        v214 = lazy protocol witness table accessor for type Int and conformance Int(v75, v77, v78);
        v76(v74, &v242, &type metadata for Int, v214, v53, v54);
        v238 = *(v238 + 8);
        (v238)(v74, v53);
        v217(qword_18071E0B8, 768, v69, v229);
        v79 = v223;
        v80 = v71;
        (v215)(v71, v53, v232);
        v81 = AssociatedConformanceWitness;
        (*(AssociatedConformanceWitness + 64))(v79, v231, v53, AssociatedConformanceWitness);
        (v238)(v79, v53);
        v217(&qword_1806729C0, 512, v69, v229);
        (v215)(v80, v53, v232);
        v82 = v224;
        v83 = v235;
        (*(*(v81 + 8) + 40))(v235, v79, v53);
        v84 = v79;
        v85 = v238;
        (v238)(v84, v53);
        v85(v83, v53);
        v86 = v236;
        (*(v54 + 192))(v236, v82, v53, v54);
        v85(v82, v53);
        v242 = v211;
        v87 = v86;
        v88 = v86;
        v89 = v231;
        (*(v54 + 240))(v88, &v242, &type metadata for Int, v214, v53, v54);
        v85(v87, v53);
        v90 = *(v54 + 120);
        v236 = v54;
        v224 = v90;
        AssociatedConformanceWitness = v54 + 120;
        v91 = (v90)(v53, v54);
        v92 = v83;
        v93 = v85;
        v85(v92, v53);
        v94 = v230;
        v95 = v91 & 0x7FFFFF;
        v96 = swift_getAssociatedConformanceWitness(v239, a3, v53, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        v97 = *(v96 + 5);
        v239 = v96;
        if (v97(v94, v89, v53))
        {
          v93(v89, v53);
          v98 = v221;
        }

        else
        {
          v126 = (*(v239[1] + 1))(v94, v89, v53);
          v93(v89, v53);
          if ((v126 & 1) == 0 || (v98 = v221, (v91 & 1) == 0))
          {
            v127 = v237;
            goto LABEL_50;
          }
        }

        v127 = v237;
        if (v95 == 0x7FFFFF)
        {
          if (v98 >= 0x7F)
          {
            v93(v230, v237);
            v128 = v233;
            v129 = v233(a3, a4);
            v130 = v220;
            if (v129)
            {
              if (v128(a3, a4))
              {
                v131 = v219;
                if (v228(a3, a4) < 64)
                {
                  goto LABEL_111;
                }

                v242 = 0;
                v204 = v212;
                (*(a4 + 96))(&v242, &type metadata for Int, v214, a3, a4);
                v203 = (*(*(*(a4 + 32) + 8) + 16))(v131, v204, a3);
                (*(v213 + 8))(v204, a3);
              }

              else
              {
                v199 = v128(a3, a4);
                v200 = v219;
                v201 = v228(a3, a4);
                if ((v199 & 1) == 0)
                {
                  if (v201 >= 64)
                  {
                    goto LABEL_112;
                  }

LABEL_111:
                  if (((*(a4 + 120))(a3, a4) & 0x8000000000000000) == 0)
                  {
                    goto LABEL_112;
                  }

LABEL_113:
                  v65 = 0;
                  *v130 = -8388608;
                  return v65 & 1;
                }

                if (v201 <= 64)
                {
                  v205 = v222;
                  v206 = v240;
                  v207 = swift_getAssociatedConformanceWitness(v222, a3, v240, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
                  v208 = v241;
                  (*(v207 + 8))(&qword_18071E0A8, 256, v206, v207);
                  v209 = v212;
                  v205[3](v208, a3, v205);
                  LOBYTE(v205) = (*(*(*(a4 + 32) + 8) + 16))(v200, v209, a3);
                  (*(v213 + 8))(v209, a3);
                  if (v205)
                  {
                    goto LABEL_113;
                  }

                  goto LABEL_111;
                }

                v242 = 0;
                v202 = v212;
                (*(a4 + 96))(&v242, &type metadata for Int, v214, a3, a4);
                v203 = (*(*(*(a4 + 32) + 8) + 16))(v200, v202, a3);
                (*(v213 + 8))(v202, a3);
              }

              if (v203)
              {
                goto LABEL_113;
              }
            }

LABEL_112:
            v65 = 0;
            *v130 = 2139095040;
            return v65 & 1;
          }

          v221 = v98 + 1;
          v95 = 0x800000;
        }

        else
        {
          ++v95;
        }

LABEL_50:
        v137 = v233;
        if ((v233(a3, a4) & 1) == 0)
        {
          goto LABEL_68;
        }

        if (v137(a3, a4))
        {
          v138 = v219;
          if (v228(a3, a4) < 64)
          {
LABEL_67:
            if (((*(a4 + 120))(a3, a4) & 0x8000000000000000) == 0)
            {
              goto LABEL_68;
            }

LABEL_89:
            v154 = 0x80000000;
LABEL_90:
            *v220 = (v95 & 0x7FFFFF | (v221 << 23)) + v154 + 1065353216;
            v185 = v236;
            v186 = *(v236 + 8);
            v187 = v186(v127, v236);
            v188 = v230;
            if (v187)
            {
              if ((*(v185 + 16))(v127, v185) >= 64)
              {
                goto LABEL_100;
              }

              goto LABEL_98;
            }

            v189 = v186(v127, v185);
            v190 = (*(v185 + 16))(v127, v185);
            if (v189)
            {
              if (v190 <= 64)
              {
                v191 = v227;
                (v217)(&qword_18071E0A8, 256);
                v192 = v235;
                (v215)(v191, v127, v232);
                v193 = (v239[4])(v188, v192, v127);
                v194 = v192;
                v195 = v238;
                (v238)(v194, v127);
                if ((v193 & 1) == 0)
                {
                  v195(v188, v127);
                  v65 = 0;
                  return v65 & 1;
                }

                v196 = (v224)(v127, v185);
                v195(v188, v127);
                goto LABEL_99;
              }
            }

            else if (v190 < 64)
            {
LABEL_98:
              v196 = (v224)(v127, v185);
              (v238)(v188, v127);
LABEL_99:
              v65 = v196 == 0;
              return v65 & 1;
            }

LABEL_100:
            v242 = 0;
            v197 = v235;
            (*(v185 + 12))(&v242, &type metadata for Int, v214, v127, v185);
            v65 = (*(v239[1] + 1))(v188, v197, v127);
            v198 = v238;
            (v238)(v197, v127);
            v198(v188, v127);
            return v65 & 1;
          }

          v242 = 0;
          v153 = v212;
          (*(a4 + 96))(&v242, &type metadata for Int, v214, a3, a4);
          v142 = (*(*(*(a4 + 32) + 8) + 16))(v138, v153, a3);
          v127 = v237;
          (*(v213 + 8))(v153, a3);
        }

        else
        {
          v139 = v137(a3, a4);
          v140 = v228(a3, a4);
          if ((v139 & 1) == 0)
          {
            if (v140 < 64)
            {
              goto LABEL_67;
            }

LABEL_68:
            v154 = 0;
            goto LABEL_90;
          }

          if (v140 <= 64)
          {
            v180 = v222;
            v181 = v240;
            v182 = swift_getAssociatedConformanceWitness(v222, a3, v240, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v183 = v241;
            (*(v182 + 8))(&qword_18071E0A8, 256, v181, v182);
            v184 = v212;
            (*(v180 + 3))(v183, a3, v180);
            LOBYTE(v181) = (*(*(*(a4 + 32) + 8) + 16))(v219, v184, a3);
            v127 = v237;
            (*(v213 + 8))(v184, a3);
            if (v181)
            {
              goto LABEL_89;
            }

            goto LABEL_67;
          }

          v242 = 0;
          v141 = v212;
          (*(a4 + 96))(&v242, &type metadata for Int, v214, a3, a4);
          v142 = (*(*(*(a4 + 32) + 8) + 16))(v219, v141, a3);
          (*(v213 + 8))(v141, a3);
        }

        if (v142)
        {
          goto LABEL_89;
        }

        goto LABEL_68;
      }

      v99 = v229;
      (*(v238 + 32))(v229, v52, v53);
      v100 = *(v54 + 64);
      if (v100(v53, v54))
      {
        v101 = v232;
        v102 = v226;
        v103 = swift_getAssociatedConformanceWitness(v232, v53, v226, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v104 = v54;
        v105 = v227;
        (*(v103 + 8))(&qword_18071E0A8, 256, v102, v103);
        v106 = v235;
        v107 = v105;
        v54 = v104;
        v99 = v229;
        (v101[3])(v107, v53, v101);
        v108 = swift_getAssociatedConformanceWitness(v239, a3, v53, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        LOBYTE(v101) = (*(v108 + 32))(v99, v106, v53, v108);
        (*(v238 + 8))(v106, v53);
        if ((v101 & 1) == 0)
        {
LABEL_114:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      v109 = v54;
      v110 = *(v54 + 128);
      if (v110(v53, v109) <= 31)
      {
LABEL_70:
        v155 = v109[15](v53, v109);
        (*(v238 + 8))(v99, v53);
        v156 = v233;
        v157 = v233(a3, a4);
        v158 = v220;
        if ((v157 & 1) == 0)
        {
          goto LABEL_84;
        }

        if (v156(a3, a4))
        {
          v159 = v219;
          v160 = v228(a3, a4);
          if (v160 < 64)
          {
            goto LABEL_83;
          }

          v242 = 0;
          v171 = *(a4 + 96);
          v172 = lazy protocol witness table accessor for type Int and conformance Int(v160, v161, v162);
          v173 = v212;
          v171(&v242, &type metadata for Int, v172, a3, a4);
          v170 = (*(*(*(a4 + 32) + 8) + 16))(v159, v173, a3);
          (*(v213 + 8))(v173, a3);
        }

        else
        {
          v163 = v156(a3, a4);
          v164 = v228(a3, a4);
          if ((v163 & 1) == 0)
          {
            if (v164 < 64)
            {
LABEL_83:
              if (((*(a4 + 120))(a3, a4) & 0x8000000000000000) == 0)
              {
                goto LABEL_84;
              }

LABEL_85:
              v179 = 0x80000000;
LABEL_86:
              if ((v221 & 0x8000000000000000) == 0)
              {
                *v158 = ((v221 << 23) + 1065353216) & 0x7F800000 | (v155 << (23 - v221)) & 0x7FFFFF | v179;
                goto LABEL_17;
              }

              goto LABEL_114;
            }

LABEL_84:
            v179 = 0;
            goto LABEL_86;
          }

          if (v164 <= 64)
          {
            v174 = v222;
            v175 = v240;
            v176 = swift_getAssociatedConformanceWitness(v222, a3, v240, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v177 = v241;
            (*(v176 + 8))(&qword_18071E0A8, 256, v175, v176);
            v178 = v212;
            (*(v174 + 3))(v177, a3, v174);
            LOBYTE(v175) = (*(*(*(a4 + 32) + 8) + 16))(v219, v178, a3);
            (*(v213 + 8))(v178, a3);
            if (v175)
            {
              goto LABEL_85;
            }

            goto LABEL_83;
          }

          v242 = 0;
          v167 = *(a4 + 96);
          v168 = lazy protocol witness table accessor for type Int and conformance Int(v164, v165, v166);
          v169 = v212;
          v167(&v242, &type metadata for Int, v168, a3, a4);
          v170 = (*(*(*(a4 + 32) + 8) + 16))(v219, v169, a3);
          (*(v213 + 8))(v169, a3);
        }

        if (v170)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      }

      LODWORD(v242) = -1;
      v111 = v100(v53, v109);
      v236 = v109;
      v112 = v110(v53, v109);
      if (v111)
      {
        if (v112 > 32)
        {
          v109 = v236;
          v115 = *(v236 + 12);
          v116 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(v112, v113, v114);
          v117 = v235;
          v115(&v242, &type metadata for UInt32, v116, v53, v109);
          v118 = swift_getAssociatedConformanceWitness(v239, a3, v53, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
          v119 = v229;
          v120 = (*(v118 + 16))(v117, v229, v53, v118);
          v121 = v117;
          v99 = v119;
          (*(v238 + 8))(v121, v53);
          goto LABEL_47;
        }

        v147 = v232;
        v148 = v226;
        v149 = swift_getAssociatedConformanceWitness(v232, v53, v226, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v150 = v227;
        (*(v149 + 8))(&qword_18071E0A8, 256, v148, v149);
        v151 = v235;
        (v147[3])(v150, v53, v147);
        v152 = swift_getAssociatedConformanceWitness(v239, a3, v53, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        v99 = v229;
        LOBYTE(v147) = (*(v152 + 40))(v229, v151, v53, v152);
        (*(v238 + 8))(v151, v53);
        if ((v147 & 1) == 0)
        {
          v109 = v236;
          goto LABEL_70;
        }
      }

      else if (v112 > 32)
      {
        v109 = v236;
        v132 = *(v236 + 12);
        v133 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(v112, v113, v114);
        v134 = v235;
        v132(&v242, &type metadata for UInt32, v133, v53, v109);
        v135 = swift_getAssociatedConformanceWitness(v239, a3, v53, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        v120 = (*(v135 + 16))(v134, v229, v53, v135);
        v136 = v134;
        v99 = v229;
        (*(v238 + 8))(v136, v53);
LABEL_47:
        if (v120)
        {
          goto LABEL_114;
        }

        goto LABEL_70;
      }

      v109 = v236;
      (*(v236 + 15))(v53, v236);
      goto LABEL_70;
    }
  }

  else
  {
    v48 = v43(a3, a4);
    v228 = *(a4 + 128);
    v45 = v228(a3, a4);
    if (v48)
    {
      if (v45 > 64)
      {
        goto LABEL_15;
      }

      v49 = v240;
      v50 = swift_getAssociatedConformanceWitness(v14, a3, v240, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v51 = v241;
      (*(v50 + 8))(&qword_18071E0A8, 256, v49, v50);
      (*(v14 + 24))(v51, a3, v14);
      LOBYTE(v49) = (*(*(*(a4 + 32) + 8) + 32))(a2, v42, a3);
      (*(v39 + 8))(v42, a3);
      if ((v49 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else if (v45 >= 64)
    {
      goto LABEL_15;
    }
  }

  if ((*(a4 + 120))(a3, a4))
  {
    goto LABEL_7;
  }

LABEL_16:
  *a1 = 0;
LABEL_17:
  v65 = 1;
  return v65 & 1;
}

uint64_t specialized static BinaryFloatingPoint<>._convert<A>(from:)(__int16 *a1, uint64_t a2, Class *a3, uint64_t a4)
{
  v8 = *(a4 + 24);
  swift_getAssociatedTypeWitness(255, v8, a3, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, a3, v9, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Numeric);
  v231 = *(AssociatedConformanceWitness + 16);
  swift_getAssociatedTypeWitness(0, v231, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v225 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v226 = &v209 - v13;
  v238 = v8;
  v14 = *(v8 + 16);
  swift_getAssociatedTypeWitness(0, v14, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v239 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v240 = &v209 - v17;
  v236 = swift_checkMetadataState(0, v10);
  v237 = *(v236 - 1);
  v19 = MEMORY[0x1EEE9AC00](v236 - 1, v18);
  v228 = &v209 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v229 = &v209 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v222 = &v209 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v223 = &v209 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v234 = &v209 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v230 = &v209 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34, v36);
  v235 = &v209 - v38;
  v39 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v37, v40);
  v42 = &v209 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(a4 + 64);
  v44 = v43(a3, a4);
  v221 = v14;
  v232 = v43;
  v233 = a4 + 64;
  if (v44)
  {
    v227 = *(a4 + 128);
    v45 = v227(a3, a4);
    if (v45 >= 64)
    {
LABEL_15:
      v241 = 0;
      v62 = *(a4 + 96);
      v63 = lazy protocol witness table accessor for type Int and conformance Int(v45, v46, v47);
      v62(&v241, &type metadata for Int, v63, a3, a4);
      v64 = (*(*(*(a4 + 16) + 8) + 8))(a2, v42, a3);
      (*(v39 + 8))(v42, a3);
      if (v64)
      {
        goto LABEL_16;
      }

LABEL_7:
      v52 = v235;
      v238[7](a3);
      v53 = v236;
      v54 = swift_getAssociatedConformanceWitness(a4, a3, v236, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
      v55 = (*(v54 + 136))(v53, v54);
      if (v55 >= 16)
      {
        v56 = a1;
        (*(v237 + 8))(v52, v53);
        v57 = v232;
        if ((v232(a3, a4) & 1) == 0)
        {
          goto LABEL_63;
        }

        if (v57(a3, a4))
        {
          v58 = v227(a3, a4);
          if (v58 >= 64)
          {
            v241 = 0;
            v61 = v42;
            goto LABEL_31;
          }
        }

        else
        {
          v61 = v42;
          v116 = v57(a3, a4);
          v58 = v227(a3, a4);
          if (v116)
          {
            if (v58 > 64)
            {
              v241 = 0;
LABEL_31:
              v117 = *(a4 + 96);
              v118 = lazy protocol witness table accessor for type Int and conformance Int(v58, v59, v60);
              v117(&v241, &type metadata for Int, v118, a3, a4);
              v119 = (*(*(*(a4 + 32) + 8) + 16))(a2, v61, a3);
              (*(v39 + 8))(v61, a3);
              if (v119)
              {
                goto LABEL_64;
              }

LABEL_63:
              v65 = 0;
              v144 = 31744;
LABEL_65:
              *v56 = v144;
              return v65 & 1;
            }

            v140 = v221;
            v141 = v239;
            v142 = swift_getAssociatedConformanceWitness(v221, a3, v239, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v143 = v240;
            (*(v142 + 8))(&qword_18071E0A8, 256, v141, v142);
            v140[3](v143, a3, v140);
            LOBYTE(v140) = (*(*(*(a4 + 32) + 8) + 16))(a2, v61, a3);
            (*(v39 + 8))(v61, a3);
            if (v140)
            {
LABEL_64:
              v65 = 0;
              v144 = -1024;
              goto LABEL_65;
            }
          }

          else if (v58 >= 64)
          {
            goto LABEL_63;
          }
        }

        if (((*(a4 + 120))(a3, a4) & 0x8000000000000000) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_64;
      }

      v211 = v42;
      v212 = v39;
      v220 = a1;
      v218 = a2;
      v219 = v55;
      if (v55 >= 11)
      {
        v67 = v55;
        v68 = v231;
        v69 = v225;
        v70 = v55 - 11;
        v228 = swift_getAssociatedConformanceWitness(v231, v53, v225, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v216 = *(v228 + 1);
        v217 = v228 + 8;
        v71 = v226;
        v216(&qword_1806729C0, 512, v69, v228);
        v72 = v68;
        v73 = v68[3];
        v215 = v68 + 3;
        v214 = v73;
        v74 = v234;
        v75 = (v73)(v71, v53, v72);
        v210 = v67 - 10;
        v241 = v70;
        v209 = v54 + 256;
        v76 = *(v54 + 256);
        v213 = lazy protocol witness table accessor for type Int and conformance Int(v75, v77, v78);
        v76(v74, &v241, &type metadata for Int, v213, v53, v54);
        v237 = *(v237 + 8);
        (v237)(v74, v53);
        v216(qword_18071E0B8, 768, v69, v228);
        v79 = v222;
        v80 = v71;
        (v214)(v71, v53, v231);
        v81 = AssociatedConformanceWitness;
        (*(AssociatedConformanceWitness + 64))(v79, v230, v53, AssociatedConformanceWitness);
        (v237)(v79, v53);
        v216(&qword_1806729C0, 512, v69, v228);
        (v214)(v80, v53, v231);
        v82 = v223;
        v83 = v234;
        (*(*(v81 + 8) + 40))(v234, v79, v53);
        v84 = v237;
        (v237)(v79, v53);
        v84(v83, v53);
        v85 = v235;
        (*(v54 + 192))(v235, v82, v53, v54);
        v84(v82, v53);
        v241 = v210;
        v86 = v230;
        (*(v54 + 240))(v85, &v241, &type metadata for Int, v213, v53, v54);
        v84(v85, v53);
        v87 = *(v54 + 120);
        v235 = v54;
        v222 = v87;
        v223 = (v54 + 120);
        v88 = (v87)(v53, v54);
        v89 = v84;
        v84(v83, v53);
        v90 = v229;
        LODWORD(AssociatedConformanceWitness) = v88 & 0x3FF;
        v91 = swift_getAssociatedConformanceWitness(v238, a3, v53, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        if ((*(v91 + 40))(v90, v86, v53, v91))
        {
          v89(v86, v53);
          v92 = AssociatedConformanceWitness;
        }

        else
        {
          v120 = (*(*(v91 + 8) + 8))(v90, v86, v53);
          v89(v86, v53);
          if ((v120 & 1) == 0)
          {
            v126 = v91;
            v121 = v236;
            v132 = v219;
            LOWORD(v92) = AssociatedConformanceWitness;
            goto LABEL_51;
          }

          v92 = AssociatedConformanceWitness;
          if ((v88 & 1) == 0)
          {
            v126 = v91;
            v121 = v236;
            goto LABEL_50;
          }
        }

        v121 = v236;
        if (v92 == 1023)
        {
          if (v219 >= 0xF)
          {
            (v237)(v229, v236);
            v122 = v232;
            v123 = v232(a3, a4);
            v124 = v220;
            if (v123)
            {
              if (v122(a3, a4))
              {
                v125 = v218;
                if (v227(a3, a4) < 64)
                {
                  goto LABEL_118;
                }

                v241 = 0;
                v202 = v211;
                (*(a4 + 96))(&v241, &type metadata for Int, v213, a3, a4);
                v201 = (*(*(*(a4 + 32) + 8) + 16))(v125, v202, a3);
                (*(v212 + 8))(v202, a3);
              }

              else
              {
                v197 = v122(a3, a4);
                v198 = v218;
                v199 = v227(a3, a4);
                if ((v197 & 1) == 0)
                {
                  if (v199 >= 64)
                  {
                    goto LABEL_119;
                  }

LABEL_118:
                  if (((*(a4 + 120))(a3, a4) & 0x8000000000000000) == 0)
                  {
                    goto LABEL_119;
                  }

LABEL_120:
                  v65 = 0;
                  v208 = -1024;
                  goto LABEL_121;
                }

                if (v199 <= 64)
                {
                  v203 = v221;
                  v204 = v239;
                  v205 = swift_getAssociatedConformanceWitness(v221, a3, v239, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
                  v206 = v240;
                  (*(v205 + 8))(&qword_18071E0A8, 256, v204, v205);
                  v207 = v211;
                  v203[3](v206, a3, v203);
                  LOBYTE(v203) = (*(*(*(a4 + 32) + 8) + 16))(v198, v207, a3);
                  (*(v212 + 8))(v207, a3);
                  if (v203)
                  {
                    goto LABEL_120;
                  }

                  goto LABEL_118;
                }

                v241 = 0;
                v200 = v211;
                (*(a4 + 96))(&v241, &type metadata for Int, v213, a3, a4);
                v201 = (*(*(*(a4 + 32) + 8) + 16))(v198, v200, a3);
                (*(v212 + 8))(v200, a3);
              }

              if (v201)
              {
                goto LABEL_120;
              }
            }

LABEL_119:
            v65 = 0;
            v208 = 31744;
LABEL_121:
            *v124 = v208;
            return v65 & 1;
          }

          v126 = v91;
          v132 = v219 + 1;
          LOWORD(v92) = 1024;
LABEL_51:
          v133 = v232;
          if ((v232(a3, a4) & 1) == 0)
          {
            v135 = 0;
            goto LABEL_97;
          }

          if (v133(a3, a4))
          {
            v134 = v218;
            if (v227(a3, a4) >= 64)
            {
              v241 = 0;
              v151 = v211;
              (*(a4 + 96))(&v241, &type metadata for Int, v213, a3, a4);
              v152 = (*(*(*(a4 + 32) + 8) + 16))(v134, v151, a3);
              v121 = v236;
              (*(v212 + 8))(v151, a3);
              if (v152)
              {
                goto LABEL_96;
              }
            }

            else if ((*(a4 + 120))(a3, a4) < 0)
            {
              goto LABEL_96;
            }

LABEL_95:
            v135 = 0;
            goto LABEL_97;
          }

          v136 = v133(a3, a4);
          v137 = v227(a3, a4);
          if (v136)
          {
            if (v137 > 64)
            {
              v241 = 0;
              v138 = v211;
              (*(a4 + 96))(&v241, &type metadata for Int, v213, a3, a4);
              v139 = (*(*(*(a4 + 32) + 8) + 16))(v218, v138, a3);
              (*(v212 + 8))(v138, a3);
              if (v139)
              {
                goto LABEL_96;
              }

              goto LABEL_95;
            }

            v178 = v221;
            v179 = v239;
            v180 = swift_getAssociatedConformanceWitness(v221, a3, v239, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v181 = v240;
            (*(v180 + 8))(&qword_18071E0A8, 256, v179, v180);
            v182 = v211;
            (*(v178 + 3))(v181, a3, v178);
            LOBYTE(v179) = (*(*(*(a4 + 32) + 8) + 16))(v218, v182, a3);
            v121 = v236;
            (*(v212 + 8))(v182, a3);
            if (v179)
            {
LABEL_96:
              v135 = 0x8000;
LABEL_97:
              *v220 = ((v92 & 0x3FF | (v132 << 10)) + 15360) | v135;
              v183 = v235;
              v184 = *(v235 + 8);
              v185 = v184(v121, v235);
              v186 = v229;
              if (v185)
              {
                if ((*(v183 + 16))(v121, v183) >= 64)
                {
                  goto LABEL_107;
                }

                goto LABEL_105;
              }

              v187 = v184(v121, v183);
              v188 = (*(v183 + 16))(v121, v183);
              if (v187)
              {
                if (v188 <= 64)
                {
                  v189 = v226;
                  (v216)(&qword_18071E0A8, 256);
                  v190 = v234;
                  (v214)(v189, v121, v231);
                  v191 = (*(v126 + 32))(v186, v190, v121, v126);
                  v192 = v190;
                  v193 = v237;
                  (v237)(v192, v121);
                  if ((v191 & 1) == 0)
                  {
                    v193(v186, v121);
                    v65 = 0;
                    return v65 & 1;
                  }

                  v194 = (v222)(v121, v183);
                  v193(v186, v121);
                  goto LABEL_106;
                }
              }

              else if (v188 < 64)
              {
LABEL_105:
                v194 = (v222)(v121, v183);
                (v237)(v186, v121);
LABEL_106:
                v65 = v194 == 0;
                return v65 & 1;
              }

LABEL_107:
              v241 = 0;
              v195 = v234;
              (*(v183 + 12))(&v241, &type metadata for Int, v213, v121, v183);
              v65 = (*(*(v126 + 8) + 8))(v186, v195, v121);
              v196 = v237;
              (v237)(v195, v121);
              v196(v186, v121);
              return v65 & 1;
            }
          }

          else if (v137 >= 64)
          {
            goto LABEL_95;
          }

          if (((*(a4 + 120))(a3, a4) & 0x8000000000000000) == 0)
          {
            goto LABEL_95;
          }

          goto LABEL_96;
        }

        v126 = v91;
        LOWORD(v92) = v92 + 1;
LABEL_50:
        v132 = v219;
        goto LABEL_51;
      }

      v93 = v228;
      (*(v237 + 32))(v228, v52, v53);
      v94 = *(v54 + 64);
      if (v94(v53, v54))
      {
        v95 = v231;
        v96 = v225;
        v97 = swift_getAssociatedConformanceWitness(v231, v53, v225, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v98 = v54;
        v99 = v226;
        (*(v97 + 8))(&qword_18071E0A8, 256, v96, v97);
        v100 = v234;
        v101 = v99;
        v54 = v98;
        v93 = v228;
        (v95[3])(v101, v53, v95);
        v102 = swift_getAssociatedConformanceWitness(v238, a3, v53, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        LOBYTE(v95) = (*(v102 + 32))(v93, v100, v53, v102);
        (*(v237 + 8))(v100, v53);
        if ((v95 & 1) == 0)
        {
LABEL_122:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      v103 = v54;
      v104 = *(v54 + 128);
      if (v104(v53, v103) <= 15)
      {
LABEL_74:
        v153 = v103[15](v53, v103);
        (*(v237 + 8))(v93, v53);
        v154 = v232;
        if ((v232(a3, a4) & 1) == 0)
        {
          v161 = 0;
          v156 = v220;
          goto LABEL_91;
        }

        v155 = v154(a3, a4);
        v156 = v220;
        if (v155)
        {
          v157 = v218;
          v158 = v227(a3, a4);
          if (v158 < 64)
          {
            goto LABEL_88;
          }

          v241 = 0;
          v170 = *(a4 + 96);
          v171 = lazy protocol witness table accessor for type Int and conformance Int(v158, v159, v160);
          v172 = v211;
          v170(&v241, &type metadata for Int, v171, a3, a4);
          v169 = (*(*(*(a4 + 32) + 8) + 16))(v157, v172, a3);
          (*(v212 + 8))(v172, a3);
        }

        else
        {
          v162 = v154(a3, a4);
          v163 = v227(a3, a4);
          if ((v162 & 1) == 0)
          {
            if (v163 < 64)
            {
LABEL_88:
              if (((*(a4 + 120))(a3, a4) & 0x8000000000000000) == 0)
              {
                goto LABEL_89;
              }

LABEL_90:
              v161 = 0x8000;
LABEL_91:
              if ((v219 & 0x8000000000000000) == 0)
              {
                *v156 = ((v219 << 10) + 15360) & 0x7C00 | (v153 << ((10 - v219) & 0xF)) & 0x3FF | v161;
                goto LABEL_17;
              }

              goto LABEL_122;
            }

LABEL_89:
            v161 = 0;
            goto LABEL_91;
          }

          if (v163 <= 64)
          {
            v173 = v221;
            v174 = v239;
            v175 = swift_getAssociatedConformanceWitness(v221, a3, v239, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v176 = v240;
            (*(v175 + 8))(&qword_18071E0A8, 256, v174, v175);
            v177 = v211;
            (*(v173 + 3))(v176, a3, v173);
            LOBYTE(v174) = (*(*(*(a4 + 32) + 8) + 16))(v218, v177, a3);
            (*(v212 + 8))(v177, a3);
            if (v174)
            {
              goto LABEL_90;
            }

            goto LABEL_88;
          }

          v241 = 0;
          v166 = *(a4 + 96);
          v167 = lazy protocol witness table accessor for type Int and conformance Int(v163, v164, v165);
          v168 = v211;
          v166(&v241, &type metadata for Int, v167, a3, a4);
          v169 = (*(*(*(a4 + 32) + 8) + 16))(v218, v168, a3);
          (*(v212 + 8))(v168, a3);
        }

        if (v169)
        {
          goto LABEL_90;
        }

        goto LABEL_89;
      }

      LOWORD(v241) = -1;
      v105 = v94(v53, v103);
      v235 = v103;
      v106 = v104(v53, v103);
      if (v105)
      {
        if (v106 > 16)
        {
          v103 = v235;
          v109 = *(v235 + 12);
          v110 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v106, v107, v108);
          v111 = v234;
          v109(&v241, &type metadata for UInt16, v110, v53, v103);
          v112 = swift_getAssociatedConformanceWitness(v238, a3, v53, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
          v113 = v228;
          v114 = (*(v112 + 16))(v111, v228, v53, v112);
          v115 = v111;
          v93 = v113;
          (*(v237 + 8))(v115, v53);
          goto LABEL_46;
        }

        v145 = v231;
        v146 = v225;
        v147 = swift_getAssociatedConformanceWitness(v231, v53, v225, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v148 = v226;
        (*(v147 + 8))(&qword_18071E0A8, 256, v146, v147);
        v149 = v234;
        (v145[3])(v148, v53, v145);
        v150 = swift_getAssociatedConformanceWitness(v238, a3, v53, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        v93 = v228;
        LOBYTE(v145) = (*(v150 + 40))(v228, v149, v53, v150);
        (*(v237 + 8))(v149, v53);
        if ((v145 & 1) == 0)
        {
          v103 = v235;
          goto LABEL_74;
        }
      }

      else if (v106 > 16)
      {
        v103 = v235;
        v127 = *(v235 + 12);
        v128 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v106, v107, v108);
        v129 = v234;
        v127(&v241, &type metadata for UInt16, v128, v53, v103);
        v130 = swift_getAssociatedConformanceWitness(v238, a3, v53, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        v114 = (*(v130 + 16))(v129, v228, v53, v130);
        v131 = v129;
        v93 = v228;
        (*(v237 + 8))(v131, v53);
LABEL_46:
        if (v114)
        {
          goto LABEL_122;
        }

        goto LABEL_74;
      }

      v103 = v235;
      (*(v235 + 15))(v53, v235);
      goto LABEL_74;
    }
  }

  else
  {
    v48 = v43(a3, a4);
    v227 = *(a4 + 128);
    v45 = v227(a3, a4);
    if (v48)
    {
      if (v45 > 64)
      {
        goto LABEL_15;
      }

      v49 = v239;
      v50 = swift_getAssociatedConformanceWitness(v14, a3, v239, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v51 = v240;
      (*(v50 + 8))(&qword_18071E0A8, 256, v49, v50);
      (*(v14 + 24))(v51, a3, v14);
      LOBYTE(v49) = (*(*(*(a4 + 32) + 8) + 32))(a2, v42, a3);
      (*(v39 + 8))(v42, a3);
      if ((v49 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else if (v45 >= 64)
    {
      goto LABEL_15;
    }
  }

  if ((*(a4 + 120))(a3, a4))
  {
    goto LABEL_7;
  }

LABEL_16:
  *a1 = 0;
LABEL_17:
  v65 = 1;
  return v65 & 1;
}

uint64_t static BinaryFloatingPoint<>._convert<A>(from:)(uint64_t a1, uint64_t a2, Class *a3, Class *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v481 = a7;
  v482 = a2;
  v472 = a1;
  v473 = a6;
  v11 = *(a6 + 24);
  swift_getAssociatedTypeWitness(255, v11, a4, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v13 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v11, a4, v12, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Numeric);
  v440 = *(AssociatedConformanceWitness + 16);
  swift_getAssociatedTypeWitness(0, v440, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v437 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v430 = v408 - v16;
  v17 = *(a5 + 16);
  v18 = a5;
  swift_getAssociatedTypeWitness(255, v17, a3, &protocol requirements base descriptor for FloatingPoint, associated type descriptor for FloatingPoint.Exponent);
  v20 = v19;
  v444 = *(swift_getAssociatedConformanceWitness(v17, a3, v19, &protocol requirements base descriptor for FloatingPoint, associated conformance descriptor for FloatingPoint.FloatingPoint.Exponent: SignedInteger) + 8);
  v422 = *(*(v444 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v422, v20, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v421 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v420 = v408 - v23;
  v445 = swift_checkMetadataState(0, v20);
  v443 = *(v445 - 1);
  v25 = MEMORY[0x1EEE9AC00](v445, v24);
  v417 = v408 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v436 = v408 - v29;
  MEMORY[0x1EEE9AC00](v28, v30);
  v448 = v408 - v31;
  v457 = swift_checkMetadataState(0, v13);
  v452 = *(v457 - 1);
  v33 = MEMORY[0x1EEE9AC00](v457, v32);
  v433 = v408 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v426 = v408 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v427 = v408 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39, v41);
  v438 = v408 - v43;
  v45 = MEMORY[0x1EEE9AC00](v42, v44);
  v442 = v408 - v46;
  MEMORY[0x1EEE9AC00](v45, v47);
  v453 = v408 - v48;
  v447 = v11;
  v456 = *(v11 + 16);
  v484 = a4;
  swift_getAssociatedTypeWitness(0, v456, a4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v454 = v49;
  v51 = MEMORY[0x1EEE9AC00](v49, v50);
  v455 = v408 - v52;
  v460 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v51, v53);
  v459 = v408 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v483 = *(a7 + 8);
  v488 = *(*(v483 + 24) + 16);
  v55 = v488;
  v56 = v18;
  swift_getAssociatedTypeWitness(255, v18, a3, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawSignificand);
  v58 = v57;
  swift_getAssociatedTypeWitness(0, v55, v57, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v487 = v59;
  MEMORY[0x1EEE9AC00](v59, v60);
  v476 = v408 - v61;
  v486 = swift_checkMetadataState(0, v58);
  v477 = *(v486 - 1);
  v63 = MEMORY[0x1EEE9AC00](v486, v62);
  v415 = v408 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x1EEE9AC00](v63, v65);
  v439 = v408 - v67;
  v69 = MEMORY[0x1EEE9AC00](v66, v68);
  v429 = v408 - v70;
  v72 = MEMORY[0x1EEE9AC00](v69, v71);
  v480 = v408 - v73;
  v75 = MEMORY[0x1EEE9AC00](v72, v74);
  v490 = v408 - v76;
  v78 = MEMORY[0x1EEE9AC00](v75, v77);
  v489 = v408 - v79;
  v80 = *(a3 - 1);
  v82 = MEMORY[0x1EEE9AC00](v78, v81);
  v416 = v408 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = MEMORY[0x1EEE9AC00](v82, v84);
  v441 = v408 - v86;
  MEMORY[0x1EEE9AC00](v85, v87);
  v89 = v408 - v88;
  v450 = v17;
  v418 = *(v17 + 16);
  v90 = *(*(v418 + 8) + 16);
  swift_getAssociatedTypeWitness(0, v90, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v92 = v91;
  MEMORY[0x1EEE9AC00](v91, v93);
  v95 = (v408 - v94);
  v96 = v56;
  swift_getAssociatedTypeWitness(0, v56, a3, &protocol requirements base descriptor for BinaryFloatingPoint, associated type descriptor for BinaryFloatingPoint.RawExponent);
  v471 = v97;
  v470 = *(v97 - 8);
  v99 = MEMORY[0x1EEE9AC00](v97, v98);
  v431 = v408 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = MEMORY[0x1EEE9AC00](v99, v101);
  v432 = v408 - v103;
  MEMORY[0x1EEE9AC00](v102, v104);
  v106 = v408 - v105;
  v107 = swift_getAssociatedConformanceWitness(v90, a3, v92, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v108 = *(v107 + 8);
  v467 = v92;
  v465 = v107;
  v464 = v107 + 8;
  v463 = v108;
  (v108)(&qword_1806729C0, 512, v92);
  v109 = *(v90 + 24);
  v466 = v95;
  v468 = v90;
  v462 = v90 + 24;
  v461 = v109;
  v109(v95, a3, v90);
  v110 = v56[14];
  v469 = v106;
  (v110)(a3, v56);
  v111 = *(v80 + 8);
  v419 = v89;
  v446 = v80 + 8;
  v449 = v111;
  v111(v89, a3);
  v113 = v486;
  v112 = v487;
  v114 = v488;
  v115 = swift_getAssociatedConformanceWitness(v488, v486, v487, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v116 = v115 + 8;
  v475 = *(v115 + 8);
  v117 = v476;
  v475(&qword_1806729C0, 512, v112, v115);
  v474 = *(v114 + 3);
  v118 = v480;
  v119 = v117;
  v474(v117, v113, v114);
  v120 = v96[13];
  v485 = a3;
  v451 = v96;
  v435 = v96 + 13;
  v434 = v120;
  v491 = (v120)(a3, v96);
  v121 = *(v483 + 256);
  v458 = lazy protocol witness table accessor for type Int and conformance Int(v491, v122, v123);
  v121(v118, &v491, &type metadata for Int);
  v124 = v477 + 8;
  v125 = *(v477 + 8);
  v125(v118, v113);
  v126 = v119;
  v425 = v115;
  v127 = v484;
  v128 = v473;
  v424 = v116;
  (v475)(&qword_1806729C0, 512);
  v423 = v114 + 24;
  v474(v126, v113, v488);
  v129 = v490;
  (*(v481 + 88))(v489, v118, v113);
  v125(v118, v113);
  v478 = v125;
  v479 = v124;
  v125(v129, v113);
  v130 = v128 + 64;
  v131 = *(v128 + 64);
  v132 = v128;
  if (v131(v127, v128))
  {
    v133 = *(v128 + 128);
    v134 = v482;
    v135 = v133(v127, v128);
    v136 = v127;
    if (v135 < 64)
    {
      v137 = (*(v132 + 120))(v127, v132);
      goto LABEL_11;
    }

    v491 = 0;
    v146 = v459;
    (*(v132 + 96))(&v491, &type metadata for Int, v458, v127, v132);
    v147 = (*(*(*(v132 + 16) + 8) + 8))(v134, v146, v127);
    (*(v460 + 8))(v146, v127);
    goto LABEL_17;
  }

  v138 = v131(v127, v128);
  v133 = *(v128 + 128);
  v139 = v482;
  v140 = v128;
  v141 = (v133)(v127);
  v136 = v127;
  if ((v138 & 1) == 0)
  {
    if (v141 < 64)
    {
      v132 = v140;
      v137 = (*(v140 + 120))(v127, v140);
LABEL_11:
      v145 = v485;
      if (v137)
      {
        goto LABEL_22;
      }

LABEL_18:
      v478(v489, v113);
      (*(v470 + 8))(v469, v471);
      v159 = v466;
      v463(&qword_18071E0A8, 256);
      v461(v159, v145, v468);
LABEL_19:
      v160 = 1;
      return v160 & 1;
    }

    v491 = 0;
    v155 = *(v140 + 96);
    v414 = v131;
    v156 = v459;
    v155(&v491, &type metadata for Int, v458, v127, v140);
    v157 = v139;
    v132 = v140;
    v147 = (*(*(*(v140 + 16) + 8) + 8))(v157, v156, v127);
    v158 = v156;
    v131 = v414;
    (*(v460 + 8))(v158, v127);
LABEL_17:
    v145 = v485;
    if ((v147 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v414 = v131;
  if (v141 > 64)
  {
    v491 = 0;
    v142 = v459;
    (*(v140 + 96))(&v491, &type metadata for Int, v458, v127, v140);
    v143 = v139;
    v132 = v140;
    v144 = (*(*(*(v140 + 16) + 8) + 8))(v143, v142, v127);
    (*(v460 + 8))(v142, v127);
    v145 = v485;
    v131 = v414;
    if ((v144 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v413 = v130;
  v148 = v456;
  v149 = v454;
  v150 = swift_getAssociatedConformanceWitness(v456, v127, v454, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v151 = v455;
  (*(v150 + 8))(&qword_18071E0A8, 256, v149, v150);
  v152 = v459;
  v153 = v151;
  v136 = v127;
  (v148[3])(v153, v127, v148);
  LOBYTE(v149) = (*(*(*(v140 + 32) + 8) + 32))(v139, v152, v127);
  (*(v460 + 8))(v152, v127);
  if ((v149 & 1) == 0)
  {
    v132 = v140;
    v145 = v485;
    v130 = v413;
    v131 = v414;
    goto LABEL_22;
  }

  v154 = (*(v140 + 120))(v127, v140);
  v132 = v140;
  v145 = v485;
  v130 = v413;
  v131 = v414;
  if (!v154)
  {
    goto LABEL_18;
  }

LABEL_22:
  v414 = v131;
  v466 = v133;
  v447[7](v136);
  v162 = v457;
  v163 = swift_getAssociatedConformanceWitness(v132, v136, v457, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
  v164 = *(v163 + 136);
  v467 = v163;
  v468 = v164(v162);
  v165 = v450;
  v166 = *(v450 + 120);
  v167 = v441;
  v462 = v450 + 120;
  v461 = v166;
  (v166)(v145, v450);
  v168 = *(v165 + 176);
  v169 = v448;
  v412 = v165 + 176;
  v411 = v168;
  v168(v145, v165);
  v449(v167, v145);
  v170 = v444;
  v172 = v444 + 64;
  v171 = *(v444 + 64);
  v173 = v445;
  v174 = v171(v445, v444);
  v413 = v130;
  v464 = v172;
  v463 = v171;
  if ((v174 & 1) == 0)
  {
    v182 = v171(v173, v170);
    v465 = *(v170 + 128);
    v183 = v465(v173, v170);
    v181 = v451;
    if (v182)
    {
      if (v183 > 64)
      {
        v184 = v468;
        v491 = v468;
        v185 = v436;
        (*(v170 + 96))(&v491, &type metadata for Int, v458, v173, v170);
        v180 = v184;
        v186 = v448;
        v187 = (*(*(*(v170 + 32) + 8) + 16))(v448, v185, v173);
        v179 = *(v443 + 8);
        v179(v185, v173);
        v179(v186, v173);
        v145 = v485;
        v181 = v451;
        goto LABEL_37;
      }

      v194 = v422;
      v195 = v421;
      v196 = swift_getAssociatedConformanceWitness(v422, v173, v421, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v197 = v420;
      (*(v196 + 8))(&qword_18071E0A8, 256, v195, v196);
      v198 = v436;
      (v194[3])(v197, v173, v194);
      v199 = v448;
      LOBYTE(v195) = (*(*(*(v170 + 32) + 8) + 16))(v448, v198, v173);
      v179 = *(v443 + 8);
      v179(v198, v173);
      if (v195)
      {
        v179(v199, v173);
        v145 = v485;
        goto LABEL_42;
      }

      v202 = (*(v170 + 120))(v173, v170);
      v179(v199, v173);
      v180 = v468;
      v193 = v202 < v468;
      v145 = v485;
      v181 = v451;
    }

    else
    {
      if (v183 >= 64)
      {
        v180 = v468;
        if (v468 < 1)
        {
          v179 = *(v443 + 8);
          v179(v448, v173);
          goto LABEL_54;
        }

        v491 = v468;
        v200 = v436;
        (*(v170 + 96))(&v491, &type metadata for Int, v458, v173, v170);
        v201 = v448;
        v187 = (*(*(*(v170 + 32) + 8) + 16))(v448, v200, v173);
        v179 = *(v443 + 8);
        v179(v200, v173);
        v179(v201, v173);
        v145 = v485;
        v180 = v468;
LABEL_37:
        if (v187)
        {
          goto LABEL_42;
        }

        goto LABEL_54;
      }

      v191 = v448;
      v192 = (*(v170 + 120))(v173, v170);
      v179 = *(v443 + 8);
      v179(v191, v173);
      v180 = v468;
      v193 = v192 < v468;
    }

    if (v193)
    {
      goto LABEL_42;
    }

    goto LABEL_54;
  }

  v465 = *(v170 + 128);
  v175 = v465(v173, v170);
  v176 = v451;
  v177 = v169;
  if (v175 < 64)
  {
    v178 = (*(v170 + 120))(v173, v170);
    v179 = *(v443 + 8);
    v179(v177, v173);
    v180 = v468;
    v181 = v176;
    if (v178 >= v468)
    {
      goto LABEL_54;
    }

LABEL_42:
    (*(v452 + 8))(v453, v457);
    v478(v489, v486);
    (*(v470 + 8))(v469, v471);
    v203 = v484;
    v204 = v414;
    v205 = v414(v484, v132);
    v206 = v449;
    if ((v205 & 1) == 0)
    {
      goto LABEL_157;
    }

    if (v204(v203, v132))
    {
      v207 = v482;
      if (v466(v203, v132) < 64)
      {
        v208 = (*(v132 + 120))(v203, v132);
        v145 = v485;
        if ((v208 & 0x8000000000000000) == 0)
        {
          goto LABEL_157;
        }

LABEL_83:
        v313 = v419;
        (*(v450 + 112))(v145);
        (*(v418 + 16))(v313, v145);
        v206(v313, v145);
        goto LABEL_158;
      }

LABEL_49:
      v491 = 0;
      v211 = v459;
      (*(v132 + 96))(&v491, &type metadata for Int, v458, v203, v132);
      v212 = (*(*(*(v132 + 32) + 8) + 16))(v207, v211, v203);
      (*(v460 + 8))(v211, v203);
      v145 = v485;
      if ((v212 & 1) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_83;
    }

    v209 = v204(v203, v132);
    v207 = v482;
    v210 = v466(v203, v132);
    if (v209)
    {
      if (v210 > 64)
      {
        goto LABEL_49;
      }

      v308 = v456;
      v309 = v454;
      v310 = swift_getAssociatedConformanceWitness(v456, v203, v454, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v311 = v455;
      (*(v310 + 8))(&qword_18071E0A8, 256, v309, v310);
      v312 = v459;
      (v308[3])(v311, v203, v308);
      LOBYTE(v309) = (*(*(*(v132 + 32) + 8) + 16))(v207, v312, v203);
      (*(v460 + 8))(v312, v203);
      v145 = v485;
      if (v309)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v145 = v485;
      if (v210 >= 64)
      {
        goto LABEL_157;
      }
    }

    if (((*(v132 + 120))(v203, v132) & 0x8000000000000000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_83;
  }

  v188 = v468;
  v491 = v468;
  v189 = v436;
  (*(v170 + 96))(&v491, &type metadata for Int, v458, v173, v170);
  v180 = v188;
  v190 = (*(*(*(v170 + 32) + 8) + 16))(v169, v189, v173);
  v179 = *(v443 + 8);
  v179(v189, v173);
  v179(v177, v173);
  v145 = v485;
  v181 = v176;
  if (v190)
  {
    goto LABEL_42;
  }

LABEL_54:
  v213 = v434;
  if ((v434)(v145, v181) >= v180)
  {
    v256 = v486;
    v257 = v478;
    v478(v489, v486);
    v258 = (v213)(v145, v181) - v180;
    v259 = v442;
    v260 = v457;
    (*(v452 + 32))(v442, v453, v457);
    v261 = v483;
    v262 = v490;
    (*(v483 + 88))(v259, v260, v467, v256, v483);
    v491 = v258;
    v263 = v480;
    (*(v261 + 96))(&v491, &type metadata for Int, v458, v256, v261);
    v264 = v429;
    (*(v481 + 216))(v262, v263, v256);
    v257(v263, v256);
    v257(v262, v256);
    v265 = v451;
    v266 = v484;
    v267 = v414;
    v268 = v414(v484, v132);
    v269 = v466;
    if ((v268 & 1) == 0)
    {
      goto LABEL_86;
    }

    if (v267(v266, v132))
    {
      v270 = v482;
      if (v269(v266, v132) < 64)
      {
LABEL_85:
        if (((*(v132 + 120))(v266, v132) & 0x8000000000000000) == 0)
        {
          goto LABEL_86;
        }

LABEL_100:
        v314 = 1;
        goto LABEL_101;
      }
    }

    else
    {
      v296 = v267(v266, v132);
      v270 = v482;
      v297 = v269(v266, v132);
      if ((v296 & 1) == 0)
      {
        if (v297 < 64)
        {
          goto LABEL_85;
        }

LABEL_86:
        v314 = 0;
LABEL_101:
        v491 = v180;
        v331 = v485;
        v332 = v471;
        v333 = *(swift_getAssociatedConformanceWitness(v265, v485, v471, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger) + 8);
        v334 = v265;
        v335 = v431;
        (*(v333 + 88))(&v491, &type metadata for Int, v458, v332, v333);
        v336 = v432;
        v337 = v469;
        (*(*(*(v333 + 24) + 8) + 24))(v469, v335, v332);
        v338 = *(v470 + 8);
        v338(v335, v332);
        v338(v337, v332);
        (*(v334 + 7))(v314, v336, v264, v331, v334);
        goto LABEL_19;
      }

      if (v297 <= 64)
      {
        v326 = v456;
        v327 = v454;
        v328 = swift_getAssociatedConformanceWitness(v456, v266, v454, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v329 = v455;
        (*(v328 + 8))(&qword_18071E0A8, 256, v327, v328);
        v330 = v459;
        (v326[3])(v329, v266, v326);
        LOBYTE(v327) = (*(*(*(v132 + 32) + 8) + 16))(v270, v330, v266);
        (*(v460 + 8))(v330, v266);
        if (v327)
        {
          goto LABEL_100;
        }

        goto LABEL_85;
      }
    }

    v491 = 0;
    v298 = v459;
    (*(v132 + 96))(&v491, &type metadata for Int, v458, v266, v132);
    v299 = (*(*(*(v132 + 32) + 8) + 16))(v270, v298, v266);
    (*(v460 + 8))(v298, v266);
    if (v299)
    {
      goto LABEL_100;
    }

    goto LABEL_86;
  }

  v409 = v179;
  v214 = v180 - (v213)(v145, v181);
  v215 = v440;
  v216 = v457;
  v217 = v437;
  v218 = swift_getAssociatedConformanceWitness(v440, v457, v437, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v219 = v430;
  v441 = *(v218 + 8);
  (v441)(&qword_1806729C0, 512, v217, v218);
  v220 = v215[3];
  v221 = v442;
  v222 = v219;
  v435 = v215 + 3;
  v434 = v220;
  result = (v220)(v219, v216, v215);
  v410 = v214;
  if (__OFSUB__(v214, 1))
  {
    __break(1u);
    goto LABEL_161;
  }

  v491 = v214 - 1;
  (*(v467 + 256))(v221, &v491, &type metadata for Int, v458, v216, v467);
  v223 = *(v452 + 8);
  v452 += 8;
  v448 = v223;
  (v223)(v221, v216);
  v224 = v437;
  (v441)(qword_18071E0B8, 768, v437, v218);
  v225 = v426;
  v226 = v218 + 8;
  v429 = v218;
  (v434)(v222, v216, v440);
  v227 = AssociatedConformanceWitness;
  (*(AssociatedConformanceWitness + 64))(v225, v438, v216, AssociatedConformanceWitness);
  v228 = v448;
  (v448)(v225, v216);
  v408[1] = v226;
  (v441)(&qword_1806729C0, 512, v224, v429);
  (v434)(v222, v216, v440);
  v229 = v427;
  v230 = v442;
  (*(*(v227 + 8) + 40))(v442, v225, v216);
  v231 = v228;
  (v228)(v225, v216);
  v232 = v230;
  (v228)(v230, v216);
  v233 = v467;
  v234 = v433;
  v235 = v453;
  (*(v467 + 192))(v453, v229, v216, v467);
  (v231)(v229, v216);
  v491 = v410;
  (*(v233 + 240))(v235, &v491, &type metadata for Int, v458, v216, v233);
  (v231)(v235, v216);
  v236 = v234;
  v237 = v483;
  v238 = (v483 + 96);
  v239 = v490;
  v240 = v486;
  AssociatedConformanceWitness = *(v483 + 96);
  (AssociatedConformanceWitness)(v232, v216, v233, v486, v483);
  v241 = *(v237 + 192);
  v241(v239, v489, v240, v237);
  v242 = v239;
  v243 = v438;
  v478(v242, v240);
  v244 = swift_getAssociatedConformanceWitness(v447, v484, v216, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
  v245 = (*(v244 + 40))(v236, v243, v216, v244);
  v453 = v244;
  if (v245)
  {
    (v448)(v243, v216);
    v246 = v439;
    v247 = v445;
    goto LABEL_58;
  }

  v271 = (*(*(v244 + 8) + 8))(v236, v243, v216);
  (v448)(v243, v216);
  v272 = v439;
  if ((v271 & 1) == 0)
  {
    goto LABEL_128;
  }

  v447 = v238;
  v273 = v476;
  (v475)(&qword_1806729C0, 512);
  v274 = v490;
  v275 = v273;
  v276 = v486;
  v474(v275, v486, v488);
  v277 = v272;
  v278 = v415;
  v279 = v483;
  v241(v277, v274, v276, v483);
  v280 = v274;
  v281 = v478;
  v478(v280, v276);
  v282 = *(v279 + 64);
  if ((v282(v276, v279) & 1) == 0)
  {
    v315 = v282(v276, v279);
    v316 = (*(v279 + 128))(v276, v279);
    v317 = v278;
    if (v315)
    {
      v246 = v439;
      if (v316 <= 64)
      {
        v318 = v476;
        (v475)(&qword_18071E0A8, 256);
        v319 = v490;
        v474(v318, v276, v488);
        v320 = (*(*(*(v279 + 32) + 8) + 32))(v317, v319, v276);
        v281(v319, v276);
        if (v320)
        {
          v321 = (*(v279 + 120))(v276, v279);
          v281(v317, v276);
          v247 = v445;
          if (v321 != 1)
          {
            goto LABEL_128;
          }

          goto LABEL_58;
        }

        v281(v317, v276);
LABEL_128:
        v478(v489, v486);
        v286 = v484;
        v145 = v485;
        v287 = v451;
        goto LABEL_129;
      }
    }

    else
    {
      v246 = v439;
      if (v316 < 64)
      {
        v341 = (*(v279 + 120))(v276, v279);
        v281(v317, v276);
        v247 = v445;
        if (v341 != 1)
        {
          goto LABEL_128;
        }

        goto LABEL_58;
      }
    }

    v491 = 1;
    v342 = v490;
    (AssociatedConformanceWitness)(&v491, &type metadata for Int, v458, v276, v279);
    v343 = (*(*(*(v279 + 16) + 8) + 8))(v317, v342, v276);
    v281(v342, v276);
    v281(v317, v276);
    v247 = v445;
    if ((v343 & 1) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_58;
  }

  if ((*(v279 + 128))(v276, v279) >= 64)
  {
    v491 = 1;
    v339 = v490;
    (AssociatedConformanceWitness)(&v491, &type metadata for Int, v458, v276, v279);
    v340 = (*(*(*(v279 + 16) + 8) + 8))(v278, v339, v276);
    v281(v339, v276);
    v281(v278, v276);
    v247 = v445;
    v246 = v439;
    if ((v340 & 1) == 0)
    {
      goto LABEL_128;
    }
  }

  else
  {
    v283 = (*(v279 + 120))(v276, v279);
    v281(v278, v276);
    v247 = v445;
    v246 = v439;
    if (v283 != 1)
    {
      goto LABEL_128;
    }
  }

LABEL_58:
  v248 = v476;
  (v475)(&qword_1806729C0, 512);
  v249 = v480;
  v250 = v248;
  v251 = v486;
  v474(v250, v486, v488);
  v252 = v490;
  v253 = (*(v481 + 80))(v490, v249, v251);
  v254 = v249;
  v255 = v478;
  v478(v254, v251);
  v255(v246, v251);
  (*(v477 + 32))(v246, v252, v251);
  if (v253)
  {
    result = (v255)(v489, v251);
    v145 = v485;
  }

  else
  {
    v284 = v489;
    v285 = (*(*(*(v483 + 32) + 8) + 40))(v246, v489, v251);
    result = (v255)(v284, v251);
    v286 = v484;
    v145 = v485;
    v287 = v451;
    if ((v285 & 1) == 0)
    {
      goto LABEL_129;
    }
  }

  if (!__OFADD__(v468++, 1))
  {
    v289 = v416;
    v290 = v450;
    (v461)(v145, v450);
    v291 = v417;
    v411(v145, v290);
    v449(v289, v145);
    v292 = v444;
    v293 = v463;
    if ((v463)(v247, v444))
    {
      if (v465(v247, v292) < 64)
      {
        v294 = (*(v292 + 120))(v247, v292);
        v409(v291, v247);
        v295 = v294 < v468;
        goto LABEL_97;
      }

      v491 = v468;
      v322 = v436;
      (*(v292 + 96))(&v491, &type metadata for Int, v458, v247, v292);
      v305 = (*(*(*(v292 + 32) + 8) + 16))(v291, v322, v247);
      v323 = v409;
      v409(v322, v247);
      v323(v291, v247);
      v145 = v485;
    }

    else
    {
      v300 = v293(v247, v292);
      v301 = v465(v247, v292);
      v302 = v291;
      if ((v300 & 1) == 0)
      {
        v324 = v409;
        if (v301 >= 64)
        {
          v286 = v484;
          if (v468 < 1)
          {
            v409(v291, v247);
            v287 = v451;
            goto LABEL_129;
          }

          v491 = v468;
          v352 = v444;
          v353 = v436;
          (*(v444 + 96))(&v491, &type metadata for Int, v458, v247, v444);
          v354 = (*(*(*(v352 + 32) + 8) + 16))(v302, v353, v247);
          v324(v353, v247);
          v324(v302, v247);
          v145 = v485;
          v287 = v451;
          if ((v354 & 1) == 0)
          {
LABEL_129:
            v365 = v414;
            if (v414(v286, v132))
            {
              if (v365(v286, v132))
              {
                v366 = v482;
                if (v466(v286, v132) < 64)
                {
LABEL_132:
                  v367 = (*(v132 + 120))(v286, v132);
                  v145 = v485;
                  if (v367 < 0)
                  {
                    goto LABEL_137;
                  }

                  goto LABEL_140;
                }

                goto LABEL_136;
              }

              v368 = v365(v286, v132);
              v366 = v482;
              v369 = v466(v286, v132);
              if (v368)
              {
                if (v369 <= 64)
                {
                  v397 = v456;
                  v398 = v454;
                  v399 = swift_getAssociatedConformanceWitness(v456, v286, v454, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
                  v400 = v455;
                  (*(v399 + 8))(&qword_18071E0A8, 256, v398, v399);
                  v401 = v459;
                  (v397[3])(v400, v286, v397);
                  LOBYTE(v398) = (*(*(*(v132 + 32) + 8) + 16))(v366, v401, v286);
                  (*(v460 + 8))(v401, v286);
                  if (v398)
                  {
                    v372 = 1;
                    v145 = v485;
LABEL_141:
                    v373 = v433;
                    v491 = v468;
                    v374 = v471;
                    v375 = *(swift_getAssociatedConformanceWitness(v287, v145, v471, &protocol requirements base descriptor for BinaryFloatingPoint, associated conformance descriptor for BinaryFloatingPoint.BinaryFloatingPoint.RawExponent: UnsignedInteger) + 8);
                    v376 = v431;
                    (*(v375 + 88))(&v491, &type metadata for Int, v458, v374, v375);
                    v377 = v432;
                    v378 = v469;
                    (*(*(*(v375 + 24) + 8) + 24))(v469, v376, v374);
                    v379 = v145;
                    v380 = *(v470 + 8);
                    v380(v376, v374);
                    v380(v378, v374);
                    v381 = v490;
                    (*(v477 + 32))(v490, v439, v486);
                    (*(v287 + 7))(v372, v377, v381, v379, v287);
                    v382 = v467;
                    v383 = *(v467 + 64);
                    v384 = v457;
                    v385 = v383(v457, v467);
                    v386 = v440;
                    v387 = v437;
                    if (v385)
                    {
                      if ((*(v382 + 128))(v384, v382) >= 64)
                      {
                        goto LABEL_151;
                      }

                      goto LABEL_149;
                    }

                    v388 = v383(v384, v382);
                    v389 = (*(v382 + 128))(v384, v382);
                    if (v388)
                    {
                      if (v389 <= 64)
                      {
                        v390 = v430;
                        (v441)(&qword_18071E0A8, 256, v387, v429);
                        v391 = v442;
                        (v434)(v390, v384, v386);
                        LOBYTE(v390) = (*(v453 + 4))(v373, v391, v384);
                        v392 = v391;
                        v393 = v448;
                        (v448)(v392, v384);
                        if (v390)
                        {
                          v394 = (*(v382 + 120))(v384, v382);
                          (v393)(v373, v384);
LABEL_150:
                          v160 = v394 == 0;
                          return v160 & 1;
                        }

                        (v393)(v373, v384);
LABEL_158:
                        v160 = 0;
                        return v160 & 1;
                      }
                    }

                    else if (v389 < 64)
                    {
LABEL_149:
                      v394 = (*(v382 + 120))(v384, v382);
                      (v448)(v373, v384);
                      goto LABEL_150;
                    }

LABEL_151:
                    v491 = 0;
                    v395 = v442;
                    (*(v382 + 96))(&v491, &type metadata for Int, v458, v384, v382);
                    v160 = (*(*(v453 + 1) + 8))(v373, v395, v384);
                    v396 = v448;
                    (v448)(v395, v384);
                    (v396)(v373, v384);
                    return v160 & 1;
                  }

                  goto LABEL_132;
                }

LABEL_136:
                v491 = 0;
                v370 = v459;
                (*(v132 + 96))(&v491, &type metadata for Int, v458, v286, v132);
                v371 = (*(*(*(v132 + 32) + 8) + 16))(v366, v370, v286);
                (*(v460 + 8))(v370, v286);
                v145 = v485;
                if (v371)
                {
LABEL_137:
                  v372 = 1;
                  goto LABEL_141;
                }

                goto LABEL_140;
              }

              v145 = v485;
              if (v369 < 64 && (*(v132 + 120))(v286, v132) < 0)
              {
                goto LABEL_137;
              }
            }

LABEL_140:
            v372 = 0;
            goto LABEL_141;
          }

LABEL_115:
          v478(v246, v486);
          (v448)(v433, v457);
          (*(v470 + 8))(v469, v471);
          v356 = v414;
          v357 = v414(v286, v132);
          v358 = v449;
          if ((v357 & 1) == 0)
          {
            goto LABEL_157;
          }

          if (v356(v286, v132))
          {
            v359 = v482;
            if (v466(v286, v132) < 64)
            {
              v360 = (*(v132 + 120))(v286, v132);
              v145 = v485;
              if (v360 < 0)
              {
                goto LABEL_159;
              }

LABEL_157:
              (*(v450 + 112))(v145);
              goto LABEL_158;
            }

LABEL_122:
            v491 = 0;
            v363 = v459;
            (*(v132 + 96))(&v491, &type metadata for Int, v458, v286, v132);
            v364 = (*(*(*(v132 + 32) + 8) + 16))(v359, v363, v286);
            (*(v460 + 8))(v363, v286);
            v145 = v485;
            if (v364)
            {
              goto LABEL_159;
            }

            goto LABEL_157;
          }

          v361 = v356(v286, v132);
          v359 = v482;
          v362 = v466(v286, v132);
          if (v361)
          {
            if (v362 > 64)
            {
              goto LABEL_122;
            }

            v402 = v456;
            v403 = v454;
            v404 = swift_getAssociatedConformanceWitness(v456, v286, v454, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v405 = v455;
            (*(v404 + 8))(&qword_18071E0A8, 256, v403, v404);
            v406 = v459;
            (v402[3])(v405, v286, v402);
            LOBYTE(v403) = (*(*(*(v132 + 32) + 8) + 16))(v359, v406, v286);
            (*(v460 + 8))(v406, v286);
            v145 = v485;
            if (v403)
            {
LABEL_159:
              v407 = v419;
              (*(v450 + 112))(v145);
              (*(v418 + 16))(v407, v145);
              v358(v407, v145);
              goto LABEL_158;
            }
          }

          else
          {
            v145 = v485;
            if (v362 >= 64)
            {
              goto LABEL_157;
            }
          }

          if (((*(v132 + 120))(v286, v132) & 0x8000000000000000) == 0)
          {
            goto LABEL_157;
          }

          goto LABEL_159;
        }

        v325 = (*(v444 + 120))(v247);
        v324(v291, v247);
        v295 = v325 < v468;
LABEL_97:
        v287 = v451;
        v286 = v484;
        if (!v295)
        {
          goto LABEL_129;
        }

        goto LABEL_115;
      }

      if (v301 <= 64)
      {
        v344 = v422;
        v345 = v421;
        v346 = swift_getAssociatedConformanceWitness(v422, v247, v421, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v347 = v420;
        (*(v346 + 8))(&qword_18071E0A8, 256, v345, v346);
        v348 = v436;
        (v344[3])(v347, v247, v344);
        v349 = v444;
        LOBYTE(v345) = (*(*(*(v444 + 32) + 8) + 16))(v302, v348, v247);
        v350 = v348;
        v351 = v409;
        v409(v350, v247);
        v286 = v484;
        if (v345)
        {
          v351(v302, v247);
          v145 = v485;
        }

        else
        {
          v355 = (*(v349 + 120))(v247, v349);
          v351(v302, v247);
          v145 = v485;
          v287 = v451;
          if (v355 >= v468)
          {
            goto LABEL_129;
          }
        }

        goto LABEL_115;
      }

      v491 = v468;
      v303 = v444;
      v304 = v436;
      (*(v444 + 96))(&v491, &type metadata for Int, v458, v247, v444);
      v305 = (*(*(*(v303 + 32) + 8) + 16))(v302, v304, v247);
      v306 = v304;
      v307 = v409;
      v409(v306, v247);
      v307(v302, v247);
      v145 = v485;
    }

    v287 = v451;
    v286 = v484;
    if ((v305 & 1) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_115;
  }

LABEL_161:
  __break(1u);
  return result;
}

uint64_t BinaryFloatingPoint<>.init<A>(_:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  static BinaryFloatingPoint<>._convert<A>(from:)(a7, a1, a2, a3, a4, a5, a6);
  v9 = *(*(a3 - 1) + 1);

  return v9(a1, a3);
}

uint64_t BinaryFloatingPoint<>.init<A>(exactly:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = static BinaryFloatingPoint<>._convert<A>(from:)(v10, a1, a2, a3, v11, v12, v13);
  (*(*(a3 - 1) + 1))(a1, a3);
  if (v14)
  {
    (*(v8 + 32))(a4, v10, a2);
    v15 = 0;
  }

  else
  {
    (*(v8 + 8))(v10, a2);
    v15 = 1;
  }

  return (*(v8 + 56))(a4, v15, 1, a2);
}

uint64_t _swift_stdlib_Hashable_isEqual_indirect(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1, a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v17 - v12;
  v14 = *(v7 + 16);
  v14(&v17 - v12);
  (v14)(v10, a2, a3);
  LOBYTE(a4) = (*(*(a4 + 8) + 8))(v13, v10, a3);
  v15 = *(v7 + 8);
  v15(v10, a3);
  v15(v13, a3);
  return a4 & 1;
}

uint64_t _swift_stdlib_Hashable_hashValue_indirect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(a3 + 16))(a2, a3);
  (*(v5 + 8))(v7, a2);
  return v8;
}

uint64_t _ConcreteHashableBox._unbox<A>()@<X0>(Class *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for _ConcreteHashableBox(255, v11, v12, v13);
  v17 = type metadata accessor for Optional(0, v14, v15, v16);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = (&v31 - v20);
  (*(v8 + 16))(v10, v4, a1);
  v25 = swift_dynamicCast(v21, v10, a1, v14, 6uLL, v22, v23, v24, v31);
  v26 = *(*(v14 - 1) + 7);
  if (v25)
  {
    v27 = *(v14 - 1);
    v26(v21, 0, 1, v14);
    v28 = *(a2 - 8);
    (*(v28 + 16))(a3, v21, a2);
    (*(v27 + 8))(v21, v14);
    v29 = 0;
  }

  else
  {
    v29 = 1;
    v26(v21, 1, 1, v14);
    (*(v18 + 8))(v21, v17);
    v28 = *(a2 - 8);
  }

  return (*(v28 + 56))(a3, v29, 1, a2);
}

uint64_t _ConcreteHashableBox._isEqual(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v7 = type metadata accessor for Optional(0, v6, a3, a4);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = v22 - v11;
  v13 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v10, v14);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v17);
  v19 = *(a2 + 24);
  (*(v18 + 56))(v6, v19, v17, v18);
  if ((*(v13 + 48))(v12, 1, v6) == 1)
  {
    (*(v8 + 8))(v12, v7);
    return 2;
  }

  else
  {
    (*(v13 + 32))(v16, v12, v6);
    v21 = (*(*(v19 + 8) + 8))(v22[1], v16, v6);
    (*(v13 + 8))(v16, v6);
    return v21 & 1;
  }
}

uint64_t AnyHashable.init<A>(_:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 1);
  result = MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12 == &type metadata for String)
  {
    v19 = *a1;
    v20 = *(a1 + 8);
    *(a4 + 24) = &unk_1EEEBDC08;
    *(a4 + 32) = &protocol witness table for _ConcreteHashableBox<A>;
    *a4 = v19;
    *(a4 + 8) = v20;
    return result;
  }

  (*(v8 + 16))(v11, a1, a2);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss35_HasCustomAnyHashableRepresentation_pMd, _ss35_HasCustomAnyHashableRepresentation_pMR);
  if ((swift_dynamicCast(&v25, v11, a2, v13, 6uLL) & 1) == 0)
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    outlined destroy of _HasContiguousBytes?(&v25, &_ss35_HasCustomAnyHashableRepresentation_pSgMd, _ss35_HasCustomAnyHashableRepresentation_pSgMR);
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    goto LABEL_7;
  }

  v14 = *(&v26 + 1);
  v15 = v27;
  v16 = __swift_project_boxed_opaque_existential_0Tm(&v25, *(&v26 + 1));
  MEMORY[0x1EEE9AC00](v16, v16);
  (*(v18 + 16))(&v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (v15[1])(&v22, v14, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(&v25);
  if (!*(&v23 + 1))
  {
LABEL_7:
    outlined destroy of AnyHashable?(&v22);
    *(&v26 + 1) = &unk_1EEEBDCA0;
    v27 = &protocol witness table for _ConcreteHashableBox<A>;
    LOBYTE(v25) = 0;
    _swift_makeAnyHashableUpcastingToHashableBaseType(a1, &v25, a2, a3);
    goto LABEL_8;
  }

  v25 = v22;
  v26 = v23;
  v27 = v24;
LABEL_8:
  v21 = v26;
  *a4 = v25;
  *(a4 + 16) = v21;
  *(a4 + 32) = v27;
  return (*(v8 + 8))(a1, a2);
}

uint64_t AnyHashable.base.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_0Tm(v0, v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t AnyHashable.hashValue.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_0Tm(v0, v1);
  (*(v2 + 8))(v7, v1, v2);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_0Tm(v7, v8);
  v5 = (*(v4 + 24))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  return v5;
}

uint64_t AnyHashable.hash(into:)(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v3);
  (*(v4 + 8))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_0Tm(v8, v9);
  (*(v6 + 32))(a1, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

Swift::Int __swiftcall AnyHashable._rawHashValue(seed:)(Swift::Int seed)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v3);
  (*(v4 + 8))(v9, v3, v4);
  v5 = v10;
  v6 = v11;
  __swift_project_boxed_opaque_existential_0Tm(v9, v10);
  v7 = (*(v6 + 40))(seed, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return v7;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance AnyHashable()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_0Tm(v0, v1);
  (*(v2 + 8))(v7, v1, v2);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_0Tm(v7, v8);
  v5 = (*(v4 + 24))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  return v5;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AnyHashable(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v3);
  (*(v4 + 8))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_0Tm(v8, v9);
  (*(v6 + 32))(a1, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance AnyHashable(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v3);
  (*(v4 + 8))(v9, v3, v4);
  v5 = v10;
  v6 = v11;
  __swift_project_boxed_opaque_existential_0Tm(v9, v10);
  v7 = (*(v6 + 40))(a1, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return v7;
}

uint64_t AnyHashable.description.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_0Tm(v0, v1);
  (*(v2 + 48))(v5, v1, v2);
  v4[0] = 0;
  v4[1] = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)(v5, v4, qword_1EEEAC6F8, &type metadata for String, &protocol witness table for String);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  return v4[0];
}

uint64_t _sSS10describingSSx_tclufCypXp_Tt0g5(uint64_t a1)
{
  v40 = 0;
  v41 = 0xE000000000000000;
  v42 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, _sypXpMR);
  v34 = v2;
  v33[0] = a1;
  v3 = __swift_project_boxed_opaque_existential_0Tm(v33, v2);
  DynamicType = swift_getDynamicType(v3, v2, 1);
  isOptionalType = swift_isOptionalType(DynamicType);
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  if (isOptionalType)
  {
    *&v36 = a1;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(v33, &v36, v2, v6, 7uLL, v7, v8, v9, v33[0]);
  }

  else
  {
    v39 = a1;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
    if (swift_dynamicCast(&v36, &v39, v2, v14, 6uLL, v15, v16, v17, v33[0]))
    {
      _ss9CodingKey_pWOb_0(&v36, v33);
      v18 = v34;
      v19 = v35;
      __swift_project_boxed_opaque_existential_0Tm(v33, v34);
      (*(v19 + 8))(&v40, &type metadata for String, &protocol witness table for String, v18, v19);
      goto LABEL_7;
    }

    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    outlined destroy of _HasContiguousBytes?(&v36, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
    v39 = a1;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
    if (swift_dynamicCast(&v36, &v39, v2, v21, 6uLL, v22, v23, v24, v33[0]))
    {
      _ss9CodingKey_pWOb_0(&v36, v33);
      v25 = v34;
      v26 = v35;
      __swift_project_boxed_opaque_existential_0Tm(v33, v34);
      v12 = (*(v26 + 8))(v25, v26);
      goto LABEL_4;
    }

    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    outlined destroy of _HasContiguousBytes?(&v36, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
    v39 = a1;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    if (!swift_dynamicCast(&v36, &v39, v2, v27, 6uLL, v28, v29, v30, v33[0]))
    {
      v38 = 0;
      v36 = 0u;
      v37 = 0u;
      outlined destroy of _HasContiguousBytes?(&v36, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
      *(&v37 + 1) = v2;
      *&v36 = a1;
      Mirror.init(reflecting:)(&v36, v33);
      v31 = v33[1];
      v32 = v35;
      _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(&v42, v33, &v40, 0, v2, &type metadata for String, &protocol witness table for String);
      v32;
      v31;
      return v40;
    }

    _ss9CodingKey_pWOb_0(&v36, v33);
  }

  v10 = v34;
  v11 = v35;
  __swift_project_boxed_opaque_existential_0Tm(v33, v34);
  v12 = (*(v11 + 8))(v10, v11);
LABEL_4:
  v40 = v12;
  v41 = v13;
LABEL_7:
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  return v40;
}

unint64_t _sSS10describingSSx_tclufCSv_Tt0g5Tm(Swift::UInt64 a1, uint64_t *a2, uint64_t a3)
{
  v32[0] = 0;
  v32[1] = 0xE000000000000000;
  v30 = a2;
  v29[0] = a1;
  v6 = __swift_project_boxed_opaque_existential_0Tm(v29, a2);
  DynamicType = swift_getDynamicType(v6, a2, 1);
  isOptionalType = swift_isOptionalType(DynamicType);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  if (isOptionalType)
  {
    return specialized _Pointer.debugDescription.getter(a1);
  }

  v28 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v25, &v28, a2, v10, 6uLL, v11, v12, v13, v25))
  {
    _ss9CodingKey_pWOb_0(&v25, v29);
    v14 = v30;
    v15 = v31;
    __swift_project_boxed_opaque_existential_0Tm(v29, v30);
    (*(v15 + 8))(v32, &type metadata for String, &protocol witness table for String, v14, v15);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    return v32[0];
  }

  else
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    outlined destroy of _HasContiguousBytes?(&v25, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
    v28 = a1;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
    if (swift_dynamicCast(&v25, &v28, a2, v16, 6uLL, v17, v18, v19, v25))
    {
      _ss9CodingKey_pWOb_0(&v25, v29);
      v20 = v30;
      v21 = v31;
      __swift_project_boxed_opaque_existential_0Tm(v29, v30);
      v22 = (*(v21 + 8))(v20, v21);
    }

    else
    {
      v27 = 0;
      v25 = 0u;
      v26 = 0u;
      outlined destroy of _HasContiguousBytes?(&v25, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
      v30 = a2;
      v31 = a3;
      v29[0] = a1;
      v23 = __swift_project_boxed_opaque_existential_0Tm(v29, a2);
      v22 = specialized _Pointer.debugDescription.getter(*v23);
    }

    v24 = v22;
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    return v24;
  }
}

uint64_t String.init<A>(describing:)(uint64_t a1, Class *a2)
{
  v4 = *(a2 - 1);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v61 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v60 - v9;
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v60 - v13;
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v60 - v17;
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = (&v60 - v20);
  v69 = 0;
  v70 = 0xE000000000000000;
  v64 = v22;
  v23 = __swift_allocate_boxed_opaque_existential_0Tm(&v62);
  v24 = *(v4 + 16);
  v24(v23, a1, a2);
  v25 = v64;
  v26 = __swift_project_boxed_opaque_existential_0Tm(&v62, v64);
  DynamicType = swift_getDynamicType(v26, v25, 1);
  LODWORD(v25) = swift_isOptionalType(DynamicType);
  __swift_destroy_boxed_opaque_existential_1Tm(&v62);
  if (v25)
  {
    (*(v4 + 32))(v21, a1, a2);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v62, v21, a2, v28, 7uLL, v29, v30, v31, v60);
  }

  else
  {
    v24(v18, a1, a2);
    if (swift_dynamicCast(&v62, v18, a2, &type metadata for String, 6uLL, v36, v37, v38, v60))
    {
      (*(v4 + 8))(a1, a2);
      v69 = v62;
      v70 = v63;
      return v69;
    }

    v24(v14, a1, a2);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
    if (swift_dynamicCast(&v66, v14, a2, v40, 6uLL, v41, v42, v43, v60))
    {
      (*(v4 + 8))(a1, a2);
      _ss9CodingKey_pWOb_0(&v66, &v62);
      v44 = v64;
      v45 = v65;
      __swift_project_boxed_opaque_existential_0Tm(&v62, v64);
      (*(v45 + 8))(&v69, &type metadata for String, &protocol witness table for String, v44, v45);
      goto LABEL_5;
    }

    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    outlined destroy of _HasContiguousBytes?(&v66, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
    v24(v10, a1, a2);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
    if (swift_dynamicCast(&v66, v10, a2, v46, 6uLL, v47, v48, v49, v60))
    {
      (*(v4 + 8))(a1, a2);
      _ss9CodingKey_pWOb_0(&v66, &v62);
      v50 = v64;
      v51 = v65;
      __swift_project_boxed_opaque_existential_0Tm(&v62, v64);
      v34 = (*(v51 + 8))(v50, v51);
      goto LABEL_4;
    }

    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    outlined destroy of _HasContiguousBytes?(&v66, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
    v52 = v61;
    v24(v61, a1, a2);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    if (!swift_dynamicCast(&v66, v52, a2, v53, 6uLL, v54, v55, v56, v60))
    {
      v68 = 0;
      v66 = 0u;
      v67 = 0u;
      outlined destroy of _HasContiguousBytes?(&v66, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
      *(&v67 + 1) = a2;
      v57 = __swift_allocate_boxed_opaque_existential_0Tm(&v66);
      v24(v57, a1, a2);
      Mirror.init(reflecting:)(&v66, &v62);
      v58 = v63;
      v59 = v65;
      _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(a1, &v62, &v69, 0, a2, &type metadata for String, &protocol witness table for String);
      (*(v4 + 8))(a1, a2);
      v59;
      v58;
      return v69;
    }

    (*(v4 + 8))(a1, a2);
    _ss9CodingKey_pWOb_0(&v66, &v62);
  }

  v32 = v64;
  v33 = v65;
  __swift_project_boxed_opaque_existential_0Tm(&v62, v64);
  v34 = (*(v33 + 8))(v32, v33);
LABEL_4:
  v69 = v34;
  v70 = v35;
LABEL_5:
  __swift_destroy_boxed_opaque_existential_1Tm(&v62);
  return v69;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnyHashable()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_0Tm(v0, v1);
  (*(v2 + 48))(v5, v1, v2);
  v4[0] = 0;
  v4[1] = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)(v5, v4, qword_1EEEAC6F8, &type metadata for String, &protocol witness table for String);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  return v4[0];
}

unint64_t AnyHashable.debugDescription.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_0Tm(v0, v1);
  (*(v2 + 48))(v11, v1, v2);
  v9 = 0;
  v10 = 0xE000000000000000;
  _debugPrint_unlocked<A, B>(_:_:)(v11, &v9, qword_1EEEAC6F8, &type metadata for String, &protocol witness table for String);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  v3 = v10;
  v4 = specialized static String.+ infix(_:_:)(0x6168736148796E41uLL, 0xEC00000028656C62, v9, v10);
  v6 = v5;
  v3;
  v7 = specialized static String.+ infix(_:_:)(v4, v6, 0x29uLL, 0xE100000000000000);
  v6;
  return v7;
}

unint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnyHashable()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_0Tm(v0, v1);
  (*(v2 + 48))(v11, v1, v2);
  v9 = 0;
  v10 = 0xE000000000000000;
  _debugPrint_unlocked<A, B>(_:_:)(v11, &v9, qword_1EEEAC6F8, &type metadata for String, &protocol witness table for String);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  v3 = v10;
  v4 = specialized static String.+ infix(_:_:)(0x6168736148796E41uLL, 0xEC00000028656C62, v9, v10);
  v6 = v5;
  v3;
  v7 = specialized static String.+ infix(_:_:)(v4, v6, 0x29uLL, 0xE100000000000000);
  v6;
  return v7;
}

uint64_t AnyHashable.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of AnyHashable(v1, v26);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, _ss23_ContiguousArrayStorageCySS_yptGMR);
  v4 = swift_allocObject(v3, 0x50, 7uLL);
  *(v4 + 1) = xmmword_18071DB30;
  v4[4] = 0x65756C6176;
  v4[5] = 0xE500000000000000;
  v5 = v1[3];
  v6 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v5);
  (*(v6 + 48))(v5, v6);
  v24[0] = 0uLL;
  v7 = static Mirror._superclassIterator<A>(_:_:)(v26, v24, &type metadata for AnyHashable);
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMd, _ss26_RandomAccessCollectionBoxCys15LazyMapSequenceVys13KeyValuePairsVySSypGSSSg5label_yp5valuetGGMR);
  v11 = swift_allocObject(v10, 0x48, 7uLL);
  v11[6] = v4;
  v11[7] = closure #1 in Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:);
  v11[8] = 0;
  v12 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v13 = swift_allocObject(v12, 0x18, 7uLL);
  v13[2] = 0;
  v14 = v4[2];
  v15 = swift_allocObject(v12, 0x18, 7uLL);
  v15[2] = v14;
  v11[2] = v13;
  v11[3] = &protocol witness table for _IndexBox<A>;
  v11[4] = v15;
  v11[5] = &protocol witness table for _IndexBox<A>;
  v24[0] = v26[0];
  v24[1] = v26[1];
  v25 = v27;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v23, v24, &type metadata for AnyHashable, v16, 6uLL, v17, v18, v19, v22);
  v21 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  *a1 = &type metadata for AnyHashable;
  *(a1 + 8) = v11;
  *(a1 + 16) = 9;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = v21;
  return result;
}

__n128 protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance AnyHashable@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 + 32);
  return result;
}

uint64_t _swift_makeAnyHashableUsingDefaultRepresentation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = type metadata accessor for _ConcreteHashableBox(0, a3, a4, a4);
  v11 = &protocol witness table for _ConcreteHashableBox<A>;
  v7 = __swift_allocate_boxed_opaque_existential_0Tm(&v9);
  (*(*(a3 - 8) + 16))(v7, a1, a3);
  return outlined assign with take of AnyHashable(&v9, a2);
}

double _swift_convertToAnyHashableIndirect(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1, a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  AnyHashable.init<A>(_:)(v8, a3, a4, v13);
  result = *v13;
  v11 = v13[1];
  *a2 = v13[0];
  *(a2 + 16) = v11;
  *(a2 + 32) = v14;
  return result;
}

uint64_t _swift_anyHashableDownCastConditionalIndirect(uint64_t a1, char *a2, Class *a3, uint64_t a4)
{
  v7 = type metadata accessor for Optional(0, a3, a3, a4);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v27[-1] - v11;
  v13 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v10, v14);
  v16 = &v27[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AnyHashable(a1, v28);
  v17 = v29;
  v18 = v30;
  __swift_project_boxed_opaque_existential_0Tm(v28, v29);
  if ((*(v18 + 64))(a2, a3, v17, v18))
  {
    v19 = 1;
  }

  else
  {
    v20 = v29;
    v21 = v30;
    __swift_project_boxed_opaque_existential_0Tm(v28, v29);
    (*(v21 + 48))(v27, v20, v21);
    v27[0] = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(v27, qword_1EEEAC6F8);
    v22 = swift_dynamicCast(v12, v27, qword_1EEEAC710, a3, 6uLL);
    v23 = *(v13 + 56);
    if (v22)
    {
      v19 = 1;
      v23(v12, 0, 1, a3);
      v24 = *(v13 + 32);
      v24(v16, v12, a3);
      v24(a2, v16, a3);
    }

    else
    {
      v23(v12, 1, 1, a3);
      (*(v8 + 8))(v12, v7);
      v19 = 0;
    }
  }

  outlined destroy of AnyHashable(v28);
  return v19;
}

uint64_t _sSV4load14fromByteOffset2asxSi_xmtlFs13KeyPathBufferV6HeaderV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (((a2 + a1) & 3) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *(a2 + a1);
}

uint64_t _sSV4load14fromByteOffset2asxSi_xmtlFSVSg_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (((a2 + a1) & 7) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *(a2 + a1);
}

uint64_t UnsafeRawBufferPointer.count.getter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return a2 - a1;
  }

  else
  {
    return 0;
  }
}

unint64_t static UInt.- infix(_:_:)(unint64_t a1, unint64_t a2)
{
  v2 = a1 >= a2;
  result = a1 - a2;
  if (!v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t FixedWidthInteger.init(littleEndian:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return (*(*(a2 - 8) + 32))(a3, a1, a2);
}

{
  return FixedWidthInteger.init(littleEndian:)(a1, a2, a3);
}

double Hasher.init(_rawSeed:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = a1 ^ 0x736F6D6570736575;
  *(a3 + 16) = a2 ^ 0x646F72616E646F6DLL;
  *(a3 + 24) = a1 ^ 0x6C7967656E657261;
  *(a3 + 32) = a2 ^ 0x7465646279746573;
  result = 0.0;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  return result;
}

unint64_t Hasher._combine(_:)(unint64_t result)
{
  v2 = HIBYTE(*v1) & 7;
  v3 = *v1 + 0x800000000000000;
  if (v2)
  {
    v3 = (result >> ((-8 * v2) & 0x38)) | ((*v1 & 0xFF00000000000000) + 0x800000000000000);
    v4 = (result << (8 * v2)) | *v1 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = result;
  }

  v5 = v1[4] ^ v4;
  v6 = v1[2];
  v7 = v6 + v1[1];
  v8 = v7 ^ __ROR8__(v6, 51);
  v9 = v1[3] + v5;
  v10 = __ROR8__(v5, 48);
  v11 = (v9 ^ v10) + __ROR8__(v7, 32);
  v1[4] = v11 ^ __ROR8__(v9 ^ v10, 43);
  v1[2] = (v9 + v8) ^ __ROR8__(v8, 47);
  v1[3] = __ROR8__(v9 + v8, 32);
  *v1 = v3;
  v1[1] = v11 ^ v4;
  return result;
}

Swift::Void __swiftcall Hasher._combine(_:)(Swift::UInt32 a1)
{
  v2 = *v1;
  v3 = HIBYTE(*v1) & 7;
  v4 = 8 * v3;
  if (v3 > 3)
  {
    v5 = (a1 << v4) | v2 & 0xFFFFFFFFFFFFFFLL;
    v6 = v2 & 0xFF00000000000000;
    v7 = a1 >> ((-8 * v3) & 0x38);
    if (v3 == 4)
    {
      v7 = 0;
    }

    v8 = (v6 | v7) + 0x400000000000000;
    v9 = v1[4] ^ v5;
    v10 = v1[2];
    v11 = v10 + v1[1];
    v12 = v11 ^ __ROR8__(v10, 51);
    v13 = v1[3] + v9;
    v14 = v13 ^ __ROR8__(v9, 48);
    v15 = v14 + __ROR8__(v11, 32);
    v16 = v13 + v12;
    v1[3] = __ROR8__(v16, 32);
    v1[4] = v15 ^ __ROR8__(v14, 43);
    v1[1] = v15 ^ v5;
    v1[2] = v16 ^ __ROR8__(v12, 47);
    *v1 = v8;
  }

  else
  {
    *v1 = ((a1 << v4) | v2) + 0x400000000000000;
  }
}