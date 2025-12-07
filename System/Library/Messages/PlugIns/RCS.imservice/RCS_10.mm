uint64_t RCSHandle.rawValue.getter()
{
  v1 = v0;
  sub_388C8(&qword_128288, &qword_F3460);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_F2C60;
  v3 = *(v1 + 3);
  *(v2 + 32) = *(v1 + 2);
  *(v2 + 40) = v3;
  v4 = *(v1 + 4);

  sub_E57D4(v4);
  *&v25 = v2;
  sub_E77D8(v5);
  v25 = *v1;
  v24 = v25;
  sub_E7EC0(&v25, &v23);
  v26._countAndFlagsBits = 58;
  v26._object = 0xE100000000000000;
  sub_F08CC(v26);
  v23 = v2;
  sub_388C8(&qword_128558, &unk_F4430);
  sub_96AA4();
  v6 = sub_F079C();
  v8 = v7;
  v2, v7, v9, v10, v11, v12, v13, v14;
  v27._countAndFlagsBits = v6;
  v27._object = v8;
  sub_F08CC(v27);
  v8, v15, v16, v17, v18, v19, v20, v21;
  return v24;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RCSHandle.init(rawValue:botStatus:alternateHandle:)(CoreRCS::RCSHandle *__return_ptr retstr, Swift::String rawValue, CoreRCS::RCSHandle::BotStatus botStatus, Swift::String_optional alternateHandle)
{
  object = alternateHandle.value._object;
  countAndFlagsBits = alternateHandle.value._countAndFlagsBits;
  v6 = botStatus;
  v7 = rawValue._object;
  v8 = rawValue._countAndFlagsBits;
  v310 = sub_E7DC8(_swiftEmptyArrayStorage);
  *v320 = v310;
  v10 = sub_F07BC();
  IsPhoneNumber = IMStringIsPhoneNumber();

  if (IsPhoneNumber)
  {
    scheme._countAndFlagsBits = 7103860;
    scheme._object = 0xE300000000000000;
    id._countAndFlagsBits = v8;
    id._object = v7;
    v320[24] = v6;
    *&v320[8] = countAndFlagsBits;
    *&v320[16] = object;
LABEL_3:
    v313 = scheme;
    v314 = id;
    v315[0] = *v320;
    *(v315 + 9) = *&v320[9];
    v316[0] = scheme;
    v316[1] = id;
    v317[0] = *v320;
    *(v317 + 9) = *&v320[9];
    sub_38910(&v313, &v312);
    sub_3CAB8(v316);
    v12 = v314;
    retstr->scheme = v313;
    retstr->id = v12;
    *&retstr->attributes._rawValue = v315[0];
    *(&retstr->alternateHandle + 1) = *(v315 + 9);
    return;
  }

  v307 = countAndFlagsBits;
  v308 = v6;
  v309 = object;

  v323._countAndFlagsBits = 60;
  v323._object = 0xE100000000000000;
  v13 = sub_F092C(v323);
  v7, v14, v15, v16, v17, v18, v19, v20;
  v306 = retstr;
  if (!v13 || (v324._countAndFlagsBits = 62, v324._object = 0xE100000000000000, !sub_F093C(v324)))
  {
    v311 = v7;
LABEL_13:
    v57 = sub_F007C();
    v58 = *(v57 - 8);
    __chkstk_darwin(v57);
    v60 = &v302 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
    v61 = sub_388C8(&qword_12AB90, &qword_F7978);
    __chkstk_darwin(v61 - 8);
    v63 = &v302 - v62;
    v64 = v8;
    v65 = v311;
    sub_F006C();
    if ((*(v58 + 48))(v63, 1, v57) == 1)
    {
      v309, v66, v67, v68, v69, v70, v71, v72;
      sub_372B0(v63, &qword_12AB90, &qword_F7978);
      sub_E7F1C();
      swift_allocError();
      *v73 = v64;
      *(v73 + 8) = v65;
      *(v73 + 16) = 0;
      swift_willThrow();
      v310, v74, v75, v76, v77, v78, v79, v80;
      return;
    }

    v305 = v64;
    (*(v58 + 32))(v60, v63, v57);
    v81 = sub_F004C();
    v82 = v57;
    *&v316[0] = 59;
    *(&v316[0] + 1) = 0xE100000000000000;
    __chkstk_darwin(v81);
    *(&v302 - 2) = v316;
    v83 = v322;
    v88 = sub_E71DC(0x7FFFFFFFFFFFFFFFLL, &dword_0 + 1, sub_3387C, &v302 - 4, v84, v85, v86, v87, &v302);
    v96 = v88;
    v97 = *v88[1].IMDTelephonyServiceSession_opaque;
    if (!v97)
    {
      v88, v89, v90, v91, v92, v93, v94, v95;
      v309, v129, v130, v131, v132, v133, v134, v135;
      sub_E7F1C();
      swift_allocError();
      v136 = v311;
      *v137 = v305;
      *(v137 + 8) = v136;
      *(v137 + 16) = 1;
      swift_willThrow();
      (*(v58 + 8))(v60, v82);
      v310, v138, v139, v140, v141, v142, v143, v144;
      return;
    }

    v303 = v82;
    v304 = v58;
    v310 = &v302;
    v322 = v83;
    v98 = *v88[3].state;

    v99 = sub_F088C();
    v101 = v100;
    v98, v100, v102, v103, v104, v105, v106, v107;
    id._countAndFlagsBits = v99;
    id._object = v101;
    v302 = v101;
    v320[24] = v308;
    *&v320[8] = v307;
    *&v320[16] = v309;
    v108 = *v96[1].IMDTelephonyServiceSession_opaque;
    v109 = v305;
    if (v108 < v97)
    {
      __break(1u);
    }

    else
    {
      v101 = &scheme;
      if (v108 == v97 - 1)
      {

        goto LABEL_19;
      }
    }

    sub_E7AD8(v96, &v96[2], 1, (2 * v97) | 1);
    v294 = v293;

    v96, v295, v296, v297, v298, v299, v300, v301;
    v96 = v294;
LABEL_19:
    v110 = v303;
    sub_E8AE0(v96, v109, v311, &v101[2]);

    v111 = v60;
    v112 = sub_F005C();
    if (v113)
    {
      v120 = v112;
      v121 = v113;
      v309, v113, v114, v115, v116, v117, v118, v119;
      scheme._countAndFlagsBits = v120;
      scheme._object = v121;
      if (v120 != 7367027 || v121 != 0xE300000000000000)
      {
        v182 = sub_F122C();
        v311, v183, v184, v185, v186, v187, v188, v189;
        (*(v304 + 8))(v60, v110);
        retstr = v306;
        if ((v182 & 1) == 0 || v308)
        {
          goto LABEL_3;
        }

        goto LABEL_38;
      }

      v311, v122, v123, v124, v125, v126, v127, v128;
      (*(v304 + 8))(v60, v110);
LABEL_34:
      retstr = v306;
      if (v308)
      {
        goto LABEL_3;
      }

LABEL_38:
      v320[24] = 1;
      goto LABEL_3;
    }

    v145 = *v320;
    if (*(*v320 + 16))
    {
      v146 = sub_335DC(2);
      if (v147)
      {
        v154 = (*v145[3].state + 16 * v146);
        v155 = v154[1];
        if (v155)
        {
          v156 = *v154 & 0xFFFFFFFFFFFFLL;
          if ((v155 & 0x2000000000000000) != 0 ? HIBYTE(v155) & 0xF : v156)
          {
            v311, v147, v148, v149, v150, v151, v152, v153;
            v309, v158, v159, v160, v161, v162, v163, v164;
            (*(v304 + 8))(v60, v110);
            scheme._countAndFlagsBits = 7367027;
            scheme._object = 0xE300000000000000;
            retstr = v306;
            goto LABEL_3;
          }
        }
      }
    }

    v165 = v311;
    v166 = sub_F07BC();
    IsEmail = IMStringIsEmail();

    if (IsEmail)
    {
      v165, v168, v169, v170, v171, v172, v173, v174;
      v309, v175, v176, v177, v178, v179, v180, v181;
      (*(v304 + 8))(v111, v110);
      scheme._countAndFlagsBits = 7367027;
      scheme._object = 0xE300000000000000;
      goto LABEL_34;
    }

    v322 = v145;

    v190 = sub_F07BC();
    v191 = [v190 im_stripCategoryLabel];

    v192 = sub_F07EC();
    v194 = v193;

    if (v192 == v109 && v194 == v165)
    {
      v194, v195, v196, v197, v198, v199, v200, v201;
      v194 = v165;
    }

    else
    {
      v209 = sub_F122C();
      v165, v210, v211, v212, v213, v214, v215, v216;
      if ((v209 & 1) == 0)
      {
        v248._countAndFlagsBits = v192;
        v248._object = v194;
        v249.value._countAndFlagsBits = v307;
        v217 = v309;
        v249.value._object = v309;
        RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v321, v248, v308, v249);
        if (!v250)
        {
          (*(v304 + 8))(v111, v110);
          v322, v265, v266, v267, v268, v269, v270, v271;
          v302, v272, v273, v274, v275, v276, v277, v278;
          v165, v279, v280, v281, v282, v283, v284, v285;
          v217, v286, v287, v288, v289, v290, v291, v292;
          scheme = v321.scheme;
          id = v321.id;
          *v320 = *&v321.attributes._rawValue;
          *&v320[9] = *(&v321.alternateHandle + 1);
          retstr = v306;
          goto LABEL_3;
        }

        (*(v304 + 8))(v111, v110);
        v322, v251, v252, v253, v254, v255, v256, v257;
        v302, v258, v259, v260, v261, v262, v263, v264;
        v240 = v165;
        goto LABEL_45;
      }
    }

    v194, v202, v203, v204, v205, v206, v207, v208;
    v217 = v309;
    v309, v218, v219, v220, v221, v222, v223, v224;
    sub_E7F1C();
    swift_allocError();
    *v225 = v109;
    *(v225 + 8) = v165;
    *(v225 + 16) = 2;
    swift_willThrow();
    (*(v304 + 8))(v111, v110);
    v322, v226, v227, v228, v229, v230, v231, v232;
    v240 = v302;
LABEL_45:
    v240, v233, v234, v235, v236, v237, v238, v239;
    v217, v241, v242, v243, v244, v245, v246, v247;
    return;
  }

  v21 = sub_E8A30(1uLL, v8, v7);
  v23 = v22;
  v25 = v24;
  v7, v22, v26, v24, v27, v28, v29, v30;
  if (__OFSUB__(sub_F0E1C(), 1))
  {
    __break(1u);
  }

  else
  {
    v31 = sub_F0E0C();
    if (v32)
    {
      v33 = v23;
    }

    else
    {
      v33 = v31;
    }

    if (v33 >> 14 >= v21 >> 14)
    {
      sub_F0E3C();
      v35 = v34;
      v25, v36, v37, v34, v38, v39, v40, v41;
      v8 = sub_F088C();
      v43 = v42;
      v35, v42, v44, v45, v46, v47, v48, v49;
      v7, v50, v51, v52, v53, v54, v55, v56;
      v311 = v43;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_E57D4(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_6EB68(0, v2, 0);
    v53 = _swiftEmptyArrayStorage;
    v3 = v1 + 64;
    v4 = sub_F0E9C();
    v5 = 0;
    v54 = *(v1 + 36);
    v49 = v1 + 72;
    v50 = v2;
    v51 = v1 + 64;
    v52 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_49;
      }

      if (v54 != *(v1 + 36))
      {
        goto LABEL_50;
      }

      v8 = *(*(v1 + 48) + v4);
      v9 = (*(v1 + 56) + 16 * v4);
      v10 = v9[1];
      if (v10)
      {
        v11 = *v9;
        v12 = 0x726F70736E617274;
        if (v8 == 3)
        {
          v12 = 25199;
        }

        v13 = 0xE900000000000074;
        if (v8 == 3)
        {
          v13 = 0xE200000000000000;
        }

        if (v8 == 2)
        {
          v12 = 0x6E657265666E6F63;
          v13 = 0xEA00000000006563;
        }

        v14 = 0x6F632D656E6F6870;
        if (v8)
        {
          v14 = 1919251317;
        }

        v15 = 0xED0000747865746ELL;
        if (v8)
        {
          v15 = 0xE400000000000000;
        }

        if (v8 <= 1)
        {
          v16 = v14;
        }

        else
        {
          v16 = v12;
        }

        if (v8 <= 1)
        {
          v17 = v15;
        }

        else
        {
          v17 = v13;
        }

        v55._countAndFlagsBits = v16;
        v55._object = v17;
        sub_F08CC(v55);
        v17, v18, v19, v20, v21, v22, v23, v24;
        v56._countAndFlagsBits = 61;
        v56._object = 0xE100000000000000;
        sub_F08CC(v56);
        v25._countAndFlagsBits = v11;
      }

      else if (v8 <= 1)
      {
        v25._countAndFlagsBits = 0x6F632D656E6F6870;
        v10 = 0xED0000747865746ELL;
        if (v8)
        {
          v10 = 0xE400000000000000;
          v25._countAndFlagsBits = 1919251317;
        }
      }

      else if (v8 == 2)
      {
        v25._countAndFlagsBits = 0x6E657265666E6F63;
        v10 = 0xEA00000000006563;
      }

      else if (v8 == 3)
      {
        v10 = 0xE200000000000000;
        v25._countAndFlagsBits = 25199;
      }

      else
      {
        v25._countAndFlagsBits = 0x726F70736E617274;
        v10 = 0xE900000000000074;
      }

      v25._object = v10;
      sub_F08CC(v25);
      v10, v26, v27, v28, v29, v30, v31, v32;
      v38 = v53;
      v40 = v53[2];
      v39 = v53[3];
      if (v40 >= v39 >> 1)
      {
        sub_6EB68((v39 > 1), v40 + 1, 1);
        v38 = v53;
      }

      v38[2] = v40 + 1;
      v41 = &v38[2 * v40];
      v41[4] = 0;
      v41[5] = 0xE000000000000000;
      v1 = v52;
      v6 = 1 << *(v52 + 32);
      if (v4 >= v6)
      {
        goto LABEL_51;
      }

      v3 = v51;
      v42 = *(v51 + 8 * v7);
      if ((v42 & (1 << v4)) == 0)
      {
        goto LABEL_52;
      }

      v53 = v38;
      if (v54 != *(v52 + 36))
      {
        goto LABEL_53;
      }

      v43 = v42 & (-2 << (v4 & 0x3F));
      if (v43)
      {
        v6 = __clz(__rbit64(v43)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v44 = v7 << 6;
        v45 = v7 + 1;
        v46 = (v49 + 8 * v7);
        while (v45 < (v6 + 63) >> 6)
        {
          v48 = *v46++;
          v47 = v48;
          v44 += 64;
          ++v45;
          if (v48)
          {
            sub_E03E4(v4, v54, 0, v33, v34, v35, v36, v37);
            v6 = __clz(__rbit64(v47)) + v44;
            goto LABEL_4;
          }
        }

        sub_E03E4(v4, v54, 0, v33, v34, v35, v36, v37);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v50)
      {
        return;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
  }
}

uint64_t sub_E5BB4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_388C8(&qword_129720, qword_F52E0);
    v2 = sub_F110C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_17:
    v23 = *(*(a1 + 48) + (__clz(__rbit64(v5)) | (v9 << 6)));

    sub_388C8(&qword_12AB88, &qword_F7970);
    swift_dynamicCast();
    sub_F12FC();
    if (v23 <= 1)
    {
      if (v23)
      {
        v10 = 0xE400000000000000;
      }

      else
      {
        v10 = 0xED0000747865746ELL;
      }
    }

    else if (v23 == 2)
    {
      v10 = 0xEA00000000006563;
    }

    else if (v23 == 3)
    {
      v10 = 0xE200000000000000;
    }

    else
    {
      v10 = 0xE900000000000074;
    }

    sub_F089C();
    v10, v11, v12, v13, v14, v15, v16, v17;
    result = sub_F132C();
    v18 = -1 << v2[32];
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*&v7[8 * (v19 >> 6)]) == 0)
    {
      v24 = 0;
      v25 = (63 - v18) >> 6;
      while (++v20 != v25 || (v24 & 1) == 0)
      {
        v26 = v20 == v25;
        if (v20 == v25)
        {
          v20 = 0;
        }

        v24 |= v26;
        v27 = *&v7[8 * v20];
        if (v27 != -1)
        {
          v21 = __clz(__rbit64(~v27)) + (v20 << 6);
          goto LABEL_11;
        }
      }

      goto LABEL_35;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*&v7[8 * (v19 >> 6)])) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
    v5 &= v5 - 1;
    *&v7[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
    *(*(v2 + 6) + v21) = v23;
    *(*(v2 + 7) + 16 * v21) = v28;
    ++*(v2 + 2);
  }

  while (1)
  {
    v22 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v22 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v22);
    ++v9;
    if (v5)
    {
      v9 = v22;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t RCSHandle.uri.getter()
{
  v3 = *v0;
  v4 = v3;
  sub_E7EC0(&v4, &v2);
  v5._countAndFlagsBits = 58;
  v5._object = 0xE100000000000000;
  sub_F08CC(v5);
  sub_F08CC(v0[1]);
  return v3._countAndFlagsBits;
}

uint64_t RCSHandle.Attribute.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6F632D656E6F6870;
  v2 = 0x6E657265666E6F63;
  v3 = 25199;
  if (a1 != 3)
  {
    v3 = 0x726F70736E617274;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 1919251317;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_E5FC0@<X0>(Swift::String *a1@<X0>, CoreRCS::RCSHandle::Attribute_optional *a2@<X8>)
{
  result = _s7CoreRCS9RCSHandleV9AttributeO8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_E5FF0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000747865746ELL;
  v4 = 0x6F632D656E6F6870;
  v5 = 0xEA00000000006563;
  v6 = 0x6E657265666E6F63;
  v7 = 0xE200000000000000;
  v8 = 25199;
  if (v2 != 3)
  {
    v8 = 0x726F70736E617274;
    v7 = 0xE900000000000074;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1919251317;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

Swift::Int sub_E6090()
{
  v1 = *v0;
  sub_F12FC();
  v2 = 0xED0000747865746ELL;
  v3 = 0xEA00000000006563;
  v4 = 0xE200000000000000;
  if (v1 != 3)
  {
    v4 = 0xE900000000000074;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (v1)
  {
    v2 = 0xE400000000000000;
  }

  if (v1 <= 1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  sub_F089C();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return sub_F132C();
}

void sub_E6174(uint64_t a1)
{
  v2 = *v1;
  v3 = 0xED0000747865746ELL;
  v4 = 0xEA00000000006563;
  v5 = 0xE200000000000000;
  if (v2 != 3)
  {
    v5 = 0xE900000000000074;
  }

  if (v2 != 2)
  {
    v4 = v5;
  }

  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  sub_F089C();

  v6, v7, v8, v9, v10, v11, v12, v13;
}

Swift::Int sub_E6244(uint64_t a1)
{
  v2 = *v1;
  sub_F12FC();
  v3 = 0xED0000747865746ELL;
  v4 = 0xEA00000000006563;
  v5 = 0xE200000000000000;
  if (v2 != 3)
  {
    v5 = 0xE900000000000074;
  }

  if (v2 != 2)
  {
    v4 = v5;
  }

  if (v2)
  {
    v3 = 0xE400000000000000;
  }

  if (v2 <= 1)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  sub_F089C();
  v6, v7, v8, v9, v10, v11, v12, v13;
  return sub_F132C();
}

void static RCSHandle.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_F122C() & 1) != 0)
  {
    v5 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v5 || (sub_F122C() & 1) != 0)
    {
      v6 = a1[4];
      v7 = a2[4];

      sub_E63B4(v6, v7);
    }
  }
}

void sub_E63B4(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_14:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 56) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      v16 = *(*(a1 + 48) + v12);

      v17 = sub_335DC(v16);
      if ((v18 & 1) == 0)
      {
LABEL_25:
        v14, v18, v19, v20, v21, v22, v23, v24;
        return;
      }

      v25 = (*(a2 + 56) + 16 * v17);
      v18 = v25[1];
      if (v18)
      {
        if (!v14)
        {
          return;
        }

        if (*v25 == v15 && v18 == v14)
        {
          v14, v18, v19, v20, v21, v22, v23, v24;
        }

        else
        {
          v27 = sub_F122C();
          v14, v28, v29, v30, v31, v32, v33, v34;
          if ((v27 & 1) == 0)
          {
            return;
          }
        }
      }

      else if (v14)
      {
        goto LABEL_25;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_14;
      }
    }

    __break(1u);
  }
}

uint64_t RCSHandle.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RCSHandle.chatBotId.getter()
{
  countAndFlagsBits = v0[3]._countAndFlagsBits;
  if (countAndFlagsBits)
  {
    object = v0[2]._object;

    v3._countAndFlagsBits = object;
    v3._object = countAndFlagsBits;
    RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v32, v3, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
    if (v4)
    {
      if (qword_128F48 != -1)
      {
        swift_once();
      }

      v5 = sub_F06CC();
      sub_3C96C(v5, static Logger.chatbot);
      swift_errorRetain();
      v6 = sub_F06AC();
      v7 = sub_F0CEC();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138412290;
        swift_errorRetain();
        v10 = _swift_stdlib_bridgeErrorToNSError();
        *(v8 + 4) = v10;
        *v9 = v10;
        _os_log_impl(&dword_0, v6, v7, "Failed to get chat Bot ID, error: %@", v8, 0xCu);
        sub_372B0(v9, &qword_127AF0, &qword_F28E0);
      }

      else
      {
      }

      return 0;
    }

    v13 = v32.scheme._countAndFlagsBits;
    v12 = v32.scheme._object;
    v14 = v32.scheme._countAndFlagsBits == 7367027 && v32.scheme._object == 0xE300000000000000;
    if (!v14 && (sub_F122C() & 1) == 0)
    {
      if (qword_128F48 != -1)
      {
        swift_once();
      }

      v16 = sub_F06CC();
      sub_3C96C(v16, static Logger.chatbot);
      sub_38910(&v32, &v30);
      v17 = sub_F06AC();
      v18 = sub_F0CEC();
      sub_3CAB8(&v32);
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v31[0] = v20;
        *v19 = 136315138;
        v30._countAndFlagsBits = v13;
        v30._object = v12;

        v35._countAndFlagsBits = 58;
        v35._object = 0xE100000000000000;
        sub_F08CC(v35);
        sub_F08CC(v32.id);
        sub_3CAB8(&v32);
        v21 = v30._object;
        v22 = sub_3E850(v30._countAndFlagsBits, v30._object, v31);
        v21, v23, v24, v25, v26, v27, v28, v29;
        *(v19 + 4) = v22;
        _os_log_impl(&dword_0, v17, v18, "Alternate handle is not a sip, something is very wrong: %s", v19, 0xCu);
        sub_1EDC(v20);
      }

      else
      {

        sub_3CAB8(&v32);
      }

      return 0;
    }

    v30._countAndFlagsBits = v13;
    v30._object = v12;

    v34._countAndFlagsBits = 58;
    v34._object = 0xE100000000000000;
    sub_F08CC(v34);
    sub_F08CC(v32.id);
    sub_3CAB8(&v32);
    return v30._countAndFlagsBits;
  }

  v32.scheme = *v0;
  v11 = v32.scheme._countAndFlagsBits == 7367027 && v32.scheme._object == 0xE300000000000000;
  if (v11 || (sub_F122C() & 1) != 0)
  {
    v30 = *v0;
    sub_E7EC0(&v32, v31);
    v33._countAndFlagsBits = 58;
    v33._object = 0xE100000000000000;
    sub_F08CC(v33);
    sub_F08CC(v0[1]);
    return v30._countAndFlagsBits;
  }

  return 0;
}

void RCSHandle.hash(into:)(uint64_t a1)
{
  v2 = v1;
  sub_F089C();
  sub_F089C();
  sub_E78CC(a1, *(v2 + 32));
  if (*(v2 + 48))
  {
    sub_F131C(1u);
    sub_F089C();
  }

  else
  {
    sub_F131C(0);
  }

  sub_F130C(*(v2 + 56));
}

Swift::Int RCSHandle.hashValue.getter()
{
  sub_F12FC();
  sub_F089C();
  sub_F089C();
  sub_E78CC(v2, *(v0 + 32));
  if (*(v0 + 48))
  {
    sub_F131C(1u);
    sub_F089C();
  }

  else
  {
    sub_F131C(0);
  }

  sub_F130C(*(v0 + 56));
  return sub_F132C();
}

Swift::Int sub_E6B54()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  sub_F12FC();
  sub_F089C();
  sub_F089C();
  sub_E78CC(v5, v1);
  if (v2)
  {
    sub_F131C(1u);
    sub_F089C();
  }

  else
  {
    sub_F131C(0);
  }

  sub_F130C(v3);
  return sub_F132C();
}

void sub_E6C24(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  sub_F089C();
  sub_F089C();
  sub_E78CC(a1, v3);
  if (v4)
  {
    sub_F131C(1u);
    sub_F089C();
  }

  else
  {
    sub_F131C(0);
  }

  sub_F130C(v5);
}

Swift::Int sub_E6CCC(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  sub_F12FC();
  sub_F089C();
  sub_F089C();
  sub_E78CC(v6, v2);
  if (v3)
  {
    sub_F131C(1u);
    sub_F089C();
  }

  else
  {
    sub_F131C(0);
  }

  sub_F130C(v4);
  return sub_F132C();
}

void sub_E6D98(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_F122C() & 1) != 0)
  {
    v9 = v2 == v5 && v4 == v6;
    if (v9 || (sub_F122C() & 1) != 0)
    {

      sub_E63B4(v3, v7);
    }
  }
}

uint64_t RCSHandle.ParseError.errorDescription.getter(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      sub_F0F9C(81);
      v8._object = 0x8000000000100D90;
      v8._countAndFlagsBits = 0xD00000000000001BLL;
      sub_F08CC(v8);
      v9._countAndFlagsBits = a1;
      v9._object = a2;
      sub_F08CC(v9);
      v5 = " a nil URL scheme.";
      v6._countAndFlagsBits = 0xD000000000000034;
    }

    else
    {
      sub_F0F9C(63);
      v12._object = 0x8000000000100D90;
      v12._countAndFlagsBits = 0xD00000000000001BLL;
      sub_F08CC(v12);
      v13._countAndFlagsBits = a1;
      v13._object = a2;
      sub_F08CC(v13);
      v5 = "RCSHandle failed to parse ";
      v6._countAndFlagsBits = 0xD000000000000022;
    }
  }

  else
  {
    sub_F0F9C(66);
    v10._object = 0x8000000000100D90;
    v10._countAndFlagsBits = 0xD00000000000001BLL;
    sub_F08CC(v10);
    v11._countAndFlagsBits = a1;
    v11._object = a2;
    sub_F08CC(v11);
    v5 = "ata in path section.";
    v6._countAndFlagsBits = 0xD000000000000025;
  }

  v6._object = (v5 | 0x8000000000000000);
  sub_F08CC(v6);
  return 0;
}

double RCSHandle.canonicalizedHandle(for:)@<D0>(uint64_t (*a1)(void)@<X0>, _OWORD *a3@<X8>)
{
  sub_E83E4(v3, a1, v7);
  v5 = v7[1];
  *a3 = v7[0];
  a3[1] = v5;
  a3[2] = v8[0];
  result = *(v8 + 9);
  *(a3 + 41) = *(v8 + 9);
  return result;
}

void RCSHandle.init(destination:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 extractedUri];
  v5 = sub_F07EC();
  v7 = v6;

  v7, v8, v9, v10, v11, v12, v13, v14;
  v15 = (v7 >> 56) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v15 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v16 = &selRef_extractedUri;
  }

  else
  {
    v16 = &selRef_uri;
  }

  v17 = [a1 *v16];
  v18 = sub_F07EC();
  v20 = v19;

  if ([a1 isBot])
  {
    v21 = CoreRCS_RCSHandle_BotStatus_isChatBot;
  }

  else
  {
    v21 = CoreRCS_RCSHandle_BotStatus_notChatBot;
  }

  v22 = [a1 identities];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 identityList];

    v25 = sub_F09FC();
    if (!*v25[1].IMDTelephonyServiceSession_opaque)
    {
      __break(1u);
      return;
    }

    v26 = *v25[2].IMDTelephonyServiceSession_opaque;
    v27 = *v25[2].state;

    v25, v28, v29, v30, v31, v32, v33, v34;
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  v35._countAndFlagsBits = v18;
  v35._object = v20;
  v36.value._countAndFlagsBits = v26;
  v36.value._object = v27;
  RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v39, v35, v21, v36);

  if (!v37)
  {
    id = v39.id;
    *a2 = v39.scheme;
    *(a2 + 16) = id;
    *(a2 + 32) = *&v39.attributes._rawValue;
    *(a2 + 41) = *(&v39.alternateHandle + 1);
  }
}

void *sub_E71DC@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t (*a3)(void *)@<X2>, void *a4@<X3>, uint64_t a5@<X4>, RCSServiceSession *a6@<X5>, void *a7@<X6>, void *a8@<X7>, unint64_t a9@<X8>)
{
  v85 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v13 = a5;
  v18 = (a6 >> 56) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v19 = (a6 >> 56) & 0xF) : (v19 = a5 & 0xFFFFFFFFFFFFLL), !v19))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v18 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v18 && (a2 & 1) != 0)
    {
      a6, a2, a3, a4, a5, a6, a7, a8;
      return _swiftEmptyArrayStorage;
    }

    v9 = sub_F096C();
    v13 = v44;
    v14 = v45;
    v15 = v46;
    a6, v44, v45, v46, v47, v48, v49, v50;
    v16 = sub_D8B54(0, 1, &dword_0 + 1, _swiftEmptyArrayStorage, v51, v52, v53, v54);
    v11 = *(v16 + 16);
    a9 = *(v16 + 24);
LABEL_39:
    v12 = v11 + 1;
    if (v11 < a9 >> 1)
    {
LABEL_40:
      *(v16 + 16) = v12;
      v76 = (v16 + 32 * v11);
      v76[4] = v9;
      v76[5] = v13;
      v76[6] = v14;
      v76[7] = v15;
      return v16;
    }

LABEL_43:
    v16 = sub_D8B54((a9 > 1), v12, &dword_0 + 1, v16, a5, a6, a7, a8);
    goto LABEL_40;
  }

  v9 = a4;
  v80 = a2;
  v20 = 4 * v19;
  v16 = _swiftEmptyArrayStorage;
  v21 = 15;
  while (1)
  {
    v15 = v21 >> 14;
    if (v21 >> 14 == v20)
    {
      goto LABEL_33;
    }

    v81 = v16;
    v79 = a1;
    while (2)
    {
      v82 = v21;
      v16 = v21;
      while (1)
      {
        v22 = sub_F095C();
        v14 = v23;
        v84[0] = v22;
        v84[1] = v23;
        v24 = v85(v84);
        if (v10)
        {
          v81, v25, v26, v27, v28, v29, v30, v31;
          a6, v55, v56, v57, v58, v59, v60, v61;
          v14, v62, v63, v64, v65, v66, v67, v68;
          return v16;
        }

        v32 = v24;
        v14, v25, v26, v27, v28, v29, v30, v31;
        if (v32)
        {
          break;
        }

        v16 = sub_F08AC();
        v15 = v16 >> 14;
        if (v16 >> 14 == v20)
        {
          v16 = v81;
          v21 = v82;
          goto LABEL_33;
        }
      }

      result = v82;
      if (v82 >> 14 == v15 && (v80 & 1) != 0)
      {
        v21 = sub_F08AC();
        v15 = v21 >> 14;
        if (v21 >> 14 != v20)
        {
          continue;
        }

        v16 = v81;
LABEL_33:
        if (v21 >> 14 == v20 && (v80 & 1) != 0)
        {
          a6, a2, a3, a4, a5, a6, a7, a8;
          return v16;
        }

        if (v20 < v21 >> 14)
        {
          __break(1u);
        }

        else
        {
          v9 = sub_F096C();
          v13 = v69;
          v14 = v70;
          v15 = v71;
          a6, v69, v70, v71, v72, v73, v74, v75;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v11 = *(v16 + 16);
            a9 = *(v16 + 24);
            goto LABEL_39;
          }
        }

        v16 = sub_D8B54(0, *(v16 + 16) + 1, &dword_0 + 1, v16, a5, a6, a7, a8);
        goto LABEL_38;
      }

      break;
    }

    if (v15 < v82 >> 14)
    {
      break;
    }

    v34 = sub_F096C();
    v83 = v35;
    v77 = v37;
    v78 = v36;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v81 = sub_D8B54(0, *v81[1].IMDTelephonyServiceSession_opaque + 1, &dword_0 + 1, v81, v38, v39, v40, v41);
    }

    v15 = *v81[1].IMDTelephonyServiceSession_opaque;
    v42 = *v81[1].state;
    v14 = (v15 + 1);
    if (v15 >= v42 >> 1)
    {
      v81 = sub_D8B54((v42 > 1), v15 + 1, &dword_0 + 1, v81, v38, v39, v40, v41);
    }

    *v81[1].IMDTelephonyServiceSession_opaque = v14;
    v43 = &v81[2 * v15];
    *v43[2].IMDTelephonyServiceSession_opaque = v34;
    *v43[2].state = v83;
    *v43[3].IMDTelephonyServiceSession_opaque = v78;
    *v43[3].state = v77;
    v16 = v81;
    v21 = sub_F08AC();
    a1 = v79;
    if (*v81[1].IMDTelephonyServiceSession_opaque == v79)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_E759C(uint64_t a1)
{
  sub_F12FC();
  sub_F089C();
  sub_F089C();
  sub_E78CC(v4, *(a1 + 32));
  if (*(a1 + 48))
  {
    sub_F131C(1u);
    sub_F089C();
  }

  else
  {
    sub_F131C(0);
  }

  sub_F130C(*(a1 + 56));
  v2 = sub_F132C();

  return sub_E766C(a1, v2);
}

unint64_t sub_E766C(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v48 = ~v3;
    v6 = *a1;
    v7 = a1[1];
    do
    {
      v39 = (*(v2 + 48) + (v4 << 6));
      v40 = v39[1];
      v42 = v39[2];
      v41 = v39[3];
      v43 = v39[4];
      v44 = v39[6];
      v45 = *v39 == v6 && v40 == v7;
      if (v45 || (sub_F122C() & 1) != 0)
      {
        v46 = v42 == a1[2] && v41 == a1[3];
        if (v46 || (sub_F122C() & 1) != 0)
        {
          v8 = a1[4];

          sub_E63B4(v9, v8);
          LOBYTE(v8) = v10;
          v44, v11, v12, v13, v14, v15, v16, v17;
          v43, v18, v19, v20, v21, v22, v23, v24;
          v41, v25, v26, v27, v28, v29, v30, v31;
          v40, v32, v33, v34, v35, v36, v37, v38;
          if (v8)
          {
            break;
          }
        }
      }

      v4 = (v4 + 1) & v48;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_E77D8(RCSServiceSession *a1)
{
  v2 = *a1[1].IMDTelephonyServiceSession_opaque;
  v3 = *v1;
  v4 = *(*v1)[1].IMDTelephonyServiceSession_opaque;
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *v3[1].state >> 1)
  {
    if (*a1[1].IMDTelephonyServiceSession_opaque)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v25 = v4 + v2;
  }

  else
  {
    v25 = v4;
  }

  v3 = sub_6E2D8(isUniquelyReferenced_nonNull_native, v25, &dword_0 + 1, v3, v11, v12, v13, v14);
  if (!*a1[1].IMDTelephonyServiceSession_opaque)
  {
LABEL_13:
    a1, v8, v9, v10, v11, v12, v13, v14;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*v3[1].state >> 1) - *v3[1].IMDTelephonyServiceSession_opaque < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();
  a1, v15, v16, v17, v18, v19, v20, v21;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v22 = *v3[1].IMDTelephonyServiceSession_opaque;
  v23 = __OFADD__(v22, v2);
  v24 = v22 + v2;
  if (!v23)
  {
    *v3[1].IMDTelephonyServiceSession_opaque = v24;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_E78CC(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v6)
  {
    v31 = v8;
LABEL_12:
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = *(*(a2 + 48) + v11);
    v13 = *(*(a2 + 56) + 16 * v11 + 8);
    v6 &= v6 - 1;
    v14 = 0xE200000000000000;
    if (v12 != 3)
    {
      v14 = 0xE900000000000074;
    }

    if (v12 == 2)
    {
      v14 = 0xEA00000000006563;
    }

    v15 = 0xED0000747865746ELL;
    if (*(*(a2 + 48) + v11))
    {
      v15 = 0xE400000000000000;
    }

    if (*(*(a2 + 48) + v11) <= 1u)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    sub_F089C();
    v16, v17, v18, v19, v20, v21, v22, v23;
    if (v13)
    {
      sub_F131C(1u);
      sub_F089C();
      v13, v24, v25, v26, v27, v28, v29, v30;
    }

    else
    {
      sub_F131C(0);
    }

    v8 = sub_F132C() ^ v31;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      sub_F130C(v8);
      return;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v31 = v8;
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_E7AD8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_388C8(&qword_12A6E0, &qword_F73A8);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 1;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 5);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

unint64_t sub_E7BB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_388C8(&qword_1296F0, &qword_F5B90);
    v3 = sub_F110C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_51FEC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_E7CB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_388C8(&qword_129710, &qword_F52D0);
    v3 = sub_F110C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_51FEC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_E7DC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_388C8(&qword_129720, qword_F52E0);
    v3 = sub_F110C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_335DC(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_E7F1C()
{
  result = qword_12AB98;
  if (!qword_12AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12AB98);
  }

  return result;
}

uint64_t sub_E7F70@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *a1 == 7103860 && v7 == 0xE300000000000000;
  if (!v8 && (sub_F122C() & 1) == 0)
  {
    v83 = v6 == 0x6F746C69616DLL && v7 == 0xE600000000000000;
    if (v83 || (sub_F122C() & 1) != 0)
    {
      v85 = *(a1 + 16);
      v84 = *(a1 + 24);

      v86 = sub_53E04(_swiftEmptyArrayStorage);
      v87 = sub_E7DC8(_swiftEmptyArrayStorage);
      v88 = sub_E5BB4(v86);
      v87, v89, v90, v91, v92, v93, v94, v95;
      v86, v96, v97, v98, v99, v100, v101, v102;
      v112 = 7367027;
      v113 = 0xE300000000000000;
      v114 = v85;
      v115 = v84;
      v117 = 0;
      v118 = 0;
      v116 = v88;
      v119 = 0;
      v120 = 7367027;
      v121 = 0xE300000000000000;
      v122 = v85;
      v123 = v84;
      v126 = 0;
      v124 = v88;
      goto LABEL_21;
    }

    v104 = *(a1 + 56);
    v106 = *(a1 + 40);
    v105 = *(a1 + 48);
    v13 = *(a1 + 24);
    v107 = *(a1 + 32);
    v12 = *(a1 + 16);
LABEL_24:
    result = sub_38910(a1, &v120);
    goto LABEL_25;
  }

  v9 = a2();
  v11 = v10;
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = sub_F07BC();
  v109 = v9;
  if (v11)
  {

    v15 = sub_F07BC();
    v11, v16, v17, v18, v19, v20, v21, v22;
  }

  else
  {
    v15 = 0;
  }

  v23 = IMPhoneNumberRefCopyForPhoneNumber();

  v24 = v23;
  v25 = IMNormalizedPhoneNumberForCFPhoneNumberRef();
  if (!v25)
  {
    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v54 = sub_F06CC();
    sub_3C96C(v54, static Logger.rcs);

    sub_38910(a1, &v120);
    v55 = sub_F06AC();
    v56 = sub_F0CEC();
    sub_3CAB8(a1);
    v11, v57, v58, v59, v60, v61, v62, v63;
    if (os_log_type_enabled(v55, v56))
    {
      log = v55;
      v71 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      *v71 = 136315394;
      *(v71 + 4) = sub_3E850(v12, v13, &v112);
      *(v71 + 12) = 2080;
      v120 = v109;
      v121 = v11;
      sub_388C8(&qword_12AB88, &qword_F7970);
      v72 = sub_F083C();
      v74 = v73;
      v110 = v24;
      v75 = sub_3E850(v72, v73, &v112);
      v74, v76, v77, v78, v79, v80, v81, v82;
      *(v71 + 14) = v75;
      _os_log_impl(&dword_0, log, v56, "Could not normalize phone number %s country code %s", v71, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v11, v64, v65, v66, v67, v68, v69, v70;
    }

    v104 = *(a1 + 56);
    v106 = *(a1 + 40);
    v105 = *(a1 + 48);
    v107 = *(a1 + 32);
    goto LABEL_24;
  }

  v33 = v25;
  v11, v26, v27, v28, v29, v30, v31, v32;
  v34 = sub_F07EC();
  v36 = v35;

  v37 = sub_53E04(_swiftEmptyArrayStorage);
  v38 = sub_E7DC8(_swiftEmptyArrayStorage);
  v39 = sub_E5BB4(v37);
  v38, v40, v41, v42, v43, v44, v45, v46;
  v37, v47, v48, v49, v50, v51, v52, v53;

  v112 = 7103860;
  v113 = 0xE300000000000000;
  v114 = v34;
  v115 = v36;
  v117 = 0;
  v118 = 0;
  v116 = v39;
  v119 = 0;
  v120 = 7103860;
  v121 = 0xE300000000000000;
  v122 = v34;
  v123 = v36;
  v126 = 0;
  v124 = v39;
LABEL_21:
  v125 = 0;
  v127 = 0;
  sub_38910(&v112, v111);
  result = sub_3CAB8(&v120);
  v104 = v119;
  v106 = v117;
  v105 = v118;
  v13 = v115;
  v107 = v116;
  v7 = v113;
  v12 = v114;
  v6 = v112;
LABEL_25:
  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = v12;
  *(a3 + 24) = v13;
  *(a3 + 32) = v107;
  *(a3 + 40) = v106;
  *(a3 + 48) = v105;
  *(a3 + 56) = v104;
  return result;
}

uint64_t sub_E83E4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *a1 == 7103860 && v7 == 0xE300000000000000;
  if (!v8 && (sub_F122C() & 1) == 0)
  {
    v88 = v6 == 0x6F746C69616DLL && v7 == 0xE600000000000000;
    if (v88 || (sub_F122C() & 1) != 0)
    {
      v90 = *(a1 + 16);
      v89 = *(a1 + 24);

      v91 = sub_53E04(_swiftEmptyArrayStorage);
      v92 = sub_E7DC8(_swiftEmptyArrayStorage);
      v93 = sub_E5BB4(v91);
      v92, v94, v95, v96, v97, v98, v99, v100;
      v91, v101, v102, v103, v104, v105, v106, v107;
      v117 = 7367027;
      v118 = 0xE300000000000000;
      v119 = v90;
      v120 = v89;
      v122 = 0;
      v123 = 0;
      v121 = v93;
      v124 = 0;
      v125 = 7367027;
      v126 = 0xE300000000000000;
      v127 = v90;
      v128 = v89;
      v131 = 0;
      v129 = v93;
      goto LABEL_24;
    }

    v109 = *(a1 + 56);
    v111 = *(a1 + 40);
    v110 = *(a1 + 48);
    v19 = *(a1 + 24);
    v112 = *(a1 + 32);
    v18 = *(a1 + 16);
LABEL_27:
    result = sub_38910(a1, &v125);
    goto LABEL_28;
  }

  v9 = a2();
  if (v9)
  {
    v10 = v9;
    v11 = objc_opt_self();
    v12 = v10;
    v13 = [v11 sharedInstance];
    v14 = [v13 copyIsoCountryCodeForSubscriptionContext:v12];

    v15 = sub_F07EC();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  v20 = sub_F07BC();
  v114 = v15;
  if (v17)
  {

    v21 = sub_F07BC();
    v17, v22, v23, v24, v25, v26, v27, v28;
  }

  else
  {
    v21 = 0;
  }

  v29 = IMPhoneNumberRefCopyForPhoneNumber();

  v30 = IMNormalizedPhoneNumberForCFPhoneNumberRef();
  if (!v30)
  {
    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v59 = sub_F06CC();
    sub_3C96C(v59, static Logger.rcs);

    sub_38910(a1, &v125);
    v60 = sub_F06AC();
    v61 = sub_F0CEC();
    sub_3CAB8(a1);
    v17, v62, v63, v64, v65, v66, v67, v68;
    if (os_log_type_enabled(v60, v61))
    {
      log = v60;
      v76 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      *v76 = 136315394;
      *(v76 + 4) = sub_3E850(v18, v19, &v117);
      *(v76 + 12) = 2080;
      v125 = v114;
      v126 = v17;
      sub_388C8(&qword_12AB88, &qword_F7970);
      v77 = sub_F083C();
      v79 = v78;
      v115 = v61;
      v80 = sub_3E850(v77, v78, &v117);
      v79, v81, v82, v83, v84, v85, v86, v87;
      *(v76 + 14) = v80;
      _os_log_impl(&dword_0, log, v115, "Could not normalize phone number %s country code %s", v76, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v17, v69, v70, v71, v72, v73, v74, v75;
    }

    v109 = *(a1 + 56);
    v111 = *(a1 + 40);
    v110 = *(a1 + 48);
    v112 = *(a1 + 32);
    goto LABEL_27;
  }

  v38 = v30;
  v17, v31, v32, v33, v34, v35, v36, v37;
  v39 = sub_F07EC();
  v41 = v40;

  v42 = sub_53E04(_swiftEmptyArrayStorage);
  v43 = sub_E7DC8(_swiftEmptyArrayStorage);
  v44 = sub_E5BB4(v42);
  v43, v45, v46, v47, v48, v49, v50, v51;
  v42, v52, v53, v54, v55, v56, v57, v58;

  v117 = 7103860;
  v118 = 0xE300000000000000;
  v119 = v39;
  v120 = v41;
  v122 = 0;
  v123 = 0;
  v121 = v44;
  v124 = 0;
  v125 = 7103860;
  v126 = 0xE300000000000000;
  v127 = v39;
  v128 = v41;
  v131 = 0;
  v129 = v44;
LABEL_24:
  v130 = 0;
  v132 = 0;
  sub_38910(&v117, v116);
  result = sub_3CAB8(&v125);
  v109 = v124;
  v111 = v122;
  v110 = v123;
  v19 = v120;
  v112 = v121;
  v7 = v118;
  v18 = v119;
  v6 = v117;
LABEL_28:
  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = v18;
  *(a3 + 24) = v19;
  *(a3 + 32) = v112;
  *(a3 + 40) = v111;
  *(a3 + 48) = v110;
  *(a3 + 56) = v109;
  return result;
}

unint64_t sub_E88C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_388C8(&qword_129718, &qword_F52D8);
    v3 = sub_F110C();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      v6 = v4[4];
      v20 = v4[3];
      v21 = v6;
      v7 = v4[2];
      v18 = v4[1];
      v19 = v7;
      v17 = *v4;
      v8 = v21;
      v22 = v17;
      v23 = v18;
      v24[0] = v7;
      *(v24 + 9) = *(v4 + 41);
      sub_37380(&v17, &v16, &qword_12ABC0, &qword_F7CA8);
      result = sub_E759C(&v22);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + (result << 6));
      v12 = v23;
      *v11 = v22;
      v11[1] = v12;
      v11[2] = v24[0];
      *(v11 + 41) = *(v24 + 9);
      *(v3[7] + 16 * result) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_11;
      }

      v3[2] = v15;
      if (!i)
      {

        return v3;
      }

      v4 += 5;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_E8A30(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_F08BC();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_F096C();
}

void sub_E8AE0(uint64_t a1, uint64_t a2, RCSServiceSession *a3, RCSServiceSession **a4)
{
  v225 = *(a1 + 16);
  if (!v225)
  {
    return;
  }

  v4 = 0;
  v223 = a1 + 32;
  while (2)
  {
    v228 = v4;
    v31 = (v223 + 32 * v4);
    v32 = *v31;
    v33 = v31[2];
    v34 = v31[3];
    v35 = v31[1] >> 14;

    v36 = _swiftEmptyArrayStorage;
    if (v35 == v32 >> 14)
    {
LABEL_37:
      v123 = *v36[1].IMDTelephonyServiceSession_opaque;
      if (!v123)
      {
        break;
      }

      goto LABEL_38;
    }

    v44 = v32;
    v226 = _swiftEmptyArrayStorage;
    do
    {
      v45 = v44 >> 14;
      if (v44 >> 14 == v35)
      {
        break;
      }

      while (1)
      {
        while (1)
        {
          v46 = v33;
          v47 = sub_F0E2C();
          v55 = v48;
          if (v47 == 61 && v48 == 0xE100000000000000)
          {
            break;
          }

          v56 = sub_F122C();
          v55, v57, v58, v59, v60, v61, v62, v63;
          if (v56)
          {
            goto LABEL_14;
          }

          v33 = v46;
          v45 = sub_F0DFC() >> 14;
          if (v45 == v35)
          {
            goto LABEL_23;
          }
        }

        0xE100000000000000, 0xE100000000000000, v49, v50, v51, v52, v53, v54;
LABEL_14:
        v33 = v46;
        if (v44 >> 14 != v45)
        {
          break;
        }

        v44 = sub_F0DFC();
        v45 = v44 >> 14;
        if (v44 >> 14 == v35)
        {
          goto LABEL_23;
        }
      }

      if (v45 < v44 >> 14)
      {
        goto LABEL_64;
      }

      v222 = sub_F0E3C();
      v218 = v65;
      v219 = v64;
      v67 = v66;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v226 = sub_D8B54(0, *v226[1].IMDTelephonyServiceSession_opaque + 1, &dword_0 + 1, v226, v68, v69, v70, v71);
      }

      v73 = *v226[1].IMDTelephonyServiceSession_opaque;
      v72 = *v226[1].state;
      if (v73 >= v72 >> 1)
      {
        v226 = sub_D8B54((v72 > 1), v73 + 1, &dword_0 + 1, v226, v68, v69, v70, v71);
      }

      *v226[1].IMDTelephonyServiceSession_opaque = v73 + 1;
      v74 = &v226[2 * v73];
      *v74[2].IMDTelephonyServiceSession_opaque = v222;
      *v74[2].state = v219;
      *v74[3].IMDTelephonyServiceSession_opaque = v67;
      *v74[3].state = v218;
      v33 = v46;
      v44 = sub_F0DFC();
    }

    while (*v226[1].IMDTelephonyServiceSession_opaque != 2);
LABEL_23:
    if (v44 >> 14 != v35)
    {
      if (v35 < v44 >> 14)
      {
        goto LABEL_62;
      }

      v84 = sub_F0E3C();
      v86 = v85;
      v88 = v87;
      v90 = v89;
      v34, v85, v87, v89, v91, v92, v93, v94;
      v83 = v226;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = sub_D8B54(0, *v226[1].IMDTelephonyServiceSession_opaque + 1, &dword_0 + 1, v226, v95, v96, v97, v98);
      }

      v100 = *v83[1].IMDTelephonyServiceSession_opaque;
      v99 = *v83[1].state;
      v82 = v100 + 1;
      if (v100 >= v99 >> 1)
      {
        v83 = sub_D8B54((v99 > 1), v100 + 1, &dword_0 + 1, v83, v95, v96, v97, v98);
      }

      *v83[1].IMDTelephonyServiceSession_opaque = v82;
      v101 = &v83[2 * v100];
      *v101[2].IMDTelephonyServiceSession_opaque = v84;
      *v101[2].state = v86;
      *v101[3].IMDTelephonyServiceSession_opaque = v88;
      *v101[3].state = v90;
LABEL_32:
      v229 = _swiftEmptyArrayStorage;
      sub_6EB68(0, v82, 0);
      v36 = v229;
      v227 = v83;
      state = v83[3].state;
      do
      {
        v103 = *state;

        v104 = sub_F088C();
        v106 = v105;
        v103, v105, v107, v108, v109, v110, v111, v112;
        v229 = v36;
        v121 = *v36[1].IMDTelephonyServiceSession_opaque;
        v120 = *v36[1].state;
        if (v121 >= v120 >> 1)
        {
          sub_6EB68((v120 > 1), v121 + 1, 1);
          v36 = v229;
        }

        *v36[1].IMDTelephonyServiceSession_opaque = v121 + 1;
        v122 = &v36[v121];
        *v122[2].IMDTelephonyServiceSession_opaque = v104;
        *v122[2].state = v106;
        state += 4;
        --v82;
      }

      while (v82);
      v227, v113, v114, v115, v116, v117, v118, v119;
      goto LABEL_37;
    }

    v34, v37, v38, v39, v40, v41, v42, v43;
    v82 = *v226[1].IMDTelephonyServiceSession_opaque;
    if (v82)
    {
      v83 = v226;
      goto LABEL_32;
    }

    v226, v75, v76, v77, v78, v79, v80, v81;
    v36 = _swiftEmptyArrayStorage;
    v123 = _swiftEmptyArrayStorage[2];
    if (v123)
    {
LABEL_38:
      v124 = *v36[2].IMDTelephonyServiceSession_opaque;
      v125 = *v36[2].state;
      if (v123 == 1)
      {
        v126 = 0;
        v127 = 0;
      }

      else
      {
        v126 = *v36[3].IMDTelephonyServiceSession_opaque;
        v127 = *v36[3].state;
      }

      swift_bridgeObjectRetain_n();
      v36, v128, v129, v130, v131, v132, v133, v134;
      v135._rawValue = &off_11F6B0;
      v230._countAndFlagsBits = v124;
      v230._object = v125;
      v136 = sub_F112C(v135, v230);
      v125, v137, v138, v139, v140, v141, v142, v143;
      if (v136 > 4)
      {
        v127, v144, v145, v146, v147, v148, v149, v150;
        if (qword_128F38 != -1)
        {
          swift_once();
        }

        v173 = sub_F06CC();
        sub_3C96C(v173, static Logger.rcs);

        v174 = sub_F06AC();
        v175 = sub_F0CEC();
        v125, v176, v177, v178, v179, v180, v181, v182;
        a3, v183, v184, v185, v186, v187, v188, v189;
        v34, v190, v191, v192, v193, v194, v195, v196;
        if (os_log_type_enabled(v174, v175))
        {
          v5 = swift_slowAlloc();
          v229 = swift_slowAlloc();
          *v5 = 136315650;
          v6 = sub_F088C();
          v8 = v7;
          v34, v7, v9, v10, v11, v12, v13, v14;
          v15 = sub_3E850(v6, v8, &v229);
          v8, v16, v17, v18, v19, v20, v21, v22;
          *(v5 + 4) = v15;
          *(v5 + 12) = 2080;
          *(v5 + 14) = sub_3E850(a2, a3, &v229);
          *(v5 + 22) = 2080;
          v23 = sub_3E850(v124, v125, &v229);
          v125, v24, v25, v26, v27, v28, v29, v30;
          *(v5 + 24) = v23;
          _os_log_impl(&dword_0, v174, v175, "Skipping path component %s in RCS URI %s: unknown part %s", v5, 0x20u);
          swift_arrayDestroy();
        }

        else
        {

          v125, v197, v198, v199, v200, v201, v202, v203;
          v34, v204, v205, v206, v207, v208, v209, v210;
        }

        goto LABEL_4;
      }

      v125, v144, v145, v146, v147, v148, v149, v150;
      v34, v151, v152, v153, v154, v155, v156, v157;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v229 = *a4;
      v159 = v229;
      v160 = sub_335DC(v136);
      v168 = *v159[1].IMDTelephonyServiceSession_opaque;
      v169 = (v161 & 1) == 0;
      v170 = __OFADD__(v168, v169);
      v171 = v168 + v169;
      if (v170)
      {
        goto LABEL_61;
      }

      v172 = v161;
      if (*v159[1].state < v171)
      {
        sub_BAEA4(v171, isUniquelyReferenced_nonNull_native);
        v160 = sub_335DC(v136);
        if ((v172 & 1) != (v161 & 1))
        {
          goto LABEL_65;
        }

LABEL_51:
        v211 = v229;
        if ((v172 & 1) == 0)
        {
          goto LABEL_56;
        }

        goto LABEL_52;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_51;
      }

      v214 = v160;
      sub_BCCA4();
      v160 = v214;
      v211 = v229;
      if ((v172 & 1) == 0)
      {
LABEL_56:
        *&v211[4].IMDTelephonyServiceSession_opaque[8 * (v160 >> 6)] |= 1 << v160;
        *(*v211[3].IMDTelephonyServiceSession_opaque + v160) = v136;
        v215 = (*v211[3].state + 16 * v160);
        *v215 = v126;
        v215[1] = v127;
        v216 = *v211[1].IMDTelephonyServiceSession_opaque;
        v170 = __OFADD__(v216, 1);
        v217 = v216 + 1;
        if (v170)
        {
          goto LABEL_63;
        }

        *v211[1].IMDTelephonyServiceSession_opaque = v217;
        goto LABEL_58;
      }

LABEL_52:
      v212 = (*v211[3].state + 16 * v160);
      v213 = v212[1];
      *v212 = v126;
      v212[1] = v127;
      v213, v161, v162, v163, v164, v165, v166, v167;
LABEL_58:
      *a4 = v211;
LABEL_4:
      v4 = v228 + 1;
      if (v228 + 1 == v225)
      {
        return;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  sub_F126C();
  __break(1u);
}

uint64_t sub_E92AC()
{
  sub_F12FC();
  sub_F089C();
  v0 = sub_F132C();

  return sub_E9280(v0);
}

unint64_t sub_E9318(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_388C8(&qword_129708, &qword_F52B8);
    v3 = sub_F110C();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = sub_E92AC();
      if (v8)
      {
        break;
      }

      *(v3 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v9 = (*(v3 + 56) + 16 * result);
      *v9 = v6;
      v9[1] = v5;
      v10 = *(v3 + 16);
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      *(v3 + 16) = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_E9400(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_388C8(&qword_129700, &qword_F52B0);
    v3 = sub_F110C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_51FEC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_E9504(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_388C8(&qword_1296F8, &unk_F52A0);
    v3 = sub_F110C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_51FEC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_E9608(uint64_t a1)
{
  v2 = sub_388C8(&qword_12ABB8, &qword_F7CA0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v23 - v4);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_388C8(&qword_1296E8, &qword_F5298);
  v7 = sub_F110C();
  v8 = *(v2 + 48);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = *(v3 + 72);

  sub_37380(a1 + v9, v5, &qword_12ABB8, &qword_F7CA0);
  v11 = v5[1];
  v23 = *v5;
  v24 = v11;
  v25[0] = v5[2];
  *(v25 + 9) = *(v5 + 41);
  v12 = sub_E759C(&v23);
  if (v13)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v14 = v12;
  v15 = *(*(type metadata accessor for TypingIndicator(0) - 8) + 72);
  v16 = a1 + v10 + v9;
  while (1)
  {
    *(v7 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
    memmove((v7[6] + (v14 << 6)), v5, 0x39uLL);
    result = sub_BDEA0(v5 + v8, v7[7] + v15 * v14);
    v18 = v7[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v7[2] = v20;
    if (!--v6)
    {
      goto LABEL_8;
    }

    sub_37380(v16, v5, &qword_12ABB8, &qword_F7CA0);
    v21 = v5[1];
    v23 = *v5;
    v24 = v21;
    v25[0] = v5[2];
    *(v25 + 9) = *(v5 + 41);
    v14 = sub_E759C(&v23);
    v16 += v10;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _s7CoreRCS9RCSHandleV9AttributeO8rawValueAESgSS_tcfC_0(uint64_t a1, RCSServiceSession *a2)
{
  v13._countAndFlagsBits = a1;
  v3._rawValue = &off_11F960;
  v13._object = a2;
  v4 = sub_F112C(v3, v13);
  a2, v5, v6, v7, v8, v9, v10, v11;
  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_E9894()
{
  result = qword_12ABA0;
  if (!qword_12ABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12ABA0);
  }

  return result;
}

unint64_t sub_E98EC()
{
  result = qword_12ABA8;
  if (!qword_12ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12ABA8);
  }

  return result;
}

unint64_t sub_E9944()
{
  result = qword_12ABB0;
  if (!qword_12ABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12ABB0);
  }

  return result;
}

uint64_t sub_E999C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_E99E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_E9A70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_E9AB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_E9BF4()
{
  result = qword_129528;
  if (!qword_129528)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129528);
  }

  return result;
}

uint64_t IMDChatRCSGroupSnapshot.originalGroupID.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void IMDChatRCSGroupSnapshot.originalGroupID.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v5, v6, v7, v8, v9, v10, v11, v12;
}

void IMDChatRCSGroupSnapshot.properties.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
  v3, v4, v5, v6, v7, v8, v9, v10;
}

void *IMDChatRCSGroupSnapshot.__allocating_init(originalGroupID:properties:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[3] = 0;
  v6[4] = 0;
  v6[2] = 0;
  swift_beginAccess();
  v6[2] = a1;
  v6[3] = a2;
  swift_beginAccess();
  v6[4] = a3;
  return v6;
}

void *IMDChatRCSGroupSnapshot.init(originalGroupID:properties:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = 0;
  v3[4] = 0;
  v3[2] = 0;
  swift_beginAccess();
  v3[2] = a1;
  v3[3] = a2;
  swift_beginAccess();
  v3[4] = a3;
  return v3;
}

Swift::Bool __swiftcall IMDChatRCSGroupSnapshot.updateProperties(_:)(Swift::OpaquePointer_optional a1)
{
  if (!a1.value._rawValue)
  {
    goto LABEL_52;
  }

  v2 = v1;
  rawValue = a1.value._rawValue;
  v4 = a1.value._rawValue + 64;
  v5 = 1 << *(a1.value._rawValue + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1.value._rawValue + 8);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
    v10 = v9;
LABEL_18:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = v13 | (v10 << 6);
    sub_54ED8(rawValue[6] + 40 * v14, &v70);
    sub_3FE38(rawValue[7] + 32 * v14, v69);
    v73 = v70;
    v74 = v71;
    *&v75 = v72;
    sub_54F88(v69, (&v75 + 8));
LABEL_19:
    v80[0] = v75;
    v80[1] = v76;
    v81 = v77;
    v78 = v73;
    v79 = v74;
    if (!*(&v74 + 1))
    {

      return 1;
    }

    v73 = v78;
    v74 = v79;
    *&v75 = *&v80[0];
    sub_54F88((v80 + 8), v69);
    sub_3FE38(v69, &v70);
    sub_37310(0, &qword_12AD08, NSNull_ptr);
    if (swift_dynamicCast())
    {

      swift_beginAccess();
      if (!*(v2 + 32))
      {
        goto LABEL_50;
      }

      v15 = sub_51FA8(&v73);
      if (v16)
      {
        v17 = v15;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = *(v2 + 32);
        *&v66[0] = v19;
        *(v2 + 32) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_76F14();
          v19 = *&v66[0];
        }

        sub_54F34(*(v19 + 48) + 40 * v17);
        sub_54F88((*(v19 + 56) + 32 * v17), &v70);
        sub_7656C(v17, v19);
        v20 = *(v2 + 32);
        *(v2 + 32) = v19;
        v20, v21, v22, v23, v24, v25, v26, v27;
      }

      else
      {
        v70 = 0u;
        v71 = 0u;
      }

      sub_372B0(&v70, &unk_127FB0, &qword_F2F40);
    }

    else
    {
      sub_54ED8(&v73, &v70);
      sub_3FE38(v69, &v67);
      swift_beginAccess();
      if (!*(v2 + 32))
      {
        goto LABEL_51;
      }

      if (v68)
      {
        sub_54F88(&v67, v66);
        v28 = swift_isUniquelyReferenced_nonNull_native();
        v29 = *(v2 + 32);
        *(v2 + 32) = 0x8000000000000000;
        v30 = sub_51FA8(&v70);
        v32 = v29[2];
        v33 = (v31 & 1) == 0;
        v34 = __OFADD__(v32, v33);
        v35 = v32 + v33;
        if (v34)
        {
          goto LABEL_48;
        }

        v36 = v31;
        if (v29[3] >= v35)
        {
          if (v28)
          {
            goto LABEL_38;
          }

          v60 = v30;
          sub_76F14();
          v30 = v60;
          v51 = v29;
          if ((v36 & 1) == 0)
          {
            goto LABEL_43;
          }

LABEL_39:
          v52 = (v51[7] + 32 * v30);
          sub_1EDC(v52);
          sub_54F88(v66, v52);
          sub_54F34(&v70);
        }

        else
        {
          sub_76100(v35, v28);
          v30 = sub_51FA8(&v70);
          if ((v36 & 1) != (v37 & 1))
          {
            goto LABEL_53;
          }

LABEL_38:
          v51 = v29;
          if (v36)
          {
            goto LABEL_39;
          }

LABEL_43:
          v51[(v30 >> 6) + 8] |= 1 << v30;
          v61 = v30;
          sub_54ED8(&v70, v51[6] + 40 * v30);
          sub_54F88(v66, (v51[7] + 32 * v61));
          sub_54F34(&v70);
          v62 = v51[2];
          v34 = __OFADD__(v62, 1);
          v63 = v62 + 1;
          if (v34)
          {
            goto LABEL_49;
          }

          v51[2] = v63;
        }

        v64 = *(v2 + 32);
        *(v2 + 32) = v51;
        v64, v53, v54, v55, v56, v57, v58, v59;
        goto LABEL_7;
      }

      sub_372B0(&v67, &unk_127FB0, &qword_F2F40);
      v38 = sub_51FA8(&v70);
      if (v39)
      {
        v40 = v38;
        v41 = swift_isUniquelyReferenced_nonNull_native();
        v42 = *(v2 + 32);
        *(v2 + 32) = 0x8000000000000000;
        if (!v41)
        {
          sub_76F14();
        }

        sub_54F34(*(v42 + 48) + 40 * v40);
        sub_54F88((*(v42 + 56) + 32 * v40), v66);
        sub_7656C(v40, v42);
        sub_54F34(&v70);
        v43 = *(v2 + 32);
        *(v2 + 32) = v42;
        v43, v44, v45, v46, v47, v48, v49, v50;
      }

      else
      {
        sub_54F34(&v70);
        memset(v66, 0, sizeof(v66));
      }

      sub_372B0(v66, &unk_127FB0, &qword_F2F40);
    }

LABEL_7:
    swift_endAccess();
    sub_1EDC(v69);
    sub_54F34(&v73);
  }

  if (v8 <= v9 + 1)
  {
    v11 = v9 + 1;
  }

  else
  {
    v11 = v8;
  }

  v12 = v11 - 1;
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      v7 = 0;
      v77 = 0;
      v75 = 0u;
      v76 = 0u;
      v9 = v12;
      v73 = 0u;
      v74 = 0u;
      goto LABEL_19;
    }

    v7 = *&v4[8 * v10];
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  result = sub_F126C();
  __break(1u);
  return result;
}

uint64_t IMDChatRCSGroupSnapshot.deinit(uint64_t a1, const char *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;
  return v8;
}

uint64_t IMDChatRCSGroupSnapshot.__deallocating_deinit(uint64_t a1, const char *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocClassInstance();
}

uint64_t sub_EA4C4()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

void static IMDChatRCSGroupIdentity.encodeGroupID(_:)(uint64_t a1, RCSServiceSession *a2)
{

  v4 = sub_EA620(a1, a2);
  v6 = v5;
  v7 = sub_F024C();
  v8 = [v7 __imHexString];

  if (v8)
  {
    sub_F07EC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_EA620(uint64_t a1, RCSServiceSession *a2)
{
  v57[0] = a1;
  v57[1] = a2;
  *&v60 = a1;
  *(&v60 + 1) = a2;

  sub_388C8(&qword_12AE10, &qword_F7E08);
  if (swift_dynamicCast())
  {
    sub_3928(__src, &v61);
    sub_373E8(&v61, v62);
    sub_F013C();
    __src[0] = v60;
    sub_1EDC(&v61);
    goto LABEL_63;
  }

  v59 = 0;
  memset(__src, 0, sizeof(__src));
  sub_372B0(__src, qword_12AE18, &unk_F7E10);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = (a2 >> 56) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_F0FDC();
  }

  sub_EDA70(&v61, v4, v5);
  v6 = *(&v61 + 1);
  v7 = v61;
  if (*(&v61 + 1) >> 60 != 15)
  {
    __src[0] = v61;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = (a2 >> 56) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_EE2D8(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin(*&__src[0]);
  v52[2] = v57;
  sub_EDB38(sub_34398, v52);
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v21 == 2)
    {
      v23 = *(*&__src[0] + 16);
      v22 = *(*&__src[0] + 24);
      v24 = __OFSUB__(v22, v23);
      v25 = (v22 - v23);
      if (v24)
      {
        goto LABEL_70;
      }

      if (v13 != v25)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v26 = 0;
      goto LABEL_60;
    }
  }

  else if (v21)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != (DWORD1(__src[0]) - LODWORD(__src[0])))
    {
LABEL_23:
      if (v21 == 2)
      {
        v26 = *(*&__src[0] + 24);
      }

      else if (v21 == 1)
      {
        v26 = *&__src[0] >> 32;
      }

      else
      {
        v26 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v26 >= v13)
      {
        sub_F022C();
LABEL_62:
        v19, v36, v37, v38, v39, v40, v41, v42;
        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v54 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v27 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v27 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v60 + 7) = 0;
  *&v60 = 0;
  if (4 * v27 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v53 = v6;
  LOBYTE(v28) = 0;
  v29 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v29) = 1;
  }

  v30 = 4 << v29;
  v55 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v56 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v31 = v20 & 0xC;
    v32 = v20;
    if (v31 == v30)
    {
      v32 = sub_EE090(v20, v18, v19);
    }

    v33 = v32 >> 16;
    if (v32 >> 16 >= v27)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_F08DC();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v19 & 0x1000000000000000) != 0)
    {
      v35 = sub_F090C();
      if (v31 != v30)
      {
        goto LABEL_46;
      }
    }

    else if ((v19 & 0x2000000000000000) != 0)
    {
      *&v61 = v18;
      *(&v61 + 1) = v56;
      v35 = *(&v61 + v33);
      if (v31 != v30)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v34 = v55;
      if ((v18 & 0x1000000000000000) == 0)
      {
        v34 = sub_F0FDC();
      }

      v35 = *(v34 + v33);
      if (v31 != v30)
      {
LABEL_46:
        if ((v19 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v20 = sub_EE090(v20, v18, v19);
    if ((v19 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v20 = (v20 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v27 <= v20 >> 16)
    {
      goto LABEL_66;
    }

    v20 = sub_F08EC();
LABEL_52:
    *(&v60 + v28) = v35;
    v28 = v28 + 1;
    if ((v28 >> 8))
    {
      goto LABEL_65;
    }

    if (v28 == 14)
    {
      *&v61 = v60;
      *(&v61 + 6) = *(&v60 + 6);
      sub_F023C();
      LOBYTE(v28) = 0;
    }
  }

  while (4 * v27 != v20 >> 14);
  v6 = v53;
  if (v28)
  {
    *&v61 = v60;
    *(&v61 + 6) = *(&v60 + 6);
    sub_F023C();
    sub_66124(v54, v6);
    goto LABEL_62;
  }

LABEL_57:
  v19, v11, v12, v13, v14, v15, v16, v17;
  sub_66124(v54, v6);
LABEL_63:
  v43 = __src[0];
  sub_660D0(*&__src[0], *(&__src[0] + 1));
  a2, v44, v45, v46, v47, v48, v49, v50;
  sub_5F048(v43, *(&v43 + 1));
  return v43;
}

uint64_t sub_EAB88()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_373E8(v0, v1);
  v3 = (*(v2 + 24))(v1, v2);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  *&v22 = 0xD000000000000017;
  *(&v22 + 1) = 0x8000000000100EB0;
  sub_F0F3C();
  if (!*v4[1].IMDTelephonyServiceSession_opaque || (v12 = sub_51FA8(v21), (v5 & 1) == 0))
  {
    v4, v5, v6, v7, v8, v9, v10, v11;
    sub_54F34(v21);
LABEL_8:
    v22 = 0u;
    v23 = 0u;
    goto LABEL_9;
  }

  sub_3FE38(*v4[3].state + 32 * v12, &v22);
  sub_54F34(v21);
  v4, v13, v14, v15, v16, v17, v18, v19;
  if (!*(&v23 + 1))
  {
LABEL_9:
    sub_372B0(&v22, &unk_127FB0, &qword_F2F40);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v21[0];
  }

  return 0;
}

uint64_t sub_EACC4()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_373E8(v0, v1);
  v3 = (*(v2 + 24))(v1, v2);
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  *&v22 = 0x70756F7247534352;
  *(&v22 + 1) = 0xEB00000000495255;
  sub_F0F3C();
  if (!*v4[1].IMDTelephonyServiceSession_opaque || (v12 = sub_51FA8(&v21), (v5 & 1) == 0))
  {
    v4, v5, v6, v7, v8, v9, v10, v11;
    sub_54F34(&v21);
LABEL_10:
    v22 = 0u;
    v23 = 0u;
    goto LABEL_11;
  }

  sub_3FE38(*v4[3].state + 32 * v12, &v22);
  sub_54F34(&v21);
  v4, v13, v14, v15, v16, v17, v18, v19;
  if (!*(&v23 + 1))
  {
LABEL_11:
    sub_372B0(&v22, &unk_127FB0, &qword_F2F40);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v21;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_EAE10(uint64_t a1, uint64_t a2)
{
  sub_1F28(v2, v20);
  v5 = v21;
  v6 = v22;
  sub_373E8(v20, v21);
  sub_388C8(&qword_128508, "ȷ");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_F2C60;
  *&v18 = 0x70756F7247534352;
  *(&v18 + 1) = 0xEB00000000495255;
  sub_F0F3C();
  if (a2)
  {
    *(&v19 + 1) = &type metadata for String;
    *&v18 = a1;
    *(&v18 + 1) = a2;
    sub_54F88(&v18, (inited + 72));
  }

  else
  {
    v19 = 0u;
    v8 = [objc_allocWithZone(NSNull) init];
    *(inited + 96) = sub_37310(0, &qword_12AD08, NSNull_ptr);
    *(inited + 72) = v8;
    if (*(&v19 + 1))
    {
      sub_372B0(&v18, &unk_127FB0, &qword_F2F40);
    }
  }

  v9 = sub_80F34(inited);
  swift_setDeallocating();
  sub_372B0(inited + 32, &qword_128510, &unk_F36A0);
  (*(v6 + 32))(v9, v5, v6);
  v9, v10, v11, v12, v13, v14, v15, v16;
  return sub_1EDC(v20);
}

void sub_EAFBC(uint64_t a1, RCSServiceSession *a2)
{
  sub_1F28(v2, v27);
  v5 = v28;
  v6 = v29;
  sub_373E8(v27, v28);
  if (!a2)
  {
    v13 = 0;
    goto LABEL_5;
  }

  v7 = sub_EA620(a1, a2);
  v9 = v8;
  v10 = sub_F024C();
  v11 = [v10 __imHexString];

  if (v11)
  {
    a1 = sub_F07EC();
    v13 = v12;
    a2, v12, v14, v15, v16, v17, v18, v19;

LABEL_5:
    (*(v6 + 16))(a1, v13, v5, v6);
    v13, v20, v21, v22, v23, v24, v25, v26;
    sub_1EDC(v27);
    return;
  }

  __break(1u);
}

uint64_t IMDChatRCSGroupIdentity.uri.getter()
{
  v1 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v42[-v3 - 8];
  v5 = sub_EAB88();
  if (v5 == 1)
  {
    return sub_EACC4();
  }

  if (v5)
  {
    if (qword_128F50 != -1)
    {
      swift_once();
    }

    v36 = sub_F06CC();
    sub_3C96C(v36, static Logger.groups);
    sub_85608(v0, v42);
    v37 = sub_F06AC();
    v38 = sub_F0CEC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134217984;
      v40 = sub_EAB88();
      sub_39BC4(v42);
      *(v39 + 4) = v40;
      _os_log_impl(&dword_0, v37, v38, "Unknown identity version %ld, unable to generate raw group focus URI.", v39, 0xCu);
    }

    else
    {
      sub_39BC4(v42);
    }

    return 0;
  }

  if (qword_128FA8 != -1)
  {
    swift_once();
  }

  v6 = sub_3C96C(v1, qword_12A2B8);
  (*(v2 + 16))(v4, v6, v1);
  sub_F044C();
  (*(v2 + 8))(v4, v1);
  if (v42[0] != 1)
  {
    return 0;
  }

  v7 = v0[3];
  v8 = v0[4];
  sub_373E8(v0, v7);
  result = (*(v8 + 8))(v7, v8);
  if (!v10)
  {
    return result;
  }

  v11 = v10;
  v12 = objc_opt_self();
  v13 = sub_F07BC();
  v14 = [v12 __imDataWithHexString:v13];

  if (!v14)
  {
    v11, v15, v16, v17, v18, v19, v20, v21;
    return 0;
  }

  v22 = sub_F025C();
  v24 = v23;

  v25 = sub_F081C();
  __chkstk_darwin(v25 - 8);
  sub_F080C();
  v26 = sub_F07FC();
  v28 = v27;
  sub_5F048(v22, v24);
  v11, v29, v30, v31, v32, v33, v34, v35;
  if (v28)
  {
    return v26;
  }

  else
  {
    return 0;
  }
}

void IMDChatRCSGroupIdentity.uri.setter(uint64_t a1, RCSServiceSession *a2)
{
  v5 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v41[-v7 - 8];
  v9 = sub_EAB88();
  if (v9 == 1)
  {

    sub_EAE10(a1, a2);
  }

  else
  {
    if (!v9)
    {
      if (qword_128FA8 != -1)
      {
        swift_once();
      }

      v10 = sub_3C96C(v5, qword_12A2B8);
      (*(v6 + 16))(v8, v10, v5);
      sub_F044C();
      (*(v6 + 8))(v8, v5);
      if (v41[0] == 1)
      {
        sub_EAFBC(a1, a2);
        return;
      }

      goto LABEL_20;
    }

    if (qword_128F50 != -1)
    {
      swift_once();
    }

    v18 = sub_F06CC();
    sub_3C96C(v18, static Logger.groups);
    sub_85608(v2, v41);

    v19 = sub_F06AC();
    v20 = sub_F0CEC();
    a2, v21, v22, v23, v24, v25, v26, v27;
    if (!os_log_type_enabled(v19, v20))
    {
      sub_39BC4(v41);

LABEL_20:
      a2, v11, v12, v13, v14, v15, v16, v17;
      return;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v40 = v29;
    *v28 = 136315394;
    if (a2)
    {
      v30 = a1;
    }

    else
    {
      v30 = 0x3E6C696E3CLL;
    }

    if (!a2)
    {
      a2 = 0xE500000000000000;
    }

    v31 = sub_3E850(v30, a2, &v40);
    a2, v32, v33, v34, v35, v36, v37, v38;
    *(v28 + 4) = v31;
    *(v28 + 12) = 2048;
    v39 = sub_EAB88();
    sub_39BC4(v41);
    *(v28 + 14) = v39;
    _os_log_impl(&dword_0, v19, v20, "Discarding newValue %s for rawURI, invalid version %ld", v28, 0x16u);
    sub_1EDC(v29);
  }
}

void (*IMDChatRCSGroupIdentity.uri.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = IMDChatRCSGroupIdentity.uri.getter();
  a1[1] = v3;
  return sub_342E4;
}

uint64_t IMDChatRCSGroupIdentity.isValid.getter()
{
  v1 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v72 - v3;
  v5 = sub_EAB88();
  if (v5 == 1)
  {
    IMDChatRCSGroupIdentity.uri.getter();
    if (v14)
    {
      v14, v14, v15, v16, v17, v18, v19, v20;
      IMDChatRCSGroupIdentity.conversationID.getter();
      if (v7)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    if (!v5)
    {
      if (qword_128FA8 != -1)
      {
        swift_once();
      }

      v6 = sub_3C96C(v1, qword_12A2B8);
      (*(v2 + 16))(v4, v6, v1);
      sub_F044C();
      (*(v2 + 8))(v4, v1);
      if (v77[0] != 1)
      {
        return 0;
      }

      IMDChatRCSGroupIdentity.uri.getter();
      if (!v7)
      {
        return 0;
      }

LABEL_10:
      v7, v7, v8, v9, v10, v11, v12, v13;
      return 1;
    }

    if (qword_128F50 != -1)
    {
      swift_once();
    }

    v22 = sub_F06CC();
    sub_3C96C(v22, static Logger.groups);
    sub_85608(v0, v77);
    sub_85608(v0, v74);
    v23 = sub_F06AC();
    v24 = sub_F0CEC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v73 = v26;
      *v25 = 134218242;
      v27 = sub_EAB88();
      sub_39BC4(v77);
      *(v25 + 4) = v27;
      *(v25 + 12) = 2080;
      v28 = v75;
      v29 = v76;
      sub_373E8(v74, v75);
      (*(v29 + 8))(v28, v29);
      if (v30)
      {
        v31 = v30;
        v32 = objc_opt_self();
        v33 = sub_F07BC();
        v34 = [v32 __imDataWithHexString:v33];

        if (v34)
        {
          v42 = sub_F025C();
          v44 = v43;

          v45 = sub_F081C();
          __chkstk_darwin(v45 - 8);
          sub_F080C();
          v46 = sub_F07FC();
          v48 = v47;
          sub_5F048(v42, v44);
          v31, v49, v50, v51, v52, v53, v54, v55;
          if (v48)
          {
            sub_39BC4(v74);
            v56 = v46;
LABEL_21:
            v64 = sub_3E850(v56, v48, &v73);
            v48, v65, v66, v67, v68, v69, v70, v71;
            *(v25 + 14) = v64;
            _os_log_impl(&dword_0, v23, v24, "Invalid version %ld, groupID %s is not valid", v25, 0x16u);
            sub_1EDC(v26);

            return 0;
          }
        }

        else
        {
          v31, v35, v36, v37, v38, v39, v40, v41;
        }
      }

      sub_39BC4(v74);
      0, v57, v58, v59, v60, v61, v62, v63;
      v48 = 0xE500000000000000;
      v56 = 0x3E6C696E3CLL;
      goto LABEL_21;
    }

    sub_39BC4(v77);

    sub_39BC4(v74);
  }

  return 0;
}

uint64_t IMDChatRCSGroupIdentity.conversationID.getter()
{
  v1 = v0;
  if (sub_EAB88() != 1)
  {
    return 0;
  }

  v2 = [objc_opt_self() sharedFeatureFlags];
  v3 = [v2 isMissingMessagesEnabled];

  v4 = v1[3];
  v5 = v1[4];
  sub_373E8(v1, v4);
  if (!v3)
  {
    result = (*(v5 + 8))(v4, v5);
    if (!v28)
    {
      return result;
    }

    v29 = v28;
    v30 = objc_opt_self();
    v31 = sub_F07BC();
    v32 = [v30 __imDataWithHexString:v31];

    if (v32)
    {
      v40 = sub_F025C();
      v42 = v41;

      v43 = sub_F081C();
      __chkstk_darwin(v43 - 8);
      sub_F080C();
      v44 = sub_F07FC();
      v46 = v45;
      sub_5F048(v40, v42);
      goto LABEL_25;
    }

    goto LABEL_30;
  }

  v6 = sub_F07EC();
  v8 = v7;
  (*(v5 + 40))(v6);
  v10 = v9;
  v8, v9, v11, v12, v13, v14, v15, v16;
  if (v10)
  {
    v17 = objc_opt_self();

    v18 = sub_F07BC();
    v19 = [v17 __imDataWithHexString:v18];

    if (v19)
    {
      v20 = sub_F025C();
      v22 = v21;

      v23 = sub_F081C();
      __chkstk_darwin(v23 - 8);
      sub_F080C();
      v24 = sub_F07FC();
      v26 = v25;
      sub_5F048(v20, v22);
      swift_bridgeObjectRelease_n();
      if (v26)
      {
        return v24;
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }
  }

  if (qword_128F50 != -1)
  {
    swift_once();
  }

  v54 = sub_F06CC();
  sub_3C96C(v54, static Logger.groups);
  sub_85608(v1, v136);
  v55 = sub_F06AC();
  v56 = sub_F0CEC();
  if (!os_log_type_enabled(v55, v56))
  {

    sub_39BC4(v136);
    goto LABEL_22;
  }

  v57 = swift_slowAlloc();
  v58 = swift_slowAlloc();
  v135 = v58;
  *v57 = 136315138;
  v59 = v137;
  v60 = v138;
  sub_373E8(v136, v137);
  (*(v60 + 8))(v59, v60);
  if (!v61)
  {
    goto LABEL_20;
  }

  v62 = v61;
  v63 = objc_opt_self();
  v64 = sub_F07BC();
  v65 = [v63 __imDataWithHexString:v64];

  if (!v65)
  {
    v62, v66, v67, v68, v69, v70, v71, v72;
    goto LABEL_20;
  }

  v73 = sub_F025C();
  v75 = v74;

  v76 = sub_F081C();
  __chkstk_darwin(v76 - 8);
  sub_F080C();
  v134 = sub_F07FC();
  v78 = v77;
  sub_5F048(v73, v75);
  v62, v79, v80, v81, v82, v83, v84, v85;
  if (!v78)
  {
LABEL_20:
    sub_39BC4(v136);
    0, v87, v88, v89, v90, v91, v92, v93;
    v78 = 0xE500000000000000;
    v86 = 0x3E6C696E3CLL;
    goto LABEL_21;
  }

  sub_39BC4(v136);
  v86 = v134;
LABEL_21:
  v94 = sub_3E850(v86, v78, &v135);
  v78, v95, v96, v97, v98, v99, v100, v101;
  *(v57 + 4) = v94;
  _os_log_impl(&dword_0, v55, v56, "Could not find latest RCS conversation ID for groupID %s", v57, 0xCu);
  sub_1EDC(v58);

LABEL_22:
  v102 = v1[3];
  v103 = v1[4];
  sub_373E8(v1, v102);
  v111 = (*(v103 + 8))(v102, v103);
  if (!v104)
  {
    0, 0, v105, v106, v107, v108, v109, v110;
    return v111;
  }

  v29 = v104;
  v112 = objc_opt_self();
  v113 = sub_F07BC();
  v114 = [v112 __imDataWithHexString:v113];

  if (!v114)
  {
    0, v115, v116, v117, v118, v119, v120, v121;
LABEL_30:
    v29, v33, v34, v35, v36, v37, v38, v39;
    return 0;
  }

  v122 = sub_F025C();
  v124 = v123;

  v125 = sub_F081C();
  __chkstk_darwin(v125 - 8);
  sub_F080C();
  v44 = sub_F07FC();
  v46 = v126;
  sub_5F048(v122, v124);
  0, v127, v128, v129, v130, v131, v132, v133;
LABEL_25:
  v29, v47, v48, v49, v50, v51, v52, v53;
  if (v46)
  {
    return v44;
  }

  else
  {
    return 0;
  }
}

void IMDChatRCSGroupIdentity.conversationID.setter(uint64_t a1, RCSServiceSession *a2)
{
  if (sub_EAB88() == 1)
  {
    v12 = [objc_opt_self() sharedFeatureFlags];
    v13 = [v12 isMissingMessagesEnabled];

    if (v13)
    {
      sub_1F28(v2, v40);
      v14 = v41;
      v15 = v42;
      sub_373E8(v40, v41);
      if (a2)
      {
        swift_bridgeObjectRetain_n();
        v16 = sub_EA620(a1, a2);
        v18 = v17;
        v19 = sub_F024C();
        v20 = [v19 __imHexString];

        if (!v20)
        {
          __break(1u);
          return;
        }

        a1 = sub_F07EC();
        v22 = v21;
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v22 = 0;
      }

      v23 = sub_F07EC();
      v25 = v24;
      (*(v15 + 48))(a1, v22, v23, v24, 0, v14, v15);
      v25, v26, v27, v28, v29, v30, v31, v32;
      v22, v33, v34, v35, v36, v37, v38, v39;
      sub_1EDC(v40);
      return;
    }

    sub_EAFBC(a1, a2);
  }

  else
  {

    a2, v5, v6, v7, v8, v9, v10, v11;
  }
}

void (*IMDChatRCSGroupIdentity.conversationID.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = IMDChatRCSGroupIdentity.conversationID.getter();
  a1[1] = v3;
  return sub_342FC;
}

id IMDChatRCSGroupIdentity.encrypted.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_373E8(v0, v1);
  v3 = (*(v2 + 24))(v1, v2);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  sub_F07EC();
  sub_F0F3C();
  if (!*v4[1].IMDTelephonyServiceSession_opaque || (v12 = sub_51FA8(v23), (v5 & 1) == 0))
  {
    v4, v5, v6, v7, v8, v9, v10, v11;
    sub_54F34(v23);
LABEL_8:
    v24 = 0u;
    v25 = 0u;
    goto LABEL_9;
  }

  sub_3FE38(*v4[3].state + 32 * v12, &v24);
  sub_54F34(v23);
  v4, v13, v14, v15, v16, v17, v18, v19;
  if (!*(&v25 + 1))
  {
LABEL_9:
    sub_372B0(&v24, &unk_127FB0, &qword_F2F40);
    return 0;
  }

  sub_37310(0, &qword_128050, NSNumber_ptr);
  if (swift_dynamicCast())
  {
    v20 = v23[0];
    v21 = [v23[0] BOOLValue];

    return v21;
  }

  return 0;
}

uint64_t IMDChatRCSGroupIdentity.init(chat:conversationID:groupURI:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, RCSServiceSession *a3@<X2>, uint64_t a4@<X3>, RCSServiceSession *a5@<X4>, uint64_t a6@<X8>)
{
  sub_1F28(a1, a6);
  if (a3)
  {
    v11._countAndFlagsBits = a2;
    v11._object = a3;
    v12._countAndFlagsBits = a4;
    v12._object = a5;
    IMDChatRCSGroupIdentity.migrateToLatest(conversationID:groupURI:)(v11, v12);
    a5, v13, v14, v15, v16, v17, v18, v19;
    v27 = a3;
  }

  else
  {
    v28._countAndFlagsBits = a4;
    v28._object = a5;
    IMDChatRCSGroupIdentity.migrateToLegacy(groupURI:)(v28);
    v27 = a5;
  }

  v27, v20, v21, v22, v23, v24, v25, v26;
  return sub_1EDC(a1);
}

Swift::Void __swiftcall IMDChatRCSGroupIdentity.migrateToLatest(conversationID:groupURI:)(Swift::String conversationID, Swift::String groupURI)
{
  v3 = v2;
  object = groupURI._object;
  countAndFlagsBits = groupURI._countAndFlagsBits;
  v6 = conversationID._object;
  v7 = conversationID._countAndFlagsBits;
  if (sub_EAB88() != 1)
  {
    goto LABEL_14;
  }

  v8 = IMDChatRCSGroupIdentity.conversationID.getter();
  if (!v9)
  {
    goto LABEL_14;
  }

  if (v8 == v7 && v9 == v6)
  {
    v9, v9, v10, v11, v12, v13, v14, v15;
  }

  else
  {
    v16 = v9;
    v17 = sub_F122C();
    v16, v18, v19, v20, v21, v22, v23, v24;
    if ((v17 & 1) == 0)
    {
LABEL_14:
      v42 = v3[3];
      v43 = v3[4];
      sub_373E8(v3, v42);
      sub_388C8(&qword_128508, "ȷ");
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_F2C60;
      sub_F0F3C();
      *(inited + 96) = &type metadata for Int;
      *(inited + 72) = 1;
      v45 = sub_80F34(inited);
      swift_setDeallocating();
      sub_372B0(inited + 32, &qword_128510, &unk_F36A0);
      (*(v43 + 32))(v45, v42, v43);
      v45, v46, v47, v48, v49, v50, v51, v52;

      IMDChatRCSGroupIdentity.conversationID.setter(v7, v6);

      IMDChatRCSGroupIdentity.uri.setter(countAndFlagsBits, object);
      v53 = v3[3];
      v54 = v3[4];
      sub_373E8(v3, v53);
      (*(v54 + 56))(v53, v54);
      return;
    }
  }

  v25 = IMDChatRCSGroupIdentity.uri.getter();
  if (!v26)
  {
    goto LABEL_14;
  }

  if (v25 != countAndFlagsBits || v26 != object)
  {
    v33 = v26;
    v34 = sub_F122C();
    v33, v35, v36, v37, v38, v39, v40, v41;
    if (v34)
    {
      return;
    }

    goto LABEL_14;
  }

  v26, v26, v27, v28, v29, v30, v31, v32;
}

Swift::Void __swiftcall IMDChatRCSGroupIdentity.migrateToLegacy(groupURI:)(Swift::String groupURI)
{
  v2 = v1;
  object = groupURI._object;
  countAndFlagsBits = groupURI._countAndFlagsBits;
  if (sub_EAB88())
  {
    goto LABEL_4;
  }

  IMDChatRCSGroupIdentity.conversationID.getter();
  if (v5)
  {
    v5, v5, v6, v7, v8, v9, v10, v11;
LABEL_4:
    v12 = v2[3];
    v13 = v2[4];
    sub_373E8(v2, v12);
    sub_388C8(&qword_128508, "ȷ");
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_F2C60;
    sub_F0F3C();
    *(inited + 96) = &type metadata for Int;
    *(inited + 72) = 0;
    v15 = sub_80F34(inited);
    swift_setDeallocating();
    sub_372B0(inited + 32, &qword_128510, &unk_F36A0);
    (*(v13 + 32))(v15, v12, v13);
    v15, v16, v17, v18, v19, v20, v21, v22;

    IMDChatRCSGroupIdentity.uri.setter(countAndFlagsBits, object);
    v23 = v2[3];
    v24 = v2[4];
    sub_373E8(v2, v23);
    (*(v24 + 56))(v23, v24);
    return;
  }

  v25 = IMDChatRCSGroupIdentity.uri.getter();
  if (!v26)
  {
    goto LABEL_4;
  }

  if (v25 == countAndFlagsBits && v26 == object)
  {

    v26, v26, v27, v28, v29, v30, v31, v32;
  }

  else
  {
    v33 = v26;
    v34 = sub_F122C();
    v33, v35, v36, v37, v38, v39, v40, v41;
    if ((v34 & 1) == 0)
    {
      goto LABEL_4;
    }
  }
}

void IMDChatRCSGroupIdentity.converge(identity:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  sub_373E8(a1, v2);
  v4 = (*(v3 + 16))(v2, v3);
  if (v5)
  {
    v6 = v5;
    v7 = v4;
    v8 = a1[3];
    v9 = a1[4];
    sub_373E8(a1, v8);
    v10 = (*(v9 + 8))(v8, v9);
    if (v11)
    {
      v18._countAndFlagsBits = v10;
      v19 = v11;
      v20._countAndFlagsBits = v7;
      v20._object = v6;
      v18._object = v19;
      IMDChatRCSGroupIdentity.migrateToLatest(conversationID:groupURI:)(v20, v18);
      v6, v21, v22, v23, v24, v25, v26, v27;
      goto LABEL_7;
    }

    v6, 0, v12, v13, v14, v15, v16, v17;
  }

  v35 = a1[3];
  v36 = a1[4];
  sub_373E8(a1, v35);
  v37 = (*(v36 + 8))(v35, v36);
  if (!v38)
  {
    return;
  }

  v19 = v38;
  IMDChatRCSGroupIdentity.migrateToLegacy(groupURI:)(*&v37);
LABEL_7:

  v19, v28, v29, v30, v31, v32, v33, v34;
}

Swift::Void __swiftcall IMDChatRCSGroupIdentity.reset()()
{
  IMDChatRCSGroupIdentity.conversationID.setter(0, 0);
  IMDChatRCSGroupIdentity.uri.setter(0, 0);
  v1 = v0[3];
  v2 = v0[4];
  sub_373E8(v0, v1);
  sub_388C8(&qword_128508, "ȷ");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_F2C60;
  sub_F0F3C();
  v4 = [objc_allocWithZone(NSNull) init];
  *(inited + 96) = sub_37310(0, &qword_12AD08, NSNull_ptr);
  *(inited + 72) = v4;
  v5 = sub_80F34(inited);
  swift_setDeallocating();
  sub_372B0(inited + 32, &qword_128510, &unk_F36A0);
  (*(v2 + 32))(v5, v1, v2);
  v5, v6, v7, v8, v9, v10, v11, v12;
  v13 = v0[3];
  v14 = v0[4];
  sub_373E8(v0, v13);
  (*(v14 + 56))(v13, v14);
}

void sub_ECE64(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_F0EAC() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_F12FC();

      sub_F089C();
      v10 = sub_F132C();
      v9, v11, v12, v13, v14, v15, v16, v17;
      v18 = v10 & v7;
      if (v3 >= v8)
      {
        if (v18 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v18 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v18)
      {
LABEL_10:
        v19 = *(a2 + 48);
        v20 = (v19 + 16 * v3);
        v21 = (v19 + 16 * v6);
        if (v3 != v6 || v20 >= v21 + 1)
        {
          *v20 = *v21;
        }

        v22 = *(a2 + 56);
        v23 = (v22 + 16 * v3);
        v24 = (v22 + 16 * v6);
        if (v3 != v6 || v23 >= v24 + 1)
        {
          *v23 = *v24;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

unint64_t sub_ED014(unint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = a2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = (result + 1) & ~v4;
  if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
    goto LABEL_43;
  }

  v6 = ~v4;
  v63 = result;
  v59 = v3;
  v57 = (sub_F0EAC() + 1) & ~v4;
  v58 = v6;
  v60 = v2;
  while (2)
  {
    v61 = v5 << 6;
    v62 = v5;
    v7 = (*(v2 + 48) + (v5 << 6));
    v9 = v7[1];
    v8 = v7[2];
    v10 = *v7;
    *&v72[9] = *(v7 + 41);
    v71[1] = v9;
    *v72 = v8;
    v71[0] = v10;
    sub_F12FC();
    sub_38910(v71, v64);
    sub_F089C();
    sub_F089C();
    v11 = *v72;
    v12 = *v72 + 64;
    v13 = 1 << *(*v72 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(*v72 + 64);
    v16 = (v13 + 63) >> 6;

    v17 = 0;
    v18 = 0;
    while (v15)
    {
LABEL_14:
      v20 = __clz(__rbit64(v15)) | (v18 << 6);
      v21 = *(*(v11 + 48) + v20);
      v22 = *(*(v11 + 56) + 16 * v20 + 8);
      v15 &= v15 - 1;
      v64[2] = v68;
      v64[3] = v69;
      v65 = v70;
      v64[0] = v66;
      v64[1] = v67;
      v23 = 0xE200000000000000;
      if (v21 != 3)
      {
        v23 = 0xE900000000000074;
      }

      if (v21 == 2)
      {
        v23 = 0xEA00000000006563;
      }

      v24 = 0xED0000747865746ELL;
      if (v21)
      {
        v24 = 0xE400000000000000;
      }

      if (v21 <= 1)
      {
        v25 = v24;
      }

      else
      {
        v25 = v23;
      }

      sub_F089C();
      v25, v26, v27, v28, v29, v30, v31, v32;
      if (v22)
      {
        sub_F131C(1u);
        sub_F089C();
        v22, v33, v34, v35, v36, v37, v38, v39;
      }

      else
      {
        sub_F131C(0);
      }

      result = sub_F132C();
      v17 ^= result;
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v19 >= v16)
      {
        break;
      }

      v15 = *(v12 + 8 * v19);
      ++v18;
      if (v15)
      {
        v18 = v19;
        goto LABEL_14;
      }
    }

    sub_F130C(v17);
    if (*&v72[16])
    {
      sub_F131C(1u);
      sub_F089C();
    }

    else
    {
      sub_F131C(0);
    }

    sub_F130C(v72[24]);
    v40 = sub_F132C();
    result = sub_3CAB8(v71);
    v41 = v40 & v58;
    v42 = v63;
    if (v63 >= v57)
    {
      v43 = v59;
      v2 = v60;
      v44 = v62;
      if (v41 < v57)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v43 = v59;
      v2 = v60;
      v44 = v62;
      if (v41 >= v57)
      {
LABEL_33:
        v45 = *(v2 + 48);
        v46 = (v45 + (v63 << 6));
        v47 = (v45 + v61);
        if (v63 << 6 != v61 || v46 >= v47 + 4)
        {
          v48 = *v47;
          v49 = v47[1];
          v50 = v47[3];
          v46[2] = v47[2];
          v46[3] = v50;
          *v46 = v48;
          v46[1] = v49;
        }

        v51 = *(v2 + 56);
        v52 = (v51 + 16 * v63);
        v53 = (v51 + 16 * v44);
        if (v63 != v44 || v52 >= v53 + 1)
        {
          *v52 = *v53;
          v42 = v44;
        }

        goto LABEL_39;
      }
    }

    if (v63 >= v41)
    {
      goto LABEL_33;
    }

LABEL_39:
    v5 = (v44 + 1) & v58;
    if ((*(v43 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
    {
      v63 = v42;
      continue;
    }

    break;
  }

  *(v43 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v42) - 1;
LABEL_43:
  v54 = *(v2 + 16);
  v55 = __OFSUB__(v54, 1);
  v56 = v54 - 1;
  if (v55)
  {
LABEL_46:
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v56;
    ++*(v2 + 36);
  }

  return result;
}

void sub_ED448(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_F0EAC() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_F12FC();

      sub_F089C();
      v11 = sub_F132C();
      v10, v12, v13, v14, v15, v16, v17, v18;
      v19 = v11 & v7;
      if (v3 >= v8)
      {
        if (v19 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v19 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v19)
      {
LABEL_10:
        v20 = *(a2 + 48);
        v21 = (v20 + 16 * v3);
        v22 = (v20 + 16 * v6);
        if (v3 != v6 || v21 >= v22 + 1)
        {
          *v21 = *v22;
        }

        v23 = *(a2 + 56);
        v24 = (v23 + 32 * v3);
        v25 = (v23 + 32 * v6);
        if (v3 != v6 || v24 >= v25 + 2)
        {
          v9 = v25[1];
          *v24 = *v25;
          v24[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }
}

unint64_t sub_ED5F8(unint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = a2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = (result + 1) & ~v4;
  if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
    goto LABEL_49;
  }

  v6 = ~v4;
  v63 = result;
  v60 = v3;
  v58 = (sub_F0EAC() + 1) & ~v4;
  v59 = v6;
  v61 = v2;
  while (2)
  {
    v64 = v5;
    v62 = v5 << 6;
    v7 = (*(v2 + 48) + (v5 << 6));
    v9 = v7[1];
    v8 = v7[2];
    v10 = *v7;
    *&v73[9] = *(v7 + 41);
    v72[1] = v9;
    *v73 = v8;
    v72[0] = v10;
    sub_F12FC();
    sub_38910(v72, v65);
    sub_F089C();
    sub_F089C();
    v11 = *v73;
    v12 = *v73 + 64;
    v13 = 1 << *(*v73 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(*v73 + 64);
    v16 = (v13 + 63) >> 6;

    v17 = 0;
    v18 = 0;
    while (v15)
    {
LABEL_14:
      v20 = __clz(__rbit64(v15)) | (v18 << 6);
      v21 = *(*(v11 + 48) + v20);
      v22 = *(*(v11 + 56) + 16 * v20 + 8);
      v15 &= v15 - 1;
      v65[2] = v69;
      v65[3] = v70;
      v66 = v71;
      v65[0] = v67;
      v65[1] = v68;
      v23 = 0xE200000000000000;
      if (v21 != 3)
      {
        v23 = 0xE900000000000074;
      }

      if (v21 == 2)
      {
        v23 = 0xEA00000000006563;
      }

      v24 = 0xED0000747865746ELL;
      if (v21)
      {
        v24 = 0xE400000000000000;
      }

      if (v21 <= 1)
      {
        v25 = v24;
      }

      else
      {
        v25 = v23;
      }

      sub_F089C();
      v25, v26, v27, v28, v29, v30, v31, v32;
      if (v22)
      {
        sub_F131C(1u);
        sub_F089C();
        v22, v33, v34, v35, v36, v37, v38, v39;
      }

      else
      {
        sub_F131C(0);
      }

      result = sub_F132C();
      v17 ^= result;
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_52;
      }

      if (v19 >= v16)
      {
        break;
      }

      v15 = *(v12 + 8 * v19);
      ++v18;
      if (v15)
      {
        v18 = v19;
        goto LABEL_14;
      }
    }

    sub_F130C(v17);
    if (*&v73[16])
    {
      sub_F131C(1u);
      sub_F089C();
    }

    else
    {
      sub_F131C(0);
    }

    sub_F130C(v73[24]);
    v40 = sub_F132C();
    result = sub_3CAB8(v72);
    v41 = v40 & v59;
    v42 = v63;
    if (v63 >= v58)
    {
      v2 = v61;
      if (v41 < v58)
      {
        goto LABEL_45;
      }

      goto LABEL_32;
    }

    v2 = v61;
    if (v41 < v58)
    {
LABEL_32:
      if (v63 < v41)
      {
        goto LABEL_45;
      }
    }

    v43 = *(v2 + 48);
    v44 = (v43 + (v63 << 6));
    v45 = (v43 + v62);
    if (v63 << 6 != v62 || v44 >= v45 + 4)
    {
      v46 = *v45;
      v47 = v45[1];
      v48 = v45[3];
      v44[2] = v45[2];
      v44[3] = v48;
      *v44 = v46;
      v44[1] = v47;
    }

    v49 = *(v2 + 56);
    v50 = *(*(type metadata accessor for TypingIndicator(0) - 8) + 72);
    v51 = v50 * v63;
    result = v49 + v50 * v63;
    v52 = v50 * v64;
    v53 = v49 + v50 * v64 + v50;
    if (v51 < v52 || result >= v53)
    {
      result = swift_arrayInitWithTakeFrontToBack();
LABEL_44:
      v42 = v64;
      goto LABEL_45;
    }

    v42 = v64;
    if (v51 != v52)
    {
      result = swift_arrayInitWithTakeBackToFront();
      goto LABEL_44;
    }

LABEL_45:
    v5 = (v64 + 1) & v59;
    if ((*(v60 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
    {
      v63 = v42;
      continue;
    }

    break;
  }

  *(v60 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v42) - 1;
LABEL_49:
  v55 = *(v2 + 16);
  v56 = __OFSUB__(v55, 1);
  v57 = v55 - 1;
  if (v56)
  {
LABEL_52:
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v57;
    ++*(v2 + 36);
  }

  return result;
}

uint64_t *sub_EDA70@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_EE220(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_F00EC();
      swift_allocObject();
      v8 = sub_F009C();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_F021C();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

void sub_EDB38(void (*a1)(uint64_t *__return_ptr, void *, char *, double), uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 != 2)
    {
      memset(v18, 0, 15);
      (a1)(&v16, v18, v18);
      return;
    }

    sub_5F048(v7, v6);
    v16 = v7;
    v17 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_F2990;
    sub_5F048(0, 0xC000000000000000);
    sub_F01FC();
    sub_EDFDC(*(v16 + 16), *(v16 + 24), a1);
    v11 = v17 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v16;
      v4[1] = v11;
      return;
    }

    *v4 = v16;
    goto LABEL_18;
  }

  if (!v8)
  {
    v9 = sub_5F048(v7, v6);
    v18[0] = v7;
    LOWORD(v18[1]) = v6;
    BYTE2(v18[1]) = BYTE2(v6);
    BYTE3(v18[1]) = BYTE3(v6);
    BYTE4(v18[1]) = BYTE4(v6);
    BYTE5(v18[1]) = BYTE5(v6);
    BYTE6(v18[1]) = BYTE6(v6);
    a1(&v16, v18, v18 + BYTE6(v6), v9);
    v10 = LODWORD(v18[1]) | ((WORD2(v18[1]) | (BYTE6(v18[1]) << 16)) << 32);
    *v4 = v18[0];
    v4[1] = v10;
    return;
  }

  v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

  sub_5F048(v7, v6);
  *v4 = xmmword_F2990;
  sub_5F048(0, 0xC000000000000000);
  v13 = v7 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v13 < v7)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (sub_F00AC() && __OFSUB__(v7, sub_F00DC()))
    {
LABEL_22:
      __break(1u);
    }

    sub_F00EC();
    swift_allocObject();
    v14 = sub_F008C();

    v12 = v14;
  }

  if (v13 < v7)
  {
    __break(1u);
    goto LABEL_21;
  }

  sub_EDFDC(v7, v7 >> 32, a1);

  v11 = v12 | 0x4000000000000000;
  if (v3)
  {
    *v4 = v7;
LABEL_18:
    v4[1] = v11;
    return;
  }

  *v4 = v7;
  v4[1] = v11;
}

_BYTE *sub_EDEDC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_EE220(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_EE378(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_EE3F4(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_EDF70(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_EDFDC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_F00AC();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_F00DC();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_F00CC();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

unint64_t sub_EE090(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_F091C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_F08FC();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_EE10C@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_F0FAC();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_EE180(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_EE1C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_EE220(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_EE2D8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_F00EC();
      swift_allocObject();
      sub_F00BC();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_F021C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_EE378(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_F00EC();
  swift_allocObject();
  result = sub_F009C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_F021C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_EE3F4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_F00EC();
  swift_allocObject();
  result = sub_F009C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t RCSCompatibleMessageTransformer.init(delegate:)()
{
  swift_unknownObjectUnownedInit();

  return swift_unknownObjectRelease();
}

uint64_t RCSCompatibleMessageTransformer.transform(rcsMessage:message:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  sub_388C8(&qword_128F00, &unk_F43F0);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  sub_388C8(&unk_127FA0, &qword_F34C0);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v5 = type metadata accessor for RCSMessage(0);
  v4[25] = v5;
  v4[26] = *(v5 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();

  return _swift_task_switch(sub_34424, 0, 0);
}

void sub_EE67C(unint64_t a1, id a2, uint64_t a3)
{
  v6 = [a2 replicatedFallbackGUIDs];
  v7 = &selRef__setLocalPath_;
  v58 = a1;
  if (v6)
  {
  }

  else
  {
    v8 = sub_F09EC();
    [a2 setReplicatedFallbackGUIDs:v8];

    swift_beginAccess();
    *(a3 + 16) = 1;
  }

  swift_beginAccess();
  v9 = [a2 replicatedFallbackGUIDs];
  if (!v9)
  {
    goto LABEL_25;
  }

  v10 = v9;
  v59 = v58 + 1;
  v11 = __OFADD__(v58, 1);
  v60 = v11;
  while (1)
  {
    v12 = sub_F09FC();

    v13 = *v12[1].IMDTelephonyServiceSession_opaque;
    v12, v14, v15, v16, v17, v18, v19, v20;
    if (v60)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (v13 >= v59)
    {
      break;
    }

    v21 = v7;
    v22 = sub_F035C();
    v23 = *(v22 - 8);
    __chkstk_darwin(v22);
    v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_F034C();
    v26 = sub_F032C();
    v28 = v27;
    (*(v23 + 8))(v25, v22);
    v29 = [a2 replicatedFallbackGUIDs];
    if (!v29)
    {
      goto LABEL_26;
    }

    v30 = v29;
    v31 = sub_F09FC();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_6E2D8(0, *v31[1].IMDTelephonyServiceSession_opaque + 1, &dword_0 + 1, v31, v32, v33, v34, v35);
    }

    v37 = *v31[1].IMDTelephonyServiceSession_opaque;
    v36 = *v31[1].state;
    if (v37 >= v36 >> 1)
    {
      v31 = sub_6E2D8((v36 > 1), v37 + 1, &dword_0 + 1, v31, v32, v33, v34, v35);
    }

    *v31[1].IMDTelephonyServiceSession_opaque = v37 + 1;
    v38 = &v31[v37];
    *v38[2].IMDTelephonyServiceSession_opaque = v26;
    *v38[2].state = v28;
    v39 = sub_F09EC();
    v31, v40, v41, v42, v43, v44, v45, v46;
    v7 = v21;
    [a2 v21[98]];

    *(a3 + 16) = 1;
    v10 = [a2 replicatedFallbackGUIDs];
    if (!v10)
    {
      goto LABEL_25;
    }
  }

  v47 = [a2 replicatedFallbackGUIDs];
  if (!v47)
  {
    goto LABEL_27;
  }

  v48 = v47;
  v49 = sub_F09FC();

  if ((v58 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  if (*v49[1].IMDTelephonyServiceSession_opaque > v58)
  {

    v49, v50, v51, v52, v53, v54, v55, v56;
    return;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_EE9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_EEA28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_EEA6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_EEAC0()
{
  result = sub_F07EC();
  static CTLazuliOperationError.errorDomain = result;
  *algn_12FCC8 = v1;
  return result;
}

uint64_t *CTLazuliOperationError.errorDomain.unsafeMutableAddressor()
{
  if (qword_128FB0 != -1)
  {
    swift_once();
  }

  return &static CTLazuliOperationError.errorDomain;
}

uint64_t static CTLazuliOperationError.errorDomain.getter()
{
  if (qword_128FB0 != -1)
  {
    swift_once();
  }

  v0 = static CTLazuliOperationError.errorDomain;

  return v0;
}

id NSError.init(operationError:)(void *a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  if (qword_128FB0 != -1)
  {
    swift_once();
  }

  v3 = sub_F07BC();
  v4 = [a1 value];
  sub_388C8(&qword_1285A0, &unk_F74F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_F2C60;
  *(inited + 32) = sub_F07EC();
  *(inited + 40) = v6;
  [a1 value];
  type metadata accessor for CTLazuliErrorType(0);
  v7 = sub_F085C();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  v9 = sub_81270(inited);
  swift_setDeallocating();
  sub_EED44(inited + 32);
  v10 = sub_F075C();
  v9, v11, v12, v13, v14, v15, v16, v17;
  v18 = [v2 initWithDomain:v3 code:v4 userInfo:v10];

  return v18;
}

uint64_t sub_EED44(uint64_t a1)
{
  v2 = sub_388C8(&qword_1285C0, &qword_F3780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *RCSActor.shared.unsafeMutableAddressor()
{
  if (qword_128FB8 != -1)
  {
    swift_once();
  }

  return &static RCSActor.shared;
}

void sub_EEDFC()
{
  type metadata accessor for RCSActor();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  static RCSActor.shared = v0;
}

uint64_t static RCSActor.shared.getter()
{
  if (qword_128FB8 != -1)
  {
    swift_once();
  }
}

uint64_t RCSActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_EEEE8(uint64_t a1, uint64_t a2)
{
  result = qword_12AEA0;
  if (!qword_12AEA0)
  {
    type metadata accessor for RCSActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12AEA0);
  }

  return result;
}

uint64_t sub_EEF60(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RCSActor();

  return static GlobalActor.sharedUnownedExecutor.getter(v3, a2);
}

void *RCSTypingTracker.__allocating_init(delegate:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_388C8(&qword_127EB0, &unk_F2B30);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  v6[16] = 0;
  v6[17] = sub_E9504(_swiftEmptyArrayStorage);
  v6[15] = a2;
  swift_unknownObjectUnownedInit();
  v7 = sub_F0B1C();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;

  sub_3CC0C(0, 0, v5, &unk_F7F50, v8);
  swift_unknownObjectRelease();

  return v6;
}

void *RCSTypingTracker.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&qword_127EB0, &unk_F2B30);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  swift_defaultActor_initialize();
  v2[16] = 0;
  v2[17] = sub_E9504(_swiftEmptyArrayStorage);
  v2[15] = a2;
  swift_unknownObjectUnownedInit();
  v7 = sub_F0B1C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;

  sub_3CC0C(0, 0, v6, &unk_F7F58, v8);
  swift_unknownObjectRelease();

  return v2;
}

double sub_EF248()
{
  v1 = sub_388C8(&qword_127EB0, &unk_F2B30);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_F0B1C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_F0AFC();
  v8 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for AsyncPersistentTimer();
  v9 = swift_allocObject();

  swift_defaultActor_initialize();
  (*(v5 + 16))(v3, v7, v4);
  (*(v5 + 56))(v3, 0, 1, v4);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = 0x402E000000000000;
  v10[5] = &unk_F8030;
  v10[6] = v8;

  v11 = sub_C7510(0, 0, v3, &unk_F58C8, v10);

  sub_372B0(v3, &qword_127EB0, &unk_F2B30);
  (*(v5 + 8))(v7, v4);
  *(v9 + 112) = v11;

  *(v0 + 128) = v9;

  return result;
}

uint64_t RCSTypingTracker.sender(_:finishedTypingInChat:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  sub_388C8(&qword_12AAD0, &qword_F7850);
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_360E4, v3, 0);
}

uint64_t sub_EF560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  sub_388C8(&qword_12AAD0, &qword_F7850);
  v4[17] = swift_task_alloc();
  v5 = type metadata accessor for TypingIndicator(0);
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_36328, v3, 0);
}

uint64_t RCSTypingTracker.sender(_:beganTypingInChat:encryption:subscription:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[28] = a8;
  v9[29] = v8;
  v9[26] = a6;
  v9[27] = a7;
  v9[24] = a4;
  v9[25] = a5;
  v9[22] = a2;
  v9[23] = a3;
  v9[21] = a1;
  sub_388C8(&qword_12AAD0, &qword_F7850);
  v9[30] = swift_task_alloc();
  v13 = type metadata accessor for TypingIndicator(0);
  v9[31] = v13;
  v9[32] = *(v13 - 8);
  v9[33] = swift_task_alloc();
  v14 = swift_task_alloc();
  v9[34] = v14;
  *v14 = v9;
  v14[1] = sub_36858;

  return sub_EF560(a1, a2, a3);
}

uint64_t RCSTypingTracker.deinit(uint64_t a1, uint64_t a2)
{
  sub_EFEA4(v2 + 112, a2);

  *(v2 + 136), v3, v4, v5, v6, v7, v8, v9;
  swift_defaultActor_destroy();
  return v2;
}

uint64_t RCSTypingTracker.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  sub_EFEA4(v2 + 112, a2);

  *(v2 + 136), v3, v4, v5, v6, v7, v8, v9;
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v2);
}

void *sub_EF830(uint64_t a1, RCSServiceSession **a2)
{
  v48 = a2;
  v52 = type metadata accessor for TypingIndicator(0);
  v56 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v50 = &v45 - v5;
  __chkstk_darwin(v6);
  v47 = &v45 - v7;
  v55 = sub_388C8(&unk_12B0F0, &qword_F8048);
  __chkstk_darwin(v55);
  v49 = (&v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v11 = &v45 - v10;
  __chkstk_darwin(v12);
  v14 = (&v45 - v13);
  v54 = &_swiftEmptyDictionarySingleton;
  v61 = &_swiftEmptyDictionarySingleton;
  v15 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 64);
  v19 = (v16 + 63) >> 6;

  v21 = 0;
  v53 = result;
  v46 = v11;
  while (v18)
  {
LABEL_11:
    v26 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v27 = v26 | (v21 << 6);
    v28 = result[7];
    v29 = (result[6] + (v27 << 6));
    v31 = v29[1];
    v30 = v29[2];
    v32 = *v29;
    *&v60[9] = *(v29 + 41);
    v59 = v31;
    *v60 = v30;
    v58 = v32;
    v33 = *(v56 + 72);
    v34 = v55;
    sub_BDE3C(v28 + v33 * v27, v14 + *(v55 + 48));
    v35 = v59;
    *v14 = v58;
    v14[1] = v35;
    v14[2] = *v60;
    *(v14 + 41) = *&v60[9];
    sub_EFFBC(v14, v11);
    v36 = &v11[*(v34 + 48)];
    sub_38910(&v58, v57);
    sub_F02AC();
    if (fabs(v37) <= 30.0)
    {
      v43 = v47;
      sub_BDE3C(v36, v47);
      sub_EFFBC(v11, v49);
      sub_BDEA0(v43, v51);
      v44 = v54[2];
      if (v54[3] <= v44)
      {
        sub_BB9B8(v44 + 1, 1);
      }

      v22 = *(v55 + 48);
      v23 = v49;
      v24 = v49[1];
      v62[0] = *v49;
      v62[1] = v24;
      *v63 = v49[2];
      *&v63[9] = *(v49 + 41);
      v54 = v61;
      sub_EFCF4(v62, v51, v61);
      sub_EFE48(v23 + v22);
    }

    else
    {
      sub_BDE3C(v36, v50);
      v38 = v48;
      v39 = *v48;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v38 = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = sub_D8D6C(0, *v39[1].IMDTelephonyServiceSession_opaque + 1, 1, v39);
        *v48 = v39;
      }

      v42 = *v39[1].IMDTelephonyServiceSession_opaque;
      v41 = *v39[1].state;
      if (v42 >= v41 >> 1)
      {
        v39 = sub_D8D6C((v41 > 1), v42 + 1, 1, v39);
        *v48 = v39;
      }

      *v39[1].IMDTelephonyServiceSession_opaque = v42 + 1;
      sub_BDEA0(v50, &v39->IMDTelephonyServiceSession_opaque[((*(v56 + 80) + 32) & ~*(v56 + 80)) + v42 * v33]);
      v11 = v46;
      sub_372B0(v46, &unk_12B0F0, &qword_F8048);
    }

    result = v53;
  }

  while (1)
  {
    v25 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v25 >= v19)
    {

      return v54;
    }

    v18 = *(v15 + 8 * v25);
    ++v21;
    if (v18)
    {
      v21 = v25;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_EFCF4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_F12FC();
  sub_F089C();
  sub_F089C();
  sub_E78CC(v12, *(a1 + 32));
  if (*(a1 + 48))
  {
    sub_F131C(1u);
    sub_F089C();
  }

  else
  {
    sub_F131C(0);
  }

  sub_F130C(*(a1 + 56));
  sub_F132C();
  v6 = sub_F0EBC();
  *(a3 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v6;
  v7 = (a3[6] + (v6 << 6));
  v8 = *(a1 + 16);
  *v7 = *a1;
  v7[1] = v8;
  v7[2] = *(a1 + 32);
  *(v7 + 41) = *(a1 + 41);
  v9 = a3[7];
  v10 = type metadata accessor for TypingIndicator(0);
  result = sub_BDEA0(a2, v9 + *(*(v10 - 8) + 72) * v6);
  ++a3[2];
  return result;
}

uint64_t sub_EFE48(uint64_t a1)
{
  v2 = type metadata accessor for TypingIndicator(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_EFF18(uint64_t a1)
{
  result = sub_F030C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_EFFBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&unk_12B0F0, &qword_F8048);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}