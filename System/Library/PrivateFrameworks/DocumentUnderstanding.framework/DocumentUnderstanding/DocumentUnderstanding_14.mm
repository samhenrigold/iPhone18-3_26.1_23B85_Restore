void sub_232C3893C()
{
  sub_232B35110();
  v2 = v1;
  v3 = sub_232CE9A30();
  sub_232B48F0C();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_232B3516C();
  MEMORY[0x28223BE20](v7);
  sub_232C3BD24();
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  if (*(v0 + 152))
  {
    sub_232CE9A20();
    v13 = sub_232CE9A00();
    v14 = sub_232CEA1C0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = sub_232BA73DC();
      *v15 = 0;
      _os_log_impl(&dword_232B02000, v13, v14, "Unable to aggregate stats on conversation because the configuration wasn't loaded", v15, 2u);
      sub_232BA6A84();
    }

    v16 = sub_232BA5C94();
    v17(v16);
LABEL_28:
    sub_232B20A00();
  }

  else
  {
    v75 = &v74 - v10;
    v76 = v12;
    v77 = v11;
    v79 = v5;
    v78 = v3;
    sub_232C3BB28();
    sub_232B13F74(v2 + 16, &v88);
    v18 = *(v2 + 16) + 64;
    sub_232B34F88();
    v21 = v20 & v19;
    v23 = (v22 + 63) >> 6;
    v82 = v24;
    swift_bridgeObjectRetain_n();
    v25 = 0;
    v81 = v18;
    v80 = v23;
    if (!v21)
    {
      goto LABEL_7;
    }

    while (2)
    {
      v26 = v25;
LABEL_10:
      v27 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v28 = *(v82[7] + ((v26 << 9) | (8 * v27)));
      sub_232B13F74(v28 + 32, &v87);
      v29 = *(v28 + 32);
      v30 = sub_232B26B10();

      for (i = 0; v30 != i; ++i)
      {
        if ((v29 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2383922C0](i, v29);
        }

        else
        {
          if (i >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }
        }

        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        v32 = sub_232C3BD44();
        sub_232C3902C(v32, v33, v34, v35, v36);
      }

      v25 = v26;
      v18 = v81;
      v23 = v80;
      if (v21)
      {
        continue;
      }

      break;
    }

LABEL_7:
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v23)
      {

        v37 = v75;
        sub_232CE9A20();

        v38 = sub_232CE9A00();
        v39 = sub_232CEA1B0();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = sub_232BC1F80();
          v41 = swift_slowAlloc();
          v85[0] = v41;
          *v40 = 136315138;
          sub_232B13F74(v2 + 64, &v83);

          sub_232B124A8(&qword_27DDC8090, &qword_232CFE0D8);
          v42 = sub_232CE9C50();
          v44 = v43;

          v45 = sub_232BAD2D4(v42, v44, v85);

          *(v40 + 4) = v45;
          _os_log_impl(&dword_232B02000, v38, v39, "Distinct images with counts: %s", v40, 0xCu);
          sub_232B2040C(v41);
          sub_232BA6A84();
          sub_232BA6A84();
        }

        v46 = *(v79 + 8);
        v47 = v78;
        v46(v37, v78);
        v48 = v76;
        sub_232CE9A20();

        v49 = sub_232CE9A00();
        v50 = sub_232CEA1B0();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = sub_232BC1F80();
          v82 = swift_slowAlloc();
          v85[0] = v82;
          *v51 = 136315138;
          sub_232B13F74(v2 + 48, &v84);

          v52 = sub_232CE9C50();
          v53 = v47;
          v54 = v46;
          v56 = v55;

          v57 = sub_232BAD2D4(v52, v56, v85);
          v46 = v54;
          v47 = v53;

          *(v51 + 4) = v57;
          _os_log_impl(&dword_232B02000, v49, v50, "Distinct entities with counts: %s", v51, 0xCu);
          sub_232B2040C(v82);
          sub_232BA6A84();
          sub_232BA6A84();

          sub_232C3BBE8();
          v58 = v48;
          v59 = v53;
        }

        else
        {

          sub_232C3BBE8();
          v58 = v48;
          v59 = v47;
        }

        v46(v58, v59);
        v60 = v77;
        sub_232CE9A20();

        v61 = sub_232CE9A00();
        v62 = sub_232CEA1B0();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = sub_232BC1F80();
          v64 = swift_slowAlloc();
          v86 = v64;
          *v63 = 136315138;
          sub_232B13F74(v2 + 56, v85);

          v65 = sub_232CE9C50();
          v67 = v66;

          v68 = sub_232BAD2D4(v65, v67, &v86);

          *(v63 + 4) = v68;
          sub_232C3BD58();
          _os_log_impl(v69, v70, v71, v72, v73, 0xCu);
          sub_232B2040C(v64);
          sub_232BA6A84();
          sub_232B26D28();
        }

        sub_232C3BBE8();
        v46(v60, v47);
        goto LABEL_28;
      }

      v21 = *(v18 + 8 * v26);
      ++v25;
      if (v21)
      {
        goto LABEL_10;
      }
    }

LABEL_31:
    __break(1u);
  }
}

void sub_232C3902C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();

  sub_232C437E4(v7);

  swift_beginAccess();

  sub_232C437E4(v8);

  swift_beginAccess();

  sub_232C437E4(v9);

  swift_beginAccess();

  sub_232C437E4(v10);

  swift_beginAccess();

  sub_232C437E4(v11);

  v12 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_madExtractions;
  swift_beginAccess();

  sub_232C43B98(v13);

  sub_232C4359C(v14, v15, v16, v17, v18, v19, v20, v21, v50, v53, a1, a3, v62, a5, v68, v72, v76, v80, v84, v87, v90, v93, v96, v99, v102, v105);

  sub_232C4359C(v22, v23, v24, v25, v26, v27, v28, v29, v51, v54, v58, v60, v63, v66, v69, v73, v77, v81, v85, v88, v91, v94, v97, v100, v103, v106);

  sub_232C43678(v30, v31, v32, v33, v34, v35, v36, v37, v52, v55, v59, v61, v64, v67, v70, v74, v78, v82, v86, v89, v92, v95, v98, v101, v104, v107);

  v56 = sub_232B26B10();
  v38 = *(a2 + v12);
  v83 = sub_232B26B10();

  swift_beginAccess();
  v39 = 0;
  v75 = v38 & 0xC000000000000001;
  v79 = v38;
  v71 = v38 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v83 == v39)
    {

      return;
    }

    if (v75)
    {
      v40 = MEMORY[0x2383922C0](v39, v79);
    }

    else
    {
      if (v39 >= *(v71 + 16))
      {
        goto LABEL_13;
      }

      v40 = *(v79 + 8 * v39 + 32);
    }

    v41 = v40;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    v42 = sub_232C49EA4(v40);
    if (v43)
    {
      v44 = v42;
      v45 = v43;

      sub_232C4C348();
      v47 = v46;

      sub_232C43EF0(v44, v45, v47, v56);

      sub_232C4C7B4();
      v49 = v48;

      sub_232C44DB8(v44, v45, v49);
    }

    ++v39;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t sub_232C39390(uint64_t a1, char a2)
{
  v5 = sub_232CE9A30();
  sub_232B48F0C();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_232B3516C();
  sub_232C3BA64();
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  sub_232C3893C();
  sub_232C35C4C(a1, a2);
  sub_232CE9810();
  if (MEMORY[0x238391570]())
  {
    if (sub_232B26B10())
    {
      if (a2)
      {
        sub_232C4CFA4();
      }

      else
      {
        sub_232C4CB00();
        sub_232C4CD74();
      }
    }

    else
    {

      sub_232CE9A20();
      v16 = sub_232CE9A00();
      v17 = sub_232CEA1A0();
      if (os_log_type_enabled(v16, v17))
      {
        *sub_232BA73DC() = 0;
        sub_232C3BC90(&dword_232B02000, v18, v17, "No confident predictions returned by the model");
        sub_232BA6A84();
      }

      return (*(v7 + 8))(v11, v5);
    }
  }

  else
  {

    sub_232C4CB00();
    sub_232CE9A20();
    v12 = sub_232CE9A00();
    sub_232CEA1A0();
    sub_232C3BC08();
    if (os_log_type_enabled(v12, v13))
    {
      *sub_232BA73DC() = 0;
      sub_232C3BC90(&dword_232B02000, v14, v11, "AutonamingFromMessages feature flag is off. Not adding events to poem stream");
      sub_232BA6A84();
    }

    return (*(v7 + 8))(v2, v5);
  }
}

void sub_232C395BC()
{
  sub_232B35110();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_232CE9A30();
  sub_232B48F0C();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_232B20704();
  v16 = v15 - v14;
  v30 = v3;
  sub_232B13F74(v9 + 56, &v29);
  v17 = *(v9 + 56);
  v18 = *(v17 + 16);

  if (!v18)
  {
LABEL_6:
    sub_232CE9A20();
    v21 = sub_232CE9A00();
    v22 = sub_232CEA1C0();
    if (os_log_type_enabled(v21, v22))
    {
      *sub_232BA73DC() = 0;
      sub_232C3BD58();
      _os_log_impl(v23, v24, v25, v26, v27, 2u);
      sub_232B26D28();
    }

    (*(v12 + 8))(v16, v10);
    goto LABEL_9;
  }

  v19 = sub_232B1F160(v7, v5);
  if ((v20 & 1) == 0)
  {

    goto LABEL_6;
  }

  memcpy(v31, (*(v17 + 56) + 88 * v19), sizeof(v31));
  sub_232C3B5F0(v31, &v28);

  if (v1 >= 1)
  {
    sub_232C335A4(1, v1, &v30, v31);
LABEL_9:
    sub_232B20A00();
    return;
  }

  __break(1u);
}

void sub_232C39784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v267 = a2;
  v278 = a3;
  sub_232C459C0(a2, a3);
  v256 = v4;
  sub_232B124A8(&qword_27DDC6700, &qword_232CF5D48);
  v5 = MEMORY[0x277D84F90];
  v245 = sub_232CE9C60();
  sub_232B13F74(a1 + 16, v332);
  v300 = a1;
  v6 = *(a1 + 16);
  *__dst = v5;
  sub_232B34F88();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;

  v12 = 0;
  while (v9)
  {
    v13 = v12;
LABEL_7:
    sub_232C3BB4C();
    if (sub_232C4353C())
    {
      sub_232CEA560();
      sub_232C3BCDC();
      sub_232CEA590();
      sub_232C3BCDC();
      sub_232CEA5A0();
      sub_232CEA570();
    }

    else
    {
    }

    v12 = v13;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    if (v13 >= v11)
    {
      break;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      goto LABEL_7;
    }
  }

  v14 = *__dst;
  v15 = sub_232B26B10();
  if (!v15)
  {

    goto LABEL_25;
  }

  v16 = v15;
  sub_232C3BC2C(v15);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v17 = 0;
    v18 = *__dst;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x2383922C0](v17, v14);
      }

      else
      {
        v19 = *(v14 + 8 * v17 + 32);
      }

      sub_232B13F74(v19 + 32, v331);
      v20 = *(v19 + 32);
      if (v20 >> 62)
      {
        v21 = sub_232CEA610();
      }

      else
      {
        v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *__dst = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_232BC1BBC(v22);
        sub_232BC1E24();
        sub_232B64A58(v24, v25, v26);
        v18 = *__dst;
      }

      ++v17;
      *(v18 + 16) = v23 + 1;
      *(v18 + 8 * v23 + 32) = v21;
    }

    while (v16 != v17);

LABEL_25:
    v27 = v245;
    swift_isUniquelyReferenced_nonNull_native();
    *__dst = v245;
    v28 = sub_232C3B9F0();
    sub_232B1F574(v28, v29, v30);
    v31 = *(v300 + 16);
    *__dst = MEMORY[0x277D84F90];
    v32 = v31 + 64;
    sub_232B34F88();
    v35 = v34 & v33;
    v37 = (v36 + 63) >> 6;

    v38 = 0;
    while (v35)
    {
      v39 = v38;
LABEL_31:
      sub_232C3BB4C();
      if (sub_232C434DC())
      {
        sub_232CEA560();
        v27 = *(*__dst + 16);
        sub_232C3BCDC();
        sub_232CEA590();
        sub_232C3BCDC();
        sub_232CEA5A0();
        sub_232CEA570();
      }

      else
      {
      }

      v38 = v39;
    }

    while (1)
    {
      v39 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_100;
      }

      if (v39 >= v37)
      {
        break;
      }

      v35 = *(v32 + 8 * v39);
      ++v38;
      if (v35)
      {
        goto LABEL_31;
      }
    }

    v40 = *__dst;
    v41 = sub_232B26B10();
    if (v41)
    {
      v35 = v41;
      sub_232C3BC2C(v41);
      if (v35 < 0)
      {
        goto LABEL_102;
      }

      v42 = 0;
      v43 = *__dst;
      do
      {
        if ((v40 & 0xC000000000000001) != 0)
        {
          v44 = MEMORY[0x2383922C0](v42, v40);
        }

        else
        {
          v44 = *(v40 + 8 * v42 + 32);
        }

        sub_232B13F74(v44 + 32, v330);
        v45 = *(v44 + 32);
        if (v45 >> 62)
        {
          v32 = sub_232CEA610();
        }

        else
        {
          v32 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *__dst = v43;
        v47 = *(v43 + 16);
        v46 = *(v43 + 24);
        v27 = v47 + 1;
        if (v47 >= v46 >> 1)
        {
          sub_232BC1BBC(v46);
          sub_232BC1E24();
          sub_232B64A58(v48, v49, v50);
          v43 = *__dst;
        }

        ++v42;
        *(v43 + 16) = v27;
        *(v43 + 8 * v47 + 32) = v32;
      }

      while (v35 != v42);
    }

    else
    {
    }

    swift_isUniquelyReferenced_nonNull_native();
    *__dst = v245;
    v51 = sub_232C3B9F0();
    sub_232B1F574(v51, v52, v53);
    v289 = v245;
    sub_232B13F74(v300 + 56, v329);
    if (*(*(v300 + 56) + 16))
    {

      v54 = sub_232B1F160(v267, v278);
      if (v55)
      {
        v62 = sub_232C3B9CC(v54, v55, v56, v57, v58, v59, v60, v61, v234, v245, v256, v267, v278, v245, v300, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317);
        v63 = v319;
        v35 = v325;
        v32 = v326;
        v27 = v327;
        sub_232C3BA44(v62, v64, v65, v66, v67, v68, v69, v70, v235, v246, v257, v268, v279, v290, v301, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, __dst[0]);

        if (v245)
        {
          *__dst = v245;
          sub_232C3BCE8();
          sub_232C3BB80();
          v71 = sub_232B267AC(__dst, &qword_27DDC8088, &qword_232CFE0D0);
          goto LABEL_56;
        }

LABEL_55:
        *__dst = 0;
        v319 = v63;
        sub_232C3BCE8();
        v328 = v79;
        v71 = sub_232B267AC(__dst, &qword_27DDC8088, &qword_232CFE0D0);
LABEL_56:
        sub_232C3BB00(v71, v72, v73, v74, v75, v76, v77, v78, v234, v245, v256, v267, v278, v289);
        sub_232C3BA10();
        v80 = sub_232C3B9F0();
        sub_232B1F574(v80, v81, v82);
        sub_232C3B98C();
        if (v83)
        {

          v84 = sub_232B1F160(v269, v280);
          if (v85)
          {
            sub_232C3B9CC(v84, v85, v86, v87, v88, v89, v90, v91, v236, v247, v258, v269, v280, v291, v300, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317);
            sub_232C3BAF0();
            v92 = v324;
            v35 = v325;
            v32 = v326;
            v27 = v327;
            sub_232C3BA44(v93, v94, v95, v96, v97, v98, v99, v100, v237, v248, v259, v270, v281, v292, v302, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, __dst[0]);

            if (v247)
            {
              sub_232C3BACC();
              v324 = v92;
              v325 = v35;
              v326 = v32;
              v327 = v27;
              sub_232C3BB80();
              v101 = sub_232B267AC(__dst, &qword_27DDC8088, &qword_232CFE0D0);
              goto LABEL_63;
            }

LABEL_62:
            sub_232C3BABC();
            v324 = v92;
            v325 = v35;
            v326 = v32;
            v327 = v27;
            v328 = v109;
            v101 = sub_232B267AC(__dst, &qword_27DDC8088, &qword_232CFE0D0);
LABEL_63:
            sub_232C3BB00(v101, v102, v103, v104, v105, v106, v107, v108, v236, v247, v258, v269, v280, v291);
            sub_232C3BA10();
            v110 = sub_232C3B9F0();
            sub_232B1F574(v110, v111, v112);
            sub_232C3B98C();
            if (v113)
            {

              v114 = sub_232B1F160(v271, v282);
              if (v115)
              {
                sub_232C3B9CC(v114, v115, v116, v117, v118, v119, v120, v121, v238, v249, v260, v271, v282, v293, v300, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317);
                sub_232C3BAF0();
                v123 = v324;
                v122 = v325;
                v125 = v326;
                v124 = v327;
                sub_232C3BA44(v126, v127, v128, v129, v130, v131, v132, v133, v239, v250, v261, v272, v283, v294, v303, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, __dst[0]);

                if (v249)
                {
                  sub_232C3BACC();
                  v324 = v123;
                  v325 = v122;
                  v326 = v125;
                  v327 = v124;
                  sub_232C3BB80();
                  v134 = sub_232B267AC(__dst, &qword_27DDC8088, &qword_232CFE0D0);
                  goto LABEL_70;
                }

LABEL_69:
                sub_232C3BABC();
                v324 = v123;
                v325 = v122;
                v326 = v125;
                v327 = v124;
                v328 = v142;
                v134 = sub_232B267AC(__dst, &qword_27DDC8088, &qword_232CFE0D0);
LABEL_70:
                sub_232C3BB00(v134, v135, v136, v137, v138, v139, v140, v141, v238, v249, v260, v271, v282, v293);
                sub_232C3BA10();
                v143 = sub_232C3B9F0();
                sub_232B1F574(v143, v144, v145);
                sub_232C3B98C();
                if (v146)
                {

                  v147 = sub_232B1F160(v273, v284);
                  if (v148)
                  {
                    sub_232C3B9CC(v147, v148, v149, v150, v151, v152, v153, v154, v240, v251, v262, v273, v284, v295, v300, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317);
                    sub_232C3BAF0();
                    v156 = v324;
                    v155 = v325;
                    v157 = v326;
                    v158 = v327;
                    sub_232C3BA44(v159, v160, v161, v162, v163, v164, v165, v166, v241, v252, v263, v274, v285, v296, v304, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, __dst[0]);

                    if (v251)
                    {
                      sub_232C3BACC();
                      v324 = v156;
                      v325 = v155;
                      v326 = v157;
                      v327 = v158;
                      sub_232C3BB80();
                      v167 = sub_232B267AC(__dst, &qword_27DDC8088, &qword_232CFE0D0);
                      goto LABEL_77;
                    }

LABEL_76:
                    sub_232C3BABC();
                    v324 = v156;
                    v325 = v155;
                    v326 = v157;
                    v327 = v158;
                    v328 = v175;
                    v167 = sub_232B267AC(__dst, &qword_27DDC8088, &qword_232CFE0D0);
LABEL_77:
                    sub_232C3BB00(v167, v168, v169, v170, v171, v172, v173, v174, v240, v251, v262, v273, v284, v295);
                    *__dst = v63;
                    v176 = sub_232C3B9F0();
                    sub_232B1F574(v176, 0xD000000000000019, v177);
                    sub_232C3B98C();
                    if (v178)
                    {

                      v179 = sub_232B1F160(v275, v286);
                      if (v180)
                      {
                        sub_232C3B9CC(v179, v180, v181, v182, v183, v184, v185, v186, v242, v253, v264, v275, v286, v297, v300, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317);
                        sub_232C3BAF0();
                        v156 = v324;
                        v155 = v325;
                        v158 = v326;
                        v187 = v327;
                        sub_232C3BA44(v188, v189, v190, v191, v192, v193, v194, v195, v243, v254, v265, v276, v287, v298, v305, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, __dst[0]);

                        if (v253)
                        {
                          sub_232C3BACC();
                          v324 = v156;
                          v325 = v155;
                          v326 = v158;
                          v327 = v187;
                          sub_232C3BB80();
                          v196 = sub_232B267AC(__dst, &qword_27DDC8088, &qword_232CFE0D0);
                          goto LABEL_84;
                        }

LABEL_83:
                        sub_232C3BABC();
                        v324 = v156;
                        v325 = v155;
                        v326 = v158;
                        v327 = v187;
                        v328 = v204;
                        v196 = sub_232B267AC(__dst, &qword_27DDC8088, &qword_232CFE0D0);
LABEL_84:
                        sub_232C3BB00(v196, v197, v198, v199, v200, v201, v202, v203, v242, v253, v264, v275, v286, v297);
                        sub_232C3BA10();
                        v205 = sub_232C3B9F0();
                        sub_232B1F574(v205, v206, v207);
                        sub_232C3B98C();
                        if (v208)
                        {

                          v209 = sub_232B1F160(v277, v288);
                          if (v210)
                          {
                            sub_232C3B9CC(v209, v210, v211, v212, v213, v214, v215, v216, v244, v255, v266, v277, v288, v299, v300, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317);
                            v217 = v319;
                            v288 = *__dst;
                            v218 = v320;
                            v219 = v321;
                            v221 = v322;
                            v220 = v323;
                            v156 = v324;
                            v155 = v325;
                            v158 = v326;
                            v306 = v327;
                            v222 = v328;
                            sub_232C3B5F0(__dst, &v307);

                            if (v288)
                            {
                              *__dst = v288;
                              v319 = v217;
                              v320 = v218;
                              v321 = v219;
                              v322 = v221;
                              v323 = v220;
                              v324 = v156;
                              v325 = v155;
                              v326 = v158;
                              v327 = v306;
                              v328 = v222;

                              v223 = sub_232B267AC(__dst, &qword_27DDC8088, &qword_232CFE0D0);
LABEL_92:
                              sub_232C3BB00(v223, v224, v225, v226, v227, v228, v229, v230, v244, v255, v266, v277, v288, v299);
                              *__dst = v217;
                              v232 = sub_232C3B9F0();
                              sub_232B1F574(v232, 0xD000000000000019, v233);
                              return;
                            }

                            v231 = v306;
LABEL_91:
                            *__dst = 0;
                            v319 = v217;
                            v320 = v218;
                            v321 = v219;
                            v322 = v221;
                            v323 = v220;
                            v324 = v156;
                            v325 = v155;
                            v326 = v158;
                            v327 = v231;
                            v328 = v222;
                            v223 = sub_232B267AC(__dst, &qword_27DDC8088, &qword_232CFE0D0);
                            goto LABEL_92;
                          }

                          v222 = 0;
                        }

                        else
                        {
                          v222 = 0;
                        }

                        sub_232C3BA80();
                        v220 = 0;
                        v221 = 0;
                        v219 = 0;
                        v218 = 0;
                        v217 = 0;
                        goto LABEL_91;
                      }
                    }

                    v187 = 0;
                    sub_232C3BA80();
                    sub_232C3B9B4();
                    goto LABEL_83;
                  }
                }

                v158 = 0;
                v157 = 0;
                v155 = 0;
                v156 = 0;
                sub_232C3B9B4();
                goto LABEL_76;
              }
            }

            v124 = 0;
            v125 = 0;
            v122 = 0;
            v123 = 0;
            sub_232C3B9B4();
            goto LABEL_69;
          }
        }

        sub_232C3BA80();
        v92 = 0;
        sub_232C3B9B4();
        goto LABEL_62;
      }
    }

    sub_232C3BA80();
    v63 = 0;
    goto LABEL_55;
  }

LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
}

void sub_232C3A1F8()
{
  sub_232B35110();
  v4 = v3;
  v101 = v5;
  v102 = v6;
  v8 = v7;
  v103 = v9;
  v10 = sub_232CE9A30();
  sub_232B48F0C();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_232B3516C();
  sub_232C3BA64();
  MEMORY[0x28223BE20](v14);
  v16 = &v94 - v15;
  MEMORY[0x28223BE20](v17);
  sub_232C3BD10();
  MEMORY[0x28223BE20](v18);
  sub_232C3BD24();
  MEMORY[0x28223BE20](v19);
  if (v4)
  {
    sub_232CE9A20();
    v20 = sub_232CE9A00();
    v21 = sub_232CEA1A0();
    if (sub_232BA6EB8(v21))
    {
      v22 = sub_232BA73DC();
      sub_232C3BCD0(v22);
      sub_232C3BA74();
      sub_232C3BD78(v23, v24, v25, v26);
      sub_232C3BAA0();
    }

    (*(v12 + 8))(v1, v10);
    goto LABEL_68;
  }

  if (*(v0 + 152))
  {
    sub_232CE9A20();
    v27 = sub_232CE9A00();
    v28 = sub_232CEA1A0();
    if (sub_232BA6EB8(v28))
    {
      v29 = sub_232BA73DC();
      sub_232BD4280(v29);
      sub_232C3BA24(&dword_232B02000, v30, v31, "Can't persist stats because the configuration counldn't be loaded");
      sub_232BA66EC();
    }

    (*(v12 + 8))(v16, v10);
    goto LABEL_68;
  }

  sub_232C3BB28();
  v34 = *(v0 + 24);
  if (!v34)
  {
    sub_232CE9A20();
    v82 = sub_232CE9A00();
    v83 = sub_232CEA1A0();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = sub_232BA73DC();
      sub_232C3BCD0(v84);
      sub_232C3BD78(&dword_232B02000, v82, v83, "Can't persist stats without a database");
      sub_232C3BAA0();
    }

    (*(v12 + 8))(v2, v10);
    goto LABEL_68;
  }

  v95 = v33;
  v94 = v32;
  v98 = v0;
  v96 = v10;
  v97 = v12;
  v35 = sub_232B26B10();
  v100 = v34;
  v36 = 0;
  v110 = MEMORY[0x277D84F90];
  while (v35 != v36)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x2383922C0](v36, v8);
    }

    else
    {
      if (v36 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_77;
      }

      v37 = *(v8 + 8 * v36 + 32);
    }

    v38 = v37;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      return;
    }

    v39 = [v37 array];
    sub_232B124A8(&qword_27DDC8078, &unk_232CFE0B0);
    v40 = sub_232CE9FE0();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_232C3BD64();
      sub_232B37008(v44, v45, v46, v47);
      v110 = v48;
    }

    v42 = *(v110 + 16);
    v41 = *(v110 + 24);
    if (v42 >= v41 >> 1)
    {
      sub_232BC1BBC(v41);
      sub_232BC1E24();
      sub_232B37008(v49, v50, v51, v110);
      v110 = v52;
    }

    v43 = v110;
    *(v110 + 16) = v42 + 1;
    *(v43 + 8 * v42 + 32) = v40;
    ++v36;
  }

  v53 = 0;
  v54 = MEMORY[0x277D84F90];
  v55 = *(v110 + 16);
  v107 = v110 + 32;
  v99 = v55;
  while (v53 != v55)
  {
    if (v53 >= *(v110 + 16))
    {
      goto LABEL_78;
    }

    v56 = *(v107 + 8 * v53);
    if (v56 >> 62)
    {
      v57 = sub_232CEA610();
    }

    else
    {
      v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v58 = v54 >> 62;
    if (v54 >> 62)
    {
      v59 = sub_232CEA610();
    }

    else
    {
      v59 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v60 = v59 + v57;
    if (__OFADD__(v59, v57))
    {
      goto LABEL_79;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v109 = v57;
    if (!isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (v58)
      {
LABEL_35:
        sub_232CEA610();
      }

LABEL_36:
      v54 = sub_232CEA540();
      v62 = v54 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_37;
    }

    if (v58)
    {
      goto LABEL_35;
    }

    v62 = v54 & 0xFFFFFFFFFFFFFF8;
    if (v60 > *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_36;
    }

LABEL_37:
    ++v53;
    v63 = *(v62 + 16);
    v64 = (*(v62 + 24) >> 1) - v63;
    v65 = v62 + 8 * v63;
    v108 = v62;
    if (v56 >> 62)
    {
      v67 = sub_232CEA610();
      if (!v67)
      {
        goto LABEL_51;
      }

      v68 = v67;
      v69 = sub_232CEA610();
      if (v64 < v69)
      {
        goto LABEL_83;
      }

      if (v68 < 1)
      {
        goto LABEL_84;
      }

      v104 = v69;
      v105 = v54;
      v106 = v53;
      v70 = v65 + 32;
      sub_232C3B474();
      for (i = 0; i != v68; ++i)
      {
        sub_232B124A8(&qword_27DDC6B10, &unk_232CF8910);
        v72 = sub_232B4D400(v111, i, v56);
        v74 = *v73;
        swift_unknownObjectRetain();
        v72(v111, 0);
        *(v70 + 8 * i) = v74;
      }

      v54 = v105;
      v53 = v106;
      v55 = v99;
      v66 = v104;
LABEL_47:

      if (v66 < v109)
      {
        goto LABEL_80;
      }

      if (v66 > 0)
      {
        v75 = *(v108 + 16);
        v76 = __OFADD__(v75, v66);
        v77 = v75 + v66;
        if (v76)
        {
          goto LABEL_81;
        }

        *(v108 + 16) = v77;
      }
    }

    else
    {
      v66 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v66)
      {
        if (v64 < v66)
        {
          goto LABEL_82;
        }

        sub_232B124A8(&qword_27DDC8078, &unk_232CFE0B0);
        swift_arrayInitWithCopy();
        goto LABEL_47;
      }

LABEL_51:

      if (v109 > 0)
      {
        goto LABEL_80;
      }
    }
  }

  if (sub_232B26B10() != *(v103 + 16))
  {

    v85 = v95;
    sub_232CE9A20();
    v86 = sub_232CE9A00();
    v87 = sub_232CEA1C0();
    if (sub_232BA6EB8(v87))
    {
      v88 = sub_232BA73DC();
      sub_232BD4280(v88);
      v91 = "Keys count mismatch while trying to persist stats";
LABEL_74:
      sub_232C3BA24(&dword_232B02000, v89, v90, v91);
      sub_232BA66EC();
    }

LABEL_75:

    (*(v97 + 8))(v85, v96);
    goto LABEL_68;
  }

  if (!sub_232B26B10())
  {

    v85 = v94;
    sub_232CE9A20();
    v86 = sub_232CE9A00();
    v92 = sub_232CEA1A0();
    if (sub_232BA6EB8(v92))
    {
      v93 = sub_232BA73DC();
      sub_232BD4280(v93);
      v91 = "No features found to persist or send to PET";
      goto LABEL_74;
    }

    goto LABEL_75;
  }

  sub_232C41148();
  v78 = sub_232C46380();
  v79 = sub_232B26B10();
  for (j = 0; v79 != j; ++j)
  {
    if ((v54 & 0xC000000000000001) != 0)
    {
      v81 = MEMORY[0x2383922C0](j, v54);
    }

    else
    {
      if (j >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_86;
      }

      v81 = *(v54 + 8 * j + 32);
      swift_unknownObjectRetain();
    }

    if (__OFADD__(j, 1))
    {
      goto LABEL_85;
    }

    sub_232C3A9E4(j, v81, v101, &v112, v102, v103, v98, v100, v78);
    swift_unknownObjectRelease();
  }

LABEL_68:
  sub_232B20A00();
}

uint64_t sub_232C3A9E4(unint64_t a1, void *a2, uint64_t a3, double *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9)
{
  v79 = a8;
  v85 = a4;
  v14 = sub_232CE9A30();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v78 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v80 = &v77 - v18;
  v81 = type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData(0);
  MEMORY[0x28223BE20](v81);
  v82 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_232CE9C60();
  v20 = [a2 featureNames];
  v21 = sub_232CEA0D0();

  swift_unknownObjectRetain();
  sub_232C337C8(v21, a2, &v87);

  sub_232B26B2C();
  if ((a3 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x2383922C0](a1, a3);
  }

  else
  {
    v22 = *(a3 + 8 * a1 + 32);
    swift_unknownObjectRetain();
  }

  v23 = COERCE_DOUBLE(sub_232C4D2BC(v22));
  v25 = v24;
  swift_unknownObjectRelease();
  v26 = *v85;
  v27 = v87;
  swift_isUniquelyReferenced_nonNull_native();
  v86[0] = v27;
  sub_232B1F66C(0x68745F6C65646F6DLL, 0xEF646C6F68736572, v26);
  v28 = v86[0];
  if (v25)
  {
    v29 = 0.0;
  }

  else
  {
    v29 = v23;
  }

  swift_isUniquelyReferenced_nonNull_native();
  v86[0] = v28;
  v30 = sub_232B1F66C(0xD000000000000010, 0x8000000232D02820, v29);
  v31 = v86[0];
  v33 = sub_232C463F0(v30, v32);
  swift_isUniquelyReferenced_nonNull_native();
  v86[0] = v31;
  sub_232B1F66C(0x736D5F746E756F63, 0xEA00000000007367, v33);
  v34 = v86[0];
  v87 = v86[0];
  swift_beginAccess();
  v35 = *(*(a5 + 16) + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v86[0] = v34;
  result = sub_232B1F66C(0x7268745F766E6F63, 0xEC00000073646165, v35);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (*(a6 + 16) <= a1)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v83 = v15;
  v84 = v14;
  v37 = a6 + 16 * a1;
  v38 = *(v37 + 32);
  v39 = *(v37 + 40);

  v40 = sub_232C459C0(v38, v39);
  v42 = v41;
  v44 = v43;
  v46 = v45;

  v47 = sub_232C45710();
  if (v48)
  {
    v49 = v48;
    v77 = v47;
    v78 = a9;

    sub_232C395BC();
    v51 = v50;

    sub_232C39784(a5, v38, v39);
    v53 = v52;

    v85 = v51;
    v54 = v77;
    sub_232C41C2C(v38, v39, v77, v49, v40, v42, v44, v46, v51, v53);

    v55 = v78;

    sub_232B1E0D0(v44, v46, v55);
    v57 = v56;
    if (v56)
    {
    }

    v58 = sub_232C4D440(v44, v46, v54, v49, v55);

    type metadata accessor for AutonamingModelFeatures();

    v59 = AutonamingModelFeatures.__allocating_init(featureMap:annotation:groundTruthAvailable:cooccurrenceKey:listFeatureMap:)(v85, v58, v57 != 0, v38, v39, v53);
    v60 = v82;
    sub_232B1D2E4(v82);

    v61 = v80;
    sub_232CE9A20();

    v62 = sub_232CE9A00();
    v63 = sub_232CEA1B0();

    v64 = os_log_type_enabled(v62, v63);
    v65 = v83;
    if (v64)
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v86[0] = v67;
      *v66 = 136315138;
      v68 = sub_232BAD2D4(v44, v46, v86);

      *(v66 + 4) = v68;
      _os_log_impl(&dword_232B02000, v62, v63, "Logging training data to PET for %s", v66, 0xCu);
      sub_232B2040C(v67);
      MEMORY[0x238393870](v67, -1, -1);
      MEMORY[0x238393870](v66, -1, -1);
    }

    else
    {
    }

    (*(v65 + 8))(v61, v84);
    sub_232CE9640();
    sub_232CE9630();
    v86[3] = v81;
    v86[4] = sub_232C3B4D8();
    v76 = sub_232BA18A8(v86);
    sub_232C3B530(v60, v76);
    sub_232CE9620();

    sub_232C3B594(v60);
    sub_232B2040C(v86);
  }

  else
  {
    v69 = v40;

    v70 = v78;
    sub_232CE9A20();

    v71 = sub_232CE9A00();
    v72 = sub_232CEA1C0();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v86[0] = v74;
      *v73 = 136315138;
      v75 = sub_232BAD2D4(v69, v42, v86);

      *(v73 + 4) = v75;
      _os_log_impl(&dword_232B02000, v71, v72, "Unable to find name for id %s while trying to persist stats", v73, 0xCu);
      sub_232B2040C(v74);
      MEMORY[0x238393870](v74, -1, -1);
      MEMORY[0x238393870](v73, -1, -1);
    }

    else
    {
    }

    (*(v83 + 8))(v70, v84);
  }
}

id *sub_232C3B1C4()
{
  sub_232C3B794(v0[4]);

  return v0;
}

uint64_t sub_232C3B214()
{
  sub_232C3B1C4();

  return MEMORY[0x2821FE8D8](v0, 168, 7);
}

uint64_t sub_232C3B26C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_232C3B28C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

unint64_t sub_232C3B2D4()
{
  result = qword_27DDC8068;
  if (!qword_27DDC8068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC8068);
  }

  return result;
}

id sub_232C3B328(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = sub_232CE9C20();

  v7[0] = 0;
  v3 = [v1 initWithDictionary:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_232CE8B30();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_232C3B410(void *a1)
{
  v1 = [a1 path];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_232CE9D50();

  return v3;
}

unint64_t sub_232C3B474()
{
  result = qword_27DDC8080;
  if (!qword_27DDC8080)
  {
    sub_232B27EEC(&qword_27DDC6B10, &unk_232CF8910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC8080);
  }

  return result;
}

unint64_t sub_232C3B4D8()
{
  result = qword_27DDC6538;
  if (!qword_27DDC6538)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC6538);
  }

  return result;
}

uint64_t sub_232C3B530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232C3B594(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232C3B6A0(int64_t a1, int64_t a2, uint64_t a3)
{
  result = 0;
  while (1)
  {
    v5 = a1 <= a2;
    if (a3 > 0)
    {
      v5 = a1 >= a2;
    }

    if (v5)
    {
      break;
    }

    v6 = __OFADD__(a1, a3);
    a1 += a3;
    if (v6)
    {
      a1 = (a1 >> 63) ^ 0x8000000000000000;
    }

    v6 = __OFADD__(result++, 1);
    if (v6)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

unint64_t sub_232C3B740()
{
  result = qword_27DDC80A8;
  if (!qword_27DDC80A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC80A8);
  }

  return result;
}

void sub_232C3B794(id a1)
{
  if (a1 != 1)
  {
  }
}

_BYTE *storeEnumTagSinglePayload for PoemModelingParameters.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        break;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_232C3B884()
{
  result = qword_27DDC80B0;
  if (!qword_27DDC80B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC80B0);
  }

  return result;
}

unint64_t sub_232C3B8DC()
{
  result = qword_27DDC80B8;
  if (!qword_27DDC80B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC80B8);
  }

  return result;
}

unint64_t sub_232C3B934()
{
  result = qword_27DDC80C0;
  if (!qword_27DDC80C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC80C0);
  }

  return result;
}

void *sub_232C3B9CC(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  v28 = (*(v26 + 56) + 88 * a1);

  return memcpy(va, v28, 0x58uLL);
}

void sub_232C3BA24(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_232C3BA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  return sub_232C3B5F0(&a27, &a16);
}

void sub_232C3BAA0()
{

  JUMPOUT(0x238393870);
}

uint64_t sub_232C3BB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

__n128 sub_232C3BB28()
{
  v2 = *(v0 + 128);
  *(v1 - 136) = *(v0 + 104);
  *(v1 - 128) = *(v0 + 112);
  *(v1 - 112) = v2;
  result = *(v0 + 136);
  *(v1 - 104) = result;
  return result;
}

uint64_t sub_232C3BB4C()
{
}

double sub_232C3BB80()
{

  return result;
}

uint64_t sub_232C3BB9C()
{
  v3 = v1[3];
  v0[4] = v1[2];
  v0[5] = v3;
  v0[6] = v1[4];
  *(v0 + 105) = *(v1 + 73);

  return sub_232C3B6E4((v0 + 4), v0);
}

void sub_232C3BC2C(uint64_t a1)
{

  sub_232B64A58(0, a1 & ~(a1 >> 63), 0);
}

uint64_t sub_232C3BC50()
{
  sub_232B0D210(v0, 0);
  sub_232B0D210(v2, 0);

  return sub_232B0D210(v1, 0);
}

void sub_232C3BC90(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t sub_232C3BCAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 - 152) = &a9 - v9;

  return sub_232CE8B40();
}

void sub_232C3BD78(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t sub_232C3BD90()
{

  return swift_slowAlloc();
}

uint64_t sub_232C3BDA8(uint64_t a1, uint64_t a2)
{

  return sub_232B1F66C(a1, a2, v3);
}

__n128 sub_232C3BE08(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_232C3BE24(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 57))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232C3BE78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_232C3BEEC(uint64_t a1, int64_t a2, uint64_t a3)
{
  v174 = a3;
  v6 = sub_232CE9A30();
  sub_232B48F0C();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v152 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v152 - v16;
  v18 = *(a1 + 16);
  v19 = sub_232B26B10();
  v171 = v18;
  if (v18 != v19)
  {
    sub_232CE9A20();
    v23 = sub_232CE9A00();
    v24 = sub_232CEA1C0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_232B02000, v23, v24, "PoemAnalyticsUtilities: Keys count mismatch during aggregation model inference", v25, 2u);
      sub_232C3BAA0();
    }

    (*(v8 + 8))(v11, v6);
    return MEMORY[0x277D84F90];
  }

  if (*(v3 + 56))
  {
    sub_232CE9A20();
    v20 = sub_232CE9A00();
    v21 = sub_232CEA1C0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_232B02000, v20, v21, "PoemAnalyticsUtilities: Couldn't load configuration file, hence not adding any event to PoemAnalytics", v22, 2u);
      sub_232C3BAA0();
    }

    (*(v8 + 8))(v14, v6);
    return MEMORY[0x277D84F90];
  }

  v166 = v8;
  v156 = v17;
  v155 = v6;
  v167 = v3;
  v27 = *(v3 + 8);
  sub_232B124A8(&qword_27DDC80C8, &qword_232CFE248);
  v153 = MEMORY[0x277D84F90];
  v28 = sub_232CE9C60();
  v29 = sub_232B26B10();
  v30 = 0;
  v31 = a2 & 0xC000000000000001;
  v177 = a2 & 0xFFFFFFFFFFFFFF8;
  v163 = a2;
  v175 = a2 + 32;
  v176 = "madConfidenceThreshold";
  v32 = (a1 + 40);
  v169 = a2 & 0xC000000000000001;
  v170 = v29;
  v165 = (a1 + 40);
LABEL_11:
  v33 = &v32[16 * v30];
  v34 = v30;
  v173 = v28;
  while (v29 != v34)
  {
    if (v31)
    {
      v35 = MEMORY[0x2383922C0](v34, v163);
    }

    else
    {
      if (v34 >= *(v177 + 16))
      {
        goto LABEL_71;
      }

      v35 = *(v175 + 8 * v34);
      swift_unknownObjectRetain();
    }

    v30 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      goto LABEL_70;
    }

    v36 = sub_232CE9D20();
    v37 = [v35 featureValueForName_];

    if (v37)
    {
      v38 = [v37 dictionaryValue];
      sub_232C3DBE4();
      v39 = sub_232CE9C40();

      v179 = 1;
      sub_232CEA490();
      if (*(v39 + 16) && (v40 = sub_232B1F268(v181), (v41 & 1) != 0))
      {
        v42 = *(*(v39 + 56) + 8 * v40);
        sub_232B1FA60(v181);

        [v42 doubleValue];
        if (v34 >= v171)
        {
          goto LABEL_72;
        }

        v44 = v43;
        v172 = v42;
        v45 = *(v33 - 1);
        v46 = *v33;

        v168 = sub_232C459C0(v45, v46);
        v48 = v47;
        v50 = v49;
        v52 = v51;
        v28 = v173;

        if (!*(v28 + 16) || (v53 = sub_232BA5CAC(), sub_232B1F160(v53, v54), (v55 & 1) == 0) || (sub_232C3DCA0(), *(v56 + 16) < v44))
        {
          LODWORD(v164) = swift_isUniquelyReferenced_nonNull_native();
          v181[0] = v28;
          v57 = sub_232BA5CAC();
          v162 = sub_232B1F160(v57, v58);
          if (__OFADD__(*(v28 + 16), (v59 & 1) == 0))
          {
            goto LABEL_74;
          }

          v60 = v59;
          sub_232B124A8(&qword_27DDC6768, &qword_232CFE250);
          if (sub_232CEA5C0())
          {
            v61 = sub_232BA5CAC();
            v63 = sub_232B1F160(v61, v62);
            v65 = v60;
            v66 = v60 & 1;
            v32 = v165;
            if (v66 != (v64 & 1))
            {
              goto LABEL_76;
            }
          }

          else
          {
            v65 = v60;
            v32 = v165;
            v63 = v162;
          }

          v28 = v181[0];
          if (v65)
          {
            sub_232C3DCA0();
            *v67 = v68;
            *(v67 + 8) = v48;
            *(v67 + 16) = v44;
            swift_unknownObjectRelease();
          }

          else
          {
            *(v181[0] + 8 * (v63 >> 6) + 64) |= 1 << v63;
            v69 = (*(v28 + 48) + 16 * v63);
            *v69 = v50;
            v69[1] = v52;
            sub_232C3DCA0();
            *v70 = v71;
            *(v70 + 8) = v48;
            *(v70 + 16) = v44;
            v72 = *(v28 + 16);
            v73 = __OFADD__(v72, 1);
            v74 = v72 + 1;
            if (v73)
            {
              goto LABEL_75;
            }

            *(v28 + 16) = v74;
            swift_unknownObjectRelease();
          }

          v31 = v169;
          v29 = v170;
          goto LABEL_11;
        }

        swift_unknownObjectRelease();

        v31 = v169;
        v29 = v170;
      }

      else
      {

        swift_unknownObjectRelease();

        sub_232B1FA60(v181);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    ++v34;
    v33 += 2;
  }

  v176 = sub_232C46380();
  sub_232C4D4C8();
  v76 = v75;
  v78 = v77;
  v180 = MEMORY[0x277D84F90];
  v79 = v28 + 64;
  v80 = 1 << *(v28 + 32);
  v81 = -1;
  if (v80 < 64)
  {
    v81 = ~(-1 << v80);
  }

  v82 = v81 & *(v28 + 64);

  swift_beginAccess();
  swift_beginAccess();
  v84 = 0;
  v85 = (v80 + 63) >> 6;
  v160 = v76;
  v157 = v76 + v78;
  v86 = __OFADD__(v76, v78);
  v161 = v86;
  v154 = (v166 + 8);
  *&v83 = 136315138;
  v152 = v83;
  v159 = v79;
  v158 = (v80 + 63) >> 6;
  while (v82)
  {
LABEL_50:
    v88 = __clz(__rbit64(v82));
    v82 &= v82 - 1;
    v89 = v88 | (v84 << 6);
    v90 = (*(v173 + 48) + 16 * v89);
    v92 = *v90;
    v91 = v90[1];
    v93 = *(v173 + 56) + 24 * v89;
    v94 = *v93;
    v95 = *(v93 + 8);
    v96 = *(v93 + 16);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v97 = sub_232C45710();
    if (v98)
    {
      v99 = v97;
      v100 = v98;
      v177 = v92;
      sub_232B1E0D0(v92, v91, v176);
      v102 = v101;
      if (v101)
      {
      }

      v103 = sub_232C4D440(v177, v91, v99, v100, v176);

      if (v103 == -1)
      {
        v104 = 0;
      }

      else
      {
        v104 = sub_232CEA100();
      }

      if (*v167)
      {
        v117 = sub_232C41374() == 0;
      }

      else
      {
        v117 = 1;
      }

      if (v161)
      {
        goto LABEL_73;
      }

      LODWORD(v170) = v102 != 0;
      LODWORD(v168) = v27 <= v96;
      v118 = v91;
      v175 = v91;
      v119 = v174;
      v172 = v104;
      v166 = *(*(v174 + 16) + 16);
      LODWORD(v171) = v117;
      v120 = sub_232C3DC90();
      sub_232C3CE20(v120, v121, v122);
      v164 = v123;
      v124 = sub_232C3DC90();
      sub_232C3D0C4(v124, v125, v126);
      v127 = sub_232C3DC90();
      sub_232C3D368(v127, v128, v129);
      v130 = sub_232C3DC90();
      sub_232C3D60C(v130, v131, v132);
      v169 = v94;
      sub_232C3D8B0(v177, v118, v119);
      v165 = sub_232CEA100();
      v163 = sub_232CEA100();
      v162 = sub_232CEA100();
      v133 = sub_232CEA100();
      v134 = sub_232CEA100();
      v135 = sub_232CEA100();
      v136 = sub_232CEA100();
      v137 = sub_232CEA100();
      v138 = sub_232CEA100();
      v139 = sub_232CEA100();
      v140 = objc_allocWithZone(MEMORY[0x277CF1670]);
      v141 = v136;
      v85 = v158;
      v142 = sub_232C3D9E8(v165, v163, v162, v133, v134, v135, v141, v137, v138, v139);
      v143 = sub_232CEA040();
      v144 = sub_232CEA040();
      v145 = sub_232CEA0B0();
      v146 = sub_232CEA0B0();
      v147 = sub_232CEA040();
      v148 = objc_allocWithZone(MEMORY[0x277CF1668]);
      v149 = v146;
      v79 = v159;
      v150 = sub_232C3DAB4(v177, v175, v143, v144, v172, v145, v149, v147, v169, v95, 0, v142, 0, 0);

      if (v150)
      {
        MEMORY[0x238391D50](v151);
        if (*((v180 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v180 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_232CEA000();
        }

        sub_232CEA020();
        v153 = v180;
      }
    }

    else
    {

      v105 = v156;
      sub_232CE9A20();

      v106 = sub_232CE9A00();
      v107 = sub_232CEA1C0();

      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v175 = v91;
        v109 = v108;
        v110 = swift_slowAlloc();
        v178 = v110;
        *v109 = v152;
        v111 = sub_232BA5CAC();
        v114 = v85;
        v115 = v79;
        v116 = sub_232BAD2D4(v111, v112, v113);

        *(v109 + 4) = v116;
        v79 = v115;
        v85 = v114;
        _os_log_impl(&dword_232B02000, v106, v107, "PoemAnalyticsUtilities: Unable to find name for id %s while trying to send analytics event", v109, 0xCu);
        sub_232B2040C(v110);
        sub_232C3BAA0();
        MEMORY[0x238393870](v109, -1, -1);

        (*v154)(v156, v155);
      }

      else
      {

        (*v154)(v105, v155);
      }
    }
  }

  while (1)
  {
    v87 = v84 + 1;
    if (__OFADD__(v84, 1))
    {
      break;
    }

    if (v87 >= v85)
    {

      return v153;
    }

    v82 = *(v79 + 8 * v87);
    ++v84;
    if (v82)
    {
      v84 = v87;
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  result = sub_232CEA7A0();
  __break(1u);
  return result;
}

void sub_232C3CB94(uint64_t a1)
{
  v2 = sub_232CE9A30();
  sub_232B48F0C();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232CE9A20();

  v8 = sub_232CE9A00();
  v9 = sub_232CEA1A0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = sub_232B26B10();

    _os_log_impl(&dword_232B02000, v8, v9, "PoemAnalyticsUtilities: Sending %ld events to lighthouse", v10, 0xCu);
    MEMORY[0x238393870](v10, -1, -1);
  }

  else
  {
  }

  (*(v4 + 8))(v7, v2);
  v11 = [BiomeLibrary() TextUnderstanding];
  swift_unknownObjectRelease();
  v12 = [v11 DocumentUnderstanding];
  swift_unknownObjectRelease();
  v13 = [v12 PoemAnalytics];
  swift_unknownObjectRelease();
  v14 = [v13 source];
  v15 = sub_232B26B10();
  for (i = 0; ; ++i)
  {
    if (v15 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x2383922C0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v17 = *(a1 + 8 * i + 32);
    }

    v18 = v17;
    if (__OFADD__(i, 1))
    {
      break;
    }

    [v14 sendEvent_];
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void sub_232C3CE20(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 56);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  v10 = 1 << *(*(a3 + 56) + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v37 = *(a3 + 56);
  swift_bridgeObjectRetain_n();
  v14 = 0;
  v36 = 0;
LABEL_5:
  v15 = v14;
  if (!v12)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v14 = v15;
LABEL_10:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = v16 | (v14 << 6);
    v18 = (*(v37 + 48) + 16 * v17);
    v19 = *v18;
    v20 = v18[1];
    memcpy(__dst, (*(v37 + 56) + 88 * v17), sizeof(__dst));
    v40[0] = v19;
    v40[1] = v20;
    memcpy(v41, __dst, sizeof(v41));

    sub_232C3B5F0(__dst, v38);
    if (sub_232C459C0(v19, v20) == a1 && v21 == a2)
    {
      break;
    }

    v23 = a1;
    v24 = a2;
    v25 = sub_232CEA750();

    if (v25)
    {
      goto LABEL_18;
    }

    sub_232C3DC28(v40);
    v15 = v14;
    a2 = v24;
    a1 = v23;
    if (!v12)
    {
LABEL_7:
      while (1)
      {
        v14 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          return;
        }

        v12 = *(v8 + 8 * v14);
        ++v15;
        if (v12)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_35;
    }
  }

  v23 = a1;
  v24 = a2;

LABEL_18:
  v26 = 0;
  v27 = 0;
  v28 = 1 << *(__dst[0] + 32);
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  else
  {
    v29 = -1;
  }

  v30 = v29 & *(__dst[0] + 64);
  v31 = (v28 + 63) >> 6;
  a2 = v24;
  a1 = v23;
  while (v30)
  {
    v32 = v26;
LABEL_28:
    v33 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v34 = *(*(__dst[0] + 56) + ((v32 << 9) | (8 * v33)));
    v35 = __OFADD__(v27, v34);
    v27 += v34;
    if (v35)
    {
      goto LABEL_36;
    }
  }

  while (1)
  {
    v32 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v32 >= v31)
    {
      sub_232C3DC28(v40);
      if (__OFADD__(v36, v27))
      {
        goto LABEL_37;
      }

      v36 += v27;
      goto LABEL_5;
    }

    v30 = *(__dst[0] + 64 + 8 * v32);
    ++v26;
    if (v30)
    {
      v26 = v32;
      goto LABEL_28;
    }
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_232C3D0C4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 56);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  v10 = 1 << *(*(a3 + 56) + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v37 = *(a3 + 56);
  swift_bridgeObjectRetain_n();
  v14 = 0;
  v36 = 0;
LABEL_5:
  v15 = v14;
  if (!v12)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v14 = v15;
LABEL_10:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = v16 | (v14 << 6);
    v18 = (*(v37 + 48) + 16 * v17);
    v19 = *v18;
    v20 = v18[1];
    memcpy(__dst, (*(v37 + 56) + 88 * v17), sizeof(__dst));
    v40[0] = v19;
    v40[1] = v20;
    memcpy(v41, __dst, sizeof(v41));

    sub_232C3B5F0(__dst, v38);
    if (sub_232C459C0(v19, v20) == a1 && v21 == a2)
    {
      break;
    }

    v23 = a1;
    v24 = a2;
    v25 = sub_232CEA750();

    if (v25)
    {
      goto LABEL_18;
    }

    sub_232C3DC28(v40);
    v15 = v14;
    a2 = v24;
    a1 = v23;
    if (!v12)
    {
LABEL_7:
      while (1)
      {
        v14 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          return;
        }

        v12 = *(v8 + 8 * v14);
        ++v15;
        if (v12)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_35;
    }
  }

  v23 = a1;
  v24 = a2;

LABEL_18:
  v26 = 0;
  v27 = 0;
  v28 = 1 << *(__dst[3] + 32);
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  else
  {
    v29 = -1;
  }

  v30 = v29 & *(__dst[3] + 64);
  v31 = (v28 + 63) >> 6;
  a2 = v24;
  a1 = v23;
  while (v30)
  {
    v32 = v26;
LABEL_28:
    v33 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v34 = *(*(__dst[3] + 56) + ((v32 << 9) | (8 * v33)));
    v35 = __OFADD__(v27, v34);
    v27 += v34;
    if (v35)
    {
      goto LABEL_36;
    }
  }

  while (1)
  {
    v32 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v32 >= v31)
    {
      sub_232C3DC28(v40);
      if (__OFADD__(v36, v27))
      {
        goto LABEL_37;
      }

      v36 += v27;
      goto LABEL_5;
    }

    v30 = *(__dst[3] + 64 + 8 * v32);
    ++v26;
    if (v30)
    {
      v26 = v32;
      goto LABEL_28;
    }
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_232C3D368(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 56);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  v10 = 1 << *(*(a3 + 56) + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v37 = *(a3 + 56);
  swift_bridgeObjectRetain_n();
  v14 = 0;
  v36 = 0;
LABEL_5:
  v15 = v14;
  if (!v12)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v14 = v15;
LABEL_10:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = v16 | (v14 << 6);
    v18 = (*(v37 + 48) + 16 * v17);
    v19 = *v18;
    v20 = v18[1];
    memcpy(__dst, (*(v37 + 56) + 88 * v17), sizeof(__dst));
    v40[0] = v19;
    v40[1] = v20;
    memcpy(v41, __dst, sizeof(v41));

    sub_232C3B5F0(__dst, v38);
    if (sub_232C459C0(v19, v20) == a1 && v21 == a2)
    {
      break;
    }

    v23 = a1;
    v24 = a2;
    v25 = sub_232CEA750();

    if (v25)
    {
      goto LABEL_18;
    }

    sub_232C3DC28(v40);
    v15 = v14;
    a2 = v24;
    a1 = v23;
    if (!v12)
    {
LABEL_7:
      while (1)
      {
        v14 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          return;
        }

        v12 = *(v8 + 8 * v14);
        ++v15;
        if (v12)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_35;
    }
  }

  v23 = a1;
  v24 = a2;

LABEL_18:
  v26 = 0;
  v27 = 0;
  v28 = 1 << *(__dst[4] + 32);
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  else
  {
    v29 = -1;
  }

  v30 = v29 & *(__dst[4] + 64);
  v31 = (v28 + 63) >> 6;
  a2 = v24;
  a1 = v23;
  while (v30)
  {
    v32 = v26;
LABEL_28:
    v33 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v34 = *(*(__dst[4] + 56) + ((v32 << 9) | (8 * v33)));
    v35 = __OFADD__(v27, v34);
    v27 += v34;
    if (v35)
    {
      goto LABEL_36;
    }
  }

  while (1)
  {
    v32 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v32 >= v31)
    {
      sub_232C3DC28(v40);
      if (__OFADD__(v36, v27))
      {
        goto LABEL_37;
      }

      v36 += v27;
      goto LABEL_5;
    }

    v30 = *(__dst[4] + 64 + 8 * v32);
    ++v26;
    if (v30)
    {
      v26 = v32;
      goto LABEL_28;
    }
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_232C3D60C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 56);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  v10 = 1 << *(*(a3 + 56) + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v37 = *(a3 + 56);
  swift_bridgeObjectRetain_n();
  v14 = 0;
  v36 = 0;
LABEL_5:
  v15 = v14;
  if (!v12)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v14 = v15;
LABEL_10:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = v16 | (v14 << 6);
    v18 = (*(v37 + 48) + 16 * v17);
    v19 = *v18;
    v20 = v18[1];
    memcpy(__dst, (*(v37 + 56) + 88 * v17), sizeof(__dst));
    v40[0] = v19;
    v40[1] = v20;
    memcpy(v41, __dst, sizeof(v41));

    sub_232C3B5F0(__dst, v38);
    if (sub_232C459C0(v19, v20) == a1 && v21 == a2)
    {
      break;
    }

    v23 = a1;
    v24 = a2;
    v25 = sub_232CEA750();

    if (v25)
    {
      goto LABEL_18;
    }

    sub_232C3DC28(v40);
    v15 = v14;
    a2 = v24;
    a1 = v23;
    if (!v12)
    {
LABEL_7:
      while (1)
      {
        v14 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          return;
        }

        v12 = *(v8 + 8 * v14);
        ++v15;
        if (v12)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_35;
    }
  }

  v23 = a1;
  v24 = a2;

LABEL_18:
  v26 = 0;
  v27 = 0;
  v28 = 1 << *(__dst[2] + 32);
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  else
  {
    v29 = -1;
  }

  v30 = v29 & *(__dst[2] + 64);
  v31 = (v28 + 63) >> 6;
  a2 = v24;
  a1 = v23;
  while (v30)
  {
    v32 = v26;
LABEL_28:
    v33 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v34 = *(*(__dst[2] + 56) + ((v32 << 9) | (8 * v33)));
    v35 = __OFADD__(v27, v34);
    v27 += v34;
    if (v35)
    {
      goto LABEL_36;
    }
  }

  while (1)
  {
    v32 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v32 >= v31)
    {
      sub_232C3DC28(v40);
      if (__OFADD__(v36, v27))
      {
        goto LABEL_37;
      }

      v36 += v27;
      goto LABEL_5;
    }

    v30 = *(__dst[2] + 64 + 8 * v32);
    ++v26;
    if (v30)
    {
      v26 = v32;
      goto LABEL_28;
    }
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_232C3D8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 64);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = sub_232B1F160(a1, a2);
  if ((v8 & 1) == 0)
  {
LABEL_15:

    return 0;
  }

  v9 = *(*(v6 + 56) + 8 * v7);

  v11 = 0;
  v12 = 0;
  v13 = 1 << *(v9 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v9 + 64);
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = v11;
LABEL_12:
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v19 = *(*(v9 + 56) + ((v17 << 9) | (8 * v18)));
    v20 = __OFADD__(v12, v19);
    v12 += v19;
    if (v20)
    {
      __break(1u);
      goto LABEL_15;
    }
  }

  while (1)
  {
    v17 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v17 >= v16)
    {

      return v12;
    }

    v15 = *(v9 + 64 + 8 * v17);
    ++v11;
    if (v15)
    {
      v11 = v17;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

id sub_232C3D9E8(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v11 = v10;
  v21 = [v11 initWithNumOfFacesInMessages:a1 numOfFacesOnDevice:a2 numOfNamedFacesOnDevice:a3 numOfConversationThreads:a4 numOfNamedEntityMentions:a5 numOfSenderMentions:a6 numOfReceiverMentions:a7 numOfPronounMentions:a8 numOfImagesShared:a9 numOfLinguisticMentions:a10];

  return v21;
}

id sub_232C3DAB4(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, int a11, void *a12, void *a13, void *a14)
{
  if (a2)
  {
    v17 = sub_232CE9D20();
  }

  else
  {
    v17 = 0;
  }

  if (a10)
  {
    v18 = sub_232CE9D20();
  }

  else
  {
    v18 = 0;
  }

  LODWORD(v20) = a11;
  v21 = [v22 initWithVisualIdentifier:v17 prediction:a3 named:a4 shadowMatch:a5 threshold:a6 predictionConfidence:a7 onboarding:a8 nameMegadomeIdentifier:v18 nameSource:v20 features:a12 accepted:a13 rejected:a14];

  return v21;
}

unint64_t sub_232C3DBE4()
{
  result = qword_2814DF8C0;
  if (!qword_2814DF8C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814DF8C0);
  }

  return result;
}

uint64_t sub_232C3DC28(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC8098, &qword_232CFE0E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232C3DCC0()
{
  sub_232B26C44();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_232CE9A30();
  v0[4] = v3;
  v0[5] = *(v3 - 8);
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v4 = sub_232CE9760();
  v0[9] = v4;
  v0[10] = *(v4 - 8);
  v0[11] = swift_task_alloc();
  v5 = sub_232B5138C();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_232C3DDE8(uint64_t a1)
{
  v2 = v1[3];
  if (!v2)
  {
    sub_232CE9A20();
    v20 = sub_232CE9A00();
    v21 = sub_232CEA1A0();
    v22 = os_log_type_enabled(v20, v21);
    v24 = v1[5];
    v23 = v1[6];
    v25 = v1[4];
    if (v22)
    {
      *sub_232BA73DC() = 0;
      sub_232C31DC4(&dword_232B02000, v26, v27, "Unable to initialize PoemAggregationModelHandler");
      sub_232BA6A84();
    }

    (*(v24 + 8))(v23, v25);
    goto LABEL_18;
  }

  if ((*(v2 + 152) & 1) == 0 && *(v2 + 16))
  {
    v4 = v1[10];
    v3 = v1[11];
    v5 = v1[9];
    (*(v4 + 104))(v3, *MEMORY[0x277D71418], v5);

    v6 = sub_232CE9750();
    (*(v4 + 8))(v3, v5);
    if (v6)
    {
      v7 = swift_task_alloc();
      v1[12] = v7;
      *v7 = v1;
      v7[1] = sub_232C3E0C0;
      v9 = v1[2];
      v8 = v1[3];

      return sub_232C3E3EC(v9, v8);
    }

    sub_232CE9A20();
    v11 = sub_232CE9A00();
    v28 = sub_232CEA1A0();
    v29 = sub_232C40B1C(v28);
    v14 = v1[8];
    v15 = v1[4];
    v16 = v1[5];
    if (v29)
    {
      *sub_232BA73DC() = 0;
      v19 = "Not running Autonaming because learning from Messages is disabled";
      goto LABEL_10;
    }

LABEL_16:

    goto LABEL_17;
  }

  sub_232CE9A20();
  v11 = sub_232CE9A00();
  v12 = sub_232CEA1A0();
  v13 = sub_232C40B1C(v12);
  v14 = v1[7];
  v15 = v1[4];
  v16 = v1[5];
  if (!v13)
  {
    goto LABEL_16;
  }

  *sub_232BA73DC() = 0;
  v19 = "Trial assets not found on device, bailing out";
LABEL_10:
  sub_232C40B68(&dword_232B02000, v17, v18, v19);
  sub_232BA6A84();

LABEL_17:
  (*(v16 + 8))(v14, v15);
LABEL_18:

  sub_232B26CF4();

  return v30();
}

uint64_t sub_232C3E0C0()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232BC1BAC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 104) = v3;

  v4 = sub_232B5138C();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_232C3E1A8()
{
  sub_232B26C44();
  sub_232C4D86C();
  v2 = v1;
  v0[14] = v1;

  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_232C3E254;
  v4 = v0[2];
  v5 = v0[3];

  return sub_232C3EA68(v2, v4, v5);
}

uint64_t sub_232C3E254()
{
  sub_232B26C44();
  sub_232B26C70();

  v0 = sub_232B5138C();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_232C3E340()
{
  sub_232C39390(*(v0 + 112), 0);

  sub_232B26CF4();

  return v1();
}

uint64_t sub_232C3E3EC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_232CE9A30();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232C3E4AC, 0, 0);
}

uint64_t sub_232C3E4AC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  v0[8] = v3;
  v4 = sub_232CE9FD0();
  [v3 setFetchAttributes_];

  v5 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v6 = v3;
  v7 = sub_232C409AC(0xD00000000000001FLL, 0x8000000232D0A2D0, v3);
  v0[9] = v7;
  v8 = swift_task_alloc();
  v0[10] = v8;
  v8[2] = v2;
  v8[3] = v1;
  v8[4] = v7;
  v9 = swift_task_alloc();
  v0[11] = v9;
  v10 = sub_232B124A8(&qword_27DDC80D0, &unk_232CFEB50);
  *v9 = v0;
  v9[1] = sub_232C3E654;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000021, 0x8000000232D0A2F0, sub_232C40A10, v8, v10);
}

uint64_t sub_232C3E654()
{
  sub_232B26C44();
  sub_232B26C70();

  v0 = sub_232B5138C();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_232C3E75C(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  v4 = 1.0;
  if (v2 && (*(v2 + 152) & 1) == 0)
  {
    v4 = *(v2 + 144);
  }

  sub_232CE9A20();
  v5 = sub_232CE9A00();
  v6 = sub_232CEA1A0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_232BC1F80();
    *v7 = 134217984;
    *(v7 + 4) = v4;
    _os_log_impl(&dword_232B02000, v5, v6, "Poem will ignore messages older than %f years", v7, 0xCu);
    sub_232BA6A84();
  }

  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = *(v1 + 40);

  (*(v9 + 8))(v8, v10);
  v11 = sub_232B26B10();
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v13 = v11;
    v24 = MEMORY[0x277D84F90];
    result = sub_232CEA580();
    if (v13 < 0)
    {
LABEL_31:
      __break(1u);
      return result;
    }

    v15 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x2383922C0](v15, v3);
      }

      else
      {
        v16 = *(v3 + 8 * v15 + 32);
      }

      v17 = v16;
      ++v15;
      type metadata accessor for PoemMessage(0);
      swift_allocObject();
      sub_232C46DA8(v17, 0xD000000000000028, 0x8000000232D01E10);
      sub_232CEA560();
      sub_232C40B5C();
      sub_232CEA590();
      sub_232C40B5C();
      sub_232CEA5A0();
      sub_232CEA570();
    }

    while (v13 != v15);

    v18 = v24;
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  v19 = v4 * 31536000.0;
  result = sub_232B26B10();
  v20 = result;
  for (i = 0; v20 != i; ++i)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x2383922C0](i, v18);
    }

    else
    {
      if (i >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (sub_232C475D8(v19))
    {
      sub_232CEA560();
      sub_232C40B5C();
      sub_232CEA590();
      sub_232C40B5C();
      sub_232CEA5A0();
      result = sub_232CEA570();
    }

    else
    {
    }
  }

  v22 = *(v1 + 64);

  v23 = *(v1 + 8);

  return v23(v12);
}

uint64_t sub_232C3EA68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = sub_232CE9A30();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232C3EB44, 0, 0);
}

void sub_232C3EB44(uint64_t a1)
{
  v60 = v1;
  v2 = *(v1 + 112);
  if (!v2)
  {
    sub_232CE9A20();
    v11 = sub_232CE9A00();
    v12 = sub_232CEA1C0();
    v13 = os_log_type_enabled(v11, v12);
    v15 = *(v1 + 128);
    v14 = *(v1 + 136);
    v16 = *(v1 + 120);
    if (v13)
    {
      *sub_232BA73DC() = 0;
      sub_232C31DC4(&dword_232B02000, v17, v18, "Unable to populate extractions because model handler wasn't initialized");
      sub_232BA6A84();
    }

    (*(v15 + 8))(v14, v16);
    goto LABEL_45;
  }

  *(v1 + 160) = *(v2 + 112);
  if (*(v2 + 152))
  {

    sub_232CE9A20();
    v3 = sub_232CE9A00();
    v4 = sub_232CEA1C0();
    v5 = sub_232C40B1C(v4);
    v6 = *(v1 + 144);
    v7 = *(v1 + 120);
    v8 = *(v1 + 128);
    if (v5)
    {
      *sub_232BA73DC() = 0;
      sub_232C40B68(&dword_232B02000, v9, v10, "Unable to populate extractions because model configuration wasn't loaded");
      sub_232BA6A84();
    }

    else
    {
    }

    (*(v8 + 8))(v6, v7);
    goto LABEL_45;
  }

  v19 = *(v1 + 96);
  *(v1 + 168) = *(v2 + 136);
  sub_232B13F74(v19 + 16, v1 + 16);
  v20 = *(v19 + 16);
  *(v1 + 176) = v20;
  v21 = *(v20 + 32);
  *(v1 + 288) = v21;
  v22 = 1 << v21;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & *(v20 + 64);

  v25 = 0;
  if (v24)
  {
LABEL_12:
    v26 = *(v1 + 176);
    goto LABEL_17;
  }

  do
  {
LABEL_13:
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
LABEL_51:
      __break(1u);
      return;
    }

    v26 = *(v1 + 176);
    if (v27 >= (((1 << *(v1 + 288)) + 63) >> 6))
    {

LABEL_45:

      sub_232B26CF4();

      v56();
      return;
    }

    v24 = *(v26 + 8 * v27 + 64);
    ++v25;
  }

  while (!v24);
  v25 = v27;
LABEL_17:
  *(v1 + 184) = v24;
  *(v1 + 192) = v25;
  v28 = sub_232C40AFC(v26, v25);
  sub_232B13F74(v28, v1 + 40);
  *(v1 + 208) = *(v20 + 32);
  *(v1 + 216) = sub_232B26B10();

  v29 = 0;
  while (2)
  {
    while (2)
    {
      v30 = *(v1 + 208);
      if (v29 == *(v1 + 216))
      {
        v20 = *(v1 + 200);

        v25 = *(v1 + 192);
        v24 = (*(v1 + 184) - 1) & *(v1 + 184);
        if (!v24)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      if ((v30 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x2383922C0](v29);
      }

      else
      {
        if (v29 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v31 = *(v30 + 8 * v29 + 32);
      }

      *(v1 + 224) = v31;
      *(v1 + 232) = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      if (!sub_232C478A0())
      {
        goto LABEL_37;
      }

      v32 = *(v1 + 168);

      v33 = sub_232C4E020(v32);

      if (!(v33 >> 62))
      {
        if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

LABEL_36:

LABEL_37:

        ++v29;
        continue;
      }

      break;
    }

    if (!sub_232CEA610())
    {
      goto LABEL_36;
    }

LABEL_26:
    sub_232CE9A20();

    v34 = sub_232CE9A00();
    v35 = sub_232CEA1B0();

    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v1 + 152);
    v39 = *(v1 + 120);
    v38 = *(v1 + 128);
    if (v36)
    {
      v58 = *(v1 + 120);
      v40 = sub_232BC1F80();
      v41 = swift_slowAlloc();
      v59 = v41;
      *v40 = 136315138;
      v42 = sub_232BA4DEC(0, &qword_27DDC7908, 0x277CF1680);
      v43 = MEMORY[0x238391D80](v33, v42);
      v57 = v37;
      v45 = sub_232BAD2D4(v43, v44, &v59);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_232B02000, v34, v35, "Found MAD extractions: %s", v40, 0xCu);
      sub_232B2040C(v41);
      sub_232BA6A84();
      sub_232BA6A84();

      (*(v38 + 8))(v57, v58);
    }

    else
    {

      (*(v38 + 8))(v37, v39);
    }

    v46 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_madExtractions;
    swift_beginAccess();
    *(v31 + v46) = v33;

    sub_232C4C7B4();
    v48 = v47;
    *(v1 + 240) = v47;

    v49 = *(v48 + 16);
    *(v1 + 248) = v49;
    if (!v49)
    {
LABEL_33:

      v51 = sub_232C4EC70();
      sub_232C47C00(v51);

      v29 = *(v1 + 232);
      continue;
    }

    break;
  }

  v50 = 0;
  while ((sub_232C40B38(v50) & 1) != 0)
  {
    v50 = *(v1 + 256) + 1;
    if (v50 == *(v1 + 248))
    {
      goto LABEL_33;
    }
  }

  v52 = swift_task_alloc();
  *(v1 + 272) = v52;
  *v52 = v1;
  v53 = sub_232C40ACC(v52);

  sub_232C4003C(v53, v54, v55);
}

uint64_t sub_232C3F144()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232BC1BAC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 280) = v3;

  v4 = sub_232B5138C();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_232C3F22C()
{
  v39 = v0;
  *(v0 + 88) = *(v0 + 280);
  sub_232C4E984();
  sub_232C5E360(v1);
  sub_232C47C00(*(v0 + 88));

  while (1)
  {
    v2 = *(v0 + 256) + 1;
    if (v2 == *(v0 + 248))
    {
      break;
    }

LABEL_28:
    if ((sub_232C40B38(v2) & 1) == 0)
    {

      v28 = swift_task_alloc();
      *(v0 + 272) = v28;
      *v28 = v0;
      v29 = sub_232C40ACC(v28);

      sub_232C4003C(v29, v30, v31);
      return;
    }
  }

LABEL_3:

  v3 = sub_232C4EC70();
  sub_232C47C00(v3);

  for (i = *(v0 + 232); ; i = 0)
  {
    while (1)
    {
      v5 = *(v0 + 208);
      if (i == *(v0 + 216))
      {
        break;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x2383922C0](i);
      }

      else
      {
        if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v12 = *(v5 + 8 * i + 32);
      }

      *(v0 + 224) = v12;
      *(v0 + 232) = i + 1;
      if (__OFADD__(i, 1))
      {
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        return;
      }

      if (sub_232C478A0())
      {
        v13 = *(v0 + 168);

        v14 = sub_232C4E020(v13);

        if (v14 >> 62)
        {
          if (sub_232CEA610())
          {
LABEL_23:
            sub_232CE9A20();

            v15 = sub_232CE9A00();
            v16 = sub_232CEA1B0();

            v36 = v16;
            v17 = os_log_type_enabled(v15, v16);
            v18 = *(v0 + 152);
            v19 = *(v0 + 128);
            v37 = *(v0 + 120);
            if (v17)
            {
              v35 = *(v0 + 152);
              buf = sub_232BC1F80();
              v34 = swift_slowAlloc();
              v38 = v34;
              *buf = 136315138;
              v20 = sub_232BA4DEC(0, &qword_27DDC7908, 0x277CF1680);
              v21 = MEMORY[0x238391D80](v14, v20);
              v23 = sub_232BAD2D4(v21, v22, &v38);

              *(buf + 4) = v23;
              _os_log_impl(&dword_232B02000, v15, v36, "Found MAD extractions: %s", buf, 0xCu);
              sub_232B2040C(v34);
              sub_232BA6A84();
              sub_232BA6A84();

              (*(v19 + 8))(v35, v37);
            }

            else
            {

              (*(v19 + 8))(v18, v37);
            }

            v24 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_madExtractions;
            swift_beginAccess();
            *(v12 + v24) = v14;

            sub_232C4C7B4();
            v26 = v25;
            *(v0 + 240) = v25;

            v27 = *(v26 + 16);
            *(v0 + 248) = v27;
            if (v27)
            {
              v2 = 0;
              goto LABEL_28;
            }

            goto LABEL_3;
          }
        }

        else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }
      }

      ++i;
    }

    v6 = *(v0 + 200);

    v7 = *(v0 + 192);
    v8 = (*(v0 + 184) - 1) & *(v0 + 184);
    if (!v8)
    {
      break;
    }

    v9 = *(v0 + 176);
LABEL_11:
    *(v0 + 184) = v8;
    *(v0 + 192) = v7;
    v11 = sub_232C40AFC(v9, v7);
    sub_232B13F74(v11, v0 + 40);
    *(v0 + 208) = *(v6 + 32);
    *(v0 + 216) = sub_232B26B10();
  }

  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    v9 = *(v0 + 176);
    if (v10 >= (((1 << *(v0 + 288)) + 63) >> 6))
    {
      break;
    }

    v8 = *(v9 + 8 * v10 + 64);
    ++v7;
    if (v8)
    {
      v7 = v10;
      goto LABEL_11;
    }
  }

  sub_232B26CF4();

  v32();
}

uint64_t sub_232C3F700(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_232B124A8(&qword_27DDC80D8, &unk_232CFE2D0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  sub_232C3F9EC(a4, sub_232C40A1C, v12);
}

uint64_t sub_232C3F864(uint64_t a1)
{
  v2 = sub_232CE9A30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232CE9A20();
  v6 = sub_232CE9A00();
  v7 = sub_232CEA1A0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_232B02000, v6, v7, "Received a result in the completion handler, calling continuation.resume in PoemOnBoardHandler", v8, 2u);
    MEMORY[0x238393870](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = MEMORY[0x277D84F90];
  if (a1)
  {
    v9 = a1;
  }

  v11[1] = v9;

  sub_232B124A8(&qword_27DDC80D8, &unk_232CFE2D0);
  return sub_232CEA060();
}

uint64_t sub_232C3F9EC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x277D84F90];
  v15 = sub_232C40A98;
  v16 = v6;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_232C3FC14;
  v14 = &unk_284813720;
  v7 = _Block_copy(&v11);

  [a1 setFoundItemsHandler_];
  _Block_release(v7);
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = v6;
  v15 = sub_232C40AB8;
  v16 = v8;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_232C3FFD0;
  v14 = &unk_284813770;
  v9 = _Block_copy(&v11);

  [a1 setCompletionHandler_];
  _Block_release(v9);
  [a1 start];
}

uint64_t sub_232C3FBB4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  sub_232C5E4D0(v2);
  return swift_endAccess();
}

uint64_t sub_232C3FC14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_232BA4DEC(0, &qword_27DDC6928, 0x277CC34B0);
  v3 = sub_232CE9FE0();

  v2(v3);
}

void sub_232C3FC98(void *a1, void (*a2)(__n128), uint64_t a3, uint64_t a4)
{
  v7 = sub_232CE9A30();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  if (a1)
  {
    v14 = a1;
    sub_232CE9A20();
    v15 = a1;
    v16 = sub_232CE9A00();
    v17 = sub_232CEA1C0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v31 = a2;
      v19 = v18;
      v20 = swift_slowAlloc();
      v30 = a3;
      v21 = v20;
      v32[0] = v20;
      *v19 = 136315138;
      swift_getErrorValue();
      v22 = sub_232CEA7B0();
      v24 = sub_232BAD2D4(v22, v23, v32);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_232B02000, v16, v17, "Received error %s in query completion handler in PoemOnBoardHandler", v19, 0xCu);
      sub_232B2040C(v21);
      MEMORY[0x238393870](v21, -1, -1);
      v25 = v19;
      a2 = v31;
      MEMORY[0x238393870](v25, -1, -1);
    }

    (*(v8 + 8))(v13, v7);
    (a2)(0);
  }

  else
  {
    sub_232CE9A20();

    v26 = sub_232CE9A00();
    v27 = sub_232CEA1A0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 134217984;
      swift_beginAccess();
      *(v28 + 4) = sub_232B26B10();

      _os_log_impl(&dword_232B02000, v26, v27, "Finished fetching %ld messages indexed by Spotlight in PoemOnBoardHandler", v28, 0xCu);
      MEMORY[0x238393870](v28, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))(v10, v7);
    swift_beginAccess();

    (a2)(v29);
  }
}

void sub_232C3FFD0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_232C4003C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  v4 = sub_232CE9A30();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232C40100, 0, 0);
}

uint64_t sub_232C40100()
{
  super_class = v0[6].super_class;
  v2 = v0[5].super_class;
  v3 = type metadata accessor for DURequestContentType();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = 512;
  v0[4].receiver = v4;
  v0[4].super_class = v3;
  v5 = super_class;
  v6 = objc_msgSendSuper2(v0 + 4, sel_init);
  v7 = objc_allocWithZone(type metadata accessor for DURequest());
  v0[8].super_class = DURequest.init(client:contentType:strategies:)(v5, v6, 0);
  v0[9].receiver = sub_232C4DDF4(v2);
  v8 = swift_task_alloc();
  v0[9].super_class = v8;
  *v8 = v0;
  *(v8 + 1) = sub_232C4022C;

  return sub_232B22E24();
}

uint64_t sub_232C4022C()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232BC1BAC();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 160) = v4;
  *(v2 + 168) = v0;

  if (v0)
  {
    v5 = sub_232C40500;
  }

  else
  {
    v5 = sub_232C40330;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_232C40330()
{
  v18 = v0;
  v1 = *(v0 + 160);
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_poem;
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_poem, v0 + 40);
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = MEMORY[0x277D84F90];
    v15 = MEMORY[0x277D84F90];
    v5 = sub_232B26B10();

    for (i = 0; ; ++i)
    {
      if (v5 == i)
      {
        v10 = *(v0 + 160);
        v11 = *(v0 + 144);

        goto LABEL_16;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2383922C0](i, v3);
      }

      else
      {
        if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v7 = *(v3 + 8 * i + 32);
      }

      v8 = v7;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v9 = *(v0 + 96);
      v16 = v7;
      sub_232C406D4(&v16, v9, &v17);

      if (v17)
      {
        MEMORY[0x238391D50]();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_232CEA000();
        }

        sub_232CEA020();
        v4 = v15;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    v12 = *(v0 + 160);
    v13 = *(v0 + 144);

    v4 = MEMORY[0x277D84F90];
LABEL_16:

    v14 = *(v0 + 8);

    v14(v4);
  }
}

uint64_t sub_232C40500(uint64_t a1)
{
  v23 = v1;
  v2 = *(v1 + 168);
  sub_232CE9A20();
  v3 = v2;
  v4 = sub_232CE9A00();
  v5 = sub_232CEA1C0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 168);
    v7 = *(v1 + 120);
    v21 = *(v1 + 128);
    v8 = *(v1 + 112);
    v9 = sub_232BC1F80();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = sub_232CEA7B0();
    v13 = sub_232BAD2D4(v11, v12, &v22);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_232B02000, v4, v5, "Failed to retrieve a response due to error: %s", v9, 0xCu);
    sub_232B2040C(v10);
    sub_232BA6A84();
    sub_232BA6A84();

    (*(v7 + 8))(v21, v8);
  }

  else
  {
    v15 = *(v1 + 120);
    v14 = *(v1 + 128);
    v16 = *(v1 + 112);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v1 + 144);

  v18 = *(v1 + 8);
  v19 = MEMORY[0x277D84F90];

  return v18(v19);
}

id sub_232C406D4@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_232CE9A30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = sub_232C49E98(*a1);
  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = v11;
  v14 = v12;
  v15 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v15 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

    sub_232CE9A20();
    v28 = sub_232CE9A00();
    v29 = sub_232CEA1C0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_232B02000, v28, v29, "DUPoemImplementation returned an empty span as name", v30, 2u);
      MEMORY[0x238393870](v30, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    goto LABEL_13;
  }

  v16 = sub_232C455E0(v11);
  if (!v17)
  {

LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  v18 = v17;
  v32 = v16;
  sub_232C49EA4(v10);
  if (v19)
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v33 = *(a2 + 40);
    sub_232B1FAF0();
    *(a2 + 40) = v33;
    swift_endAccess();
  }

  HIDWORD(v31) = [v10 type];
  [v10 confidenceScore];
  v20 = sub_232CEA0B0();
  v21 = sub_232C49F10(v10);
  v23 = v22;
  v24 = [v10 role];
  [v10 isCoref];
  v25 = sub_232CEA040();
  v26 = objc_allocWithZone(MEMORY[0x277CF1680]);
  result = sub_232BEC84C(HIDWORD(v31), v13, v14, v32, v18, v20, v21, v23, v24, v25);
LABEL_14:
  *a3 = result;
  return result;
}

id sub_232C409AC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_232CE9D20();

  v6 = [v3 initWithQueryString:v5 queryContext:a3];

  return v6;
}

uint64_t sub_232C40A1C(uint64_t a1)
{
  sub_232B124A8(&qword_27DDC80D8, &unk_232CFE2D0);

  return sub_232C3F864(a1);
}

uint64_t sub_232C40AA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_232C40AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 + 56) + ((a2 << 9) | (8 * __clz(v2))));
  *(v3 + 200) = v4;
  return v4 + 32;
}

BOOL sub_232C40B1C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_232C40B38@<X0>(uint64_t a1@<X8>)
{
  v1[32] = a1;
  v1[33] = *(v1[30] + 16 * a1 + 32);

  return sub_232C480A8();
}

void sub_232C40B68(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

id PoemStatsDatabase.__allocating_init(dbURL:isFrozen:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = objc_allocWithZone(v2);
  return PoemStatsDatabase.init(dbURL:isFrozen:)(a1, v3);
}

id PoemStatsRecord.init(cooccurrenceId:entityName:entityId:photoId:associatedFeatureData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = &v10[OBJC_IVAR____TtC21DocumentUnderstanding15PoemStatsRecord_cooccurrenceId];
  *v11 = a1;
  *(v11 + 1) = a2;
  v12 = &v10[OBJC_IVAR____TtC21DocumentUnderstanding15PoemStatsRecord_entityName];
  *v12 = a3;
  *(v12 + 1) = a4;
  v13 = &v10[OBJC_IVAR____TtC21DocumentUnderstanding15PoemStatsRecord_entityId];
  *v13 = a5;
  *(v13 + 1) = a6;
  v14 = &v10[OBJC_IVAR____TtC21DocumentUnderstanding15PoemStatsRecord_photoId];
  *v14 = a7;
  *(v14 + 1) = a8;
  v15 = &v10[OBJC_IVAR____TtC21DocumentUnderstanding15PoemStatsRecord_associatedFeatureData];
  *v15 = a9;
  *(v15 + 1) = a10;
  v17.receiver = v10;
  v17.super_class = type metadata accessor for PoemStatsRecord();
  return objc_msgSendSuper2(&v17, sel_init);
}

id PoemStatsRecord.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PoemStatsDatabase.init(dbURL:isFrozen:)(uint64_t a1, char a2)
{
  v4 = sub_232CE8C00();
  sub_232B48F0C();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_232B20704();
  v10 = v9 - v8;
  sub_232CE9A30();
  sub_232B48F0C();
  v32 = v12;
  v33 = v11;
  MEMORY[0x28223BE20](v11);
  sub_232B20704();
  v15 = v14 - v13;
  sub_232CE9A20();
  (*(v6 + 16))(v10, a1, v4);
  v16 = sub_232CE9A00();
  v17 = sub_232CEA1A0();
  if (os_log_type_enabled(v16, v17))
  {
    v31 = a1;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v37 = v30;
    *v29 = 136315138;
    v18 = sub_232CE8B60();
    v19 = v4;
    v21 = v20;
    v22 = sub_232C42B3C();
    v2(v22, v19);
    v23 = sub_232BAD2D4(v18, v21, &v37);
    v4 = v19;

    *(v29 + 4) = v23;
    _os_log_impl(&dword_232B02000, v16, v17, "PoemStatsDatabase: Initializing db at %s", v29, 0xCu);
    sub_232B2040C(v30);
    sub_232B4ACF0();
    MEMORY[0x238393870]();
    a1 = v31;
    sub_232B4ACF0();
    MEMORY[0x238393870]();
  }

  else
  {

    v24 = sub_232C42B3C();
    v2(v24, v4);
  }

  (*(v32 + 8))(v15, v33);
  sub_232CE8B60();
  v25 = objc_allocWithZone(type metadata accessor for SQLiteDatabase(0));
  SQLiteDatabase.init(dbPath:migrationsList:isFrozen:)();
  *&v35[OBJC_IVAR____TtC21DocumentUnderstanding17PoemStatsDatabase_database] = v26;
  v35[OBJC_IVAR____TtC21DocumentUnderstanding17PoemStatsDatabase_isFrozen] = a2 & 1;
  v36.receiver = v35;
  v36.super_class = type metadata accessor for PoemStatsDatabase();
  v27 = objc_msgSendSuper2(&v36, sel_init);
  v2(a1, v4);
  return v27;
}

void sub_232C41148()
{
  v1 = v0;
  v2 = sub_232CE9A30();
  sub_232B48F0C();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_232B20704();
  v8 = v7 - v6;
  if ((*(v1 + OBJC_IVAR____TtC21DocumentUnderstanding17PoemStatsDatabase_isFrozen) & 1) == 0)
  {
    sub_232CE9A20();
    v9 = sub_232CE9A00();
    v10 = sub_232CEA1A0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = sub_232BA73DC();
      *v11 = 0;
      _os_log_impl(&dword_232B02000, v9, v10, "PoemStatsDatabase: Clearing all the records", v11, 2u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    (*(v4 + 8))(v8, v2);
    sub_232BA63D0();
    sub_232C60274();
  }
}

uint64_t sub_232C412AC()
{
  sub_232BC1ECC();
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x277D84F90];
  v1 = (v0 + 16);

  sub_232BA63D0();
  sub_232C60274();

  sub_232BA63D0();
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_232C41374()
{
  sub_232BC1ECC();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = (v0 + 16);

  sub_232BA63D0();
  sub_232C60274();

  sub_232BA63D0();
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void sub_232C4142C(unint64_t a1, uint64_t a2)
{
  sub_232C42B78();
  v5 = swift_allocObject();
  sub_232C42AE8(v5);
  sub_232B26D50();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_232C60274();

  sub_232BA63D0();
  swift_beginAccess();
  sub_232C42AB4();
  sub_232B26744(v8, v7, &qword_27DDC8118, &qword_232CFE2E0);

  if (v9)
  {
    sub_232C42B54();

    sub_232C42A80();

    sub_232C42A80();

    sub_232C42A80();

    sub_232C41F9C(v2, a1);
    sub_232B267AC(v8, &qword_27DDC8118, &qword_232CFE2E0);
  }

  else
  {
    sub_232C42B20();
  }

  sub_232C42B84();
}

void sub_232C41624(unint64_t a1, uint64_t a2)
{
  sub_232C42B78();
  v5 = swift_allocObject();
  sub_232C42AE8(v5);
  sub_232B26D50();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_232C60274();

  sub_232BA63D0();
  swift_beginAccess();
  sub_232C42AB4();
  sub_232B26744(v8, v7, &qword_27DDC8118, &qword_232CFE2E0);

  if (v9)
  {
    sub_232C42B54();

    sub_232C42A80();

    sub_232C42A80();

    sub_232C42A80();

    sub_232C41F9C(v2, a1);
    sub_232B267AC(v8, &qword_27DDC8118, &qword_232CFE2E0);
  }

  else
  {
    sub_232C42B20();
  }

  sub_232C42B84();
}

uint64_t sub_232C4181C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 16) = 0u;
  sub_232B26D50();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_232C60274();

  sub_232BA63D0();
  swift_beginAccess();
  v8 = *(v6 + 16);
  v9 = *(v6 + 24);
  v10 = *(v6 + 32);
  v11 = *(v6 + 40);
  v12 = sub_232C42B04();
  sub_232C42724(v12, v13, v14, v15, v16, v17);

  if (v9)
  {

    v19 = sub_232B37C0C();
    sub_232C05E58(v19, v20);
    v21 = sub_232B37C0C();
    sub_232BB6018(v21, v22);

    v23 = sub_232B37C0C();
    sub_232C05E58(v23, v24);
    v25 = sub_232B37C0C();
    sub_232BB6018(v25, v26);

    v27 = sub_232B37C0C();
    v29 = sub_232C41F9C(v27, v28);
    v30 = sub_232C42B04();
    sub_232C42784(v30, v31, v32, v33, v34, v35);
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v11 = 0;
    v29 = 0;
  }

  *a3 = v8;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  a3[4] = v29;
  return result;
}

uint64_t sub_232C419E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_232C42B78();
  v10 = swift_allocObject();
  v10[2] = 0u;
  v10[3] = 0u;
  v10[4] = 0u;
  v10[1] = 0u;
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a1;
  v11[5] = a2;

  sub_232C60274();

  sub_232BA63D0();
  swift_beginAccess();
  sub_232C42AB4();
  sub_232B26744(&v36, v35, &qword_27DDC8120, &qword_232CFE2E8);

  v13 = v37;
  if (v37)
  {
    v14 = v41;
    v34 = v40;
    v16 = v38;
    v15 = v39;
    v17 = v36;
    v18 = sub_232BA62A4();
    v20 = sub_232C41F9C(v18, v19);
    v22 = v21;

    v23 = sub_232BA62A4();
    sub_232C05E58(v23, v24);
    v25 = sub_232BA62A4();
    sub_232BB6018(v25, v26);

    v27 = sub_232BA62A4();
    sub_232C05E58(v27, v28);
    v29 = sub_232BA62A4();
    sub_232BB6018(v29, v30);

    v31 = sub_232BA62A4();
    sub_232BB6018(v31, v32);

    v33 = v34;
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v15 = 0;
    v33 = 0;
    v14 = 0;
    v20 = 0;
    v22 = 0;
  }

  *a5 = v17;
  a5[1] = v13;
  a5[2] = v16;
  a5[3] = v15;
  a5[4] = v33;
  a5[5] = v14;
  a5[6] = v20;
  a5[7] = v22;
  return result;
}

uint64_t sub_232C41C2C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v43 = a5;
  v44 = a7;
  v42 = a3;
  sub_232CE9A30();
  sub_232B48F0C();
  v45 = v18;
  v46 = v17;
  MEMORY[0x28223BE20](v17);
  v20 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = v41 - v23;
  v25 = sub_232C42314(a9, a10, v22);
  if (v26 >> 60 == 15)
  {
    sub_232CE9A20();
    v27 = sub_232CE9A00();
    v28 = sub_232CEA1C0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = sub_232BA73DC();
      *v29 = 0;
      _os_log_impl(&dword_232B02000, v27, v28, "PoemStatsDatabase: Error while serializing features", v29, 2u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    return (*(v45 + 8))(v20, v46);
  }

  else
  {
    v31 = v25;
    v32 = v26;
    v41[1] = *(v11 + OBJC_IVAR____TtC21DocumentUnderstanding17PoemStatsDatabase_database);
    v33 = objc_allocWithZone(type metadata accessor for PoemStatsRecord());

    sub_232C05E58(v31, v32);
    v34 = a1;
    v35 = PoemStatsRecord.init(cooccurrenceId:entityName:entityId:photoId:associatedFeatureData:)(a1, a2, v42, a4, v43, a6, v44, a8, v31, v32);
    sub_232BC1ECC();
    *(swift_allocObject() + 16) = v35;
    v36 = v35;
    sub_232C60274();

    sub_232CE9A20();

    v37 = sub_232CE9A00();
    v38 = sub_232CEA1B0();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v47 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_232BAD2D4(v34, a2, &v47);
      _os_log_impl(&dword_232B02000, v37, v38, "PoemStatsDatabase: Added a record with key: %s", v39, 0xCu);
      sub_232B2040C(v40);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
      sub_232B4ACF0();
      MEMORY[0x238393870]();

      sub_232BB6018(v31, v32);
    }

    else
    {
      sub_232BB6018(v31, v32);
    }

    return (*(v45 + 8))(v24, v46);
  }
}

uint64_t sub_232C41F9C(uint64_t a1, unint64_t a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = sub_232CE9A30();
  sub_232B48F0C();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_232B20704();
  v9 = v8 - v7;
  v10 = 0;
  if (a2 >> 60 != 15)
  {
    v11 = objc_opt_self();
    v12 = sub_232BA648C();
    sub_232B41B94(v12, v13);
    sub_232BA648C();
    v14 = sub_232CE8C50();
    *&v40 = 0;
    v15 = [v11 JSONObjectWithData:v14 options:0 error:&v40];

    if (v15)
    {
      v16 = v40;
      sub_232CEA420();
      swift_unknownObjectRelease();
      v17 = sub_232B124A8(&qword_27DDC7668, &unk_232CFA950);
      if (sub_232C42AC8(v17, v18, v19, v17))
      {
        v20 = v39;
      }

      else
      {
        v20 = 0;
      }

      if (v20)
      {
        sub_232B1E16C(0x6546656C62756F64, 0xEE00736572757461, v20);
        if (*(&v41 + 1))
        {
          v21 = sub_232B124A8(&qword_27DDC8130, &unk_232CFE350);
          if (sub_232C42AC8(v21, v22, v23, v21))
          {
            v10 = v39;
          }

          else
          {
            v10 = 0;
          }

          goto LABEL_17;
        }
      }

      else
      {
        v40 = 0u;
        v41 = 0u;
      }

      sub_232B267AC(&v40, &qword_27DDC68C8, &qword_232CF6210);
      if (!v20)
      {
        v36 = sub_232BA648C();
        sub_232BB6018(v36, v37);
        v10 = 0;
        v40 = 0u;
        v41 = 0u;
        goto LABEL_20;
      }

      v10 = 0;
LABEL_17:
      sub_232B1E16C(0x746165467473696CLL, 0xEC00000073657275, v20);

      v31 = sub_232BA648C();
      sub_232BB6018(v31, v32);
      if (*(&v41 + 1))
      {
        v33 = sub_232B124A8(&qword_27DDC8128, &qword_232CFE348);
        sub_232C42AC8(v33, v34, v35, v33);
        return v10;
      }

LABEL_20:
      sub_232B267AC(&v40, &qword_27DDC68C8, &qword_232CF6210);
      return v10;
    }

    v24 = v40;
    v25 = sub_232CE8B30();

    swift_willThrow();
    sub_232CE9A20();
    v26 = sub_232CE9A00();
    v27 = sub_232CEA1C0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = sub_232BA73DC();
      *v28 = 0;
      _os_log_impl(&dword_232B02000, v26, v27, "PoemStatsDatabase: Error while de-serializing features", v28, 2u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    v29 = sub_232BA648C();
    sub_232BB6018(v29, v30);

    (*(v5 + 8))(v9, v3);
    return 0;
  }

  return v10;
}

id sub_232C42680(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_232C42724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2)
  {

    sub_232C05E58(a5, a6);
  }
}

void sub_232C42784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2)
  {

    sub_232BB6018(a5, a6);
  }
}

uint64_t sub_232C427E4()
{
  if (v0[3])
  {

    v1 = v0[9];
    if (v1 >> 60 != 15)
    {
      sub_232B41BEC(v0[8], v1);
    }
  }

  sub_232C42B78();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_232C42A80()
{
  sub_232C05E58(v1, v0);

  return sub_232BB6018(v1, v0);
}

uint64_t sub_232C42AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

double sub_232C42AE8(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  return result;
}

double sub_232C42B54()
{

  return result;
}

void sub_232C42B84()
{
  *v0 = v7;
  v0[1] = v1;
  v0[2] = v6;
  v0[3] = v3;
  v0[4] = v5;
  v0[5] = v2;
  v0[6] = v4;
}

void sub_232C42B98(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_232B26B10();
  v7 = 0;
  v8 = a1 & 0xC000000000000001;
  v53 = a1 & 0xFFFFFFFFFFFFFF8;
  v44 = a2;
  v45 = a1;
  v46 = v6;
  v50 = a1 & 0xC000000000000001;
  while (v6 != v7)
  {
    if (v8)
    {
      v9 = MEMORY[0x2383922C0](v7, a1);
    }

    else
    {
      if (v7 >= *(v53 + 16))
      {
        goto LABEL_37;
      }

      v9 = *(a1 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      sub_232CEA7A0();
      __break(1u);
      return;
    }

    v11 = sub_232C31B34(v9, &selRef_text);
    if (v12)
    {
      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = v11 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        v51 = sub_232C31B34(v10, &selRef_identifier);
        if (v14)
        {
          v15 = v14;
          if (*(*a2 + 16) && (sub_232B1F160(v51, v14), (v16 & 1) != 0))
          {
          }

          else
          {
            v17 = sub_232CE9DD0();
            v52[0] = 32;
            v52[1] = 0xE100000000000000;
            MEMORY[0x28223BE20](v17);
            v43[2] = v52;
            v20 = sub_232C484F0(1, 1, sub_232B551FC, v43, v18, v19);
            v49 = v3;
            if (v20[2])
            {
              v21 = v20[4];
              v22 = v20[5];
              v24 = v20[6];
              v23 = v20[7];

              v25 = MEMORY[0x238391B80](v21, v22, v24, v23);
              v47 = v26;
              v48 = v25;

              a2 = v44;
            }

            else
            {

              v47 = 0xE000000000000000;
              v48 = 0;
            }

            swift_isUniquelyReferenced_nonNull_native();
            v52[0] = *a2;
            v27 = v52[0];
            v28 = sub_232B1F160(v51, v15);
            if (__OFADD__(*(v27 + 16), (v29 & 1) == 0))
            {
              goto LABEL_38;
            }

            v30 = v28;
            v31 = v29;
            sub_232B124A8(&qword_27DDC6798, &qword_232CFAB80);
            if (sub_232CEA5C0())
            {
              v32 = sub_232B1F160(v51, v15);
              v3 = v49;
              a1 = v45;
              if ((v31 & 1) != (v33 & 1))
              {
                goto LABEL_40;
              }

              v30 = v32;
            }

            else
            {
              v3 = v49;
              a1 = v45;
            }

            v34 = v52[0];
            if (v31)
            {
              v35 = (*(v52[0] + 56) + 16 * v30);
              v36 = v47;
              *v35 = v48;
              v35[1] = v36;
            }

            else
            {
              *(v52[0] + 8 * (v30 >> 6) + 64) |= 1 << v30;
              v37 = (v34[6] + 16 * v30);
              *v37 = v51;
              v37[1] = v15;
              v38 = (v34[7] + 16 * v30);
              v39 = v47;
              *v38 = v48;
              v38[1] = v39;
              v40 = v34[2];
              v41 = __OFADD__(v40, 1);
              v42 = v40 + 1;
              if (v41)
              {
                goto LABEL_39;
              }

              v34[2] = v42;
            }

            *a2 = v34;
          }

          v6 = v46;
        }

        else
        {
        }

        v8 = v50;
      }

      else
      {
      }
    }

    else
    {
    }

    ++v7;
  }
}

void sub_232C42F30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v27 = MEMORY[0x277D84F90];
    sub_232B64B80(0, v1, 0);
    v3 = sub_232B666F4(a1);
    v4 = a1;
    v6 = v5;
    v7 = 0;
    v8 = a1 + 64;
    v24 = v1;
    if ((v3 & 0x8000000000000000) == 0)
    {
      while (v3 < 1 << *(v4 + 32))
      {
        v9 = v3 >> 6;
        if ((*(v8 + 8 * (v3 >> 6)) & (1 << v3)) == 0)
        {
          goto LABEL_26;
        }

        if (*(v4 + 36) != v6)
        {
          goto LABEL_27;
        }

        v25 = v2;
        v10 = *(*(v4 + 56) + 8 * v3);
        swift_beginAccess();
        v11 = *(v10 + 32);
        if (v11 >> 62)
        {
          v12 = sub_232CEA610();
        }

        else
        {
          v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v14 = *(v27 + 16);
        v13 = *(v27 + 24);
        v15 = v6;
        v4 = a1;
        if (v14 >= v13 >> 1)
        {
          sub_232B64B80(v13 > 1, v14 + 1, 1);
          v4 = a1;
          v15 = v6;
        }

        *(v27 + 16) = v14 + 1;
        *(v27 + 8 * v14 + 32) = v12;
        v16 = 1 << *(v4 + 32);
        if (v3 >= v16)
        {
          goto LABEL_28;
        }

        v8 = a1 + 64;
        v17 = *(a1 + 64 + 8 * v9);
        if ((v17 & (1 << v3)) == 0)
        {
          goto LABEL_29;
        }

        if (*(v4 + 36) != v15)
        {
          goto LABEL_30;
        }

        v18 = v17 & (-2 << (v3 & 0x3F));
        if (v18)
        {
          v16 = __clz(__rbit64(v18)) | v3 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = v9 << 6;
          v20 = v9 + 1;
          v21 = (a1 + 72 + 8 * v9);
          while (v20 < (v16 + 63) >> 6)
          {
            v23 = *v21++;
            v22 = v23;
            v19 += 64;
            ++v20;
            if (v23)
            {
              sub_232B48E94(v3, v15, v25 & 1);
              v4 = a1;
              v16 = __clz(__rbit64(v22)) + v19;
              goto LABEL_20;
            }
          }

          sub_232B48E94(v3, v15, v25 & 1);
          v4 = a1;
        }

LABEL_20:
        if (++v7 == v24)
        {
          return;
        }

        v2 = 0;
        v6 = *(v4 + 36);
        v3 = v16;
        if (v16 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }
}

void sub_232C431B4()
{
  v1 = 0;
  v2 = 0;
  v3 = *(v0 + 24);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = v1;
LABEL_10:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(*(v3 + 56) + ((v8 << 9) | (8 * v9)));
    v11 = __OFADD__(v2, v10);
    v2 += v10;
    if (v11)
    {
      __break(1u);
LABEL_13:
      sub_232C4A108();
      do
      {
        if (!v18)
        {
          while (1)
          {
            v19 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              goto LABEL_59;
            }

            if (v19 >= v17)
            {
              goto LABEL_23;
            }

            v18 = *(v16 + 8 * v19);
            ++v15;
            if (v18)
            {
              v15 = v19;
              goto LABEL_20;
            }
          }
        }

        v19 = v15;
LABEL_20:
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v21 = *(*(v14 + 56) + ((v19 << 9) | (8 * v20)));
        v11 = __OFADD__(v13, v21);
        v13 += v21;
      }

      while (!v11);
      __break(1u);
LABEL_23:
      if (!__OFADD__(v12, v13))
      {
        sub_232C4A108();
        do
        {
          if (!v28)
          {
            while (1)
            {
              v29 = v25 + 1;
              if (__OFADD__(v25, 1))
              {
                goto LABEL_60;
              }

              if (v29 >= v27)
              {
                goto LABEL_34;
              }

              v28 = *(v26 + 8 * v29);
              ++v25;
              if (v28)
              {
                v25 = v29;
                goto LABEL_31;
              }
            }
          }

          v29 = v25;
LABEL_31:
          v30 = __clz(__rbit64(v28));
          v28 &= v28 - 1;
          v31 = *(*(v24 + 56) + ((v29 << 9) | (8 * v30)));
          v11 = __OFADD__(v23, v31);
          v23 += v31;
        }

        while (!v11);
        __break(1u);
LABEL_34:
        if (!__OFADD__(v22, v23))
        {
          sub_232C4A108();
          do
          {
            if (!v38)
            {
              while (1)
              {
                v39 = v35 + 1;
                if (__OFADD__(v35, 1))
                {
                  goto LABEL_61;
                }

                if (v39 >= v37)
                {
                  goto LABEL_45;
                }

                v38 = *(v36 + 8 * v39);
                ++v35;
                if (v38)
                {
                  v35 = v39;
                  goto LABEL_42;
                }
              }
            }

            v39 = v35;
LABEL_42:
            v40 = __clz(__rbit64(v38));
            v38 &= v38 - 1;
            v41 = *(*(v34 + 56) + ((v39 << 9) | (8 * v40)));
            v11 = __OFADD__(v33, v41);
            v33 += v41;
          }

          while (!v11);
          __break(1u);
LABEL_45:
          if (!__OFADD__(v32, v33))
          {
            sub_232C4A108();
            do
            {
              if (!v48)
              {
                while (1)
                {
                  v49 = v45 + 1;
                  if (__OFADD__(v45, 1))
                  {
                    goto LABEL_62;
                  }

                  if (v49 >= v47)
                  {
                    goto LABEL_56;
                  }

                  v48 = *(v46 + 8 * v49);
                  ++v45;
                  if (v48)
                  {
                    v45 = v49;
                    goto LABEL_53;
                  }
                }
              }

              v49 = v45;
LABEL_53:
              v50 = __clz(__rbit64(v48));
              v48 &= v48 - 1;
              v51 = *(*(v44 + 56) + ((v49 << 9) | (8 * v50)));
              v11 = __OFADD__(v43, v51);
              v43 += v51;
            }

            while (!v11);
            __break(1u);
LABEL_56:
            if (__OFADD__(v42, v43))
            {
              goto LABEL_66;
            }

            return;
          }

          goto LABEL_65;
        }

        goto LABEL_64;
      }

      goto LABEL_63;
    }
  }

  while (1)
  {
    v8 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v8 >= v7)
    {
      goto LABEL_13;
    }

    v6 = *(v3 + 64 + 8 * v8);
    ++v1;
    if (v6)
    {
      v1 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
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
  __break(1u);
LABEL_66:
  __break(1u);
}

void *sub_232C43470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = MEMORY[0x277D84F90];
  v5 = MEMORY[0x277D84FA0];
  v3[5] = MEMORY[0x277D84FA0];
  v3[6] = v5;
  v3[2] = a1;
  v3[3] = a2;
  swift_beginAccess();
  v3[4] = a3;
  return v3;
}

BOOL sub_232C434DC()
{
  sub_232C2E03C();
  sub_232C4A23C(v0 + 40, v1);
  v2 = *(v0 + 40);

  v3 = sub_232B5A008();
  v5 = sub_232BA7F18(v3, v4, v2);

  return v5;
}

BOOL sub_232C4353C()
{
  sub_232C2E03C();
  sub_232C4A23C(v0 + 48, v1);
  v2 = *(v0 + 48);

  v3 = sub_232B5A008();
  v5 = sub_232BA7F18(v3, v4, v2);

  return v5;
}

void sub_232C4359C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_232C4A420();
  a25 = v29;
  a26 = v30;
  v32 = v31;
  sub_232B26B10();
  sub_232C4A414();
  while (1)
  {
    if (v27 == v28)
    {
      sub_232C4A43C();
      return;
    }

    if ((v32 & 0xC000000000000001) != 0)
    {
      v39 = sub_232C4A1F4();
      v33 = MEMORY[0x2383922C0](v39);
    }

    else
    {
      if (v28 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v33 = sub_232C4A2FC();
    }

    v34 = v33;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    v35 = sub_232C31B34(v33, &selRef_identifier);
    if (v36)
    {
      v37 = v35;
      v38 = v36;
      sub_232C4A1D8(v26 + 40, v36);
      sub_232C48B20(&a13, v37, v38);
      swift_endAccess();
    }

    else
    {
    }

    ++v28;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void sub_232C43678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_232C4A420();
  a25 = v29;
  a26 = v30;
  v32 = v31;
  sub_232B26B10();
  sub_232C4A414();
  while (1)
  {
    if (v27 == v28)
    {
      sub_232C4A43C();
      return;
    }

    if ((v32 & 0xC000000000000001) != 0)
    {
      v39 = sub_232C4A1F4();
      v33 = MEMORY[0x2383922C0](v39);
    }

    else
    {
      if (v28 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v33 = sub_232C4A2FC();
    }

    v34 = v33;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    v35 = sub_232C31B34(v33, &selRef_identifier);
    if (v36)
    {
      v37 = v35;
      v38 = v36;
      sub_232C4A1D8(v26 + 48, v36);
      sub_232C48B20(&a13, v37, v38);
      swift_endAccess();
    }

    else
    {
    }

    ++v28;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_232C43754()
{

  return v0;
}

uint64_t sub_232C4378C()
{
  sub_232C43754();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

void sub_232C437E4(uint64_t a1)
{
  sub_232B26B10();
  sub_232C4A414();
  while (v2 != v3)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2383922C0](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v6 = *(a1 + 8 * v3 + 32);
    }

    sub_232C4A26C();
    if (v7)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v8 = v4;
    sub_232C43898(&v8, v1);

    ++v3;
  }
}

uint64_t sub_232C43898(void **a1, uint64_t a2)
{
  v4 = sub_232CE9A30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  result = sub_232C31B34(*a1, &selRef_identifier);
  if (v10)
  {
    v11 = result;
    v12 = v10;
    sub_232C45710();
    if (v13)
    {

      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v34 = *(a2 + 48);
      v14 = v34;
      *(a2 + 48) = 0x8000000000000000;
      v15 = sub_232B1F160(v11, v12);
      if (__OFADD__(*(v14 + 16), (v16 & 1) == 0))
      {
        __break(1u);
      }

      else
      {
        v17 = v15;
        v18 = v16;
        sub_232B124A8(&qword_27DDC77F8, &unk_232CFE4F0);
        v19 = sub_232CEA5C0();
        v20 = v34;
        if (v19)
        {
          v21 = sub_232B1F160(v11, v12);
          if ((v18 & 1) != (v22 & 1))
          {
LABEL_17:
            result = sub_232CEA7A0();
            __break(1u);
            return result;
          }

          v17 = v21;
        }

        *(a2 + 48) = v20;
        if ((v18 & 1) == 0)
        {
          sub_232B64770(v17, v11, v12, 0, v20);
        }

        v23 = *(v20 + 56);
        v24 = *(v23 + 8 * v17);
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (!v25)
        {
          *(v23 + 8 * v17) = v26;
          swift_endAccess();
        }
      }

      __break(1u);
      goto LABEL_17;
    }

    sub_232CE9A20();
    v27 = v8;
    v28 = sub_232CE9A00();
    v29 = sub_232CEA1C0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v27;
      *v31 = v27;
      v32 = v27;
      _os_log_impl(&dword_232B02000, v28, v29, "Trying to update counts for an entity id with no name: %@", v30, 0xCu);
      sub_232B13790(v31, &qword_27DDC6FD0, &unk_232CFA240);
      MEMORY[0x238393870](v31, -1, -1);
      MEMORY[0x238393870](v30, -1, -1);
    }

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

void sub_232C43B98(uint64_t a1)
{
  v2 = v1;
  v49 = sub_232B26B10();
  v4 = 0;
  v47 = a1 & 0xC000000000000001;
  v48 = sub_232B26B10();
  v45 = a1 & 0xFFFFFFFFFFFFFF8;
  v46 = a1;
  while (v48 != v4)
  {
    if (v47)
    {
      v5 = MEMORY[0x2383922C0](v4, v46);
    }

    else
    {
      if (v4 >= *(v45 + 16))
      {
        goto LABEL_28;
      }

      v5 = *(v46 + 8 * v4 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      sub_232CEA7A0();
      __break(1u);
      return;
    }

    v7 = sub_232C31B34(v5, &selRef_identifier);
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      sub_232B207D4(v2 + 64, v51);
      swift_isUniquelyReferenced_nonNull_native();
      v50 = *(v2 + 64);
      *(v2 + 64) = 0x8000000000000000;
      sub_232B1F160(v9, v10);
      sub_232B66BA0();
      if (__OFADD__(v13, v14))
      {
        goto LABEL_29;
      }

      v15 = v11;
      v16 = v12;
      sub_232B124A8(&qword_27DDC8168, &unk_232CFE4E0);
      v17 = sub_232C4A518();
      v18 = v50;
      if (v17)
      {
        v19 = sub_232B1F160(v9, v10);
        if ((v16 & 1) != (v20 & 1))
        {
          goto LABEL_34;
        }

        v15 = v19;
      }

      *(v2 + 64) = v18;
      if ((v16 & 1) == 0)
      {
        sub_232C43EAC(&v50);
        v21 = v50;
        v18[(v15 >> 6) + 8] |= 1 << v15;
        v22 = (v18[6] + 16 * v15);
        *v22 = v9;
        v22[1] = v10;
        *(v18[7] + 8 * v15) = v21;
        v23 = v18[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_32;
        }

        v18[2] = v25;
      }

      v26 = v6;
      v27 = v2;
      v28 = v18[7];
      swift_isUniquelyReferenced_nonNull_native();
      v50 = *(v28 + 8 * v15);
      *(v28 + 8 * v15) = 0x8000000000000000;
      sub_232B20520(v49);
      sub_232B66BA0();
      if (__OFADD__(v31, v32))
      {
        goto LABEL_30;
      }

      v33 = v29;
      v34 = v30;
      sub_232B124A8(&qword_27DDC8160, &qword_232CFE4D8);
      v35 = sub_232C4A518();
      v36 = v50;
      if (v35)
      {
        v37 = sub_232B20520(v49);
        if ((v34 & 1) != (v38 & 1))
        {
          goto LABEL_34;
        }

        v33 = v37;
      }

      *(v28 + 8 * v15) = v36;

      v39 = *(v28 + 8 * v15);
      v2 = v27;
      v6 = v26;
      if ((v34 & 1) == 0)
      {
        v39[(v33 >> 6) + 8] |= 1 << v33;
        *(v39[6] + 8 * v33) = v49;
        *(v39[7] + 8 * v33) = 0;
        v40 = v39[2];
        v24 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v24)
        {
          goto LABEL_33;
        }

        v39[2] = v41;
      }

      v42 = v39[7];
      v43 = *(v42 + 8 * v33);
      v24 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v24)
      {
        goto LABEL_31;
      }

      *(v42 + 8 * v33) = v44;
      swift_endAccess();
    }

    ++v4;
  }
}

uint64_t sub_232C43EAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_232CE9C60();
  *a1 = result;
  return result;
}

void sub_232C43EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a3 + 64;
  sub_232B34F88();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return;
    }

    if (v14 >= v12)
    {
      break;
    }

    v10 = *(v7 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      do
      {
LABEL_7:
        v10 &= v10 - 1;

        v15 = sub_232BA6074();
        sub_232C44020(v15, v16, v17, v18, a1, a2, a4);
      }

      while (v10);
      continue;
    }
  }
}

uint64_t sub_232C44020(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a6;
  v8 = a5;
  v11 = a3[3];
  v146 = a1;
  v145 = a3;
  if (v11 < 1)
  {
    v143 = 0;
    v144 = 0;
    goto LABEL_18;
  }

  v157 = a1;
  v158 = a2;

  MEMORY[0x238391C30](4074812, 0xE300000000000000);

  MEMORY[0x238391C30](v8, v7);

  v13 = v157;
  v12 = v158;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v157 = *(a4 + 56);
  v14 = v157;
  *(a4 + 56) = 0x8000000000000000;
  v15 = sub_232B1F160(v13, v12);
  if (__OFADD__(*(v14 + 16), (v16 & 1) == 0))
  {
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v17 = v15;
  v18 = v16;
  sub_232B124A8(&qword_27DDC8158, &qword_232CFE4D0);
  v19 = v157;
  if (sub_232CEA5C0())
  {
    v20 = sub_232B1F160(v13, v12);
    if ((v18 & 1) != (v21 & 1))
    {
      goto LABEL_102;
    }

    v17 = v20;
  }

  *(a4 + 56) = v157;
  if ((v18 & 1) == 0)
  {
    sub_232B0B6B8(&v157);
    sub_232B64944(v17, v13, v12, &v157, v19, v22);
  }

  v23 = (*(v19 + 56) + 88 * v17 + 24);
  swift_isUniquelyReferenced_nonNull_native();
  v155[0] = *v23;
  v24 = v155[0];
  *v23 = 0x8000000000000000;
  v25 = sub_232B20520(a7);
  if (__OFADD__(*(v24 + 16), (v26 & 1) == 0))
  {
    goto LABEL_88;
  }

  v27 = v25;
  v28 = v26;
  sub_232B124A8(&qword_27DDC8160, &qword_232CFE4D8);
  if (sub_232CEA5C0())
  {
    v29 = v155[0];
    v30 = sub_232B20520(a7);
    if ((v28 & 1) != (v31 & 1))
    {
      goto LABEL_102;
    }

    v27 = v30;
  }

  else
  {

    v29 = v155[0];
  }

  *v23 = v29;

  v32 = *v23;
  if ((v28 & 1) == 0)
  {
    sub_232B648B0(v27, a7, 0, *v23);
  }

  v33 = *(v32 + 56);
  v34 = *(v33 + 8 * v27);
  v35 = __OFADD__(v34, v11);
  v36 = v34 + v11;
  v8 = a5;
  if (v35)
  {
    goto LABEL_90;
  }

  *(v33 + 8 * v27) = v36;
  swift_endAccess();
  v144 = sub_232C3B988;
  v143 = sub_232C4A0F0;
  a1 = v146;
  v7 = a6;
  a3 = v145;
LABEL_18:
  v37 = a3[4];
  if (v37 < 1)
  {
    v141 = 0;
    v142 = 0;
    goto LABEL_35;
  }

  v156[0] = a1;
  v156[1] = a2;

  MEMORY[0x238391C30](4074812, 0xE300000000000000);

  MEMORY[0x238391C30](v8, v7);

  v38 = v156[0];
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v156[0] = *(a4 + 56);
  v39 = v156[0];
  *(a4 + 56) = 0x8000000000000000;
  v40 = sub_232B1F160(v38, a2);
  if (__OFADD__(*(v39 + 16), (v41 & 1) == 0))
  {
    goto LABEL_89;
  }

  v42 = v40;
  v43 = v41;
  sub_232B124A8(&qword_27DDC8158, &qword_232CFE4D0);
  v44 = v156[0];
  if (sub_232CEA5C0())
  {
    v45 = sub_232B1F160(v38, a2);
    if ((v43 & 1) != (v46 & 1))
    {
      goto LABEL_102;
    }

    v42 = v45;
  }

  *(a4 + 56) = v156[0];
  if ((v43 & 1) == 0)
  {
    sub_232B0B6B8(v156);
    sub_232B64944(v42, v38, a2, v156, v44, v47);
  }

  v48 = (*(v44 + 56) + 88 * v42 + 32);
  swift_isUniquelyReferenced_nonNull_native();
  v154[0] = *v48;
  v49 = v154[0];
  *v48 = 0x8000000000000000;
  v50 = sub_232B20520(a7);
  if (__OFADD__(*(v49 + 16), (v51 & 1) == 0))
  {
    goto LABEL_91;
  }

  v52 = v50;
  v53 = v51;
  sub_232B124A8(&qword_27DDC8160, &qword_232CFE4D8);
  if (sub_232CEA5C0())
  {
    v54 = v154[0];
    v55 = sub_232B20520(a7);
    if ((v53 & 1) != (v56 & 1))
    {
      goto LABEL_102;
    }

    v52 = v55;
  }

  else
  {

    v54 = v154[0];
  }

  *v48 = v54;

  v57 = *v48;
  if ((v53 & 1) == 0)
  {
    sub_232B648B0(v52, a7, 0, *v48);
  }

  v58 = *(v57 + 56);
  v59 = *(v58 + 8 * v52);
  v35 = __OFADD__(v59, v37);
  v60 = v59 + v37;
  v8 = a5;
  if (v35)
  {
    goto LABEL_93;
  }

  *(v58 + 8 * v52) = v60;
  swift_endAccess();
  v142 = sub_232C3B988;
  v141 = sub_232C4A0F0;
  a1 = v146;
  v7 = a6;
  a3 = v145;
LABEL_35:
  v61 = *a3;
  if (*a3 < 1)
  {
    v139 = 0;
    v140 = 0;
    goto LABEL_52;
  }

  v155[0] = a1;
  v155[1] = a2;

  MEMORY[0x238391C30](4074812, 0xE300000000000000);

  MEMORY[0x238391C30](v8, v7);

  v62 = v155[0];
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v155[0] = *(a4 + 56);
  v63 = v155[0];
  *(a4 + 56) = 0x8000000000000000;
  v64 = sub_232B1F160(v62, a2);
  if (__OFADD__(*(v63 + 16), (v65 & 1) == 0))
  {
    goto LABEL_92;
  }

  v66 = v64;
  v67 = v65;
  sub_232B124A8(&qword_27DDC8158, &qword_232CFE4D0);
  v68 = v155[0];
  if (sub_232CEA5C0())
  {
    v69 = sub_232B1F160(v62, a2);
    if ((v67 & 1) != (v70 & 1))
    {
      goto LABEL_102;
    }

    v66 = v69;
  }

  *(a4 + 56) = v155[0];
  if ((v67 & 1) == 0)
  {
    sub_232B0B6B8(v155);
    sub_232B64944(v66, v62, a2, v155, v68, v71);
  }

  v72 = (*(v68 + 56) + 88 * v66);
  swift_isUniquelyReferenced_nonNull_native();
  v153[0] = *v72;
  v73 = v153[0];
  *v72 = 0x8000000000000000;
  v74 = sub_232B20520(a7);
  if (__OFADD__(*(v73 + 16), (v75 & 1) == 0))
  {
    goto LABEL_94;
  }

  v76 = v74;
  v77 = v75;
  sub_232B124A8(&qword_27DDC8160, &qword_232CFE4D8);
  if (sub_232CEA5C0())
  {
    v78 = v153[0];
    v79 = sub_232B20520(a7);
    if ((v77 & 1) != (v80 & 1))
    {
      goto LABEL_102;
    }

    v76 = v79;
  }

  else
  {

    v78 = v153[0];
  }

  *v72 = v78;

  v81 = *v72;
  if ((v77 & 1) == 0)
  {
    sub_232B648B0(v76, a7, 0, *v72);
  }

  v82 = *(v81 + 56);
  v83 = *(v82 + 8 * v76);
  v35 = __OFADD__(v83, v61);
  v84 = v83 + v61;
  v8 = a5;
  if (v35)
  {
    goto LABEL_96;
  }

  *(v82 + 8 * v76) = v84;
  swift_endAccess();
  v140 = sub_232C3B988;
  v139 = sub_232C4A0F0;
  a1 = v146;
  v7 = a6;
  a3 = v145;
LABEL_52:
  v85 = a3[1];
  if (v85 < 1)
  {
    v105 = 0;
    v106 = 0;
    goto LABEL_69;
  }

  v154[0] = a1;
  v154[1] = a2;

  MEMORY[0x238391C30](4074812, 0xE300000000000000);

  MEMORY[0x238391C30](v8, v7);

  v86 = v154[0];
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v154[0] = *(a4 + 56);
  v87 = v154[0];
  *(a4 + 56) = 0x8000000000000000;
  v88 = sub_232B1F160(v86, a2);
  if (__OFADD__(*(v87 + 16), (v89 & 1) == 0))
  {
    goto LABEL_95;
  }

  v90 = v88;
  v91 = v89;
  sub_232B124A8(&qword_27DDC8158, &qword_232CFE4D0);
  v92 = v154[0];
  if (sub_232CEA5C0())
  {
    v93 = sub_232B1F160(v86, a2);
    if ((v91 & 1) != (v94 & 1))
    {
      goto LABEL_102;
    }

    v90 = v93;
  }

  *(a4 + 56) = v154[0];
  if ((v91 & 1) == 0)
  {
    sub_232B0B6B8(v154);
    sub_232B64944(v90, v86, a2, v154, v92, v95);
  }

  v96 = (*(v92 + 56) + 88 * v90 + 8);
  swift_isUniquelyReferenced_nonNull_native();
  v97 = *v96;
  v152 = *v96;
  *v96 = 0x8000000000000000;
  v98 = sub_232B20520(a7);
  if (__OFADD__(*(v97 + 16), (v99 & 1) == 0))
  {
    goto LABEL_97;
  }

  v100 = v98;
  v101 = v99;
  sub_232B124A8(&qword_27DDC8160, &qword_232CFE4D8);
  if (sub_232CEA5C0())
  {
    v102 = v152;
    v103 = sub_232B20520(a7);
    if ((v101 & 1) != (v104 & 1))
    {
      goto LABEL_102;
    }

    v100 = v103;
  }

  else
  {

    v102 = v152;
  }

  *v96 = v102;

  v107 = *v96;
  if ((v101 & 1) == 0)
  {
    sub_232B648B0(v100, a7, 0, *v96);
  }

  v108 = *(v107 + 56);
  v109 = *(v108 + 8 * v100);
  v35 = __OFADD__(v109, v85);
  v110 = v109 + v85;
  v8 = a5;
  if (v35)
  {
    goto LABEL_99;
  }

  *(v108 + 8 * v100) = v110;
  swift_endAccess();
  v106 = sub_232C3B988;
  v105 = sub_232C4A0F0;
  a1 = v146;
  v7 = a6;
  a3 = v145;
LABEL_69:
  v111 = a3[2];
  if (v111 < 1)
  {
    v132 = 0;
    v133 = 0;
LABEL_86:
    sub_232B0D210(v143, 0);
    sub_232B0D210(v144, 0);
    sub_232B0D210(v141, 0);
    sub_232B0D210(v142, 0);
    sub_232B0D210(v139, 0);
    sub_232B0D210(v140, 0);
    sub_232B0D210(v105, 0);
    sub_232B0D210(v106, 0);
    sub_232B0D210(v132, 0);
    return sub_232B0D210(v133, 0);
  }

  v149 = v106;
  v153[0] = a1;
  v153[1] = a2;

  MEMORY[0x238391C30](4074812, 0xE300000000000000);

  MEMORY[0x238391C30](v8, v7);

  v113 = v153[0];
  v112 = a2;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v153[0] = *(a4 + 56);
  v114 = v153[0];
  *(a4 + 56) = 0x8000000000000000;
  v115 = sub_232B1F160(v113, a2);
  if (__OFADD__(*(v114 + 16), (v116 & 1) == 0))
  {
    goto LABEL_98;
  }

  v117 = v115;
  v118 = v116;
  sub_232B124A8(&qword_27DDC8158, &qword_232CFE4D0);
  v119 = v153[0];
  if (sub_232CEA5C0())
  {
    v120 = sub_232B1F160(v113, v112);
    if ((v118 & 1) != (v121 & 1))
    {
      goto LABEL_102;
    }

    v117 = v120;
  }

  *(a4 + 56) = v153[0];
  if ((v118 & 1) == 0)
  {
    sub_232B0B6B8(v153);
    sub_232B64944(v117, v113, v112, v153, v119, v122);
  }

  v123 = (*(v119 + 56) + 88 * v117 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v124 = *v123;
  v151 = *v123;
  *v123 = 0x8000000000000000;
  v125 = sub_232B20520(a7);
  if (__OFADD__(*(v124 + 16), (v126 & 1) == 0))
  {
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v127 = v125;
  v128 = v126;
  sub_232B124A8(&qword_27DDC8160, &qword_232CFE4D8);
  if ((sub_232CEA5C0() & 1) == 0)
  {

    v129 = v151;
LABEL_82:
    *v123 = v129;

    v134 = *v123;
    if ((v128 & 1) == 0)
    {
      sub_232B648B0(v127, a7, 0, *v123);
    }

    v135 = *(v134 + 56);
    v136 = *(v135 + 8 * v127);
    v35 = __OFADD__(v136, v111);
    v137 = v136 + v111;
    v106 = v149;
    if (!v35)
    {
      *(v135 + 8 * v127) = v137;
      swift_endAccess();
      v133 = sub_232C3B988;
      v132 = sub_232C4A0F0;
      goto LABEL_86;
    }

    goto LABEL_101;
  }

  v129 = v151;
  v130 = sub_232B20520(a7);
  if ((v128 & 1) == (v131 & 1))
  {
    v127 = v130;

    goto LABEL_82;
  }

LABEL_102:
  result = sub_232CEA7A0();
  __break(1u);
  return result;
}

uint64_t sub_232C44D2C@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  v3 = sub_232C4A1B8();
  v4 = sub_232C4A1B8();
  v5 = sub_232C4A1B8();
  v6 = sub_232C4A1B8();
  result = sub_232C4A1B8();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = result;
  a1[5] = v2;
  a1[6] = v2;
  a1[7] = v2;
  a1[8] = v2;
  a1[9] = v2;
  a1[10] = v2;
  return result;
}

uint64_t sub_232C44DB8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v460 = result;
  v477 = a2;
  v6 = 0;
  v251 = a3 + 32;
  v270 = *(a3 + 16);
  while (v6 != v270)
  {
    v7 = (v251 + 16 * v6);
    v8 = *v7;
    v289 = v6 + 1;
    v9 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_taggerExtractions;
    sub_232B13F74(*v7 + OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_taggerExtractions, v498);
    v10 = *(v8 + v9);
    v368 = sub_232B26B10();
    v308 = v10 & 0xFFFFFFFFFFFFFF8;
    v328 = v10 & 0xC000000000000001;
    v407 = v8;
    swift_retain_n();
    v348 = v10;

    while (v368)
    {
      if (v328)
      {
        v11 = MEMORY[0x2383922C0](0, v348);
      }

      else
      {
        if (!*(v308 + 16))
        {
          __break(1u);
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          result = sub_232CEA7A0();
          __break(1u);
          return result;
        }

        v11 = *(v348 + 32);
      }

      v12 = v11;
      v13 = sub_232C31B34(v11, &selRef_identifier);
      if (v14)
      {
        sub_232C4A3A0(v13, v14);
        sub_232C4A198();
        sub_232C4A220(v15, v16, v17, v18, v19, v20, v21, v22, v251, v270, v289, v308, v328, v348, v368, v388, v407, v426, v443, v460, v477, *v494, *&v494[8], *&v494[16], v495, v496, v497);
        sub_232C4A364();

        sub_232C4A178(v23, v24, v25, v26, v27, v28, v29, v30, v252, v271, v290, v309, v329, v349, v369, v389, v408, v427, v444, v461, v478, *v494, *&v494[8], *&v494[16], v495, v496);
        swift_isUniquelyReferenced_nonNull_native();
        sub_232C4A0F4();
        v31 = sub_232BAE188();
        sub_232B1F160(v31, v32);
        sub_232B66BA0();
        if (__OFADD__(v35, v36))
        {
          goto LABEL_73;
        }

        v37 = v33;
        v38 = v34;
        sub_232B124A8(&qword_27DDC8158, &qword_232CFE4D0);
        v39 = sub_232C4A3C4();
        v40 = v495;
        if (v39)
        {
          v41 = sub_232BAE188();
          sub_232B1F160(v41, v42);
          sub_232B20914();
          if (!v44)
          {
            goto LABEL_79;
          }

          v37 = v43;
        }

        *(v5 + 56) = v40;
        if (v38)
        {
        }

        else
        {
          sub_232B0B6B8(v504);
          sub_232C4A2BC();
          sub_232B64944(v45, v46, v47, v48, v40, v49);
        }

        sub_232C4A2C8();
        v52 = v50 + v37 * v51;
        sub_232BAD024();
        v53 = *(*(v52 + 40) + 16);
        sub_232BAD170(v53);
        sub_232C4A4B8(v53 + 1, v253, v272, v291, v310, v330, v350, v370, v390, v409, v428, v445, v462, v479, *v494, *&v494[8], *&v494[16], v495, v496);
        sub_232C4A2A0();
        sub_232C4A198();
        sub_232C4A220(v54, v55, v56, v57, v58, v59, v60, v61, v254, v273, v292, v311, v331, v351, v371, v391, v410, v429, v446, v463, v480, *v494, *&v494[8], *&v494[16], v495, v496, v497);
        sub_232C4A364();

        sub_232C4A498(v62, v63, v64, v65, v66, v67, v68, v69, v255, v274, v293, v312, v332, v352, v372, v392, v411);
        sub_232C4A3F4();
        sub_232CE9E60();

        sub_232C4A178(v70, v71, v72, v73, v74, v75, v76, v77, v256, v275, v294, v313, v333, v353, v373, v393, v412, v430, v447, v464, v481, *v494, *&v494[8], *&v494[16], v495, v496);
        swift_isUniquelyReferenced_nonNull_native();
        sub_232C4A0F4();
        sub_232C4A538();
        v79 = v78;
        sub_232B66BA0();
        if (__OFADD__(v80, v81))
        {
          goto LABEL_74;
        }

        v82 = sub_232C4A4F8();
        v83 = v495;
        if (v82)
        {
          v84 = sub_232C4A538();
          if ((v79 & 1) != (v85 & 1))
          {
            goto LABEL_79;
          }

          v38 = v84;
        }

        *(v5 + 56) = v83;
        if (v79)
        {
        }

        else
        {
          v86 = sub_232B0B6B8(v503);
          sub_232C4A4D8(v86, v87, v88, v503, v89, v90);
        }

        sub_232C4A2C8();
        v93 = v91 + v38 * v92;
        sub_232BAD024();
        v94 = *(*(v93 + 48) + 16);
        sub_232BAD170(v94);
        sub_232C4A200(v94 + 1, v257, v276, v295, v314, v334, v354, v374, v394, v413, v431, v448, v465, v482, *v494, *&v494[8], *&v494[16], v495, v496);
        sub_232C4A2A0();
        sub_232C4A198();

        sub_232C4A220(v95, v96, v97, v98, v99, v100, v101, v102, v258, v277, v296, v315, v335, v355, v375, v395, v414, v432, v449, v466, v483, *v494, *&v494[8], *&v494[16], v495, v496, v497);
        sub_232C4A364();

        v12 = v396;
        v103 = [v396 confidenceScore];
        sub_232C4A178(v103, v104, v105, v106, v107, v108, v109, v110, v259, v278, v297, v316, v336, v356, v376, v396, v415, v433, v450, v467, v484, *v494, *&v494[8], *&v494[16], v495, v496);
        swift_isUniquelyReferenced_nonNull_native();
        sub_232C4A0F4();
        v111 = sub_232BAE188();
        sub_232B1F160(v111, v112);
        v114 = v113;
        sub_232B66BA0();
        if (__OFADD__(v115, v116))
        {
          goto LABEL_75;
        }

        v117 = sub_232C4A458();
        v118 = v495;
        if (v117)
        {
          v119 = sub_232BAE188();
          sub_232B1F160(v119, v120);
          sub_232B20914();
          if (!v44)
          {
            goto LABEL_79;
          }

          v4 = v121;
        }

        *(v5 + 56) = v118;
        if (v114)
        {
        }

        else
        {
          sub_232B0B6B8(v502);
          sub_232C4A2BC();
          sub_232B64944(v122, v123, v124, v125, v118, v126);
        }

        sub_232C4A2C8();
        v129 = v127 + v4 * v128;
        sub_232BAD024();
        v130 = *(*(v129 + 56) + 16);
        sub_232BAD170(v130);
        sub_232C4A200(v130 + 1, v260, v279, v298, v317, v337, v357, v377, v397, v416, v434, v451, v468, v485, *v494, *&v494[8], *&v494[16], v495, v496);
      }

      sub_232C4A314();
    }

    v131 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_ecrExtractions;
    sub_232B13F74(v407 + OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_ecrExtractions, v494);
    v358 = *(v407 + v131);
    v378 = sub_232B26B10();
    v318 = v358 & 0xFFFFFFFFFFFFFF8;
    v338 = v358 & 0xC000000000000001;

    while (v378)
    {
      if (v338)
      {
        v132 = MEMORY[0x2383922C0](0, v358);
      }

      else
      {
        if (!*(v318 + 16))
        {
          goto LABEL_72;
        }

        v132 = *(v358 + 32);
      }

      v133 = v132;
      v134 = sub_232C31B34(v132, &selRef_identifier);
      if (v135)
      {
        sub_232C4A3A0(v134, v135);
        sub_232C4A198();
        sub_232C4A220(v136, v137, v138, v139, v140, v141, v142, v143, v251, v270, v289, v318, v338, v358, v378, v388, v407, v426, v443, v460, v477, *v494, *&v494[8], *&v494[16], v495, v496, v497);
        sub_232C4A364();

        sub_232C4A178(v144, v145, v146, v147, v148, v149, v150, v151, v261, v280, v299, v319, v339, v359, v379, v398, v417, v435, v452, v469, v486, *v494, *&v494[8], *&v494[16], v495, v496);
        swift_isUniquelyReferenced_nonNull_native();
        sub_232C4A0F4();
        v152 = sub_232BAE188();
        sub_232B1F160(v152, v153);
        sub_232B66BA0();
        if (__OFADD__(v156, v157))
        {
          goto LABEL_76;
        }

        v158 = v154;
        v159 = v155;
        sub_232B124A8(&qword_27DDC8158, &qword_232CFE4D0);
        v160 = sub_232C4A3C4();
        v161 = v495;
        if (v160)
        {
          v162 = sub_232BAE188();
          sub_232B1F160(v162, v163);
          sub_232B20914();
          if (!v44)
          {
            goto LABEL_79;
          }

          v158 = v164;
        }

        *(v5 + 56) = v161;
        if (v159)
        {
        }

        else
        {
          sub_232B0B6B8(v501);
          sub_232C4A2BC();
          sub_232B64944(v165, v166, v167, v168, v161, v169);
        }

        sub_232C4A2C8();
        v172 = v170 + v158 * v171;
        sub_232BAD024();
        v173 = *(*(v172 + 64) + 16);
        sub_232BAD170(v173);
        sub_232C4A4B8(v173 + 1, v262, v281, v300, v320, v340, v360, v380, v399, v418, v436, v453, v470, v487, *v494, *&v494[8], *&v494[16], v495, v496);
        sub_232C4A2A0();
        sub_232C4A198();
        sub_232C4A220(v174, v175, v176, v177, v178, v179, v180, v181, v263, v282, v301, v321, v341, v361, v381, v400, v419, v437, v454, v471, v488, *v494, *&v494[8], *&v494[16], v495, v496, v497);
        sub_232C4A364();

        sub_232C4A498(v182, v183, v184, v185, v186, v187, v188, v189, v264, v283, v302, v322, v342, v362, v382, v401, v420);
        sub_232C4A3F4();
        sub_232CE9E60();

        sub_232C4A178(v190, v191, v192, v193, v194, v195, v196, v197, v265, v284, v303, v323, v343, v363, v383, v402, v421, v438, v455, v472, v489, *v494, *&v494[8], *&v494[16], v495, v496);
        swift_isUniquelyReferenced_nonNull_native();
        sub_232C4A0F4();
        sub_232C4A538();
        v199 = v198;
        sub_232B66BA0();
        if (__OFADD__(v200, v201))
        {
          goto LABEL_77;
        }

        v202 = sub_232C4A4F8();
        v203 = v495;
        if (v202)
        {
          v204 = sub_232C4A538();
          if ((v199 & 1) != (v205 & 1))
          {
            goto LABEL_79;
          }

          v159 = v204;
        }

        *(v5 + 56) = v203;
        if (v199)
        {
        }

        else
        {
          v206 = sub_232B0B6B8(v500);
          sub_232C4A4D8(v206, v207, v208, v500, v209, v210);
        }

        sub_232C4A2C8();
        v213 = v211 + v159 * v212;
        sub_232BAD024();
        v214 = *(*(v213 + 72) + 16);
        sub_232BAD170(v214);
        sub_232C4A200(v214 + 1, v266, v285, v304, v324, v344, v364, v384, v403, v422, v439, v456, v473, v490, *v494, *&v494[8], *&v494[16], v495, v496);
        sub_232C4A2A0();
        sub_232C4A198();

        sub_232C4A220(v215, v216, v217, v218, v219, v220, v221, v222, v267, v286, v305, v325, v345, v365, v385, v404, v423, v440, v457, v474, v491, *v494, *&v494[8], *&v494[16], v495, v496, v497);
        sub_232C4A364();

        v133 = v405;
        v223 = [v405 confidenceScore];
        sub_232C4A178(v223, v224, v225, v226, v227, v228, v229, v230, v268, v287, v306, v326, v346, v366, v386, v405, v424, v441, v458, v475, v492, *v494, *&v494[8], *&v494[16], v495, v496);
        swift_isUniquelyReferenced_nonNull_native();
        sub_232C4A0F4();
        v231 = sub_232BAE188();
        sub_232B1F160(v231, v232);
        v234 = v233;
        sub_232B66BA0();
        if (__OFADD__(v235, v236))
        {
          goto LABEL_78;
        }

        v237 = sub_232C4A458();
        v238 = v495;
        if (v237)
        {
          v239 = sub_232BAE188();
          sub_232B1F160(v239, v240);
          sub_232B20914();
          if (!v44)
          {
            goto LABEL_79;
          }

          v4 = v241;
        }

        *(v5 + 56) = v238;
        if (v234)
        {
        }

        else
        {
          sub_232B0B6B8(v499);
          sub_232C4A2BC();
          sub_232B64944(v242, v243, v244, v245, v238, v246);
        }

        sub_232C4A2C8();
        v249 = v247 + v4 * v248;
        sub_232BAD024();
        v250 = *(*(v249 + 80) + 16);
        sub_232BAD170(v250);
        sub_232C4A200(v250 + 1, v269, v288, v307, v327, v347, v367, v387, v406, v425, v442, v459, v476, v493, *v494, *&v494[8], *&v494[16], v495, v496);
      }

      sub_232C4A314();
    }

    v6 = v289;
  }

  return result;
}

uint64_t sub_232C455E0(uint64_t a1)
{
  v2 = v1;
  v3 = sub_232C4B888(a1);
  v5 = v4;
  sub_232B13F74(v1 + 24, v13);
  v6 = *(v1 + 24);

  sub_232B1E0D0(v3, v5, v6);
  v8 = v7;

  if (v8)
  {
  }

  else
  {
    v12[0] = *(*(v2 + 24) + 16);
    sub_232CEA720();
    sub_232B207D4(v2 + 24, v12);
    swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v2 + 24);
    sub_232C4A3E8();
    sub_232B1FAF0();
    *(v2 + 24) = v11;
    swift_endAccess();
  }

  v9 = *(v2 + 24);

  sub_232B1E0D0(v3, v5, v9);

  return sub_232B41C8C();
}

uint64_t sub_232C45710()
{
  v1 = v0;
  sub_232B13F74(v0 + 24, v44);
  v2 = *(v0 + 24);
  v3 = v2[2];
  sub_232B13F74(v1 + 32, v43);
  v4 = *(v1 + 32);
  if (v3 == *(v4 + 16))
  {
LABEL_19:

    v33 = sub_232BAE188();
    sub_232B1E0D0(v33, v34, v4);

    return sub_232BC1E48();
  }

  else
  {
    v5 = v2 + 8;
    sub_232B34F88();
    v8 = v7 & v6;
    v10 = (v9 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v11 = 0;
    v36 = v10;
    v37 = v2 + 8;
    v38 = v2;
    v39 = v1;
    if (v8)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_3:
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      if (v12 >= v10)
      {

        v4 = *(v1 + 32);
        goto LABEL_19;
      }

      v8 = v5[v12];
      ++v11;
    }

    while (!v8);
    v11 = v12;
LABEL_7:
    while (1)
    {
      v13 = (v11 << 10) | (16 * __clz(__rbit64(v8)));
      v14 = (v2[6] + v13);
      v15 = v14[1];
      v40 = *v14;
      v16 = (v2[7] + v13);
      v18 = *v16;
      v17 = v16[1];
      sub_232B207D4(v1 + 32, v42);
      swift_bridgeObjectRetain_n();

      swift_isUniquelyReferenced_nonNull_native();
      v41 = *(v1 + 32);
      *(v1 + 32) = 0x8000000000000000;
      sub_232B1F160(v18, v17);
      sub_232B66BA0();
      if (__OFADD__(v21, v22))
      {
        break;
      }

      v23 = v19;
      v24 = v20;
      sub_232B124A8(&qword_27DDC6798, &qword_232CFAB80);
      if (sub_232CEA5C0())
      {
        sub_232B1F160(v18, v17);
        sub_232B20914();
        if (!v26)
        {
          goto LABEL_23;
        }

        v23 = v25;
      }

      if (v24)
      {
        v27 = (v41[7] + 16 * v23);
        *v27 = v40;
        v27[1] = v15;
      }

      else
      {
        v41[(v23 >> 6) + 8] |= 1 << v23;
        v28 = (v41[6] + 16 * v23);
        *v28 = v18;
        v28[1] = v17;
        v29 = (v41[7] + 16 * v23);
        *v29 = v40;
        v29[1] = v15;
        v30 = v41[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_22;
        }

        v41[2] = v32;
      }

      v8 &= v8 - 1;
      v1 = v39;
      *(v39 + 32) = v41;
      swift_endAccess();

      v5 = v37;
      v2 = v38;
      v10 = v36;
      if (!v8)
      {
        goto LABEL_3;
      }
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    result = sub_232CEA7A0();
    __break(1u);
  }

  return result;
}

void *sub_232C459C0(uint64_t a1, uint64_t a2)
{
  sub_232BAD8B0();
  sub_232BC1AB8();
  result = sub_232CE9CA0();
  if (result[2])
  {
    v3 = result;

    v4 = sub_232BC1E48();
    MEMORY[0x238391B80](v4);

    if (v3[2] >= 2uLL)
    {
      v5 = v3[8];
      v6 = v3[9];
      v7 = v3[10];
      v8 = v3[11];

      MEMORY[0x238391B80](v5, v6, v7, v8);

      return sub_232BC1E48();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_232C45ADC()
{
  sub_232C2E03C();
  sub_232C4A23C(v0 + 64, v1);
  v2 = *(v0 + 64);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = sub_232B5A008();
  v5 = sub_232B1F160(v3, v4);
  if ((v6 & 1) == 0)
  {
LABEL_15:

    return 0;
  }

  v7 = *(*(v2 + 56) + 8 * v5);

  v9 = 0;
  v10 = 0;
  v11 = 1 << *(v7 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v7 + 64);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = v9;
LABEL_12:
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v17 = *(*(v7 + 56) + ((v15 << 9) | (8 * v16)));
    v18 = __OFADD__(v10, v17);
    v10 += v17;
    if (v18)
    {
      __break(1u);
      goto LABEL_15;
    }
  }

  while (1)
  {
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v15 >= v14)
    {

      return v10;
    }

    v13 = *(v7 + 64 + 8 * v15);
    ++v9;
    if (v13)
    {
      v9 = v15;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_232C45BFC(uint64_t a1, uint64_t a2)
{
  sub_232C4A23C(v2 + 48, a2);
  v3 = *(v2 + 48);
  sub_232B34F88();
  v7 = v6 & v5;
  if (v7)
  {
    v8 = 0;
    v9 = __clz(__rbit64(v7));
    v10 = (v7 - 1) & v7;
    v11 = (v4 + 63) >> 6;
LABEL_7:
    v14 = *(*(v3 + 56) + 8 * v9);
    swift_bridgeObjectRetain_n();

    while (v10)
    {
LABEL_13:
      v16 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v17 = *(*(v3 + 56) + 8 * (v16 | (v8 << 6)));
      if (v14 < v17)
      {

        v14 = v17;
      }
    }

    while (1)
    {
      v15 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v15 >= v11)
      {

        return;
      }

      v10 = *(v3 + 64 + 8 * v15);
      ++v8;
      if (v10)
      {
        v8 = v15;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = 0;
    v11 = (v4 + 63) >> 6;
    while (1)
    {
      v8 = v7 + 1;
      if (v7 + 1 >= v11)
      {
        break;
      }

      v13 = *(v3 + 72 + 8 * v7);
      v12 += 64;
      ++v7;
      if (v13)
      {
        v10 = (v13 - 1) & v13;
        v9 = __clz(__rbit64(v13)) + v12;
        goto LABEL_7;
      }
    }
  }
}

uint64_t sub_232C45DD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void *))
{
  v28 = a4;
  v6 = a3();
  v34 = MEMORY[0x277D84F90];
  v31 = v6;
  v32 = sub_232B26B10();
  v7 = 0;
  v29 = v6 & 0xFFFFFFFFFFFFFF8;
  v30 = v6 & 0xC000000000000001;
  while (v32 != v7)
  {
    if (v30)
    {
      v8 = MEMORY[0x2383922C0](v7, v31);
    }

    else
    {
      if (v7 >= *(v29 + 16))
      {
        goto LABEL_32;
      }

      v8 = *(v31 + 8 * v7 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    sub_232C31B34(v8, &selRef_text);
    v10 = sub_232CE9DD0();
    v6 = v11;

    v33[0] = 32;
    v33[1] = 0xE100000000000000;
    MEMORY[0x28223BE20](v12);
    v27[2] = v33;
    v13 = sub_232C484F0(1, 1, v28, v27, v10, v6);
    if (v13[2])
    {
      v6 = v13[4];
      v14 = v13[5];
      v16 = v13[6];
      v15 = v13[7];

      v17 = MEMORY[0x238391B80](v6, v14, v16, v15);
      v19 = v18;
    }

    else
    {

      v17 = 0;
      v19 = 0xE000000000000000;
    }

    if (v17 == a1 && v19 == a2)
    {
    }

    else
    {
      v6 = sub_232CEA750();

      if ((v6 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v21 = [v9 contactIdentifier];
    if (v21)
    {

      sub_232CEA560();
      v6 = *(v34 + 16);
      sub_232CEA590();
      sub_232CEA5A0();
      sub_232CEA570();
      goto LABEL_20;
    }

LABEL_19:

LABEL_20:
    ++v7;
  }

  v6 = v34;
  if (!sub_232B26B10())
  {

    return sub_232C4A400();
  }

  sub_232B26B2C();
  if ((v6 & 0xC000000000000001) == 0)
  {
    v22 = *(v6 + 32);
    goto LABEL_25;
  }

LABEL_33:
  v22 = MEMORY[0x2383922C0](0, v6);
LABEL_25:
  v23 = v22;

  sub_232C31B34(v23, &selRef_contactIdentifier);
  v24 = [v23 text];
  if (v24)
  {
    v25 = v24;
    sub_232CE9D50();
  }

  return sub_232C4A400();
}

uint64_t sub_232C46100(uint64_t a1, uint64_t a2)
{
  v2 = sub_232C45D80(a1, a2);
  if (v3)
  {
    return v2;
  }

  v5 = sub_232BAE188();
  v4 = sub_232C45DAC(v5, v6);
  if (!v7)
  {
  }

  return v4;
}

uint64_t sub_232C4616C()
{
  sub_232C2E03C();
  sub_232C46498();
  v3 = v2;
  v17 = MEMORY[0x277D84F90];
  v4 = sub_232B26B10();
  for (i = 0; v4 != i; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x2383922C0](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v8 = sub_232C31B34(v6, &selRef_identifier);
    if (!v9)
    {
LABEL_13:

      continue;
    }

    if (v8 == v1 && v9 == v0)
    {
    }

    else
    {
      v11 = sub_232CEA750();

      if ((v11 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    sub_232CEA560();
    sub_232CEA590();
    sub_232CEA5A0();
    sub_232CEA570();
  }

  v0 = v17;
  if (!sub_232B26B10())
  {

    return sub_232C4A400();
  }

  sub_232B26B2C();
  if ((v17 & 0xC000000000000001) == 0)
  {
    v12 = *(v17 + 32);
    goto LABEL_21;
  }

LABEL_29:
  v12 = MEMORY[0x2383922C0](0, v0);
LABEL_21:
  v13 = v12;

  sub_232C31B34(v13, &selRef_contactIdentifier);
  v14 = [v13 text];
  if (v14)
  {
    v15 = v14;
    sub_232CE9D50();
  }

  return sub_232C4A400();
}

uint64_t sub_232C46380()
{
  v2 = sub_232CE9C60();
  sub_232C46498();
  sub_232C42B98(v0, &v2);

  return v2;
}

uint64_t sub_232C463F0(uint64_t a1, uint64_t a2)
{
  sub_232C4A23C(v2 + 16, a2);

  sub_232C42F30(v3);
  v5 = v4;

  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = (v5 + 32);
    while (1)
    {
      v10 = *v9++;
      v11 = __OFADD__(v8, v10);
      v8 += v10;
      if (v11)
      {
        break;
      }

      if (!--v7)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
LABEL_7:

    return v8;
  }

  return result;
}

void sub_232C464A4(void *a1)
{
  sub_232B13F74(v1 + 16, v95);
  v3 = *(v1 + 16) + 64;
  sub_232B34F88();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  v81 = v9;
  swift_bridgeObjectRetain_n();
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  v78 = v8;
  v79 = v3;
  v80 = a1;
LABEL_2:
  v84 = v11;
  if (v6)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_98;
    }

    if (v12 >= v8)
    {
      break;
    }

    v6 = *(v3 + 8 * v12);
    ++v10;
    if (v6)
    {
      v10 = v12;
LABEL_7:
      v82 = (v6 - 1) & v6;
      v83 = v10;
      v13 = *(*(v81 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v6)))));
      sub_232B13F74(v13 + 32, v94);
      v14 = *(v13 + 32);
      v15 = sub_232B26B10();

      v16 = 0;
      v90 = MEMORY[0x277D84F90];
      while (v15 != v16)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x2383922C0](v16, v14);
        }

        else
        {
          if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_91;
          }

          v17 = *(v14 + 8 * v16 + 32);
        }

        if (__OFADD__(v16, 1))
        {
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

        v18 = *a1;
        sub_232B13F74(v17 + *a1, v93);
        v19 = *(v17 + v18);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_232BA57A8();
          sub_232B36FE4(v22, v23, v24, v25);
          v90 = v26;
        }

        v21 = *(v90 + 16);
        v20 = *(v90 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_232B36FE4(v20 > 1, v21 + 1, 1, v90);
          v90 = v27;
        }

        *(v90 + 16) = v21 + 1;
        *(v90 + 8 * v21 + 32) = v19;
        ++v16;
      }

      v28 = 0;
      v85 = *(v90 + 16);
      v29 = MEMORY[0x277D84F90];
      while (2)
      {
        if (v28 == v85)
        {

          v11 = v84;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = sub_232BA57A8();
            sub_232B36FE4(v50, v51, v52, v84);
            v11 = v53;
          }

          v3 = v79;
          a1 = v80;
          v49 = *(v11 + 16);
          v48 = *(v11 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_232B36FE4(v48 > 1, v49 + 1, 1, v11);
            v11 = v54;
          }

          *(v11 + 16) = v49 + 1;
          *(v11 + 8 * v49 + 32) = v29;
          v8 = v78;
          v6 = v82;
          v10 = v83;
          goto LABEL_2;
        }

        if (v28 >= *(v90 + 16))
        {
          goto LABEL_92;
        }

        v30 = *(v90 + 32 + 8 * v28);
        v31 = v30 >> 62;
        if (v30 >> 62)
        {
          v32 = sub_232CEA610();
        }

        else
        {
          v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v33 = v29 >> 62;
        if (v29 >> 62)
        {
          v34 = sub_232CEA610();
        }

        else
        {
          v34 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v35 = v34 + v32;
        if (__OFADD__(v34, v32))
        {
          goto LABEL_93;
        }

        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (!v33)
          {
            v36 = v29 & 0xFFFFFFFFFFFFFF8;
            if (v35 > *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
LABEL_33:
              v29 = sub_232CEA540();
              v36 = v29 & 0xFFFFFFFFFFFFFF8;
            }

            v37 = *(v36 + 16);
            v38 = *(v36 + 24);
            if (v31)
            {
              v39 = sub_232CEA610();
            }

            else
            {
              v39 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            ++v28;
            if (v39)
            {
              if (((v38 >> 1) - v37) < v32)
              {
                goto LABEL_95;
              }

              v40 = v36 + 8 * v37 + 32;
              v87 = v28;
              if (v31)
              {
                if (v39 < 1)
                {
                  goto LABEL_97;
                }

                sub_232C49F60();
                for (i = 0; i != v39; ++i)
                {
                  sub_232B124A8(&qword_27DDC6AF0, &qword_232CF6E70);
                  v42 = sub_232B4CFEC(v92, i, v30);
                  v44 = *v43;
                  v42(v92, 0);
                  *(v40 + 8 * i) = v44;
                }
              }

              else
              {
                sub_232C49F1C();
                swift_arrayInitWithCopy();
              }

              v28 = v87;
              if (v32 > 0)
              {
                v45 = *(v36 + 16);
                v46 = __OFADD__(v45, v32);
                v47 = v45 + v32;
                if (v46)
                {
                  goto LABEL_96;
                }

                *(v36 + 16) = v47;
              }
            }

            else
            {

              if (v32 > 0)
              {
                goto LABEL_94;
              }
            }

            continue;
          }
        }

        else if (!v33)
        {
          goto LABEL_33;
        }

        break;
      }

      sub_232CEA610();
      goto LABEL_33;
    }
  }

  v55 = 0;
  v91 = *(v11 + 16);
  v56 = MEMORY[0x277D84F90];
  v89 = v11 + 32;
  while (1)
  {
    if (v55 == v91)
    {

      return;
    }

    if (v55 >= *(v11 + 16))
    {
      goto LABEL_99;
    }

    v57 = *(v89 + 8 * v55);
    v58 = v57 >> 62 ? sub_232CEA610() : *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v59 = v56 >> 62;
    v60 = v56 >> 62 ? sub_232CEA610() : *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v61 = v60 + v58;
    if (__OFADD__(v60, v58))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v59)
      {
LABEL_69:
        sub_232CEA610();
      }

LABEL_70:
      v56 = sub_232CEA540();
      v62 = v56 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_71;
    }

    if (v59)
    {
      goto LABEL_69;
    }

    v62 = v56 & 0xFFFFFFFFFFFFFF8;
    if (v61 > *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_70;
    }

LABEL_71:
    ++v55;
    v63 = *(v62 + 16);
    v64 = (*(v62 + 24) >> 1) - v63;
    v65 = v62 + 8 * v63;
    if (v57 >> 62)
    {
      v67 = sub_232CEA610();
      if (v67)
      {
        v68 = v67;
        v88 = sub_232CEA610();
        if (v64 < v88)
        {
          goto LABEL_104;
        }

        if (v68 < 1)
        {
          goto LABEL_105;
        }

        v86 = v55;
        v69 = v65 + 32;
        sub_232C49F60();
        for (j = 0; j != v68; ++j)
        {
          v71 = sub_232C4A3F4();
          sub_232B124A8(v71, v72);
          v73 = sub_232B4CFEC(v92, j, v57);
          v75 = *v74;
          v73(v92, 0);
          *(v69 + 8 * j) = v75;
        }

        v11 = v84;
        v55 = v86;
        v66 = v88;
        goto LABEL_81;
      }

LABEL_85:

      if (v58 > 0)
      {
        goto LABEL_101;
      }
    }

    else
    {
      v66 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v66)
      {
        goto LABEL_85;
      }

      if (v64 < v66)
      {
        goto LABEL_103;
      }

      sub_232C49F1C();
      swift_arrayInitWithCopy();
LABEL_81:

      if (v66 < v58)
      {
        goto LABEL_101;
      }

      if (v66 > 0)
      {
        v76 = *(v62 + 16);
        v46 = __OFADD__(v76, v66);
        v77 = v76 + v66;
        if (v46)
        {
          goto LABEL_102;
        }

        *(v62 + 16) = v77;
      }
    }
  }

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
}

uint64_t sub_232C46C20()
{

  return v0;
}

uint64_t sub_232C46C70()
{
  sub_232C46C20();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

void *sub_232C46CC8()
{
  type metadata accessor for PoemMessageThread();
  sub_232B41C8C();
  v0[2] = sub_232CE9C60();
  sub_232B41C8C();
  sub_232C4A3E8();
  v0[3] = sub_232CE9C60();
  sub_232B41C8C();
  sub_232C4A3E8();
  v0[4] = sub_232CE9C60();
  sub_232B41C8C();
  sub_232C4A3E8();
  v0[5] = sub_232CE9C60();
  sub_232B41C8C();
  v0[6] = sub_232CE9C60();
  sub_232B41C8C();
  v0[7] = sub_232CE9C60();
  sub_232B124A8(&qword_27DDC8090, &qword_232CFE0D8);
  sub_232B41C8C();
  v0[8] = sub_232CE9C60();
  return v0;
}

char *sub_232C46DA8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v76 = a2;
  v77 = a3;
  v75 = sub_232CE8C00();
  sub_232B48F0C();
  v68 = v7;
  MEMORY[0x28223BE20](v8);
  sub_232B20704();
  v67 = v10 - v9;
  v11 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  MEMORY[0x28223BE20](v11 - 8);
  v74 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v66 - v14;
  v16 = sub_232CE8D10();
  sub_232B48F0C();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  sub_232C4A13C();
  MEMORY[0x28223BE20](v20);
  v22 = &v66 - v21;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0xE000000000000000;
  *(v3 + 4) = 0;
  *(v3 + 5) = 0xE000000000000000;
  *(v3 + 6) = 0;
  *(v3 + 7) = 0xE000000000000000;
  *(v3 + 8) = 0;
  *(v3 + 9) = 0xE000000000000000;
  v23 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_time;
  sub_232CE8D00();
  v24 = &v3[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_path];
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  v66 = v24;
  v25 = &v3[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_type];
  *v25 = 0;
  v25[1] = 0xE000000000000000;
  v73 = v25;
  v26 = MEMORY[0x277D84F90];
  v69 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_sender;
  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_sender] = MEMORY[0x277D84F90];
  v70 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_receiver;
  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_receiver] = v26;
  v71 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_senderAddresses;
  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_senderAddresses] = v26;
  v72 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_receiverAddresses;
  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_receiverAddresses] = v26;
  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_madExtractions] = v26;
  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_taggerExtractions] = v26;
  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_ecrExtractions] = v26;
  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_senderExtractions] = v26;
  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_receiverExtractions] = v26;
  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_pronounExtractions] = v26;
  v27 = sub_232C207F8([a1 attributeSet], &selRef_contentSnippet);
  if (v28)
  {
    *(v3 + 6) = v27;
    *(v3 + 7) = v28;
  }

  v29 = sub_232C207F8([a1 attributeSet], &selRef_uniqueIdentifier);
  if (v30)
  {
    *(v3 + 4) = v29;
    *(v3 + 5) = v30;
  }

  v31 = [a1 attributeSet];
  v32 = [v31 contentCreationDate];

  if (v32)
  {
    sub_232CE8CF0();

    (*(v18 + 32))(v22, v4, v16);
    sub_232B207D4(&v5[v23], v80);
    (*(v18 + 40))(&v5[v23], v22, v16);
    swift_endAccess();
  }

  v33 = sub_232C4A2E4();
  v34 = sub_232C207F8(v33, &selRef_filename);
  if (v35)
  {
    *(v5 + 8) = v34;
    *(v5 + 9) = v35;
  }

  v36 = sub_232C4A2E4();
  v37 = [v36 contentURL];

  v38 = v75;
  if (v37)
  {
    v39 = v74;
    sub_232CE8BB0();

    v40 = 0;
  }

  else
  {
    v40 = 1;
    v39 = v74;
  }

  sub_232B12504(v39, v40, 1, v38);
  v41 = sub_232C4A3F4();
  sub_232C4A008(v41, v42);
  if (sub_232B12480(v15, 1, v38))
  {
    sub_232B13790(v15, &qword_27DDC6AD8, &unk_232CF82F0);
  }

  else
  {
    v43 = v68;
    v44 = v67;
    (*(v68 + 16))(v67, v15, v38);
    sub_232B13790(v15, &qword_27DDC6AD8, &unk_232CF82F0);
    v45 = sub_232CE8B60();
    v47 = v46;
    (*(v43 + 8))(v44, v38);
    v48 = v66;
    *v66 = v45;
    v48[1] = v47;
  }

  v49 = sub_232C4A2E4();
  v50 = sub_232C49EB0(v49, &selRef_authorNames);
  if (v50)
  {
    sub_232C4A278(v50);
  }

  v51 = sub_232C4A2E4();
  v52 = sub_232C49EB0(v51, &selRef_recipientNames);
  if (v52)
  {
    sub_232C4A278(v52);
  }

  v53 = sub_232C4A2E4();
  v54 = sub_232C49EB0(v53, &selRef_authorAddresses);
  if (v54)
  {
    sub_232C4A278(v54);
  }

  v55 = sub_232C4A2E4();
  v56 = sub_232C49EB0(v55, &selRef_recipientAddresses);
  if (v56)
  {
    sub_232C4A278(v56);
  }

  v57 = sub_232C4A2E4();
  v58 = sub_232C207F8(v57, &selRef_contentType);
  if (v59)
  {
    v60 = v73;
    *v73 = v58;
    v60[1] = v59;
  }

  v61 = sub_232C4A2E4();
  v62 = [v61 attributeDictionary];

  v63 = sub_232CE9C40();
  v78 = v76;
  v79 = v77;
  sub_232CEA490();
  sub_232B1E34C(v80, v63);

  sub_232B1FA60(v80);
  if (v82)
  {
    if (swift_dynamicCast())
    {
      v64 = v79;
      *(v5 + 2) = v78;
      *(v5 + 3) = v64;
    }
  }

  else
  {
    sub_232B13790(v81, &qword_27DDC68C8, &qword_232CF6210);
  }

  return v5;
}

void sub_232C4743C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_232C4A420();
  a25 = v28;
  a26 = v29;
  v50 = v30;
  v51 = v31;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v49 = a27;
  *(v27 + 2) = 0;
  *(v27 + 3) = 0xE000000000000000;
  *(v27 + 4) = 0;
  *(v27 + 5) = 0xE000000000000000;
  *(v27 + 6) = 0;
  *(v27 + 7) = 0xE000000000000000;
  *(v27 + 8) = 0;
  *(v27 + 9) = 0xE000000000000000;
  v44 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_time;
  sub_232CE8D00();
  v45 = &v27[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_path];
  *v45 = 0;
  *(v45 + 1) = 0xE000000000000000;
  v46 = &v27[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_type];
  *v46 = 0;
  *(v46 + 1) = 0xE000000000000000;
  v47 = MEMORY[0x277D84F90];
  *&v27[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_sender] = MEMORY[0x277D84F90];
  *&v27[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_receiver] = v47;
  *&v27[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_senderAddresses] = v47;
  *&v27[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_receiverAddresses] = v47;
  *&v27[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_madExtractions] = v47;
  *&v27[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_taggerExtractions] = v47;
  *&v27[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_ecrExtractions] = v47;
  *&v27[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_senderExtractions] = v47;
  *&v27[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_receiverExtractions] = v47;
  *&v27[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_pronounExtractions] = v47;
  *(v27 + 2) = v43;
  *(v27 + 3) = v41;

  *(v27 + 4) = v39;
  *(v27 + 5) = v37;

  sub_232B207D4(&v27[v44], &a12);
  sub_232CE8D10();
  sub_232B13F24();
  (*(v48 + 40))(&v27[v44], v35);
  swift_endAccess();
  *v46 = v33;
  *(v46 + 1) = v50;

  *(v27 + 6) = v51;
  *(v27 + 7) = v49;

  sub_232C4A43C();
}

BOOL sub_232C475D8(double a1)
{
  v2 = v1;
  sub_232CE9A30();
  sub_232B48F0C();
  MEMORY[0x28223BE20](v4);
  sub_232B20704();
  v5 = sub_232CE8D10();
  sub_232B48F0C();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v11);
  v13 = &v29[-v12 - 8];
  MEMORY[0x28223BE20](v14);
  v16 = &v29[-v15 - 8];
  if (a1 != 0.0)
  {
    v17 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_time;
    sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_time, v29);
    (*(v7 + 16))(v16, v2 + v17, v5);
    sub_232CE8D00();
    sub_232CE8CC0();
    v18 = *(v7 + 8);
    v18(v10, v5);
    v19 = sub_232CE8CE0();
    v18(v13, v5);
    v18(v16, v5);
    if ((v19 & 1) == 0)
    {
      sub_232CE9A20();
      v22 = sub_232CE9A00();
      v23 = sub_232CEA1A0();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_232B02000, v22, v23, "Ignoring message for Poem", v24, 2u);
        MEMORY[0x238393870](v24, -1, -1);
      }

      v25 = sub_232B5A008();
      v26(v25);
      return 0;
    }
  }

  sub_232C4A258();
  if (!v20)
  {
    return 0;
  }

  return sub_232C47A50() || sub_232C478A0();
}

BOOL sub_232C478A0()
{
  v1 = sub_232B124A8(&qword_27DDC8148, &qword_232CFE4C8);
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_232C4A478();
  sub_232B48F0C();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_232C4A13C();
  MEMORY[0x28223BE20](v6);

  sub_232BA6074();
  sub_232CE9690();
  if (sub_232B12480(v0, 1, v2) == 1)
  {
    sub_232B13790(v0, &qword_27DDC8148, &qword_232CFE4C8);
  }

  else
  {
    v7 = sub_232C4A34C();
    v8(v7);
    sub_232CE9650();
    v9 = sub_232CE9670();
    v10 = *(v4 + 8);
    v11 = sub_232BAE188();
    v10(v11);
    v12 = sub_232C4A1F4();
    v10(v12);
    if (v9)
    {
      sub_232C4A258();
      return v13 != 0;
    }
  }

  return 0;
}

BOOL sub_232C47A50()
{
  v1 = sub_232B124A8(&qword_27DDC8148, &qword_232CFE4C8);
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_232C4A478();
  sub_232B48F0C();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_232C4A13C();
  MEMORY[0x28223BE20](v6);

  sub_232BA6074();
  sub_232CE9690();
  if (sub_232B12480(v0, 1, v2) == 1)
  {
    sub_232B13790(v0, &qword_27DDC8148, &qword_232CFE4C8);
  }

  else
  {
    v7 = sub_232C4A34C();
    v8(v7);
    sub_232CE9660();
    v9 = sub_232CE9670();
    v10 = *(v4 + 8);
    v11 = sub_232BAE188();
    v10(v11);
    v12 = sub_232C4A1F4();
    v10(v12);
    if (v9)
    {
      sub_232C4A258();
      return v13 != 0;
    }
  }

  return 0;
}

void sub_232C47C00(uint64_t a1)
{
  v5 = MEMORY[0x277D84F90];
  v81 = MEMORY[0x277D84F90];
  sub_232B26B10();
  sub_232C4A414();
  v7 = a1 & 0xC000000000000001;
  v8 = &selRef_initWithFirst_second_;
  while (v1 != v2)
  {
    if (v7)
    {
      v19 = sub_232C4A1F4();
      MEMORY[0x2383922C0](v19);
    }

    else
    {
      sub_232C4A294();
      if (v9)
      {
        goto LABEL_73;
      }

      sub_232C4A2FC();
    }

    sub_232C4A26C();
    if (v10)
    {
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      return;
    }

    if (sub_232C4A550() == 3 && [v3 v8[225]] == 1)
    {
      v11 = sub_232CEA560();
      sub_232C4A158(v11, v12, v13, v14, v15, v16, v17, v18, v80, v81);
      sub_232C40B5C();
      sub_232CEA5A0();
      sub_232CEA570();
      v8 = &selRef_initWithFirst_second_;
    }

    else
    {
    }

    ++v2;
  }

  v20 = v80;
  sub_232C4A1D8(v80 + OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_taggerExtractions, v6);
  sub_232C5E360(v81);
  v21 = &selRef_initWithFirst_second_;
  swift_endAccess();
  v23 = 0;
  v82 = v5;
  while (v1 != v23)
  {
    if (v7)
    {
      v32 = sub_232C4A1F4();
      MEMORY[0x2383922C0](v32);
    }

    else
    {
      sub_232C4A294();
      if (v9)
      {
        goto LABEL_75;
      }

      sub_232C4A2FC();
    }

    sub_232C4A26C();
    if (v10)
    {
      goto LABEL_74;
    }

    if (sub_232C4A550() == 3 && ![v20 v21[225]])
    {
      v24 = sub_232CEA560();
      sub_232C4A158(v24, v25, v26, v27, v28, v29, v30, v31, v80, v82);
      sub_232C40B5C();
      sub_232CEA5A0();
      sub_232CEA570();
      v21 = &selRef_initWithFirst_second_;
    }

    else
    {
    }

    ++v23;
  }

  v33 = v80;
  sub_232C4A1D8(v80 + OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_ecrExtractions, v22);
  sub_232C5E360(v82);
  swift_endAccess();
  v35 = 0;
  v83 = v5;
  while (v1 != v35)
  {
    if (v7)
    {
      v44 = sub_232C4A1F4();
      MEMORY[0x2383922C0](v44);
    }

    else
    {
      sub_232C4A294();
      if (v9)
      {
        goto LABEL_77;
      }

      sub_232C4A2FC();
    }

    sub_232C4A26C();
    if (v10)
    {
      goto LABEL_76;
    }

    if (sub_232C4A550() == 1 && ([v33 isCoref] & 1) == 0)
    {
      v36 = sub_232CEA560();
      sub_232C4A158(v36, v37, v38, v39, v40, v41, v42, v43, v80, v83);
      sub_232C40B5C();
      sub_232CEA5A0();
      sub_232CEA570();
    }

    else
    {
    }

    ++v35;
  }

  v45 = v80;
  sub_232C4A1D8(v80 + OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_senderExtractions, v34);
  sub_232C5E360(v83);
  swift_endAccess();
  v47 = 0;
  v84 = MEMORY[0x277D84F90];
  while (v1 != v47)
  {
    if (v7)
    {
      v56 = sub_232C4A1F4();
      MEMORY[0x2383922C0](v56);
    }

    else
    {
      sub_232C4A294();
      if (v9)
      {
        goto LABEL_79;
      }

      sub_232C4A2FC();
    }

    sub_232C4A26C();
    if (v10)
    {
      goto LABEL_78;
    }

    if (sub_232C4A550() == 2 && ([v45 isCoref] & 1) == 0)
    {
      v48 = sub_232CEA560();
      sub_232C4A158(v48, v49, v50, v51, v52, v53, v54, v55, v80, v84);
      sub_232C40B5C();
      sub_232CEA5A0();
      sub_232CEA570();
    }

    else
    {
    }

    ++v47;
  }

  sub_232C4A1D8(v80 + OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_receiverExtractions, v46);
  sub_232C5E360(v84);
  swift_endAccess();
  v58 = 0;
  v85 = MEMORY[0x277D84F90];
  v59 = &selRef_initWithFirst_second_;
  while (v1 != v58)
  {
    if (v7)
    {
      v68 = sub_232C4A1F4();
      MEMORY[0x2383922C0](v68);
    }

    else
    {
      sub_232C4A294();
      if (v9)
      {
        goto LABEL_81;
      }

      sub_232C4A2FC();
    }

    sub_232C4A26C();
    if (v10)
    {
      goto LABEL_80;
    }

    if ([v45 v59[225]] == 2)
    {
      v60 = sub_232CEA560();
      sub_232C4A158(v60, v61, v62, v63, v64, v65, v66, v67, v80, v85);
      sub_232C40B5C();
      sub_232CEA5A0();
      sub_232CEA570();
      v59 = &selRef_initWithFirst_second_;
    }

    else
    {
    }

    ++v58;
  }

  sub_232C4A1D8(v80 + OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_madExtractions, v57);
  sub_232C5E360(v85);
  swift_endAccess();
  v70 = 0;
  v86 = MEMORY[0x277D84F90];
  while (v1 != v70)
  {
    if (v7)
    {
      v79 = sub_232C4A1F4();
      MEMORY[0x2383922C0](v79);
    }

    else
    {
      sub_232C4A294();
      if (v9)
      {
        goto LABEL_83;
      }

      sub_232C4A2FC();
    }

    sub_232C4A26C();
    if (v10)
    {
      goto LABEL_82;
    }

    if ([v45 isCoref])
    {
      v71 = sub_232CEA560();
      sub_232C4A158(v71, v72, v73, v74, v75, v76, v77, v78, v80, v86);
      sub_232C40B5C();
      sub_232CEA5A0();
      sub_232CEA570();
    }

    else
    {
    }

    ++v70;
  }

  sub_232C4A1D8(v80 + OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_pronounExtractions, v69);
  sub_232C5E360(v86);
  swift_endAccess();
}

uint64_t sub_232C480A8()
{
  sub_232B13F74(v0 + OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_taggerExtractions, v11);
  v1 = sub_232B26B10();
  sub_232B13F74(v0 + OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_senderExtractions, v10);
  result = sub_232B26B10();
  v3 = __OFADD__(v1, result);
  v4 = v1 + result;
  if (v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_232B13F74(v0 + OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_receiverExtractions, v9);
  result = sub_232B26B10();
  v3 = __OFADD__(v4, result);
  v5 = v4 + result;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_232B13F74(v0 + OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_pronounExtractions, v8);
  result = sub_232B26B10();
  v3 = __OFADD__(v5, result);
  v7 = v5 + result;
  if (v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_232C4A23C(v0 + OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_ecrExtractions, v6);
  result = sub_232B26B10();
  if (!__OFADD__(v7, result))
  {
    return v7 + result > 0;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_232C48198()
{

  v1 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_time;
  sub_232CE8D10();
  sub_232B13F24();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_232C482D8()
{
  sub_232C48198();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for PoemMessage(uint64_t a1)
{
  result = qword_27DDC8138;
  if (!qword_27DDC8138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_232C48384(uint64_t a1)
{
  result = sub_232CE8D10();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_232C4844C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232C4848C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_232C484F0(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v43 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    sub_232CE9FB0();
    sub_232C4A37C();
    sub_232B36BB0();
    v15 = v29;
    v8 = *(v29 + 16);
    v30 = *(v29 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v30 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v31 = (v15 + 32 * v8);
      v31[4] = v6;
      v31[5] = v10;
      v31[6] = v11;
      v31[7] = v12;
      return v15;
    }

LABEL_41:
    sub_232B36BB0();
    v15 = v32;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v41 = MEMORY[0x277D84F90];
  v16 = 15;
  while (1)
  {
    v39 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v39;
        goto LABEL_30;
      }

      sub_232C4A2D4();
      v17 = sub_232CE9F80();
      v11 = v18;
      v42[0] = v17;
      v42[1] = v18;
      v19 = v43(v42);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      sub_232C4A2D4();
      v16 = sub_232CE9E70();
    }

    v22 = (v39 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v39 >> 14)
    {
      break;
    }

    v40 = sub_232CE9FB0();
    v35 = v24;
    v36 = v23;
    v34 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_232BA57A8();
      sub_232B36BB0();
      v41 = v27;
    }

    v12 = *(v41 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v41 + 24) >> 1)
    {
      sub_232B36BB0();
      v41 = v28;
    }

    *(v41 + 16) = v11;
    v26 = (v41 + 32 * v12);
    v26[4] = v40;
    v26[5] = v36;
    v26[6] = v35;
    v26[7] = v34;
LABEL_20:
    sub_232C4A2D4();
    v16 = sub_232CE9E70();
    if ((v22 & 1) == 0 && *(v41 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v41;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        sub_232CE9FB0();
        sub_232C4A37C();
        v15 = v41;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v30 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      sub_232BA57A8();
      sub_232B36BB0();
      v15 = v33;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_232C4883C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_232CFE360;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL sub_232C488A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_232CE8E80();
  sub_232B48F0C();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_232B20704();
  v10 = v9 - v8;
  v26 = v2;
  v11 = *v2;
  sub_232C49FC4(&qword_2814E25D0, MEMORY[0x277CC99D8]);
  v30 = a2;
  v12 = sub_232CE9C80();
  v28 = v11;
  v29 = v11 + 56;
  v13 = ~(-1 << *(v11 + 32));
  while (1)
  {
    v14 = v12 & v13;
    v15 = (1 << (v12 & v13)) & *(v29 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v15)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_232C4A2BC();
      v21();
      v31 = *v26;
      v22 = sub_232BA6074();
      sub_232C49208(v22, v23, isUniquelyReferenced_nonNull_native);
      *v26 = v31;
      sub_232C4A2BC();
      v24();
      return v15 == 0;
    }

    v16 = v6[9] * v14;
    v17 = v6[2];
    v17(v10, *(v28 + 48) + v16, v4);
    sub_232C49FC4(&qword_2814E25C8, MEMORY[0x277CC99E0]);
    v18 = sub_232CE9CF0();
    v19 = v6[1];
    v19(v10, v4);
    if (v18)
    {
      break;
    }

    v12 = v14 + 1;
  }

  v19(v30, v4);
  v17(a1, *(v28 + 48) + v16, v4);
  return v15 == 0;
}

BOOL sub_232C48B20(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_232CEA820();
  sub_232CE9E40();
  v8 = sub_232CEA850();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_232CEA750() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  v17 = sub_232C4A1F4();
  sub_232C4946C(v17, v18, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}