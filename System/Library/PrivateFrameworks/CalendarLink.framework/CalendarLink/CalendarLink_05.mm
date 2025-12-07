uint64_t sub_24284D890()
{
  v2 = *v1;
  *(*v1 + 3936) = v0;

  if (v0)
  {
    v3 = *(v2 + 3912);

    v4 = sub_242850B28;
  }

  else
  {
    v4 = sub_24284D9E8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

id sub_24284D9E8()
{
  v361 = v0;
  v1 = v0;
  v360 = *MEMORY[0x277D85DE8];
  v2 = v0[490];
  v3 = v0[489];
  [v3 setCalendar_];

  v4 = *(v1 + 492);
  sub_2428B2DC8();
  v5 = v1[3415];
  v347 = v1;
  if (v1[3415] <= 1u)
  {
    v6 = v1[3415];
    if (v1[3415])
    {
      v6 = 1;
    }
  }

  else if (v5 == 2)
  {
    v6 = 2;
  }

  else
  {
    if (v5 != 3)
    {
      goto LABEL_11;
    }

    v6 = 3;
  }

  if (v6 != [*(v1 + 489) privacyLevel])
  {
    if (![*(v1 + 489) allowsPrivacyLevelModifications])
    {
      v9 = *(v1 + 489);
      v10 = *(v1 + 487);
      v11 = *(v1 + 486);
      sub_2427CCDB0();
      swift_allocError();
      v13 = 64;
      goto LABEL_147;
    }

    [*(v1 + 489) setPrivacyLevel_];
  }

LABEL_11:
  sub_2428B2DC8();
  v7 = v1[3409];
  if (v1[3409] > 1u)
  {
    if (v7 != 2)
    {
      goto LABEL_21;
    }

    v8 = 3;
  }

  else if (v1[3409])
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  if (v8 != [*(v1 + 489) status])
  {
    if (v1[3988] != 1)
    {
      v9 = *(v1 + 489);
      v10 = *(v1 + 487);
      v11 = *(v1 + 486);
      sub_2427CCDB0();
      swift_allocError();
      v13 = 56;
      goto LABEL_147;
    }

    [*(v1 + 489) setStatus_];
  }

LABEL_21:
  sub_2428B2DC8();
  v14 = v1[3985];
  if (v14 > 2)
  {
    if (v14 == 3)
    {
      v15 = 2;
    }

    else
    {
      if (v14 != 4)
      {
        goto LABEL_31;
      }

      v15 = 3;
    }
  }

  else if (v1[3985])
  {
    v15 = v14 != 1;
  }

  else
  {
    v15 = -1;
  }

  if (v15 != [*(v1 + 489) availability])
  {
    v46 = [*(v1 + 489) allowsAvailabilityModifications];
    v17 = *(v1 + 489);
    if (!v46)
    {
      v51 = *(v1 + 487);
      v52 = *(v1 + 486);
      sub_2427CCDB0();
      swift_allocError();
      v54 = 65;
LABEL_144:
      *v53 = v54;
      swift_willThrow();

      goto LABEL_145;
    }

    result = [*(v1 + 489) calendar];
    if (!result)
    {
LABEL_289:
      __break(1u);
      return result;
    }

    v48 = result;
    v49 = [result supportedEventAvailabilities];

    if (v14 <= 1)
    {
      if (v14)
      {
        if (v49)
        {
          v50 = 0;
          goto LABEL_96;
        }
      }

      else if (!v49)
      {
        v50 = -1;
        goto LABEL_96;
      }
    }

    else if (v14 == 2)
    {
      if ((v49 & 2) != 0)
      {
        v50 = 1;
        goto LABEL_96;
      }
    }

    else if (v14 == 3)
    {
      if ((v49 & 4) != 0)
      {
        v50 = 2;
LABEL_96:
        [*(v1 + 489) setAvailability_];
        goto LABEL_31;
      }
    }

    else if ((v49 & 8) != 0)
    {
      v50 = 3;
      goto LABEL_96;
    }

    v9 = *(v1 + 489);
    v10 = *(v1 + 487);
    v11 = *(v1 + 486);
    sub_2427CCDB0();
    swift_allocError();
    v13 = 72;
LABEL_147:
    *v12 = v13;
    swift_willThrow();

LABEL_148:
    goto LABEL_149;
  }

LABEL_31:
  sub_2428B2DC8();
  v16 = *(v1 + 427);
  if (!v16)
  {
    goto LABEL_135;
  }

  v17 = *(v1 + 489);
  if (v1[3988] != 1)
  {
    v51 = *(v1 + 487);
    v52 = *(v1 + 486);
LABEL_143:

    sub_2427CCDB0();
    swift_allocError();
    v54 = 56;
    goto LABEL_144;
  }

  v18 = [*(v1 + 489) currentUserMayActAsOrganizer];
  v17 = *(v1 + 489);
  if (!v18)
  {
    v51 = *(v1 + 487);
    v52 = *(v1 + 486);

    sub_2427CCDB0();
    swift_allocError();
    v54 = 120;
    goto LABEL_144;
  }

  v19 = [*(v1 + 489) attendees];
  if (v19)
  {
    v20 = v19;
    sub_242822BFC(0, &qword_27ECC3260, 0x277CC5A70);
    v21 = sub_2428B46C8();

    v22 = sub_242851D1C(MEMORY[0x277D84F98]);
    v333 = v16;
    if (v21 >> 62)
    {
      goto LABEL_108;
    }

    v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v325 = v4;
    if (!v23)
    {
LABEL_109:
      v76 = MEMORY[0x277D84F98];
      sub_242852214(MEMORY[0x277D84F98]);
      v331 = v77;
      sub_242852214(v76);
      goto LABEL_110;
    }

LABEL_37:
    v16 = 0;
    v337 = v21 & 0xFFFFFFFFFFFFFF8;
    v343 = v21 & 0xC000000000000001;
    v327 = *(v1 + 455);
    do
    {
      if (v343)
      {
        v27 = MEMORY[0x245D1B5D0](v16, v21);
      }

      else
      {
        if (v16 >= *(v337 + 16))
        {
          goto LABEL_101;
        }

        v27 = *(v21 + 8 * v16 + 32);
      }

      v28 = v27;
      v1 = (v16 + 1);
      if (__OFADD__(v16, 1))
      {
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
        v23 = sub_2428B49C8();
        v325 = v4;
        if (!v23)
        {
          goto LABEL_109;
        }

        goto LABEL_37;
      }

      v4 = v23;
      v29 = v21;
      v30 = *(v347 + 457);
      v31 = [v27 URL];
      sub_2428B35B8();

      v32 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v350 = v22;
      v34 = sub_24281E894(v30);
      v21 = v35;
      v36 = v22[2];
      v37 = (v35 & 1) == 0;
      if (__OFADD__(v36, v37))
      {
        goto LABEL_102;
      }

      v38 = v34;
      v22 = v350;
      if (sub_242852DEC(isUniquelyReferenced_nonNull_native, v36 + v37))
      {
        v39 = sub_24281E894(*(v347 + 457));
        if ((v21 & 1) != (v40 & 1))
        {

          return sub_2428B4C38();
        }

        v38 = v39;
      }

      v41 = *(v347 + 457);
      v42 = *(v347 + 454);
      if (v21)
      {
        v24 = *(v350 + 56);
        v25 = *(v24 + 8 * v38);
        *(v24 + 8 * v38) = v32;

        (*(v327 + 8))(v41, v42);
      }

      else
      {
        *(v350 + 8 * (v38 >> 6) + 64) |= 1 << v38;
        v21 = v327;
        (*(v327 + 16))(v22[6] + *(v327 + 72) * v38, v41, v42);
        *(v22[7] + 8 * v38) = v32;

        (*(v327 + 8))(v41, v42);
        v43 = v22[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_107;
        }

        v22[2] = v45;
      }

      ++v16;
      v23 = v4;
      v26 = v1 == v4;
      v1 = v347;
      v21 = v29;
    }

    while (!v26);
    sub_242852214(MEMORY[0x277D84F98]);
    v331 = v55;
    v56 = 0;
    do
    {
      while (1)
      {
        if (v343)
        {
          v57 = MEMORY[0x245D1B5D0](v56, v29);
        }

        else
        {
          if (v56 >= *(v337 + 16))
          {
            goto LABEL_104;
          }

          v57 = *(v29 + 8 * v56 + 32);
        }

        v58 = v57;
        v16 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
          goto LABEL_103;
        }

        v59 = [v57 emailAddress];
        if (v59)
        {
          break;
        }

        ++v56;
        if (v16 == v23)
        {
          goto LABEL_83;
        }
      }

      v60 = v59;
      v328 = sub_2428B4618();
      v62 = v61;

      v63 = v58;
      v64 = swift_isUniquelyReferenced_nonNull_native();
      *&v350 = v331;
      sub_2428203F8(v63, v328, v62, v64);

      v23 = v4;

      v56 = v16;
    }

    while (v16 != v4);
LABEL_83:
    sub_242852214(MEMORY[0x277D84F98]);
    v66 = 0;
    v4 = &property descriptor for AlarmEntityRepresentation.absoluteDate;
    do
    {
      v329 = v65;
      while (1)
      {
        if (v343)
        {
          v67 = MEMORY[0x245D1B5D0](v66, v21);
        }

        else
        {
          if (v66 >= *(v337 + 16))
          {
            goto LABEL_106;
          }

          v67 = *(v21 + 8 * v66 + 32);
        }

        v68 = v67;
        v16 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
          goto LABEL_105;
        }

        v69 = [v67 phoneNumber];
        if (v69)
        {
          break;
        }

        ++v66;
        if (v16 == v23)
        {
          goto LABEL_111;
        }
      }

      v70 = v69;
      v71 = sub_2428B4618();
      v73 = v72;

      v74 = v68;
      v75 = swift_isUniquelyReferenced_nonNull_native();
      *&v350 = v329;
      sub_2428203F8(v74, v71, v73, v75);

      v21 = v29;

      v65 = v329;
      v66 = v16;
    }

    while (v16 != v23);
LABEL_110:
    v329 = v65;
LABEL_111:

    v78 = *(v333 + 16);
    if (v78)
    {
      v79 = v1 + 3104;
      v80 = *(v1 + 455);
      v81 = (v80 + 48);
      v16 = v80 + 32;
      v338 = (v80 + 48);
      v344 = (v80 + 8);
      v82 = v78 - 1;
      for (i = 32; ; i += 64)
      {
        v84 = *(v1 + 454);
        v85 = *(v1 + 453);
        v87 = *(v333 + i);
        v86 = *(v333 + i + 16);
        v88 = *(v333 + i + 48);
        v79[2] = *(v333 + i + 32);
        v79[3] = v88;
        *v79 = v87;
        v79[1] = v86;
        sub_2428430F4(v79, (v1 + 3040));
        sub_2428B2C68();
        if ((*v81)(v85, 1, v84) == 1)
        {
          sub_2427E0980(*(v1 + 453), &qword_27ECC2CE0, &qword_2428B6560);
        }

        else
        {
          (*v16)(*(v1 + 456), *(v1 + 453), *(v1 + 454));
          if (v22[2])
          {
            v89 = sub_24281E894(*(v1 + 456));
            if (v90)
            {
              v91 = *(v1 + 489);
              v92 = *(v1 + 456);
              v93 = *(v1 + 454);
              v94 = *(v22[7] + 8 * v89);
              [v91 removeAttendee_];
              sub_242843150(v79);

              v1 = v347;
              (*v344)(v92, v93);
              goto LABEL_132;
            }
          }

          (*v344)(*(v1 + 456), *(v1 + 454));
        }

        sub_2428B2C68();
        if (*(v1 + 422))
        {
          if (*(v331 + 16))
          {
            v95 = sub_242801C04(*(v1 + 421), *(v1 + 422));
            v97 = v96;

            if (v97)
            {
              v98 = *(v1 + 489);
              v99 = *(*(v331 + 56) + 8 * v95);
              [v98 removeAttendee_];
              sub_242843150(v79);

              goto LABEL_132;
            }
          }

          else
          {
          }
        }

        sub_2428B2C68();
        if (*(v1 + 420))
        {
          if (*(v329 + 16))
          {
            v100 = v16;
            v101 = sub_242801C04(*(v1 + 419), *(v1 + 420));
            v103 = v102;

            if (v103)
            {
              v104 = *(v1 + 489);
              v105 = *(*(v329 + 56) + 8 * v101);
              [v104 removeAttendee_];
              sub_242843150(v79);
            }

            else
            {
              sub_242843150(v79);
            }

            v16 = v100;
            v81 = v338;
          }

          else
          {
            sub_242843150(v79);
          }
        }

        else
        {
          sub_242843150(v79);
        }

LABEL_132:
        if (!v82)
        {
          break;
        }

        --v82;
      }
    }

    v4 = v325;
  }

  else
  {
  }

LABEL_135:
  sub_2428B2DC8();
  v106 = *(v1 + 428);
  if (!v106)
  {
    goto LABEL_193;
  }

  v17 = *(v1 + 489);
  if (v1[3988] != 1)
  {
    v51 = *(v1 + 487);
    v52 = *(v1 + 486);
    goto LABEL_143;
  }

  if (![*(v1 + 489) currentUserMayActAsOrganizer])
  {
    v9 = *(v1 + 489);
    v10 = *(v1 + 487);
    v11 = *(v1 + 486);

    sub_2427CCDB0();
    swift_allocError();
    v13 = 113;
    goto LABEL_147;
  }

  v107 = *(v106 + 16);
  if (v107)
  {
    v349[0] = MEMORY[0x277D84F90];
    sub_2428B4AC8();
    if (*(v106 + 16))
    {
      v108 = v347;
      v16 = (v347 + 3232);
      v109 = *(v106 + 32);
      v110 = *(v106 + 48);
      v111 = *(v106 + 80);
      *(v347 + 204) = *(v106 + 64);
      *(v347 + 205) = v111;
      *(v347 + 202) = v109;
      *(v347 + 203) = v110;
      v112 = *(v106 + 48);
      v350 = *(v106 + 32);
      v351 = v112;
      v113 = *(v106 + 80);
      v352 = *(v106 + 64);
      v353 = v113;
      sub_2428430F4((v347 + 3232), (v347 + 3168));
      sub_2428307AC();
      if (v4)
      {
LABEL_141:
        v114 = v108[489];
        v115 = v108[487];
        sub_2427E0980(v108[486], &qword_27ECC38E0, &unk_2428C40D0);

        sub_242843150(v16);

LABEL_151:

        v117 = *(v347 + 1);
LABEL_152:

        return v117();
      }

      sub_242843150(v16);
      sub_2428B4AA8();
      sub_2428B4AD8();
      sub_2428B4AE8();
      sub_2428B4AB8();
      if (v107 == 1)
      {
        goto LABEL_157;
      }

      if (*(v106 + 16) >= 2uLL)
      {
        v129 = (v106 + 96);
        v130 = 1;
        while (1)
        {
          v131 = *v129;
          v132 = v129[1];
          v133 = v129[3];
          *(v347 + 204) = v129[2];
          *(v347 + 205) = v133;
          *v16 = v131;
          *(v347 + 203) = v132;
          v134 = v129[1];
          v350 = *v129;
          v351 = v134;
          v135 = v129[3];
          v352 = v129[2];
          v353 = v135;
          sub_2428430F4(v16, (v347 + 3168));
          sub_2428307AC();
          sub_242843150(v16);
          sub_2428B4AA8();
          sub_2428B4AD8();
          sub_2428B4AE8();
          sub_2428B4AB8();
          if (2 - v107 + v130 == 1)
          {
            break;
          }

          v129 += 4;
          if (++v130 >= *(v106 + 16))
          {
            goto LABEL_186;
          }
        }

LABEL_157:

        v1 = v347;
        v118 = v349[0];
        goto LABEL_158;
      }
    }

LABEL_186:
    __break(1u);
    v108 = v347;
    goto LABEL_141;
  }

  v118 = MEMORY[0x277D84F90];
LABEL_158:
  if (v118 >> 62)
  {
    goto LABEL_191;
  }

  for (j = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_2428B49C8())
  {
    v120 = 0;
    v334 = v118;
    v339 = v118 & 0xC000000000000001;
    v326 = v118 + 32;
    v330 = v118 & 0xFFFFFFFFFFFFFF8;
    v332 = j;
    while (1)
    {
      if (v339)
      {
        v121 = MEMORY[0x245D1B5D0](v120, v118);
      }

      else
      {
        if (v120 >= *(v330 + 16))
        {
          goto LABEL_190;
        }

        v121 = *(v326 + 8 * v120);
      }

      v1 = v121;
      v44 = __OFADD__(v120++, 1);
      if (v44)
      {
        break;
      }

      v122 = [*(v347 + 489) attendees];
      if (v122)
      {
        v123 = v122;
        sub_242822BFC(0, &qword_27ECC3260, 0x277CC5A70);
        v118 = sub_2428B46C8();

        if (v118 >> 62)
        {
          v124 = sub_2428B49C8();
        }

        else
        {
          v124 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v125 = 0;
        while (1)
        {
          if (v124 == v125)
          {

            j = v332;
            v118 = v334;
            goto LABEL_162;
          }

          if ((v118 & 0xC000000000000001) != 0)
          {
            v126 = MEMORY[0x245D1B5D0](v125, v118);
          }

          else
          {
            if (v125 >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_188;
            }

            v126 = *(v118 + 8 * v125 + 32);
          }

          v127 = v126;
          if (__OFADD__(v125, 1))
          {
            break;
          }

          v128 = [v126 isEqualToParticipant_];

          ++v125;
          if (v128)
          {

            j = v332;
            v118 = v334;
            goto LABEL_163;
          }
        }

        __break(1u);
LABEL_188:
        __break(1u);
        break;
      }

LABEL_162:
      [*(v347 + 489) addAttendee_];
LABEL_163:

      v1 = v347;
      if (v120 == j)
      {
        goto LABEL_192;
      }
    }

    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    ;
  }

LABEL_192:

LABEL_193:
  v136 = *(v1 + 450);
  v137 = *(v1 + 448);
  v138 = *(v1 + 447);
  sub_2428B2DE8();
  sub_2427CD47C(&unk_27ECC3A10, &qword_27ECC24F8, &qword_2428B8AD8, MEMORY[0x277D84F60]);
  sub_2428B2EE8();

  v139 = *(v137 + 88);
  v140 = v139(v136, v138);
  v141 = *MEMORY[0x277CB9F00];
  if (v140 == *MEMORY[0x277CB9F00])
  {
    v142 = v1[3988];
    v143 = *(v1 + 450);
    (*(*(v1 + 448) + 96))(v143, *(v1 + 447));
    if (v142 != 1)
    {
      goto LABEL_204;
    }

    v144 = *(v1 + 489);
    if (*(v143 + 8))
    {
      v145 = v144;
      v146 = sub_2428B4608();

      v147 = *(v1 + 489);
    }

    else
    {
      v147 = v144;
      v146 = 0;
    }

    [v147 setNotes_];
  }

  else
  {
    (*(*(v1 + 448) + 8))(*(v1 + 450), *(v1 + 447));
  }

  v148 = *(v1 + 449);
  v149 = *(v1 + 447);
  sub_2428B2DE8();
  sub_2428B2EE8();

  if (v139(v148, v149) != v141)
  {
    (*(*(v1 + 448) + 8))(*(v1 + 449), *(v1 + 447));
    goto LABEL_208;
  }

  v150 = v1[3988];
  v151 = *(v1 + 449);
  (*(*(v1 + 448) + 96))(v151, *(v1 + 447));
  if (v150 != 1)
  {
LABEL_204:
    v156 = *(v1 + 489);
    v157 = *(v1 + 487);
    v52 = *(v1 + 486);

    sub_2427CCDB0();
    swift_allocError();
    *v158 = 56;
    swift_willThrow();

    goto LABEL_145;
  }

  v152 = *(v1 + 489);
  if (*(v151 + 8))
  {
    v153 = v152;
    v154 = sub_2428B4608();

    v155 = *(v1 + 489);
  }

  else
  {
    v155 = v152;
    v154 = 0;
  }

  [v155 setLocation_];

LABEL_208:
  v159 = *(v1 + 446);
  v160 = *(v1 + 445);
  v161 = *(v1 + 444);
  sub_2428B2DE8();
  sub_2427CD47C(&qword_27ECC3A20, &qword_27ECC3A28, &unk_2428BE3C0, MEMORY[0x277D84F60]);
  sub_2428B2EE8();

  if ((*(v160 + 88))(v159, v161) == v141)
  {
    v340 = v141;
    v162 = v1[3988];
    v163 = *(v1 + 446);
    (*(*(v1 + 445) + 96))(v163, *(v1 + 444));
    v164 = *v163;
    v165 = v163[1];
    v167 = v163[2];
    v166 = v163[3];
    v169 = v163[4];
    v168 = v163[5];
    v170 = v163[6];
    if (v162 != 1)
    {
      v172 = *(v1 + 487);
      v335 = *(v1 + 489);
      v341 = *(v1 + 486);
      sub_2427CCDB0();
      swift_allocError();
      *v173 = 56;
      swift_willThrow();

      sub_24284301C(v164, v165, v167, v166, v169, v168, v170);
      v116 = v341;
      goto LABEL_150;
    }

    if (v164)
    {
      *&v350 = *v163;
      *(&v350 + 1) = v165;
      *&v351 = v167;
      *(&v351 + 1) = v166;
      *&v352 = v169;
      *(&v352 + 1) = v168;
      *&v353 = v170;
      v171 = LocationEntity.ekStructuredLocation.getter();
    }

    else
    {
      v171 = 0;
    }

    v1 = v347;
    [*(v347 + 489) setStructuredLocation_];

    sub_24284301C(v164, v165, v167, v166, v169, v168, v170);
    v141 = v340;
  }

  else
  {
    (*(*(v1 + 445) + 8))(*(v1 + 446), *(v1 + 444));
  }

  v174 = *(v1 + 443);
  v175 = *(v1 + 442);
  v176 = *(v1 + 441);
  sub_2428B2DE8();
  sub_2427CD47C(&unk_27ECC3A30, &qword_27ECC38E8, qword_2428BDFD8, MEMORY[0x277D84F60]);
  sub_2428B2EE8();

  if ((*(v175 + 88))(v174, v176) != v141)
  {
    (*(*(v1 + 442) + 8))(*(v1 + 443), *(v1 + 441));
LABEL_241:
    v193 = 0;
    goto LABEL_242;
  }

  v177 = v1[3988];
  v178 = *(v1 + 443);
  (*(*(v1 + 442) + 96))(v178, *(v1 + 441));
  *(v1 + 185) = *v178;
  v179 = v178[1];
  v180 = v178[2];
  v181 = v178[4];
  *(v1 + 188) = v178[3];
  *(v1 + 189) = v181;
  *(v1 + 186) = v179;
  *(v1 + 187) = v180;
  if (v177 != 1)
  {
    v9 = *(v1 + 489);
    v190 = *(v1 + 487);
    v11 = *(v1 + 486);
    sub_2427CCDB0();
    swift_allocError();
    *v191 = 56;
    swift_willThrow();

    sub_2427E0980((v1 + 2960), &qword_27ECC38E8, qword_2428BDFD8);
    goto LABEL_148;
  }

  v182 = *(v1 + 489);
  if (*(v1 + 370))
  {
    v183 = *(v1 + 443);
    v184 = v183[3];
    v352 = v183[2];
    v353 = v184;
    v354 = v183[4];
    v185 = v183[1];
    v350 = *v183;
    v351 = v185;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
    v186 = swift_allocObject();
    *(v186 + 16) = xmmword_2428B5A90;
    v187 = v182;
    *(v186 + 32) = RecurrenceRuleEntity.ekRecurrenceRule.getter();
    sub_242822BFC(0, &qword_27ECC2E20, 0x277CC5AA8);
    v188 = sub_2428B46B8();

    v189 = *(v1 + 489);
LABEL_240:
    [v189 setRecurrenceRules_];

    v1[3411] = 1;
    sub_242852D84((v1 + 192), (v1 + 16));
    sub_2428B2DD8();
    sub_2427E0980((v1 + 2960), &qword_27ECC38E8, qword_2428BDFD8);
    sub_242852DBC((v1 + 192));
    goto LABEL_241;
  }

  if (![*(v1 + 489) isOrWasPartOfRecurringSeries] || objc_msgSend(*(v1 + 489), sel_isFirstOccurrence) && !objc_msgSend(*(v1 + 489), sel_isDetached) || (v192 = objc_msgSend(*(v1 + 489), sel_masterEvent)) == 0)
  {
LABEL_239:
    v189 = *(v1 + 489);
    v188 = 0;
    goto LABEL_240;
  }

  v193 = v192;
  v194 = v192;
  v195 = [v194 recurrenceRules];
  if (!v195)
  {
LABEL_238:

    goto LABEL_239;
  }

  v196 = v195;
  sub_242822BFC(0, &qword_27ECC2E20, 0x277CC5AA8);
  v197 = sub_2428B46C8();

  if (!(v197 >> 62))
  {
    result = *((v197 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_229;
    }

    goto LABEL_237;
  }

  result = sub_2428B49C8();
  if (!result)
  {
LABEL_237:

    goto LABEL_238;
  }

LABEL_229:
  if ((v197 & 0xC000000000000001) != 0)
  {
    v198 = MEMORY[0x245D1B5D0](0, v197);
    goto LABEL_232;
  }

  if (!*((v197 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_289;
  }

  v198 = *(v197 + 32);
LABEL_232:
  v199 = v198;
  v200 = *(v1 + 489);

  v201 = [v200 endDate];
  if (v201)
  {
    v202 = *(v1 + 475);
    v203 = *(v347 + 474);
    v204 = *(v347 + 473);
    v205 = v201;
    sub_2428B3678();

    v206 = sub_2428B3658();
    (*(v203 + 8))(v202, v204);
    v1 = v347;
  }

  else
  {
    v206 = 0;
  }

  v207 = [objc_allocWithZone(MEMORY[0x277CC5A90]) initWithEndDate_];

  [v199 setRecurrenceEnd_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
  v208 = swift_allocObject();
  *(v208 + 16) = xmmword_2428B5A90;
  *(v208 + 32) = v199;
  v209 = v199;
  v210 = sub_2428B46B8();

  [v194 setRecurrenceRules_];

  v1[3410] = 0;
  sub_242852D84((v1 + 192), (v1 + 544));
  sub_2428B2DD8();

  sub_242852DBC((v1 + 192));
LABEL_242:
  *(v1 + 493) = v193;
  sub_2428B2DC8();
  if ((v1[3408] & 1) == 0)
  {
    [*(v1 + 489) setTravelTime_];
  }

  v211 = *(v1 + 440);
  v212 = *(v1 + 439);
  v213 = *(v1 + 438);
  sub_2428B2DE8();
  sub_2427CD47C(&qword_27ECC3A40, &qword_27ECC3A48, &qword_2428BE3D0, MEMORY[0x277D84F60]);
  sub_2428B2EE8();

  v214 = (*(v212 + 88))(v211, v213);
  v215 = *(v1 + 440);
  v216 = *(v1 + 439);
  v217 = *(v1 + 438);
  if (v214 == v141)
  {
    (*(v216 + 96))(*(v1 + 440), v217);
    v218 = *v215;
    v219 = *(v1 + 489);
    if (*v215)
    {
      v349[0] = MEMORY[0x277D84F90];
      v220 = *(v218 + 16);
      v221 = v219;
      v222 = 0;
LABEL_247:
      v223 = (v218 + 48 + 24 * v222);
      while (v220 != v222)
      {
        if (v222 >= *(v218 + 16))
        {
          __break(1u);
        }

        v224 = v223 + 3;
        ++v222;
        v225 = *v223;
        v350 = *(v223 - 1);
        *&v351 = v225;
        v226 = AlarmEntity.ekAlarm.getter();
        v223 = v224;
        if (v226)
        {
          MEMORY[0x245D1B200]();
          if (*((v349[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v349[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2428B46E8();
          }

          sub_2428B4708();
          goto LABEL_247;
        }
      }

      sub_242822BFC(0, &qword_27ECC2FE8, 0x277CC5988);
      v227 = sub_2428B46B8();

      v1 = v347;
      v228 = *(v347 + 489);
    }

    else
    {
      v228 = v219;
      v227 = 0;
    }

    [v228 setAlarms_];
  }

  else
  {
    (*(v216 + 8))(*(v1 + 440), v217);
  }

  v229 = *(v1 + 437);
  v230 = *(v1 + 436);
  v231 = *(v1 + 435);
  sub_2428B2DE8();
  sub_2427CD47C(&unk_27ECC3A50, &qword_27ECC2CE0, &qword_2428B6560, MEMORY[0x277D84F60]);
  sub_2428B2EE8();

  if ((*(v230 + 88))(v229, v231) == v141)
  {
    v232 = v1[3988];
    v233 = *(v1 + 452);
    v234 = *(v1 + 437);
    (*(*(v1 + 436) + 96))(v234, *(v1 + 435));
    sub_24281E660(v234, v233, &qword_27ECC2CE0, &qword_2428B6560);
    v235 = *(v1 + 489);
    v236 = *(v1 + 452);
    if (v232 != 1)
    {
      v243 = *(v1 + 487);
      v52 = *(v1 + 486);
      sub_2427CCDB0();
      swift_allocError();
      *v244 = 56;
      swift_willThrow();

      sub_2427E0980(v236, &qword_27ECC2CE0, &qword_2428B6560);
      goto LABEL_145;
    }

    v237 = *(v1 + 455);
    v238 = *(v1 + 454);
    v239 = *(v1 + 451);
    sub_2427E0918(*(v1 + 452), v239, &qword_27ECC2CE0, &qword_2428B6560);
    v240 = (*(v237 + 48))(v239, 1, v238);
    v241 = v235;
    if (v240 == 1)
    {
      v242 = 0;
    }

    else
    {
      v245 = *(v1 + 455);
      v246 = *(v1 + 454);
      v247 = *(v1 + 451);
      v242 = sub_2428B35A8();
      (*(v245 + 8))(v247, v246);
    }

    v248 = *(v1 + 489);
    v249 = *(v1 + 452);
    [v248 setURL_];

    sub_2427E0980(v249, &qword_27ECC2CE0, &qword_2428B6560);
  }

  else
  {
    (*(*(v1 + 436) + 8))(*(v1 + 437), *(v1 + 435));
  }

  sub_2428B2DC8();
  v250 = v1[3984];
  if (v250 != 8)
  {
    v251 = [*(v1 + 489) allowsParticipationStatusModifications];
    v252 = *(v1 + 489);
    if (v251)
    {
      LOBYTE(v350) = v250;
      [v252 setParticipationStatus_];
      goto LABEL_269;
    }

    v279 = *(v1 + 487);
    v11 = *(v1 + 486);
    sub_2427CCDB0();
    swift_allocError();
    *v280 = 73;
    swift_willThrow();

LABEL_149:
    v116 = v11;
    goto LABEL_150;
  }

LABEL_269:
  v253 = [*(v1 + 489) hasChanges];
  v254 = *(v1 + 489);
  if (!v193 && !v253)
  {
    v345 = *(v1 + 487);
    v348 = *(v1 + 486);
    v342 = *(v1 + 434);

    sub_2428B2DC8();
    v255 = *(v1 + 62);
    v356 = *(v1 + 61);
    v357 = v255;
    v256 = *(v1 + 64);
    v358 = *(v1 + 63);
    v359 = v256;
    v257 = *(v1 + 58);
    v352 = *(v1 + 57);
    v353 = v257;
    v258 = *(v1 + 60);
    v354 = *(v1 + 59);
    v355 = v258;
    v259 = *(v1 + 56);
    v350 = *(v1 + 55);
    v351 = v259;
    OpenEventDetailsIntent.init()(v349);
    v261 = v349[0];
    v260 = v349[1];
    v262 = v349[3];
    v336 = v349[2];
    v263 = v357;
    *(v1 + 151) = v356;
    *(v1 + 152) = v263;
    v264 = v359;
    *(v1 + 153) = v358;
    *(v1 + 154) = v264;
    v265 = v353;
    *(v1 + 147) = v352;
    *(v1 + 148) = v265;
    v266 = v355;
    *(v1 + 149) = v354;
    *(v1 + 150) = v266;
    v267 = v351;
    *(v1 + 145) = v350;
    *(v1 + 146) = v267;
    sub_2428B2DD8();
    sub_2428B2DC8();
    v268 = *(v1 + 142);
    *(v1 + 51) = *(v1 + 141);
    *(v1 + 52) = v268;
    v269 = *(v1 + 144);
    *(v1 + 53) = *(v1 + 143);
    *(v1 + 54) = v269;
    v270 = *(v1 + 138);
    *(v1 + 47) = *(v1 + 137);
    *(v1 + 48) = v270;
    v271 = *(v1 + 140);
    *(v1 + 49) = *(v1 + 139);
    *(v1 + 50) = v271;
    v272 = *(v1 + 136);
    *(v1 + 45) = *(v1 + 135);
    *(v1 + 46) = v272;
    sub_24280B6C8(v1 + 45, v261, v260, v336, v262, v342);

    sub_2427CCE04((v1 + 720));

LABEL_272:
    sub_2427E0980(v348, &qword_27ECC38E0, &unk_2428C40D0);

    v117 = *(v1 + 1);
    goto LABEL_152;
  }

  v273 = [*(v1 + 489) hasChanges];

  if (!v273)
  {
    v281 = *(v1 + 493);
    if (v281)
    {
      v282 = *(v1 + 487);
      *(v1 + 431) = 0;
      v283 = v281;
      v284 = [v282 saveEvent:v283 span:1 commit:0 error:v1 + 3448];
      v285 = *(v1 + 431);

      if (!v284)
      {
        v305 = *(v1 + 489);
        v306 = *(v1 + 487);
        v307 = *(v1 + 486);
        sub_2428B3538();

        swift_willThrow();
        v116 = v307;
        goto LABEL_150;
      }
    }

    v286 = *(v1 + 487);
    *(v1 + 430) = 0;
    v287 = [v286 commitWithRollback_];
    v288 = *(v1 + 430);
    if (v287)
    {
      v289 = *(v1 + 489);
      v290 = v288;
      EventEntity.init(_:)(v289, v1 + 115);
      v291 = *(v1 + 122);
      *(v1 + 131) = *(v1 + 121);
      *(v1 + 132) = v291;
      v292 = *(v1 + 124);
      *(v1 + 133) = *(v1 + 123);
      *(v1 + 134) = v292;
      v293 = *(v1 + 118);
      *(v1 + 127) = *(v1 + 117);
      *(v1 + 128) = v293;
      v294 = *(v1 + 120);
      *(v1 + 129) = *(v1 + 119);
      *(v1 + 130) = v294;
      v295 = *(v1 + 116);
      *(v1 + 125) = *(v1 + 115);
      *(v1 + 126) = v295;
      v296 = sub_24281E5E0((v1 + 2000));
      v297 = *(v1 + 493);
      v298 = *(v1 + 489);
      v299 = *(v1 + 487);
      v11 = *(v1 + 486);
      if (v296 != 1)
      {
        v346 = *(v1 + 434);
        v348 = *(v1 + 486);
        v308 = *(v1 + 132);
        *(v1 + 81) = *(v1 + 131);
        *(v1 + 82) = v308;
        v309 = *(v1 + 134);
        *(v1 + 83) = *(v1 + 133);
        *(v1 + 84) = v309;
        v310 = *(v1 + 128);
        *(v1 + 77) = *(v1 + 127);
        *(v1 + 78) = v310;
        v311 = *(v1 + 130);
        *(v1 + 79) = *(v1 + 129);
        *(v1 + 80) = v311;
        v312 = *(v1 + 126);
        *(v1 + 75) = *(v1 + 125);
        *(v1 + 76) = v312;
        v313 = *(v1 + 122);
        *(v1 + 111) = *(v1 + 121);
        *(v1 + 112) = v313;
        v314 = *(v1 + 124);
        *(v1 + 113) = *(v1 + 123);
        *(v1 + 114) = v314;
        v315 = *(v1 + 118);
        *(v1 + 107) = *(v1 + 117);
        *(v1 + 108) = v315;
        v316 = *(v1 + 120);
        *(v1 + 109) = *(v1 + 119);
        *(v1 + 110) = v316;
        v317 = *(v1 + 116);
        *(v1 + 105) = *(v1 + 115);
        *(v1 + 106) = v317;
        sub_2427CD4FC((v1 + 1680), (v1 + 1520));
        OpenEventDetailsIntent.init()(&v350);
        v318 = v350;
        v319 = v351;
        v320 = *(v1 + 82);
        *(v1 + 91) = *(v1 + 81);
        *(v1 + 92) = v320;
        v321 = *(v1 + 84);
        *(v1 + 93) = *(v1 + 83);
        *(v1 + 94) = v321;
        v322 = *(v1 + 78);
        *(v1 + 87) = *(v1 + 77);
        *(v1 + 88) = v322;
        v323 = *(v1 + 80);
        *(v1 + 89) = *(v1 + 79);
        *(v1 + 90) = v323;
        v324 = *(v1 + 76);
        *(v1 + 85) = *(v1 + 75);
        *(v1 + 86) = v324;
        sub_2428B2DD8();
        sub_24280B6C8(v1 + 75, v318, *(&v318 + 1), v319, *(&v319 + 1), v346);

        sub_2427E0980((v1 + 1840), &unk_27ECC2E10, &qword_2428BB3B8);

        goto LABEL_272;
      }

      sub_2427CCDB0();
      swift_allocError();
      *v300 = 25;
      swift_willThrow();

      goto LABEL_149;
    }

    v301 = *(v1 + 493);
    v302 = *(v1 + 489);
    v303 = *(v1 + 487);
    v52 = *(v1 + 486);
    v304 = v288;
    sub_2428B3538();

    swift_willThrow();
LABEL_145:
    v116 = v52;
LABEL_150:
    sub_2427E0980(v116, &qword_27ECC38E0, &unk_2428C40D0);
    goto LABEL_151;
  }

  v274 = *(v1 + 489);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
  v275 = swift_allocObject();
  *(v1 + 494) = v275;
  *(v275 + 16) = xmmword_2428B5A90;
  *(v275 + 32) = v274;
  v276 = v274;
  v277 = sub_2428B2DE8();
  *(v1 + 495) = v277;
  v278 = swift_task_alloc();
  *(v1 + 496) = v278;
  *v278 = v1;
  v278[1] = sub_2428501A0;

  return sub_24280C5F4((v1 + 3412), v275, v277);
}

uint64_t sub_2428501A0()
{
  *(*v1 + 3976) = v0;

  if (v0)
  {

    v2 = sub_242850DC0;
  }

  else
  {

    v2 = sub_242850338;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_242850338()
{
  v66 = v0;
  v65[5] = *MEMORY[0x277D85DE8];
  v1 = qword_2428BE7D0[*(v0 + 3412)];
  v2 = *(v0 + 3912);
  v3 = *(v0 + 3896);
  *(v0 + 3456) = 0;
  v4 = [v3 saveEvent:v2 span:v1 commit:0 error:v0 + 3456];
  v5 = *(v0 + 3456);
  v6 = *(v0 + 3944);
  if (!v4)
  {
    v27 = *(v0 + 3912);
    v28 = *(v0 + 3896);
    v29 = *(v0 + 3888);
    v30 = v5;
    sub_2428B3538();

    swift_willThrow();
    v31 = v29;
LABEL_11:
    sub_2427E0980(v31, &qword_27ECC38E0, &unk_2428C40D0);

    v39 = *(v0 + 8);
    goto LABEL_12;
  }

  v7 = v5;
  if (v6)
  {
    v8 = *(v0 + 3896);
    *(v0 + 3448) = 0;
    v9 = v6;
    v10 = [v8 saveEvent:v9 span:1 commit:0 error:v0 + 3448];
    v11 = *(v0 + 3448);

    if (!v10)
    {
      v36 = *(v0 + 3912);
      v37 = *(v0 + 3896);
      v38 = *(v0 + 3888);
      sub_2428B3538();

      swift_willThrow();
      v31 = v38;
      goto LABEL_11;
    }
  }

  v12 = *(v0 + 3896);
  *(v0 + 3440) = 0;
  v13 = [v12 commitWithRollback_];
  v14 = *(v0 + 3440);
  if (!v13)
  {
    v32 = *(v0 + 3944);
    v33 = *(v0 + 3912);
    v34 = *(v0 + 3896);
    v25 = *(v0 + 3888);
    v35 = v14;
    sub_2428B3538();

    swift_willThrow();
    goto LABEL_9;
  }

  v15 = *(v0 + 3912);
  v16 = v14;
  EventEntity.init(_:)(v15, (v0 + 1840));
  v17 = *(v0 + 1952);
  *(v0 + 2096) = *(v0 + 1936);
  *(v0 + 2112) = v17;
  v18 = *(v0 + 1984);
  *(v0 + 2128) = *(v0 + 1968);
  *(v0 + 2144) = v18;
  v19 = *(v0 + 1888);
  *(v0 + 2032) = *(v0 + 1872);
  *(v0 + 2048) = v19;
  v20 = *(v0 + 1920);
  *(v0 + 2064) = *(v0 + 1904);
  *(v0 + 2080) = v20;
  v21 = *(v0 + 1856);
  *(v0 + 2000) = *(v0 + 1840);
  *(v0 + 2016) = v21;
  if (sub_24281E5E0(v0 + 2000) == 1)
  {
    v22 = *(v0 + 3944);
    v23 = *(v0 + 3912);
    v24 = *(v0 + 3896);
    v25 = *(v0 + 3888);
    sub_2427CCDB0();
    swift_allocError();
    *v26 = 25;
    swift_willThrow();

LABEL_9:
    v31 = v25;
    goto LABEL_11;
  }

  v41 = *(v0 + 2112);
  *(v0 + 1296) = *(v0 + 2096);
  *(v0 + 1312) = v41;
  v42 = *(v0 + 2144);
  *(v0 + 1328) = *(v0 + 2128);
  *(v0 + 1344) = v42;
  v43 = *(v0 + 2048);
  *(v0 + 1232) = *(v0 + 2032);
  *(v0 + 1248) = v43;
  v44 = *(v0 + 2080);
  *(v0 + 1264) = *(v0 + 2064);
  *(v0 + 1280) = v44;
  v45 = *(v0 + 2016);
  *(v0 + 1200) = *(v0 + 2000);
  *(v0 + 1216) = v45;
  v46 = *(v0 + 1952);
  *(v0 + 1776) = *(v0 + 1936);
  *(v0 + 1792) = v46;
  v47 = *(v0 + 1984);
  *(v0 + 1808) = *(v0 + 1968);
  *(v0 + 1824) = v47;
  v48 = *(v0 + 1888);
  *(v0 + 1712) = *(v0 + 1872);
  *(v0 + 1728) = v48;
  v49 = *(v0 + 1920);
  *(v0 + 1744) = *(v0 + 1904);
  *(v0 + 1760) = v49;
  v50 = *(v0 + 1856);
  *(v0 + 1680) = *(v0 + 1840);
  v62 = *(v0 + 3912);
  v63 = *(v0 + 3944);
  v51 = *(v0 + 3896);
  v64 = *(v0 + 3888);
  v52 = *(v0 + 3472);
  *(v0 + 1696) = v50;
  sub_2427CD4FC(v0 + 1680, v0 + 1520);
  OpenEventDetailsIntent.init()(v65);
  v53 = *(v0 + 1312);
  *(v0 + 1456) = *(v0 + 1296);
  *(v0 + 1472) = v53;
  v54 = *(v0 + 1344);
  *(v0 + 1488) = *(v0 + 1328);
  *(v0 + 1504) = v54;
  v55 = *(v0 + 1248);
  *(v0 + 1392) = *(v0 + 1232);
  *(v0 + 1408) = v55;
  v56 = *(v0 + 1280);
  *(v0 + 1424) = *(v0 + 1264);
  *(v0 + 1440) = v56;
  v57 = *(v0 + 1216);
  *(v0 + 1360) = *(v0 + 1200);
  v58 = v65[0];
  v59 = v65[1];
  v60 = v65[2];
  v61 = v65[3];
  *(v0 + 1376) = v57;
  sub_2428B2DD8();
  sub_24280B6C8((v0 + 1200), v58, v59, v60, v61, v52);

  sub_2427E0980(v0 + 1840, &unk_27ECC2E10, &qword_2428BB3B8);

  sub_2427E0980(v64, &qword_27ECC38E0, &unk_2428C40D0);

  v39 = *(v0 + 8);
LABEL_12:

  return v39();
}

uint64_t sub_242850B28()
{
  v1 = *(v0 + 3920);
  v2 = *(v0 + 3912);
  v3 = *(v0 + 3888);

  sub_2427E0980(v3, &qword_27ECC38E0, &unk_2428C40D0);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_242850DC0()
{
  v1 = *(v0 + 3944);
  v2 = *(v0 + 3912);
  v3 = *(v0 + 3888);

  sub_2427E0980(v3, &qword_27ECC38E0, &unk_2428C40D0);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_242851058(uint64_t a1, uint64_t a2)
{
  *(v3 + 368) = a1;
  *(v3 + 376) = a2;
  v4 = sub_2428B2AE8();
  *(v3 + 384) = v4;
  *(v3 + 392) = *(v4 - 8);
  *(v3 + 400) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC28E0, &qword_2428B9AE0);
  *(v3 + 408) = v5;
  *(v3 + 416) = *(v5 - 8);
  *(v3 + 424) = swift_task_alloc();
  v6 = sub_2428B31E8();
  *(v3 + 432) = v6;
  *(v3 + 440) = *(v6 - 8);
  *(v3 + 448) = swift_task_alloc();
  sub_2428B36C8();
  *(v3 + 456) = swift_task_alloc();
  v7 = sub_2428B3558();
  *(v3 + 464) = v7;
  *(v3 + 472) = *(v7 - 8);
  *(v3 + 480) = swift_task_alloc();
  sub_2428B45F8();
  *(v3 + 488) = swift_task_alloc();
  v8 = sub_2428B3568();
  *(v3 + 496) = v8;
  *(v3 + 504) = *(v8 - 8);
  *(v3 + 512) = swift_task_alloc();
  *(v3 + 520) = swift_task_alloc();
  *(v3 + 528) = swift_task_alloc();
  *(v3 + 536) = swift_task_alloc();
  *(v3 + 544) = swift_task_alloc();
  *(v3 + 552) = swift_task_alloc();
  v9 = v2[9];
  *(v3 + 144) = v2[8];
  *(v3 + 160) = v9;
  *(v3 + 176) = v2[10];
  v10 = v2[5];
  *(v3 + 80) = v2[4];
  *(v3 + 96) = v10;
  v11 = v2[7];
  *(v3 + 112) = v2[6];
  *(v3 + 128) = v11;
  v12 = v2[1];
  *(v3 + 16) = *v2;
  *(v3 + 32) = v12;
  v13 = v2[3];
  *(v3 + 48) = v2[2];
  *(v3 + 64) = v13;

  return MEMORY[0x2822009F8](sub_242851358, 0, 0);
}

uint64_t sub_242851358()
{
  v1 = [*(v0 + 368) requirementsToMoveToCalendar_];
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

  v6 = *(v0 + 552);
  v31 = *(v0 + 544);
  v25 = *(v0 + 496);
  v26 = *(v0 + 520);
  v7 = *(v0 + 472);
  v8 = *(v0 + 480);
  v9 = *(v0 + 464);
  v24 = *(v0 + 504);
  v28 = *(v0 + 512);
  v27 = *(v0 + 400);
  v29 = *(v0 + 392);
  v30 = *(v0 + 384);
  v10 = __swift_project_value_buffer(v9, qword_27ECD4500);
  v11 = *(v7 + 16);
  v11(v8, v10, v9);
  sub_2428B36B8();
  sub_2428B3588();
  sub_2428523F4(v4);
  sub_2428B4578();
  v11(v8, v10, v9);
  sub_2428B36B8();
  sub_2428B3588();
  sub_2428B4578();
  v11(v8, v10, v9);
  sub_2428B36B8();
  sub_2428B3588();
  sub_2428B31C8();
  v12 = *(v0 + 160);
  *(v0 + 320) = *(v0 + 144);
  *(v0 + 336) = v12;
  *(v0 + 352) = *(v0 + 176);
  v13 = *(v0 + 96);
  *(v0 + 256) = *(v0 + 80);
  *(v0 + 272) = v13;
  v14 = *(v0 + 128);
  *(v0 + 288) = *(v0 + 112);
  *(v0 + 304) = v14;
  v15 = *(v0 + 32);
  *(v0 + 192) = *(v0 + 16);
  *(v0 + 208) = v15;
  v16 = *(v0 + 64);
  *(v0 + 224) = *(v0 + 48);
  *(v0 + 240) = v16;
  v17 = *(v24 + 16);
  v17(v26, v6, v25);
  v17(v28, v31, v25);
  sub_2428B2AD8();
  sub_2428B2C18();
  (*(v29 + 8))(v27, v30);
  v18 = swift_task_alloc();
  *(v0 + 560) = v18;
  v19 = sub_2428226EC();
  v20 = sub_2427CD47C(&unk_27ECC2900, &unk_27ECC28E0, &qword_2428B9AE0, MEMORY[0x277CBA268]);
  *v18 = v0;
  v18[1] = sub_2428518C8;
  v21 = *(v0 + 448);
  v22 = *(v0 + 424);
  v23 = *(v0 + 408);

  return MEMORY[0x28210B510](v22, v21, 1, &type metadata for EditEventIntent_v0, v23, v19, v20);
}

uint64_t sub_2428518C8()
{
  v2 = *v1;
  *(*v1 + 568) = v0;

  (*(v2[52] + 8))(v2[53], v2[51]);
  if (v0)
  {
    v3 = sub_242851B90;
  }

  else
  {
    v3 = sub_242851A0C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_242851A0C()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[67];
  v4 = v0[66];
  v5 = v0[62];
  v6 = v0[63];
  (*(v0[55] + 8))(v0[56], v0[54]);
  v7 = *(v6 + 8);
  v7(v4, v5);
  v7(v3, v5);
  v7(v2, v5);
  v7(v1, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_242851B90()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[67];
  v4 = v0[66];
  v5 = v0[62];
  v6 = v0[63];
  (*(v0[55] + 8))(v0[56], v0[54]);
  v7 = *(v6 + 8);
  v7(v4, v5);
  v7(v3, v5);
  v7(v2, v5);
  v7(v1, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_242851D1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3A80, &qword_2428BE5D0);
  MEMORY[0x28223BE20](v2 - 8);
  v50 = &v42 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3A88, &qword_2428BE5D8);
  MEMORY[0x28223BE20](v4 - 8);
  v49 = &v42 - v5;
  v6 = sub_2428B35D8();
  v51 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v57 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3A90, &qword_2428BE5E0);
  v8 = MEMORY[0x28223BE20](v48);
  v47 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v42 - v10;
  v52 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3A98, &qword_2428BE5E8);
    v11 = sub_2428B4BA8();
  }

  else
  {
    v11 = MEMORY[0x277D84F98];
  }

  v12 = v52 + 64;
  v13 = 1 << *(v52 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v52 + 64);
  v16 = (v13 + 63) >> 6;
  v44 = v51 + 16;
  v56 = v51 + 32;
  v17 = v11 + 64;
  sub_2428B2F38();
  result = sub_2428B3218();
  v19 = 0;
  v42 = v16;
  v43 = v12;
  v45 = v11;
  while (v15)
  {
LABEL_15:
    v22 = __clz(__rbit64(v15)) | (v19 << 6);
    v24 = v51;
    v23 = v52;
    v25 = *(v52 + 48);
    v54 = *(v51 + 72);
    v26 = v46;
    (*(v51 + 16))(v46, v25 + v54 * v22, v6);
    v55 = *(*(v23 + 56) + 8 * v22);
    v27 = v48;
    *&v26[*(v48 + 48)] = v55;
    v28 = v26;
    v29 = v47;
    sub_24281E660(v28, v47, &qword_27ECC3A90, &qword_2428BE5E0);
    v30 = *(v27 + 48);
    v31 = *(v24 + 32);
    v32 = v50;
    v31(v50, v29, v6);
    v53 = *(v29 + v30);
    v33 = v49;
    v31(v49, v32, v6);
    v31(v57, v33, v6);
    v11 = v45;
    sub_242853048(&qword_27ECC3230, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    v34 = v55;
    result = sub_2428B4538();
    v35 = -1 << *(v11 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v17 + 8 * (v36 >> 6))) == 0)
    {
      v38 = 0;
      v39 = (63 - v35) >> 6;
      while (++v37 != v39 || (v38 & 1) == 0)
      {
        v40 = v37 == v39;
        if (v37 == v39)
        {
          v37 = 0;
        }

        v38 |= v40;
        v41 = *(v17 + 8 * v37);
        if (v41 != -1)
        {
          v20 = __clz(__rbit64(~v41)) + (v37 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v20 = __clz(__rbit64((-1 << v36) & ~*(v17 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v15 &= v15 - 1;
    *(v17 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    result = (v31)(*(v11 + 48) + v20 * v54, v57, v6);
    *(*(v11 + 56) + 8 * v20) = v53;
    ++*(v11 + 16);
    v16 = v42;
    v12 = v43;
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v16)
    {

      return v11;
    }

    v15 = *(v12 + 8 * v21);
    ++v19;
    if (v15)
    {
      v19 = v21;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_242852214(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC48B0, &unk_2428C3360);
    v2 = sub_2428B4BA8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  sub_2428B2F38();
  sub_2428B3218();
  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);
        sub_2428B3218();
        v19 = v18;
        v20 = sub_242801C04(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_2428523F4(uint64_t a1)
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

id EditEventIntent_v0.managedDestinationAccountIdentifier.getter()
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

    v2 = [v0 eventWithIdentifier_];

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

uint64_t sub_242852A60@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1848 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3930);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_242852B20(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC39B0, &qword_2428BE348);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC39B8, &qword_2428BE350);
  MEMORY[0x28223BE20](v3);
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC39C8, &qword_2428BE380);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3248();
}

uint64_t sub_242852CCC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return EditEventIntent_v0.perform()(a1);
}

uint64_t sub_242852DEC(char a1, uint64_t a2)
{
  v3 = *(*v2 + 24);
  if (v3 >= a2 && (a1 & 1) != 0)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    if (v3 < a2)
    {
      v4 = a2;
      v5 = 0;
      goto LABEL_9;
    }

    sub_24288DA84();
    return 0;
  }

  v4 = a2;
  v5 = 1;
LABEL_9:
  sub_24288CE94(v4, v5);
  return 1;
}

unint64_t sub_242852E54()
{
  result = qword_27ECC3A60;
  if (!qword_27ECC3A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3A60);
  }

  return result;
}

unint64_t sub_242852EAC()
{
  result = qword_27ECC3A68;
  if (!qword_27ECC3A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3A68);
  }

  return result;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_242852F84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_242852FCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
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
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_242853048(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2428530AC()
{
  v0 = sub_2428B3558();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2428B36C8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_2428B45F8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_2428B3568();
  __swift_allocate_value_buffer(v6, qword_27ECC3AA0);
  __swift_project_value_buffer(v6, qword_27ECC3AA0);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_2428B3578();
}

uint64_t (*static DeleteEventIntent_v0.title.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC1858 != -1)
  {
    swift_once();
  }

  v1 = sub_2428B3568();
  __swift_project_value_buffer(v1, qword_27ECC3AA0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2428533C0()
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
  v10 = sub_2428B3078();
  __swift_allocate_value_buffer(v10, qword_27ECC3AB8);
  __swift_project_value_buffer(v10, qword_27ECC3AB8);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2428B3588();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2428B3088();
}

uint64_t (*static DeleteEventIntent_v0.description.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC1860 != -1)
  {
    swift_once();
  }

  v1 = sub_2428B3078();
  __swift_project_value_buffer(v1, qword_27ECC3AB8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t DeleteEventIntent_v0.init()@<X0>(uint64_t *a1@<X8>)
{
  v46 = a1;
  v47 = sub_2428B3298();
  v49 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v45 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v44 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v43 = &v31 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v7 - 8);
  v42 = &v31 - v8;
  v9 = sub_2428B3558();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2428B36C8();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_2428B45F8();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_2428B3568();
  v40 = v15;
  v48 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v31 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  v50 = 0u;
  v51 = 0u;
  v52 = 0;
  sub_2428B2948();
  *a1 = sub_2428B2918();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3AD8, &qword_2428BEB50);
  sub_2428B4578();
  sub_2428B36B8();
  v18 = *(v10 + 104);
  v34 = *MEMORY[0x277CC9110];
  v17 = v34;
  v33 = v9;
  v18(v12, v34, v9);
  v32 = v18;
  v35 = v10 + 104;
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v18(v12, v17, v9);
  v19 = v42;
  v20 = v12;
  sub_2428B3578();
  v21 = *(v48 + 56);
  v48 += 56;
  v41 = v21;
  v21(v19, 0, 1, v15);
  *&v50 = 0;
  v22 = sub_2428B2AE8();
  v23 = *(*(v22 - 8) + 56);
  v36 = v23;
  v23(v43, 1, 1, v22);
  v23(v44, 1, 1, v22);
  v37 = *MEMORY[0x277CBA308];
  v24 = *(v49 + 104);
  v49 += 104;
  v38 = v24;
  v24(v45);
  sub_2427C2774();
  v46[1] = sub_2428B2E68();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2DA0, &qword_2428BE810);
  sub_2428B4578();
  sub_2428B36B8();
  v25 = v34;
  v26 = v33;
  v27 = v32;
  v32(v20, v34, v33);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v27(v20, v25, v26);
  v28 = v42;
  sub_2428B3578();
  v41(v28, 0, 1, v40);
  LOBYTE(v50) = 3;
  v29 = v36;
  v36(v43, 1, 1, v22);
  v29(v44, 1, 1, v22);
  v38(v45, v37, v47);
  sub_24281E538();
  result = sub_2428B2E38();
  v46[2] = result;
  return result;
}

uint64_t DeleteEventIntent_v0.eventStoreProvider.setter(uint64_t a1)
{
  swift_unknownObjectRetain();
  sub_2428B28F8();
  return swift_unknownObjectRelease();
}

uint64_t (*DeleteEventIntent_v0.eventStoreProvider.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B28D8();
  return sub_2427CBEA8;
}

uint64_t (*DeleteEventIntent_v0.entities.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t (*DeleteEventIntent_v0.span.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t static DeleteEventIntent_v0.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3AE8, &qword_2428BE818);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3AF0, &qword_2428BE820);
  MEMORY[0x28223BE20](v1);
  sub_2428559A4();
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3B00, &qword_2428BE850);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3248();
}

uint64_t sub_242854440()
{
  swift_getKeyPath();
  sub_2428559A4();
  v0 = sub_2428B2F38();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2428B5A90;
  *(v1 + 32) = v0;
  sub_2428B2F38();
  v2 = sub_2428B3218();

  return v2;
}

uint64_t DeleteEventIntent_v0.perform()(uint64_t a1)
{
  *(v2 + 120) = a1;
  v3 = sub_2428B31E8();
  *(v2 + 128) = v3;
  *(v2 + 136) = *(v3 - 8);
  *(v2 + 144) = swift_task_alloc();
  v4 = sub_2428B2AE8();
  *(v2 + 152) = v4;
  *(v2 + 160) = *(v4 - 8);
  *(v2 + 168) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC28E0, &qword_2428B9AE0);
  *(v2 + 176) = v5;
  *(v2 + 184) = *(v5 - 8);
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = *v1;
  *(v2 + 216) = *(v1 + 16);

  return MEMORY[0x2822009F8](sub_2428546BC, 0, 0);
}

uint64_t sub_2428546BC()
{
  v49 = v0;
  v48[2] = *MEMORY[0x277D85DE8];
  v1 = sub_2428B43D8();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_2427CCD68(&qword_280CDDA40, MEMORY[0x277CF7740], MEMORY[0x277CF7728]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CF7730], v1);
  LOBYTE(v1) = sub_2428B37D8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if ((v1 & 1) == 0)
  {
    sub_2428B2938();
    sub_2427CCD68(&qword_27ECC1A80, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_2428B2928();
    goto LABEL_27;
  }

  sub_2428B28E8();
  v3 = [*(v0 + 80) eventStore];
  *(v0 + 224) = v3;
  swift_unknownObjectRelease();
  if (!v3)
  {
    sub_2427CCDB0();
    swift_allocError();
    *v22 = 24;
LABEL_27:
    swift_willThrow();
LABEL_28:

    v23 = *(v0 + 8);
    goto LABEL_40;
  }

  v47 = v3;
  sub_2428B2DC8();
  v46 = v0;
  v4 = *(v0 + 88);
  v5 = v4[2];
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = 0;
    v8 = v4 + 5;
    while (v7 < v4[2])
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      sub_2428B3218();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_2427F7828(0, *(v6 + 2) + 1, 1, v6);
      }

      v12 = *(v6 + 2);
      v11 = *(v6 + 3);
      if (v12 >= v11 >> 1)
      {
        v6 = sub_2427F7828((v11 > 1), v12 + 1, 1, v6);
      }

      ++v7;
      *(v6 + 2) = v12 + 1;
      v13 = &v6[16 * v12];
      *(v13 + 4) = v9;
      *(v13 + 5) = v10;
      v8 += 20;
      if (v5 == v7)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_13:

  v14 = sub_2428B46B8();

  v15 = [v47 eventsWithIdentifiers_];

  if (v15)
  {
    sub_2427DE3E4();
    v0 = sub_2428B46C8();

    v4 = (v0 >> 62);
    if (!(v0 >> 62))
    {
      v16 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
LABEL_38:

        goto LABEL_39;
      }

LABEL_16:
      v45 = v4;
      v17 = 0;
      v48[0] = MEMORY[0x277D84F90];
      v18 = v0 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if ((v0 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x245D1B5D0](v17, v0);
        }

        else
        {
          if (v17 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v19 = *(v0 + 8 * v17 + 32);
        }

        v20 = v19;
        v21 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_35;
        }

        if ([v19 isDeletable])
        {
          sub_2428B4AA8();
          sub_2428B4AD8();
          sub_2428B4AE8();
          v4 = v48;
          sub_2428B4AB8();
        }

        else
        {
        }

        ++v17;
      }

      while (v21 != v16);
      v24 = v48[0];
      v0 = v46;
      *(v46 + 232) = v48[0];
      if (v24 < 0 || (v24 & 0x4000000000000000) != 0)
      {
        if (sub_2428B49C8())
        {
          v25 = sub_2428B49C8();
          if (!v45)
          {
            goto LABEL_33;
          }

          goto LABEL_45;
        }
      }

      else
      {
        v25 = *(v24 + 16);
        if (v25)
        {
          if (!v45)
          {
LABEL_33:
            v26 = *(v18 + 16);
            goto LABEL_46;
          }

LABEL_45:
          v26 = sub_2428B49C8();
LABEL_46:

          v29 = *(v46 + 216);
          if (v25 == v26)
          {
            v30 = sub_2428B2DE8();
            *(v46 + 256) = v30;
            v31 = swift_task_alloc();
            *(v46 + 264) = v31;
            *v31 = v46;
            v31[1] = sub_242855120;
            v32 = *(v46 + 232);

            return sub_24280C5F4(v46 + 280, v32, v30);
          }

          else
          {
            v37 = *(v46 + 160);
            v36 = *(v46 + 168);
            v38 = *(v46 + 152);
            *(v46 + 56) = *(v46 + 200);
            *(v46 + 72) = v29;
            sub_2428B2AC8();
            sub_2428B2C18();
            (*(v37 + 8))(v36, v38);
            sub_2428B31D8();
            v39 = swift_task_alloc();
            *(v46 + 240) = v39;
            v40 = sub_2428559A4();
            v41 = sub_2427CD47C(&unk_27ECC2900, &unk_27ECC28E0, &qword_2428B9AE0, MEMORY[0x277CBA268]);
            *v39 = v46;
            v39[1] = sub_242854E5C;
            v42 = *(v46 + 192);
            v43 = *(v46 + 176);
            v44 = *(v46 + 144);

            return MEMORY[0x28210B510](v42, v44, 1, &type metadata for DeleteEventIntent_v0, v43, v40, v41);
          }
        }
      }

      sub_2428B2DC8();
      v33 = *(*(v46 + 112) + 16);

      if (v33 <= 1)
      {
        v34 = 40;
      }

      else
      {
        v34 = 41;
      }

      sub_2427CCDB0();
      swift_allocError();
      *v35 = v34;
      swift_willThrow();

      goto LABEL_28;
    }

LABEL_37:
    v16 = sub_2428B49C8();
    if (!v16)
    {
      goto LABEL_38;
    }

    goto LABEL_16;
  }

LABEL_39:
  v27 = *(v46 + 224);
  sub_2428B2C28();

  v23 = *(v46 + 8);
LABEL_40:

  return v23();
}

uint64_t sub_242854E5C()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v4 = v2[23];
    v3 = v2[24];
    v5 = v2[22];
    v7 = v2[17];
    v6 = v2[18];
    v8 = v2[16];

    (*(v7 + 8))(v6, v8);
    (*(v4 + 8))(v3, v5);
    v9 = sub_242855510;
  }

  else
  {
    v11 = v2[23];
    v10 = v2[24];
    v12 = v2[22];
    (*(v2[17] + 8))(v2[18], v2[16]);
    (*(v11 + 8))(v10, v12);
    v9 = sub_242855034;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_242855034(uint64_t a1)
{
  v2 = sub_2428B2DE8();
  v1[32] = v2;
  v3 = swift_task_alloc();
  v1[33] = v3;
  *v3 = v1;
  v3[1] = sub_242855120;
  v4 = v1[29];

  return sub_24280C5F4((v1 + 35), v4, v2);
}

uint64_t sub_242855120()
{
  *(*v1 + 272) = v0;

  if (v0)
  {

    v2 = sub_2428555C8;
  }

  else
  {
    v2 = sub_242855298;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_242855298()
{
  v1 = qword_2428BEA20[*(v0 + 280)];
  v2 = *(v0 + 232);
  if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
  {
    v3 = *(v2 + 16);
    if (!v3)
    {
      goto LABEL_16;
    }

LABEL_6:
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x245D1B5D0](v4, *(v0 + 232));
      }

      else
      {
        if (v4 >= *(v2 + 16))
        {
          goto LABEL_24;
        }

        v5 = *(v2 + 32 + 8 * v4);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v8 = *(v0 + 224);
      *(v0 + 96) = 0;
      v9 = [v8 removeEvent:v6 span:v1 commit:0 error:v0 + 96];
      v10 = *(v0 + 96);
      if (!v9)
      {
        break;
      }

      v11 = v10;

      ++v4;
      if (v7 == v3)
      {
        goto LABEL_16;
      }
    }

    v12 = *(v0 + 224);
    v13 = v10;

    sub_2428B3538();

    swift_willThrow();
    goto LABEL_19;
  }

  v3 = sub_2428B49C8();
  v2 = *(v0 + 232);
  if (v3)
  {
    goto LABEL_6;
  }

LABEL_16:
  v14 = *(v0 + 224);

  *(v0 + 104) = 0;
  v15 = [v14 commitWithRollback_];
  v16 = *(v0 + 104);
  v12 = *(v0 + 224);
  if (v15)
  {
    v17 = v16;
    sub_2428B2C28();

    v18 = *(v0 + 8);
    goto LABEL_20;
  }

  v19 = v16;
  sub_2428B3538();

  swift_willThrow();
LABEL_19:

  v18 = *(v0 + 8);
LABEL_20:

  return v18();
}

uint64_t sub_242855510()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2428555C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_242855680@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1858 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3AA0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_242855740(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3AE8, &qword_2428BE818);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3AF0, &qword_2428BE820);
  MEMORY[0x28223BE20](v3);
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3B00, &qword_2428BE850);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3248();
}

uint64_t sub_2428558EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return DeleteEventIntent_v0.perform()(a1);
}

unint64_t sub_2428559A4()
{
  result = qword_27ECC3AF8;
  if (!qword_27ECC3AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3AF8);
  }

  return result;
}

unint64_t sub_2428559FC()
{
  result = qword_27ECC3B08;
  if (!qword_27ECC3B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3B08);
  }

  return result;
}

unint64_t sub_242855A58()
{
  result = qword_27ECC3B10;
  if (!qword_27ECC3B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3B10);
  }

  return result;
}

unint64_t sub_242855AB0()
{
  result = qword_27ECC3B18;
  if (!qword_27ECC3B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3B18);
  }

  return result;
}

unint64_t sub_242855B50()
{
  result = qword_280CDE120;
  if (!qword_280CDE120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE120);
  }

  return result;
}

id sub_242855BA4()
{
  sub_2428B28E8();
  v0 = [v7 eventStore];
  swift_unknownObjectRelease();
  if (!v0)
  {
    if (qword_280CDE4E0 != -1)
    {
      swift_once();
    }

    v1 = sub_2428B4448();
    __swift_project_value_buffer(v1, qword_280CDE4E8);
    v2 = sub_2428B4428();
    v3 = sub_2428B4838();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2427C0000, v2, v3, "Failed to get event store", v4, 2u);
      MEMORY[0x245D1C000](v4, -1, -1);
    }

    sub_2427CCDB0();
    swift_allocError();
    *v5 = 24;
    swift_willThrow();
  }

  return v0;
}

uint64_t sub_242855CF8(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v2[2] = a1;
  v2[3] = v3;
  v2[4] = v4;
  return MEMORY[0x2822009F8](sub_242855D20, 0, 0);
}

uint64_t sub_242855D20()
{
  v8 = v0;
  v1 = v0[4];
  v7[0] = v0[3];
  v7[1] = v1;
  v2 = sub_242855BA4();
  v3 = v0[2];
  v7[0] = v0[4];
  v4 = v2;
  static CalendarSuggestionsProvider.suggestions(withEventStore:options:)(v2, v7, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_242855DF4()
{
  v0 = sub_2428B3568();
  __swift_allocate_value_buffer(v0, qword_27ECC3B30);
  __swift_project_value_buffer(v0, qword_27ECC3B30);
  return sub_2428B3548();
}

uint64_t static ListEventsIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1868 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3B30);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ListEventsIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v38 = a1;
  v36 = sub_2428B3298();
  v2 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v37 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D00, &unk_2428BD500);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v28 - v10;
  v28[0] = v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v28 - v13;
  v30 = v28 - v13;
  v15 = sub_2428B3568();
  v33 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2530, &qword_2428BD510);
  sub_2428B2958();
  v39 = 0u;
  v40 = 0u;
  v41 = 0;
  sub_2428B2948();
  *a1 = sub_2428B2918();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D10, &qword_2428BB320);
  sub_2428B3548();
  v17 = *(v16 + 56);
  v32 = v16 + 56;
  v34 = v17;
  v17(v14, 1, 1, v15);
  v18 = sub_2428B4568();
  v39 = 0uLL;
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  v19 = sub_2428B2AE8();
  v20 = *(*(v19 - 8) + 56);
  v21 = v8;
  v20(v8, 1, 1, v19);
  v22 = *MEMORY[0x277CBA308];
  v23 = *(v2 + 104);
  v28[1] = v2 + 104;
  v29 = v23;
  v25 = v35;
  v24 = v36;
  v23(v35, v22, v36);
  v26 = v30;
  v38[1] = sub_2428B2EB8();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3AD8, &qword_2428BEB50);
  sub_2428B3548();
  v34(v26, 1, 1, v33);
  *&v39 = 0;
  v20(v21, 1, 1, v19);
  v20(v37, 1, 1, v19);
  v29(v25, v22, v24);
  sub_2427C2774();
  result = sub_2428B2E68();
  v38[2] = result;
  return result;
}

uint64_t ListEventsIntent.viewOpener.setter(void *a1)
{
  sub_2427CBD84(a1, v3);
  sub_2428B28F8();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*ListEventsIntent.viewOpener.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B28D8();
  return sub_2427CD67C;
}

uint64_t sub_242856528(uint64_t *a1, uint64_t *a2)
{
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2DD8();
}

uint64_t (*ListEventsIntent.description.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_2428566A0(uint64_t *a1, uint64_t *a2)
{
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2DD8();
}

uint64_t (*ListEventsIntent.target.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t ListEventsIntent.perform()(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = *v1;
  *(v2 + 104) = *(v1 + 16);
  sub_2428B4758();
  *(v2 + 112) = sub_2428B4748();
  v4 = sub_2428B4728();
  *(v2 + 120) = v4;
  *(v2 + 128) = v3;

  return MEMORY[0x2822009F8](sub_24285688C, v4, v3);
}

uint64_t sub_24285688C()
{
  sub_2428B2DC8();
  v1 = v0[7];
  v2 = v0[8];
  v0[17] = v2;
  if (v2)
  {
    sub_2428B28E8();
    v3 = v0[5];
    v4 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
    sub_2428B2DC8();
    v5 = v0[9];
    v0[18] = v5;
    v9 = (*(v4 + 32) + **(v4 + 32));
    v6 = swift_task_alloc();
    v0[19] = v6;
    *v6 = v0;
    v6[1] = sub_242856A5C;

    return v9(v1, v2, v5, v3, v4);
  }

  else
  {

    sub_2428B2C28();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_242856A5C()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_242856C40;
  }

  else
  {
    v5 = sub_242856BCC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_242856BCC()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_2428B2C28();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_242856C40()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_242856CB0()
{
  result = qword_27ECC3B48;
  if (!qword_27ECC3B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3B48);
  }

  return result;
}

unint64_t sub_242856D08()
{
  result = qword_27ECC3B50;
  if (!qword_27ECC3B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC2640, &qword_2428BEB60);
    sub_2427C27CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3B50);
  }

  return result;
}

void *sub_242856D8C@<X0>(void *a1@<X8>)
{
  result = sub_2428B2DC8();
  *a1 = v3;
  return result;
}

uint64_t (*sub_242856E00(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CBEA8;
}

unint64_t sub_242856E78()
{
  result = qword_27ECC3B58;
  if (!qword_27ECC3B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3B58);
  }

  return result;
}

unint64_t sub_242856ED0()
{
  result = qword_280CDDE00;
  if (!qword_280CDDE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDE00);
  }

  return result;
}

unint64_t sub_242856F28()
{
  result = qword_280CDDE08;
  if (!qword_280CDDE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDE08);
  }

  return result;
}

uint64_t sub_242856FE8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1868 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3B30);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_242857090(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return ListEventsIntent.perform()(a1);
}

unint64_t sub_242857158()
{
  result = qword_280CDE650;
  if (!qword_280CDE650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC1AB0, &unk_2428B6210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE650);
  }

  return result;
}

id CalendarLinkSpotlightEntityAnnotator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CalendarLinkSpotlightEntityAnnotator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CalendarLinkSpotlightEntityAnnotator();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CalendarLinkSpotlightEntityAnnotator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CalendarLinkSpotlightEntityAnnotator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_242857420(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  sub_2427F95E0(a3, &v19 - v7);
  v9 = sub_2428B4608();
  v10 = sub_2428B3688();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    v12 = sub_2428B3658();
    (*(v11 + 8))(v8, v10);
  }

  v13 = [objc_opt_self() recurrenceIdentifierWithLocalUID:v9 recurrenceDate:v12];

  if (v13)
  {
    v14 = [v13 identifierString];
    if (v14)
    {
      v15 = v14;
      sub_2428B4618();

      v16 = [a4 attributeSet];
      v17 = [a4 attributeSet];
      v18 = [v17 title];

      if (v18)
      {
        sub_2428B4618();
      }

      sub_242801D34(MEMORY[0x277D84F90]);
      sub_2428B4878();
    }

    else
    {
    }
  }
}

uint64_t sub_2428576D0()
{
  v0 = sub_2428B3568();
  __swift_allocate_value_buffer(v0, qword_27ECC3B60);
  __swift_project_value_buffer(v0, qword_27ECC3B60);
  return sub_2428B3548();
}

uint64_t static FetchTransferableEventByURLIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1870 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3B60);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_242857818(uint64_t *a1, uint64_t *a2)
{
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  swift_unknownObjectRetain();
  sub_2428B28F8();
}

uint64_t FetchTransferableEventByURLIntent.eventStoreProvider.setter(uint64_t a1)
{
  swift_unknownObjectRetain();
  sub_2428B28F8();
  return swift_unknownObjectRelease();
}

uint64_t (*FetchTransferableEventByURLIntent.eventStoreProvider.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B28D8();
  return sub_2427CD67C;
}

uint64_t sub_2428579BC(id *a1, uint64_t *a2)
{
  v2 = *a1;
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  v3 = v2;
  sub_2428B28F8();
}

void FetchTransferableEventByURLIntent.reminderStoreWrapper.setter(void *a1)
{
  v1 = a1;
  sub_2428B28F8();
}

uint64_t (*FetchTransferableEventByURLIntent.reminderStoreWrapper.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B28D8();
  return sub_2427CD67C;
}

uint64_t sub_242857B58(id *a1, uint64_t *a2)
{
  v2 = *a1;
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  v3 = v2;
  sub_2428B28F8();
}

void FetchTransferableEventByURLIntent.contactStore.setter(void *a1)
{
  v1 = a1;
  sub_2428B28F8();
}

uint64_t (*FetchTransferableEventByURLIntent.contactStore.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B28D8();
  return sub_2427CBEA8;
}

uint64_t FetchTransferableEventByURLIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2428B3298();
  v20 = *(v2 - 8);
  v21 = v2;
  MEMORY[0x28223BE20](v2);
  v19 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_2428B3568();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  sub_2428B2948();
  *a1 = sub_2428B2918();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3608, &qword_2428BD350);
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_2428B2948();
  a1[1] = sub_2428B2918();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3610, &qword_2428BD358);
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_2428B2948();
  a1[2] = sub_2428B2918();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3B78, &qword_2428BED70);
  sub_2428B3548();
  (*(v14 + 56))(v12, 1, 1, v13);
  v15 = sub_2428B35D8();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v16 = sub_2428B2AE8();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  (*(v20 + 104))(v19, *MEMORY[0x277CBA308], v21);
  result = sub_2428B2E88();
  a1[3] = result;
  return result;
}

uint64_t FetchTransferableEventByURLIntent.perform()(uint64_t a1)
{
  *(v2 + 72) = a1;
  v3 = type metadata accessor for TransferableEventEntity(0);
  *(v2 + 80) = v3;
  *(v2 + 88) = *(v3 - 8);
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = swift_task_alloc();
  v4 = sub_2428B35D8();
  *(v2 + 112) = v4;
  *(v2 + 120) = *(v4 - 8);
  *(v2 + 128) = swift_task_alloc();
  v5 = v1[1];
  *(v2 + 136) = *v1;
  *(v2 + 152) = v5;

  return MEMORY[0x2822009F8](sub_2428581EC, 0, 0);
}

uint64_t sub_2428581EC()
{
  v1 = sub_2427F48F0();
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  sub_2428B2DC8();
  v5 = sub_2428B35A8();
  (*(v3 + 8))(v2, v4);
  v6 = [v1 eventWithExternalURI_];

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2428B5A90;
    *(inited + 32) = v6;
    v8 = v6;
    sub_2428B28E8();
    v9 = v0[7];
    sub_2428B28E8();
    v10 = v0[8];
    v11 = sub_242827F98(inited, v9, v10);

    if (v11[2])
    {
      v13 = v0[12];
      v12 = v0[13];
      v14 = *(v0[11] + 80);
      sub_2428585E0(v11 + ((v14 + 32) & ~v14), v13);

      sub_242828204(v13, v12);
      sub_2428352D0();
      sub_2428B2C08();

      sub_242858644(v12);

      v15 = v0[1];
      goto LABEL_7;
    }

    sub_2427CCDB0();
    swift_allocError();
    *v17 = 25;
    swift_willThrow();
  }

  else
  {
    sub_2427CCDB0();
    swift_allocError();
    *v16 = 25;
    swift_willThrow();
  }

  v15 = v0[1];
LABEL_7:

  return v15();
}

uint64_t sub_242858480@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1870 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3B60);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_242858528(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return FetchTransferableEventByURLIntent.perform()(a1);
}

uint64_t sub_2428585E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransferableEventEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242858644(uint64_t a1)
{
  v2 = type metadata accessor for TransferableEventEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2428586A4()
{
  result = qword_27ECC3B88;
  if (!qword_27ECC3B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3B88);
  }

  return result;
}

unint64_t sub_2428586FC()
{
  result = qword_27ECC3B90;
  if (!qword_27ECC3B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3B90);
  }

  return result;
}

unint64_t sub_2428587D4()
{
  result = qword_27ECC3B98;
  if (!qword_27ECC3B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3B98);
  }

  return result;
}

unint64_t sub_242858838()
{
  result = qword_27ECC3BA0;
  if (!qword_27ECC3BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC3BA8, &qword_2428BEEC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3BA0);
  }

  return result;
}

uint64_t sub_2428588B8()
{
  v0 = sub_2428B3568();
  __swift_allocate_value_buffer(v0, qword_27ECC3BB0);
  __swift_project_value_buffer(v0, qword_27ECC3BB0);
  return sub_2428B3548();
}

uint64_t static LocationSearchIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1878 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3BB0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_242858A00(uint64_t *a1, uint64_t *a2)
{
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  swift_unknownObjectRetain();
  sub_2428B28F8();
}

uint64_t LocationSearchIntent.eventStoreProvider.setter(uint64_t a1)
{
  swift_unknownObjectRetain();
  sub_2428B28F8();
  return swift_unknownObjectRelease();
}

void (*LocationSearchIntent.eventStoreProvider.modify(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_2428B28D8();
  return sub_2427CC2B0;
}

uint64_t LocationSearchIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v77 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2CF0, &unk_2428C15D0);
  MEMORY[0x28223BE20](v2 - 8);
  v58 = &v52 - v3;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3BD0, &unk_2428BE2F0);
  v69 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = &v52 - v4;
  v79 = sub_2428B3298();
  v5 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v61 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v52 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D00, &unk_2428BD500);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v52 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v52 - v14;
  v16 = sub_2428B3568();
  v76 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  v80 = 0u;
  v81 = 0u;
  v82 = 0;
  sub_2428B2948();
  *a1 = sub_2428B2918();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3840, &unk_2428BDEC0);
  sub_2428B3548();
  v75 = *(v17 + 56);
  v78 = v17 + 56;
  v75(v15, 1, 1, v16);
  v68 = sub_2428B4568();
  v80 = 0uLL;
  v20 = *(v68 - 8);
  v21 = *(v20 + 56);
  v66 = v20 + 56;
  v67 = v21;
  v21(v12, 1, 1, v68);
  v74 = sub_2428B2AE8();
  v22 = *(v74 - 8);
  v60 = *(v22 + 56);
  v70 = v22 + 56;
  v60(v9, 1, 1, v74);
  v72 = *MEMORY[0x277CBA308];
  v23 = *(v5 + 104);
  v71 = v5 + 104;
  v73 = v23;
  v24 = v61;
  v25 = v79;
  (v23)(v61);
  v65 = v19;
  v54 = v15;
  v26 = v9;
  v77[1] = sub_2428B2EB8();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D10, &qword_2428BB320);
  sub_2428B3548();
  v28 = v75;
  v27 = v76;
  v75(v15, 1, 1, v76);
  v80 = 0uLL;
  v57 = v12;
  v67(v12, 1, 1, v68);
  v53 = v26;
  v29 = v26;
  v30 = v74;
  v31 = v60;
  v60(v29, 1, 1, v74);
  v73(v24, v72, v25);
  v32 = v54;
  v77[2] = sub_2428B2EB8();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4440, &unk_2428BE300);
  sub_2428B3548();
  v28(v32, 1, 1, v27);
  v33 = v53;
  v31(v53, 1, 1, v30);
  v56 = *MEMORY[0x277CB9EF0];
  v34 = *(v69 + 104);
  v69 += 104;
  v55 = v34;
  v34(v63);
  v35 = v24;
  v36 = v72;
  v37 = v73;
  v73(v35, v72, v79);
  v77[3] = sub_2428B2E98();
  sub_2428B3548();
  v75(v32, 1, 1, v76);
  v38 = v60;
  v60(v33, 1, 1, v74);
  v55(v63, v56, v64);
  v39 = v61;
  v37(v61, v36, v79);
  v40 = v39;
  v41 = sub_2428B2E98();
  v42 = v77;
  v77[4] = v41;
  sub_2428B3548();
  v43 = v32;
  v75(v32, 1, 1, v76);
  v80 = 0uLL;
  v44 = v57;
  v67(v57, 1, 1, v68);
  v38(v33, 1, 1, v74);
  v45 = v72;
  v46 = v73;
  v73(v40, v72, v79);
  v42[5] = sub_2428B2EB8();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3BE0, &unk_2428BEEE8);
  sub_2428B3548();
  v75(v43, 1, 1, v76);
  *&v80 = 0;
  v67(v44, 1, 1, v68);
  v47 = v74;
  v38(v33, 1, 1, v74);
  v46(v40, v45, v79);
  v48 = sub_2428B2EB8();
  v49 = v77;
  v77[6] = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3850, &unk_2428BDED0);
  sub_2428B3548();
  v75(v43, 1, 1, v76);
  LOBYTE(v80) = 2;
  v50 = sub_2428B4718();
  (*(*(v50 - 8) + 56))(v58, 1, 1, v50);
  v38(v33, 1, 1, v47);
  v73(v40, v72, v79);
  result = sub_2428B2EC8();
  v49[7] = result;
  return result;
}

uint64_t LocationSearchIntent.perform()(uint64_t a1)
{
  *(v2 + 216) = a1;
  *(v2 + 224) = type metadata accessor for LocationSearchResultsEntity(0);
  *(v2 + 232) = swift_task_alloc();
  v3 = sub_2428B4188();
  *(v2 + 240) = v3;
  *(v2 + 248) = *(v3 - 8);
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 264) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = swift_task_alloc();
  v4 = sub_2428B4518();
  *(v2 + 288) = v4;
  *(v2 + 296) = *(v4 - 8);
  *(v2 + 304) = swift_task_alloc();
  *(v2 + 312) = swift_task_alloc();
  v5 = sub_2428B4468();
  *(v2 + 320) = v5;
  *(v2 + 328) = *(v5 - 8);
  *(v2 + 336) = swift_task_alloc();
  v6 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v6;
  v7 = v1[3];
  *(v2 + 48) = v1[2];
  *(v2 + 64) = v7;

  return MEMORY[0x2822009F8](sub_2428598A8, 0, 0);
}

uint64_t sub_2428598A8()
{
  v23 = v0;
  if (qword_280CDE4E0 != -1)
  {
    swift_once();
  }

  v1 = sub_2428B4448();
  *(v0 + 344) = __swift_project_value_buffer(v1, qword_280CDE4E8);
  sub_24285A418(v0 + 16, v0 + 80);
  v2 = sub_2428B4428();
  v3 = sub_2428B4828();
  sub_24285A450(v0 + 16);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v22 = v5;
    *v4 = 136315138;
    sub_2428B2DC8();
    v6 = sub_24285A480(*(v0 + 192), *(v0 + 200), &v22);

    *(v4 + 4) = v6;
    _os_log_impl(&dword_2427C0000, v2, v3, "perform fetch location search intent, searchTerm: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x245D1C000](v5, -1, -1);
    MEMORY[0x245D1C000](v4, -1, -1);
  }

  sub_2428B2DC8();
  v7 = *(v0 + 400);
  sub_2427F4A64();
  if (v7)
  {
    v8 = 504;
  }

  else
  {
    v8 = 128;
  }

  sub_2428B4458();
  sub_2428B2DC8();
  v9 = *(v0 + 144);
  v10 = *(v0 + 152);
  *(v0 + 352) = v10;
  sub_2428B2DC8();
  v11 = *(v0 + 160);
  v12 = *(v0 + 168);
  *(v0 + 360) = v12;
  sub_2428B2DC8();
  sub_2428B2DC8();
  sub_2428B2DC8();
  v13 = *(v0 + 176);
  v14 = *(v0 + 184);
  *(v0 + 368) = v14;
  sub_2428B2DC8();
  v15 = *(v0 + 208);
  *(v0 + 376) = v15;
  v16 = swift_task_alloc();
  *(v0 + 384) = v16;
  *v16 = v0;
  v16[1] = sub_242859CE4;
  v17 = *(v0 + 336);
  v18 = *(v0 + 312);
  v20 = *(v0 + 272);
  v19 = *(v0 + 280);
  v29 = v15;
  v28 = 0;
  v26 = v13;
  v27 = v14;
  v25 = v20;

  return MEMORY[0x2821166A8](v18, v9, v10, v17, v8, v11, v12, v19);
}

uint64_t sub_242859CE4()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  v3 = *(v2 + 280);
  v4 = *(v2 + 272);

  sub_2427E0980(v4, &qword_27ECC26F0, &unk_2428B7960);
  sub_2427E0980(v3, &qword_27ECC26F0, &unk_2428B7960);
  if (v0)
  {
    v5 = sub_24285A0E4;
  }

  else
  {
    v5 = sub_242859ED4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_242859ED4()
{
  v1 = v0[41];
  v13 = v0[40];
  v14 = v0[42];
  v2 = v0[37];
  v11 = v0[39];
  v12 = v0[36];
  v3 = v0[33];
  v4 = v0[31];
  v5 = v0[32];
  v6 = v0[29];
  v7 = v0[30];
  (*(v2 + 16))(v0[38]);
  sub_2428B4198();
  (*(v4 + 16))(v5, v3, v7);
  v8 = *(v4 + 56);
  v8(v6, 1, 1, v7);
  sub_2427E0980(v6, &qword_27ECC3BF0, &unk_2428BEF00);
  (*(v4 + 32))(v6, v5, v7);
  v8(v6, 0, 1, v7);
  sub_24285AA28();
  sub_2428B2C08();
  (*(v4 + 8))(v3, v7);
  (*(v2 + 8))(v11, v12);
  (*(v1 + 8))(v14, v13);
  sub_24285AA80(v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_24285A0E4()
{
  (*(v0[41] + 8))(v0[42], v0[40]);
  v1 = v0[49];
  v2 = v1;
  v3 = sub_2428B4428();
  v4 = sub_2428B4838();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_2427C0000, v3, v4, "error searching for locations: %@", v5, 0xCu);
    sub_2427E0980(v6, &qword_27ECC31E8, &qword_2428BBED8);
    MEMORY[0x245D1C000](v6, -1, -1);
    MEMORY[0x245D1C000](v5, -1, -1);
  }

  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_24285A2B8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1878 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3BB0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24285A360(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return LocationSearchIntent.perform()(a1);
}

unint64_t sub_24285A480(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_2428B3218();
  v6 = sub_24285A54C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_242822794(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_24285A54C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_24285A658(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2428B4A98();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_24285A658(uint64_t a1, unint64_t a2)
{
  v3 = sub_24285A6A4(a1, a2);
  sub_24285A7D4(&unk_285515650);
  return v3;
}

void *sub_24285A6A4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24285A8C0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2428B4A98();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2428B4698();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24285A8C0(v10, 0);
        result = sub_2428B4A58();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24285A7D4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24285A934(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24285A8C0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C18, &unk_2428BF070);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24285A934(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C18, &unk_2428BF070);
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

unint64_t sub_24285AA28()
{
  result = qword_27ECC3BF8;
  if (!qword_27ECC3BF8)
  {
    type metadata accessor for LocationSearchResultsEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3BF8);
  }

  return result;
}

uint64_t sub_24285AA80(uint64_t a1)
{
  v2 = type metadata accessor for LocationSearchResultsEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24285AAE0()
{
  result = qword_280CDDCC0;
  if (!qword_280CDDCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDCC0);
  }

  return result;
}

unint64_t sub_24285AB38()
{
  result = qword_280CDDCC8;
  if (!qword_280CDDCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDCC8);
  }

  return result;
}

unint64_t sub_24285AC10()
{
  result = qword_27ECC3C00;
  if (!qword_27ECC3C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3C00);
  }

  return result;
}

unint64_t sub_24285AC74()
{
  result = qword_27ECC3C08;
  if (!qword_27ECC3C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC3C10, &qword_2428BF068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3C08);
  }

  return result;
}

uint64_t sub_24285ACD8(uint64_t a1)
{
  v30 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D80, &qword_2428BF480);
  v2 = *(v1 - 8);
  v31 = v1;
  v32 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v20[-v3];
  v24 = sub_2428B2F48();
  v5 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D88, &qword_2428BF488);
  MEMORY[0x28223BE20](v8);
  sub_2427F2520();
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  v29 = sub_2427C28E0();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  v9 = *MEMORY[0x277CB9F50];
  v28 = *(v5 + 104);
  v21 = v9;
  v10 = v24;
  v28(v7, v9, v24);
  sub_2428B2FD8();
  v11 = *(v5 + 8);
  v26 = v5 + 8;
  v27 = v11;
  v11(v7, v10);
  sub_2428B2FF8();
  sub_2428B3018();
  v23 = sub_2428B2F68();
  v12 = *(v32 + 8);
  v32 += 8;
  v25 = v12;
  v12(v4, v31);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  v13 = v9;
  v14 = v24;
  v28(v7, v13, v24);
  sub_2428B2FD8();
  v27(v7, v14);
  sub_2428B2FF8();
  sub_2428B3018();
  v22 = sub_2428B2F68();
  v25(v4, v31);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  v28(v7, v21, v14);
  sub_2428B2FD8();
  v27(v7, v14);
  sub_2428B2FF8();
  sub_2428B3018();
  v15 = sub_2428B2F68();
  v25(v4, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D90, &unk_2428BF490);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2428B9770;
  v17 = v22;
  *(v16 + 32) = v23;
  *(v16 + 40) = v17;
  *(v16 + 48) = v15;
  v18 = sub_2428B2F58();

  return v18;
}

uint64_t sub_24285B2B4(uint64_t a1)
{
  v30 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D68, &qword_2428BF440);
  v2 = *(v1 - 8);
  v31 = v1;
  v32 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v20[-v3];
  v24 = sub_2428B2F48();
  v5 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D70, &qword_2428BF448);
  MEMORY[0x28223BE20](v8);
  sub_24285FBE8();
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  v29 = sub_2427FCF34();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  v9 = *MEMORY[0x277CB9F50];
  v28 = *(v5 + 104);
  v21 = v9;
  v10 = v24;
  v28(v7, v9, v24);
  sub_2428B2FD8();
  v11 = *(v5 + 8);
  v26 = v5 + 8;
  v27 = v11;
  v11(v7, v10);
  sub_2428B2FF8();
  sub_2428B3018();
  v23 = sub_2428B2F68();
  v12 = *(v32 + 8);
  v32 += 8;
  v25 = v12;
  v12(v4, v31);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  v13 = v9;
  v14 = v24;
  v28(v7, v13, v24);
  sub_2428B2FD8();
  v27(v7, v14);
  sub_2428B2FF8();
  sub_2428B3018();
  v22 = sub_2428B2F68();
  v25(v4, v31);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  v28(v7, v21, v14);
  sub_2428B2FD8();
  v27(v7, v14);
  sub_2428B2FF8();
  sub_2428B3018();
  v15 = sub_2428B2F68();
  v25(v4, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D78, &qword_2428BF450);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2428B9770;
  v17 = v22;
  *(v16 + 32) = v23;
  *(v16 + 40) = v17;
  *(v16 + 48) = v15;
  v18 = sub_2428B2F58();

  return v18;
}

uint64_t sub_24285B884(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v7 = sub_2428B2FC8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  a3();
  sub_2428B2F38();

  a4(v11);
  sub_2428B2FB8();
  v12 = sub_2428B2FA8();
  (*(v8 + 8))(v10, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C48, &qword_2428BF178);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2428B5D50;
  *(v13 + 32) = v12;
  v14 = sub_2428B2F98();

  return v14;
}

uint64_t sub_24285BA04()
{
  v0 = sub_2428B2F88();
  v1 = sub_2428B2F88();
  v2 = sub_2428B2F88();
  v3 = sub_2428B2F88();
  v4 = sub_2428B2F88();
  v5 = sub_2428B2F88();
  v6 = sub_2428B2F88();
  v7 = sub_2428B2F88();
  v8 = sub_2428B2F88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C50, &qword_2428BF180);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2428B5D40;
  *(v9 + 32) = v0;
  *(v9 + 40) = v1;
  *(v9 + 48) = v2;
  *(v9 + 56) = v3;
  *(v9 + 64) = v4;
  *(v9 + 72) = v5;
  *(v9 + 80) = v6;
  *(v9 + 88) = v7;
  *(v9 + 96) = v8;
  v10 = sub_2428B2F78();

  return v10;
}

uint64_t sub_24285BBC0(uint64_t a1)
{
  v28 = a1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D50, &qword_2428BF400);
  v30 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v2 = v20 - v1;
  v25 = sub_2428B2F48();
  v3 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D58, &qword_2428BF408);
  MEMORY[0x28223BE20](v6);
  sub_24283252C();
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  v29 = sub_24285FEC4();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  LODWORD(v23) = *MEMORY[0x277CB9F50];
  v7 = v3;
  v22 = *(v3 + 104);
  v8 = v25;
  v22(v5);
  sub_2428B2FD8();
  v9 = *(v7 + 8);
  v20[1] = v7 + 8;
  v21 = v9;
  v9(v5, v8);
  sub_2428B2FF8();
  sub_2428B3018();
  v24 = sub_2428B2F68();
  v26 = *(v30 + 8);
  v30 += 8;
  v10 = v27;
  v26(v2, v27);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  v11 = v25;
  (v22)(v5, v23, v25);
  sub_2428B2FD8();
  v21(v5, v11);
  sub_2428B2FF8();
  sub_2428B3018();
  v25 = sub_2428B2F68();
  v26(v2, v10);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v23 = sub_2428B2F68();
  v12 = v26;
  v26(v2, v10);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v22 = sub_2428B2F68();
  v13 = v27;
  v12(v2, v27);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v14 = sub_2428B2F68();
  v12(v2, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D60, &qword_2428BF410);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2428BC390;
  v16 = v25;
  *(v15 + 32) = v24;
  *(v15 + 40) = v16;
  v17 = v22;
  *(v15 + 48) = v23;
  *(v15 + 56) = v17;
  *(v15 + 64) = v14;
  v18 = sub_2428B2F58();

  return v18;
}

uint64_t sub_24285C310()
{
  v12 = sub_2428B2F88();
  v0 = sub_2428B2F88();
  v1 = sub_2428B2F88();
  v2 = sub_2428B2F88();
  v3 = sub_2428B2F88();
  v4 = sub_2428B2F88();
  v5 = sub_2428B2F88();
  v6 = sub_2428B2F88();
  v7 = sub_2428B2F88();
  v8 = sub_2428B2F88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C50, &qword_2428BF180);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2428BF080;
  *(v9 + 32) = v12;
  *(v9 + 40) = v0;
  *(v9 + 48) = v1;
  *(v9 + 56) = v2;
  *(v9 + 64) = v3;
  *(v9 + 72) = v4;
  *(v9 + 80) = v5;
  *(v9 + 88) = v6;
  *(v9 + 96) = v7;
  *(v9 + 104) = v8;
  v10 = sub_2428B2F78();

  return v10;
}

uint64_t sub_24285C508(uint64_t a1)
{
  v22 = sub_2428B2F48();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v19 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D38, &qword_2428BF3C0);
  v25 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D40, &qword_2428BF3C8);
  MEMORY[0x28223BE20](v5);
  sub_242822644();
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  v23 = sub_2427C28E0();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v21 = sub_2428B2F68();
  v24 = *(v25 + 8);
  v25 += 8;
  v6 = v17;
  v24(v4, v17);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v18 = sub_2428B2F68();
  v24(v4, v6);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  v16 = a1;
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  v8 = v19;
  v7 = v20;
  v9 = v22;
  (*(v20 + 104))(v19, *MEMORY[0x277CB9F50], v22);
  sub_2428B2FD8();
  (*(v7 + 8))(v8, v9);
  sub_2428B2FF8();
  sub_2428B3018();
  v22 = sub_2428B2F68();
  v10 = v24;
  v24(v4, v6);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v11 = sub_2428B2F68();
  v10(v4, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D48, &qword_2428BF3D0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2428B7E80;
  v13 = v18;
  *(v12 + 32) = v21;
  *(v12 + 40) = v13;
  *(v12 + 48) = v22;
  *(v12 + 56) = v11;
  v14 = sub_2428B2F58();

  return v14;
}

uint64_t sub_24285CB0C(uint64_t a1)
{
  v22 = sub_2428B2F48();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v19 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D20, &qword_2428BF380);
  v25 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D28, &qword_2428BF388);
  MEMORY[0x28223BE20](v5);
  sub_2427E4AF0();
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  v23 = sub_2427C28E0();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v21 = sub_2428B2F68();
  v24 = *(v25 + 8);
  v25 += 8;
  v6 = v17;
  v24(v4, v17);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v18 = sub_2428B2F68();
  v24(v4, v6);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  v16 = a1;
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  v8 = v19;
  v7 = v20;
  v9 = v22;
  (*(v20 + 104))(v19, *MEMORY[0x277CB9F50], v22);
  sub_2428B2FD8();
  (*(v7 + 8))(v8, v9);
  sub_2428B2FF8();
  sub_2428B3018();
  v22 = sub_2428B2F68();
  v10 = v24;
  v24(v4, v6);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v11 = sub_2428B2F68();
  v10(v4, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D30, &qword_2428BF390);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2428B7E80;
  v13 = v18;
  *(v12 + 32) = v21;
  *(v12 + 40) = v13;
  *(v12 + 48) = v22;
  *(v12 + 56) = v11;
  v14 = sub_2428B2F58();

  return v14;
}

uint64_t sub_24285D110()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D08, &qword_2428BF340);
  v1 = *(v0 - 8);
  v16 = v0;
  v17 = v1;
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D10, &qword_2428BF348);
  MEMORY[0x28223BE20](v4);
  sub_24282259C();
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2427E3430();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v15 = sub_2428B2F68();
  v5 = v16;
  v13 = *(v17 + 8);
  v17 += 8;
  v13(v3, v16);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v14 = sub_2428B2F68();
  v6 = v13;
  v13(v3, v5);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v7 = sub_2428B2F68();
  v6(v3, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D18, &qword_2428BF350);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2428B9770;
  v9 = v14;
  *(v8 + 32) = v15;
  *(v8 + 40) = v9;
  *(v8 + 48) = v7;
  v10 = sub_2428B2F58();

  return v10;
}

uint64_t sub_24285D5AC(uint64_t a1)
{
  v21 = a1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3CF0, &qword_2428BF300);
  v22 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v2 = v14 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3CF8, &qword_2428BF308);
  MEMORY[0x28223BE20](v3);
  sub_242822548();
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  v14[1] = sub_24280A89C();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v4 = sub_2428B2F68();
  v5 = *(v22 + 8);
  v18 = v4;
  v19 = v5;
  v22 += 8;
  v6 = v20;
  v5(v2, v20);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  swift_getKeyPath();
  v16 = sub_24285FE40();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v17 = sub_2428B2F68();
  v7 = v19;
  v19(v2, v6);
  sub_2428B3008();
  v14[0] = "Create a calendar named ";
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v15 = sub_2428B2F68();
  v8 = v20;
  v7(v2, v20);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v9 = sub_2428B2F68();
  v19(v2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D00, &qword_2428BF310);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2428B7E80;
  v11 = v17;
  *(v10 + 32) = v18;
  *(v10 + 40) = v11;
  *(v10 + 48) = v15;
  *(v10 + 56) = v9;
  v12 = sub_2428B2F58();

  return v12;
}

uint64_t sub_24285DB7C(uint64_t *a1, uint64_t *a2)
{
  sub_24283C3FC(*a1, a1[1], a1[2], a1[3]);
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2DD8();
}

uint64_t sub_24285DC04()
{
  v0 = sub_2428B2FC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_24280A89C();
  sub_2428B2F38();

  sub_242822548();
  sub_2428B2FB8();
  v4 = sub_2428B2FA8();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_24285FE40();
  sub_2428B2F38();

  sub_2428B2FB8();
  v6 = sub_2428B2FA8();
  v5(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C48, &qword_2428BF178);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2428B7940;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = sub_2428B2F98();

  return v8;
}

uint64_t sub_24285DDF4()
{
  v0 = sub_2428B2F88();
  v1 = sub_2428B2F88();
  v2 = sub_2428B2F88();
  v3 = sub_2428B2F88();
  v4 = sub_2428B2F88();
  v5 = sub_2428B2F88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C50, &qword_2428BF180);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2428BF090;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = sub_2428B2F78();

  return v7;
}

uint64_t sub_24285DF18(uint64_t a1)
{
  v11[1] = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3CC8, &qword_2428BF290);
  v1 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v3 = v11 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3CD0, &qword_2428BF298);
  MEMORY[0x28223BE20](v4);
  sub_242801870();
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_24285FDBC();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v12 = sub_2428B2F68();
  v5 = *(v1 + 8);
  v6 = v13;
  v5(v3, v13);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v7 = sub_2428B2F68();
  v5(v3, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3CD8, &qword_2428BF2A0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2428B7940;
  *(v8 + 32) = v12;
  *(v8 + 40) = v7;
  v9 = sub_2428B2F58();

  return v9;
}

uint64_t sub_24285E2B8(uint64_t a1, uint64_t a2)
{
  v2 = sub_2428B2F88();
  v3 = sub_2428B2F88();
  v4 = sub_2428B2F88();
  v5 = sub_2428B2F88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C50, &qword_2428BF180);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2428B7E80;
  *(v6 + 32) = v2;
  *(v6 + 40) = v3;
  *(v6 + 48) = v4;
  *(v6 + 56) = v5;
  v7 = sub_2428B2F78();

  return v7;
}

uint64_t sub_24285E384()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3CA0, &qword_2428BF248);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3CA8, &qword_2428BF250);
  MEMORY[0x28223BE20](v4);
  sub_24285FC3C();
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2427C28E0();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v5 = sub_2428B2F68();
  (*(v1 + 8))(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3CB0, &qword_2428BF258);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2428B5D50;
  *(v6 + 32) = v5;
  v7 = sub_2428B2F58();

  return v7;
}

uint64_t sub_24285E618()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C88, &qword_2428BF208);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C90, &qword_2428BF210);
  MEMORY[0x28223BE20](v4);
  sub_2427CC4C0();
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2427C28E0();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v5 = sub_2428B2F68();
  (*(v1 + 8))(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C98, &qword_2428BF218);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2428B5D50;
  *(v6 + 32) = v5;
  v7 = sub_2428B2F58();

  return v7;
}

uint64_t sub_24285E8B4(uint64_t a1)
{
  v11[1] = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C70, &qword_2428BF1C8);
  v1 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v3 = v11 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C78, &qword_2428BF1D0);
  MEMORY[0x28223BE20](v4);
  sub_24285FC90();
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2427C28E0();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v12 = sub_2428B2F68();
  v5 = *(v1 + 8);
  v6 = v13;
  v5(v3, v13);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v7 = sub_2428B2F68();
  v5(v3, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C80, &qword_2428BF1D8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2428B7940;
  *(v8 + 32) = v12;
  *(v8 + 40) = v7;
  v9 = sub_2428B2F58();

  return v9;
}

uint64_t sub_24285ECBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C58, &qword_2428BF188);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C60, &qword_2428BF190);
  MEMORY[0x28223BE20](v8);
  sub_2427D28F4();
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_24285FCE4();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v9 = sub_2428B2F68();
  (*(v5 + 8))(v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C68, &qword_2428BF198);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2428B5D50;
  *(v10 + 32) = v9;
  v11 = sub_2428B2F58();

  return v11;
}

uint64_t sub_24285EF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2428B2FC8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_24285FCE4();
  sub_2428B2F38();

  sub_2427D28F4();
  sub_2428B2FB8();
  v7 = sub_2428B2FA8();
  v8 = *(v4 + 8);
  v8(v6, v3);
  swift_getKeyPath();
  sub_24285FD38();
  sub_2428B2F38();

  sub_2428B2FB8();
  v9 = sub_2428B2FA8();
  v8(v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C48, &qword_2428BF178);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2428B7940;
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;
  v11 = sub_2428B2F98();

  return v11;
}

uint64_t sub_24285F180()
{
  v0 = sub_2428B2F88();
  v1 = sub_2428B2F88();
  v2 = sub_2428B2F88();
  v3 = sub_2428B2F88();
  v4 = sub_2428B2F88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C50, &qword_2428BF180);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2428BC390;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = sub_2428B2F78();

  return v6;
}

uint64_t sub_24285F2C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_2428B2F88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C50, &qword_2428BF180);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2428B5D50;
  *(v3 + 32) = v2;
  v4 = sub_2428B2F78();

  return v4;
}

uint64_t sub_24285F348()
{
  if (qword_27ECC1880 != -1)
  {
    swift_once();
  }

  return sub_2428B3218();
}

uint64_t sub_24285F3B4()
{
  v0 = sub_2428B3048();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  HighlightEventIntent.init()(&v29);
  v27 = v29;
  *&v28 = v30;
  sub_2427F2520();
  sub_2428B3058();
  v26 = sub_2428B3038();
  v4 = *(v1 + 8);
  v4(v3, v0);
  OpenCalendarViewIntent.init()(&v29);
  v27 = v29;
  sub_24285FBE8();
  sub_2428B3058();
  v25 = sub_2428B3038();
  v4(v3, v0);
  OpenDateIntent.init()(&v29);
  v27 = v29;
  sub_24283252C();
  sub_2428B3058();
  v24 = sub_2428B3038();
  v4(v3, v0);
  OpenEventDetailsIntent.init()(&v29);
  v27 = v29;
  v28 = v30;
  sub_242822644();
  sub_2428B3058();
  v23 = sub_2428B3038();
  v4(v3, v0);
  OpenEventEditorIntent.init()(&v29);
  v27 = v29;
  sub_2427E4AF0();
  sub_2428B3058();
  v22 = sub_2428B3038();
  v4(v3, v0);
  OpenCalendarEditorIntent.init()(&v29);
  v27 = v29;
  v28 = v30;
  sub_24282259C();
  sub_2428B3058();
  v21 = sub_2428B3038();
  v4(v3, v0);
  CreateCalendarIntent.init()(&v29);
  v27 = v29;
  *&v28 = v30;
  sub_242822548();
  sub_2428B3058();
  v20 = sub_2428B3038();
  v4(v3, v0);
  DeleteCalendarsIntent.init()(&v29);
  v27 = v29;
  *&v28 = v30;
  sub_242801870();
  sub_2428B3058();
  v19 = sub_2428B3038();
  v4(v3, v0);
  JoinEventIntent.init()(&v29);
  v27 = v29;
  sub_24285FC3C();
  sub_2428B3058();
  v18 = sub_2428B3038();
  v4(v3, v0);
  EmailOrganizerIntent.init()(&v29);
  v27 = v29;
  *&v28 = v30;
  sub_2427CC4C0();
  sub_2428B3058();
  v5 = sub_2428B3038();
  v4(v3, v0);
  EmailAttendeesIntent.init()(&v29);
  v27 = v29;
  *&v28 = v30;
  sub_24285FC90();
  sub_2428B3058();
  v6 = sub_2428B3038();
  v4(v3, v0);
  RespondToInboxItemIntent.init()(&v29);
  v27 = v29;
  *&v28 = v30;
  sub_2427D28F4();
  sub_2428B3058();
  v7 = sub_2428B3038();
  v4(v3, v0);
  RespondToInboxItemIntent.init()(&v29);
  v27 = v29;
  *&v28 = v30;
  sub_2428B3058();
  v8 = sub_2428B3038();
  v4(v3, v0);
  RespondToInboxItemIntent.init()(&v29);
  v27 = v29;
  *&v28 = v30;
  sub_2428B3058();
  v9 = sub_2428B3038();
  v4(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C30, &qword_2428BF118);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2428BF0A0;
  v11 = v25;
  *(v10 + 32) = v26;
  *(v10 + 40) = v11;
  v12 = v23;
  *(v10 + 48) = v24;
  *(v10 + 56) = v12;
  v13 = v21;
  *(v10 + 64) = v22;
  *(v10 + 72) = v13;
  v14 = v19;
  *(v10 + 80) = v20;
  *(v10 + 88) = v14;
  *(v10 + 96) = v18;
  *(v10 + 104) = v5;
  *(v10 + 112) = v6;
  *(v10 + 120) = v7;
  *(v10 + 128) = v8;
  *(v10 + 136) = v9;
  v15 = sub_2428B3028();

  return v15;
}

unint64_t sub_24285FBE8()
{
  result = qword_27ECC3C20;
  if (!qword_27ECC3C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3C20);
  }

  return result;
}

unint64_t sub_24285FC3C()
{
  result = qword_27ECC3C28;
  if (!qword_27ECC3C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3C28);
  }

  return result;
}

unint64_t sub_24285FC90()
{
  result = qword_27ECC43A0;
  if (!qword_27ECC43A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC43A0);
  }

  return result;
}

unint64_t sub_24285FCE4()
{
  result = qword_280CDDE80;
  if (!qword_280CDDE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDE80);
  }

  return result;
}

unint64_t sub_24285FD38()
{
  result = qword_27ECC3C38;
  if (!qword_27ECC3C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC3C40, &qword_2428BF170);
    sub_2427D2CB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3C38);
  }

  return result;
}

unint64_t sub_24285FDBC()
{
  result = qword_27ECC3CB8;
  if (!qword_27ECC3CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC3CC0, &qword_2428BF288);
    sub_2427E3430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3CB8);
  }

  return result;
}

unint64_t sub_24285FE40()
{
  result = qword_27ECC3CE0;
  if (!qword_27ECC3CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC3CE8, &qword_2428BF2F8);
    sub_2428340A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3CE0);
  }

  return result;
}

unint64_t sub_24285FEC4()
{
  result = qword_27ECC2768;
  if (!qword_27ECC2768)
  {
    sub_2428B3688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2768);
  }

  return result;
}

uint64_t sub_24285FF24()
{
  v0 = sub_2428B3338();
  __swift_allocate_value_buffer(v0, qword_27ECC3D98);
  __swift_project_value_buffer(v0, qword_27ECC3D98);
  return sub_2428B3318();
}

uint64_t static LocationSearchResultsEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1888 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3D98);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static LocationSearchResultsEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27ECC1888 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3D98);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static LocationSearchResultsEntity.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC1888 != -1)
  {
    swift_once();
  }

  v1 = sub_2428B3338();
  __swift_project_value_buffer(v1, qword_27ECC3D98);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2428601D0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1888 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3D98);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_242860290(uint64_t a1)
{
  if (qword_27ECC1888 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3D98);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t LocationSearchResultsEntity.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2428B4188();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t static LocationSearchResultsEntity.transferRepresentation.getter()
{
  v0 = sub_2428B4418();
  MEMORY[0x28223BE20](v0 - 8);
  sub_2428B4408();
  type metadata accessor for LocationSearchResultsEntity(0);
  sub_242860DD4(&qword_27ECC3DB0, type metadata accessor for LocationSearchResultsEntity, &protocol conformance descriptor for LocationSearchResultsEntity);
  return sub_2428B41A8();
}

uint64_t sub_2428604E0()
{
  sub_2428B3498();
  swift_allocObject();
  sub_2428B3488();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3BF0, &unk_2428BEF00);
  sub_242860D20();
  v1 = sub_2428B3478();
  v3 = v2;

  v4 = *(v0 + 8);

  return v4(v1, v3);
}

uint64_t type metadata accessor for LocationSearchResultsEntity(uint64_t a1)
{
  result = qword_27ECC3E18;
  if (!qword_27ECC3E18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242860690@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2428B4188();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_242860718(uint64_t a1, uint64_t a2)
{
  v2 = sub_2428B4418();
  MEMORY[0x28223BE20](v2 - 8);
  sub_2428B4408();
  return sub_2428B41A8();
}

uint64_t sub_2428608E0(uint64_t a1)
{
  v2 = sub_242860DD4(&qword_27ECC3E38, type metadata accessor for LocationSearchResultsEntity, &protocol conformance descriptor for LocationSearchResultsEntity);

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_242860A34(uint64_t a1)
{
  sub_242860DD4(&qword_27ECC3E38, type metadata accessor for LocationSearchResultsEntity, &protocol conformance descriptor for LocationSearchResultsEntity);

  return sub_2428B28C8();
}

uint64_t sub_242860AF4(uint64_t a1)
{
  v2 = sub_242860DD4(&qword_27ECC3DB8, type metadata accessor for LocationSearchResultsEntity, &protocol conformance descriptor for LocationSearchResultsEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_242860BB8(uint64_t a1)
{
  v2 = sub_242860DD4(&qword_27ECC3DF8, type metadata accessor for LocationSearchResultsEntity, &protocol conformance descriptor for LocationSearchResultsEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

void sub_242860C5C(uint64_t a1)
{
  sub_242860CC8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_242860CC8(uint64_t a1)
{
  if (!qword_280CDDA48)
  {
    sub_2428B4188();
    v1 = sub_2428B48F8();
    if (!v2)
    {
      atomic_store(v1, &qword_280CDDA48);
    }
  }
}

unint64_t sub_242860D20()
{
  result = qword_27ECC3E40;
  if (!qword_27ECC3E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC3BF0, &unk_2428BEF00);
    sub_242860DD4(&qword_27ECC3E48, MEMORY[0x277CF7C30], MEMORY[0x277CF7C38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3E40);
  }

  return result;
}

uint64_t sub_242860DD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CalendarLinkError.localizedStringResource.getter@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = sub_2428B3568();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = sub_2428B36C8();
  MEMORY[0x28223BE20](v12 - 8);
  v27 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2428B3558();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2428B45F8();
  MEMORY[0x28223BE20](v18 - 8);
  v19 = *v1;
  switch(v19 >> 3)
  {
    case 1u:
      sub_2428B4578();
      if (qword_27ECC1780 != -1)
      {
        swift_once();
      }

      v23 = __swift_project_value_buffer(v14, qword_27ECD4500);
      (*(v15 + 16))(v17, v23, v14);
      sub_2428B36B8();
      sub_2428B3588();
      return (*(v3 + 32))(v26, v9, v2);
    case 2u:
      if (v19)
      {
        sub_2428B4578();
        if (qword_27ECC1780 == -1)
        {
          goto LABEL_60;
        }
      }

      else
      {
        sub_2428B4578();
        if (qword_27ECC1780 == -1)
        {
          goto LABEL_60;
        }
      }

      swift_once();
LABEL_60:
      v20 = __swift_project_value_buffer(v14, qword_27ECD4500);
      (*(v15 + 16))(v17, v20, v14);
      sub_2428B36B8();
      sub_2428B3588();
      return (*(v3 + 32))(v26, v6, v2);
    case 3u:
      if (v19 == 24)
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      else
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      goto LABEL_82;
    case 4u:
      if (v19 == 32)
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      else
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      goto LABEL_82;
    case 5u:
      if (v19 == 40)
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      else
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      goto LABEL_82;
    case 6u:
      if (v19 == 48)
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      else
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      goto LABEL_82;
    case 7u:
      if (v19 == 56)
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      else
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      goto LABEL_82;
    case 8u:
      if (v19 == 64)
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      else
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      goto LABEL_82;
    case 9u:
      if (v19 == 72)
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      else
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      goto LABEL_82;
    case 0xAu:
      if (v19 == 80)
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      else
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      goto LABEL_82;
    case 0xBu:
      if (v19 == 88)
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      else
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      goto LABEL_82;
    case 0xCu:
      if (v19 == 96)
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      else
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      goto LABEL_82;
    case 0xDu:
      if (v19 == 104)
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      else
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      goto LABEL_82;
    case 0xEu:
      if (v19 == 112)
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      else
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      goto LABEL_82;
    case 0xFu:
      if (v19 == 120)
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      else
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      goto LABEL_82;
    case 0x10u:
      if (v19 == 128)
      {
        sub_2428B4578();
        if (qword_27ECC1780 == -1)
        {
          goto LABEL_82;
        }
      }

      else
      {
        sub_2428B4578();
        if (qword_27ECC1780 == -1)
        {
          goto LABEL_82;
        }
      }

LABEL_93:
      swift_once();
LABEL_82:
      v24 = __swift_project_value_buffer(v14, qword_27ECD4500);
      (*(v15 + 16))(v17, v24, v14);
      sub_2428B36B8();
      return sub_2428B3588();
    default:
      sub_2428B4578();
      if (qword_27ECC1780 != -1)
      {
        swift_once();
      }

      v22 = __swift_project_value_buffer(v14, qword_27ECD4500);
      (*(v15 + 16))(v17, v22, v14);
      sub_2428B36B8();
      sub_2428B3588();
      return (*(v3 + 32))(v26, v11, v2);
  }
}

uint64_t getEnumTagSinglePayload for CalendarLinkError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x70)
  {
    goto LABEL_17;
  }

  if (a2 + 144 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 144) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 144;
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

      return (*a1 | (v4 << 8)) - 144;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 144;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 3) & 0xFFFFFF9F | (32 * ((*a1 >> 1) & 3))) ^ 0x7F;
  if (v6 >= 0x6F)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for CalendarLinkError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 144 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 144) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x70)
  {
    v4 = 0;
  }

  if (a2 > 0x6F)
  {
    v5 = ((a2 - 112) >> 8) + 1;
    *result = a2 - 112;
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
    *result = 2 * (((-a2 >> 5) & 3) - 4 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24286287C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x17)
  {
    return v1 >> 3;
  }

  else
  {
    return (v1 & 1 | (2 * (v1 >> 3))) - 3;
  }
}

_BYTE *sub_2428628AC(_BYTE *result, unsigned int a2)
{
  if (a2 < 3)
  {
    *result = *result & 1 | (8 * a2);
  }

  else
  {
    *result = ((a2 - 3) & 1 | (8 * ((a2 - 3) >> 1))) + 24;
  }

  return result;
}

uint64_t sub_2428628F0()
{
  v0 = sub_2428B3338();
  __swift_allocate_value_buffer(v0, qword_27ECC3E50);
  __swift_project_value_buffer(v0, qword_27ECC3E50);
  return sub_2428B3318();
}

uint64_t static Span.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1890 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3E50);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static Span.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27ECC1890 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3E50);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static Span.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC1890 != -1)
  {
    swift_once();
  }

  v1 = sub_2428B3338();
  __swift_project_value_buffer(v1, qword_27ECC3E50);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_242862B90@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1890 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3E50);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_242862C50(uint64_t a1)
{
  if (qword_27ECC1890 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3E50);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_242862D18()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v23 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v23 - v4;
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B3558();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2428B45F8();
  MEMORY[0x28223BE20](v11 - 8);
  v36 = sub_2428B3568();
  v30 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v26 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3E80, &unk_2428BFB18);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2F68, &qword_2428BB688);
  v14 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
  v34 = *(*(v13 - 8) + 72);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2428B9770;
  v25 = v15;
  v33 = v13;
  v35 = (v15 + v14);
  *v35 = 0;
  sub_2428B4578();
  if (qword_27ECC1780 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v7, qword_27ECD4500);
  v31 = *(v8 + 16);
  v32 = v16;
  v31(v10, v16, v7);
  sub_2428B36B8();
  sub_2428B3588();
  v30 = *(v30 + 56);
  (v30)(v5, 1, 1, v36);
  v28 = sub_2428B3148();
  v17 = *(v28 - 8);
  v27 = *(v17 + 56);
  v24 = v7;
  v29 = v17 + 56;
  v27(v2, 1, 1, v28);
  v18 = v35;
  sub_2428B3178();
  v23[0] = v2;
  v23[1] = *(v33 + 48);
  v18[v34] = 1;
  sub_2428B4578();
  v31(v10, v32, v7);
  sub_2428B36B8();
  sub_2428B3588();
  (v30)(v5, 1, 1, v36);
  v19 = v23[0];
  v27(v23[0], 1, 1, v28);
  sub_2428B3178();
  v20 = &v35[2 * v34];
  v34 = *(v33 + 48);
  *v20 = 2;
  sub_2428B4578();
  v31(v10, v32, v24);
  sub_2428B36B8();
  sub_2428B3588();
  (v30)(v5, 1, 1, v36);
  v27(v19, 1, 1, v28);
  sub_2428B3178();
  v21 = sub_242821F14(v25);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27ECC3E68 = v21;
  return result;
}

uint64_t static Span.caseDisplayRepresentations.getter()
{
  if (qword_27ECC1898 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_2428B3218();
}

uint64_t static Span.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_27ECC1898 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECC3E68 = a1;
}

uint64_t (*static Span.caseDisplayRepresentations.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC1898 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242863508@<X0>(void *a1@<X8>)
{
  if (qword_27ECC1898 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27ECC3E68;
  return sub_2428B3218();
}

uint64_t sub_242863588(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27ECC1898;
  sub_2428B3218();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECC3E68 = v1;
}

CalendarLink::Span_optional __swiftcall Span.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2428B4BB8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Span.rawValue.getter()
{
  v1 = 0x657275747566;
  if (*v0 != 1)
  {
    v1 = 7105633;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1936287860;
  }
}

uint64_t sub_2428636C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x657275747566;
  if (v2 != 1)
  {
    v4 = 7105633;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1936287860;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x657275747566;
  if (*a2 != 1)
  {
    v8 = 7105633;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1936287860;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2428B4BF8();
  }

  return v11 & 1;
}

unint64_t sub_2428637A8()
{
  result = qword_280CDDA68;
  if (!qword_280CDDA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDA68);
  }

  return result;
}

uint64_t sub_2428637FC()
{
  sub_2428B4C88();
  sub_2428B4678();

  return sub_2428B4CB8();
}

uint64_t sub_24286388C(uint64_t a1)
{
  sub_2428B4678();
}

uint64_t sub_242863908(uint64_t a1)
{
  sub_2428B4C88();
  sub_2428B4678();

  return sub_2428B4CB8();
}

void sub_2428639A0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x657275747566;
  if (v2 != 1)
  {
    v5 = 7105633;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1936287860;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_2428639F0()
{
  result = qword_280CDDAA8;
  if (!qword_280CDDAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDAA8);
  }

  return result;
}

unint64_t sub_242863A48()
{
  result = qword_280CDDA80;
  if (!qword_280CDDA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDA80);
  }

  return result;
}

unint64_t sub_242863AA0()
{
  result = qword_280CDDA60;
  if (!qword_280CDDA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDA60);
  }

  return result;
}

unint64_t sub_242863AF8()
{
  result = qword_280CDDA90;
  if (!qword_280CDDA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDA90);
  }

  return result;
}

unint64_t sub_242863B4C()
{
  result = qword_280CDDA88;
  if (!qword_280CDDA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDA88);
  }

  return result;
}

unint64_t sub_242863BA0()
{
  result = qword_280CDDAA0;
  if (!qword_280CDDAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDAA0);
  }

  return result;
}

unint64_t sub_242863BF8()
{
  result = qword_280CDDA98;
  if (!qword_280CDDA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDA98);
  }

  return result;
}

uint64_t sub_242863C9C(uint64_t a1)
{
  v2 = sub_24281E538();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_242863CEC()
{
  result = qword_280CDDA78;
  if (!qword_280CDDA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDA78);
  }

  return result;
}

unint64_t sub_242863D44()
{
  result = qword_280CDDA58;
  if (!qword_280CDDA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDA58);
  }

  return result;
}

unint64_t sub_242863D9C()
{
  result = qword_280CDDA70;
  if (!qword_280CDDA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDA70);
  }

  return result;
}

uint64_t sub_242863DF0()
{
  if (qword_27ECC1898 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_2428B3218();
}

uint64_t sub_242863E68(uint64_t a1)
{
  v2 = sub_242863BF8();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_242863EB8()
{
  result = qword_27ECC3E70;
  if (!qword_27ECC3E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC3E78, &qword_2428BFAB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3E70);
  }

  return result;
}

uint64_t sub_242863F60(uint64_t *a1, void *a2)
{
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B4338();
}

uint64_t sub_242863FC4(uint64_t a1)
{
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B4338();
}

uint64_t (*sub_242864020(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC3EA8);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t (*sub_2428640D0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC3EB0);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t (*sub_242864180(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC3EB8);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t (*sub_242864230(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC3EC0);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t (*sub_2428642E0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC3EC8);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t (*sub_242864390(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC3ED0);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t (*sub_242864440(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC3ED8);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t (*sub_2428644F0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC3EE0);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t (*sub_2428645A0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC3EE8);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t sub_242864638@<X0>(void *a3@<X8>)
{
  sub_2428B2F38();
  sub_2428B4328();

  *a3 = v5;
  return result;
}

uint64_t sub_24286468C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B4338();
}

uint64_t sub_2428646EC(void *a1)
{
  sub_2428B2F38();
  sub_2428B4328();

  return v2;
}

uint64_t sub_242864740(uint64_t a1, void *a2)
{
  sub_2428B2F38();
  sub_2428B4338();
}

uint64_t (*sub_242864788(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC3EF0);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t static RecurrenceRuleEntityRepresentation.instance(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - v6;
  type metadata accessor for RecurrenceRuleEntityRepresentation(0);
  sub_242866284(&qword_27ECC3EF8, type metadata accessor for RecurrenceRuleEntityRepresentation, &protocol conformance descriptor for RecurrenceRuleEntityRepresentation);
  v32 = sub_2428B41E8();
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_2428B48F8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  sub_2428B3F18();
  v13 = *(AssociatedTypeWitness - 8);
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v10 + 8))(v12, v9);
    AssociatedConformanceWitness = 0;
    v40 = 0u;
    v41 = 0u;
  }

  else
  {
    *(&v41 + 1) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v40);
    (*(v13 + 32))(boxed_opaque_existential_1, v12, AssociatedTypeWitness);
  }

  sub_2427E0918(&v40, &v38, &qword_27ECC3F00, &qword_2428BFB28);
  v15 = v33;
  if (v39)
  {
    sub_2427D3564(&v38, v36);
    type metadata accessor for RecurrenceEndEntityRepresentation(0);
    sub_242866284(&qword_27ECC3F28, type metadata accessor for RecurrenceEndEntityRepresentation, &protocol conformance descriptor for RecurrenceEndEntityRepresentation);
    v16 = sub_2428B41E8();
    __swift_project_boxed_opaque_existential_1(v36, v37);
    sub_2428B3EC8();
    sub_2427E0918(v7, v5, &qword_27ECC26F0, &unk_2428B7960);
    sub_2428B2F38();
    sub_2428B4338();

    sub_2427E0980(v7, &qword_27ECC26F0, &unk_2428B7960);
    __swift_project_boxed_opaque_existential_1(v36, v37);
    v34 = sub_2428B3EB8();
    v35 = 0;
    sub_2428B2F38();
    sub_2428B4338();

    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  else
  {
    v16 = 0;
  }

  sub_2427E0980(&v40, &qword_27ECC3F00, &qword_2428BFB28);
  v17 = v32;
  *&v40 = v16;
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B4338();

  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  v18 = sub_2428B3F78();
  if (v18 >= 4)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  LOBYTE(v40) = v19;
  sub_2428B2F38();
  sub_2428B4338();

  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  *&v40 = sub_2428B3F68();
  BYTE8(v40) = 0;
  sub_2428B2F38();
  sub_2428B4338();

  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  v20 = sub_2428B3F58();
  if (v21)
  {
    v22 = 7;
  }

  else
  {
    v22 = v20 - 1;
    if ((v20 - 1) >= 7)
    {
      goto LABEL_26;
    }
  }

  LOBYTE(v40) = v22;
  sub_2428B2F38();
  sub_2428B4338();

  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  if (sub_2428B3EF8())
  {
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3F08, &qword_2428BFB30);
    v23 = sub_2428B4AF8();

    v24 = *(v23 + 16);
    if (v24)
    {
      v36[0] = MEMORY[0x277D84F90];
      sub_2428B4AC8();
      v25 = type metadata accessor for RecurrenceDayOfWeekEntityRepresentation(0);
      v26 = 0;
      v27 = v23 + 32;
      do
      {
        if (v26 >= *(v23 + 16))
        {
          __break(1u);
LABEL_24:
          v30 = v25;
          type metadata accessor for EKWeekday(0);
          *&v38 = v30;
          while (1)
          {
            v20 = sub_2428B4C08();
            __break(1u);
LABEL_26:
            v31 = v20;
            type metadata accessor for EKWeekday(0);
            *&v40 = v31;
          }
        }

        sub_2427CBD84(v27, &v40);
        sub_242866284(&qword_27ECC3F10, type metadata accessor for RecurrenceDayOfWeekEntityRepresentation, &protocol conformance descriptor for RecurrenceDayOfWeekEntityRepresentation);
        sub_2428B41E8();
        __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
        v25 = sub_2428B4118();
        if ((v25 - 1) >= 7)
        {
          goto LABEL_24;
        }

        ++v26;
        LOBYTE(v38) = v25 - 1;
        sub_2428B2F38();
        sub_2428B4338();

        __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
        *&v38 = sub_2428B4128();
        BYTE8(v38) = 0;
        sub_2428B2F38();
        sub_2428B4338();

        __swift_destroy_boxed_opaque_existential_1(&v40);
        sub_2428B4AA8();
        sub_2428B4AD8();
        sub_2428B4AE8();
        v25 = sub_2428B4AB8();
        v27 += 40;
      }

      while (v24 != v26);

      v28 = v36[0];
      v17 = v32;
      v15 = v33;
    }

    else
    {

      v28 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v28 = 0;
  }

  *&v40 = v28;
  sub_2428B2F38();
  sub_2428B4338();

  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  *&v40 = sub_2428B3F28();
  sub_2428B2F38();
  sub_2428B4338();

  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  *&v40 = sub_2428B3F08();
  sub_2428B2F38();
  sub_2428B4338();

  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  *&v40 = sub_2428B3F38();
  sub_2428B2F38();
  sub_2428B4338();

  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  *&v40 = sub_2428B3F48();
  sub_2428B2F38();
  sub_2428B4338();

  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  *&v40 = sub_2428B3EE8();
  sub_2428B2F38();
  sub_2428B4338();

  return v17;
}

uint64_t static RecurrenceEndEntityRepresentation.instance(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  type metadata accessor for RecurrenceEndEntityRepresentation(0);
  sub_242866284(&qword_27ECC3F28, type metadata accessor for RecurrenceEndEntityRepresentation, &protocol conformance descriptor for RecurrenceEndEntityRepresentation);
  v8 = sub_2428B41E8();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2428B3EC8();
  sub_2427E0918(v7, v5, &qword_27ECC26F0, &unk_2428B7960);
  sub_2428B2F38();
  sub_2428B4338();

  sub_2427E0980(v7, &qword_27ECC26F0, &unk_2428B7960);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_2428B3EB8();
  v11 = 0;
  sub_2428B2F38();
  sub_2428B4338();

  return v8;
}

CalendarLink::RecurrenceRuleEntityRepresentation::FrequencyRepresentation __swiftcall RecurrenceRuleEntityRepresentation.FrequencyRepresentation.init(_:)(EKRecurrenceFrequency a1)
{
  if (a1 >= 4)
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

uint64_t RecurrenceRuleEntityRepresentation.WeekdayRepresentation.init(_:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if ((result - 1) >= 7)
  {
    type metadata accessor for EKWeekday(0);
    result = sub_2428B4C08();
    __break(1u);
  }

  else
  {
    *a2 = result - 1;
  }

  return result;
}

uint64_t static RecurrenceDayOfWeekEntityRepresentation.instance(from:)(void *a1)
{
  type metadata accessor for RecurrenceDayOfWeekEntityRepresentation(0);
  sub_242866284(&qword_27ECC3F10, type metadata accessor for RecurrenceDayOfWeekEntityRepresentation, &protocol conformance descriptor for RecurrenceDayOfWeekEntityRepresentation);
  v2 = sub_2428B41E8();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if ((sub_2428B4118() - 1) >= 7)
  {
    type metadata accessor for EKWeekday(0);
    result = sub_2428B4C08();
    __break(1u);
  }

  else
  {
    sub_2428B2F38();
    sub_2428B4338();

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2428B4128();
    sub_2428B2F38();
    sub_2428B4338();

    return v2;
  }

  return result;
}

uint64_t RecurrenceRuleEntityRepresentation.init(_:)(uint64_t a1)
{
  v3 = sub_2428B4238();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_27ECC3EA8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3F40, &qword_2428BFB38);
  swift_allocObject();
  *(v1 + v7) = sub_2428B4308();
  v8 = qword_27ECC3EB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3F48, &qword_2428BFB40);
  swift_allocObject();
  *(v1 + v8) = sub_2428B4308();
  v9 = qword_27ECC3EB8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3F50, &qword_2428BFB48);
  swift_allocObject();
  *(v1 + v9) = sub_2428B4308();
  v10 = qword_27ECC3EC0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3F58, &qword_2428BFB50);
  swift_allocObject();
  *(v1 + v10) = sub_2428B4308();
  v11 = qword_27ECC3EC8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3F60, &qword_2428BFB58);
  swift_allocObject();
  *(v1 + v11) = sub_2428B4308();
  v12 = qword_27ECC3ED0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3F68, &unk_2428BFB60);
  swift_allocObject();
  *(v1 + v12) = sub_2428B4308();
  v13 = qword_27ECC3ED8;
  swift_allocObject();
  *(v1 + v13) = sub_2428B4308();
  v14 = qword_27ECC3EE0;
  swift_allocObject();
  *(v1 + v14) = sub_2428B4308();
  v15 = qword_27ECC3EE8;
  swift_allocObject();
  *(v1 + v15) = sub_2428B4308();
  v16 = qword_27ECC3EF0;
  swift_allocObject();
  *(v1 + v16) = sub_2428B4308();
  (*(v4 + 16))(v6, a1, v3);
  v17 = sub_2428B4298();
  (*(v4 + 8))(a1, v3);
  return v17;
}

uint64_t sub_242865830()
{
}

uint64_t RecurrenceRuleEntityRepresentation.deinit()
{
  v0 = _s12CalendarLink41LocationSearchResultsEntityRepresentationCfd_0();

  return v0;
}

uint64_t RecurrenceRuleEntityRepresentation.__deallocating_deinit()
{
  RecurrenceRuleEntityRepresentation.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_242865A04(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_242865A64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_242865AB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

CalendarLink::RecurrenceRuleEntityRepresentation::FrequencyRepresentation_optional __swiftcall RecurrenceRuleEntityRepresentation.FrequencyRepresentation.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_242865BD8(uint64_t a1)
{
  v2 = sub_242868BAC();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_242865C14(uint64_t a1)
{
  v2 = sub_242868BAC();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_242865C50(uint64_t a1, uint64_t a2)
{
  v4 = sub_24286708C();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_242865C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242868BAC();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_242865D00(uint64_t a1, uint64_t a2)
{
  v4 = sub_24286708C();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

CalendarLink::RecurrenceRuleEntityRepresentation::WeekdayRepresentation_optional __swiftcall RecurrenceRuleEntityRepresentation.WeekdayRepresentation.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_242865E14(uint64_t a1)
{
  v2 = sub_242868B58();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_242865E50(uint64_t a1)
{
  v2 = sub_242868B58();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_242865E8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_242867378();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_242865ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242868B58();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_242865F3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_242867378();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_242865FC0()
{
  sub_2428B2F38();
  sub_2428B4328();
}

uint64_t sub_242866014(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_2427E0918(a1, &v10 - v7, &qword_27ECC26F0, &unk_2428B7960);
  sub_2427E0918(v8, v6, &qword_27ECC26F0, &unk_2428B7960);
  sub_2428B2F38();
  sub_2428B4338();

  return sub_2427E0980(v8, &qword_27ECC26F0, &unk_2428B7960);
}

uint64_t sub_242866124()
{
  sub_2428B2F38();
  sub_2428B4328();
}

uint64_t sub_242866174(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2427E0918(a1, &v5 - v3, &qword_27ECC26F0, &unk_2428B7960);
  sub_2428B2F38();
  sub_2428B4338();

  return sub_2427E0980(a1, &qword_27ECC26F0, &unk_2428B7960);
}

uint64_t sub_242866284(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t (*sub_2428662CC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC3F30);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t (*sub_24286637C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC3F38);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D4714;
}

uint64_t sub_2428664B4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_242866514(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_242866568(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t (*sub_2428665FC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC3F18);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t sub_242866694@<X0>(uint64_t a3@<X8>)
{
  sub_2428B2F38();
  sub_2428B4328();

  *a3 = v5;
  *(a3 + 8) = v6;
  return result;
}

uint64_t sub_2428666F0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_2428B2F38();
  sub_2428B4338();
}

uint64_t sub_242866754(void *a1)
{
  sub_2428B2F38();
  sub_2428B4328();

  return v2;
}

uint64_t sub_2428667AC(uint64_t a1, char a2, void *a3)
{
  sub_2428B2F38();
  sub_2428B4338();
}

uint64_t sub_24286681C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*sub_242866854(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC3F20);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t sub_242866910(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = sub_2428B4238();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v15 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  swift_allocObject();
  *(v14 + v15) = sub_2428B4308();
  v16 = *a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3F50, &qword_2428BFB48);
  swift_allocObject();
  *(v14 + v16) = sub_2428B4308();
  (*(v11 + 16))(v13, a1, v10);
  v17 = sub_2428B4298();
  (*(v11 + 8))(a1, v10);
  return v17;
}

uint64_t sub_242866AC8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v11 = sub_2428B4238();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  swift_allocObject();
  *(v5 + v15) = sub_2428B4308();
  v16 = *a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3F50, &qword_2428BFB48);
  swift_allocObject();
  *(v5 + v16) = sub_2428B4308();
  (*(v12 + 16))(v14, a1, v11);
  v17 = sub_2428B4298();
  (*(v12 + 8))(a1, v11);
  return v17;
}

uint64_t sub_242866C60(void *a1, void *a2)
{
}

uint64_t sub_242866CB8(void *a1, void *a2)
{
  v2 = _s12CalendarLink41LocationSearchResultsEntityRepresentationCfd_0();

  return v2;
}

uint64_t sub_242866D1C(void *a1, void *a2)
{
  _s12CalendarLink41LocationSearchResultsEntityRepresentationCfd_0();
  sub_2428B2F38();

  return swift_deallocClassInstance();
}

unint64_t sub_242866FDC()
{
  result = qword_27ECC3FC0;
  if (!qword_27ECC3FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3FC0);
  }

  return result;
}

unint64_t sub_242867034()
{
  result = qword_27ECC3FC8;
  if (!qword_27ECC3FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3FC8);
  }

  return result;
}

unint64_t sub_24286708C()
{
  result = qword_27ECC3FD0;
  if (!qword_27ECC3FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3FD0);
  }

  return result;
}

unint64_t sub_2428670E4()
{
  result = qword_27ECC3FD8;
  if (!qword_27ECC3FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3FD8);
  }

  return result;
}

unint64_t sub_24286713C()
{
  result = qword_27ECC3FE0;
  if (!qword_27ECC3FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3FE0);
  }

  return result;
}

unint64_t sub_2428671C0()
{
  result = qword_27ECC3FF8;
  if (!qword_27ECC3FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3FF8);
  }

  return result;
}

unint64_t sub_242867218()
{
  result = qword_27ECC4000;
  if (!qword_27ECC4000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4000);
  }

  return result;
}

unint64_t sub_242867270()
{
  result = qword_27ECC4008;
  if (!qword_27ECC4008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4008);
  }

  return result;
}

unint64_t sub_2428672C8()
{
  result = qword_27ECC4010;
  if (!qword_27ECC4010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4010);
  }

  return result;
}

unint64_t sub_242867320()
{
  result = qword_27ECC4018;
  if (!qword_27ECC4018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4018);
  }

  return result;
}

unint64_t sub_242867378()
{
  result = qword_27ECC4020;
  if (!qword_27ECC4020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4020);
  }

  return result;
}

unint64_t sub_2428673D0()
{
  result = qword_27ECC4028;
  if (!qword_27ECC4028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4028);
  }

  return result;
}

unint64_t sub_242867428()
{
  result = qword_27ECC4030;
  if (!qword_27ECC4030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4030);
  }

  return result;
}

unint64_t sub_2428674AC()
{
  result = qword_27ECC4048;
  if (!qword_27ECC4048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4048);
  }

  return result;
}

unint64_t sub_242867504()
{
  result = qword_27ECC4050;
  if (!qword_27ECC4050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4050);
  }

  return result;
}

unint64_t sub_24286755C()
{
  result = qword_27ECC4058;
  if (!qword_27ECC4058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4058);
  }

  return result;
}

uint64_t sub_2428679BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_242867A64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_242867B00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

unint64_t sub_242868B58()
{
  result = qword_27ECC4120;
  if (!qword_27ECC4120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4120);
  }

  return result;
}

unint64_t sub_242868BAC()
{
  result = qword_27ECC4128;
  if (!qword_27ECC4128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4128);
  }

  return result;
}

uint64_t static LocationEntityRepresentation.instance(from:)(void *a1)
{
  type metadata accessor for LocationEntityRepresentation(0);
  sub_24286915C(&qword_27ECC4130, type metadata accessor for LocationEntityRepresentation, &protocol conformance descriptor for LocationEntityRepresentation);
  v2 = sub_2428B41E8();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2428B3A38();
  sub_2428B2F38();
  sub_2428B4338();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_2428B3A58();
  v14 = v3;
  sub_2428B2F38();
  sub_2428B4338();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_2428B39F8();
  if (v4)
  {
    v5 = v4;
    type metadata accessor for LocationEntityRepresentation.GeoLocationEntityRepresentation(0);
    sub_24286915C(&qword_27ECC4170, type metadata accessor for LocationEntityRepresentation.GeoLocationEntityRepresentation, &protocol conformance descriptor for LocationEntityRepresentation.GeoLocationEntityRepresentation);
    sub_2428B41E8();
    [v5 coordinate];
    v13 = v6;
    LOBYTE(v15) = 0;
    sub_2428B2F38();
    sub_2428B4338();

    [v5 coordinate];
    sub_2428B2F38();
    sub_2428B4338();
  }

  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B4338();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2428B3A48();
  sub_2428B2F38();
  sub_2428B4338();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2428B3A08();
  sub_2428B2F38();
  sub_2428B4338();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2428B3A18();
  sub_2428B2F38();
  sub_2428B4338();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_2428B3A28();
  if (v8 >> 60 != 15)
  {
    v9 = v7;
    v10 = v8;
    sub_2428B3608();
    sub_242805E64(v9, v10);
  }

  sub_2428B2F38();
  sub_2428B4338();

  return v2;
}

uint64_t static LocationEntityRepresentation.GeoLocationEntityRepresentation.instance(from:)(void *a1)
{
  type metadata accessor for LocationEntityRepresentation.GeoLocationEntityRepresentation(0);
  sub_24286915C(&qword_27ECC4170, type metadata accessor for LocationEntityRepresentation.GeoLocationEntityRepresentation, &protocol conformance descriptor for LocationEntityRepresentation.GeoLocationEntityRepresentation);
  v2 = sub_2428B41E8();
  [a1 coordinate];
  v5 = v3;
  LOBYTE(v6) = 0;
  sub_2428B2F38();
  sub_2428B4338();

  [a1 coordinate];
  sub_2428B2F38();
  sub_2428B4338();

  return v2;
}

uint64_t sub_24286915C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t LocationEntityRepresentation.init(_:)(uint64_t a1)
{
  v3 = sub_2428B4238();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_27ECC4138;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1E40, &qword_2428B6580);
  swift_allocObject();
  *(v1 + v7) = sub_2428B4308();
  v8 = qword_27ECC4140;
  swift_allocObject();
  *(v1 + v8) = sub_2428B4308();
  v9 = qword_27ECC4148;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4188, &qword_2428C06B8);
  swift_allocObject();
  *(v1 + v9) = sub_2428B4308();
  v10 = qword_27ECC4150;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4190, &unk_2428C06C0);
  swift_allocObject();
  *(v1 + v10) = sub_2428B4308();
  v11 = qword_27ECC4158;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2A68, &qword_2428BA528);
  swift_allocObject();
  *(v1 + v11) = sub_2428B4308();
  v12 = qword_27ECC4160;
  swift_allocObject();
  *(v1 + v12) = sub_2428B4308();
  v13 = qword_27ECC4168;
  swift_allocObject();
  *(v1 + v13) = sub_2428B4308();
  (*(v4 + 16))(v6, a1, v3);
  v14 = sub_2428B4298();
  (*(v4 + 8))(a1, v3);
  return v14;
}

uint64_t sub_24286945C()
{
}

uint64_t LocationEntityRepresentation.deinit()
{
  v0 = _s12CalendarLink41LocationSearchResultsEntityRepresentationCfd_0();

  return v0;
}

uint64_t LocationEntityRepresentation.__deallocating_deinit()
{
  LocationEntityRepresentation.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2428695D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_242869638(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_24286968C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t LocationEntityRepresentation.GeoLocationEntityRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v2 = sub_2428B4238();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  v7 = qword_27ECC4178;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4190, &unk_2428C06C0);
  swift_allocObject();
  *(v6 + v7) = sub_2428B4308();
  v8 = qword_27ECC4180;
  swift_allocObject();
  *(v6 + v8) = sub_2428B4308();
  (*(v3 + 16))(v5, a1, v2);
  v9 = sub_2428B4298();
  (*(v3 + 8))(a1, v2);
  return v9;
}

uint64_t LocationEntityRepresentation.GeoLocationEntityRepresentation.init(_:)(uint64_t a1)
{
  v3 = sub_2428B4238();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_27ECC4178;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4190, &unk_2428C06C0);
  swift_allocObject();
  *(v1 + v7) = sub_2428B4308();
  v8 = qword_27ECC4180;
  swift_allocObject();
  *(v1 + v8) = sub_2428B4308();
  (*(v4 + 16))(v6, a1, v3);
  v9 = sub_2428B4298();
  (*(v4 + 8))(a1, v3);
  return v9;
}

uint64_t sub_242869A14()
{
}

uint64_t LocationEntityRepresentation.GeoLocationEntityRepresentation.deinit()
{
  v0 = _s12CalendarLink41LocationSearchResultsEntityRepresentationCfd_0();

  return v0;
}

uint64_t LocationEntityRepresentation.GeoLocationEntityRepresentation.__deallocating_deinit()
{
  _s12CalendarLink41LocationSearchResultsEntityRepresentationCfd_0();
  sub_2428B2F38();

  return swift_deallocClassInstance();
}

uint64_t sub_242869F1C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_242869FC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_24286A060(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

void SourceEntity.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v23 = a2;
  v22 = sub_2428B3558();
  v3 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_2428B3C08();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1;
  sub_2428B3C18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4270, &qword_2428B6EC8);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v22);
  sub_2428B3578();
  v14 = sub_2428B2D68();
  v15 = sub_2428B3BE8();
  v17 = v16;
  v18 = sub_2428B3BD8();
  v24 = sub_2428B3BF8();
  v25 = v19;
  sub_2428B2C78();
  (*(v10 + 8))(v12, v9);

  v20 = v23;
  *v23 = v15;
  v20[1] = v17;
  v20[2] = v18;
  v20[3] = v14;
}

uint64_t SourceEntity.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2428B3558();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2428B36C8();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_2428B45F8();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_2428B3568();
  MEMORY[0x28223BE20](v10 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4270, &qword_2428B6EC8);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v5 + 104))(v7, *MEMORY[0x277CC9110], v4);
  sub_2428B3578();
  a2[3] = sub_2428B2D68();
  *a2 = sub_2428B3BE8();
  a2[1] = v11;
  a2[2] = sub_2428B3BD8();
  v15[1] = sub_2428B3BF8();
  v15[2] = v12;
  sub_2428B2C78();
  v13 = sub_2428B3C08();
  return (*(*(v13 - 8) + 8))(a1, v13);
}

uint64_t sub_24286A788()
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
  __swift_allocate_value_buffer(v10, qword_27ECC4250);
  __swift_project_value_buffer(v10, qword_27ECC4250);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2428B3578();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2428B3328();
}

uint64_t static SourceEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC18A0 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4250);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t SourceEntity.displayRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_2428B3568();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  if (*(v0 + 16))
  {
    sub_2428B2C68();
    return sub_2428B3128();
  }

  else
  {
    type metadata accessor for LocalizedStringUtils();
    v10 = sub_2427F0F90();
    sub_2427EFCE4(v10);
    (*(v8 + 56))(v6, 1, 1, v7);
    v11 = sub_2428B3148();
    (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
    return sub_2428B3178();
  }
}

uint64_t sub_24286AD5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  sub_2428B2948();
  result = sub_2428B2918();
  qword_27ECC4268 = result;
  return result;
}

uint64_t static SourceEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECC18A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27ECC4268;
  return sub_2428B2F38();
}

uint64_t static SourceEntity.defaultQuery.setter(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27ECC18A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECC4268 = v1;
}

uint64_t (*static SourceEntity.defaultQuery.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC18A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_24286AF54@<X0>(void *a1@<X8>)
{
  if (qword_27ECC18A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27ECC4268;
  return sub_2428B2F38();
}

uint64_t sub_24286AFD4(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27ECC18A8;
  sub_2428B2F38();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECC4268 = v1;
}

uint64_t SourceEntity.id.getter()
{
  v1 = *v0;
  sub_2428B3218();
  return v1;
}

uint64_t SourceEntity.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_24286B114(uint64_t *a1, uint64_t a2)
{
  sub_2428B3218();
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2C78();
}

void (*SourceEntity.title.modify(uint64_t *a1))(void *a1)
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
  return sub_2427CC2B0;
}

uint64_t sub_24286B240@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_2428B3218();
}

uint64_t sub_24286B24C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC18A0 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4250);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24286B2F4(uint64_t a1)
{
  v2 = sub_242833FF8();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_24286B344(uint64_t a1)
{
  v2 = sub_24286B54C();

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_24286B394()
{
  result = qword_280CDE3B8;
  if (!qword_280CDE3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE3B8);
  }

  return result;
}

unint64_t sub_24286B3EC()
{
  result = qword_280CDE3A0;
  if (!qword_280CDE3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE3A0);
  }

  return result;
}

unint64_t sub_24286B444()
{
  result = qword_280CDE368;
  if (!qword_280CDE368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE368);
  }

  return result;
}

unint64_t sub_24286B4A0()
{
  result = qword_280CDE398;
  if (!qword_280CDE398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE398);
  }

  return result;
}

unint64_t sub_24286B4F4()
{
  result = qword_280CDE390;
  if (!qword_280CDE390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE390);
  }

  return result;
}

unint64_t sub_24286B54C()
{
  result = qword_280CDE380;
  if (!qword_280CDE380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE380);
  }

  return result;
}

unint64_t sub_24286B5A4()
{
  result = qword_27ECC4288;
  if (!qword_27ECC4288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC4290, &qword_2428C0C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4288);
  }

  return result;
}

unint64_t sub_24286B60C()
{
  result = qword_280CDE378;
  if (!qword_280CDE378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE378);
  }

  return result;
}

uint64_t sub_24286B660(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24286B6A8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_24286B73C@<X0>(uint64_t a2@<X8>)
{
  sub_2428B2F38();
  sub_2428B4328();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_24286B79C(uint64_t *a1, void *a2)
{
  sub_2428B2F38();
  sub_2428B4338();
}

uint64_t sub_24286B7F8()
{
  sub_2428B2F38();
  sub_2428B4328();

  return v1;
}

uint64_t sub_24286B848(uint64_t a1, char a2)
{
  sub_2428B2F38();
  sub_2428B4338();
}

uint64_t (*sub_24286B89C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC4298);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t sub_24286B934()
{
  sub_2428B2F38();
  sub_2428B4328();
}

uint64_t sub_24286B988(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_2427F95E0(a1, &v10 - v7);
  sub_2427F95E0(v8, v6);
  sub_2428B2F38();
  sub_2428B4338();

  return sub_242830FC0(v8);
}

uint64_t sub_24286BA70()
{
  sub_2428B2F38();
  sub_2428B4328();
}

uint64_t sub_24286BAC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2427F95E0(a1, &v5 - v3);
  sub_2428B2F38();
  sub_2428B4338();

  return sub_242830FC0(a1);
}

uint64_t (*sub_24286BB70(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC42A0);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t sub_24286BC08@<X0>(_BYTE *a2@<X8>)
{
  sub_2428B2F38();
  sub_2428B4328();

  *a2 = v4;
  return result;
}

uint64_t sub_24286BC60(char *a1, void *a2)
{
  sub_2428B2F38();
  sub_2428B4338();
}

uint64_t sub_24286BCB4()
{
  sub_2428B2F38();
  sub_2428B4328();

  return v1;
}

uint64_t sub_24286BD00(char a1)
{
  sub_2428B2F38();
  sub_2428B4338();
}

uint64_t (*sub_24286BD4C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC42A8);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D4714;
}

uint64_t static AlarmEntityRepresentation.instance(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v20 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v21 = &v18 - v5;
  v6 = sub_2428B3688();
  v19 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2428B39A8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for AlarmEntityRepresentation(0);
  sub_24286C960(&qword_27ECC42B0, &protocol conformance descriptor for AlarmEntityRepresentation);
  v13 = sub_2428B41E8();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2428B3888();
  v14 = (*(v10 + 88))(v12, v9);
  if (v14 == *MEMORY[0x277CF7B78])
  {
    (*(v10 + 96))(v12, v9);
    v22 = *v12;
    v23 = 0;
    sub_2428B2F38();
    sub_2428B4338();
  }

  else if (v14 == *MEMORY[0x277CF7B70])
  {
    (*(v10 + 96))(v12, v9);
    v15 = v19;
    (*(v19 + 32))(v8, v12, v6);
    v16 = v21;
    (*(v15 + 16))(v21, v8, v6);
    (*(v15 + 56))(v16, 0, 1, v6);
    sub_2427F95E0(v16, v20);
    sub_2428B2F38();
    sub_2428B4338();

    sub_242830FC0(v16);
    (*(v15 + 8))(v8, v6);
  }

  else
  {
    v22 = 0;
    v23 = 0;
    sub_2428B2F38();
    sub_2428B4338();

    (*(v10 + 8))(v12, v9);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  LOBYTE(v22) = sub_2428B3898() & 1;
  sub_2428B2F38();
  sub_2428B4338();

  return v13;
}