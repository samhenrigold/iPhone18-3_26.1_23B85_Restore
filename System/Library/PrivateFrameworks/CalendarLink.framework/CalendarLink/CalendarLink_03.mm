uint64_t sub_242817094()
{
  v2 = *v1;
  *(*v1 + 3608) = v0;

  if (v0)
  {
    v3 = *(v2 + 3584);

    v4 = *(v2 + 3552);
    v5 = *(v2 + 3544);
    v6 = sub_24281AD44;
  }

  else
  {
    v4 = *(v2 + 3552);
    v5 = *(v2 + 3544);
    v6 = sub_2428171F4;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

void sub_2428171F4()
{
  v433 = v0;
  v3 = v0;
  v432 = *MEMORY[0x277D85DE8];
  v4 = *(v0 + 3592);
  v5 = *(v0 + 3584);
  [v5 setCalendar_];

  v388 = *(v0 + 3608);
  sub_2428B2DC8();
  v6 = *(v0 + 2929);
  v420 = v0;
  if (*(v0 + 2929) <= 1u)
  {
    v7 = *(v0 + 2929);
    if (v6)
    {
      v7 = 1;
    }
  }

  else if (v6 == 2)
  {
    v7 = 2;
  }

  else
  {
    if (v6 != 3)
    {
      goto LABEL_11;
    }

    v7 = 3;
  }

  if (v7 != [*(v3 + 3584) privacyLevel])
  {
    if (![*(v3 + 3584) allowsPrivacyLevelModifications])
    {
      v10 = *(v3 + 3584);
      v11 = *(v3 + 3568);
      v12 = *(v3 + 3560);
      v13 = *(v3 + 3528);
      v14 = *(v3 + 3504);
      v15 = *(v3 + 3496);

      sub_2427CCDB0();
      swift_allocError();
      v17 = 64;
      goto LABEL_85;
    }

    [*(v3 + 3584) setPrivacyLevel_];
  }

LABEL_11:
  sub_2428B2DC8();
  v8 = *(v3 + 3656);
  if (*(v3 + 3656) > 1u)
  {
    if (v8 != 2)
    {
      goto LABEL_21;
    }

    v9 = 3;
  }

  else if (*(v3 + 3656))
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  if (v9 != [*(v3 + 3584) status])
  {
    if (*(v3 + 3662) != 1)
    {
      v10 = *(v3 + 3584);
      v11 = *(v3 + 3568);
      v12 = *(v3 + 3560);
      v13 = *(v3 + 3528);
      v14 = *(v3 + 3504);
      v15 = *(v3 + 3496);

      sub_2427CCDB0();
      swift_allocError();
      v17 = 56;
      goto LABEL_85;
    }

    [*(v3 + 3584) setStatus_];
  }

LABEL_21:
  sub_2428B2DC8();
  v18 = *(v3 + 2935);
  if (v18 > 2)
  {
    if (v18 == 3)
    {
      v19 = 2;
    }

    else
    {
      if (v18 != 4)
      {
        goto LABEL_31;
      }

      v19 = 3;
    }
  }

  else if (*(v3 + 2935))
  {
    v19 = v18 != 1;
  }

  else
  {
    v19 = -1;
  }

  if (v19 != [*(v3 + 3584) availability])
  {
    v41 = [*(v3 + 3584) allowsAvailabilityModifications];
    v42 = *(v3 + 3584);
    if (!v41)
    {
      v47 = *(v3 + 3568);
      v48 = *(v3 + 3560);
      v49 = *(v3 + 3528);
      v50 = *(v3 + 3504);
      v51 = *(v3 + 3496);

      sub_2427CCDB0();
      swift_allocError();
      *v52 = 65;
      swift_willThrow();

      (*(v50 + 8))(v49, v51);
      goto LABEL_242;
    }

    v43 = [*(v3 + 3584) calendar];
    if (!v43)
    {
      goto LABEL_285;
    }

    v44 = v43;
    v45 = [v43 supportedEventAvailabilities];

    if (v18 <= 1)
    {
      if (v18)
      {
        if (v45)
        {
          v46 = 0;
          goto LABEL_88;
        }
      }

      else if (!v45)
      {
        v46 = -1;
        goto LABEL_88;
      }
    }

    else if (v18 == 2)
    {
      if ((v45 & 2) != 0)
      {
        v46 = 1;
        goto LABEL_88;
      }
    }

    else if (v18 == 3)
    {
      if ((v45 & 4) != 0)
      {
        v46 = 2;
LABEL_88:
        [*(v3 + 3584) setAvailability_];
        goto LABEL_31;
      }
    }

    else if ((v45 & 8) != 0)
    {
      v46 = 3;
      goto LABEL_88;
    }

    v10 = *(v3 + 3584);
    v11 = *(v3 + 3568);
    v12 = *(v3 + 3560);
    v13 = *(v3 + 3528);
    v14 = *(v3 + 3504);
    v15 = *(v3 + 3496);

    sub_2427CCDB0();
    swift_allocError();
    v17 = 72;
LABEL_85:
    *v16 = v17;
    swift_willThrow();

    goto LABEL_86;
  }

LABEL_31:
  sub_2428B2DC8();
  v20 = *(v3 + 2944);
  if (!v20)
  {
    goto LABEL_181;
  }

  v21 = *(v3 + 3584);
  v22 = MEMORY[0x277D84F90];
  v421[0] = sub_242821938(MEMORY[0x277D84F90]);
  v23 = [v21 attendees];
  if (v23)
  {
    v24 = v23;
    v394 = v20;
    sub_242822BFC(0, &qword_27ECC3260, 0x277CC5A70);
    v25 = sub_2428B46C8();

    v26 = sub_24281C3F4(v25);

    if (v26)
    {
      v27 = v26 & 0xFFFFFFFFFFFFFF8;
      if (v26 >> 62)
      {
        goto LABEL_95;
      }

      v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      for (i = v26; v28; i = v26)
      {
        v1 = 0;
        v2 = v26 & 0xC000000000000001;
        v26 = *(v3 + 3312) + 8;
        v415 = MEMORY[0x277D84F98];
        v29 = v28;
        do
        {
          if (v2)
          {
            v30 = MEMORY[0x245D1B5D0](v1, i);
          }

          else
          {
            if (v1 >= *(v27 + 16))
            {
              goto LABEL_90;
            }

            v30 = *(i + 8 * v1 + 32);
          }

          v31 = v30;
          v32 = v1 + 1;
          if (__OFADD__(v1, 1))
          {
            __break(1u);
LABEL_90:
            __break(1u);
            goto LABEL_91;
          }

          v3 = v27;
          v33 = *(v420 + 3328);
          v34 = v2;
          v35 = *(v420 + 3304);
          v36 = [v30 URL];
          sub_2428B35B8();

          v37 = v31;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v422 = v415;
          sub_2428200AC(v37, v33, isUniquelyReferenced_nonNull_native);

          v39 = v33;
          v27 = v3;
          v40 = v35;
          v2 = v34;
          (*v26)(v39, v40);
          ++v1;
        }

        while (v32 != v29);
        v396 = MEMORY[0x277D84F98];
        v26 = i;
        v54 = 0;
        while (1)
        {
          if (v2)
          {
            v55 = MEMORY[0x245D1B5D0](v54, i);
          }

          else
          {
            if (v54 >= *(v27 + 16))
            {
              goto LABEL_92;
            }

            v55 = *(i + 8 * v54 + 32);
          }

          v1 = v55;
          v56 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            break;
          }

          v57 = [v55 emailAddress];
          if (v57)
          {
            v58 = v57;
            v59 = sub_2428B4618();
            v61 = v60;

            v1 = v1;
            v62 = swift_isUniquelyReferenced_nonNull_native();
            *&v422 = v396;
            v63 = v59;
            v27 = v3;
            sub_242820424(v1, v63, v61, v62, sub_24288D650, sub_24288C818);

            v2 = v34;

            if (v56 == v29)
            {
LABEL_64:
              v64 = 0;
              v390 = MEMORY[0x277D84F98];
LABEL_65:
              v65 = v64;
              while (1)
              {
                if (v2)
                {
                  v66 = MEMORY[0x245D1B5D0](v65, i);
                }

                else
                {
                  if (v65 >= *(v27 + 16))
                  {
                    goto LABEL_94;
                  }

                  v66 = *(i + 8 * v65 + 32);
                }

                v1 = v66;
                v64 = v65 + 1;
                if (__OFADD__(v65, 1))
                {
                  goto LABEL_93;
                }

                v67 = [v66 phoneNumber];
                if (v67)
                {
                  v68 = v67;
                  v69 = sub_2428B4618();
                  v71 = v70;

                  v1 = v1;
                  v72 = swift_isUniquelyReferenced_nonNull_native();
                  *&v422 = v390;
                  v73 = v69;
                  v27 = v3;
                  sub_242820424(v1, v73, v71, v72, sub_24288D650, sub_24288C818);

                  v2 = v34;

                  if (v64 != v29)
                  {
                    goto LABEL_65;
                  }

LABEL_75:
                  v3 = v420;
                  goto LABEL_97;
                }

                ++v65;
                if (v64 == v29)
                {
                  goto LABEL_75;
                }
              }
            }

            v54 = v56;
          }

          else
          {

            ++v54;
            if (v56 == v29)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        v28 = sub_2428B49C8();
      }

      v415 = MEMORY[0x277D84F98];
      v396 = MEMORY[0x277D84F98];
      v390 = MEMORY[0x277D84F98];
LABEL_97:
      v74 = sub_24281C670(MEMORY[0x277D84F98], v26);

      v421[0] = v74;
      v75 = v394;
      v393 = v394[2];
      if (v393)
      {
        v76 = 0;
        v77 = *(v3 + 3312);
        v397 = *(v3 + 3296);
        v392 = (v77 + 48);
        v387 = (v77 + 32);
        v22 = MEMORY[0x277D84F90];
        v386 = (v77 + 8);
        v391 = *(v3 + 3288);
        v78 = v394 + 8;
        v389 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v76 >= v75[2])
          {
            __break(1u);
            goto LABEL_267;
          }

          v401 = v76;
          v407 = v22;
          v79 = *(v3 + 3304);
          v80 = *(v3 + 3296);
          v81 = *(v3 + 3280);
          v82 = *(v3 + 3272);
          v83 = *(v78 - 4);
          v84 = *(v78 - 3);
          v85 = *(v78 - 2);
          v86 = *(v78 - 1);
          v398 = v78;
          v87 = *v78;
          sub_2428B2F38();
          v399 = v84;
          sub_2428B2F38();
          v404 = v85;
          sub_2428B2F38();
          sub_2428B2F38();
          v411 = v87;
          sub_2428B2F38();
          sub_2428B2C68();
          sub_2427E72B8(v81, v80);
          v88 = &v80[*(v391 + 24)];
          v2 = &qword_2428B6560;
          sub_2427E0918(v88, v82, &qword_27ECC2CE0, &qword_2428B6560);
          if ((*v392)(v82, 1, v79) == 1)
          {
            sub_2427E0980(*(v3 + 3272), &qword_27ECC2CE0, &qword_2428B6560);
            v22 = v407;
            v89 = v87;
            v75 = v394;
          }

          else
          {
            (*v387)(*(v3 + 3320), *(v3 + 3272), *(v3 + 3304));
            if (*(v415 + 16))
            {
              v90 = sub_24281E894(*(v3 + 3320));
              v2 = *v386;
              v22 = v407;
              if (v91)
              {
                v92 = *(v3 + 3320);
                v93 = *(v3 + 3304);
                v94 = *(*(v415 + 56) + 8 * v90);
                (v2)(v92, v93);
                v95 = v94;
                v75 = v394;
                goto LABEL_118;
              }
            }

            else
            {
              v2 = *v386;
              v22 = v407;
            }

            v75 = v394;
            v89 = v87;
            (v2)(*(v3 + 3320), *(v3 + 3304));
          }

          v96 = v397[1];
          if (v96 && *(v396 + 16) && (v92 = v396, v97 = sub_242801C04(**(v3 + 3296), v96), (v98 & 1) != 0))
          {
            v99 = v396;
          }

          else
          {
            v100 = v397[3];
            if (!v100 || !*(v390 + 16) || (v92 = v390, v97 = sub_242801C04(v397[2], v100), (v101 & 1) == 0))
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v22 = sub_2427F7934(0, *(v22 + 2) + 1, 1, v22);
              }

              v1 = *(v22 + 2);
              v107 = *(v22 + 3);
              if (v1 >= v107 >> 1)
              {
                v22 = sub_2427F7934((v107 > 1), v1 + 1, 1, v22);
              }

              sub_242822B9C(*(v3 + 3296), type metadata accessor for AttendeeEntity.AttendeeAddresses);
              *(v22 + 2) = v1 + 1;
              v108 = &v22[40 * v1];
              *(v108 + 4) = v83;
              *(v108 + 5) = v399;
              *(v108 + 6) = v85;
              *(v108 + 7) = v86;
              *(v108 + 8) = v89;
              goto LABEL_100;
            }

            v99 = v390;
          }

          v95 = *(*(v99 + 56) + 8 * v97);
LABEL_118:
          v1 = v95;
          v102 = [v1 objectID];
          if (!v102)
          {
            __break(1u);
            goto LABEL_281;
          }

          v2 = v102;
          v103 = sub_24281FB88(v102);

          sub_2428B2C68();
          LODWORD(v103) = *(v3 + 3657);
          if ((v103 ^ ([v1 participantRole] != 2)))
          {
            sub_242822B9C(*(v3 + 3296), type metadata accessor for AttendeeEntity.AttendeeAddresses);
          }

          else
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v389 = sub_2427F7A54(0, *(v389 + 2) + 1, 1, v389);
            }

            v2 = *(v389 + 2);
            v104 = *(v389 + 3);
            if (v2 >= v104 >> 1)
            {
              v389 = sub_2427F7A54((v104 > 1), v2 + 1, 1, v389);
            }

            v105 = *(v3 + 3296);

            sub_242822B9C(v105, type metadata accessor for AttendeeEntity.AttendeeAddresses);
            *(v389 + 2) = v2 + 1;
            v106 = &v389[48 * v2];
            *(v106 + 4) = v1;
            *(v106 + 5) = v83;
            *(v106 + 6) = v399;
            *(v106 + 7) = v85;
            *(v106 + 8) = v86;
            *(v106 + 9) = v411;
          }

LABEL_100:
          v76 = v401 + 1;
          v78 = v398 + 5;
          if (v393 == v401 + 1)
          {
            goto LABEL_131;
          }
        }
      }

      v22 = MEMORY[0x277D84F90];
      v389 = MEMORY[0x277D84F90];
LABEL_131:

      v53 = v389;
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
      v53 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v53 = v22;
  }

  if (*(v22 + 2))
  {
    goto LABEL_133;
  }

  if ((v421[0] & 0xC000000000000001) == 0)
  {
    if (*(v421[0] + 16) <= 0)
    {
      goto LABEL_149;
    }

LABEL_133:
    v109 = *(v3 + 3584);
    if (*(v3 + 3662) != 1)
    {
      v114 = *(v3 + 3568);
      v115 = *(v3 + 3560);
      v116 = *(v3 + 3528);
      v117 = *(v3 + 3504);
      v118 = *(v3 + 3496);

      sub_2427CCDB0();
      swift_allocError();
      *v119 = 56;
      swift_willThrow();

      (*(v117 + 8))(v116, v118);

      goto LABEL_242;
    }

    if (([*(v3 + 3584) currentUserMayActAsOrganizer] & 1) == 0)
    {

      if ((v421[0] & 0xC000000000000001) != 0)
      {
        v120 = sub_2428B49C8();
      }

      else
      {
        v120 = *(v421[0] + 16);
      }

      v146 = *(v3 + 3504);
      sub_2427CCDB0();
      swift_allocError();
      v148 = (v146 + 8);
      v149 = *(v3 + 3584);
      v150 = v3;
      v151 = *(v3 + 3568);
      v152 = v150[445];
      v153 = v150[441];
      v154 = v150[437];
      if (v120 < 1)
      {
        v155 = 113;
      }

      else
      {
        v155 = 120;
      }

      *v147 = v155;
      swift_willThrow();

      (*v148)(v153, v154);

      goto LABEL_242;
    }

    v408 = v22;
    v110 = *(v53 + 2);
    if (v110)
    {
      v111 = v53 + 40;
      do
      {
        v1 = *(v111 + 1);
        v112 = *(v111 - 1);
        sub_2428B2F38();
        sub_2428B2F38();
        sub_2428B2F38();
        sub_2428B2F38();
        sub_2428B2F38();
        sub_2428B2C68();
        if (*(v420 + 2932))
        {
          v113 = 2;
        }

        else
        {
          v113 = 1;
        }

        [v112 setParticipantRole_];

        v111 += 48;
        --v110;
      }

      while (v110);
    }

    goto LABEL_151;
  }

  if (sub_2428B49C8() > 0)
  {
    goto LABEL_133;
  }

LABEL_149:
  if (*(v53 + 2))
  {
    goto LABEL_133;
  }

  v408 = v22;
LABEL_151:
  if ((v421[0] & 0xC000000000000001) != 0)
  {
    v121 = sub_2428B4B18();
    v75 = 0;
    v122 = 0;
    v123 = 0;
    v2 = v121 | 0x8000000000000000;
  }

  else
  {
    v124 = -1 << *(v421[0] + 32);
    v122 = ~v124;
    v75 = (v421[0] + 64);
    v125 = -v124;
    if (v125 < 64)
    {
      v126 = ~(-1 << v125);
    }

    else
    {
      v126 = -1;
    }

    v123 = v126 & *(v421[0] + 64);
    v2 = v421[0];
  }

  v404 = v122;
  v127 = (v122 + 64) >> 6;
  v401 = v421[0];
  sub_2428B3218();
  v22 = 0;
  if ((v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_161;
  }

LABEL_158:
  v128 = sub_2428B4B48();
  if (v128)
  {
    v130 = v129;
    *(v420 + 2968) = v128;
    sub_242822BFC(0, &qword_27ECC2E28, 0x277CC5A60);
    swift_dynamicCast();
    v131 = *(v420 + 2984);
    *(v420 + 2952) = v130;
    sub_242822BFC(0, &qword_27ECC2E30, 0x277CC59A0);
    swift_dynamicCast();
    v1 = *(v420 + 2960);
    v132 = v22;
    v133 = v123;
    if (v131)
    {
      while (1)
      {
        [*(v420 + 3584) removeAttendee_];

        v22 = v132;
        v123 = v133;
        if ((v2 & 0x8000000000000000) != 0)
        {
          goto LABEL_158;
        }

LABEL_161:
        v134 = v22;
        v135 = v123;
        v132 = v22;
        if (!v123)
        {
          break;
        }

LABEL_165:
        v133 = (v135 - 1) & v135;
        v136 = (v132 << 9) | (8 * __clz(__rbit64(v135)));
        v137 = *(*(v2 + 56) + v136);
        v131 = *(*(v2 + 48) + v136);
        v1 = v137;
        if (!v131)
        {
          goto LABEL_168;
        }
      }

      while (1)
      {
        v132 = v134 + 1;
        if (__OFADD__(v134, 1))
        {
          break;
        }

        if (v132 >= v127)
        {
          goto LABEL_168;
        }

        v135 = v75[v132];
        ++v134;
        if (v135)
        {
          goto LABEL_165;
        }
      }

LABEL_267:
      __break(1u);
      goto LABEL_268;
    }
  }

LABEL_168:
  sub_2427C9D4C(v2);
  v138 = v408[2];
  if (v138)
  {
    v22 = v408[4];
    v139 = v408[5];
    v3 = v408[6];
    v140 = v408[7];
    v141 = v408[8];
    *&v422 = v22;
    *(&v422 + 1) = v139;
    *&v423 = v3;
    *(&v423 + 1) = v140;
    *&v424 = v141;
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    v75 = v388;
    sub_2427EAFC0();
    if (v388)
    {
      v143 = *(v420 + 3584);
      v144 = *(v420 + 3568);
      v145 = *(v420 + 3560);
      (*(*(v420 + 3504) + 8))(*(v420 + 3528), *(v420 + 3496));

      goto LABEL_242;
    }

    v92 = v142;
    [*(v420 + 3584) addAttendee_];

    v156 = v408;
    if (v138 != 1)
    {
      v157 = (v408 + 13);
      v158 = 1;
      do
      {
        if (v158 >= v156[2])
        {
          goto LABEL_271;
        }

        v22 = *(v157 - 4);
        v159 = *(v157 - 3);
        v3 = *(v157 - 2);
        v160 = *(v157 - 1);
        v141 = *v157;
        *&v422 = v22;
        *(&v422 + 1) = v159;
        *&v423 = v3;
        *(&v423 + 1) = v160;
        *&v424 = v141;
        sub_2428B2F38();
        sub_2428B2F38();
        sub_2428B2F38();
        sub_2428B2F38();
        sub_2428B2F38();
        v75 = 0;
        sub_2427EAFC0();
        v92 = v161;
        ++v158;
        [*(v420 + 3584) addAttendee_];

        v157 += 5;
        v156 = v408;
      }

      while (v138 != v158);
    }
  }

  v3 = v420;
LABEL_181:
  v162 = *(v3 + 3248);
  v163 = *(v3 + 3240);
  v164 = *(v3 + 3232);
  sub_2428B2DE8();
  sub_2428B2DA8();

  v165 = (*(v163 + 88))(v162, v164);
  LODWORD(v22) = *MEMORY[0x277CB9EB8];
  if (v165 == *MEMORY[0x277CB9EB8])
  {
    v166 = *(v3 + 3662);
    v167 = *(v3 + 3248);
    (*(*(v3 + 3240) + 96))(v167, *(v3 + 3232));
    if (v166 != 1)
    {
      v172 = *(v3 + 3584);
      v173 = *(v3 + 3568);
      v174 = *(v3 + 3560);
      v175 = *(v3 + 3528);
      v176 = *(v420 + 3504);
      v177 = *(v420 + 3496);

      sub_2427CCDB0();
      swift_allocError();
      *v178 = 56;
      swift_willThrow();

      goto LABEL_187;
    }

    v168 = *(v3 + 3584);
    if (*(v167 + 8))
    {
      v169 = v168;
      v170 = sub_2428B4608();

      v171 = *(v3 + 3584);
    }

    else
    {
      v171 = v168;
      v170 = 0;
    }

    [v171 setNotes_];
  }

  else
  {
    (*(*(v3 + 3240) + 8))(*(v3 + 3248), *(v3 + 3232));
  }

  v179 = *(v3 + 3208);
  v180 = *(v3 + 3200);
  v181 = *(v3 + 3192);
  sub_2428B2DE8();
  sub_2428B2DA8();

  if ((*(v180 + 88))(v179, v181) == v22)
  {
    v182 = *(v3 + 3662);
    v183 = *(v3 + 3224);
    v184 = *(v3 + 3208);
    (*(*(v3 + 3200) + 96))(v184, *(v3 + 3192));
    sub_24281E660(v184, v183, &qword_27ECC2DF8, &unk_2428C1770);
    if (v182 != 1)
    {
      v190 = *(v3 + 3584);
      v191 = *(v3 + 3568);
      v192 = *(v420 + 3560);
      v193 = *(v420 + 3528);
      v194 = *(v420 + 3504);
      v195 = *(v420 + 3496);
      v196 = *(v420 + 3224);

      sub_2427CCDB0();
      swift_allocError();
      *v197 = 56;
      swift_willThrow();

      sub_2427E0980(v196, &qword_27ECC2DF8, &unk_2428C1770);
      (*(v194 + 8))(v193, v195);
      goto LABEL_242;
    }

    v185 = *(v3 + 3216);
    sub_2427E0918(*(v3 + 3224), v185, &qword_27ECC2DF8, &unk_2428C1770);
    v186 = type metadata accessor for Location(0);
    v187 = (*(*(v186 - 8) + 48))(v185, 1, v186);
    v188 = *(v3 + 3216);
    if (v187 == 1)
    {
      sub_2427E0980(*(v3 + 3216), &qword_27ECC2DF8, &unk_2428C1770);
      v189 = 0;
    }

    else
    {
      v189 = sub_24280A010();
      sub_242822B9C(v188, type metadata accessor for Location);
    }

    v198 = *(v3 + 3224);
    [*(v3 + 3584) setStructuredLocation_];

    sub_2427E0980(v198, &qword_27ECC2DF8, &unk_2428C1770);
  }

  else
  {
    (*(*(v3 + 3200) + 8))(*(v3 + 3208), *(v3 + 3192));
  }

  v404 = v3 + 2392;
  v199 = *(v3 + 3168);
  v200 = *(v3 + 3160);
  v201 = *(v3 + 3152);
  sub_2428B2DE8();
  sub_2428B2DA8();

  if ((*(v200 + 88))(v199, v201) != v22)
  {
    (*(*(v3 + 3160) + 8))(*(v3 + 3168), *(v3 + 3152));
    goto LABEL_214;
  }

  v202 = *(v3 + 3662);
  v203 = *(v3 + 3184);
  v204 = *(v3 + 3168);
  (*(*(v3 + 3160) + 96))(v204, *(v3 + 3152));
  sub_24281E660(v204, v203, &qword_27ECC44A0, &qword_2428C16C0);
  if (v202 != 1)
  {
    v240 = *(v3 + 3584);
    v241 = *(v3 + 3568);
    v242 = *(v3 + 3560);
    v243 = *(v3 + 3528);
    v244 = *(v420 + 3504);
    v245 = *(v420 + 3496);
    v246 = *(v420 + 3184);

    sub_2427CCDB0();
    swift_allocError();
    *v247 = 56;
    swift_willThrow();

    (*(v244 + 8))(v243, v245);
    v248 = v246;
    goto LABEL_233;
  }

  v141 = *(*(v3 + 3128) + 48);
  if ((v141)(*(v3 + 3184), 1, *(v3 + 3120)) != 1 || ![*(v3 + 3584) isOrWasPartOfRecurringSeries] || objc_msgSend(*(v3 + 3584), sel_isFirstOccurrence) && !objc_msgSend(*(v3 + 3584), sel_isDetached))
  {
    goto LABEL_275;
  }

  v205 = [*(v3 + 3584) masterEvent];
  if (!v205)
  {
    goto LABEL_275;
  }

  v158 = v205;
  v75 = v205;
  v206 = [v75 recurrenceRules];
  if (!v206)
  {
    goto LABEL_274;
  }

  v207 = v206;
  sub_242822BFC(0, &qword_27ECC2E20, 0x277CC5AA8);
  v92 = sub_2428B46C8();

  if (v92 >> 62)
  {
    goto LABEL_272;
  }

  if (!*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_273;
  }

LABEL_208:
  v401 = v158;
  if ((v92 & 0xC000000000000001) == 0)
  {
    if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v208 = *(v92 + 32);
      goto LABEL_211;
    }

    __break(1u);
LABEL_283:
    __break(1u);
LABEL_284:
    __break(1u);
LABEL_285:
    __break(1u);
    return;
  }

LABEL_281:
  v208 = MEMORY[0x245D1B5D0](0, v92);
LABEL_211:
  v2 = v208;
  v1 = v3;
  v209 = *(v3 + 3584);

  v210 = [v209 endDate];
  if (!v210)
  {
LABEL_268:
    v215 = 0;
    goto LABEL_269;
  }

  v211 = *(v1 + 3448);
  v212 = *(v1 + 3432);
  v213 = *(v1 + 3424);
  v214 = v210;
  sub_2428B3678();

  v215 = sub_2428B3658();
  (*(v212 + 8))(v211, v213);
LABEL_269:
  v355 = *(v1 + 3184);
  v356 = [objc_allocWithZone(MEMORY[0x277CC5A90]) initWithEndDate_];

  [v2 setRecurrenceEnd_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
  v357 = swift_allocObject();
  *(v357 + 16) = xmmword_2428B5A90;
  *(v357 + 32) = v2;
  v358 = v2;
  v359 = sub_2428B46B8();

  [v75 setRecurrenceRules_];

  *(v1 + 2930) = 0;
  sub_24281E5F8(v404, v1 + 1936);
  sub_2428B2DD8();

  sub_24281E630(v404);
  sub_2427E0980(v355, &qword_27ECC44A0, &qword_2428C16C0);
  v3 = v1;
  for (j = v401; ; j = 0)
  {
    *(v3 + 3616) = j;
    sub_2428B2DC8();
    if ((*(v3 + 2928) & 1) == 0)
    {
      [*(v3 + 3584) setTravelTime_];
    }

    v217 = *(v3 + 3112);
    v218 = *(v3 + 3104);
    v219 = *(v3 + 3096);
    sub_2428B2DE8();
    sub_2428B2DA8();

    v220 = (*(v218 + 88))(v217, v219);
    v92 = *(v3 + 3112);
    v221 = *(v3 + 3104);
    v222 = *(v3 + 3096);
    if (v220 != v22)
    {
      (*(v221 + 8))(*(v3 + 3112), v222);
      goto LABEL_236;
    }

    (*(v221 + 96))(*(v3 + 3112), v222);
    v75 = *v92;
    v223 = MEMORY[0x277D84F90];
    if (!*v92)
    {
      goto LABEL_235;
    }

    *&v422 = MEMORY[0x277D84F90];
    v416 = v75[2];
    if (!v416)
    {
LABEL_234:

LABEL_235:
      v249 = *(v3 + 3584);
      v250 = *(v404 + 112);
      v428 = *(v404 + 96);
      v429 = v250;
      v430 = *(v404 + 128);
      *&v431 = *(v404 + 144);
      v251 = *(v404 + 48);
      v424 = *(v404 + 32);
      v425 = v251;
      v252 = *(v404 + 80);
      v426 = *(v404 + 64);
      v427 = v252;
      v253 = *(v404 + 16);
      v422 = *v404;
      v423 = v253;
      sub_24281C8D8(v249, v223);

LABEL_236:
      v254 = *(v3 + 3024);
      v255 = *(v3 + 3016);
      v256 = *(v3 + 3008);
      sub_2428B2DE8();
      sub_2428B2DA8();

      if ((*(v255 + 88))(v254, v256) == v22)
      {
        v257 = *(v3 + 3662);
        v258 = *(v3 + 3264);
        v259 = *(v3 + 3024);
        (*(*(v3 + 3016) + 96))(v259, *(v3 + 3008));
        sub_24281E660(v259, v258, &qword_27ECC2CE0, &qword_2428B6560);
        v260 = *(v3 + 3584);
        if (v257 != 1)
        {
          v266 = *(v3 + 3568);
          v267 = *(v420 + 3560);
          v268 = *(v420 + 3528);
          v269 = j;
          v270 = *(v420 + 3504);
          v271 = *(v420 + 3496);
          v272 = *(v420 + 3264);

          sub_2427CCDB0();
          swift_allocError();
          *v273 = 56;
          swift_willThrow();

          sub_2427E0980(v272, &qword_27ECC2CE0, &qword_2428B6560);
          (*(v270 + 8))(v268, v271);
          goto LABEL_242;
        }

        v261 = *(v3 + 3312);
        v262 = *(v3 + 3304);
        v263 = *(v3 + 3256);
        sub_2427E0918(*(v3 + 3264), v263, &qword_27ECC2CE0, &qword_2428B6560);
        LODWORD(v262) = (*(v261 + 48))(v263, 1, v262);
        v264 = v260;
        if (v262 == 1)
        {
          v265 = 0;
        }

        else
        {
          v275 = *(v3 + 3312);
          v276 = *(v3 + 3304);
          v277 = *(v3 + 3256);
          v265 = sub_2428B35A8();
          (*(v275 + 8))(v277, v276);
        }

        v278 = *(v3 + 3584);
        v279 = *(v3 + 3264);
        [v278 setURL_];

        sub_2427E0980(v279, &qword_27ECC2CE0, &qword_2428B6560);
      }

      else
      {
        (*(*(v3 + 3016) + 8))(*(v3 + 3024), *(v3 + 3008));
      }

      sub_2428B2DC8();
      v280 = *(v3 + 2934);
      if (v280 == 7)
      {
        goto LABEL_251;
      }

      v281 = [*(v3 + 3584) allowsParticipationStatusModifications];
      v282 = *(v3 + 3584);
      if (v281)
      {
        LOBYTE(v422) = v280;
        [v282 setParticipationStatus_];
LABEL_251:
        v283 = [*(v3 + 3584) hasChanges];
        v284 = *(v3 + 3584);
        if (!j && !v283)
        {
          v406 = *(v420 + 3568);
          v410 = *(v420 + 3560);
          v285 = *(v420 + 3504);
          v413 = *(v420 + 3496);
          v417 = *(v420 + 3528);
          v403 = *(v420 + 3000);

          sub_2428B2DC8();
          v286 = *(v420 + 768);
          v428 = *(v420 + 752);
          v429 = v286;
          v287 = *(v420 + 800);
          v430 = *(v420 + 784);
          v431 = v287;
          v288 = *(v420 + 704);
          v424 = *(v420 + 688);
          v425 = v288;
          v289 = *(v420 + 736);
          v426 = *(v420 + 720);
          v427 = v289;
          v290 = *(v420 + 672);
          v422 = *(v420 + 656);
          v423 = v290;
          OpenEventDetailsIntent.init()(v421);
          v292 = v421[0];
          v291 = v421[1];
          v294 = v421[2];
          v293 = v421[3];
          v295 = v429;
          *(v420 + 912) = v428;
          *(v420 + 928) = v295;
          v296 = v431;
          *(v420 + 944) = v430;
          *(v420 + 960) = v296;
          v297 = v425;
          *(v420 + 848) = v424;
          *(v420 + 864) = v297;
          v298 = v427;
          *(v420 + 880) = v426;
          *(v420 + 896) = v298;
          v299 = v423;
          *(v420 + 816) = v422;
          *(v420 + 832) = v299;
          sub_2428B2DD8();
          sub_2428B2DC8();
          v300 = *(v3 + 1088);
          *(v420 + 112) = *(v3 + 1072);
          *(v420 + 128) = v300;
          v301 = *(v3 + 1120);
          *(v420 + 144) = *(v3 + 1104);
          *(v420 + 160) = v301;
          v302 = *(v3 + 1024);
          *(v420 + 48) = *(v3 + 1008);
          *(v420 + 64) = v302;
          v303 = *(v3 + 1056);
          *(v420 + 80) = *(v3 + 1040);
          *(v420 + 96) = v303;
          v304 = *(v3 + 992);
          *(v420 + 16) = *(v3 + 976);
          *(v420 + 32) = v304;
          sub_24280ACB8((v420 + 16), v292, v291, v294, v293, v403);

          sub_2427CCE04(v420 + 16);

          (*(v285 + 8))(v417, v413);
          goto LABEL_254;
        }

        v305 = [*(v3 + 3584) hasChanges];

        if (v305)
        {
          v306 = *(v3 + 3584);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
          v307 = swift_allocObject();
          *(v3 + 3624) = v307;
          *(v307 + 16) = xmmword_2428B5A90;
          *(v307 + 32) = v306;
          v308 = v306;
          v309 = sub_2428B2DE8();
          *(v3 + 3632) = v309;
          v310 = swift_task_alloc();
          *(v3 + 3640) = v310;
          *v310 = v3;
          v310[1] = sub_24281A2E8;

          sub_24280C5F4(v3 + 2933, v307, v309);
          return;
        }

        v315 = *(v3 + 3616);
        if (!v315 || (v316 = *(v3 + 3568), *(v3 + 2976) = 0, v317 = v315, v318 = [v316 saveEvent:v317 span:1 error:v3 + 2976], v319 = *(v3 + 2976), v317, v318))
        {
          v320 = v3;
          v321 = (v3 + 1136);
          EventEntity.init(_:)(*(v320 + 3584), (v320 + 1296));
          v322 = *(v320 + 1408);
          v321[6] = *(v320 + 1392);
          v321[7] = v322;
          v323 = *(v320 + 1440);
          v321[8] = *(v320 + 1424);
          v321[9] = v323;
          v324 = *(v320 + 1344);
          v321[2] = *(v320 + 1328);
          v321[3] = v324;
          v325 = *(v320 + 1376);
          v321[4] = *(v320 + 1360);
          v321[5] = v325;
          v326 = *(v320 + 1312);
          *v321 = *(v320 + 1296);
          v321[1] = v326;
          v327 = sub_24281E5E0(v321);
          v328 = *(v320 + 3616);
          v329 = *(v320 + 3584);
          v330 = *(v320 + 3568);
          v331 = *(v320 + 3560);
          v332 = *(v320 + 3528);
          v333 = *(v320 + 3504);
          v334 = *(v320 + 3496);
          if (v327 == 1)
          {
            sub_2427CCDB0();
            swift_allocError();
            *v335 = 25;
            swift_willThrow();

            (*(v333 + 8))(v332, v334);
            goto LABEL_242;
          }

          v414 = *(v320 + 3000);
          v336 = v321[7];
          *(v320 + 272) = v321[6];
          *(v320 + 288) = v336;
          v337 = v321[9];
          *(v320 + 304) = v321[8];
          *(v320 + 320) = v337;
          v338 = v321[3];
          *(v320 + 208) = v321[2];
          *(v320 + 224) = v338;
          v339 = v321[5];
          *(v320 + 240) = v321[4];
          *(v320 + 256) = v339;
          v340 = v321[1];
          *(v320 + 176) = *v321;
          *(v320 + 192) = v340;
          v341 = *(v320 + 1408);
          *(v320 + 1552) = *(v320 + 1392);
          *(v320 + 1568) = v341;
          v342 = *(v320 + 1440);
          *(v320 + 1584) = *(v320 + 1424);
          *(v320 + 1600) = v342;
          v343 = *(v320 + 1344);
          *(v320 + 1488) = *(v320 + 1328);
          *(v320 + 1504) = v343;
          v344 = *(v320 + 1376);
          *(v320 + 1520) = *(v320 + 1360);
          *(v320 + 1536) = v344;
          v345 = *(v320 + 1312);
          *(v320 + 1456) = *(v320 + 1296);
          *(v320 + 1472) = v345;
          sub_2427CD4FC(v320 + 1456, v320 + 1616);
          OpenEventDetailsIntent.init()(&v422);
          v346 = v422;
          v347 = v423;
          v348 = *(v320 + 288);
          *(v320 + 1872) = *(v320 + 272);
          *(v320 + 1888) = v348;
          v349 = *(v320 + 320);
          *(v320 + 1904) = *(v320 + 304);
          *(v320 + 1920) = v349;
          v350 = *(v320 + 224);
          *(v320 + 1808) = *(v320 + 208);
          *(v320 + 1824) = v350;
          v351 = *(v320 + 256);
          *(v320 + 1840) = *(v320 + 240);
          *(v320 + 1856) = v351;
          v352 = *(v320 + 192);
          *(v320 + 1776) = *(v320 + 176);
          *(v320 + 1792) = v352;
          sub_2428B2DD8();
          sub_24280ACB8((v320 + 176), v346, *(&v346 + 1), v347, *(&v347 + 1), v414);

          sub_2427E0980(v320 + 1296, &unk_27ECC2E10, &qword_2428BB3B8);

          (*(v333 + 8))(v332, v334);
LABEL_254:

          v274 = *(v420 + 8);
          goto LABEL_243;
        }

        v172 = *(v3 + 3584);
        v353 = *(v3 + 3568);
        v354 = *(v3 + 3560);
        v175 = *(v3 + 3528);
        v176 = *(v420 + 3504);
        v177 = *(v420 + 3496);
        sub_2428B3538();

        swift_willThrow();
LABEL_187:

        (*(v176 + 8))(v175, v177);
        goto LABEL_242;
      }

      v311 = *(v3 + 3568);
      v312 = j;
      v313 = *(v3 + 3560);
      v13 = *(v3 + 3528);
      v14 = *(v3 + 3504);
      v15 = *(v3 + 3496);

      sub_2427CCDB0();
      swift_allocError();
      *v314 = 73;
      swift_willThrow();

LABEL_86:
      (*(v14 + 8))(v13, v15);
      goto LABEL_242;
    }

    v402 = j;
    v400 = v22;
    v22 = 0;
    v224 = *(v3 + 3040);
    v412 = *(v3 + 3072);
    v409 = v75 + ((*(v412 + 80) + 32) & ~*(v412 + 80));
    v405 = (v224 + 32);
    v225 = *(v3 + 3432);
    v141 = (v224 + 8);
    v158 = v225 + 32;
    v226 = (v225 + 8);
    while (v22 < v75[2])
    {
      v227 = *(v3 + 3088);
      v228 = *(v3 + 3080);
      v229 = v3;
      sub_242822C44(&v409[*(v412 + 72) * v22], v227, type metadata accessor for AlarmTrigger);
      sub_242822C44(v227, v228, type metadata accessor for AlarmTrigger);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v158)(*(v3 + 3440), *(v3 + 3080), *(v3 + 3424));
        v230 = objc_allocWithZone(MEMORY[0x277CC5988]);
        v231 = sub_2428B3658();
        v232 = [v230 initWithAbsoluteDate_];

        if (!v232)
        {
          goto LABEL_283;
        }

        (*v226)(*(v3 + 3440), *(v3 + 3424));
      }

      else
      {
        v233 = *(v3 + 3048);
        v234 = *(v3 + 3032);
        (*v405)(*(v3 + 3056), *(v3 + 3080), v234);
        v235 = [objc_opt_self() seconds];
        sub_2428B34C8();

        sub_2428B34B8();
        v237 = v236;
        v238 = *v141;
        (*v141)(v233, v234);
        if (![objc_allocWithZone(MEMORY[0x277CC5988]) initWithRelativeOffset_])
        {
          goto LABEL_284;
        }

        v238(*(v229 + 3056), *(v229 + 3032));
        v3 = v229;
      }

      v239 = sub_242822B9C(*(v3 + 3088), type metadata accessor for AlarmTrigger);
      MEMORY[0x245D1B200](v239);
      if (*((v422 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v422 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2428B46E8();
      }

      ++v22;
      v92 = &v422;
      sub_2428B4708();
      if (v416 == v22)
      {
        v223 = v422;
        LODWORD(v22) = v400;
        j = v402;
        goto LABEL_234;
      }
    }

    __break(1u);
LABEL_271:
    __break(1u);
LABEL_272:
    if (sub_2428B49C8())
    {
      goto LABEL_208;
    }

LABEL_273:

LABEL_274:

LABEL_275:
    v360 = *(v3 + 3176);
    v361 = *(v3 + 3120);
    sub_2427E0918(*(v3 + 3184), v360, &qword_27ECC44A0, &qword_2428C16C0);
    if ((v141)(v360, 1, v361) == 1)
    {
      v362 = *(v3 + 3176);
      sub_2427E0980(*(v3 + 3184), &qword_27ECC44A0, &qword_2428C16C0);
      sub_2427E0980(v362, &qword_27ECC44A0, &qword_2428C16C0);
      continue;
    }

    v363 = *(v3 + 3144);
    v364 = *(v3 + 3136);
    v365 = *(v3 + 3128);
    v366 = *(v3 + 3120);
    (*(v365 + 32))(v363, *(v3 + 3176), v366);
    sub_242822BFC(0, &qword_27ECC2E20, 0x277CC5AA8);
    (*(v365 + 16))(v364, v363, v366);
    v367 = sub_2428B4858();
    v368 = *(v3 + 3584);
    if (!v367)
    {
      break;
    }

    v369 = v367;
    v418 = *(v3 + 3184);
    v370 = *(v3 + 3144);
    v371 = v22;
    v22 = *(v3 + 3128);
    v372 = *(v3 + 3120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
    v373 = swift_allocObject();
    *(v373 + 16) = xmmword_2428B5A90;
    *(v373 + 32) = v369;
    v374 = v368;
    v375 = v369;
    v376 = sub_2428B46B8();
    v3 = v420;

    [v374 setRecurrenceRules_];

    *(v420 + 2931) = 1;
    sub_24281E5F8(v404, v420 + 2088);
    sub_2428B2DD8();

    (*(v22 + 1))(v370, v372);
    LODWORD(v22) = v371;
    sub_24281E630(v404);
    sub_2427E0980(v418, &qword_27ECC44A0, &qword_2428C16C0);
LABEL_214:
    ;
  }

  v377 = *(v3 + 3568);
  v378 = *(v3 + 3560);
  v379 = *(v3 + 3528);
  v380 = *(v420 + 3504);
  v381 = *(v420 + 3496);
  v419 = *(v420 + 3184);
  v382 = *(v420 + 3144);
  v383 = *(v420 + 3128);
  v384 = *(v420 + 3120);

  sub_2427CCDB0();
  swift_allocError();
  *v385 = 121;
  swift_willThrow();

  (*(v383 + 8))(v382, v384);
  (*(v380 + 8))(v379, v381);
  v248 = v419;
LABEL_233:
  sub_2427E0980(v248, &qword_27ECC44A0, &qword_2428C16C0);
LABEL_242:

  v274 = *(v420 + 8);
LABEL_243:

  v274();
}

uint64_t sub_24281A2E8()
{
  v2 = *v1;
  *(*v1 + 3648) = v0;

  if (v0)
  {

    v3 = *(v2 + 3552);
    v4 = *(v2 + 3544);
    v5 = sub_24281B074;
  }

  else
  {

    v3 = *(v2 + 3552);
    v4 = *(v2 + 3544);
    v5 = sub_24281A488;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24281A488()
{
  v68 = v0;
  v67[5] = *MEMORY[0x277D85DE8];

  v1 = qword_2428BB970[*(v0 + 2933)];
  v2 = *(v0 + 3584);
  v3 = *(v0 + 3568);
  *(v0 + 2992) = 0;
  v4 = [v3 saveEvent:v2 span:v1 error:v0 + 2992];
  v5 = *(v0 + 2992);
  v6 = *(v0 + 3616);
  if (v4)
  {
    v7 = v5;
    if (v6 && (v8 = *(v0 + 3568), *(v0 + 2976) = 0, v9 = v6, v10 = [v8 saveEvent:v9 span:1 error:v0 + 2976], v11 = *(v0 + 2976), v9, !v10))
    {
      v55 = *(v0 + 3584);
      v56 = *(v0 + 3568);
      v57 = *(v0 + 3560);
      v58 = *(v0 + 3528);
      v59 = *(v0 + 3504);
      v60 = *(v0 + 3496);
      sub_2428B3538();

      swift_willThrow();
      (*(v59 + 8))(v58, v60);
    }

    else
    {
      EventEntity.init(_:)(*(v0 + 3584), (v0 + 1296));
      v12 = *(v0 + 1408);
      *(v0 + 1232) = *(v0 + 1392);
      *(v0 + 1248) = v12;
      v13 = *(v0 + 1440);
      *(v0 + 1264) = *(v0 + 1424);
      *(v0 + 1280) = v13;
      v14 = *(v0 + 1344);
      *(v0 + 1168) = *(v0 + 1328);
      *(v0 + 1184) = v14;
      v15 = *(v0 + 1376);
      *(v0 + 1200) = *(v0 + 1360);
      *(v0 + 1216) = v15;
      v16 = *(v0 + 1312);
      *(v0 + 1136) = *(v0 + 1296);
      *(v0 + 1152) = v16;
      if (sub_24281E5E0(v0 + 1136) != 1)
      {
        v32 = *(v0 + 1248);
        *(v0 + 272) = *(v0 + 1232);
        *(v0 + 288) = v32;
        v33 = *(v0 + 1280);
        *(v0 + 304) = *(v0 + 1264);
        *(v0 + 320) = v33;
        v34 = *(v0 + 1184);
        *(v0 + 208) = *(v0 + 1168);
        *(v0 + 224) = v34;
        v35 = *(v0 + 1216);
        *(v0 + 240) = *(v0 + 1200);
        *(v0 + 256) = v35;
        v36 = *(v0 + 1152);
        *(v0 + 176) = *(v0 + 1136);
        *(v0 + 192) = v36;
        v37 = *(v0 + 1408);
        *(v0 + 1552) = *(v0 + 1392);
        *(v0 + 1568) = v37;
        v38 = *(v0 + 1440);
        *(v0 + 1584) = *(v0 + 1424);
        *(v0 + 1600) = v38;
        v39 = *(v0 + 1344);
        *(v0 + 1488) = *(v0 + 1328);
        *(v0 + 1504) = v39;
        v40 = *(v0 + 1376);
        *(v0 + 1520) = *(v0 + 1360);
        *(v0 + 1536) = v40;
        v41 = *(v0 + 1312);
        *(v0 + 1456) = *(v0 + 1296);
        v42 = *(v0 + 3568);
        v62 = *(v0 + 3560);
        v63 = *(v0 + 3584);
        v65 = *(v0 + 3616);
        v66 = *(v0 + 3528);
        v43 = *(v0 + 3504);
        v64 = *(v0 + 3496);
        v44 = *(v0 + 3000);
        *(v0 + 1472) = v41;
        sub_2427CD4FC(v0 + 1456, v0 + 1616);
        OpenEventDetailsIntent.init()(v67);
        v45 = *(v0 + 288);
        *(v0 + 1872) = *(v0 + 272);
        *(v0 + 1888) = v45;
        v46 = *(v0 + 320);
        *(v0 + 1904) = *(v0 + 304);
        *(v0 + 1920) = v46;
        v47 = *(v0 + 224);
        *(v0 + 1808) = *(v0 + 208);
        *(v0 + 1824) = v47;
        v48 = *(v0 + 256);
        *(v0 + 1840) = *(v0 + 240);
        *(v0 + 1856) = v48;
        v49 = *(v0 + 192);
        *(v0 + 1776) = *(v0 + 176);
        v50 = v67[0];
        v51 = v67[1];
        v52 = v67[2];
        v53 = v67[3];
        *(v0 + 1792) = v49;
        sub_2428B2DD8();
        sub_24280ACB8((v0 + 176), v50, v51, v52, v53, v44);

        sub_2427E0980(v0 + 1296, &unk_27ECC2E10, &qword_2428BB3B8);

        (*(v43 + 8))(v66, v64);

        v54 = *(v0 + 8);
        goto LABEL_10;
      }

      v17 = *(v0 + 3616);
      v18 = *(v0 + 3584);
      v19 = *(v0 + 3568);
      v20 = *(v0 + 3560);
      v21 = *(v0 + 3528);
      v22 = *(v0 + 3504);
      v23 = *(v0 + 3496);
      sub_2427CCDB0();
      swift_allocError();
      *v24 = 25;
      swift_willThrow();

      (*(v22 + 8))(v21, v23);
    }
  }

  else
  {
    v25 = *(v0 + 3584);
    v26 = *(v0 + 3568);
    v27 = *(v0 + 3560);
    v28 = *(v0 + 3528);
    v29 = *(v0 + 3504);
    v30 = *(v0 + 3496);
    v31 = v5;
    sub_2428B3538();

    swift_willThrow();
    (*(v29 + 8))(v28, v30);
  }

  v54 = *(v0 + 8);
LABEL_10:

  return v54();
}

uint64_t sub_24281AD44()
{
  v1 = v0[449];
  v2 = v0[448];
  v3 = v0[446];
  v4 = v0[445];
  v5 = v0[441];
  v6 = v0[438];
  v7 = v0[437];

  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24281B074()
{
  v1 = v0[452];
  v2 = v0[448];
  v3 = v0[446];
  v4 = v0[445];
  v5 = v0[441];
  v6 = v0[438];
  v7 = v0[437];

  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8();
}

void sub_24281B3A4()
{
  v1 = sub_2427F3FF4();
  if (!v0)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(MEMORY[0x277CF7C80]) initWithEventStore_];

    if (v3)
    {
      v4 = [objc_allocWithZone(MEMORY[0x277CF7CE8]) initWithEditingManager_];
      v5 = sub_242822CAC();
      v6 = MEMORY[0x245D19A60](&type metadata for EditEventIntent, v5);
      if (v6)
      {
        v7 = v6;
        v8 = swift_dynamicCastObjCProtocolConditional();
        if (!v8)
        {
        }
      }

      else
      {
        v8 = 0;
      }

      [v4 setUndoDelegate_];

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_24281B514()
{
  v1 = sub_2427F4D54();
  if (!v0)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(MEMORY[0x277CF7C80]) initWithEventStore_];

    if (v3)
    {
      v4 = [objc_allocWithZone(MEMORY[0x277CF7CE8]) initWithEditingManager_];
      v5 = sub_242822698();
      v6 = MEMORY[0x245D19A60](&type metadata for CreateEventIntent, v5);
      if (v6)
      {
        v7 = v6;
        v8 = swift_dynamicCastObjCProtocolConditional();
        if (!v8)
        {
        }
      }

      else
      {
        v8 = 0;
      }

      [v4 setUndoDelegate_];

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_24281B654()
{
  v1 = sub_2427F5334();
  if (!v0)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(MEMORY[0x277CF7C80]) initWithEventStore_];

    if (v3)
    {
      v4 = [objc_allocWithZone(MEMORY[0x277CF7CE8]) initWithEditingManager_];
      v5 = sub_242821C78();
      v6 = MEMORY[0x245D19A60](&type metadata for DeleteEventIntent, v5);
      if (v6)
      {
        v7 = v6;
        v8 = swift_dynamicCastObjCProtocolConditional();
        if (!v8)
        {
        }
      }

      else
      {
        v8 = 0;
      }

      [v4 setUndoDelegate_];

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_24281B760(uint64_t a1, uint64_t a2)
{
  *(v3 + 320) = a1;
  *(v3 + 328) = a2;
  v4 = sub_2428B2AE8();
  *(v3 + 336) = v4;
  *(v3 + 344) = *(v4 - 8);
  *(v3 + 352) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC28E0, &qword_2428B9AE0);
  *(v3 + 360) = v5;
  *(v3 + 368) = *(v5 - 8);
  *(v3 + 376) = swift_task_alloc();
  v6 = sub_2428B31E8();
  *(v3 + 384) = v6;
  *(v3 + 392) = *(v6 - 8);
  *(v3 + 400) = swift_task_alloc();
  sub_2428B36C8();
  *(v3 + 408) = swift_task_alloc();
  v7 = sub_2428B3558();
  *(v3 + 416) = v7;
  *(v3 + 424) = *(v7 - 8);
  *(v3 + 432) = swift_task_alloc();
  sub_2428B45F8();
  *(v3 + 440) = swift_task_alloc();
  v8 = sub_2428B3568();
  *(v3 + 448) = v8;
  *(v3 + 456) = *(v8 - 8);
  *(v3 + 464) = swift_task_alloc();
  *(v3 + 472) = swift_task_alloc();
  *(v3 + 480) = swift_task_alloc();
  *(v3 + 488) = swift_task_alloc();
  *(v3 + 496) = swift_task_alloc();
  *(v3 + 504) = swift_task_alloc();
  v9 = *(v2 + 112);
  *(v3 + 112) = *(v2 + 96);
  *(v3 + 128) = v9;
  *(v3 + 144) = *(v2 + 128);
  *(v3 + 160) = *(v2 + 144);
  v10 = *(v2 + 48);
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v10;
  v11 = *(v2 + 80);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v11;
  v12 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v12;

  return MEMORY[0x2822009F8](sub_24281BA60, 0, 0);
}

uint64_t sub_24281BA60()
{
  v1 = [*(v0 + 320) requirementsToMoveToCalendar_];
  if ((v1 & 6) != 0)
  {
    sub_2427CCDB0();
    swift_allocError();
    *v2 = 57;
    swift_willThrow();

    v3 = *(v0 + 8);
LABEL_5:

    return v3();
  }

  v4 = v1;
  if (v1 == 1)
  {

    v3 = *(v0 + 8);
    goto LABEL_5;
  }

  sub_2428B4578();
  if (qword_27ECC1780 != -1)
  {
    swift_once();
  }

  v22 = *(v0 + 504);
  v30 = *(v0 + 496);
  v23 = *(v0 + 456);
  v24 = *(v0 + 448);
  v25 = *(v0 + 472);
  v7 = *(v0 + 424);
  v6 = *(v0 + 432);
  v8 = *(v0 + 416);
  v27 = *(v0 + 464);
  v26 = *(v0 + 352);
  v28 = *(v0 + 344);
  v29 = *(v0 + 336);
  v9 = __swift_project_value_buffer(v8, qword_27ECD4500);
  v10 = *(v7 + 16);
  v10(v6, v9, v8);
  sub_2428B36B8();
  sub_2428B3588();
  sub_24281D7A4(v4);
  sub_2428B4578();
  v10(v6, v9, v8);
  sub_2428B36B8();
  sub_2428B3588();
  sub_2428B4578();
  v10(v6, v9, v8);
  sub_2428B36B8();
  sub_2428B3588();
  sub_2428B31C8();
  v11 = *(v0 + 128);
  *(v0 + 264) = *(v0 + 112);
  *(v0 + 280) = v11;
  *(v0 + 296) = *(v0 + 144);
  v12 = *(v0 + 64);
  *(v0 + 200) = *(v0 + 48);
  *(v0 + 216) = v12;
  v13 = *(v0 + 96);
  *(v0 + 232) = *(v0 + 80);
  *(v0 + 248) = v13;
  v14 = *(v0 + 32);
  *(v0 + 168) = *(v0 + 16);
  *(v0 + 312) = *(v0 + 160);
  *(v0 + 184) = v14;
  v15 = *(v23 + 16);
  v15(v25, v22, v24);
  v15(v27, v30, v24);
  sub_2428B2AD8();
  sub_2428B2C18();
  (*(v28 + 8))(v26, v29);
  v16 = swift_task_alloc();
  *(v0 + 512) = v16;
  v17 = sub_24281E58C();
  v18 = sub_2427CD47C(&unk_27ECC2900, &unk_27ECC28E0, &qword_2428B9AE0, MEMORY[0x277CBA268]);
  *v16 = v0;
  v16[1] = sub_24281BFC8;
  v19 = *(v0 + 400);
  v20 = *(v0 + 376);
  v21 = *(v0 + 360);

  return MEMORY[0x28210B510](v20, v19, 1, &type metadata for EditEventIntent, v21, v17, v18);
}

uint64_t sub_24281BFC8()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  (*(v2[46] + 8))(v2[47], v2[45]);
  if (v0)
  {
    v3 = sub_24281C27C;
  }

  else
  {
    v3 = sub_24281C10C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24281C10C()
{
  v1 = v0[62];
  v2 = v0[63];
  v4 = v0[60];
  v3 = v0[61];
  v5 = v0[56];
  v6 = v0[57];
  (*(v0[49] + 8))(v0[50], v0[48]);
  v7 = *(v6 + 8);
  v7(v4, v5);
  v7(v3, v5);
  v7(v1, v5);
  v7(v2, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24281C27C()
{
  v1 = v0[62];
  v2 = v0[63];
  v4 = v0[60];
  v3 = v0[61];
  v5 = v0[56];
  v6 = v0[57];
  (*(v0[49] + 8))(v0[50], v0[48]);
  v7 = *(v6 + 8);
  v7(v4, v5);
  v7(v3, v5);
  v7(v1, v5);
  v7(v2, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24281C3F4(unint64_t a1)
{
  v8 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_2428B4AC8();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2428B49C8())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x245D1B5D0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_2428B4AA8();
      sub_2428B4AD8();
      sub_2428B4AE8();
      sub_2428B4AB8();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_2428B49C8();
    sub_2428B4AC8();
  }

  return v8;
}

uint64_t sub_24281C55C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_2427E2C54(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_242822794(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2427E2C54((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_24281C670(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
LABEL_33:
    v4 = sub_2428B49C8();
    if (v4)
    {
      goto LABEL_3;
    }

    return a1;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return a1;
  }

LABEL_3:
  for (i = 0; ; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x245D1B5D0](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v9 = *(a2 + 8 * i + 32);
    }

    v8 = v9;
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v11 = [v9 objectID];
    if (!v11)
    {
      break;
    }

    v12 = v11;
    if ((a1 & 0xC000000000000001) != 0)
    {
      if (a1 >= 0)
      {
        a1 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v13 = v8;
      v14 = sub_2428B49C8();
      if (__OFADD__(v14, 1))
      {
        goto LABEL_31;
      }

      a1 = sub_24281FCD4(a1, v14 + 1);
    }

    else
    {
      v15 = v8;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = sub_24281E850(v12);
    v19 = *(a1 + 16);
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      goto LABEL_30;
    }

    v23 = v18;
    if (*(a1 + 24) < v22)
    {
      sub_24288C5B0(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_24281E850(v12);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_36;
      }

LABEL_22:
      if (v23)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_22;
    }

    v27 = v17;
    sub_24288D4F0();
    v17 = v27;
    if (v23)
    {
LABEL_4:
      v6 = *(a1 + 56);
      v7 = *(v6 + 8 * v17);
      *(v6 + 8 * v17) = v8;

      v8 = v7;
      goto LABEL_5;
    }

LABEL_23:
    *(a1 + 8 * (v17 >> 6) + 64) |= 1 << v17;
    *(*(a1 + 48) + 8 * v17) = v12;
    *(*(a1 + 56) + 8 * v17) = v8;
    v25 = *(a1 + 16);
    v21 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v21)
    {
      goto LABEL_32;
    }

    *(a1 + 16) = v26;
LABEL_5:

    if (v10 == v4)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_36:
  sub_242822BFC(0, &qword_27ECC2E28, 0x277CC5A60);
  result = sub_2428B4C38();
  __break(1u);
  return result;
}

void sub_24281C8D8(void *a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2FE0, &qword_2428BB6E8);
  MEMORY[0x28223BE20](v4 - 8);
  v101 = &v91 - v5;
  v104 = sub_2428B3688();
  v95 = *(v104 - 8);
  v6 = MEMORY[0x28223BE20](v104);
  v94 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v97 = &v91 - v9;
  MEMORY[0x28223BE20](v8);
  v98 = &v91 - v10;
  v106 = type metadata accessor for EditEventIntent.AlarmInfo(0);
  v103 = *(v106 - 8);
  v11 = MEMORY[0x28223BE20](v106);
  v93 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v99 = &v91 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (&v91 - v16);
  v18 = MEMORY[0x28223BE20](v15);
  v100 = &v91 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = (&v91 - v21);
  MEMORY[0x28223BE20](v20);
  v24 = &v91 - v23;
  v91 = a1;
  v25 = [a1 alarms];
  if (v25)
  {
    v26 = v25;
    sub_242822BFC(0, &qword_27ECC2FE8, 0x277CC5988);
    v27 = sub_2428B46C8();
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
  }

  v92 = v27 >> 62;
  if (v27 >> 62)
  {
    v89 = sub_2428B49C8();
    v28 = a2;
    v29 = v89;
  }

  else
  {
    v28 = a2;
    v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v102 = v28;
  v30 = MEMORY[0x277D84F90];
  v105 = v27;
  if (v29)
  {
    v31 = v27;
    v109 = MEMORY[0x277D84F90];
    sub_2427E2C10(0, v29 & ~(v29 >> 63), 0);
    if (v29 < 0)
    {
      __break(1u);
      goto LABEL_73;
    }

    v96 = v17;
    v32 = 0;
    v33 = v109;
    v34 = v31;
    v35 = v31 & 0xC000000000000001;
    v36 = (v95 + 32);
    v37 = v98;
    do
    {
      if (v35)
      {
        v38 = MEMORY[0x245D1B5D0](v32, v34);
      }

      else
      {
        v38 = *(v34 + 8 * v32 + 32);
      }

      v39 = v38;
      v40 = [v38 absoluteDate];
      if (v40)
      {
        v41 = v40;
        sub_2428B3678();

        (*v36)(v22, v37, v104);
      }

      else
      {
        [v39 relativeOffset];
        v43 = v42;

        *v22 = v43;
      }

      swift_storeEnumTagMultiPayload();
      sub_24282283C(v22, v24);
      v109 = v33;
      v45 = *(v33 + 16);
      v44 = *(v33 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_2427E2C10((v44 > 1), v45 + 1, 1);
        v33 = v109;
      }

      ++v32;
      *(v33 + 16) = v45 + 1;
      sub_24282283C(v24, v33 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v45);
      v34 = v105;
    }

    while (v29 != v32);
    a2 = v102;
    v17 = v96;
    v30 = MEMORY[0x277D84F90];
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
  }

  v46 = sub_2428B22E8(v33);

  v108 = v30;
  v109 = v46;
  v47 = a2;
  if (a2 >> 62)
  {
    v90 = sub_2428B49C8();
    v47 = a2;
    v48 = v90;
  }

  else
  {
    v48 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v48)
  {
    v96 = MEMORY[0x277D84F90];
    goto LABEL_38;
  }

  if (v48 < 1)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v49 = 0;
  v98 = (v47 & 0xC000000000000001);
  v50 = (v95 + 32);
  v51 = (v103 + 48);
  v96 = MEMORY[0x277D84F90];
  v52 = v100;
  do
  {
    if (v98)
    {
      v53 = MEMORY[0x245D1B5D0](v49);
    }

    else
    {
      v53 = *(v47 + 8 * v49 + 32);
    }

    v54 = v53;
    v55 = [v54 absoluteDate];
    if (v55)
    {
      v56 = v97;
      v57 = v55;
      sub_2428B3678();

      (*v50)(v17, v56, v104);
    }

    else
    {
      [v54 relativeOffset];
      v59 = v58;

      *v17 = v59;
    }

    v60 = v106;
    swift_storeEnumTagMultiPayload();
    v61 = v17;
    sub_24282283C(v17, v52);
    v62 = v101;
    sub_242820720(v52, v101);
    sub_242822B9C(v52, type metadata accessor for EditEventIntent.AlarmInfo);
    if ((*v51)(v62, 1, v60) == 1)
    {
      sub_2427E0980(v62, &qword_27ECC2FE0, &qword_2428BB6E8);
      v63 = v54;
      MEMORY[0x245D1B200]();
      v17 = v61;
      if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2428B46E8();
        v17 = v61;
      }

      sub_2428B4708();

      v96 = v108;
    }

    else
    {

      sub_2427E0980(v62, &qword_27ECC2FE0, &qword_2428BB6E8);
      v17 = v61;
    }

    ++v49;
    v47 = v102;
  }

  while (v48 != v49);
LABEL_38:
  v107 = MEMORY[0x277D84F90];
  if (!v92)
  {
    v64 = v105;
    v65 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v67 = v93;
    v66 = v94;
    if (v65)
    {
      goto LABEL_40;
    }

LABEL_55:
    v103 = MEMORY[0x277D84F90];
    goto LABEL_56;
  }

  v81 = v105;
  v82 = sub_2428B49C8();
  v64 = v81;
  v65 = v82;
  v67 = v93;
  v66 = v94;
  if (!v82)
  {
    goto LABEL_55;
  }

LABEL_40:
  if (v65 < 1)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v68 = 0;
  v69 = v109;
  v70 = v64 & 0xC000000000000001;
  v71 = (v95 + 32);
  v103 = MEMORY[0x277D84F90];
  do
  {
    if (v70)
    {
      v72 = MEMORY[0x245D1B5D0](v68);
    }

    else
    {
      v72 = *(v64 + 8 * v68 + 32);
    }

    v73 = v72;
    v74 = [v73 absoluteDate];
    if (v74)
    {
      v75 = v74;
      sub_2428B3678();

      (*v71)(v67, v66, v104);
    }

    else
    {
      [v73 relativeOffset];
      v77 = v76;

      *v67 = v77;
    }

    swift_storeEnumTagMultiPayload();
    v78 = v99;
    sub_24282283C(v67, v99);
    v79 = sub_24281D2E4(v78, v69);
    sub_242822B9C(v78, type metadata accessor for EditEventIntent.AlarmInfo);
    if (v79)
    {
    }

    else
    {
      v80 = v73;
      MEMORY[0x245D1B200]();
      if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2428B46E8();
      }

      sub_2428B4708();

      v103 = v107;
    }

    ++v68;
    v64 = v105;
  }

  while (v65 != v68);
LABEL_56:

  v83 = v96;
  if (!(v96 >> 62))
  {
    v84 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v84)
    {
      goto LABEL_58;
    }

LABEL_67:

    sub_242822BFC(0, &qword_27ECC2FE8, 0x277CC5988);
    v88 = sub_2428B46B8();

    [v91 setAlarms_];

    return;
  }

  v84 = sub_2428B49C8();
  if (!v84)
  {
    goto LABEL_67;
  }

LABEL_58:
  if (v84 >= 1)
  {
    for (i = 0; i != v84; ++i)
    {
      if ((v83 & 0xC000000000000001) != 0)
      {
        v86 = MEMORY[0x245D1B5D0](i, v83);
      }

      else
      {
        v86 = *(v83 + 8 * i + 32);
      }

      v87 = v86;
      MEMORY[0x245D1B200]();
      if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2428B46E8();
      }

      sub_2428B4708();
    }

    v103 = v107;
    goto LABEL_67;
  }

LABEL_75:
  __break(1u);
}

uint64_t sub_24281D2E4(uint64_t a1, uint64_t a2)
{
  v38 = sub_2428B3688();
  v4 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2FF0, &qword_2428C56A0);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  v9 = type metadata accessor for EditEventIntent.AlarmInfo(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v35 = (&v32 - v15);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - v16;
  if (!*(a2 + 16))
  {
    return 0;
  }

  v36 = v4;
  sub_2428B4C88();
  v18 = a1;
  sub_24281E1C8(v44);
  v19 = sub_2428B4CB8();
  v20 = -1 << *(a2 + 32);
  v21 = v19 & ~v20;
  v43 = a2 + 56;
  if (((*(a2 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
  {
    return 0;
  }

  v39 = a2;
  v40 = ~v20;
  v41 = *(v10 + 72);
  v42 = v18;
  v22 = v35;
  v37 = (v36 + 8);
  v32 = (v36 + 32);
  v33 = v6;
  while (1)
  {
    sub_242822C44(*(a2 + 48) + v41 * v21, v17, type metadata accessor for EditEventIntent.AlarmInfo);
    v23 = *(v6 + 48);
    sub_242822C44(v17, v8, type metadata accessor for EditEventIntent.AlarmInfo);
    sub_242822C44(v42, &v8[v23], type metadata accessor for EditEventIntent.AlarmInfo);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_242822C44(v8, v13, type metadata accessor for EditEventIntent.AlarmInfo);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = v9;
      v25 = v13;
      v26 = v34;
      v27 = v38;
      (*v32)(v34, &v8[v23], v38);
      LODWORD(v36) = sub_2428B3668();
      v28 = *v37;
      v29 = v26;
      v13 = v25;
      v9 = v24;
      v22 = v35;
      (*v37)(v29, v27);
      sub_242822B9C(v17, type metadata accessor for EditEventIntent.AlarmInfo);
      v30 = v27;
      v6 = v33;
      v28(v13, v30);
      if (v36)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    sub_242822B9C(v17, type metadata accessor for EditEventIntent.AlarmInfo);
    (*v37)(v13, v38);
LABEL_5:
    sub_2427E0980(v8, &qword_27ECC2FF0, &qword_2428C56A0);
LABEL_6:
    a2 = v39;
    v21 = (v21 + 1) & v40;
    if (((*(v43 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      return 0;
    }
  }

  sub_242822B9C(v17, type metadata accessor for EditEventIntent.AlarmInfo);
  sub_242822C44(v8, v22, type metadata accessor for EditEventIntent.AlarmInfo);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    goto LABEL_5;
  }

  if (*v22 != *&v8[v23])
  {
LABEL_13:
    sub_242822B9C(v8, type metadata accessor for EditEventIntent.AlarmInfo);
    goto LABEL_6;
  }

LABEL_15:
  sub_242822B9C(v8, type metadata accessor for EditEventIntent.AlarmInfo);
  return 1;
}

uint64_t sub_24281D7A4(uint64_t a1)
{
  v2 = sub_2428B36C8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_2428B3558();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  if (a1 != 1 && (a1 & 6) == 0)
  {
    if ((a1 & 0x20) != 0)
    {
      sub_2428B4578();
      if (qword_27ECC1780 == -1)
      {
        goto LABEL_14;
      }
    }

    else if ((a1 & 0x40) != 0)
    {
      sub_2428B4578();
      if (qword_27ECC1780 == -1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if ((a1 & 8) == 0)
      {
        goto LABEL_6;
      }

      sub_2428B4578();
      if (qword_27ECC1780 == -1)
      {
LABEL_14:
        v9 = __swift_project_value_buffer(v3, qword_27ECD4500);
        (*(v4 + 16))(v6, v9, v3);
        sub_2428B36B8();
        return sub_2428B3588();
      }
    }

    swift_once();
    goto LABEL_14;
  }

LABEL_6:

  return sub_2428B3548();
}

uint64_t sub_24281DB4C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1788 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC2CB0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_24281DC0C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2DB0, &qword_2428BB340);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2DB8, &qword_2428BB348);
  MEMORY[0x28223BE20](v3);
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2DC8, &qword_2428BB378);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3248();
}

uint64_t sub_24281DDB8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return EditEventIntent.perform()(a1);
}

uint64_t sub_24281DE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2427CD274;

  return MEMORY[0x28210BB80](a1, a2, a3);
}

id EditEventIntent.managedDestinationAccountIdentifier.getter()
{
  sub_2428B28E8();
  v0 = [*&v28[0] eventStore];
  swift_unknownObjectRelease();
  if (v0)
  {
    sub_2428B2DC8();
    v28[6] = v24;
    v28[7] = v25;
    v28[8] = v26;
    v28[9] = v27;
    v28[2] = v20;
    v28[3] = v21;
    v28[4] = v22;
    v28[5] = v23;
    v28[0] = v18;
    v28[1] = v19;
    sub_2428B3218();
    sub_2427CCE04(v28);
    v1 = sub_2428B4608();

    v2 = [v0 eventWithAppEntityIdentifier_];

    if (v2)
    {
      sub_2428B2DC8();
      v18 = *v13;
      v19 = v14;
      v20 = v15;
      v21 = v16;
      v22 = v17;
      if (v13[0])
      {
        sub_2428B28E8();
        result = [v13[0] eventStore];
        if (!result)
        {
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        v4 = result;
        swift_unknownObjectRelease();
        v5 = sub_2428B4608();
        v6 = [v4 calendarWithIdentifier_];

        if (v6)
        {
          result = [v6 source];
          if (result)
          {
            v7 = result;

            sub_2427E0980(&v18, &qword_27ECC2248, &unk_2428B7CE0);
LABEL_12:
            v10 = [v7 externalID];
            if (v10)
            {
              v11 = v10;
              v12 = sub_2428B4618();

              return v12;
            }

            return 0;
          }

          goto LABEL_20;
        }

        sub_2427E0980(&v18, &qword_27ECC2248, &unk_2428B7CE0);
      }

      else
      {
        v8 = [v2 calendar];
        if (v8)
        {
          v9 = v8;
          result = [v8 source];
          if (result)
          {
            v7 = result;

            goto LABEL_12;
          }

LABEL_21:
          __break(1u);
          return result;
        }
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_24281E1C8(uint64_t a1)
{
  v2 = sub_2428B3688();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EditEventIntent.AlarmInfo(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_242822C44(v1, v8, type metadata accessor for EditEventIntent.AlarmInfo);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x245D1B7F0](1);
    sub_242822E34(&qword_27ECC2FF8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_2428B4548();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    v10 = *v8;
    MEMORY[0x245D1B7F0](0);
    v11 = 0.0;
    if (v10 != 0.0)
    {
      v11 = v10;
    }

    return MEMORY[0x245D1B800](*&v11);
  }
}

uint64_t sub_24281E3B8()
{
  sub_2428B4C88();
  sub_24281E1C8(v1);
  return sub_2428B4CB8();
}

uint64_t sub_24281E3FC(uint64_t a1)
{
  sub_2428B4C88();
  sub_24281E1C8(v2);
  return sub_2428B4CB8();
}

unint64_t sub_24281E43C()
{
  result = qword_280CDDF40;
  if (!qword_280CDDF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDF40);
  }

  return result;
}

unint64_t sub_24281E490()
{
  result = qword_27ECC2D40;
  if (!qword_27ECC2D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2D40);
  }

  return result;
}

unint64_t sub_24281E4E4()
{
  result = qword_280CDDF50;
  if (!qword_280CDDF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDF50);
  }

  return result;
}

unint64_t sub_24281E538()
{
  result = qword_27ECC39A0;
  if (!qword_27ECC39A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC39A0);
  }

  return result;
}

unint64_t sub_24281E58C()
{
  result = qword_27ECC2DC0;
  if (!qword_27ECC2DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2DC0);
  }

  return result;
}

uint64_t sub_24281E5E0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24281E660(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_24281E6C8(uint64_t a1)
{
  v2 = a1;
  v3 = sub_2427E5510(*(v1 + 40), a1);

  return sub_24281EE4C(v2, v3);
}

uint64_t sub_24281E70C(uint64_t a1, uint64_t (*a2)(void *, uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_2428B4C88();
  a2(v8, a1);
  v5 = sub_2428B4CB8();

  return a3(a1, v5);
}

unint64_t sub_24281E78C(uint64_t a1)
{
  v1 = a1;
  sub_2428B4C88();
  sub_2428B4678();

  v2 = sub_2428B4CB8();

  return sub_24281F37C(v1, v2);
}

unint64_t sub_24281E850(uint64_t a1)
{
  v2 = sub_2428B48D8();

  return sub_24281F508(a1, v2);
}

unint64_t sub_24281E894(uint64_t a1)
{
  sub_2428B35D8();
  sub_242822E34(&qword_27ECC3230, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v2 = sub_2428B4538();

  return sub_24281F5DC(a1, v2);
}

unint64_t sub_24281E92C(uint64_t a1)
{
  v1 = a1;
  sub_2428B4C88();
  MEMORY[0x245D1B7F0](v1);
  v2 = sub_2428B4CB8();
  return sub_24281FB18(v1, v2);
}

unint64_t sub_24281E994(char a1)
{
  sub_2428B4C88();
  MEMORY[0x245D1B7F0](a1 & 1);
  v2 = sub_2428B4CB8();

  return sub_24281F79C(a1 & 1, v2);
}

unint64_t sub_24281EA00(uint64_t a1)
{
  v1 = a1;
  sub_2428B4C88();
  sub_2428B4678();

  v2 = sub_2428B4CB8();

  return sub_24281F80C(v1, v2);
}

unint64_t sub_24281EAB8(uint64_t a1)
{
  v1 = a1;
  sub_2428B4C88();
  sub_2428B4678();

  v2 = sub_2428B4CB8();

  return sub_24281F984(v1, v2);
}

unint64_t sub_24281EB7C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 <= 3)
      {
        if (v6 == 2)
        {
          v9 = 0x656E696C636564;
        }

        else
        {
          v9 = 27503;
        }

        if (v6 == 2)
        {
          v10 = 0xE700000000000000;
        }

        else
        {
          v10 = 0xE200000000000000;
        }

        if (*(*(v2 + 48) + v4))
        {
          v11 = 0x656279616DLL;
        }

        else
        {
          v11 = 0x747065636361;
        }

        if (*(*(v2 + 48) + v4))
        {
          v12 = 0xE500000000000000;
        }

        else
        {
          v12 = 0xE600000000000000;
        }

        if (*(*(v2 + 48) + v4) <= 1u)
        {
          v8 = v11;
        }

        else
        {
          v8 = v9;
        }

        if (*(*(v2 + 48) + v4) <= 1u)
        {
          v7 = v12;
        }

        else
        {
          v7 = v10;
        }
      }

      else if (*(*(v2 + 48) + v4) <= 5u)
      {
        if (v6 == 4)
        {
          v7 = 0xE600000000000000;
          v8 = 0x6574656C6564;
        }

        else
        {
          v7 = 0xE400000000000000;
          v8 = 1852403562;
        }
      }

      else if (v6 == 6)
      {
        v8 = 0x6C61436F54646461;
        v7 = 0xED00007261646E65;
      }

      else if (v6 == 7)
      {
        v7 = 0xE600000000000000;
        v8 = 0x65726F6E6769;
      }

      else
      {
        v8 = 0x754A74726F706572;
        v7 = 0xEA00000000006B6ELL;
      }

      v13 = 0x754A74726F706572;
      if (v5 == 7)
      {
        v13 = 0x65726F6E6769;
      }

      v14 = 0xEA00000000006B6ELL;
      if (v5 == 7)
      {
        v14 = 0xE600000000000000;
      }

      if (v5 == 6)
      {
        v13 = 0x6C61436F54646461;
        v14 = 0xED00007261646E65;
      }

      v15 = 0x6574656C6564;
      if (v5 != 4)
      {
        v15 = 1852403562;
      }

      v16 = 0xE400000000000000;
      if (v5 == 4)
      {
        v16 = 0xE600000000000000;
      }

      if (v5 <= 5)
      {
        v13 = v15;
        v14 = v16;
      }

      if (v5 == 2)
      {
        v17 = 0x656E696C636564;
      }

      else
      {
        v17 = 27503;
      }

      if (v5 == 2)
      {
        v18 = 0xE700000000000000;
      }

      else
      {
        v18 = 0xE200000000000000;
      }

      if (v5)
      {
        v19 = 0x656279616DLL;
      }

      else
      {
        v19 = 0x747065636361;
      }

      if (v5)
      {
        v20 = 0xE500000000000000;
      }

      else
      {
        v20 = 0xE600000000000000;
      }

      if (v5 <= 1)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = v5 <= 3 ? v17 : v13;
      v22 = v5 <= 3 ? v18 : v14;
      if (v8 == v21 && v7 == v22)
      {
        break;
      }

      v23 = sub_2428B4BF8();

      if ((v23 & 1) == 0)
      {
        v4 = (v4 + 1) & v25;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_24281EE4C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v7 == 1)
          {
            v8 = 0x6465747065636361;
          }

          else
          {
            v8 = 0x64656E696C636564;
          }

          v9 = 0xE800000000000000;
        }

        else
        {
          v9 = 0xE700000000000000;
          v8 = 0x676E69646E6570;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v7 == 5)
        {
          v8 = 0x6574656C706D6F63;
          v9 = 0xE900000000000064;
        }

        else
        {
          v9 = 0xE900000000000073;
          v8 = 0x7365636F72506E69;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x76697461746E6574;
        }

        else
        {
          v8 = 0x65746167656C6564;
        }

        if (v7 == 3)
        {
          v9 = 0xE900000000000065;
        }

        else
        {
          v9 = 0xE900000000000064;
        }
      }

      v10 = 0xE900000000000073;
      v11 = 0x7365636F72506E69;
      if (v6 == 5)
      {
        v11 = 0x6574656C706D6F63;
        v10 = 0xE900000000000064;
      }

      v12 = 0x76697461746E6574;
      if (v6 == 3)
      {
        v13 = 0xE900000000000065;
      }

      else
      {
        v12 = 0x65746167656C6564;
        v13 = 0xE900000000000064;
      }

      if (v6 <= 4)
      {
        v11 = v12;
        v10 = v13;
      }

      v14 = 0x6465747065636361;
      if (v6 != 1)
      {
        v14 = 0x64656E696C636564;
      }

      v15 = 0xE800000000000000;
      if (!v6)
      {
        v14 = 0x676E69646E6570;
        v15 = 0xE700000000000000;
      }

      v16 = v6 <= 2 ? v14 : v11;
      v17 = v6 <= 2 ? v15 : v10;
      if (v8 == v16 && v9 == v17)
      {
        break;
      }

      v18 = sub_2428B4BF8();

      if ((v18 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_24281F0CC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v24 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 <= 3)
      {
        if (v6 == 2)
        {
          v9 = 0x68746E6F6DLL;
        }

        else
        {
          v9 = 0x6E6F4D74696C7073;
        }

        if (v6 == 2)
        {
          v10 = 0xE500000000000000;
        }

        else
        {
          v10 = 0xEA00000000006874;
        }

        if (*(*(v2 + 48) + v4))
        {
          v11 = 1801807223;
        }

        else
        {
          v11 = 7954788;
        }

        if (*(*(v2 + 48) + v4))
        {
          v12 = 0xE400000000000000;
        }

        else
        {
          v12 = 0xE300000000000000;
        }

        if (*(*(v2 + 48) + v4) <= 1u)
        {
          v7 = v11;
        }

        else
        {
          v7 = v9;
        }

        if (*(*(v2 + 48) + v4) <= 1u)
        {
          v8 = v12;
        }

        else
        {
          v8 = v10;
        }
      }

      else if (*(*(v2 + 48) + v4) <= 5u)
      {
        v8 = 0xE400000000000000;
        if (v6 == 4)
        {
          v7 = 1918985593;
        }

        else
        {
          v7 = 1953720684;
        }
      }

      else if (v6 == 6)
      {
        v8 = 0xE600000000000000;
        v7 = 0x686372616573;
      }

      else if (v6 == 7)
      {
        v7 = 0x7261646E656C6163;
        v8 = 0xE900000000000073;
      }

      else
      {
        v8 = 0xE500000000000000;
        v7 = 0x786F626E69;
      }

      v13 = 0x7261646E656C6163;
      if (v5 != 7)
      {
        v13 = 0x786F626E69;
      }

      v14 = 0xE900000000000073;
      if (v5 != 7)
      {
        v14 = 0xE500000000000000;
      }

      if (v5 == 6)
      {
        v13 = 0x686372616573;
        v14 = 0xE600000000000000;
      }

      v15 = 1953720684;
      if (v5 == 4)
      {
        v15 = 1918985593;
      }

      if (v5 <= 5)
      {
        v13 = v15;
        v14 = 0xE400000000000000;
      }

      if (v5 == 2)
      {
        v16 = 0x68746E6F6DLL;
      }

      else
      {
        v16 = 0x6E6F4D74696C7073;
      }

      if (v5 == 2)
      {
        v17 = 0xE500000000000000;
      }

      else
      {
        v17 = 0xEA00000000006874;
      }

      if (v5)
      {
        v18 = 1801807223;
      }

      else
      {
        v18 = 7954788;
      }

      if (v5)
      {
        v19 = 0xE400000000000000;
      }

      else
      {
        v19 = 0xE300000000000000;
      }

      if (v5 <= 1)
      {
        v16 = v18;
        v17 = v19;
      }

      v20 = v5 <= 3 ? v16 : v13;
      v21 = v5 <= 3 ? v17 : v14;
      if (v7 == v20 && v8 == v21)
      {
        break;
      }

      v22 = sub_2428B4BF8();

      if ((v22 & 1) == 0)
      {
        v4 = (v4 + 1) & v24;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_24281F37C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x6F706552746E6F64;
          v8 = 0xEA00000000007472;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = 0xE600000000000000;
          v7 = 0x6C65636E6163;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE600000000000000;
            if (v7 != 0x74726F706572)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0xE600000000000000;
        v7 = 0x74726F706572;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x6F706552746E6F64;
      }

      else
      {
        v10 = 0x6C65636E6163;
      }

      if (v9 == 1)
      {
        v11 = 0xEA00000000007472;
      }

      else
      {
        v11 = 0xE600000000000000;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_2428B4BF8();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_24281F508(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_242822BFC(0, &qword_27ECC2E28, 0x277CC5A60);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2428B48E8();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_24281F5DC(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_2428B35D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_242822E34(&qword_27ECC2FD0, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v15 = sub_2428B4558();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_24281F79C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_24281F80C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE600000000000000;
          v8 = 0x657275747566;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0xE300000000000000;
          v8 = 7105633;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE400000000000000;
            if (v8 != 1936287860)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0xE400000000000000;
        v8 = 1936287860;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x657275747566;
      }

      else
      {
        v10 = 7105633;
      }

      if (v9 == 1)
      {
        v11 = 0xE600000000000000;
      }

      else
      {
        v11 = 0xE300000000000000;
      }

      if (v8 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_2428B4BF8();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_24281F984(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE900000000000065;
          v8 = 0x76697461746E6574;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_6;
          }

          goto LABEL_11;
        }

        v8 = 0x656C6C65636E6163;
      }

      else
      {
        v8 = 0x656D7269666E6F63;
      }

      v7 = 0xE900000000000064;
      v9 = a1;
      if (!a1)
      {
LABEL_6:
        v10 = 0xE900000000000064;
        if (v8 != 0x656D7269666E6F63)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

LABEL_11:
      if (v9 == 1)
      {
        v11 = 0x76697461746E6574;
      }

      else
      {
        v11 = 0x656C6C65636E6163;
      }

      if (v9 == 1)
      {
        v10 = 0xE900000000000065;
      }

      else
      {
        v10 = 0xE900000000000064;
      }

      if (v8 != v11)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v10)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_2428B4BF8();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_24281FB18(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_24281FB88(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_24281E850(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_24281FF20(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_24288D4F0();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_2428B4B38();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();
  sub_2428B3218();
  v7 = sub_2428B49C8();
  v8 = sub_24281FCD4(v4, v7);
  sub_2428B2F38();
  v9 = sub_24281E850(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_24281FF20(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_24281FCD4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2FD8, &qword_2428C3380);
    v2 = sub_2428B4B98();
    v19 = v2;
    sub_2428B4B18();
    v3 = sub_2428B4B48();
    if (v3)
    {
      v4 = v3;
      sub_242822BFC(0, &qword_27ECC2E28, 0x277CC5A60);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_242822BFC(0, &qword_27ECC2E30, 0x277CC59A0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_24288C5B0(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_2428B48D8();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_2428B4B48();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

void sub_24281FF20(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2428B4958() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_2428B48D8();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void sub_2428200AC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2428B35D8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_24281E894(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_24288D664();
      goto LABEL_7;
    }

    sub_24288C82C(v17, a3 & 1);
    v23 = sub_24281E894(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_2428205B8(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_2428B4C38();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_242820278(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_242801C04(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_24288D7F0();
      goto LABEL_7;
    }

    sub_24288CB00(v15, a4 & 1);
    v26 = sub_242801C04(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_2428B4C38();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_2428B35D8();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_242820670(v12, a2, a3, a1, v18);

  return sub_2428B3218();
}

uint64_t sub_242820424(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_242801C04(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = sub_242801C04(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_2428B4C38();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;

  return sub_2428B3218();
}

uint64_t sub_2428205B8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2428B35D8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_242820670(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_2428B35D8();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_242820720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = sub_2428B3688();
  v5 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v43 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2FF0, &qword_2428C56A0);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  v10 = type metadata accessor for EditEventIntent.AlarmInfo(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v47 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v48 = (&v37 - v15);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - v16;
  v38 = v2;
  v18 = *v2;
  sub_2428B4C88();
  v54 = a1;
  sub_24281E1C8(v55);
  v19 = sub_2428B4CB8();
  v20 = v18 + 56;
  v52 = v18 + 56;
  v53 = v18;
  v21 = -1 << *(v18 + 32);
  v22 = v19 & ~v21;
  if (((*(v20 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
  {
    v32 = 1;
    return (*(v11 + 56))(a2, v32, 1, v10);
  }

  v40 = a2;
  v50 = ~v21;
  v39 = v11;
  v51 = *(v11 + 72);
  v45 = (v5 + 8);
  v41 = (v5 + 32);
  v23 = v47;
  v42 = v10;
  while (1)
  {
    v24 = *(v53 + 48);
    v49 = v51 * v22;
    sub_242822C44(v24 + v51 * v22, v17, type metadata accessor for EditEventIntent.AlarmInfo);
    v25 = *(v7 + 48);
    sub_242822C44(v17, v9, type metadata accessor for EditEventIntent.AlarmInfo);
    sub_242822C44(v54, &v9[v25], type metadata accessor for EditEventIntent.AlarmInfo);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_242822C44(v9, v23, type metadata accessor for EditEventIntent.AlarmInfo);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v7;
      v27 = v43;
      v28 = v46;
      (*v41)(v43, &v9[v25], v46);
      v44 = sub_2428B3668();
      v29 = *v45;
      v30 = v27;
      v7 = v26;
      v23 = v47;
      (*v45)(v30, v28);
      sub_242822B9C(v17, type metadata accessor for EditEventIntent.AlarmInfo);
      v31 = v28;
      v10 = v42;
      v29(v23, v31);
      if (v44)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    sub_242822B9C(v17, type metadata accessor for EditEventIntent.AlarmInfo);
    (*v45)(v23, v46);
LABEL_4:
    sub_2427E0980(v9, &qword_27ECC2FF0, &qword_2428C56A0);
LABEL_5:
    v22 = (v22 + 1) & v50;
    if (((*(v52 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      v32 = 1;
      a2 = v40;
      goto LABEL_18;
    }
  }

  sub_242822B9C(v17, type metadata accessor for EditEventIntent.AlarmInfo);
  sub_242822C44(v9, v48, type metadata accessor for EditEventIntent.AlarmInfo);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    goto LABEL_4;
  }

  if (*v48 != *&v9[v25])
  {
LABEL_12:
    sub_242822B9C(v9, type metadata accessor for EditEventIntent.AlarmInfo);
    goto LABEL_5;
  }

LABEL_15:
  sub_242822B9C(v9, type metadata accessor for EditEventIntent.AlarmInfo);
  v33 = v38;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v33;
  v55[0] = *v33;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2428B02F0();
    v35 = v55[0];
  }

  a2 = v40;
  sub_24282283C(*(v35 + 48) + v49, v40);
  sub_242820CAC(v22);
  v32 = 0;
  *v33 = v55[0];
LABEL_18:
  v11 = v39;
  return (*(v11 + 56))(a2, v32, 1, v10);
}

uint64_t sub_242820CAC(int64_t a1)
{
  v45 = sub_2428B3688();
  v3 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EditEventIntent.AlarmInfo(0);
  v6 = MEMORY[0x28223BE20](v5);
  v46 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v6);
  v11 = &v41 - v10;
  v12 = *v1;
  v13 = *v1 + 56;
  v14 = -1 << *(*v1 + 32);
  v15 = (a1 + 1) & ~v14;
  if (((1 << v15) & *(v13 + 8 * (v15 >> 6))) != 0)
  {
    v41 = v3;
    v16 = v9;
    v17 = ~v14;
    sub_2428B2F38();
    v18 = sub_2428B4958();
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) != 0)
    {
      v19 = *(v16 + 72);
      v20 = v41++;
      v42 = (v20 + 4);
      v21 = v46;
      v43 = v11;
      v47 = (v18 + 1) & v17;
      v48 = v19;
      while (1)
      {
        v22 = v19 * v15;
        sub_242822C44(*(v12 + 48) + v19 * v15, v11, type metadata accessor for EditEventIntent.AlarmInfo);
        sub_2428B4C88();
        sub_242822C44(v11, v21, type metadata accessor for EditEventIntent.AlarmInfo);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v23 = v17;
          v24 = a1;
          v25 = v12;
          v26 = v5;
          v27 = v13;
          v28 = v44;
          v29 = v21;
          v30 = v45;
          (*v42)(v44, v29, v45);
          MEMORY[0x245D1B7F0](1);
          sub_242822E34(&qword_27ECC2FF8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
          sub_2428B4548();
          v31 = v28;
          v13 = v27;
          v5 = v26;
          v12 = v25;
          a1 = v24;
          v17 = v23;
          v11 = v43;
          v32 = v30;
          v21 = v46;
          (*v41)(v31, v32);
        }

        else
        {
          v33 = *v21;
          MEMORY[0x245D1B7F0](0);
          v34 = v33 == 0.0 ? 0.0 : v33;
          MEMORY[0x245D1B800](*&v34);
        }

        v35 = sub_2428B4CB8();
        sub_242822B9C(v11, type metadata accessor for EditEventIntent.AlarmInfo);
        v36 = v35 & v17;
        if (a1 >= v47)
        {
          break;
        }

        v19 = v48;
        if (v36 < v47)
        {
          goto LABEL_17;
        }

LABEL_18:
        v37 = v19 * a1;
        if (v19 * a1 < v22 || *(v12 + 48) + v19 * a1 >= (*(v12 + 48) + v22 + v19))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v15;
          if (v37 == v22)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        v19 = v48;
        a1 = v15;
LABEL_6:
        v15 = (v15 + 1) & v17;
        if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v19 = v48;
      if (v36 < v47)
      {
        goto LABEL_6;
      }

LABEL_17:
      if (a1 < v36)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }

LABEL_22:

    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v38 = *(v12 + 16);
  v39 = __OFSUB__(v38, 1);
  v40 = v38 - 1;
  if (v39)
  {
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v40;
    ++*(v12 + 36);
  }

  return result;
}

unint64_t sub_242821124(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D30, &qword_2428B6228);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3050, &qword_2428BB8F0);
    v7 = sub_2428B4BA8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2428B2F38();
    while (1)
    {
      sub_2427E0918(v9, v5, &qword_27ECC1D30, &qword_2428B6228);
      result = sub_24281E70C(*v5, sub_2427FB210, sub_24281EB7C);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_2428B3188();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_242821334(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2480, &unk_2428B8720);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3040, &qword_2428BB8E8);
    v7 = sub_2428B4BA8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2428B2F38();
    while (1)
    {
      sub_2427E0918(v9, v5, &qword_27ECC2480, &unk_2428B8720);
      result = sub_24281E6C8(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_2428B3188();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_242821540(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2840, &unk_2428B9A60);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3020, &qword_2428BB8D8);
    v7 = sub_2428B4BA8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2428B2F38();
    while (1)
    {
      sub_2427E0918(v9, v5, &unk_27ECC2840, &unk_2428B9A60);
      result = sub_24281E70C(*v5, sub_2427FB34C, sub_24281F0CC);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_2428B3188();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_242821750(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2948, &qword_2428B9F30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3010, &qword_2428BB8D0);
    v7 = sub_2428B4BA8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2428B2F38();
    while (1)
    {
      sub_2427E0918(v9, v5, &qword_27ECC2948, &qword_2428B9F30);
      result = sub_24281E78C(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_2428B3188();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_242821938(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2FD8, &qword_2428C3380);
    v3 = sub_2428B4BA8();
    sub_2428B2F38();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_24281E850(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_242821A34()
{
  result = qword_280CDDEA0;
  if (!qword_280CDDEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDEA0);
  }

  return result;
}

unint64_t sub_242821A8C()
{
  result = qword_280CDDEA8;
  if (!qword_280CDDEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDEA8);
  }

  return result;
}

unint64_t sub_242821B34()
{
  result = qword_27ECC2E40;
  if (!qword_27ECC2E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2E40);
  }

  return result;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_242821BBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_242821C04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_242821C78()
{
  result = qword_27ECC2E70;
  if (!qword_27ECC2E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2E70);
  }

  return result;
}

unint64_t sub_242821D38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2F88, &qword_2428BB6A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2F90, &qword_2428BB6B0);
    v7 = sub_2428B4BA8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_2427E0918(v9, v5, &qword_27ECC2F88, &qword_2428BB6A8);
      result = sub_24281E994(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_2428B3188();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_242821F14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2F68, &qword_2428BB688);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2F70, &qword_2428BB690);
    v7 = sub_2428B4BA8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2428B2F38();
    while (1)
    {
      sub_2427E0918(v9, v5, &qword_27ECC2F68, &qword_2428BB688);
      result = sub_24281EA00(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_2428B3188();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_242822168(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4D80, &qword_2428C4D40);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2EF0, &qword_2428BB650);
    v7 = sub_2428B4BA8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2428B2F38();
    while (1)
    {
      sub_2427E0918(v9, v5, &qword_27ECC4D80, &qword_2428C4D40);
      result = sub_24281EAB8(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_2428B3188();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_242822374(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v14 = sub_2428B4BA8();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);
    while (1)
    {
      sub_2427E0918(v16, v12, a2, v27);
      result = sub_24281E92C(*v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v14[6] + result) = *v12;
      v21 = v14[7];
      v22 = sub_2428B3188();
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, &v12[v15], v22);
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_242822548()
{
  result = qword_27ECC2F30;
  if (!qword_27ECC2F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2F30);
  }

  return result;
}

unint64_t sub_24282259C()
{
  result = qword_27ECC2F40;
  if (!qword_27ECC2F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2F40);
  }

  return result;
}

unint64_t sub_2428225F0()
{
  result = qword_27ECC2F48;
  if (!qword_27ECC2F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2F48);
  }

  return result;
}

unint64_t sub_242822644()
{
  result = qword_27ECC2F58;
  if (!qword_27ECC2F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2F58);
  }

  return result;
}

unint64_t sub_242822698()
{
  result = qword_27ECC2F60;
  if (!qword_27ECC2F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2F60);
  }

  return result;
}

unint64_t sub_2428226EC()
{
  result = qword_27ECC39C0;
  if (!qword_27ECC39C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC39C0);
  }

  return result;
}

unint64_t sub_242822740()
{
  result = qword_27ECC2F80;
  if (!qword_27ECC2F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2F80);
  }

  return result;
}

uint64_t sub_242822794(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for EditEventIntent.AlarmInfo(uint64_t a1)
{
  result = qword_27ECC3058;
  if (!qword_27ECC3058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24282283C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditEventIntent.AlarmInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2428228A0(uint64_t a1, uint64_t a2)
{
  v23 = sub_2428B3688();
  v4 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EditEventIntent.AlarmInfo(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2FF0, &qword_2428C56A0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v22 - v15;
  v17 = *(v14 + 56);
  sub_242822C44(a1, &v22 - v15, type metadata accessor for EditEventIntent.AlarmInfo);
  sub_242822C44(a2, &v16[v17], type metadata accessor for EditEventIntent.AlarmInfo);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_242822C44(v16, v12, type metadata accessor for EditEventIntent.AlarmInfo);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v19 = *v12 == *&v16[v17];
      goto LABEL_6;
    }

LABEL_8:
    sub_2427E0980(v16, &qword_27ECC2FF0, &qword_2428C56A0);
    v19 = 0;
    return v19 & 1;
  }

  sub_242822C44(v16, v10, type metadata accessor for EditEventIntent.AlarmInfo);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v4 + 8))(v10, v23);
    goto LABEL_8;
  }

  v18 = v23;
  (*(v4 + 32))(v6, &v16[v17], v23);
  v19 = sub_2428B3668();
  v20 = *(v4 + 8);
  v20(v6, v18);
  v20(v10, v18);
LABEL_6:
  sub_242822B9C(v16, type metadata accessor for EditEventIntent.AlarmInfo);
  return v19 & 1;
}

uint64_t sub_242822B9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_242822BFC(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_242822C44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_242822CAC()
{
  result = qword_27ECC3000;
  if (!qword_27ECC3000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3000);
  }

  return result;
}

void sub_242822D00(uint64_t a1)
{
  sub_242822D74();
  if (v1 <= 0x3F)
  {
    sub_242822DA4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_242822D74()
{
  result = qword_27ECC3068;
  if (!qword_27ECC3068)
  {
    result = MEMORY[0x277D839F8];
    atomic_store(MEMORY[0x277D839F8], &qword_27ECC3068);
  }

  return result;
}

void sub_242822DA4()
{
  if (!qword_27ECC3070)
  {
    v0 = sub_2428B3688();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECC3070);
    }
  }
}

uint64_t sub_242822E34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_242822E88()
{
  v0 = sub_2428B3338();
  __swift_allocate_value_buffer(v0, qword_27ECC3090);
  __swift_project_value_buffer(v0, qword_27ECC3090);
  return sub_2428B3318();
}

uint64_t static TransferableCalendarEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1798 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3090);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static TransferableCalendarEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27ECC1798 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3090);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static TransferableCalendarEntity.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC1798 != -1)
  {
    swift_once();
  }

  v1 = sub_2428B3338();
  __swift_project_value_buffer(v1, qword_27ECC3090);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242823134@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1798 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3090);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_2428231F4(uint64_t a1)
{
  if (qword_27ECC1798 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3090);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_2428232D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  sub_2428B2948();
  result = sub_2428B2918();
  qword_27ECC30A8 = result;
  return result;
}

uint64_t static TransferableCalendarEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECC17A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27ECC30A8;
  return sub_2428B2F38();
}

uint64_t static TransferableCalendarEntity.defaultQuery.setter(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27ECC17A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECC30A8 = v1;
}

uint64_t (*static TransferableCalendarEntity.defaultQuery.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC17A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2428234D0@<X0>(void *a1@<X8>)
{
  if (qword_27ECC17A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27ECC30A8;
  return sub_2428B2F38();
}

uint64_t sub_242823550(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27ECC17A0;
  sub_2428B2F38();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECC30A8 = v1;
}

uint64_t static TransferableCalendarEntity.transferRepresentation.getter()
{
  v0 = sub_2428B4418();
  MEMORY[0x28223BE20](v0 - 8);
  sub_2428B4408();
  type metadata accessor for TransferableCalendarEntity(0);
  sub_242823D14(&unk_27ECC30B0, type metadata accessor for TransferableCalendarEntity, &protocol conformance descriptor for TransferableCalendarEntity);
  return sub_2428B41A8();
}

uint64_t sub_2428236DC()
{
  sub_2428B3498();
  swift_allocObject();
  sub_2428B3488();
  sub_2428B3818();
  swift_allocObject();
  *(v0 + 16) = sub_2428B3808();
  sub_2428B3838();
  sub_242823D14(&qword_27ECC30F8, MEMORY[0x277CF7B38], MEMORY[0x277CF7B30]);
  v1 = sub_2428B3468();
  v3 = v2;

  v4 = *(v0 + 8);

  return v4(v1, v3);
}

uint64_t type metadata accessor for TransferableCalendarEntity(uint64_t a1)
{
  result = qword_280CDE098;
  if (!qword_280CDE098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242823998(uint64_t a1, uint64_t a2)
{
  v2 = sub_2428B4418();
  MEMORY[0x28223BE20](v2 - 8);
  sub_2428B4408();
  return sub_2428B41A8();
}

uint64_t sub_242823AD4@<X0>(uint64_t *a1@<X8>)
{
  result = _s12CalendarLink012TransferableA6EntityV2idSSvg_0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_242823B40(uint64_t a1)
{
  v2 = sub_242823D14(&unk_27ECC27A0, type metadata accessor for TransferableCalendarEntity, &protocol conformance descriptor for TransferableCalendarEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_242823C04(uint64_t a1)
{
  v2 = sub_242823D14(&unk_280CDE0C0, type metadata accessor for TransferableCalendarEntity, &protocol conformance descriptor for TransferableCalendarEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_242823CA8(uint64_t a1)
{
  result = sub_2428B3838();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_242823D14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_242823D64()
{
  v0 = sub_2428B3338();
  __swift_allocate_value_buffer(v0, qword_27ECC3100);
  __swift_project_value_buffer(v0, qword_27ECC3100);
  return sub_2428B3318();
}

uint64_t static TransferableEventEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC17A8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3100);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static TransferableEventEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27ECC17A8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3100);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static TransferableEventEntity.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC17A8 != -1)
  {
    swift_once();
  }

  v1 = sub_2428B3338();
  __swift_project_value_buffer(v1, qword_27ECC3100);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242824010@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC17A8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3100);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_2428240D0(uint64_t a1)
{
  if (qword_27ECC17A8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3100);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t static TransferableEventEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECC17B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27ECC3118 + 1);
  v3 = qword_27ECC3128;
  *a1 = xmmword_27ECC3118;
  a1[1] = v2;
  a1[2] = v3;
  sub_2428B2F38();
  sub_2428B2F38();
  return sub_2428B2F38();
}

uint64_t static TransferableEventEntity.defaultQuery.setter(uint64_t a1)
{
  v3 = *a1;
  v1 = *(a1 + 16);
  if (qword_27ECC17B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27ECC3118 = v3;
  qword_27ECC3128 = v1;
}

uint64_t (*static TransferableEventEntity.defaultQuery.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC17B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_242824394@<X0>(void *a1@<X8>)
{
  if (qword_27ECC17B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27ECC3118 + 1);
  v3 = qword_27ECC3128;
  *a1 = xmmword_27ECC3118;
  a1[1] = v2;
  a1[2] = v3;
  sub_2428B2F38();
  sub_2428B2F38();
  return sub_2428B2F38();
}

uint64_t sub_242824434(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = qword_27ECC17B0;
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *&xmmword_27ECC3118 = v1;
  *(&xmmword_27ECC3118 + 1) = v2;
  qword_27ECC3128 = v3;
}

uint64_t static TransferableEventEntity.transferRepresentation.getter()
{
  v0 = sub_2428B4418();
  MEMORY[0x28223BE20](v0 - 8);
  sub_2428B4408();
  type metadata accessor for TransferableEventEntity(0);
  sub_242824808(&unk_27ECC3130, type metadata accessor for TransferableEventEntity, &protocol conformance descriptor for TransferableEventEntity);
  return sub_2428B41A8();
}

uint64_t sub_2428245FC()
{
  sub_2428B3498();
  swift_allocObject();
  sub_2428B3488();
  sub_2428B3908();
  swift_allocObject();
  *(v0 + 16) = sub_2428B38F8();
  sub_2428B3988();
  sub_242824808(&qword_27ECC3268, MEMORY[0x277CF7B58], MEMORY[0x277CF7B48]);
  v1 = sub_2428B3468();
  v3 = v2;

  v4 = *(v0 + 8);

  return v4(v1, v3);
}

uint64_t type metadata accessor for TransferableEventEntity(uint64_t a1)
{
  result = qword_280CDDB78;
  if (!qword_280CDDB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242824808(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2428248E4()
{
  result = qword_27ECC3140;
  if (!qword_27ECC3140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3140);
  }

  return result;
}

uint64_t sub_242824954(uint64_t a1, uint64_t a2)
{
  v2 = sub_2428B4418();
  MEMORY[0x28223BE20](v2 - 8);
  sub_2428B4408();
  return sub_2428B41A8();
}

uint64_t sub_242824A90@<X0>(uint64_t *a1@<X8>)
{
  result = _s12CalendarLink23TransferableEventEntityV2idSSvg_0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_242824AFC(uint64_t a1)
{
  v2 = sub_242824808(&unk_27ECC3170, type metadata accessor for TransferableEventEntity, &protocol conformance descriptor for TransferableEventEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_242824BC0(uint64_t a1)
{
  v2 = sub_242824808(&unk_280CDDBA0, type metadata accessor for TransferableEventEntity, &protocol conformance descriptor for TransferableEventEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_242824C64(uint64_t a1)
{
  result = sub_2428B3988();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_242824CD0(uint64_t **a1, unint64_t a2)
{
  *a1 = v2;
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_242825354(v5);
  v5 = result;
  a1[1] = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v5[2] > a2)
  {
    sub_2428B3988();
    return sub_242824DB4;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_242824DC0(uint64_t a1, uint64_t a2)
{
  sub_2428B3FF8();
  sub_242824808(&qword_27ECC3218, MEMORY[0x277CF7C20], MEMORY[0x277CF7C18]);
  v3 = sub_2428B3C38();
  if (v4)
  {
    if (*(a2 + 16))
    {
      sub_242801C04(v3, v4);
      v6 = v5;

      if (v6)
      {
LABEL_9:
        sub_242824808(&qword_27ECC3220, MEMORY[0x277CF7C20], MEMORY[0x277CF7C10]);
        sub_2428B3218();
        return sub_2428B4108();
      }
    }

    else
    {
    }
  }

  result = sub_2428B3C28();
  if (!v8)
  {
    return result;
  }

  if (*(a2 + 16))
  {
    sub_242801C04(result, v8);
    v10 = v9;

    if ((v10 & 1) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }
}

uint64_t sub_242824F54(uint64_t a1, uint64_t a2)
{
  sub_2428B3ED8();
  sub_242824808(&qword_27ECC3208, MEMORY[0x277CF7BF8], MEMORY[0x277CF7BF0]);
  v3 = sub_2428B3C38();
  if (v4)
  {
    if (*(a2 + 16))
    {
      sub_242801C04(v3, v4);
      v6 = v5;

      if (v6)
      {
LABEL_9:
        sub_242824808(&qword_27ECC3210, MEMORY[0x277CF7BF8], MEMORY[0x277CF7BE8]);
        sub_2428B3218();
        return sub_2428B4108();
      }
    }

    else
    {
    }
  }

  result = sub_2428B3C28();
  if (!v8)
  {
    return result;
  }

  if (*(a2 + 16))
  {
    sub_242801C04(result, v8);
    v10 = v9;

    if ((v10 & 1) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }
}

void *sub_2428250E8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_242825170(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC21F0, &qword_2428B7C30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_2428251F4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3238, &qword_2428BBEF8);
  v4 = *(sub_2428B35D8() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2428252F0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2428B49C8();
  }

  return sub_2428B4A88();
}

void *sub_24282537C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_2428B4988();
  sub_242822BFC(0, &qword_27ECC28F0, 0x277CC59B0);
  sub_242828268();
  result = sub_2428B47E8();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_2428B49F8())
      {
        goto LABEL_30;
      }

      sub_242822BFC(0, &qword_27ECC28F0, 0x277CC59B0);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

uint64_t sub_242825598(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_2428B35D8();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 56);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_24282583C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {
        sub_2428B3218();
        goto LABEL_24;
      }

      v11 += 2;
      sub_2428B3218();
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

id sub_242825994(id result)
{
  if (result)
  {
    v1 = result;
    v2 = [result emailAddress];
    if (v2)
    {
      v3 = v2;
      v4 = sub_2428B4618();
      v6 = v5;

      sub_2428AFF68(&v11, v4, v6);
    }

    result = [v1 phoneNumber];
    if (result)
    {
      v7 = result;
      v8 = sub_2428B4618();
      v10 = v9;

      sub_2428AFF68(&v11, v8, v10);
    }
  }

  return result;
}

void sub_242825A64(void *a1)
{
  v2 = [a1 organizer];
  sub_242825994(v2);

  v3 = [a1 attendees];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  sub_242822BFC(0, &qword_27ECC3260, 0x277CC5A70);
  v5 = sub_2428B46C8();

  if (v5 >> 62)
  {
    v6 = sub_2428B49C8();
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_4:
      if (v6 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v6; ++i)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x245D1B5D0](i, v5);
        }

        else
        {
          v8 = *(v5 + 8 * i + 32);
        }

        v9 = v8;
        v10 = [v9 emailAddress];
        if (v10)
        {
          v11 = v10;
          v12 = sub_2428B4618();
          v14 = v13;

          sub_2428AFF68(&v20, v12, v14);
        }

        v15 = [v9 phoneNumber];
        if (v15)
        {
          v16 = v15;
          v17 = sub_2428B4618();
          v19 = v18;

          sub_2428AFF68(&v20, v17, v19);
        }

        else
        {
        }
      }
    }
  }
}

char *sub_242825C70(unint64_t a1, uint64_t *a2, uint64_t a3)
{
  v61 = a3;
  v51 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  MEMORY[0x28223BE20](v4 - 8);
  v55 = &v45 - v5;
  v56 = sub_2428B35D8();
  v6 = *(v56 - 8);
  v7 = MEMORY[0x28223BE20](v56);
  v50 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3240, &qword_2428BBF00);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v45 - v11;
  v13 = sub_2428B3BB8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v74 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3248, &unk_2428BBF08);
  MEMORY[0x28223BE20](v16 - 8);
  v75 = &v45 - v17;
  v18 = sub_2428B3988();
  v63 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v73 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v45 - v22;
  MEMORY[0x28223BE20](v21);
  v62 = &v45 - v24;
  if (a1 >> 62)
  {
LABEL_27:
    v25 = sub_2428B49C8();
    if (v25)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v25 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
LABEL_3:
      v66 = v23;
      v23 = 0;
      v71 = a1 & 0xFFFFFFFFFFFFFF8;
      v72 = a1 & 0xC000000000000001;
      v70 = (v14 + 48);
      v60 = (v14 + 32);
      v59 = (v14 + 16);
      v53 = (v6 + 48);
      v48 = (v6 + 32);
      v47 = (v6 + 16);
      v46 = (v6 + 8);
      v57 = (v14 + 8);
      v76 = (v63 + 32);
      v69 = (v63 + 56);
      v78 = MEMORY[0x277D84F90];
      v68 = (v63 + 48);
      v64 = v13;
      v65 = v12;
      v6 = v75;
      v54 = a1;
      v58 = v25;
      while (1)
      {
        if (v72)
        {
          v26 = MEMORY[0x245D1B5D0](v23, a1);
          v27 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v23 >= *(v71 + 16))
          {
            goto LABEL_26;
          }

          v26 = *(a1 + 8 * v23 + 32);
          v27 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        v14 = v26;
        sub_2428B3BC8();
        if ((*v70)(v12, 1, v13) == 1)
        {
          sub_2427E0980(v12, &qword_27ECC3240, &qword_2428BBF00);
          v28 = 1;
        }

        else
        {
          v29 = v74;
          (*v60)(v74, v12, v13);
          v77[3] = v13;
          v77[4] = sub_242824808(&qword_280CDDA50, MEMORY[0x277CF7B88], MEMORY[0x277CF7B80]);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v77);
          (*v59)(boxed_opaque_existential_1, v29, v13);
          v31 = v66;
          sub_2428B3998();
          sub_242824808(&qword_27ECC3258, MEMORY[0x277CF7B58], MEMORY[0x277CF7B50]);
          if (sub_2428B3878())
          {
            result = [v14 uniqueID];
            if (!result)
            {
              __break(1u);
              return result;
            }

            v33 = result;
            sub_2428B4618();

            v34 = v55;
            sub_2428B35C8();

            v35 = v56;
            if ((*v53)(v34, 1, v56) == 1)
            {
              sub_2427E0980(v34, &qword_27ECC2CE0, &qword_2428B6560);
              a1 = v54;
              v13 = v64;
              v12 = v65;
              v31 = v66;
            }

            else
            {
              v36 = v49;
              (*v48)(v49, v34, v35);
              v31 = v66;
              v67 = _s12CalendarLink23TransferableEventEntityV2idSSvg_0();
              v52 = v37;
              v38 = v50;
              (*v47)(v50, v36, v35);
              v39 = v51;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v77[0] = *v39;
              sub_242820278(v38, v67, v52, isUniquelyReferenced_nonNull_native);

              *v39 = v77[0];
              (*v46)(v36, v56);
              a1 = v54;
              v13 = v64;
              v12 = v65;
            }
          }

          sub_242825A64(v14);
          (*v57)(v74, v13);
          v6 = v75;
          (*v76)(v75, v31, v18);
          v28 = 0;
          v25 = v58;
        }

        (*v69)(v6, v28, 1, v18);

        if ((*v68)(v6, 1, v18) == 1)
        {
          sub_2427E0980(v6, &unk_27ECC3248, &unk_2428BBF08);
        }

        else
        {
          v67 = v27;
          v41 = *v76;
          v42 = v62;
          (*v76)(v62, v6, v18);
          v41(v73, v42, v18);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v78 = sub_2427F7B9C(0, *(v78 + 2) + 1, 1, v78);
          }

          v14 = *(v78 + 2);
          v43 = *(v78 + 3);
          if (v14 >= v43 >> 1)
          {
            v78 = sub_2427F7B9C((v43 > 1), v14 + 1, 1, v78);
          }

          v44 = v78;
          *(v78 + 2) = v14 + 1;
          v41(&v44[((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v14], v73, v18);
          v13 = v64;
          v12 = v65;
          v6 = v75;
          v27 = v67;
        }

        ++v23;
        if (v27 == v25)
        {
          return v78;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

void sub_24282658C(uint64_t *a1, uint64_t a2, void *a3)
{
  v77 = a3;
  v71 = a1;
  v80[5] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  MEMORY[0x28223BE20](v4 - 8);
  v64 = &v61 - v5;
  v78 = sub_2428B3988();
  v6 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2428B35D8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v70 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v73 = &v61 - v14;
  v15 = *(a2 + 16);
  v65 = a2;
  v74 = v13;
  v72 = v10;
  if (v15)
  {
    v16 = sub_2428251F4(v15, 0);
    v17 = sub_242825598(v80, &v16[(*(v10 + 80) + 32) & ~*(v10 + 80)], v15, a2);
    v18 = v80[0];
    sub_2428B3218();
    sub_2427C9D4C(v18);
    if (v17 != v15)
    {
      goto LABEL_37;
    }

    a2 = v65;
    v10 = v72;
  }

  v19 = sub_2428B46B8();

  v80[0] = 0;
  v20 = [v77 fetchReminderDataForReminderURLs:v19 error:v80];

  v21 = v80[0];
  if (v20)
  {
    sub_242822BFC(0, &qword_27ECC3228, off_278D6A8B8);
    sub_242824808(&qword_27ECC3230, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    v22 = sub_2428B4528();
    v23 = v21;

    v24 = *v71;
    v77 = *(*v71 + 16);
    if (v77)
    {
      v69 = v22;
      v25 = 0;
      v75 = v6 + 8;
      v76 = v6 + 16;
      v68 = v10 + 16;
      v67 = v10 + 32;
      v63 = (v10 + 56);
      v66 = (v10 + 8);
      while (v25 < v24[2])
      {
        v26 = v78;
        (*(v6 + 16))(v8, v24 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v25, v78);
        v27 = _s12CalendarLink23TransferableEventEntityV2idSSvg_0();
        v29 = v28;
        (*(v6 + 8))(v8, v26);
        if (*(a2 + 16))
        {
          v30 = sub_242801C04(v27, v29);
          v31 = a2;
          v33 = v32;

          if (v33)
          {
            v34 = v72;
            v35 = *(v31 + 56) + *(v72 + 72) * v30;
            v36 = v70;
            v37 = v74;
            (*(v72 + 16))(v70, v35, v74);
            v38 = *(v34 + 32);
            v39 = v73;
            v38(v73, v36, v37);
            v40 = v69;
            a2 = v31;
            if (*(v69 + 16) && (v41 = sub_24281E894(v39), (v42 & 1) != 0))
            {
              v43 = *(*(v40 + 56) + 8 * v41);
              v44 = sub_242824CD0(v80, v25);
              v45 = sub_2428B38A8();
              v47 = v46;
              v48 = sub_2428B4048();
              if ((*(*(v48 - 8) + 48))(v47, 1, v48))
              {
                v45(v79, 0);
                v44(v80, 0);
              }

              else
              {
                v62 = v44;
                v49 = [v43 listName];
                if (v49)
                {
                  v50 = v49;
                  v61 = sub_2428B4618();
                }

                sub_2428B4038();
                v45(v79, 0);
                v62(v80, 0);
              }

              v51 = [v43 notes];
              if (v51)
              {
                v52 = v51;
                sub_2428B4618();
              }

              v24 = *v71;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v24 = sub_242825354(v24);
              }

              if (v25 >= v24[2])
              {
                goto LABEL_35;
              }

              sub_2428B3938();
              v53 = [v43 url];
              if (v53)
              {
                v54 = v64;
                v55 = v53;
                sub_2428B35B8();

                v56 = v54;
                v57 = 0;
                a2 = v65;
              }

              else
              {
                v57 = 1;
                a2 = v65;
                v56 = v64;
              }

              v58 = v74;
              (*v63)(v56, v57, 1, v74);
              if (v25 >= v24[2])
              {
                goto LABEL_36;
              }

              sub_2428B3928();

              (*v66)(v73, v58);
              *v71 = v24;
            }

            else
            {
              (*v66)(v39, v74);
            }
          }

          else
          {
            a2 = v31;
          }
        }

        else
        {
        }

        if (v77 == ++v25)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
    }

LABEL_33:
  }

  else
  {
    v59 = v80[0];
    v60 = sub_2428B3538();

    swift_willThrow();
  }
}

uint64_t sub_242826D5C(char *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC31F8, &qword_2428BBEE8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v52 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v53 = &v47 - v7;
  v8 = sub_2428B3ED8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v51 = &v47 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3200, &qword_2428BBEF0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v47 - v18;
  v20 = sub_2428B3FF8();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2428B3968();
  v24 = (*(v21 + 48))(v19, 1, v20);
  v54 = a2;
  if (v24 == 1)
  {
    sub_2427E0980(v19, &qword_27ECC3200, &qword_2428BBEF0);
  }

  else
  {
    (*(v21 + 32))(v23, v19, v20);
    sub_242824DC0(v23, a2);
    (*(v21 + 16))(v17, v23, v20);
    (*(v21 + 56))(v17, 0, 1, v20);
    sub_2428B3978();
    (*(v21 + 8))(v23, v20);
  }

  v25 = v53;
  sub_2428B38B8();
  if ((*(v9 + 48))(v25, 1, v8) == 1)
  {
    sub_2427E0980(v25, &qword_27ECC31F8, &qword_2428BBEE8);
    result = sub_2428B3958();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v27 = v51;
    (*(v9 + 32))(v51, v25, v8);
    sub_242824F54(v27, v54);
    v28 = v52;
    (*(v9 + 16))(v52, v27, v8);
    (*(v9 + 56))(v28, 0, 1, v8);
    sub_2428B38C8();
    (*(v9 + 8))(v27, v8);
    result = sub_2428B3958();
    if (!result)
    {
      return result;
    }
  }

  v52 = *(result + 16);
  v53 = a1;
  if (v52)
  {
    v29 = v9;
    v30 = 0;
    v31 = *(v29 + 16);
    v32 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v49 = *(v29 + 72);
    v50 = v31;
    v48 = (v29 + 24);
    v51 = (v29 + 16);
    v33 = (v29 + 8);
    do
    {
      v34 = result;
      v50(v12, result + v32, v8);
      sub_242824808(&qword_27ECC3208, MEMORY[0x277CF7BF8], MEMORY[0x277CF7BF0]);
      v35 = sub_2428B3C38();
      if (v36)
      {
        if (*(v54 + 16))
        {
          sub_242801C04(v35, v36);
          v38 = v37;

          if (v38)
          {
            goto LABEL_19;
          }
        }

        else
        {
        }
      }

      v39 = sub_2428B3C28();
      if (!v40)
      {
        goto LABEL_21;
      }

      if (*(v54 + 16))
      {
        sub_242801C04(v39, v40);
        v42 = v41;

        if ((v42 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_19:
        sub_242824808(&qword_27ECC3210, MEMORY[0x277CF7BF8], MEMORY[0x277CF7BE8]);
        sub_2428B3218();
        sub_2428B4108();
        goto LABEL_21;
      }

LABEL_21:
      v44 = sub_2428B3948();
      v45 = *v43;
      if (*v43)
      {
        v46 = v43;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v46 = v45;
        if ((result & 1) == 0)
        {
          result = sub_242825368(v45);
          v45 = result;
          *v46 = result;
        }

        if (v30 >= *(v45 + 2))
        {
          __break(1u);
          return result;
        }

        (*v48)(&v45[v32], v12, v8);
      }

      v44(v55, 0);
      ++v30;
      (*v33)(v12, v8);
      v32 += v49;
      result = v34;
    }

    while (v52 != v30);
  }
}

void sub_2428273D8(uint64_t *a1, uint64_t a2, void *a3)
{
  v89[4] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2428B5A90;
  v6 = *MEMORY[0x277CBD018];
  *(v5 + 32) = *MEMORY[0x277CBD018];
  v7 = objc_allocWithZone(MEMORY[0x277CBDA70]);
  v8 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC31E0, &qword_2428BBED0);
  v9 = sub_2428B46B8();

  v10 = [v7 initWithKeysToFetch_];

  v11 = objc_opt_self();
  v12 = sub_2428B46B8();
  v13 = [v11 predicateForContactsMatchingHandleStrings_];

  [v10 setPredicate_];
  [v10 setUnifyResults_];
  v89[0] = 0;
  v14 = [a3 executeFetchRequest:v10 error:v89];
  if (!v14)
  {
    v58 = v89[0];
    v7 = sub_2428B3538();

    swift_willThrow();
    if (qword_280CDE4E0 == -1)
    {
      goto LABEL_37;
    }

    goto LABEL_58;
  }

  v15 = v14;
  v16 = v89[0];
  [v15 value];
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    v81 = v15;
    v82 = a1;
    v83 = v10;
    v19 = [v17 allKeys];
    v20 = sub_2428B46C8();

    v21 = sub_24281C55C(v20);

    v22 = MEMORY[0x277D84F90];
    if (v21)
    {
      v22 = v21;
    }

    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = (v22 + 40);
      v86 = MEMORY[0x277D84F98];
      v25 = &property descriptor for AlarmEntityRepresentation.absoluteDate;
      v84 = v18;
      while (1)
      {
        v10 = *(v24 - 1);
        v26 = *v24;
        v89[0] = v10;
        v89[1] = v26;
        swift_bridgeObjectRetain_n();
        v27 = [v18 v25[381]];
        swift_unknownObjectRelease();
        if (v27)
        {
          sub_2428B4918();
          swift_unknownObjectRelease();
          sub_242822794(v89, v88);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC31F0, &qword_2428BBEE0);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_29;
          }

          v28 = v87;
          if (v87 >> 62)
          {
            if (!sub_2428B49C8())
            {
LABEL_28:

LABEL_29:

              if (qword_280CDE4E0 != -1)
              {
                swift_once();
              }

              v50 = sub_2428B4448();
              __swift_project_value_buffer(v50, qword_280CDE4E8);
              sub_242822794(v89, v88);
              v51 = sub_2428B4428();
              v7 = sub_2428B4838();
              if (os_log_type_enabled(v51, v7))
              {
                v52 = swift_slowAlloc();
                v53 = swift_slowAlloc();
                v87 = v53;
                *v52 = 136315138;
                __swift_project_boxed_opaque_existential_1(v88, v88[3]);
                swift_getDynamicType();
                v54 = sub_2428B4CC8();
                v56 = v55;
                __swift_destroy_boxed_opaque_existential_1(v88);
                v57 = sub_24285A480(v54, v56, &v87);
                v25 = &property descriptor for AlarmEntityRepresentation.absoluteDate;

                *(v52 + 4) = v57;
                _os_log_impl(&dword_2427C0000, v51, v7, "Unexpected contact list type: %s", v52, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v53);
                MEMORY[0x245D1C000](v53, -1, -1);
                MEMORY[0x245D1C000](v52, -1, -1);
              }

              else
              {

                __swift_destroy_boxed_opaque_existential_1(v88);
              }

              __swift_destroy_boxed_opaque_existential_1(v89);
              goto LABEL_8;
            }
          }

          else if (!*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          if ((v28 & 0xC000000000000001) != 0)
          {
            v29 = MEMORY[0x245D1B5D0](0, v28);
          }

          else
          {
            if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_56;
            }

            v29 = *(v28 + 32);
          }

          v30 = v29;

          v85 = v30;
          v31 = [v30 identifier];
          v7 = sub_2428B4618();
          v33 = v32;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v88[0] = v86;
          v36 = sub_242801C04(v10, v26);
          v37 = *(v86 + 16);
          v38 = (v35 & 1) == 0;
          v39 = v37 + v38;
          if (__OFADD__(v37, v38))
          {
            goto LABEL_55;
          }

          v40 = v35;
          if (*(v86 + 24) >= v39)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_24288D678();
            }
          }

          else
          {
            sub_24288C840(v39, isUniquelyReferenced_nonNull_native);
            v41 = sub_242801C04(v10, v26);
            if ((v40 & 1) != (v42 & 1))
            {
              sub_2428B4C38();
              __break(1u);
              return;
            }

            v36 = v41;
          }

          v25 = &property descriptor for AlarmEntityRepresentation.absoluteDate;
          v43 = v88[0];
          v86 = v88[0];
          if (v40)
          {
            v44 = (*(v88[0] + 56) + 16 * v36);
            *v44 = v7;
            v44[1] = v33;
          }

          else
          {
            *(v88[0] + 8 * (v36 >> 6) + 64) |= 1 << v36;
            v45 = (v43[6] + 16 * v36);
            *v45 = v10;
            v45[1] = v26;
            v46 = (v43[7] + 16 * v36);
            *v46 = v7;
            v46[1] = v33;
            v47 = v43[2];
            v48 = __OFADD__(v47, 1);
            v49 = v47 + 1;
            if (v48)
            {
              goto LABEL_57;
            }

            v43[2] = v49;
          }

          __swift_destroy_boxed_opaque_existential_1(v89);
          v18 = v84;
        }

        else
        {
        }

LABEL_8:
        v24 += 2;
        if (!--v23)
        {
          goto LABEL_45;
        }
      }
    }

    v86 = MEMORY[0x277D84F98];
LABEL_45:

    v77 = *v82;
    v78 = *(*v82 + 16);
    if (!v78)
    {

      swift_unknownObjectRelease();
      return;
    }

    v10 = v86;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v77 = sub_242825354(v77);
    }

    v79 = 0;
    while (v79 < *(v77 + 2))
    {
      v80 = *(sub_2428B3988() - 8);
      sub_242826D5C(&v77[((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v79++], v86);
      v7 = v79;
      if (v78 == v79)
      {

        swift_unknownObjectRelease();
        *v82 = v77;
        return;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
LABEL_37:
    v59 = sub_2428B4448();
    __swift_project_value_buffer(v59, qword_280CDE4E8);
    v60 = v7;
    v61 = sub_2428B4428();
    v62 = sub_2428B4838();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v63 = 138412290;
      v65 = v7;
      v66 = _swift_stdlib_bridgeErrorToNSError();
      *(v63 + 4) = v66;
      *v64 = v66;
      _os_log_impl(&dword_2427C0000, v61, v62, "Error fetching contacts: %@", v63, 0xCu);
      sub_2427E0980(v64, &qword_27ECC31E8, &qword_2428BBED8);
      MEMORY[0x245D1C000](v64, -1, -1);
      MEMORY[0x245D1C000](v63, -1, -1);
    }

    else
    {
    }

    return;
  }

  swift_unknownObjectRelease();
  if (qword_280CDE4E0 != -1)
  {
    swift_once();
  }

  v67 = sub_2428B4448();
  __swift_project_value_buffer(v67, qword_280CDE4E8);
  v68 = v15;
  v69 = sub_2428B4428();
  v70 = sub_2428B4838();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v89[0] = v72;
    *v71 = 136315138;
    v73 = [v68 value];
    swift_getObjectType();
    swift_unknownObjectRelease();
    v74 = sub_2428B4CC8();
    v76 = sub_24285A480(v74, v75, v89);

    *(v71 + 4) = v76;
    _os_log_impl(&dword_2427C0000, v69, v70, "Unexpected fetch result value type: %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v72);
    MEMORY[0x245D1C000](v72, -1, -1);
    MEMORY[0x245D1C000](v71, -1, -1);
  }

  else
  {
  }
}

char *sub_242827E60(unint64_t a1, void *a2, void *a3)
{
  v14 = MEMORY[0x277D84F98];
  v13 = MEMORY[0x277D84FA0];
  v12 = sub_242825C70(a1, &v14, &v13);
  sub_24282658C(&v12, v14, a2);
  v5 = v13;
  v6 = *(v13 + 16);
  if (!v6)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_5:
    sub_2428273D8(&v12, v7, a3);

    return v12;
  }

  v7 = sub_242825170(v6, 0);
  v8 = sub_24282583C(&v11, v7 + 4, v6, v5);
  v9 = v11;
  sub_2428B3218();
  result = sub_2427C9D4C(v9);
  if (v8 == v6)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void *sub_242827F98(unint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for TransferableEventEntity(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2428B3988();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_242827E60(a1, a2, a3);
  v15 = *(v14 + 2);
  if (v15)
  {
    v17 = *(v11 + 16);
    v16 = v11 + 16;
    v18 = *(v16 + 64);
    v24 = v14;
    v19 = &v14[(v18 + 32) & ~v18];
    v25 = *(v16 + 56);
    v26 = v17;
    v20 = MEMORY[0x277D84F90];
    v27 = v16;
    do
    {
      v26(v13, v19, v10);
      (*(v16 + 16))(v9, v13, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_2427F7BEC(0, v20[2] + 1, 1, v20);
      }

      v22 = v20[2];
      v21 = v20[3];
      if (v22 >= v21 >> 1)
      {
        v20 = sub_2427F7BEC((v21 > 1), v22 + 1, 1, v20);
      }

      v20[2] = v22 + 1;
      sub_242828204(v9, v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v22);
      v19 += v25;
      --v15;
    }

    while (v15);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v20;
}

uint64_t sub_242828204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransferableEventEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_242828268()
{
  result = qword_27ECC4EF0;
  if (!qword_27ECC4EF0)
  {
    sub_242822BFC(255, &qword_27ECC28F0, 0x277CC59B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4EF0);
  }

  return result;
}

uint64_t type metadata accessor for AlarmTrigger(uint64_t a1)
{
  result = qword_27ECC3270;
  if (!qword_27ECC3270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_242828324(uint64_t a1)
{
  sub_242828398(319);
  if (v1 <= 0x3F)
  {
    sub_2428B3688();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_242828398(uint64_t a1)
{
  if (!qword_27ECC3280)
  {
    sub_2428283F0();
    v1 = sub_2428B34D8();
    if (!v2)
    {
      atomic_store(v1, &qword_27ECC3280);
    }
  }
}

unint64_t sub_2428283F0()
{
  result = qword_27ECC4C60;
  if (!qword_27ECC4C60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECC4C60);
  }

  return result;
}

uint64_t sub_242828458()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3298, &qword_2428BBFD0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - v2;
  v4 = type metadata accessor for AlarmTrigger(0);
  v5 = sub_242828B30();
  MEMORY[0x245D19EE0](v5, v4, &type metadata for AlarmTrigger.OffsetDurationResolver, v5);
  v6 = sub_242828B84();
  MEMORY[0x245D19EE0](v6, v4, &type metadata for AlarmTrigger.DateResolver, v6);
  sub_242828AE8(&qword_27ECC3288, type metadata accessor for AlarmTrigger, &unk_2428BBF2C);
  sub_2428B33A8();
  v8[0] = v5;
  v8[1] = &type metadata for AlarmTrigger.OffsetDurationResolver;
  sub_2428B3398();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_242828604(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_242828624, 0, 0);
}

uint64_t sub_242828624()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC44E0, &unk_2428BBFC0);
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  v4 = type metadata accessor for AlarmTrigger(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_242828720(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_242828740, 0, 0);
}

uint64_t sub_242828740()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_2428B3688();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  v4 = type metadata accessor for AlarmTrigger(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_242828830()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2C58, &qword_2428BB148);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2428B7940;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC44E0, &unk_2428BBFC0);
  v2 = sub_2427CD47C(&qword_27ECC3290, &unk_27ECC44E0, &unk_2428BBFC0, MEMORY[0x277CBA4D0]);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_2428B3688();
  v4 = sub_242828AE8(&qword_27ECC2768, MEMORY[0x277CC9578], MEMORY[0x277CBA4E8]);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  return v0;
}

uint64_t sub_242828918@<X0>(uint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242828A84(v5, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_2428B3688();
    a2[3] = v8;
    v9 = sub_242828AE8(&qword_27ECC2768, MEMORY[0x277CC9578], MEMORY[0x277CBA4E8]);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC44E0, &unk_2428BBFC0);
    a2[3] = v8;
    v9 = sub_2427CD47C(&qword_27ECC3290, &unk_27ECC44E0, &unk_2428BBFC0, MEMORY[0x277CBA4D0]);
  }

  a2[4] = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(v8 - 8) + 32))(boxed_opaque_existential_1, v7, v8);
}

uint64_t sub_242828A84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmTrigger(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242828AE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_242828B30()
{
  result = qword_27ECC32A0;
  if (!qword_27ECC32A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC32A0);
  }

  return result;
}

unint64_t sub_242828B84()
{
  result = qword_27ECC32A8;
  if (!qword_27ECC32A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC32A8);
  }

  return result;
}

unint64_t sub_242828BFC()
{
  result = qword_27ECC32C0;
  if (!qword_27ECC32C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC32C0);
  }

  return result;
}

unint64_t sub_242828C54()
{
  result = qword_27ECC32C8;
  if (!qword_27ECC32C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC32C8);
  }

  return result;
}

unint64_t sub_242828CAC()
{
  result = qword_27ECC32D0;
  if (!qword_27ECC32D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC32D0);
  }

  return result;
}

unint64_t sub_242828D4C()
{
  result = qword_27ECC32D8;
  if (!qword_27ECC32D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC32D8);
  }

  return result;
}

uint64_t CalendarEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  sub_2428B2948();
  result = sub_2428B2918();
  *a1 = result;
  return result;
}

uint64_t CalendarEntityQuery.entities(for:)(uint64_t a1)
{
  v2[2] = a1;
  sub_2428B3DB8();
  v3 = swift_task_alloc();
  v4 = *v1;
  v2[3] = v3;
  v2[4] = v4;
  sub_2428B4758();
  v2[5] = sub_2428B4748();
  v6 = sub_2428B4728();

  return MEMORY[0x2822009F8](sub_242828F28, v6, v5);
}

void sub_242828F28()
{
  v21 = v0;
  v1 = sub_2427F4190();
  v2 = sub_2428B46B8();
  v3 = [v1 calendarsWithIdentifiers_];

  if (v3)
  {
    v19 = v1;

    sub_2427F98B4();
    v4 = sub_2428B46C8();

    if (v4 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2428B49C8())
    {
      v6 = 0;
      v7 = MEMORY[0x277D84F90];
      while ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x245D1B5D0](v6, v4);
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_16;
        }

LABEL_8:
        v10 = *(v0 + 24);
        v11 = v8;
        sub_2428B3DC8();
        CalendarEntity.init(_:)(v10, v20);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2427F7C14(0, *(v7 + 2) + 1, 1, v7);
        }

        v13 = *(v7 + 2);
        v12 = *(v7 + 3);
        if (v13 >= v12 >> 1)
        {
          v7 = sub_2427F7C14((v12 > 1), v13 + 1, 1, v7);
        }

        *(v7 + 2) = v13 + 1;
        v14 = &v7[80 * v13];
        *(v14 + 2) = v20[0];
        v15 = v20[1];
        v16 = v20[2];
        v17 = v20[4];
        *(v14 + 5) = v20[3];
        *(v14 + 6) = v17;
        *(v14 + 3) = v15;
        *(v14 + 4) = v16;
        ++v6;
        if (v9 == i)
        {
          goto LABEL_20;
        }
      }

      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v8 = *(v4 + 8 * v6 + 32);
      v9 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_8;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    v7 = MEMORY[0x277D84F90];
LABEL_20:

    v18 = *(v0 + 8);

    v18(v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t CalendarEntityQuery.suggestedEntities()(uint64_t a1)
{
  v3 = *v1;
  v2[2] = a1;
  v2[3] = v3;
  sub_2428B4758();
  v2[4] = sub_2428B4748();
  v5 = sub_2428B4728();

  return MEMORY[0x2822009F8](sub_242829274, v5, v4);
}

uint64_t sub_242829274()
{
  v7 = v0;

  v1 = sub_2427F4190();
  v2 = *(v0 + 16);
  v6 = 3;
  v3 = v1;
  static CalendarSuggestionsProvider.suggestions(withEventStore:options:)(v1, &v6, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24282931C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427F96EC;

  return CalendarEntityQuery.entities(for:)(a1);
}

uint64_t sub_2428293B0(uint64_t a1)
{
  v3 = *v1;
  v2[2] = a1;
  v2[3] = v3;
  sub_2428B4758();
  v2[4] = sub_2428B4748();
  v5 = sub_2428B4728();

  return MEMORY[0x2822009F8](sub_242829274, v5, v4);
}

uint64_t sub_24282944C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_242829CF0();
  *v5 = v2;
  v5[1] = sub_2427DC6B4;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t CalendarEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a2;
  v4[8] = a3;
  v4[6] = a1;
  sub_2428B3DB8();
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v5 = swift_task_alloc();
  v6 = *v3;
  v4[10] = v5;
  v4[11] = v6;
  sub_2428B4758();
  v4[12] = sub_2428B4748();
  v8 = sub_2428B4728();

  return MEMORY[0x2822009F8](sub_242829604, v8, v7);
}

uint64_t sub_242829604()
{
  v35 = v0;

  v32 = sub_2427F4190();
  v1 = [v32 calendarsForEntityType_];
  sub_2427F98B4();
  v2 = sub_2428B46C8();

  *&v34[0] = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2428B49C8())
  {
    v4 = 0;
    v33 = i;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x245D1B5D0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = v0[7];
      v9 = v0[8];
      v10 = [v5 title];
      v11 = sub_2428B4618();
      v13 = v12;

      v0[2] = v11;
      v0[3] = v13;
      v0[4] = v8;
      v0[5] = v9;
      sub_242829AD4();
      LOBYTE(v10) = sub_2428B4908();

      if (v10)
      {
        sub_2428B4AA8();
        sub_2428B4AD8();
        sub_2428B4AE8();
        sub_2428B4AB8();
      }

      else
      {
      }

      ++v4;
      if (v7 == v33)
      {
        v14 = *&v34[0];
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v14 = MEMORY[0x277D84F90];
LABEL_18:

  if (v14 < 0 || (v14 & 0x4000000000000000) != 0)
  {
    goto LABEL_35;
  }

  v15 = *(v14 + 16);
  if (v15)
  {
LABEL_21:
    v16 = 0;
    v17 = MEMORY[0x277D84F90];
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x245D1B5D0](v16, v14);
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v16 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v18 = *(v14 + 8 * v16 + 32);
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          v15 = sub_2428B49C8();
          if (!v15)
          {
            break;
          }

          goto LABEL_21;
        }
      }

      v20 = v0[9];
      v21 = v18;
      sub_2428B3DC8();
      CalendarEntity.init(_:)(v20, v34);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_2427F7C14(0, *(v17 + 2) + 1, 1, v17);
      }

      v23 = *(v17 + 2);
      v22 = *(v17 + 3);
      if (v23 >= v22 >> 1)
      {
        v17 = sub_2427F7C14((v22 > 1), v23 + 1, 1, v17);
      }

      *(v17 + 2) = v23 + 1;
      v24 = &v17[80 * v23];
      *(v24 + 2) = v34[0];
      v25 = v34[1];
      v26 = v34[2];
      v27 = v34[4];
      *(v24 + 5) = v34[3];
      *(v24 + 6) = v27;
      *(v24 + 3) = v25;
      *(v24 + 4) = v26;
      ++v16;
    }

    while (v19 != v15);
  }

  v28 = v0[10];

  v29 = sub_2428B3568();
  (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
  sub_242829B28();
  sub_2427E3430();
  sub_2428B30F8();

  v30 = v0[1];

  return v30();
}

uint64_t sub_242829A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2427CD274;

  return CalendarEntityQuery.entities(matching:)(a1, a2, a3);
}

unint64_t sub_242829AD4()
{
  result = qword_27ECC35C0;
  if (!qword_27ECC35C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC35C0);
  }

  return result;
}

unint64_t sub_242829B28()
{
  result = qword_280CDE590;
  if (!qword_280CDE590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE590);
  }

  return result;
}

unint64_t sub_242829B80()
{
  result = qword_280CDE5E0;
  if (!qword_280CDE5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE5E0);
  }

  return result;
}

unint64_t sub_242829BD8()
{
  result = qword_280CDE5D8;
  if (!qword_280CDE5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE5D8);
  }

  return result;
}

unint64_t sub_242829C30()
{
  result = qword_280CDE608;
  if (!qword_280CDE608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE608);
  }

  return result;
}

unint64_t sub_242829C88()
{
  result = qword_27ECC32E0;
  if (!qword_27ECC32E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC32E8, qword_2428BEA40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC32E0);
  }

  return result;
}

unint64_t sub_242829CF0()
{
  result = qword_280CDE5F0[0];
  if (!qword_280CDE5F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CDE5F0);
  }

  return result;
}

uint64_t sub_242829D54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_2428B3558();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2428B3338();
  __swift_allocate_value_buffer(v10, qword_27ECC32F0);
  __swift_project_value_buffer(v10, qword_27ECC32F0);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2428B3578();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2428B3328();
}

uint64_t AttendeeEntity_v0.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2428B45D8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  MEMORY[0x28223BE20](v3 - 8);
  v28 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v5 - 8);
  v27 = &v22 - v6;
  v7 = sub_2428B36C8();
  MEMORY[0x28223BE20](v7 - 8);
  v25 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2428B3558();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2428B45F8();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_2428B3568();
  v23 = *(v14 - 8);
  v24 = v14;
  MEMORY[0x28223BE20](v14);
  v26 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2428B2C68();
  v16 = v29;
  if (!v29)
  {
    sub_2428B2C68();
    v16 = v29;
  }

  sub_2428B2C68();
  if (!v29)
  {
    if (!v16)
    {
      sub_2428B4578();
      if (qword_27ECC1780 != -1)
      {
        swift_once();
      }

      v20 = __swift_project_value_buffer(v9, qword_27ECD4500);
      (*(v10 + 16))(v12, v20, v9);
      sub_2428B36B8();
      sub_2428B3578();
      (*(v23 + 56))(v27, 1, 1, v24);
      v21 = sub_2428B3148();
      (*(*(v21 - 8) + 56))(v28, 1, 1, v21);
      return sub_2428B3178();
    }

    return sub_2428B3128();
  }

  v22 = a1;
  if (!v16)
  {
    return sub_2428B3128();
  }

  sub_2428B45C8();
  sub_2428B45B8();
  sub_2428B4598();

  sub_2428B45B8();
  sub_2428B4598();

  sub_2428B45B8();
  sub_2428B45E8();
  if (qword_27ECC1780 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v9, qword_27ECD4500);
  (*(v10 + 16))(v12, v17, v9);
  sub_2428B36B8();
  sub_2428B3588();
  (*(v23 + 56))(v27, 1, 1, v24);
  v18 = sub_2428B3148();
  (*(*(v18 - 8) + 56))(v28, 1, 1, v18);
  return sub_2428B3178();
}

uint64_t sub_24282A71C(char *a1, uint64_t *a2)
{
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*AttendeeEntity_v0.status.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_24282A8EC(char *a1, uint64_t *a2)
{
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*AttendeeEntity_v0.role.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_24282AABC(char *a1, uint64_t *a2)
{
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*AttendeeEntity_v0.kind.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_24282AC9C(uint64_t *a1, uint64_t *a2)
{
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*AttendeeEntity_v0.comment.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_24282AE48(uint64_t *a1, uint64_t *a2)
{
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*AttendeeEntity_v0.name.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_24282AFF4(uint64_t *a1, uint64_t *a2)
{
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*AttendeeEntity_v0.emailAddress.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_24282B1A0(uint64_t *a1, uint64_t *a2)
{
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*AttendeeEntity_v0.phoneNumber.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CBEA8;
}

uint64_t sub_24282B370(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_2427D4960(a1, &v10 - v7);
  sub_2427D4960(v8, v6);
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
  sub_2427D49D0(v8);
}

uint64_t AttendeeEntity_v0.url.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2427D4960(a1, &v5 - v3);
  sub_2428B2C78();
  return sub_2427D49D0(a1);
}

uint64_t (*AttendeeEntity_v0.url.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t AttendeeEntity_v0.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v44 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v43 = &v34 - v6;
  v7 = sub_2428B3558();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2428B36C8();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_2428B45F8();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_2428B3568();
  MEMORY[0x28223BE20](v13 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3368, &qword_2428BC3A8);
  sub_2428B4578();
  sub_2428B36B8();
  v14 = *MEMORY[0x277CC9110];
  v15 = *(v8 + 104);
  v15(v10, v14, v7);
  sub_2428B3578();
  sub_24282BEBC();
  v41 = sub_2428B2C98();
  *a2 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3370, &qword_2428BC3B0);
  sub_2428B4578();
  sub_2428B36B8();
  v15(v10, v14, v7);
  sub_2428B3578();
  sub_24282BF10();
  v40 = sub_2428B2C98();
  a2[1] = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3380, &qword_2428BC3B8);
  sub_2428B4578();
  sub_2428B36B8();
  v15(v10, v14, v7);
  sub_2428B3578();
  sub_24282BF64();
  v39 = sub_2428B2C98();
  a2[2] = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3760, &qword_2428B6ED0);
  sub_2428B4578();
  sub_2428B36B8();
  v15(v10, v14, v7);
  sub_2428B3578();
  v38 = sub_2428B2D68();
  a2[3] = v38;
  sub_2428B4578();
  sub_2428B36B8();
  v15(v10, v14, v7);
  sub_2428B3578();
  v37 = sub_2428B2D68();
  a2[4] = v37;
  sub_2428B4578();
  sub_2428B36B8();
  v15(v10, v14, v7);
  sub_2428B3578();
  v36 = sub_2428B2D68();
  a2[5] = v36;
  sub_2428B4578();
  sub_2428B36B8();
  v15(v10, v14, v7);
  sub_2428B3578();
  v35 = sub_2428B2D68();
  a2[6] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4C00, &qword_2428B6ED8);
  sub_2428B4578();
  sub_2428B36B8();
  v15(v10, v14, v7);
  sub_2428B3578();
  a2[7] = sub_2428B2D28();
  v16 = v42;
  v17 = sub_2428B3CE8();
  if (v17 >= 8)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  LOBYTE(v45) = v18;
  sub_2428B2C78();
  v19 = sub_2428B3CC8();
  if (v19 >= 5)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  LOBYTE(v45) = v20;
  sub_2428B2C78();
  v21 = sub_2428B3CD8();
  if (v21 >= 5)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  LOBYTE(v45) = v22;
  sub_2428B2C78();
  v45 = sub_2428B3CF8();
  v46 = v23;
  v24 = sub_2428B2C78();
  v45 = MEMORY[0x245D1A810](v24);
  v46 = v25;
  v26 = sub_2428B2C78();
  v45 = MEMORY[0x245D1A7F0](v26);
  v46 = v27;
  v28 = sub_2428B2C78();
  v45 = MEMORY[0x245D1A7E0](v28);
  v46 = v29;
  v30 = sub_2428B2C78();
  v31 = v43;
  MEMORY[0x245D1A800](v30);
  sub_2427D4960(v31, v44);
  sub_2428B2C78();
  v32 = sub_2428B3D08();
  (*(*(v32 - 8) + 8))(v16, v32);
  return sub_2427D49D0(v31);
}

CalendarLink::AttendeeEntity_v0::AttendeeEntityStatus_v0 __swiftcall AttendeeEntity_v0.AttendeeEntityStatus_v0.init(_:)(EKParticipantStatus a1)
{
  if (a1 >= 8)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  *v1 = v2;
  return a1;
}

CalendarLink::AttendeeEntity_v0::Kind_v0 __swiftcall AttendeeEntity_v0.Kind_v0.init(_:)(EKParticipantType a1)
{
  if (a1 >= (EKParticipantTypeGroup|EKParticipantTypePerson))
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  *v1 = v2;
  return a1;
}

unint64_t sub_24282BEBC()
{
  result = qword_27ECC3990;
  if (!qword_27ECC3990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3990);
  }

  return result;
}

unint64_t sub_24282BF10()
{
  result = qword_27ECC3378;
  if (!qword_27ECC3378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3378);
  }

  return result;
}

unint64_t sub_24282BF64()
{
  result = qword_27ECC3388;
  if (!qword_27ECC3388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3388);
  }

  return result;
}

uint64_t AttendeeEntity_v0.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2428B3558();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  MEMORY[0x28223BE20](v8 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3368, &qword_2428BC3A8);
  sub_2428B4578();
  sub_2428B36B8();
  v9 = *MEMORY[0x277CC9110];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  sub_2428B3578();
  sub_24282BEBC();
  *a1 = sub_2428B2C98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3370, &qword_2428BC3B0);
  sub_2428B4578();
  sub_2428B36B8();
  v10(v5, v9, v2);
  sub_2428B3578();
  sub_24282BF10();
  a1[1] = sub_2428B2C98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3380, &qword_2428BC3B8);
  sub_2428B4578();
  sub_2428B36B8();
  v10(v5, v9, v2);
  sub_2428B3578();
  sub_24282BF64();
  a1[2] = sub_2428B2C98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3760, &qword_2428B6ED0);
  sub_2428B4578();
  sub_2428B36B8();
  v10(v5, v9, v2);
  sub_2428B3578();
  a1[3] = sub_2428B2D68();
  sub_2428B4578();
  sub_2428B36B8();
  v10(v5, v9, v2);
  sub_2428B3578();
  a1[4] = sub_2428B2D68();
  sub_2428B4578();
  sub_2428B36B8();
  v10(v5, v9, v2);
  sub_2428B3578();
  a1[5] = sub_2428B2D68();
  sub_2428B4578();
  sub_2428B36B8();
  v10(v5, v9, v2);
  sub_2428B3578();
  a1[6] = sub_2428B2D68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4C00, &qword_2428B6ED8);
  sub_2428B4578();
  sub_2428B36B8();
  v10(v5, v9, v2);
  sub_2428B3578();
  result = sub_2428B2D28();
  a1[7] = result;
  return result;
}