void sub_22F198724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t a7, uint64_t a8, char a9, char a10)
{
  v39 = a6;
  v14 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v15 = sub_22F740DF0();

  v16 = [v14 initWithEntityName_];

  [v16 setIncludesPropertyValues_];
  [v16 setResultType_];
  [v16 setPredicate_];
  v17 = *(a2 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  sub_22F120634(0, &qword_2810A9100, 0x277CBE448);
  v18 = sub_22F7417B0();
  if (v10)
  {
    goto LABEL_2;
  }

  v19 = v18;
  v20 = v39;
  sub_22F7416A0();
  if (v19 >> 62)
  {
    v21 = sub_22F741A00();
  }

  else
  {
    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v21 < 1)
  {

    sub_22F7416A0();
LABEL_2:

    return;
  }

  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_22F770DF0;
  *(v22 + 56) = MEMORY[0x277D837D0];
  *(v22 + 64) = sub_22F153470();
  *(v22 + 32) = 0x73656372756F73;
  *(v22 + 40) = 0xE700000000000000;
  *(v22 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1E38, &unk_22F7774D0);
  *(v22 + 104) = sub_22F16BC6C(&unk_27DAB1E40, &qword_27DAB1E38, &unk_22F7774D0, MEMORY[0x277CC9C50]);
  *(v22 + 72) = v19;
  v23 = sub_22F741560();
  v24 = v23;
  if (a5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_22F771350;
    *(v25 + 32) = v24;
    *(v25 + 40) = a5;
    v26 = a5;
    v27 = v24;
    v28 = v26;
    v29 = sub_22F741160();

    v30 = [objc_opt_self() andPredicateWithSubpredicates_];
  }

  else
  {
    v30 = v23;
  }

  v31 = v30;
  v36[0] = a7;
  v36[1] = a8;
  v37 = a9 & 1;
  v38 = a10 & 1;
  sub_22F197A4C(v17, v31, v36);
  v33 = v32;

  *v20 = v33;
}

void sub_22F198AF4(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v169 = a2;
  v173 = a1;
  v181[15] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1250, &qword_22F781A10);
  MEMORY[0x28223BE20](v6 - 8);
  v171 = v152 - v7;
  v170 = type metadata accessor for Song(0);
  v175 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v167 = v152 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v168 = (v152 - v10);
  MEMORY[0x28223BE20](v11);
  v172 = (v152 - v12);
  MEMORY[0x28223BE20](v13);
  v15 = v152 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v152 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v152 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = (v152 - v23);
  v25 = *a3;
  v26 = a3[1];
  v27 = a3[2];
  v28 = a3[3];
  v29 = v177;
  sub_22F741690();
  if (v29)
  {
    return;
  }

  v176 = v24;
  v177 = v21;
  v159 = v15;
  v160 = v18;
  LODWORD(v161) = v27;
  v156 = v28;
  v157 = v26;
  v162 = v25;
  v174 = 0;
  v158 = a4;
  v163 = sub_22F7416B0();
  v164 = v30;
  v31 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v32 = sub_22F740DF0();

  v165 = [v31 initWithEntityName_];

  v33 = *(v173 + 16);
  if (v33)
  {
    v34 = v173 + ((*(v175 + 80) + 32) & ~*(v175 + 80));
    v35 = *(v175 + 72);
    v36 = MEMORY[0x277D84F98];
    v37 = v176;
    v38 = v177;
    do
    {
      sub_22F1A39E0(v34, v37, type metadata accessor for Song);
      v40 = *v37;
      v39 = v37[1];
      sub_22F1A39E0(v37, v38, type metadata accessor for Song);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v181[0] = v36;
      v43 = sub_22F1229E8(v40, v39);
      v44 = v36[2];
      v45 = (v42 & 1) == 0;
      v46 = v44 + v45;
      if (__OFADD__(v44, v45))
      {
        __break(1u);
        goto LABEL_103;
      }

      v47 = v42;
      if (v36[3] >= v46)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22F134A90();
        }
      }

      else
      {
        sub_22F126640(v46, isUniquelyReferenced_nonNull_native);
        v48 = sub_22F1229E8(v40, v39);
        if ((v47 & 1) != (v49 & 1))
        {
          sub_22F7420C0();
          __break(1u);
          return;
        }

        v43 = v48;
      }

      v38 = v177;
      v36 = v181[0];
      if (v47)
      {
        sub_22F1A2A44(v177, *(v181[0] + 7) + v43 * v35);
      }

      else
      {
        *(v181[0] + (v43 >> 6) + 8) |= 1 << v43;
        v50 = (v36[6] + 16 * v43);
        *v50 = v40;
        v50[1] = v39;
        sub_22F1A3A48(v38, v36[7] + v43 * v35, type metadata accessor for Song);
        v51 = v36[2];
        v52 = __OFADD__(v51, 1);
        v53 = v51 + 1;
        if (v52)
        {
          __break(1u);
LABEL_105:

          sub_22F0FF590(v155);
          sub_22F1A3AB0(v47, type metadata accessor for Song);

          goto LABEL_100;
        }

        v36[2] = v53;
      }

      v37 = v176;
      sub_22F1A3AB0(v176, type metadata accessor for Song);
      v34 += v35;
      --v33;
    }

    while (v33);
  }

  else
  {
    v36 = MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v54 = v36;
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_22F770DF0;
  *(v55 + 56) = MEMORY[0x277D837D0];
  *(v55 + 64) = sub_22F153470();
  *(v55 + 32) = 0x44496D616461;
  *(v55 + 40) = 0xE600000000000000;
  v56 = *(v54 + 16);
  v177 = v54;
  if (!v56)
  {
    goto LABEL_19;
  }

  v57 = sub_22F10B348(v56, 0);
  v58 = sub_22F120B3C();
  v59 = v181[0];

  sub_22F0FF590(v59);
  if (v58 != v56)
  {
    __break(1u);
LABEL_19:
    v57 = MEMORY[0x277D84F90];
  }

  v60 = v165;
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  *(v55 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v55 + 104) = sub_22F16BC6C(&qword_2810A92D0, &qword_27DAB0E90, &qword_22F7714A0, MEMORY[0x277CC9C50]);
  *(v55 + 72) = v57;
  v61 = sub_22F741560();
  [v60 setPredicate_];

  v181[0] = 0;
  v62 = [v60 execute_];
  v63 = v181[0];
  if (!v62)
  {
    v70 = v181[0];
    sub_22F73F370();

    swift_willThrow();

    return;
  }

  v64 = v62;
  v65 = type metadata accessor for SongEntry();
  v66 = sub_22F741180();
  v67 = v63;

  v68 = v163;
  v69 = v174;
  sub_22F7416A0();
  v174 = v69;
  if (v69)
  {

    return;
  }

  v71 = sub_22F151908(v66);

  v181[0] = v71;

  v180 = sub_22F1534D0();
  v173 = v65;
  v152[1] = v71;
  if ((v71 & 0xC000000000000001) != 0)
  {
    sub_22F7419C0();
    sub_22F1A3328(&qword_2810A9520, type metadata accessor for SongEntry, MEMORY[0x277D85378]);
    sub_22F741470();
    v72 = v181[5];
    v73 = v181[6];
    v74 = v181[7];
    v75 = v181[8];
    v76 = v181[9];
  }

  else
  {
    v75 = 0;
    v77 = -1 << *(v71 + 32);
    v74 = ~v77;
    v73 = (v71 + 56);
    v78 = -v77;
    if (v78 < 64)
    {
      v79 = ~(-1 << v78);
    }

    else
    {
      v79 = -1;
    }

    v76 = (v79 & *(v71 + 56));
    v72 = v71;
  }

  v154 = v74;
  v80 = (v74 + 64) >> 6;
  v155 = v72;
  while ((v72 & 0x8000000000000000) == 0)
  {
    v81 = v75;
    v82 = v76;
    if (!v76)
    {
      while (1)
      {
        v75 = v81 + 1;
        if (__OFADD__(v81, 1))
        {
          break;
        }

        if (v75 >= v80)
        {
          goto LABEL_49;
        }

        v82 = v73[v75];
        ++v81;
        if (v82)
        {
          goto LABEL_39;
        }
      }

LABEL_107:
      __break(1u);
LABEL_108:

      sub_22F0FF590(v169);
      goto LABEL_100;
    }

LABEL_39:
    v76 = ((v82 - 1) & v82);
    v39 = *(*(v72 + 48) + ((v75 << 9) | (8 * __clz(__rbit64(v82)))));
    if (!v39)
    {
      goto LABEL_49;
    }

LABEL_43:
    v84 = [v39 adamID];
    if (v84)
    {
      v176 = v76;
      v85 = v84;
      v86 = sub_22F740E20();
      v88 = v87;

      sub_22F164408(v86, v88);

      if (v162 && (v89 = v177, *(v177 + 2)))
      {
        v153 = sub_22F1229E8(v86, v88);
        v91 = v90;

        if (v91)
        {
          v92 = v159;
          sub_22F1A39E0(*(v89 + 56) + *(v175 + 72) * v153, v159, type metadata accessor for Song);
          v93 = v92;
          v47 = v160;
          sub_22F1A3A48(v93, v160, type metadata accessor for Song);
          v94 = v174;
          sub_22F354A34(v47);
          v174 = v94;
          if (v94)
          {
            goto LABEL_105;
          }

          sub_22F1A3AB0(v47, type metadata accessor for Song);
        }
      }

      else
      {
      }

      v72 = v155;
      v76 = v176;
    }
  }

  v83 = sub_22F741A40();
  if (v83)
  {
    v178 = v83;
    swift_dynamicCast();
    v39 = v179;
    if (v179)
    {
      goto LABEL_43;
    }
  }

LABEL_49:
  sub_22F0FF590(v72);
  v95 = 0;
  v96 = 0;
  v97 = v180;
  v98 = 1 << *(v180 + 32);
  v99 = -1;
  if (v98 < 64)
  {
    v99 = ~(-1 << v98);
  }

  v100 = v180 + 56;
  v101 = v99 & *(v180 + 56);
  v176 = *(v180 + 16);
  v102 = (v98 + 63) >> 6;
LABEL_52:
  if (v101)
  {
    v103 = v101;
    v104 = v177;
    v52 = __OFADD__(v95++, 1);
    if (!v52)
    {
      goto LABEL_61;
    }

LABEL_110:
    __break(1u);
  }

  v104 = v177;
  v105 = v161;
  while (1)
  {
    v106 = v96 + 1;
    if (__OFADD__(v96, 1))
    {
      __break(1u);
      goto LABEL_107;
    }

    if (v106 >= v102)
    {
      break;
    }

    v103 = *(v100 + 8 * v106);
    ++v96;
    if (v103)
    {
      v96 = v106;
      v52 = __OFADD__(v95++, 1);
      if (v52)
      {
        goto LABEL_110;
      }

LABEL_61:
      v101 = (v103 - 1) & v103;
      if (*(v104 + 16))
      {
        v107 = (*(v97 + 48) + ((v96 << 10) | (16 * __clz(__rbit64(v103)))));
        v108 = *v107;
        v109 = v107[1];

        v110 = sub_22F1229E8(v108, v109);
        v80 = v111;

        if (v80)
        {
          v112 = *(v177 + 7) + *(v175 + 72) * v110;
          v113 = v168;
          sub_22F1A39E0(v112, v168, type metadata accessor for Song);
          v114 = v113;
          v36 = v172;
          sub_22F1A3A48(v114, v172, type metadata accessor for Song);
          v115 = v174;
          v116 = sub_22F3551DC(v169, v36);
          if (!v115)
          {
            v80 = v116;
            sub_22F10C6E4(&v179, v80);

            sub_22F741680();
            v174 = 0;
            sub_22F1A3AB0(v172, type metadata accessor for Song);

            goto LABEL_52;
          }

LABEL_103:

          sub_22F1A3AB0(v36, type metadata accessor for Song);

          return;
        }
      }

      goto LABEL_52;
    }
  }

  if ((v105 & 1) == 0)
  {
    v123 = v174;
    v124 = v164;
    v117 = v165;
    goto LABEL_99;
  }

  v117 = v165;
  v159 = v181[0];
  if ((v181[0] & 0xC000000000000001) != 0)
  {

    sub_22F7419C0();
    sub_22F1A3328(&qword_2810A9520, type metadata accessor for SongEntry, MEMORY[0x277D85378]);
    sub_22F741470();
    v119 = v181[10];
    v118 = v181[11];
    v120 = v181[12];
    v121 = v181[13];
    v122 = v181[14];
  }

  else
  {
    v125 = -1 << *(v181[0] + 32);
    v118 = v181[0] + 56;
    v120 = ~v125;
    v126 = -v125;
    if (v126 < 64)
    {
      v127 = ~(-1 << v126);
    }

    else
    {
      v127 = -1;
    }

    v122 = (v127 & *(v181[0] + 7));
    v121 = 0;
  }

  v160 = v120;
  v128 = (v120 + 64) >> 6;
  v168 = (v175 + 56);
  v161 = (v175 + 48);
  v169 = v119;
  while (2)
  {
    v172 = v121;
    if ((v119 & 0x8000000000000000) == 0)
    {
      v129 = v121;
      v130 = v122;
      if (!v122)
      {
        while (1)
        {
          v121 = v129 + 1;
          if (__OFADD__(v129, 1))
          {
            break;
          }

          if (v121 >= v128)
          {
            goto LABEL_98;
          }

          v130 = *&v118[8 * v121];
          ++v129;
          if (v130)
          {
            goto LABEL_80;
          }
        }

        __break(1u);
        goto LABEL_110;
      }

LABEL_80:
      v131 = (v130 - 1) & v130;
      v80 = *(*(v119 + 48) + ((v121 << 9) | (8 * __clz(__rbit64(v130)))));
      if (!v80)
      {
        goto LABEL_98;
      }

LABEL_84:
      v133 = [v80 adamID];
      if (!v133)
      {

        v122 = v131;
        continue;
      }

      v176 = v131;
      v134 = v133;
      v135 = sub_22F740E20();
      v137 = v136;

      v138 = v177;
      if (*(v177 + 2))
      {
        v139 = sub_22F1229E8(v135, v137);
        v141 = v140;

        if (v141)
        {
          v142 = *(v138 + 56) + *(v175 + 72) * v139;
          v143 = v171;
          sub_22F1A39E0(v142, v171, type metadata accessor for Song);
          v144 = 0;
LABEL_90:
          v145 = v176;
          v146 = v170;
          (*v168)(v143, v144, 1, v170);
          v147 = (*v161)(v143, 1, v146);
          v117 = v165;
          if (v147)
          {

            sub_22F120ADC(v143, &qword_27DAB1250, &qword_22F781A10);
            v122 = v145;
          }

          else
          {
            v148 = v167;
            sub_22F1A39E0(v143, v167, type metadata accessor for Song);
            sub_22F120ADC(v143, &qword_27DAB1250, &qword_22F781A10);
            v149 = *(v148 + *(v146 + 68));

            sub_22F1A3AB0(v148, type metadata accessor for Song);
            if (v149)
            {
              LOBYTE(v179) = v162;
              BYTE1(v179) = v157;
              BYTE2(v179) = 1;
              BYTE3(v179) = v156;
              v150 = v174;
              sub_22F2C5E90(v80, v149, &v179, *(v166 + OBJC_IVAR___PGMusicCache_managedObjectContext), v158);
              v174 = v150;
              if (v150)
              {
                goto LABEL_108;
              }

              type metadata accessor for SongPlaybackInfoEntry();
              sub_22F1A3328(&qword_27DAB1E10, type metadata accessor for SongPlaybackInfoEntry, MEMORY[0x277D85378]);
              v151 = sub_22F741410();

              [v80 setPlaybackInfo_];
            }

            else
            {
            }

            v122 = v176;
            v117 = v165;
          }

          v119 = v169;
          continue;
        }
      }

      else
      {
      }

      v144 = 1;
      v143 = v171;
      goto LABEL_90;
    }

    break;
  }

  v132 = sub_22F741A40();
  if (v132)
  {
    v178 = v132;
    swift_dynamicCast();
    v80 = v179;
    v131 = v122;
    if (v179)
    {
      goto LABEL_84;
    }
  }

LABEL_98:
  sub_22F0FF590(v119);
  v123 = v174;
  v124 = v164;
LABEL_99:
  sub_22F7416A0();

  if (v123)
  {
LABEL_100:
  }
}

uint64_t MusicCache.update(songs:progressReporter:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Song(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v45 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = (&v37 - v8);
  v9 = sub_22F740AD0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  isUniquelyReferenced_nonNull_native = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
LABEL_24:
    swift_once();
  }

  v13 = qword_2810A8E88;
  sub_22F740AC0();
  v42 = v13;
  sub_22F740A90();
  v16 = *(v10 + 8);
  v15 = v10 + 8;
  v14 = v16;
  v16(isUniquelyReferenced_nonNull_native, v9);
  v17 = a1[2];
  if (v17)
  {
    v37 = v14;
    v38 = isUniquelyReferenced_nonNull_native;
    v40 = v9;
    v41 = v2;
    v39 = v15;
    v2 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v18 = *(v5 + 72);
    v19 = MEMORY[0x277D84F98];
    v20 = v43;
    while (1)
    {
      v44 = v17;
      sub_22F1A39E0(v2, v20, type metadata accessor for Song);
      v10 = *v20;
      v5 = v20[1];
      sub_22F1A39E0(v20, v45, type metadata accessor for Song);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = v19;
      a1 = v19;
      v9 = sub_22F1229E8(v10, v5);
      v23 = v19[2];
      v24 = (v22 & 1) == 0;
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v26 = v22;
      if (v19[3] >= v25)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v19 = v46;
          if ((v22 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        else
        {
          a1 = &v46;
          sub_22F134A90();
          v19 = v46;
          if ((v26 & 1) == 0)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
        sub_22F126640(v25, isUniquelyReferenced_nonNull_native);
        a1 = v46;
        v27 = sub_22F1229E8(v10, v5);
        if ((v26 & 1) != (v28 & 1))
        {
          result = sub_22F7420C0();
          __break(1u);
          return result;
        }

        v9 = v27;
        v19 = v46;
        if ((v26 & 1) == 0)
        {
LABEL_13:
          v19[(v9 >> 6) + 8] |= 1 << v9;
          v29 = (v19[6] + 16 * v9);
          *v29 = v10;
          v29[1] = v5;
          sub_22F1A3A48(v45, v19[7] + v9 * v18, type metadata accessor for Song);
          v30 = v19[2];
          v31 = __OFADD__(v30, 1);
          v32 = v30 + 1;
          if (v31)
          {
            goto LABEL_23;
          }

          v19[2] = v32;

          goto LABEL_5;
        }
      }

      sub_22F1A2A44(v45, v19[7] + v9 * v18);
LABEL_5:
      v20 = v43;
      v21 = sub_22F1A3AB0(v43, type metadata accessor for Song);
      v2 += v18;
      v17 = v44 - 1;
      if (v44 == 1)
      {
        MEMORY[0x28223BE20](v21);
        *(&v37 - 2) = v19;
        *(&v37 - 1) = v33;
        v34 = v41;
        sub_22F7417A0();

        if (!v34)
        {
          sub_22F741730();
          v36 = v38;
          sub_22F740AC0();
          sub_22F740A90();
          return v37(v36, v40);
        }

        return result;
      }
    }
  }

  result = sub_22F7416A0();
  if (!v2)
  {
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    return v14(isUniquelyReferenced_nonNull_native, v9);
  }

  return result;
}

void sub_22F19A328(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v54[1] = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for Song(0);
  v49 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v44 - v9;
  v10 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v11 = sub_22F740DF0();

  v12 = [v10 initWithEntityName_];

  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22F770DF0;
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 64) = sub_22F153470();
  *(v13 + 32) = 0x44496D616461;
  *(v13 + 40) = 0xE600000000000000;

  v52 = a1;
  v14 = sub_22F1534D0();
  *(v13 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1608, &unk_22F772BB0);
  *(v13 + 104) = sub_22F16BC6C(&qword_2810A9240, &qword_27DAB1608, &unk_22F772BB0, MEMORY[0x277CC9C78]);
  *(v13 + 72) = v14;
  v15 = sub_22F741560();
  [v12 setPredicate_];

  v54[0] = 0;
  v16 = [v12 execute_];
  v17 = v54[0];
  if (v16)
  {
    v18 = v16;
    v45 = a2;
    v46 = v12;
    type metadata accessor for SongEntry();
    v19 = sub_22F741180();
    v20 = v17;

    if (v19 >> 62)
    {
      goto LABEL_22;
    }

    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v2; v21; i = v3)
    {
      v22 = 0;
      v53 = v19 & 0xC000000000000001;
      v50 = v19 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v53)
        {
          v23 = MEMORY[0x2319016F0](v22, v19);
        }

        else
        {
          if (v22 >= *(v50 + 16))
          {
            goto LABEL_21;
          }

          v23 = *(v19 + 8 * v22 + 32);
        }

        v24 = v23;
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        v26 = [v23 adamID];
        if (v26)
        {
          v27 = v26;
          v3 = v21;
          v28 = sub_22F740E20();
          v30 = v29;

          if (*(v52 + 16))
          {
            v31 = v28;
            v32 = v52;
            v33 = sub_22F1229E8(v31, v30);
            v35 = v34;

            if (v35)
            {
              v36 = *(v32 + 56) + *(v49 + 72) * v33;
              v37 = v48;
              sub_22F1A39E0(v36, v48, type metadata accessor for Song);
              v38 = v47;
              sub_22F1A3A48(v37, v47, type metadata accessor for Song);
              v39 = i;
              sub_22F354A34(v38);
              sub_22F1A3AB0(v38, type metadata accessor for Song);
              if (v39)
              {

                v12 = v24;
                goto LABEL_26;
              }

              i = 0;
            }
          }

          else
          {
          }

          v21 = v3;
        }

        ++v22;
        if (v25 == v21)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      v21 = sub_22F741A00();
    }

LABEL_23:

    v41 = *(v45 + OBJC_IVAR___PGMusicCache_managedObjectContext);
    v54[0] = 0;
    if ([v41 save_])
    {
      v42 = v54[0];

      return;
    }

    v43 = v54[0];
    sub_22F73F370();

    swift_willThrow();
    v12 = v46;
  }

  else
  {
    v40 = v54[0];
    sub_22F73F370();

    swift_willThrow();
  }

LABEL_26:
}

void MusicCache.removeSongs(withAdamIDs:progressReporter:)(uint64_t a1)
{
  v4 = sub_22F740AD0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v8 = *(v5 + 8);
  v8(v7, v4);
  sub_22F741690();
  if (!v2)
  {
    v9 = sub_22F7416D0();
    v15[1] = v15;
    MEMORY[0x28223BE20](v9);
    v15[-6] = a1;
    v15[-5] = v1;
    v11 = v10;
    v15[-4] = v10;
    v15[-3] = v12;
    v16 = v12;
    v14 = v13;
    v15[-2] = v13;
    sub_22F7417A0();
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();

    v8(v7, v4);
  }
}

void sub_22F19AAC4(uint64_t a1, uint64_t a2)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v5 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v6 = sub_22F740DF0();

  v7 = [v5 initWithEntityName_];

  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22F770DF0;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_22F153470();
  *(v8 + 32) = 0x44496D616461;
  *(v8 + 40) = 0xE600000000000000;
  *(v8 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1608, &unk_22F772BB0);
  *(v8 + 104) = sub_22F16BC6C(&qword_2810A9240, &qword_27DAB1608, &unk_22F772BB0, MEMORY[0x277CC9C78]);
  *(v8 + 72) = a1;

  v9 = sub_22F741560();
  [v7 setPredicate_];

  v10 = *(a2 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  type metadata accessor for SongEntry();
  v11 = sub_22F7417B0();
  if (v2)
  {

    return;
  }

  v12 = v11;
  sub_22F7416A0();
  v24 = v7;
  if (v12 >> 62)
  {
    goto LABEL_15;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
LABEL_5:
    v14 = 0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x2319016F0](v14, v12);
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_13:
          __break(1u);

          return;
        }
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_15:
          sub_22F741A00();
          v13 = sub_22F741A00();
          if (!v13)
          {
            break;
          }

          goto LABEL_5;
        }

        v15 = *(v12 + 8 * v14 + 32);
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_13;
        }
      }

      [v10 deleteObject_];
      sub_22F741680();

      ++v14;
    }

    while (v16 != v13);
  }

  v25[0] = 0;
  if ([v10 save_])
  {
    v17 = v25[0];
    sub_22F7416A0();
  }

  else
  {
    v18 = v25[0];
    v19 = sub_22F73F370();

    swift_willThrow();
    swift_getErrorValue();
    v20 = sub_22F7420F0();
    v22 = v21;
    sub_22F1A297C();
    swift_allocError();
    *v23 = v20;
    *(v23 + 8) = v22;
    *(v23 + 16) = 0;
    swift_willThrow();
  }
}

void MusicCache.write(songs:songSourceIdentifier:songSourceVersion:songSourceCategory:writeOptions:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, unsigned __int8 *a8)
{
  v41 = a7;
  v39 = a1;
  v40 = a6;
  v37 = a4;
  v38 = a5;
  v35 = a2;
  v36 = a3;
  v11 = sub_22F740AD0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a8;
  v33 = a8[1];
  v34 = v15;
  v16 = a8[2];
  v31 = a8[3];
  v32 = v16;
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v17 = *(v12 + 8);
  v17(v14, v11);
  sub_22F741690();
  if (!v9)
  {
    v18 = sub_22F7416E0();
    v20 = v19;
    v30[1] = v30;
    MEMORY[0x28223BE20](v18);
    v21 = v36;
    v30[-14] = v35;
    v30[-13] = v21;
    v22 = v37;
    v23 = v38;
    v30[-12] = v8;
    v30[-11] = v22;
    v24 = v40;
    v30[-10] = v23;
    v30[-9] = v24;
    v30[-8] = v41;
    v30[-7] = v25;
    v41 = v25;
    v30[-6] = v39;
    LOBYTE(v24) = v33;
    LOBYTE(v30[-5]) = v34;
    BYTE1(v30[-5]) = v24;
    LOBYTE(v24) = v31;
    BYTE2(v30[-5]) = v32;
    BYTE3(v30[-5]) = v24;
    v40 = v26;
    v30[-4] = v26;
    v30[-3] = v27;
    v28 = v27;
    v30[-2] = v29;
    sub_22F7417A0();
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();

    v17(v14, v11);
  }
}

void sub_22F19B1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, __int16 a11, uint64_t a12, uint64_t a13)
{
  v87 = a8;
  v81 = a6;
  v82 = a7;
  v79 = a4;
  v80 = a5;
  v88[1] = *MEMORY[0x277D85DE8];
  v16 = sub_22F73F690();
  v86 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v84 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v18 - 8);
  v83 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v73 - v21;
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_22F770DF0;
  v24 = MEMORY[0x277D837D0];
  *(v23 + 56) = MEMORY[0x277D837D0];
  v25 = sub_22F153470();
  *(v23 + 32) = 0x696669746E656469;
  *(v23 + 40) = 0xEA00000000007265;
  *(v23 + 96) = v24;
  *(v23 + 104) = v25;
  *(v23 + 64) = v25;
  *(v23 + 72) = a1;
  v26 = a1;
  *(v23 + 80) = a2;

  v27 = sub_22F741560();
  v28 = *(a3 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  (*(v86 + 56))(v22, 1, 1, v16);
  v29 = v85;
  sub_22F741690();
  if (v29)
  {
    v30 = v22;
LABEL_24:

    sub_22F120ADC(v30, &qword_27DAB0920, &qword_22F770B20);
    return;
  }

  v76 = v26;
  v77 = a2;
  v85 = v22;
  v78 = a3;
  v31 = v28;
  v32 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v33 = sub_22F740DF0();

  v34 = [v32 initWithEntityName_];

  [v34 setPredicate_];
  v35 = type metadata accessor for SongSourceEntry();
  v36 = sub_22F7417B0();
  v37 = v34;
  v75 = v31;
  v38 = v27;
  sub_22F741690();
  v27 = v37;
  v74 = 0;
  if (v36 >> 62)
  {
    if (sub_22F741A00())
    {
      goto LABEL_5;
    }
  }

  else if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    if ((v36 & 0xC000000000000001) != 0)
    {
      v39 = MEMORY[0x2319016F0](0, v36);
    }

    else
    {
      if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v39 = *(v36 + 32);
    }

    v40 = v39;

    v41 = v16;
    v30 = v85;
    v42 = v86;
    v43 = v84;
    goto LABEL_22;
  }

  v44 = objc_opt_self();

  v45 = sub_22F740DF0();

  v46 = v44;
  v47 = v75;
  v48 = [v46 entityForName:v45 inManagedObjectContext:v75];

  if (!v48)
  {
    sub_22F162D98();
    swift_allocError();
    swift_willThrow();

    v30 = v85;
    goto LABEL_24;
  }

  v40 = [objc_allocWithZone(v35) initWithEntity:v48 insertIntoManagedObjectContext:v47];

  v49 = sub_22F740DF0();
  [v40 setIdentifier_];

  if (v80)
  {
    v50 = sub_22F740DF0();
  }

  else
  {
    v50 = 0;
  }

  v51 = v83;
  [v40 setVersion_];

  v30 = v85;
  if (v82)
  {
    v52 = sub_22F740DF0();
  }

  else
  {
    v52 = 0;
  }

  v41 = v16;
  v42 = v86;
  [v40 setCategory_];

  sub_22F13BA9C(v30, v51, &qword_27DAB0920, &qword_22F770B20);
  v53 = (*(v42 + 48))(v51, 1, v16);
  v43 = v84;
  if (v53 == 1)
  {
    v54 = 0;
  }

  else
  {
    v54 = sub_22F73F5B0();
    (*(v42 + 8))(v51, v41);
  }

  [v40 setDate_];

  [v40 setGeohash_];
LABEL_22:
  sub_22F73F680();
  v55 = sub_22F73F5B0();
  (*(v42 + 8))(v43, v41);
  [v40 setDateLastUpdated_];

  v56 = v74;
  sub_22F7416A0();
  if (v56)
  {

    v27 = v37;
    goto LABEL_24;
  }

  sub_22F120ADC(v30, &qword_27DAB0920, &qword_22F770B20);
  if (*(a9 + 16))
  {
    LOBYTE(v88[0]) = a10 & 1;
    BYTE1(v88[0]) = (a10 & 0x100) >> 8;
    WORD1(v88[0]) = a11 & 0x101;
    sub_22F198AF4(a9, v75, v88, a12);
    v58 = v57;
    if ((a10 & 0x100) != 0 || (v59 = [v40 songs]) == 0)
    {
      type metadata accessor for SongEntry();
      sub_22F1A3328(&qword_2810A9520, type metadata accessor for SongEntry, MEMORY[0x277D85378]);
      v64 = sub_22F741410();

      [v40 setSongs_];
    }

    else
    {

      v60 = [v40 songs];
      if (v60)
      {
        v61 = v60;
        type metadata accessor for SongEntry();
        sub_22F1A3328(&qword_2810A9520, type metadata accessor for SongEntry, MEMORY[0x277D85378]);
        v62 = sub_22F741420();

        v88[0] = v62;
        sub_22F2EA398(v58);
        if (v88[0])
        {
          v63 = sub_22F741410();
        }

        else
        {
          v63 = 0;
        }

        [v40 setSongs_];
      }

      else
      {

        [v40 setSongs_];
      }
    }
  }

  sub_22F1A35D0(a13);
  v88[0] = 0;
  if ([v75 save_])
  {
    v65 = v88[0];
    sub_22F7416A0();
  }

  else
  {
    v66 = v88[0];
    v67 = sub_22F73F370();

    swift_willThrow();
    swift_getErrorValue();
    v68 = sub_22F7420F0();
    v69 = v38;
    v71 = v70;
    sub_22F1A297C();
    swift_allocError();
    *v72 = v68;
    *(v72 + 8) = v71;
    *(v72 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t MusicCache.read(songSourceIdentifiers:readOptions:progressReporter:)(uint64_t a1, uint64_t *a2)
{
  v4 = sub_22F740AD0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;
  v27 = a2[1];
  v28 = v8;
  LODWORD(v8) = *(a2 + 16);
  v25 = *(a2 + 17);
  v26 = v8;
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22F770DF0;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_22F153470();
  *(v9 + 32) = 0x696669746E656469;
  *(v9 + 40) = 0xEA00000000007265;
  *(v9 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v9 + 104) = sub_22F16BC6C(&qword_2810A92D0, &qword_27DAB0E90, &qword_22F7714A0, MEMORY[0x277CC9C50]);
  *(v9 + 72) = a1;

  v10 = sub_22F741560();
  v24 = v10;
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v11 = *(v5 + 8);
  v11(v7, v4);
  v12 = sub_22F7416B0();
  v14 = v13;
  v23 = v4;
  v30 = MEMORY[0x277D84F90];
  MEMORY[0x28223BE20](v12);
  *(&v22 - 10) = v10;
  *(&v22 - 9) = v15;
  *(&v22 - 8) = v16;
  *(&v22 - 7) = v14;
  *(&v22 - 6) = 0;
  *(&v22 - 5) = &v30;
  v17 = v27;
  *(&v22 - 4) = v28;
  *(&v22 - 3) = v17;
  LOBYTE(v17) = v25;
  *(&v22 - 16) = v26;
  *(&v22 - 15) = v17;
  v18 = v29;
  sub_22F7417A0();
  if (v18)
  {

    v19 = v24;
  }

  else
  {
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    v21 = v24;

    v11(v7, v23);
    return v30;
  }
}

uint64_t sub_22F19BF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22F770DF0;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_22F153470();
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v7 + 104) = sub_22F16BC6C(&qword_2810A92D0, &qword_27DAB0E90, &qword_22F7714A0, MEMORY[0x277CC9C50]);
  *(v7 + 72) = a1;

  v8 = sub_22F741560();
  v9 = sub_22F1935BC(v8);

  return v9;
}

uint64_t MusicCache.readSongSourceIdentifiers(for:progressReporter:)()
{
  v2 = MEMORY[0x277D84F90];
  sub_22F7417A0();
  if (v0)
  {
  }

  sub_22F7416A0();
  return v2;
}

void sub_22F19C14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v9 = sub_22F740DF0();

  v10 = [v8 initWithEntityName_];

  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22F770DF0;
  v12 = MEMORY[0x277D837D0];
  *(v11 + 56) = MEMORY[0x277D837D0];
  v13 = sub_22F153470();
  *(v11 + 32) = 0x44496D616461;
  *(v11 + 40) = 0xE600000000000000;
  *(v11 + 96) = v12;
  *(v11 + 104) = v13;
  *(v11 + 64) = v13;
  *(v11 + 72) = a1;
  *(v11 + 80) = a2;

  v14 = sub_22F741560();
  [v10 setPredicate_];

  type metadata accessor for SongEntry();
  v15 = sub_22F7417B0();
  if (v5)
  {
    goto LABEL_2;
  }

  if (!(v15 >> 62))
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    sub_22F1A297C();
    swift_allocError();
    *v24 = a1;
    *(v24 + 8) = a2;
    *(v24 + 16) = 1;
    swift_willThrow();

LABEL_2:

    return;
  }

  v22 = v15;
  v23 = sub_22F741A00();
  v15 = v22;
  if (!v23)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x2319016F0](0);
    v16 = a5;
    goto LABEL_8;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = a5;
    v17 = *(v15 + 32);
LABEL_8:

    sub_22F741690();
    v18 = [v17 sources];
    type metadata accessor for SongSourceEntry();
    sub_22F1A3328(&unk_27DAB1E28, type metadata accessor for SongSourceEntry, MEMORY[0x277D85378]);
    v19 = sub_22F741420();

    sub_22F191AA8(v19);
    v21 = v20;

    *v16 = v21;

    return;
  }

  __break(1u);
}

void MusicCache.removeSongSources(songSourceIdentifiers:progressReporter:)(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    if (v2 == 1)
    {
      v4 = a1[4];
      v3 = a1[5];
      sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_22F770DF0;
      v6 = MEMORY[0x277D837D0];
      *(v5 + 56) = MEMORY[0x277D837D0];
      v7 = sub_22F153470();
      *(v5 + 32) = 0x696669746E656469;
      *(v5 + 40) = 0xEA00000000007265;
      *(v5 + 96) = v6;
      *(v5 + 104) = v7;
      *(v5 + 64) = v7;
      *(v5 + 72) = v4;
      *(v5 + 80) = v3;
    }

    else
    {
      sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_22F770DF0;
      *(v9 + 56) = MEMORY[0x277D837D0];
      *(v9 + 64) = sub_22F153470();
      *(v9 + 32) = 0x696669746E656469;
      *(v9 + 40) = 0xEA00000000007265;
      *(v9 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
      *(v9 + 104) = sub_22F16BC6C(&qword_2810A92D0, &qword_27DAB0E90, &qword_22F7714A0, MEMORY[0x277CC9C50]);
      *(v9 + 72) = a1;
    }

    v10 = sub_22F741560();
    sub_22F741690();
    if (v1)
    {
    }

    else
    {
      v11 = sub_22F7416F0();
      v17[7] = v17;
      v12 = v17[1];
      v13 = v17[2];
      v15 = v17[3];
      v14 = v17[4];
      v16 = v17[5];
      MEMORY[0x28223BE20](v11);
      sub_22F7417A0();
    }
  }
}

void MusicCache.write(songs:songSourceIdentifier:songSourceVersion:songSourceCategory:date:writeOptions:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, unsigned __int8 *a9)
{
  v39 = a8;
  v40 = a5;
  v43 = a7;
  v41 = a1;
  v42 = a6;
  v37 = a3;
  v38 = a4;
  v36 = a2;
  v11 = sub_22F740AD0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a9;
  v34 = a9[1];
  v35 = v15;
  v16 = a9[2];
  v32 = a9[3];
  v33 = v16;
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v17 = *(v12 + 8);
  v17(v14, v11);
  sub_22F741690();
  if (!v10)
  {
    v18 = sub_22F7416E0();
    v20 = v19;
    v31 = &v31;
    MEMORY[0x28223BE20](v18);
    v21 = v37;
    *(&v31 - 14) = v36;
    *(&v31 - 13) = v21;
    v22 = v38;
    *(&v31 - 12) = v39;
    *(&v31 - 11) = v9;
    v24 = v23;
    v25 = v40;
    *(&v31 - 10) = v22;
    *(&v31 - 9) = v25;
    v26 = v43;
    *(&v31 - 8) = v42;
    *(&v31 - 7) = v26;
    v27 = v41;
    *(&v31 - 6) = v23;
    *(&v31 - 5) = v27;
    LOBYTE(v27) = v34;
    *(&v31 - 32) = v35;
    *(&v31 - 31) = v27;
    LOBYTE(v27) = v32;
    *(&v31 - 30) = v33;
    *(&v31 - 29) = v27;
    v43 = v28;
    *(&v31 - 3) = v28;
    *(&v31 - 2) = v29;
    v42 = v29;
    *(&v31 - 1) = v30;
    sub_22F7417A0();
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();

    v17(v14, v11);
  }
}

void sub_22F19CAA4(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13)
{
  v80 = a4;
  v74 = a6;
  v75 = a8;
  v70 = a5;
  v71 = a7;
  v78 = a3;
  v81 = a9;
  v82[1] = *MEMORY[0x277D85DE8];
  v15 = sub_22F73F690();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v77 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v18 - 8);
  v76 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v67 - v21;
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_22F7727B0;
  v24 = MEMORY[0x277D837D0];
  *(v23 + 56) = MEMORY[0x277D837D0];
  v25 = sub_22F153470();
  *(v23 + 32) = 0x696669746E656469;
  *(v23 + 40) = 0xEA00000000007265;
  *(v23 + 96) = v24;
  *(v23 + 104) = v25;
  *(v23 + 64) = v25;
  *(v23 + 72) = a1;
  v72 = a1;
  v73 = a2;
  *(v23 + 80) = a2;
  *(v23 + 136) = v24;
  *(v23 + 144) = v25;
  *(v23 + 112) = 1702125924;
  *(v23 + 120) = 0xE400000000000000;

  v26 = v78;
  v27 = sub_22F73F5B0();
  *(v23 + 176) = sub_22F120634(0, &qword_2810A8F00, 0x277CBEAA8);
  *(v23 + 184) = sub_22F15FD58();
  *(v23 + 152) = v27;
  v28 = v80;
  v29 = sub_22F741560();
  v30 = *(v28 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  (*(v16 + 16))(v22, v26, v15);
  (*(v16 + 56))(v22, 0, 1, v15);
  v31 = v79;
  sub_22F741690();
  if (v31)
  {
    goto LABEL_3;
  }

  v68 = v15;
  v69 = v16;
  v78 = v22;
  v32 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v79 = v30;
  v33 = v32;

  v34 = sub_22F740DF0();

  v35 = v33;
  v36 = v79;
  v37 = [v35 initWithEntityName_];

  [v37 setPredicate_];
  v38 = type metadata accessor for SongSourceEntry();
  v39 = sub_22F7417B0();
  sub_22F741690();
  if (v39 >> 62)
  {
    v45 = sub_22F741A00();
    v40 = v77;
    if (v45)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v40 = v77;
    if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      v67 = v37;
      if ((v39 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x2319016F0](0, v39);

        v43 = v68;
        v41 = v78;
      }

      else
      {
        v41 = v78;
        if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
        }

        v42 = *(v39 + 32);

        v43 = v68;
      }

      v44 = v69;
      goto LABEL_23;
    }
  }

  v46 = objc_opt_self();

  v47 = v36;
  v48 = sub_22F740DF0();

  v49 = [v46 entityForName:v48 inManagedObjectContext:v47];

  if (!v49)
  {
    sub_22F162D98();
    swift_allocError();
    swift_willThrow();

    v29 = v37;
    v22 = v78;
LABEL_3:

    sub_22F120ADC(v22, &qword_27DAB0920, &qword_22F770B20);
    return;
  }

  v50 = [objc_allocWithZone(v38) initWithEntity:v49 insertIntoManagedObjectContext:v47];

  v51 = sub_22F740DF0();
  v73 = v50;
  [v50 setIdentifier_];

  if (v74)
  {
    v52 = sub_22F740DF0();
  }

  else
  {
    v52 = 0;
  }

  v53 = v76;
  [v73 setVersion_];

  v43 = v68;
  v44 = v69;
  v41 = v78;
  if (v75)
  {
    v54 = sub_22F740DF0();
  }

  else
  {
    v54 = 0;
  }

  [v73 setCategory_];

  sub_22F13BA9C(v41, v53, &qword_27DAB0920, &qword_22F770B20);
  v55 = (*(v44 + 48))(v53, 1, v43);
  v67 = v37;
  if (v55 == 1)
  {
    v56 = 0;
  }

  else
  {
    v56 = sub_22F73F5B0();
    (*(v44 + 8))(v53, v43);
  }

  v40 = v77;
  v42 = v73;
  [v73 setDate_];

  [v42 setGeohash_];
LABEL_23:
  sub_22F73F680();
  v57 = sub_22F73F5B0();
  (*(v44 + 8))(v40, v43);
  [v42 setDateLastUpdated_];

  sub_22F7416A0();
  sub_22F120ADC(v41, &qword_27DAB0920, &qword_22F770B20);
  if (*(a10 + 16))
  {
    LODWORD(v82[0]) = a11 & 0x1010101;
    sub_22F198AF4(a10, v79, v82, a12);
    type metadata accessor for SongEntry();
    sub_22F1A3328(&qword_2810A9520, type metadata accessor for SongEntry, MEMORY[0x277D85378]);
    v58 = sub_22F741410();

    [v42 setSongs_];
  }

  v59 = v79;
  sub_22F1A35D0(a13);
  v82[0] = 0;
  if ([v59 save_])
  {
    v60 = v82[0];
    sub_22F7416A0();
  }

  else
  {
    v61 = v82[0];
    v62 = sub_22F73F370();

    swift_willThrow();
    swift_getErrorValue();
    v63 = sub_22F7420F0();
    v65 = v64;
    sub_22F1A297C();
    swift_allocError();
    *v66 = v63;
    *(v66 + 8) = v65;
    *(v66 + 16) = 0;
    swift_willThrow();
  }
}

void MusicCache.write(songsByDateMap:songSourceIdentifier:songSourceVersion:songSourceCategory:writeOptions:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, unsigned __int8 *a8)
{
  v41 = a7;
  v39 = a5;
  v40 = a6;
  v37 = a3;
  v38 = a4;
  v35 = a1;
  v36 = a2;
  v11 = sub_22F740AD0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a8;
  v33 = a8[1];
  v34 = v15;
  v16 = a8[2];
  v31 = a8[3];
  v32 = v16;
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v17 = *(v12 + 8);
  v17(v14, v11);
  sub_22F741690();
  if (!v9)
  {
    v18 = sub_22F7416E0();
    v20 = v19;
    v30[1] = v30;
    MEMORY[0x28223BE20](v18);
    v21 = v36;
    v30[-14] = v35;
    v30[-13] = v21;
    v22 = v38;
    v30[-12] = v37;
    v30[-11] = v8;
    v24 = v39;
    v23 = v40;
    v30[-10] = v22;
    v30[-9] = v24;
    v30[-8] = v23;
    v30[-7] = v41;
    v30[-6] = v25;
    v41 = v25;
    LOBYTE(v23) = v33;
    LOBYTE(v30[-5]) = v34;
    BYTE1(v30[-5]) = v23;
    LOBYTE(v23) = v31;
    BYTE2(v30[-5]) = v32;
    BYTE3(v30[-5]) = v23;
    v40 = v26;
    v30[-4] = v26;
    v30[-3] = v27;
    v28 = v27;
    v30[-2] = v29;
    sub_22F7417A0();
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();

    v17(v14, v11);
  }
}

void sub_22F19D660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  v101 = a8;
  v97 = a7;
  v100 = a6;
  v96 = a5;
  v118 = a4;
  v117 = a3;
  v116 = a2;
  v94 = a13;
  v95 = a12;
  v108 = a11;
  v129 = a9;
  v131[5] = *MEMORY[0x277D85DE8];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v16 - 8);
  v98 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v128 = &v94 - v19;
  v130 = sub_22F73F690();
  v20 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v126 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v121 = &v94 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1E18, &qword_22F7774C0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v114 = &v94 - v28;
  v29 = *(a1 + 64);
  v103 = a1 + 64;
  v30 = 1 << *(a1 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v29;
  v115 = OBJC_IVAR___PGMusicCache_managedObjectContext;
  v102 = (v30 + 63) >> 6;
  v124 = (v20 + 32);
  v125 = (v20 + 16);
  v112 = "%K == %@ && %K IN %@";
  v111 = (v20 + 56);
  v107 = (a10 >> 8) & 1;
  v99 = (v20 + 48);
  v109 = v20;
  v127 = (v20 + 8);
  v106 = a10 & 1;
  v105 = HIWORD(a10) & 1;
  v104 = HIBYTE(a10) & 1;
  v113 = a1;

  v33 = 0;
  v110 = xmmword_22F7727B0;
  for (i = v26; ; v26 = i)
  {
    if (v32)
    {
      v123 = v14;
      v34 = v33;
      goto LABEL_16;
    }

    if (v102 <= v33 + 1)
    {
      v35 = v33 + 1;
    }

    else
    {
      v35 = v102;
    }

    v36 = v35 - 1;
    do
    {
      v34 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        goto LABEL_51;
      }

      if (v34 >= v102)
      {
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1E20, &qword_22F7774C8);
        (*(*(v66 - 8) + 56))(v26, 1, 1, v66);
        v32 = 0;
        goto LABEL_17;
      }

      v32 = *(v103 + 8 * v34);
      ++v33;
    }

    while (!v32);
    v123 = v14;
LABEL_16:
    v37 = __clz(__rbit64(v32));
    v32 &= v32 - 1;
    v38 = v37 | (v34 << 6);
    v39 = v113;
    v40 = v109;
    v41 = v121;
    v42 = v130;
    (*(v109 + 16))(v121, *(v113 + 48) + *(v109 + 72) * v38, v130);
    v43 = *(*(v39 + 56) + 8 * v38);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1E20, &qword_22F7774C8);
    v45 = *(v44 + 48);
    v46 = *(v40 + 32);
    v26 = i;
    v46(i, v41, v42);
    *&v26[v45] = v43;
    (*(*(v44 - 8) + 56))(v26, 0, 1, v44);

    v36 = v34;
    v14 = v123;
LABEL_17:
    v47 = v114;
    sub_22F1207AC(v26, v114, &qword_27DAB1E18, &qword_22F7774C0);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1E20, &qword_22F7774C8);
    if ((*(*(v48 - 8) + 48))(v47, 1, v48) == 1)
    {

      v86 = *(v118 + v115);
      sub_22F1A35D0(v95);
      if (!v14)
      {
        v131[0] = 0;
        if ([v86 save_])
        {
          v87 = v131[0];
          sub_22F7416A0();
        }

        else
        {
          v88 = v131[0];
          v89 = sub_22F73F370();

          swift_willThrow();
          swift_getErrorValue();
          v90 = sub_22F7420F0();
          v92 = v91;
          sub_22F1A297C();
          swift_allocError();
          *v93 = v90;
          *(v93 + 8) = v92;
          *(v93 + 16) = 0;
          swift_willThrow();
        }
      }

      return;
    }

    v119 = v36;
    v123 = *(v47 + *(v48 + 48));
    v49 = v126;
    v50 = v130;
    (*v124)(v126, v47, v130);
    sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
    v51 = swift_allocObject();
    *(v51 + 16) = v110;
    v52 = MEMORY[0x277D837D0];
    *(v51 + 56) = MEMORY[0x277D837D0];
    v53 = sub_22F153470();
    *(v51 + 32) = 0x696669746E656469;
    *(v51 + 40) = 0xEA00000000007265;
    *(v51 + 96) = v52;
    *(v51 + 104) = v53;
    v54 = v116;
    *(v51 + 64) = v53;
    *(v51 + 72) = v54;
    *(v51 + 80) = v117;
    *(v51 + 136) = v52;
    *(v51 + 144) = v53;
    *(v51 + 112) = 1702125924;
    *(v51 + 120) = 0xE400000000000000;

    v55 = sub_22F73F5B0();
    *(v51 + 176) = sub_22F120634(0, &qword_2810A8F00, 0x277CBEAA8);
    *(v51 + 184) = sub_22F15FD58();
    *(v51 + 152) = v55;
    v56 = sub_22F741560();
    v57 = *(v118 + v115);
    v58 = v128;
    (*v125)(v128, v49, v50);
    (*v111)(v58, 0, 1, v50);
    sub_22F741690();
    if (v14)
    {

      goto LABEL_47;
    }

    v59 = objc_allocWithZone(MEMORY[0x277CBE428]);

    v60 = sub_22F740DF0();

    v61 = [v59 initWithEntityName_];

    v122 = v56;
    [v61 setPredicate_];
    v62 = type metadata accessor for SongSourceEntry();
    v63 = sub_22F7417B0();
    sub_22F741690();
    v14 = 0;
    if (v63 >> 62)
    {
      if (!sub_22F741A00())
      {
        goto LABEL_27;
      }

LABEL_21:
      if ((v63 & 0xC000000000000001) != 0)
      {
        v64 = MEMORY[0x2319016F0](0, v63);
        goto LABEL_24;
      }

      if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v64 = *(v63 + 32);
LABEL_24:
        v65 = v64;

        goto LABEL_38;
      }

LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
    }

    if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

LABEL_27:

    v67 = objc_opt_self();

    v68 = sub_22F740DF0();

    v69 = [v67 entityForName:v68 inManagedObjectContext:v57];

    if (!v69)
    {
      break;
    }

    v65 = [objc_allocWithZone(v62) initWithEntity:v69 insertIntoManagedObjectContext:v57];

    v70 = sub_22F740DF0();
    [v65 setIdentifier_];

    if (v100)
    {
      v71 = sub_22F740DF0();
    }

    else
    {
      v71 = 0;
    }

    v72 = v98;
    [v65 setVersion_];

    if (v101)
    {
      v73 = sub_22F740DF0();
    }

    else
    {
      v73 = 0;
    }

    [v65 setCategory_];

    sub_22F13BA9C(v128, v72, &qword_27DAB0920, &qword_22F770B20);
    v74 = v130;
    if ((*v99)(v72, 1, v130) == 1)
    {
      v75 = 0;
    }

    else
    {
      v75 = sub_22F73F5B0();
      (*v127)(v72, v74);
    }

    [v65 setDate_];

    [v65 setGeohash_];
LABEL_38:
    v76 = v121;
    sub_22F73F680();
    v77 = sub_22F73F5B0();
    v78 = *v127;
    (*v127)(v76, v130);
    [v65 setDateLastUpdated_];

    sub_22F7416A0();
    sub_22F120ADC(v128, &qword_27DAB0920, &qword_22F770B20);
    v79 = v123;
    v80 = *(v123 + 16);
    if (!v80)
    {
      v78(v126, v130);

      goto LABEL_5;
    }

    v81 = sub_22F10B35C(*(v123 + 16), 0);
    v82 = *(type metadata accessor for Song(0) - 8);
    sub_22F11A7BC(v131, v81 + ((*(v82 + 80) + 32) & ~*(v82 + 80)), v80, v79);
    v84 = v83;
    sub_22F0FF590(v131[0]);
    if (v84 != v80)
    {
      goto LABEL_52;
    }

    LOBYTE(v131[0]) = v106;
    BYTE1(v131[0]) = v107;
    BYTE2(v131[0]) = v105;
    BYTE3(v131[0]) = v104;
    sub_22F198AF4(v81, v57, v131, v108);

    type metadata accessor for SongEntry();
    sub_22F1A3328(&qword_2810A9520, type metadata accessor for SongEntry, MEMORY[0x277D85378]);
    v85 = sub_22F741410();

    [v65 setSongs_];

    v78(v126, v130);
LABEL_5:
    v33 = v119;
  }

  sub_22F162D98();
  swift_allocError();
  swift_willThrow();

  v56 = v61;
  v50 = v130;
LABEL_47:

  sub_22F120ADC(v128, &qword_27DAB0920, &qword_22F770B20);
  (*v127)(v126, v50);
}

uint64_t MusicCache.read(songSourceIdentifier:dates:readOptions:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v33 = a5;
  v35 = sub_22F740AD0();
  v9 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a4;
  v31 = a4[1];
  v32 = v12;
  LODWORD(v12) = *(a4 + 16);
  v29 = *(a4 + 17);
  v30 = v12;
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22F7727B0;
  v14 = MEMORY[0x277D837D0];
  *(v13 + 56) = MEMORY[0x277D837D0];
  v15 = sub_22F153470();
  *(v13 + 32) = 0x696669746E656469;
  *(v13 + 40) = 0xEA00000000007265;
  *(v13 + 96) = v14;
  *(v13 + 104) = v15;
  *(v13 + 64) = v15;
  *(v13 + 72) = a1;
  *(v13 + 80) = a2;
  *(v13 + 136) = v14;
  *(v13 + 144) = v15;
  *(v13 + 112) = 1702125924;
  *(v13 + 120) = 0xE400000000000000;

  v16 = sub_22F161070(a3);
  *(v13 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DB8, &unk_22F7771C0);
  *(v13 + 184) = sub_22F16BC6C(&qword_2810A92A0, &qword_27DAB1DB8, &unk_22F7771C0, MEMORY[0x277CC9C50]);
  *(v13 + 152) = v16;
  v17 = sub_22F741560();
  v18 = v17;
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v19 = *(v9 + 8);
  v28 = v9 + 8;
  v19(v11, v35);
  v20 = sub_22F7416B0();
  v22 = v21;
  v36 = MEMORY[0x277D84F90];
  MEMORY[0x28223BE20](v20);
  *(&v28 - 10) = v17;
  *(&v28 - 9) = v23;
  *(&v28 - 8) = v24;
  *(&v28 - 7) = v22;
  *(&v28 - 6) = 0;
  *(&v28 - 5) = &v36;
  v25 = v31;
  *(&v28 - 4) = v32;
  *(&v28 - 3) = v25;
  LOBYTE(v25) = v29;
  *(&v28 - 16) = v30;
  *(&v28 - 15) = v25;
  v26 = v34;
  sub_22F7417A0();
  if (v26)
  {
  }

  else
  {
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();

    v19(v11, v35);
    return v36;
  }
}

uint64_t MusicCache.read(songSourceIdentifier:date:readOptions:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a5;
  v34 = a1;
  v8 = sub_22F740AD0();
  v9 = *(v8 - 8);
  v41 = v8;
  v42 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a4;
  v37 = *(a4 + 8);
  v38 = v12;
  LODWORD(v12) = *(a4 + 16);
  v35 = *(a4 + 17);
  v36 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB06E0, &qword_22F7711B0);
  v13 = sub_22F73F690();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22F771340;
  (*(v14 + 16))(v16 + v15, a3, v13);
  v33 = sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22F7727B0;
  v18 = MEMORY[0x277D837D0];
  *(v17 + 56) = MEMORY[0x277D837D0];
  v19 = sub_22F153470();
  *(v17 + 32) = 0x696669746E656469;
  *(v17 + 40) = 0xEA00000000007265;
  *(v17 + 96) = v18;
  *(v17 + 104) = v19;
  v20 = v34;
  *(v17 + 64) = v19;
  *(v17 + 72) = v20;
  *(v17 + 80) = a2;
  *(v17 + 136) = v18;
  *(v17 + 144) = v19;
  *(v17 + 112) = 1702125924;
  *(v17 + 120) = 0xE400000000000000;

  v21 = sub_22F161070(v16);
  swift_setDeallocating();
  (*(v14 + 8))(v16 + v15, v13);
  swift_deallocClassInstance();
  *(v17 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DB8, &unk_22F7771C0);
  *(v17 + 184) = sub_22F16BC6C(&qword_2810A92A0, &qword_27DAB1DB8, &unk_22F7771C0, MEMORY[0x277CC9C50]);
  *(v17 + 152) = v21;
  v22 = sub_22F741560();
  v23 = v22;
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v24 = *(v42 + 8);
  v42 += 8;
  v24(v11, v41);
  v25 = sub_22F7416B0();
  v27 = v26;
  v43 = MEMORY[0x277D84F90];
  MEMORY[0x28223BE20](v25);
  *(&v33 - 10) = v22;
  *(&v33 - 9) = v28;
  *(&v33 - 8) = v29;
  *(&v33 - 7) = v27;
  *(&v33 - 6) = 0;
  *(&v33 - 5) = &v43;
  v30 = v37;
  *(&v33 - 4) = v38;
  *(&v33 - 3) = v30;
  LOBYTE(v30) = v35;
  *(&v33 - 16) = v36;
  *(&v33 - 15) = v30;
  v31 = v40;
  sub_22F7417A0();
  if (v31)
  {
  }

  else
  {
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();

    v24(v11, v41);
    return v43;
  }
}

void MusicCache.removeSongSource(songSourceIdentifier:date:progressReporter:)(uint64_t a1, uint64_t a2)
{
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22F7727B0;
  v6 = MEMORY[0x277D837D0];
  *(v5 + 56) = MEMORY[0x277D837D0];
  v7 = sub_22F153470();
  *(v5 + 32) = 0x696669746E656469;
  *(v5 + 40) = 0xEA00000000007265;
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  *(v5 + 64) = v7;
  *(v5 + 72) = a1;
  *(v5 + 80) = a2;
  *(v5 + 136) = v6;
  *(v5 + 144) = v7;
  *(v5 + 112) = 1702125924;
  *(v5 + 120) = 0xE400000000000000;

  v8 = sub_22F73F5B0();
  *(v5 + 176) = sub_22F120634(0, &qword_2810A8F00, 0x277CBEAA8);
  *(v5 + 184) = sub_22F15FD58();
  *(v5 + 152) = v8;
  v9 = sub_22F741560();
  sub_22F741690();
  if (v2)
  {
  }

  else
  {
    v10 = sub_22F7416F0();
    MEMORY[0x28223BE20](v10);
    sub_22F7417A0();
  }
}

uint64_t MusicCache.readSongSources(identifiersAndDates:progressReporter:)(uint64_t a1, uint64_t a2)
{
  v34[1] = a2;
  v3 = sub_22F73F690();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DC0, &qword_22F7711C0);
  MEMORY[0x28223BE20](v7);
  v9 = (v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = v34 - v13;
  v15 = MEMORY[0x277D84FA0];
  v42 = MEMORY[0x277D84FA0];
  v41 = MEMORY[0x277D84FA0];
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v18 = *(v12 + 72);
    v37 = (v4 + 8);
    v38 = v18;
    v35 = v11;
    v36 = v6;
    do
    {
      v39 = v16;
      sub_22F13BA9C(v17, v14, &qword_27DAB1DC0, &qword_22F7711C0);
      sub_22F13BA9C(v14, v9, &qword_27DAB1DC0, &qword_22F7711C0);
      v19 = v3;
      v20 = v35;
      v21 = *(v35 + 48);
      sub_22F10BBDC(&v40, *v9, v9[1]);

      v22 = *v37;
      v23 = v9 + v21;
      v3 = v19;
      v24 = v36;
      (*v37)(v23, v3);
      sub_22F13BA9C(v14, v9, &qword_27DAB1DC0, &qword_22F7711C0);

      sub_22F10C984(v24, v9 + *(v20 + 48));
      v22(v24, v3);
      sub_22F120ADC(v14, &qword_27DAB1DC0, &qword_22F7711C0);
      v17 += v38;
      v16 = v39 - 1;
    }

    while (v39 != 1);
    v25 = v42;
    v15 = v41;
  }

  else
  {
    v25 = MEMORY[0x277D84FA0];
  }

  v39 = sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_22F7727B0;
  v27 = MEMORY[0x277D837D0];
  *(v26 + 56) = MEMORY[0x277D837D0];
  v28 = sub_22F153470();
  *(v26 + 64) = v28;
  *(v26 + 32) = 0x696669746E656469;
  *(v26 + 40) = 0xEA00000000007265;
  *(v26 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1608, &unk_22F772BB0);
  v29 = MEMORY[0x277CC9C78];
  v30 = sub_22F16BC6C(&qword_2810A9240, &qword_27DAB1608, &unk_22F772BB0, MEMORY[0x277CC9C78]);
  *(v26 + 72) = v25;
  *(v26 + 136) = v27;
  *(v26 + 144) = v28;
  *(v26 + 104) = v30;
  *(v26 + 112) = 1702125924;
  *(v26 + 120) = 0xE400000000000000;
  *(v26 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DC8, &unk_22F7771D0);
  *(v26 + 184) = sub_22F16BC6C(&qword_2810A9260, &qword_27DAB1DC8, &unk_22F7771D0, v29);
  *(v26 + 152) = v15;

  v31 = sub_22F741560();
  v32 = sub_22F1935BC(v31);

  return v32;
}

PhotosGraph::MusicCache::LocationTolerance_optional __swiftcall MusicCache.LocationTolerance.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue - 1;
  if ((rawValue - 1) >= 0xB)
  {
    v2 = 11;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_22F19F418()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1 + 1);
  return sub_22F7421D0();
}

uint64_t sub_22F19F490(uint64_t a1)
{
  v2 = *v1;
  sub_22F742170();
  MEMORY[0x231901D30](v2 + 1);
  return sub_22F7421D0();
}

uint64_t MusicCache.write(songs:songSourceIdentifier:songSourceVersion:songSourceCategory:location:date:writeOptions:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, unsigned __int8 *a10)
{
  v56 = a4;
  v59 = a6;
  v60 = a7;
  v57 = a5;
  v58 = a1;
  v54 = a2;
  v55 = a3;
  v12 = sub_22F740AD0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a10;
  v52 = a10[1];
  v53 = v16;
  v17 = a10[2];
  v50 = a10[3];
  v51 = v17;
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v18 = *(v13 + 8);
  v18(v15, v12);
  result = sub_22F741690();
  if (!v10)
  {
    v45[0] = v18;
    v49 = a9;
    v61 = 0;
    v46 = sub_22F7416E0();
    v47 = v20;
    v22 = v21;
    v48 = v23;
    type metadata accessor for Geohash();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    *(inited + 24) = 0;
    [a8 coordinate];
    v26 = v25;
    [a8 coordinate];
    sub_22F34AF8C(7, v26, v27);
    v28 = a8;
    v30 = v29;
    v32 = v31;
    swift_setDeallocating();

    v45[1] = v45;
    MEMORY[0x28223BE20](v33);
    v35 = v54;
    v34 = v55;
    v45[-18] = v36;
    v45[-17] = v35;
    v45[-16] = v34;
    v45[-15] = v30;
    v37 = v49;
    v45[-14] = v32;
    v45[-13] = v37;
    v38 = v57;
    v45[-12] = v56;
    v45[-11] = v38;
    v39 = v60;
    v45[-10] = v59;
    v45[-9] = v39;
    v45[-8] = v28;
    v40 = v46;
    v41 = v58;
    v45[-7] = v46;
    v45[-6] = v41;
    LOBYTE(v41) = v52;
    LOBYTE(v45[-5]) = v53;
    BYTE1(v45[-5]) = v41;
    LOBYTE(v41) = v50;
    BYTE2(v45[-5]) = v51;
    BYTE3(v45[-5]) = v41;
    v60 = v22;
    v45[-4] = v22;
    v42 = v48;
    v45[-3] = v48;
    v43 = v47;
    v45[-2] = v47;
    v44 = v61;
    sub_22F7417A0();
    v61 = v44;
    if (v44)
    {
    }

    else
    {

      sub_22F741730();
      sub_22F740AC0();
      sub_22F740A90();

      return (v45[0])(v15, v12);
    }
  }

  return result;
}

uint64_t MusicCache.write(songs:songSourceIdentifier:songSourceVersion:songSourceCategory:location:locationTolerance:date:writeOptions:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, unsigned __int8 *a9, uint64_t a10, unsigned __int8 *a11)
{
  v59 = a4;
  v63 = a7;
  v64 = a8;
  v61 = a1;
  v62 = a6;
  v60 = a5;
  v57 = a2;
  v58 = a3;
  v12 = sub_22F740AD0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a9;
  v17 = *a11;
  v55 = a11[1];
  v56 = v17;
  v18 = a11[2];
  v53 = a11[3];
  v54 = v18;
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v19 = *(v13 + 8);
  v19(v15, v12);
  result = sub_22F741690();
  if (!v11)
  {
    v47 = v19;
    v52 = a10;
    v65 = 0;
    v49 = sub_22F7416E0();
    v50 = v21;
    v23 = v22;
    v51 = v24;
    type metadata accessor for Geohash();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    *(inited + 24) = 0;
    v26 = v64;
    [v64 coordinate];
    v28 = v27;
    [v26 coordinate];
    sub_22F34AF8C(v16 + 1, v28, v29);
    v31 = v30;
    v33 = v32;
    swift_setDeallocating();

    v48 = &v46;
    MEMORY[0x28223BE20](v34);
    v36 = v57;
    v35 = v58;
    *(&v46 - 18) = v37;
    *(&v46 - 17) = v36;
    *(&v46 - 16) = v35;
    *(&v46 - 15) = v31;
    v38 = v52;
    *(&v46 - 14) = v33;
    *(&v46 - 13) = v38;
    v39 = v60;
    *(&v46 - 12) = v59;
    *(&v46 - 11) = v39;
    v40 = v63;
    *(&v46 - 10) = v62;
    *(&v46 - 9) = v40;
    *(&v46 - 8) = v26;
    v41 = v49;
    v42 = v61;
    *(&v46 - 7) = v49;
    *(&v46 - 6) = v42;
    LOBYTE(v42) = v55;
    *(&v46 - 40) = v56;
    *(&v46 - 39) = v42;
    LOBYTE(v42) = v53;
    *(&v46 - 38) = v54;
    *(&v46 - 37) = v42;
    v64 = v23;
    *(&v46 - 4) = v23;
    v43 = v51;
    *(&v46 - 3) = v51;
    v44 = v50;
    *(&v46 - 2) = v50;
    v45 = v65;
    sub_22F7417A0();
    v65 = v45;
    if (v45)
    {
    }

    else
    {

      sub_22F741730();
      sub_22F740AC0();
      sub_22F740A90();

      return v47(v15, v12);
    }
  }

  return result;
}

void sub_22F19FC60(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, uint64_t a16)
{
  v86 = a5;
  v79 = a8;
  v76 = a7;
  v87 = a1;
  v88 = a12;
  v89[1] = *MEMORY[0x277D85DE8];
  v20 = sub_22F73F690();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v82 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v23 - 8);
  v80 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v72 - v26;
  v28 = sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  v83 = "N %@ && %K IN %@";
  v84 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_22F777170;
  v30 = MEMORY[0x277D837D0];
  *(v29 + 56) = MEMORY[0x277D837D0];
  v31 = sub_22F153470();
  *(v29 + 32) = 0x696669746E656469;
  *(v29 + 40) = 0xEA00000000007265;
  *(v29 + 96) = v30;
  *(v29 + 104) = v31;
  *(v29 + 64) = v31;
  *(v29 + 72) = a2;
  v77 = a2;
  *(v29 + 80) = a3;
  *(v29 + 136) = v30;
  *(v29 + 144) = v31;
  *(v29 + 112) = 0x687361686F6567;
  *(v29 + 120) = 0xE700000000000000;
  *(v29 + 176) = v30;
  *(v29 + 184) = v31;
  v81 = a4;
  v32 = v86;
  *(v29 + 152) = a4;
  *(v29 + 160) = v32;
  *(v29 + 216) = v30;
  *(v29 + 224) = v31;
  *(v29 + 192) = 1702125924;
  *(v29 + 200) = 0xE400000000000000;
  v78 = a3;

  v33 = sub_22F73F5B0();
  *(v29 + 256) = sub_22F120634(0, &qword_2810A8F00, 0x277CBEAA8);
  *(v29 + 264) = sub_22F15FD58();
  *(v29 + 232) = v33;
  v34 = sub_22F741560();
  v35 = *(v87 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  (*(v21 + 16))(v27, a6, v20);
  (*(v21 + 56))(v27, 0, 1, v20);
  v36 = v85;
  sub_22F741690();
  if (v36)
  {
    v37 = v27;
LABEL_4:

    sub_22F120ADC(v37, &qword_27DAB0920, &qword_22F770B20);
    return;
  }

  v84 = v21;
  v85 = v27;
  v83 = v20;
  v38 = v34;
  v39 = v35;
  v40 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v41 = sub_22F740DF0();

  v42 = [v40 initWithEntityName_];

  [v42 setPredicate_];
  v43 = type metadata accessor for SongSourceEntry();
  v44 = sub_22F7417B0();
  sub_22F741690();
  v45 = v44;
  if (v44 >> 62)
  {
    v51 = sub_22F741A00();
    v45 = v44;
    v46 = v82;
    if (v51)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v46 = v82;
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      v75 = v42;
      if ((v45 & 0xC000000000000001) != 0)
      {
        v48 = MEMORY[0x2319016F0](0, v45);

        v49 = v83;
        v47 = v85;
      }

      else
      {
        v47 = v85;
        if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
        }

        v48 = *(v45 + 32);

        v49 = v83;
      }

      v50 = v84;
      goto LABEL_24;
    }
  }

  v74 = v38;

  v52 = objc_opt_self();

  v53 = sub_22F740DF0();

  v54 = [v52 entityForName:v53 inManagedObjectContext:v39];

  if (!v54)
  {
    sub_22F162D98();
    swift_allocError();
    swift_willThrow();

    v34 = v42;
    v37 = v85;
    goto LABEL_4;
  }

  v73 = a10;
  v55 = [objc_allocWithZone(v43) initWithEntity:v54 insertIntoManagedObjectContext:v39];

  v56 = sub_22F740DF0();
  v78 = v55;
  [v55 setIdentifier_];

  v47 = v85;
  v38 = v74;
  if (v79)
  {
    v57 = sub_22F740DF0();
  }

  else
  {
    v57 = 0;
  }

  v58 = v80;
  [v78 setVersion_];

  v49 = v83;
  v50 = v84;
  if (v73)
  {
    v59 = sub_22F740DF0();
  }

  else
  {
    v59 = 0;
  }

  [v78 setCategory_];

  sub_22F13BA9C(v47, v58, &qword_27DAB0920, &qword_22F770B20);
  v60 = (*(v50 + 48))(v58, 1, v49);
  v75 = v42;
  if (v60 == 1)
  {
    v61 = 0;
  }

  else
  {
    v61 = sub_22F73F5B0();
    (*(v50 + 8))(v58, v49);
  }

  v46 = v82;
  v48 = v78;
  [v78 setDate_];

  v62 = sub_22F740DF0();
  [v48 setGeohash_];

LABEL_24:
  sub_22F73F680();
  v63 = sub_22F73F5B0();
  (*(v50 + 8))(v46, v49);
  [v48 setDateLastUpdated_];

  sub_22F7416A0();
  sub_22F120ADC(v47, &qword_27DAB0920, &qword_22F770B20);
  if (*(a13 + 16))
  {
    LODWORD(v89[0]) = a14 & 0x1010101;
    sub_22F198AF4(a13, v39, v89, a15);
    type metadata accessor for SongEntry();
    sub_22F1A3328(&qword_2810A9520, type metadata accessor for SongEntry, MEMORY[0x277D85378]);
    v64 = sub_22F741410();

    [v48 setSongs_];
  }

  sub_22F1A35D0(a16);
  v89[0] = 0;
  if ([v39 save_])
  {
    v65 = v89[0];
    sub_22F7416A0();
  }

  else
  {
    v66 = v89[0];
    v67 = sub_22F73F370();

    swift_willThrow();
    swift_getErrorValue();
    v68 = sub_22F7420F0();
    v70 = v69;
    sub_22F1A297C();
    swift_allocError();
    *v71 = v68;
    *(v71 + 8) = v70;
    *(v71 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t MusicCache.read(songSourceIdentifier:location:date:progressReporter:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for Geohash();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  [a3 coordinate];
  v12 = v11;
  [a3 coordinate];
  sub_22F34AF8C(7, v12, v13);
  v15 = v14;
  v17 = v16;
  swift_setDeallocating();

  v18 = MusicCache.read(songSourceIdentifier:geohash:date:progressReporter:)(a1, a2, v15, v17, a4, a5);

  return v18;
}

uint64_t MusicCache.read(songSourceIdentifier:location:locationTolerance:date:progressReporter:)(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  v11 = *a4;
  type metadata accessor for Geohash();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  [a3 coordinate];
  v14 = v13;
  [a3 coordinate];
  sub_22F34AF8C(v11 + 1, v14, v15);
  v17 = v16;
  v19 = v18;
  swift_setDeallocating();

  v20 = MusicCache.read(songSourceIdentifier:geohash:date:progressReporter:)(a1, a2, v17, v19, a5, a6);

  return v20;
}

uint64_t MusicCache.read(songSourceIdentifier:geohash:date:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28[0] = a5;
  v28[1] = a6;
  v10 = sub_22F740AD0();
  v11 = *(v10 - 8);
  v29 = v10;
  v30 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22F777170;
  v15 = MEMORY[0x277D837D0];
  *(v14 + 56) = MEMORY[0x277D837D0];
  v16 = sub_22F153470();
  *(v14 + 32) = 0x696669746E656469;
  *(v14 + 40) = 0xEA00000000007265;
  *(v14 + 96) = v15;
  *(v14 + 104) = v16;
  *(v14 + 64) = v16;
  *(v14 + 72) = a1;
  *(v14 + 80) = a2;
  *(v14 + 136) = v15;
  *(v14 + 144) = v16;
  *(v14 + 112) = 0x687361686F6567;
  *(v14 + 120) = 0xE700000000000000;
  *(v14 + 176) = v15;
  *(v14 + 184) = v16;
  *(v14 + 152) = a3;
  *(v14 + 160) = a4;
  *(v14 + 216) = v15;
  *(v14 + 224) = v16;
  *(v14 + 192) = 1702125924;
  *(v14 + 200) = 0xE400000000000000;

  v17 = sub_22F73F5B0();
  *(v14 + 256) = sub_22F120634(0, &qword_2810A8F00, 0x277CBEAA8);
  *(v14 + 264) = sub_22F15FD58();
  *(v14 + 232) = v17;
  v18 = sub_22F741560();
  v19 = v18;
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v20 = *(v30 + 8);
  v30 += 8;
  v20(v13, v29);
  v21 = sub_22F7416B0();
  v23 = v22;
  v31 = MEMORY[0x277D84F90];
  MEMORY[0x28223BE20](v21);
  v28[-10] = v18;
  v28[-9] = v24;
  v28[-8] = v25;
  v28[-7] = v23;
  v28[-6] = 0;
  v28[-5] = &v31;
  v28[-4] = 0;
  v28[-3] = 0;
  LOWORD(v28[-2]) = 1;
  v26 = v28[3];
  sub_22F7417A0();
  if (v26)
  {
  }

  else
  {
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();

    v20(v13, v29);
    return v31;
  }
}

uint64_t MusicCache.readSongSources(identifiersDatesAndLocations:locationTolerance:progressReporter:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v37[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1018, &qword_22F771448);
  MEMORY[0x28223BE20](v5);
  v9 = (v37 - v8);
  v10 = *a2;
  v11 = MEMORY[0x277D84FA0];
  v42 = MEMORY[0x277D84FA0];
  v43 = MEMORY[0x277D84FA0];
  v41 = MEMORY[0x277D84FA0];
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v14 = *(v7 + 72);
    v38 = v6;
    v39 = v14;
    do
    {
      sub_22F13BA9C(v13, v9, &qword_27DAB1018, &qword_22F771448);
      v15 = *v9;
      v16 = v9[1];
      v17 = *(v9 + *(v38 + 64));

      sub_22F10BBDC(&v40, v15, v16);

      v18 = sub_22F73F5B0();
      sub_22F10CC64(&v40, v18);

      type metadata accessor for Geohash();
      inited = swift_initStackObject();
      *(inited + 16) = 0;
      *(inited + 24) = 0;
      [v17 coordinate];
      v21 = v20;
      [v17 coordinate];
      sub_22F34AF8C(v10 + 1, v21, v22);
      v24 = v23;
      v26 = v25;
      swift_setDeallocating();

      sub_22F10BBDC(&v40, v24, v26);

      sub_22F120ADC(v9, &qword_27DAB1018, &qword_22F771448);
      v13 += v39;
      --v12;
    }

    while (v12);
    v27 = v43;
    v39 = v42;
    v11 = v41;
  }

  else
  {
    v39 = MEMORY[0x277D84FA0];
    v27 = MEMORY[0x277D84FA0];
  }

  v38 = sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  v37[1] = "EGINSWITH %@ && %K == %@";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_22F777170;
  v29 = MEMORY[0x277D837D0];
  *(v28 + 56) = MEMORY[0x277D837D0];
  v30 = sub_22F153470();
  *(v28 + 64) = v30;
  *(v28 + 32) = 0x696669746E656469;
  *(v28 + 40) = 0xEA00000000007265;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1608, &unk_22F772BB0);
  *(v28 + 96) = v31;
  v32 = MEMORY[0x277CC9C78];
  v33 = sub_22F16BC6C(&qword_2810A9240, &qword_27DAB1608, &unk_22F772BB0, MEMORY[0x277CC9C78]);
  *(v28 + 72) = v27;
  *(v28 + 136) = v29;
  *(v28 + 144) = v30;
  *(v28 + 104) = v33;
  *(v28 + 112) = 0x687361686F6567;
  *(v28 + 120) = 0xE700000000000000;
  *(v28 + 176) = v31;
  *(v28 + 184) = v33;
  *(v28 + 152) = v39;
  *(v28 + 216) = v29;
  *(v28 + 224) = v30;
  *(v28 + 192) = 1702125924;
  *(v28 + 200) = 0xE400000000000000;
  *(v28 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1DD0, &qword_22F7771E0);
  *(v28 + 264) = sub_22F16BC6C(&unk_2810A9228, &unk_27DAB1DD0, &qword_22F7771E0, v32);
  *(v28 + 232) = v11;

  v34 = sub_22F741560();
  v35 = sub_22F1935BC(v34);

  return v35;
}

void MusicCache.removeSongSource(songSourceIdentifier:location:locationTolerance:date:progressReporter:)(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4)
{
  v7 = *a4;
  type metadata accessor for Geohash();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  [a3 coordinate];
  v10 = v9;
  [a3 coordinate];
  sub_22F34AF8C(v7 + 1, v10, v11);
  v13 = v12;
  v15 = v14;
  swift_setDeallocating();

  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22F777170;
  v17 = MEMORY[0x277D837D0];
  *(v16 + 56) = MEMORY[0x277D837D0];
  v18 = sub_22F153470();
  *(v16 + 32) = 0x696669746E656469;
  *(v16 + 40) = 0xEA00000000007265;
  *(v16 + 96) = v17;
  *(v16 + 104) = v18;
  *(v16 + 64) = v18;
  *(v16 + 72) = a1;
  *(v16 + 80) = a2;
  *(v16 + 136) = v17;
  *(v16 + 144) = v18;
  *(v16 + 112) = 0x687361686F6567;
  *(v16 + 120) = 0xE700000000000000;
  *(v16 + 176) = v17;
  *(v16 + 184) = v18;
  *(v16 + 152) = v13;
  *(v16 + 160) = v15;
  *(v16 + 216) = v17;
  *(v16 + 224) = v18;
  *(v16 + 192) = 1702125924;
  *(v16 + 200) = 0xE400000000000000;

  v19 = sub_22F73F5B0();
  *(v16 + 256) = sub_22F120634(0, &qword_2810A8F00, 0x277CBEAA8);
  *(v16 + 264) = sub_22F15FD58();
  *(v16 + 232) = v19;
  v20 = sub_22F741560();
  sub_22F741690();
  if (v22)
  {
  }

  else
  {
    v21 = sub_22F7416F0();
    MEMORY[0x28223BE20](v21);
    sub_22F7417A0();
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MusicCache.status()()
{
  sub_22F7417A0();
  if (v0)
  {
  }

  else
  {
    v1 = 0;
    v2 = 0xE000000000000000;
  }

  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

void sub_22F1A1314()
{
  v1 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v2 = sub_22F740DF0();

  v3 = [v1 initWithEntityName_];

  type metadata accessor for SongSourceEntry();
  v4 = sub_22F7417B0();
  v5 = v0;
  if (v0)
  {
  }

  else
  {
    v6 = v4;
    sub_22F741B00();

    v40 = 0xD000000000000012;
    v41 = 0x800000022F790420;
    v38 = v6 >> 62;
    if (v6 >> 62)
    {
      goto LABEL_53;
    }

LABEL_4:
    v7 = sub_22F742010();
    MEMORY[0x231900B10](v7);

    MEMORY[0x231900B10](10, 0xE100000000000000);
    MEMORY[0x231900B10](v40, v41);

    type metadata accessor for SongEntry();
    v9 = [swift_getObjCClassFromMetadata(v8) fetchRequest];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DF8, &qword_22F7774B8);
    v10 = sub_22F7417B0();
    if (v5)
    {
    }

    else
    {
      v11 = v10;
      v39 = v6;
      v6 = v10 >> 62;
      v36 = v9;
      if (v10 >> 62)
      {
        sub_22F741A00();
      }

      sub_22F741B00();

      v41 = 0x800000022F790440;
      v12 = sub_22F742010();
      MEMORY[0x231900B10](v12);

      MEMORY[0x231900B10](10, 0xE100000000000000);
      MEMORY[0x231900B10](0xD000000000000010, 0x800000022F790440);

      if (v6)
      {

        v14 = sub_22F741D50();
        swift_bridgeObjectRelease_n();
        v11 = v14;
      }

      else
      {
        v13 = v11 & 0xFFFFFFFFFFFFFF8;

        sub_22F742060();
        if (swift_dynamicCastMetatype() || (v35 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
        {
LABEL_10:
        }

        else
        {
          v6 = v13 + 32;
          while (swift_dynamicCastClass())
          {
            v6 += 8;
            if (!--v35)
            {
              goto LABEL_10;
            }
          }

          v11 = v13 | 1;
        }
      }

      v37 = v3;
      v40 = MEMORY[0x277D84F90];
      v3 = (v11 & 0xFFFFFFFFFFFFFF8);
      if (v11 >> 62)
      {
        v15 = sub_22F741A00();
      }

      else
      {
        v15 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v16 = 0;
      v17 = MEMORY[0x277D84F90];
      while (v15 != v16)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x2319016F0](v16, v11);
        }

        else
        {
          if (v16 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_52;
          }

          v18 = *(v11 + 8 * v16 + 32);
        }

        v6 = v18;
        v5 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          sub_22F741A00();
          goto LABEL_4;
        }

        v19 = [v18 preferenceScore];

        ++v16;
        if (v19)
        {
          MEMORY[0x231900D00]();
          if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v6 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_22F7411C0();
          }

          sub_22F741220();
          v17 = v40;
          v16 = v5;
        }
      }

      if (v17 >> 62)
      {
        sub_22F741A00();
      }

      sub_22F741B00();
      MEMORY[0x231900B10](0xD00000000000001FLL, 0x800000022F790460);
      sub_22F7413B0();
      MEMORY[0x231900B10](657957, 0xE300000000000000);
      MEMORY[0x231900B10](0, 0xE000000000000000);

      MEMORY[0x231900B10](0xD00000000000001ALL, 0x800000022F790480);
      if (v38)
      {
        v20 = v39;
        v21 = sub_22F741A00();
        if (!v21)
        {
LABEL_44:

          return;
        }
      }

      else
      {
        v20 = v39;
        v21 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v21)
        {
          goto LABEL_44;
        }
      }

      if (v21 >= 1)
      {
        v22 = 0;
        v23 = v20 & 0xC000000000000001;
        do
        {
          if (v23)
          {
            v24 = MEMORY[0x2319016F0](v22, v20);
          }

          else
          {
            v24 = *(v20 + 8 * v22 + 32);
          }

          v25 = v24;
          v26 = [v24 identifier];
          if (v26)
          {
            v27 = v26;
            v28 = sub_22F740E20();
            v30 = v29;

            v31 = [v25 songs];
            if (v31)
            {
              v32 = v31;
              sub_22F1A3328(&qword_2810A9520, type metadata accessor for SongEntry, MEMORY[0x277D85378]);
              v33 = sub_22F741420();

              if ((v33 & 0xC000000000000001) != 0)
              {
                sub_22F741A00();
              }

              MEMORY[0x231900B10](v28, v30);

              MEMORY[0x231900B10](8250, 0xE200000000000000);
              v34 = sub_22F742010();
              MEMORY[0x231900B10](v34);

              MEMORY[0x231900B10](10, 0xE100000000000000);
              MEMORY[0x231900B10](9, 0xE100000000000000);

              v20 = v39;
            }

            else
            {

              v20 = v39;
            }
          }

          else
          {
          }

          ++v22;
        }

        while (v21 != v22);
        goto LABEL_44;
      }

      __break(1u);
    }
  }
}

id sub_22F1A1BBC(uint64_t a1)
{
  v28 = a1;
  v29[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22F73F470();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v26 - v7;
  type metadata accessor for MusicCache(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v9);
  v11 = [objc_opt_self() bundleForClass_];
  v12 = sub_22F740DF0();
  v13 = sub_22F740DF0();
  v14 = [v11 URLForResource:v12 withExtension:v13];

  if (v14)
  {
    sub_22F73F430();

    (*(v3 + 32))(v8, v5, v2);
    v14 = objc_allocWithZone(MEMORY[0x277CBE450]);
    v15 = sub_22F73F3F0();
    v16 = [v14 initWithContentsOfURL_];

    if (v16)
    {
      v26[1] = v1;
      v27 = v2;
      v14 = [objc_allocWithZone(MEMORY[0x277CBE4D8]) initWithManagedObjectModel_];
      v17 = *MEMORY[0x277CBE2E8];
      v18 = sub_22F73F3F0();
      if (qword_2810AC288 != -1)
      {
        swift_once();
      }

      sub_22F213728(qword_2810AC290);
      v19 = sub_22F740C80();

      v29[0] = 0;
      v20 = [v14 addPersistentStoreWithType:v17 configuration:0 URL:v18 options:v19 error:v29];

      if (v20)
      {
        v21 = v29[0];
      }

      else
      {
        v24 = v29[0];
        sub_22F73F370();

        swift_willThrow();
      }

      (*(v3 + 8))(v8, v27);
    }

    else
    {
      sub_22F1A297C();
      swift_allocError();
      *v23 = 0;
      *(v23 + 8) = 0;
      *(v23 + 16) = 2;
      swift_willThrow();

      (*(v3 + 8))(v8, v2);
    }
  }

  else
  {
    sub_22F1A297C();
    swift_allocError();
    *v22 = 0;
    *(v22 + 8) = 0;
    *(v22 + 16) = 2;
    swift_willThrow();
  }

  return v14;
}

char *sub_22F1A1FCC(uint64_t a1)
{
  v3 = sub_22F73F470();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1, v4);
  v8 = objc_allocWithZone(type metadata accessor for MusicCache(0));
  v9 = sub_22F192688(v6);
  if (!v1)
  {
    if (qword_2810A9BF8[0] != -1)
    {
      swift_once();
    }

    v10 = qword_2810B4EA8;
    *&v11 = CACurrentMediaTime();
    v26 = v10;
    sub_22F1B560C("MusicCacheReadInfo", 18, 2u, v11, 0, v10, &v31);
    sub_22F1A2878(v30);
    v12 = memcpy(v29, v30, sizeof(v29));
    v25[2] = OBJC_IVAR___PGMusicCache_managedObjectContext;
    MEMORY[0x28223BE20](v12);
    v25[-2] = v9;
    v25[-1] = v29;
    sub_22F7417A0();
    sub_22F1B2BBC(0);

    memcpy(v27, v29, 0x130uLL);
    memcpy(v28, v29, sizeof(v28));
    if (sub_22F1A3BE4(v28) == 1)
    {
      v13 = 0x6E776F6E6B6E55;
      v14 = 0xE700000000000000;
    }

    else
    {
      v13 = v28[0];
      v14 = v28[1];

      sub_22F120ADC(v27, &unk_27DAB1D90, &qword_22F7771A8);
      if (v13 == 56 && v14 == 0xE100000000000000)
      {
        goto LABEL_7;
      }
    }

    if (sub_22F742040())
    {
LABEL_7:

      return v9;
    }

    if (qword_2810A9478 != -1)
    {
      swift_once();
    }

    v15 = sub_22F740B90();
    __swift_project_value_buffer(v15, qword_2810B4DC0);

    v16 = sub_22F740B70();
    v17 = sub_22F7415E0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v29[0] = v19;
      *v18 = 136315394;
      v20 = sub_22F145F20(v13, v14, v29);

      *(v18 + 4) = v20;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_22F145F20(56, 0xE100000000000000, v29);
      _os_log_impl(&dword_22F0FC000, v16, v17, "[MemoriesMusic] Cache version on disk %s does not equal version in code %s: removing all content from the cache.", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2319033A0](v19, -1, -1);
      MEMORY[0x2319033A0](v18, -1, -1);
    }

    else
    {
    }

    v21 = [objc_opt_self() ignoreProgress];
    MusicCache.removeAll(progressReporter:)();

    sub_22F1A3B10(v29);
    memcpy(v34, v29, sizeof(v34));
    v33[0] = 56;
    v33[1] = 0xE100000000000000;
    *&v22 = CACurrentMediaTime();
    v23 = sub_22F1B560C("MusicCacheWriteInfo", 19, 2u, v22, 0, v26, &v32);
    MEMORY[0x28223BE20](v23);
    v25[-2] = v9;
    v25[-1] = v33;
    sub_22F7417A0();
    sub_22F1B2BBC(0);

    sub_22F1A3B90(v33);
  }

  return v9;
}

char *sub_22F1A26E0(void *a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = sub_22F73F470();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = 0;
  v8 = [a1 urlForApplicationDataFolderIdentifier:1 error:{v15, v5}];
  v9 = v15[0];
  if (v8)
  {
    v10 = v8;
    sub_22F73F430();
    v11 = v9;

    v12 = sub_22F1A1FCC(v7);
    if (!v1)
    {
      v9 = v12;
    }

    (*(v4 + 8))(v7, v3);
  }

  else
  {
    v13 = v15[0];
    sub_22F73F370();

    swift_willThrow();
  }

  return v9;
}

double sub_22F1A2878(_OWORD *a1)
{
  result = 0.0;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_22F1A297C()
{
  result = qword_27DAB1DA8;
  if (!qword_27DAB1DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1DA8);
  }

  return result;
}

uint64_t sub_22F1A2A44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Song(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_22F1A2B1C()
{
  if (*(v0 + 99))
  {
    v1 = 0x1000000;
  }

  else
  {
    v1 = 0;
  }

  if (*(v0 + 98))
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (*(v0 + 97))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  sub_22F19CAA4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v3 | *(v0 + 96) | v2 | v1, *(v0 + 104), *(v0 + 112));
}

uint64_t sub_22F1A2BD4(uint64_t (*a1)(void, void, void, void, void, void, void, void, void, unsigned int, void, void, void))
{
  if (*(v1 + 91))
  {
    v2 = 0x1000000;
  }

  else
  {
    v2 = 0;
  }

  if (*(v1 + 90))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (*(v1 + 89))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return a1(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), v4 | *(v1 + 88) | v3 | v2, *(v1 + 96), *(v1 + 104), *(v1 + 112));
}

void sub_22F1A2C80()
{
  if (*(v0 + 123))
  {
    v1 = 0x1000000;
  }

  else
  {
    v1 = 0;
  }

  if (*(v0 + 122))
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (*(v0 + 121))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  sub_22F19FC60(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), v3 | *(v0 + 120) | v2 | v1, *(v0 + 128), *(v0 + 136));
}

void sub_22F1A2D14()
{
  if (*(v0 + 81))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  sub_22F198724(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1 | *(v0 + 80), SHIBYTE(v1));
}

unint64_t sub_22F1A2DB8()
{
  result = qword_27DAB1DE0;
  if (!qword_27DAB1DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1DE0);
  }

  return result;
}

unint64_t sub_22F1A2E10()
{
  result = qword_27DAB1DE8;
  if (!qword_27DAB1DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1DE8);
  }

  return result;
}

uint64_t type metadata accessor for MusicCache(uint64_t a1)
{
  result = qword_2810AC268;
  if (!qword_2810AC268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F1A2EB8(uint64_t a1)
{
  result = sub_22F73F470();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph10MusicCacheC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22F1A2FA0(uint64_t a1, unsigned int a2)
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

uint64_t sub_22F1A2FE8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22F1A302C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_22F1A3078(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 18))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22F1A30D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicCache.WriteOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MusicCache.WriteOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicCache.LocationTolerance(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MusicCache.LocationTolerance(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22F1A3328(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22F1A3370(uint64_t a1, void *a2)
{
  v5 = sub_22F7416B0();
  v7 = v6;
  v8 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v9 = sub_22F740DF0();

  v10 = [v8 initWithEntityName_];

  [v10 setPredicate_];
  type metadata accessor for CacherStatusEntry();
  v11 = sub_22F7417B0();
  if (v2)
  {
  }

  else
  {
    v12 = v11;
    sub_22F7416A0();
    if (v12 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22F741A00())
    {
      v14 = v7;
      v18 = v5;
      if (!i)
      {
        break;
      }

      v15 = 0;
      v19 = i;
      v5 = (v12 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x2319016F0](v15, v12);
        }

        else
        {
          if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v16 = *(v12 + 8 * v15 + 32);
        }

        v17 = v16;
        v7 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
          break;
        }

        [a2 deleteObject_];
        if (v12 >> 62)
        {
          sub_22F741A00();
        }

        sub_22F741680();

        ++v15;
        if (v7 == v19)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_16:
  }
}

void sub_22F1A35D0(uint64_t a1)
{
  sub_22F741690();
  if (!v2)
  {
    v3 = sub_22F7416B0();
    v5 = v4;
    v6 = objc_allocWithZone(MEMORY[0x277CBE428]);

    v7 = sub_22F740DF0();

    v8 = [v6 initWithEntityName_];

    sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_22F771340;
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 64) = sub_22F153470();
    *(v9 + 32) = 0x73656372756F73;
    *(v9 + 40) = 0xE700000000000000;
    v10 = sub_22F741560();
    [v8 setPredicate_];

    v11 = *(v1 + OBJC_IVAR___PGMusicCache_managedObjectContext);
    type metadata accessor for SongEntry();
    v12 = sub_22F7417B0();
    sub_22F7416A0();
    if (v12 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22F741A00())
    {
      v17 = v3;
      v18 = v8;
      v14 = v5;
      if (!i)
      {
        break;
      }

      v5 = 0;
      v3 = v12 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x2319016F0](v5, v12);
        }

        else
        {
          if (v5 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v15 = *(v12 + 8 * v5 + 32);
        }

        v16 = v15;
        v8 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
          break;
        }

        [v11 deleteObject_];
        sub_22F741680();

        ++v5;
        if (v8 == i)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      sub_22F741A00();
    }

LABEL_13:

    sub_22F7416A0();
  }
}

void sub_22F1A3904()
{
  if (*(v0 + 57))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  sub_22F1979DC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), v1 | *(v0 + 56), *(v0 + 64));
}

uint64_t sub_22F1A394C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F1A39E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F1A3A48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F1A3AB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_22F1A3B10(_OWORD *a1)
{
  result = 0.0;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_22F1A3B3C()
{
  result = qword_2810AB5C0;
  if (!qword_2810AB5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AB5C0);
  }

  return result;
}

uint64_t sub_22F1A3BE4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

char *EventLabeler.label(events:progressReporter:)(int64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_27DAAFD80 != -1)
  {
LABEL_37:
    swift_once();
  }

  v8 = qword_27DAD0E70;
  *&v9 = CACurrentMediaTime();
  sub_22F1B560C("LabelEvents", 11, 2u, v9, 0, v8, v36);
  v10 = *(a1 + 16);
  v11 = sub_22F741670();

  if (v10)
  {
    v12 = 0;
    v13 = a1 + 32;
    v14 = MEMORY[0x277D84F90];
    v29 = a2;
    v28 = a1 + 32;
    do
    {
      v30 = v14;
      v15 = v13 + 40 * v12;
      a1 = v12;
      while (1)
      {
        if (a1 >= v10)
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        sub_22F15C30C(v15, &v33);
        v16 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          goto LABEL_35;
        }

        if (v11 >> 62)
        {
          a2 = a1 + 1;
          v20 = sub_22F741A00();
          v16 = a1 + 1;
          if (a1 == v20)
          {
LABEL_26:

            __swift_destroy_boxed_opaque_existential_0(&v33);
            v14 = v30;
            goto LABEL_29;
          }
        }

        else if (a1 == *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v37 = v16;
        if ((v11 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x2319016F0](a1, v11);
        }

        else
        {
          if (a1 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v17 = *(v11 + 8 * a1 + 32);
        }

        v18 = v17;
        sub_22F100260(&v33, v35);
        v35[5] = v18;
        sub_22F1A4024(v35, v18, a3, a4, &v33);
        if (v5)
        {

          sub_22F1A4394(v35);
          v14 = v30;

          v26 = 1;
          goto LABEL_33;
        }

        sub_22F1A4394(v35);
        v19 = v33;
        a2 = v34;
        if (*(&v33 + 1))
        {
          break;
        }

        sub_22F1A43FC(v33, 0, v34);
        ++a1;
        v15 += 40;
        v5 = 0;
        if (v37 == v10)
        {
          v14 = v30;
          goto LABEL_28;
        }
      }

      v21 = v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_22F13E7A0(0, *(v30 + 2) + 1, 1, v30);
      }

      v23 = *(v21 + 2);
      v22 = *(v21 + 3);
      v24 = v21;
      if (v23 >= v22 >> 1)
      {
        v24 = sub_22F13E7A0((v22 > 1), v23 + 1, 1, v21);
      }

      *(v24 + 2) = v23 + 1;
      v14 = v24;
      v25 = &v24[24 * v23];
      *(v25 + 2) = v19;
      *(v25 + 6) = a2;
      v12 = v37;
      a2 = v29;
      v5 = 0;
      v13 = v28;
    }

    while (v37 != v10);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

LABEL_28:

LABEL_29:
  sub_22F7416A0();
  if (v5)
  {
  }

  v26 = 0;
LABEL_33:
  sub_22F1B2BBC(v26);

  return v14;
}

void sub_22F1A4024(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *x8_0@<X8>)
{
  v11 = objc_autoreleasePoolPush();
  sub_22F1A40C4(a1, a2, a4, a5, &v12, x8_0);
  objc_autoreleasePoolPop(v11);
}

uint64_t sub_22F1A40C4@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, uint64_t *a6@<X8>)
{
  v36 = a6;
  v12 = sub_22F740B90();
  v37 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(a4 + 8))(a1, a2, a3, a4, v13);
  if (v6)
  {
    goto LABEL_9;
  }

  v17 = result;
  v34 = v12;
  v35 = 0;
  if (qword_27DAAFD80 != -1)
  {
    swift_once();
  }

  sub_22F1B3158(v15);

  v18 = sub_22F740B70();
  v19 = sub_22F7415D0();

  v20 = os_log_type_enabled(v18, v19);
  v21 = a1;
  v33 = a5;
  if (v20)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v38 = v23;
    *v22 = 136315138;
    v24 = MEMORY[0x231900D40](v17, &type metadata for EventLabelConfidence);
    v25 = v15;
    v27 = sub_22F145F20(v24, v26, &v38);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_22F0FC000, v18, v19, "[EventLabeling] Inferred scores: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x2319033A0](v23, -1, -1);
    MEMORY[0x2319033A0](v22, -1, -1);

    (*(v37 + 8))(v25, v34);
  }

  else
  {

    (*(v37 + 8))(v15, v34);
  }

  v28 = v21[3];
  v29 = v21[4];
  __swift_project_boxed_opaque_existential_1(v21, v28);
  v6 = v35;
  result = (*(v29 + 24))(v28, v29);
  v31 = v36;
  if (v6)
  {

    a5 = v33;
LABEL_9:
    *a5 = v6;
    return result;
  }

  *v36 = result;
  v31[1] = v30;
  v31[2] = v17;
  return result;
}

uint64_t sub_22F1A4394(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1E70, &unk_22F781120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22F1A43FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

uint64_t sub_22F1A4494(uint64_t *a1, uint64_t a2)
{
  v4 = OBJC_IVAR___PGMusicCuratorContext_isMemoryCreationCuration;
  swift_beginAccess();
  if (*(a2 + v4) == 1 && (v5 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_recentlyUsedSongs), v6 = OBJC_IVAR___PGMusicCurationRecentlyUsedSongs_mostRecentlyUsedSongIDDateMap, swift_beginAccess(), *(*(v5 + v6) + 16)))
  {
    v7 = RecentlyUsedSongs.songIdsRecommendedForExclusion()();
    v8 = sub_22F15E910(*a1, a1[1], v7);

    v9 = v8 ^ 1;
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

uint64_t sub_22F1A4590(uint64_t a1, uint64_t a2)
{
  v4 = sub_22F73EFE0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a2 + OBJC_IVAR___PGMusicCuratorContext_genre);
  swift_beginAccess();

  v9 = sub_22F740F10();

  if (v9 < 2)
  {
    return 1;
  }

  v10 = v8[1];
  v54 = *v8;
  v55 = v10;

  sub_22F73EFD0();
  v50 = sub_22F160DE4();
  sub_22F7418D0();
  (*(v5 + 8))(v7, v4);

  v51 = sub_22F740EA0();
  v12 = v11;

  v14 = *(a1 + 64);
  if (v14)
  {
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = 0;
      v17 = v14 + 40;
      v49 = *(v14 + 16);
      v46 = v15 - 1;
      v48 = MEMORY[0x277D84F90];
      v47 = v14 + 40;
      do
      {
        v18 = (v17 + 16 * v16);
        v19 = v16;
        while (1)
        {
          if (v19 >= *(v14 + 16))
          {
            __break(1u);
            goto LABEL_40;
          }

          v21 = *(v18 - 1);
          v20 = *v18;
          v16 = v19 + 1;
          v54 = sub_22F740EA0();
          v55 = v22;
          v52 = v51;
          v53 = v12;
          v23 = v12;

          v24 = sub_22F741910();

          if (v24)
          {
            break;
          }

          v18 += 2;
          ++v19;
          v12 = v23;
          if (v49 == v16)
          {
            goto LABEL_19;
          }
        }

        v25 = v48;
        result = swift_isUniquelyReferenced_nonNull_native();
        v56 = v25;
        if ((result & 1) == 0)
        {
          result = sub_22F146454(0, *(v25 + 16) + 1, 1);
          v25 = v56;
        }

        v27 = *(v25 + 16);
        v26 = *(v25 + 24);
        if (v27 >= v26 >> 1)
        {
          result = sub_22F146454((v26 > 1), v27 + 1, 1);
          v25 = v56;
        }

        *(v25 + 16) = v27 + 1;
        v48 = v25;
        v28 = v25 + 16 * v27;
        *(v28 + 32) = v21;
        *(v28 + 40) = v20;
        v17 = v47;
        v12 = v23;
      }

      while (v46 != v19);
    }

    else
    {
      v48 = MEMORY[0x277D84F90];
    }

LABEL_19:

    v29 = v48;
    v30 = *(v48 + 16);
    if (v30)
    {
      v31 = 0;
      v32 = v48 + 40;
      v49 = v30 - 1;
      v50 = v48 + 40;
      v51 = MEMORY[0x277D84F90];
LABEL_21:
      v33 = (v32 + 16 * v31);
      v34 = v31;
      while (v34 < *(v29 + 16))
      {
        v36 = *(v33 - 1);
        v35 = *v33;
        if (sub_22F740EA0() == 0x636973756DLL && v37 == 0xE500000000000000)
        {
        }

        else
        {
          v39 = sub_22F742040();

          if ((v39 & 1) == 0)
          {
            v40 = v51;
            result = swift_isUniquelyReferenced_nonNull_native();
            v54 = v40;
            if ((result & 1) == 0)
            {
              result = sub_22F146454(0, *(v51 + 16) + 1, 1);
              v51 = v54;
            }

            v42 = *(v51 + 16);
            v41 = *(v51 + 24);
            if (v42 >= v41 >> 1)
            {
              result = sub_22F146454((v41 > 1), v42 + 1, 1);
              v51 = v54;
            }

            v31 = v34 + 1;
            v32 = v50;
            v43 = v51;
            *(v51 + 16) = v42 + 1;
            v44 = v43 + 16 * v42;
            *(v44 + 32) = v36;
            *(v44 + 40) = v35;
            v29 = v48;
            if (v49 != v34)
            {
              goto LABEL_21;
            }

            goto LABEL_38;
          }

          v29 = v48;
        }

        ++v34;
        v33 += 2;
        if (v30 == v34)
        {
          goto LABEL_38;
        }
      }

LABEL_40:
      __break(1u);
    }

    else
    {
      v51 = MEMORY[0x277D84F90];
LABEL_38:

      v45 = *(v51 + 16);

      return v45 != 0;
    }
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t ExtendedTokenCollectionGenerator.Error.hashValue.getter()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  return sub_22F7421D0();
}

uint64_t ExtendedTokenCollectionGenerator.__allocating_init(graph:storyPhotoLibraryContext:safeTokenAnalyzer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = OBJC_IVAR____TtC11PhotosGraph32ExtendedTokenCollectionGenerator_storyPhotoLibraryContext;
  v8 = sub_22F740620();
  (*(*(v8 - 8) + 32))(v6 + v7, a2, v8);
  *(v6 + OBJC_IVAR____TtC11PhotosGraph32ExtendedTokenCollectionGenerator_safeTokenAnalyzer) = a3;
  return v6;
}

uint64_t ExtendedTokenCollectionGenerator.init(graph:storyPhotoLibraryContext:safeTokenAnalyzer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = OBJC_IVAR____TtC11PhotosGraph32ExtendedTokenCollectionGenerator_storyPhotoLibraryContext;
  v7 = sub_22F740620();
  (*(*(v7 - 8) + 32))(v3 + v6, a2, v7);
  *(v3 + OBJC_IVAR____TtC11PhotosGraph32ExtendedTokenCollectionGenerator_safeTokenAnalyzer) = a3;
  return v3;
}

uint64_t ExtendedTokenCollectionGenerator.generateExtendedTokenCollection(representativeAssetUUIDsByMomentUUID:queryTokens:progressReporter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v110 = a3;
  v8 = sub_22F740510();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v106 = v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v108 = v89 - v12;
  if (qword_2810A9418 != -1)
  {
    swift_once();
  }

  v13 = sub_22F740B90();
  v107 = __swift_project_value_buffer(v13, qword_2810B4D00);
  v14 = sub_22F740B70();
  v15 = sub_22F7415C0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_22F0FC000, v14, v15, "generateExtendedTokenCollection has started.", v16, 2u);
    MEMORY[0x2319033A0](v16, -1, -1);
  }

  if (qword_2810A9410 != -1)
  {
    swift_once();
  }

  v17 = qword_2810B4CF8;
  result = sub_22F741690();
  if (!v4)
  {
    v104 = v9;
    v105 = v8;
    v103 = a4;
    if (qword_2810A9B10 != -1)
    {
      swift_once();
    }

    v19 = qword_2810B4E10;
    *&v20 = CACurrentMediaTime();
    sub_22F1B560C("ExtendedTokenCollectionGenerator", 32, 2u, v20, 0, v19, &v113);
    sub_22F740200();
    swift_allocObject();
    v21 = v17;
    v22 = sub_22F7401F0();
    v23 = objc_opt_self();

    sub_22F1534D0();
    v24 = sub_22F741410();

    v25 = [v23 momentNodesForUUIDs:v24 inGraph:*(v109 + 16)];

    sub_22F7401E0();
    sub_22F1A6060(a2, v114);
    sub_22F741690();
    v100 = v22;
    swift_allocObject();
    v26 = v21;
    v101 = sub_22F7401F0();
    v27 = v114[0];
    v28 = ExtendedTokenCollectionGenerator.generatePersonExtendedTokens(for:momentNodes:)(v114[0], v25);
    v29 = v118;
    v30 = ExtendedTokenCollectionGenerator.generatePersonExtendedTokens(for:using:isTrip:)(v25, v28, *(v118 + 16) != 0);
    v102 = 0;
    v31 = v30;
    v98 = v26;
    v99 = v27;
    v97 = v29;
    v112[0] = v28;

    sub_22F144F60(v33, v32);
    v34 = v112[0];
    v35 = v102;
    sub_22F741690();
    v102 = v35;
    if (v35)
    {

      sub_22F1A78EC(v114);
    }

    else
    {
      v94 = v31;
      v95 = v28;
      v96 = v34;
      sub_22F7401E0();
      swift_allocObject();
      v36 = v98;
      v37 = sub_22F7401F0();
      v38 = ExtendedTokenCollectionGenerator.generatePetExtendedTokens(for:momentNodes:)(v99, v25);
      v39 = v102;
      v40 = ExtendedTokenCollectionGenerator.generatePetExtendedTokens(for:using:)(v25, v38);
      if (v39)
      {

        sub_22F1A78EC(v114);

        sub_22F1B2BBC(0);
      }

      v41 = v40;
      v99 = v37;
      v112[0] = v38;

      sub_22F144F34(v42, v41);
      v98 = v112[0];
      sub_22F741690();
      v102 = 0;
      v93 = v41;
      sub_22F7401E0();
      swift_allocObject();
      v92 = v36;
      v43 = sub_22F7401F0();
      v44 = objc_opt_self();
      v45 = v25;
      v46 = [v44 addressOfMoment];
      v47 = [objc_msgSend(v45 graph)];
      swift_unknownObjectRelease();
      v48 = [v47 concreteGraph];

      if (!v48)
      {
        result = sub_22F741D40();
        __break(1u);
        return result;
      }

      v49 = [v45 elementIdentifiers];
      v50 = [v48 adjacencyWithSources:v49 relation:v46];

      v91 = v50;
      v112[0] = v50;
      v112[1] = v48;
      v51 = _s11PhotosGraph32ExtendedTokenCollectionGeneratorC23generateCityAndAreaInfo3for36representativeAssetUUIDsByMomentUUIDSDySo19KGElementIdentifierVAC0hK0VG_SDyAhC0jK0VGtAA04NodeE15BinaryAdjacencyVySo07PGGraphquE0CSo0x7AddressuE0CG_SDySSSaySSGGtF_0(v112, a1);
      graphReference = v121.super.super.super._graphReference;
      v121.super.super.super.super.isa = v45;
      v93 = v45;
      v53 = ExtendedTokenCollectionGenerator.generateHomeCityNodes(for:)(v121);
      sub_22F7401E0();
      swift_allocObject();
      v54 = v92;
      v92 = v43;
      v55 = v54;
      v95 = sub_22F7401F0();
      D0VG_tF_0 = _s11PhotosGraph32ExtendedTokenCollectionGeneratorC016generateLocationC6Tokens3forSay0A12Intelligence0hcD0VGSayAF05QueryD0VG_tF_0(v114[1]);
      v90 = v51;
      v94 = v53;
      v57 = ExtendedTokenCollectionGenerator.generateLocationExtendedTokens(for:areaInfoByAreaNodeIdentifier:homeCityNodes:)(v51, graphReference, v53);
      v58 = v48;
      v59 = v57;

      v112[0] = D0VG_tF_0;
      sub_22F144B08(v60, v59);
      v61 = v112[0];
      v62 = v102;
      sub_22F741690();
      if (v62)
      {

        swift_unknownObjectRelease();

        sub_22F1A78EC(v114);

        sub_22F1B2BBC(0);
      }

      v89[5] = v61;
      v89[6] = v58;
      sub_22F7401E0();
      swift_allocObject();
      v63 = v55;
      v64 = sub_22F7401F0();
      v65 = ExtendedTokenCollectionGenerator.generateHomeExtendedTokens(for:cityInfoByCityNodeIdentifier:)(v94, v90);

      sub_22F741690();
      v90 = v65;
      sub_22F7401E0();
      swift_allocObject();
      v66 = v63;
      v67 = sub_22F7401F0();
      v68 = sub_22F266A70(v114[2]);
      sub_22F741690();
      v89[1] = v68;
      v89[3] = v64;
      v89[2] = v67;
      sub_22F7401E0();
      swift_allocObject();
      v69 = v66;
      v89[4] = sub_22F7401F0();
      v120 = v115;
      v112[0] = v115;
      sub_22F1A791C(&v120, v111);

      sub_22F144F08(v71, v70);
      v72 = v93;
      v73 = ExtendedTokenCollectionGenerator.generateTimeExtendedTokens(for:momentNodes:)(v112[0], v93);

      ExtendedTokenCollectionGenerator.generateTimeExtendedTokens(for:timeQueryExtendedTokens:)(v72, v73);

      sub_22F741690();
      sub_22F7401E0();
      _s11PhotosGraph32ExtendedTokenCollectionGeneratorC017generatePartOfDayC6Tokens3forSay0A12Intelligence0hijcD0VGSayAF05QueryD0VG_tF_0(v116);
      _s11PhotosGraph32ExtendedTokenCollectionGeneratorC018generatePartOfWeekC6Tokens3forSay0A12Intelligence0hijcD0VGSayAF05QueryD0VG_tF_0(v117);
      swift_allocObject();
      v74 = v69;
      sub_22F7401F0();
      ExtendedTokenCollectionGenerator.generateTripExtendedTokens(for:)(v97);
      sub_22F7401E0();
      _s11PhotosGraph32ExtendedTokenCollectionGeneratorC013generateEventC6Tokens3forSay0A12Intelligence0hcD0VGSayAF05QueryD0VG_tF_0(v119);
      sub_22F1A78EC(v114);
      sub_22F7416A0();
      v102 = 0;
      v75 = sub_22F740B70();
      v76 = sub_22F7415C0();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_22F0FC000, v75, v76, "generateExtendedTokenCollection complete.", v77, 2u);
        MEMORY[0x2319033A0](v77, -1, -1);
      }

      v78 = v108;
      sub_22F740500();
      (*(v104 + 16))(v106, v78, v105);
      v79 = sub_22F740B70();
      v80 = sub_22F7415C0();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v112[0] = v82;
        *v81 = 136380675;
        sub_22F1A798C();
        v83 = v106;
        v84 = v105;
        v85 = sub_22F742010();
        v87 = v86;
        (*(v104 + 8))(v83, v84);
        v88 = sub_22F145F20(v85, v87, v112);

        *(v81 + 4) = v88;
        _os_log_impl(&dword_22F0FC000, v79, v80, "Extended token collection: %{private}s)", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v82);
        MEMORY[0x2319033A0](v82, -1, -1);
        MEMORY[0x2319033A0](v81, -1, -1);

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();

        (*(v104 + 8))(v106, v105);
      }

      (*(v104 + 32))(v103, v108, v105);
    }

    sub_22F1B2BBC(0);
  }

  return result;
}

uint64_t ExtendedTokenCollectionGenerator.deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph32ExtendedTokenCollectionGenerator_storyPhotoLibraryContext;
  v2 = sub_22F740620();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ExtendedTokenCollectionGenerator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph32ExtendedTokenCollectionGenerator_storyPhotoLibraryContext;
  v2 = sub_22F740620();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_22F1A6060(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v164 = a2;
  v3 = sub_22F7404D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v143 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_22F7403B0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v206 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22F73FDA0();
  MEMORY[0x28223BE20](v10);
  v166 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v174 = &v143 - v13;
  MEMORY[0x28223BE20](v14);
  v180 = &v143 - v15;
  MEMORY[0x28223BE20](v16);
  v184 = &v143 - v17;
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v19);
  v167 = &v143 - v20;
  MEMORY[0x28223BE20](v21);
  v170 = &v143 - v22;
  MEMORY[0x28223BE20](v23);
  v190 = &v143 - v24;
  MEMORY[0x28223BE20](v25);
  MEMORY[0x28223BE20](v26);
  v217 = &v143 - v27;
  v33 = MEMORY[0x28223BE20](v28);
  v177 = *(a1 + 16);
  if (!v177)
  {
    v200 = MEMORY[0x277D84F98];
    v165 = MEMORY[0x277D84F90];
    v176 = MEMORY[0x277D84F90];
    v181 = MEMORY[0x277D84F90];
    v187 = MEMORY[0x277D84F90];
    v192 = MEMORY[0x277D84F90];
    v171 = MEMORY[0x277D84F90];
    v169 = MEMORY[0x277D84F90];
    v173 = MEMORY[0x277D84F90];
LABEL_123:
    v138 = v164;
    v139 = v173;
    *v164 = v200;
    v138[1] = v139;
    v140 = v192;
    v138[2] = v171;
    v138[3] = v140;
    v141 = v181;
    v138[4] = v187;
    v138[5] = v141;
    v142 = v165;
    v138[6] = v176;
    v138[7] = v142;
    v138[8] = v169;
    return;
  }

  v160 = v32;
  v157 = v31;
  v34 = 0;
  v36 = *(v29 + 16);
  v35 = v29 + 16;
  v213 = v36;
  v188 = (*(v35 + 64) + 32) & ~*(v35 + 64);
  v178 = a1 + v188;
  v205 = (v4 + 88);
  v204 = *MEMORY[0x277D3C4F8];
  v195 = *MEMORY[0x277D3C498];
  v189 = *MEMORY[0x277D3C4D8];
  v183 = *MEMORY[0x277D3C520];
  v179 = *MEMORY[0x277D3C4B0];
  v191 = (v4 + 8);
  v197 = (v4 + 96);
  v172 = *MEMORY[0x277D3C500];
  v168 = *MEMORY[0x277D3C510];
  v163 = *MEMORY[0x277D3C4D0];
  v162 = *MEMORY[0x277D3C4C0];
  v161 = *MEMORY[0x277D3C4C8];
  v159 = *MEMORY[0x277D3C4E0];
  v158 = *MEMORY[0x277D3C508];
  v156 = *MEMORY[0x277D3C4F0];
  v155 = *MEMORY[0x277D3C528];
  v154 = *MEMORY[0x277D3C4E8];
  v153 = *MEMORY[0x277D3C4A8];
  v152 = *MEMORY[0x277D3C4B8];
  v151 = *MEMORY[0x277D3C4A0];
  v150 = *MEMORY[0x277D3C518];
  v202 = v8 + 8;
  v203 = v8 + 16;
  v196 = (v35 + 16);
  v193 = (v35 + 24);
  v175 = (v35 - 8);
  v165 = MEMORY[0x277D84F90];
  v176 = MEMORY[0x277D84F90];
  v181 = MEMORY[0x277D84F90];
  v187 = MEMORY[0x277D84F90];
  v214 = v35;
  v212 = *(v35 + 56);
  v192 = MEMORY[0x277D84F90];
  v171 = MEMORY[0x277D84F90];
  v169 = MEMORY[0x277D84F90];
  v173 = MEMORY[0x277D84F90];
  v37 = &v143 - v30;
  v216 = MEMORY[0x277D84F98];
  v200 = MEMORY[0x277D84F98];
  v198 = v8;
  v186 = v3;
  v185 = v6;
  v194 = v7;
  v215 = v10;
  v211 = &v143 - v30;
  while (1)
  {
    v182 = v34;
    v213(v37, v178 + v212 * v34, v10, v33);
    v41 = sub_22F73FD40();
    v42 = v41;
    v210 = *(v41 + 16);
    if (v210)
    {
      break;
    }

LABEL_3:
    v38 = v8;

    v39 = v182 + 1;
    v37 = v211;
    (*v175)(v211, v10);
    v34 = v39;
    v40 = v39 == v177;
    v8 = v38;
    if (v40)
    {
      goto LABEL_123;
    }
  }

  v43 = 0;
  v209 = v41 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v199 = v41;
  while (v43 < *(v42 + 16))
  {
    v44 = v206;
    (*(v8 + 16))(v206, v209 + *(v8 + 72) * v43, v7);
    sub_22F7403A0();
    (*(v8 + 8))(v44, v7);
    v45 = (*v205)(v6, v3);
    if (v45 != v204)
    {
      if (v45 == v195)
      {
        goto LABEL_17;
      }

      if (v45 == v189)
      {
        (*v197)(v6, v3);
        (v213)(v190, v211, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v192 = sub_22F13E8C0(0, v192[2] + 1, 1, v192);
        }

        v107 = v192[2];
        v106 = v192[3];
        if (v107 >= v106 >> 1)
        {
          v192 = sub_22F13E8C0((v106 > 1), v107 + 1, 1, v192);
        }

        v108 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EB0, &unk_22F777710) + 48);
        v109 = v192;
        v192[2] = v107 + 1;
        (*v196)(&v109[v188 + v107 * v212], v190, v10);
        sub_22F120ADC(v6 + v108, &qword_27DAB1EB8, &unk_22F77A2D0);
        sub_22F120ADC(v6, &qword_27DAB1EB8, &unk_22F77A2D0);
        v8 = v198;
        v42 = v199;
        goto LABEL_7;
      }

      if (v45 == v183)
      {
        (*v191)(v6, v3);
        (v213)(v184, v211, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v187 = sub_22F13E8C0(0, *(v187 + 2) + 1, 1, v187);
        }

        v111 = *(v187 + 2);
        v110 = *(v187 + 3);
        if (v111 >= v110 >> 1)
        {
          v187 = sub_22F13E8C0((v110 > 1), v111 + 1, 1, v187);
        }

        v112 = v187;
        *(v187 + 2) = v111 + 1;
        (*v196)(&v112[v188 + v111 * v212], v184, v10);
        goto LABEL_84;
      }

      if (v45 == v179)
      {
        (*v197)(v6, v3);
        (v213)(v180, v211, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v181 = sub_22F13E8C0(0, v181[2] + 1, 1, v181);
        }

        v114 = v181[2];
        v113 = v181[3];
        if (v114 >= v113 >> 1)
        {
          v181 = sub_22F13E8C0((v113 > 1), v114 + 1, 1, v181);
        }

        v115 = v181;
        v181[2] = v114 + 1;
        (*v196)(&v115[v188 + v114 * v212], v180, v10);
        v116 = sub_22F740A20();
        goto LABEL_83;
      }

      if (v45 == v172)
      {
        (*v197)(v6, v3);
        (v213)(v174, v211, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v176 = sub_22F13E8C0(0, *(v176 + 2) + 1, 1, v176);
        }

        v118 = *(v176 + 2);
        v117 = *(v176 + 3);
        if (v118 >= v117 >> 1)
        {
          v176 = sub_22F13E8C0((v117 > 1), v118 + 1, 1, v176);
        }

        v119 = v176;
        *(v176 + 2) = v118 + 1;
        (*v196)(&v119[v188 + v118 * v212], v174, v10);
        v116 = sub_22F740A70();
        goto LABEL_83;
      }

      if (v45 == v168)
      {
        (*v191)(v6, v3);
        (v213)(v170, v211, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v173 = sub_22F13E8C0(0, v173[2] + 1, 1, v173);
        }

        v121 = v173[2];
        v120 = v173[3];
        if (v121 >= v120 >> 1)
        {
          v173 = sub_22F13E8C0((v120 > 1), v121 + 1, 1, v173);
        }

        v122 = v173;
        v173[2] = v121 + 1;
        (*v196)(&v122[v188 + v121 * v212], v170, v10);
        goto LABEL_84;
      }

      if (v45 == v163)
      {
        (*v197)(v6, v3);
        (v213)(v167, v211, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v171 = sub_22F13E8C0(0, *(v171 + 2) + 1, 1, v171);
        }

        v124 = *(v171 + 2);
        v123 = *(v171 + 3);
        if (v124 >= v123 >> 1)
        {
          v171 = sub_22F13E8C0((v123 > 1), v124 + 1, 1, v171);
        }

        v125 = v171;
        *(v171 + 2) = v124 + 1;
        (*v196)(&v125[v188 + v124 * v212], v167, v10);
        v116 = sub_22F740520();
LABEL_83:
        (*(*(v116 - 8) + 8))(v6, v116);
      }

      else
      {
        if (v45 == v162)
        {
          (*v197)(v6, v3);
          v126 = v6;
          v127 = &unk_27DAB1EA8;
          v128 = &unk_22F777708;
        }

        else
        {
          if (v45 != v161)
          {
            if (v45 == v159)
            {
              goto LABEL_17;
            }

            if (v45 == v158)
            {
              goto LABEL_18;
            }

            if (v45 != v156)
            {
              if (v45 == v155)
              {
                (*v197)(v6, v3);
                v137 = sub_22F73FFD0();
                (*(*(v137 - 8) + 8))(v6, v137);
              }

              else if (v45 != v154 && v45 != v153 && v45 != v152 && v45 != v151 && v45 != v150)
              {
LABEL_17:
                (*v191)(v6, v3);
              }

LABEL_18:
              v60 = v8;
              v61 = v3;
              v62 = v43;
              if (qword_2810A9418 != -1)
              {
                swift_once();
              }

              v63 = sub_22F740B90();
              __swift_project_value_buffer(v63, qword_2810B4D00);
              v64 = sub_22F740B70();
              v65 = sub_22F7415E0();
              if (os_log_type_enabled(v64, v65))
              {
                v66 = v6;
                v67 = swift_slowAlloc();
                *v67 = 0;
                _os_log_impl(&dword_22F0FC000, v64, v65, "New query token needs to be accounted for in extended token generation.", v67, 2u);
                v68 = v67;
                v6 = v66;
                MEMORY[0x2319033A0](v68, -1, -1);
              }

              v43 = v62;
              v3 = v61;
              v7 = v194;
              v8 = v60;
              v10 = v215;
              goto LABEL_7;
            }

            (*v191)(v6, v3);
            v10 = v215;
            (v213)(v157, v211, v215);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v165 = sub_22F13E8C0(0, v165[2] + 1, 1, v165);
            }

            v7 = v194;
            v135 = v165[2];
            v134 = v165[3];
            if (v135 >= v134 >> 1)
            {
              v165 = sub_22F13E8C0((v134 > 1), v135 + 1, 1, v165);
            }

            v136 = v165;
            v165[2] = v135 + 1;
            (*v196)(&v136[v188 + v135 * v212], v157, v10);
            goto LABEL_84;
          }

          (*v197)(v6, v3);
          v129 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1E98, &qword_22F7776F8) + 48);
          v130 = sub_22F740580();
          (*(*(v130 - 8) + 8))(v6 + v129, v130);
          v126 = v6;
          v127 = &qword_27DAB1EA0;
          v128 = &qword_22F777700;
        }

        sub_22F120ADC(v126, v127, v128);
        (v213)(v166, v211, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v169 = sub_22F13E8C0(0, *(v169 + 2) + 1, 1, v169);
        }

        v132 = *(v169 + 2);
        v131 = *(v169 + 3);
        if (v132 >= v131 >> 1)
        {
          v169 = sub_22F13E8C0((v131 > 1), v132 + 1, 1, v169);
        }

        v133 = v169;
        *(v169 + 2) = v132 + 1;
        (*v196)(&v133[v188 + v132 * v212], v166, v10);
      }

LABEL_84:
      v8 = v198;
      v42 = v199;
      goto LABEL_7;
    }

    v201 = v43;
    (*v197)(v6, v3);
    v46 = *v6;
    sub_22F191888();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v47);
    sub_22F1515F8(v46);

    v49 = sub_22F741410();

    v50 = [ObjCClassFromMetadata localIdentifiersWithUUIDs_];

    if (v50)
    {
      v51 = sub_22F741420();

      v52 = v51;
      v10 = v215;
      if (*(v51 + 16))
      {
        v53 = 0;
        v54 = v51 + 56;
        v55 = 1 << *(v52 + 32);
        if (v55 < 64)
        {
          v56 = ~(-1 << v55);
        }

        else
        {
          v56 = -1;
        }

        v57 = v56 & *(v52 + 56);
        v58 = (v55 + 63) >> 6;
        v59 = v216;
        v207 = v58;
        v208 = v52;
        while (v57)
        {
          v69 = v53;
LABEL_29:
          v70 = (*(v52 + 48) + ((v69 << 10) | (16 * __clz(__rbit64(v57)))));
          v71 = *v70;
          v72 = v70[1];
          (v213)(v217, v211, v10);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v218 = v59;
          v216 = v71;
          v74 = v71;
          v75 = v59;
          v77 = sub_22F1229E8(v74, v72);
          v78 = *(v59 + 16);
          v79 = (v76 & 1) == 0;
          v80 = v78 + v79;
          if (__OFADD__(v78, v79))
          {
            goto LABEL_126;
          }

          v81 = v76;
          if (*(v59 + 24) >= v80)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C10, &qword_22F770D80);
              v200 = sub_22F741DC0();
              if (*(v59 + 16))
              {
                v89 = (v200 + 64);
                v90 = (v59 + 64);
                v91 = ((1 << *(v200 + 32)) + 63) >> 6;
                v144 = v59 + 64;
                if (v200 != v59 || v89 >= &v90[8 * v91])
                {
                  memmove(v89, v90, 8 * v91);
                }

                v92 = 0;
                *(v200 + 16) = *(v59 + 16);
                v93 = 1 << *(v59 + 32);
                if (v93 < 64)
                {
                  v94 = ~(-1 << v93);
                }

                else
                {
                  v94 = -1;
                }

                v95 = v94 & *(v59 + 64);
                v96 = (v93 + 63) >> 6;
                v145 = v96;
                if (v95)
                {
                  do
                  {
                    v97 = __clz(__rbit64(v95));
                    v149 = (v95 - 1) & v95;
LABEL_52:
                    v100 = v97 | (v92 << 6);
                    v146 = 16 * v100;
                    v101 = *(v59 + 56);
                    v102 = (*(v59 + 48) + 16 * v100);
                    v103 = v102[1];
                    v148 = *v102;
                    v147 = v100 * v212;
                    (v213)(v160, v101 + v100 * v212, v215);
                    v104 = v200;
                    v105 = (*(v200 + 48) + v146);
                    *v105 = v148;
                    v105[1] = v103;
                    (*v196)((*(v104 + 56) + v147), v160, v215);

                    v96 = v145;
                    v95 = v149;
                  }

                  while (v149);
                }

                v98 = v92;
                while (1)
                {
                  v92 = v98 + 1;
                  if (__OFADD__(v98, 1))
                  {
                    goto LABEL_128;
                  }

                  if (v92 >= v96)
                  {
                    break;
                  }

                  v99 = *(v144 + 8 * v92);
                  ++v98;
                  if (v99)
                  {
                    v97 = __clz(__rbit64(v99));
                    v149 = (v99 - 1) & v99;
                    goto LABEL_52;
                  }
                }
              }

              v75 = v200;
            }

            v82 = v216;
          }

          else
          {
            sub_22F1269B8(v80, isUniquelyReferenced_nonNull_native);
            v75 = v218;
            v82 = v216;
            v83 = sub_22F1229E8(v216, v72);
            if ((v81 & 1) != (v84 & 1))
            {
              goto LABEL_129;
            }

            v77 = v83;
          }

          v57 &= v57 - 1;
          v200 = v75;
          if (v81)
          {

            v10 = v215;
            (*v193)(v75[7] + v77 * v212, v217, v215);
          }

          else
          {
            v75[(v77 >> 6) + 8] |= 1 << v77;
            v85 = (v75[6] + 16 * v77);
            *v85 = v82;
            v85[1] = v72;
            v10 = v215;
            (*v196)((v75[7] + v77 * v212), v217, v215);
            v86 = v75[2];
            v87 = __OFADD__(v86, 1);
            v88 = v86 + 1;
            if (v87)
            {
              goto LABEL_127;
            }

            v75[2] = v88;
          }

          v59 = v75;
          v53 = v69;
          v58 = v207;
          v52 = v208;
        }

        while (1)
        {
          v69 = v53 + 1;
          if (__OFADD__(v53, 1))
          {
            break;
          }

          if (v69 >= v58)
          {
            v216 = v59;

            v3 = v186;
            v6 = v185;
            v7 = v194;
            v8 = v198;
            v42 = v199;
            v43 = v201;
            goto LABEL_7;
          }

          v57 = *(v54 + 8 * v69);
          ++v53;
          if (v57)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
        break;
      }
    }

    else
    {
      v10 = v215;
    }

    v8 = v198;
    v42 = v199;
    v43 = v201;
LABEL_7:
    if (++v43 == v210)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  sub_22F7420C0();
  __break(1u);
}

uint64_t sub_22F1A791C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1E78, &qword_22F777598);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22F1A798C()
{
  result = qword_2810A94A8;
  if (!qword_2810A94A8)
  {
    sub_22F740510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A94A8);
  }

  return result;
}

unint64_t sub_22F1A79E8()
{
  result = qword_27DAB1E80;
  if (!qword_27DAB1E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1E80);
  }

  return result;
}

uint64_t type metadata accessor for ExtendedTokenCollectionGenerator(uint64_t a1)
{
  result = qword_27DAB1E88;
  if (!qword_27DAB1E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F1A7A90(uint64_t a1)
{
  result = sub_22F740620();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22F1A7B9C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_22F1A7BE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_22F1A7C44(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EC0, &qword_22F7867E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v30 - v11;
  v13 = [a1 matrix];
  v14 = [v13 wrapper];

  sub_22F73FB80();
  sub_22F73FCD0();
  sub_22F73FCE0();
  v15 = *(v3 + 8);
  v15(v5, v2);
  v31 = v15;
  v15(v8, v2);
  v16 = *(v3 + 16);
  v32 = v12;
  v16(v8, v12, v2);
  v17 = objc_allocWithZone(sub_22F73FBB0());
  v18 = MEMORY[0x2318FF740](v8);
  v19 = [objc_allocWithZone(MEMORY[0x277D22C38]) initWithWrapper_];

  v20 = [a1 rowLabels];
  if (v20)
  {
    v21 = v20;
    v22 = sub_22F741180();
  }

  else
  {
    v22 = 0;
  }

  type metadata accessor for MaestroRanker(0);
  v23 = v19;
  v24 = sub_22F740DF0();
  if (v22)
  {
    v25 = sub_22F741160();
  }

  else
  {
    v25 = 0;
  }

  v26 = objc_allocWithZone(MEMORY[0x277D22C08]);
  v27 = sub_22F741160();
  v28 = [v26 initWithName:v24 rowLabels:v25 columnLabels:v27 matrix:v23];

  if (!v28)
  {
    sub_22F1A8008();
    swift_allocError();
    swift_willThrow();
  }

  v31(v32, v2);
  return v28;
}

uint64_t type metadata accessor for MaestroRanker(uint64_t a1)
{
  result = qword_2810ABFC8;
  if (!qword_2810ABFC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22F1A8008()
{
  result = qword_27DAB1EC8;
  if (!qword_27DAB1EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1EC8);
  }

  return result;
}

void sub_22F1A8094(uint64_t a1)
{
  sub_22F1A8160(319, &qword_2810A9500, MEMORY[0x277D83A90], MEMORY[0x277D22B60]);
  if (v1 <= 0x3F)
  {
    sub_22F1A8160(319, &qword_2810A92F0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22F1A8160(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_22F1A81B4()
{
  result = qword_27DAB1ED0;
  if (!qword_27DAB1ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1ED0);
  }

  return result;
}

uint64_t sub_22F1A8208(uint64_t a1)
{
  v2 = sub_22F1A842C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F1A8244(uint64_t a1)
{
  v2 = sub_22F1A842C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSongSearchResponse.MusicKitCatalogResults.MusicKitCatalogSongsData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1ED8, &qword_22F777800);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1A842C();
  sub_22F742200();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EE8, &qword_22F777808);
    sub_22F1A8DC8(&qword_2810A9320, &qword_27DAB1EE8, &qword_22F777808, sub_22F1A8480);
    sub_22F741F10();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F1A842C()
{
  result = qword_27DAB1EE0;
  if (!qword_27DAB1EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1EE0);
  }

  return result;
}

unint64_t sub_22F1A8480()
{
  result = qword_2810AAA88;
  if (!qword_2810AAA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAA88);
  }

  return result;
}

double MusicKitCatalogSongSearchResponse.MusicKitCatalogResults.songs.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

uint64_t sub_22F1A850C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73676E6F73 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22F742040();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22F1A8590(uint64_t a1)
{
  v2 = sub_22F1A8774();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F1A85CC(uint64_t a1)
{
  v2 = sub_22F1A8774();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSongSearchResponse.MusicKitCatalogResults.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EF0, &qword_22F777810);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1A8774();
  sub_22F742200();
  if (!v2)
  {
    sub_22F1A87C8();
    sub_22F741F10();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F1A8774()
{
  result = qword_27DAB1EF8;
  if (!qword_27DAB1EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1EF8);
  }

  return result;
}

unint64_t sub_22F1A87C8()
{
  result = qword_27DAB1F00;
  if (!qword_27DAB1F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1F00);
  }

  return result;
}

double MusicKitCatalogSongSearchResponse.results.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

uint64_t MusicKitCatalogSongSearchResponse.results.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t sub_22F1A88A4(uint64_t a1)
{
  v2 = sub_22F1A8A88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F1A88E0(uint64_t a1)
{
  v2 = sub_22F1A8A88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSongSearchResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1F08, &qword_22F777818);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1A8A88();
  sub_22F742200();
  if (!v2)
  {
    sub_22F1A8ADC();
    sub_22F741F10();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F1A8A88()
{
  result = qword_27DAB1F10;
  if (!qword_27DAB1F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1F10);
  }

  return result;
}

unint64_t sub_22F1A8ADC()
{
  result = qword_27DAB1F18;
  if (!qword_27DAB1F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1F18);
  }

  return result;
}

uint64_t sub_22F1A8B50(uint64_t a1)
{
  v2 = sub_22F1A8D74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F1A8B8C(uint64_t a1)
{
  v2 = sub_22F1A8D74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogPlaylistData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1F20, &qword_22F777820);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1A8D74();
  sub_22F742200();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1F30, &qword_22F777828);
    sub_22F1A8DC8(&qword_2810A9310, &qword_27DAB1F30, &qword_22F777828, sub_22F1A8E44);
    sub_22F741F10();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F1A8D74()
{
  result = qword_27DAB1F28;
  if (!qword_27DAB1F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1F28);
  }

  return result;
}

uint64_t sub_22F1A8DC8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22F1A8E44()
{
  result = qword_2810AA600;
  if (!qword_2810AA600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA600);
  }

  return result;
}

uint64_t sub_22F1A8ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7473696C79616C70 && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22F742040();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22F1A8F5C(uint64_t a1)
{
  v2 = sub_22F1A9140();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F1A8F98(uint64_t a1)
{
  v2 = sub_22F1A9140();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogPlaylistSearchResponse.MusicKitCatalogResults.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1F38, &qword_22F777830);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1A9140();
  sub_22F742200();
  if (!v2)
  {
    sub_22F1A9194();
    sub_22F741F10();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F1A9140()
{
  result = qword_27DAB1F40;
  if (!qword_27DAB1F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1F40);
  }

  return result;
}

unint64_t sub_22F1A9194()
{
  result = qword_27DAB1F48;
  if (!qword_27DAB1F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1F48);
  }

  return result;
}

uint64_t sub_22F1A9220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22F742040();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22F1A92A8(uint64_t a1)
{
  v2 = sub_22F1A948C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F1A92E4(uint64_t a1)
{
  v2 = sub_22F1A948C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogPlaylistSearchResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1F50, &qword_22F777838);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1A948C();
  sub_22F742200();
  if (!v2)
  {
    sub_22F1A94E0();
    sub_22F741F10();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F1A948C()
{
  result = qword_27DAB1F58;
  if (!qword_27DAB1F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1F58);
  }

  return result;
}

unint64_t sub_22F1A94E0()
{
  result = qword_27DAB1F60;
  if (!qword_27DAB1F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1F60);
  }

  return result;
}

unint64_t sub_22F1A9610()
{
  result = qword_27DAB1F68;
  if (!qword_27DAB1F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1F68);
  }

  return result;
}

unint64_t sub_22F1A9668()
{
  result = qword_27DAB1F70;
  if (!qword_27DAB1F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1F70);
  }

  return result;
}

unint64_t sub_22F1A96C0()
{
  result = qword_27DAB1F78;
  if (!qword_27DAB1F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1F78);
  }

  return result;
}

unint64_t sub_22F1A9718()
{
  result = qword_27DAB1F80;
  if (!qword_27DAB1F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1F80);
  }

  return result;
}

unint64_t sub_22F1A9770()
{
  result = qword_27DAB1F88;
  if (!qword_27DAB1F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1F88);
  }

  return result;
}

unint64_t sub_22F1A97C8()
{
  result = qword_27DAB1F90;
  if (!qword_27DAB1F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1F90);
  }

  return result;
}

unint64_t sub_22F1A9820()
{
  result = qword_27DAB1F98;
  if (!qword_27DAB1F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1F98);
  }

  return result;
}

unint64_t sub_22F1A9878()
{
  result = qword_27DAB1FA0;
  if (!qword_27DAB1FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1FA0);
  }

  return result;
}

unint64_t sub_22F1A98D0()
{
  result = qword_27DAB1FA8;
  if (!qword_27DAB1FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1FA8);
  }

  return result;
}

unint64_t sub_22F1A9928()
{
  result = qword_27DAB1FB0;
  if (!qword_27DAB1FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1FB0);
  }

  return result;
}

unint64_t sub_22F1A9980()
{
  result = qword_27DAB1FB8;
  if (!qword_27DAB1FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1FB8);
  }

  return result;
}

unint64_t sub_22F1A99D8()
{
  result = qword_27DAB1FC0;
  if (!qword_27DAB1FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1FC0);
  }

  return result;
}

unint64_t sub_22F1A9A30()
{
  result = qword_27DAB1FC8;
  if (!qword_27DAB1FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1FC8);
  }

  return result;
}

unint64_t sub_22F1A9A88()
{
  result = qword_27DAB1FD0;
  if (!qword_27DAB1FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1FD0);
  }

  return result;
}

unint64_t sub_22F1A9AE0()
{
  result = qword_27DAB1FD8;
  if (!qword_27DAB1FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1FD8);
  }

  return result;
}

unint64_t sub_22F1A9B38()
{
  result = qword_27DAB1FE0;
  if (!qword_27DAB1FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1FE0);
  }

  return result;
}

unint64_t sub_22F1A9B90()
{
  result = qword_27DAB1FE8;
  if (!qword_27DAB1FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1FE8);
  }

  return result;
}

unint64_t sub_22F1A9BE8()
{
  result = qword_27DAB1FF0;
  if (!qword_27DAB1FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1FF0);
  }

  return result;
}

char *ExtendedTokenCollectionGenerator.generateTripExtendedTokens(for:)(unint64_t a1)
{
  v135 = sub_22F740140();
  v125 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v134 = v115 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v133 = v115 - v4;
  v5 = sub_22F740270();
  *&v128 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v124 = v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v115 - v8;
  v143 = sub_22F7404D0();
  v138 = *(v143 - 1);
  MEMORY[0x28223BE20](v143);
  v11 = v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_22F7403B0();
  v148 = *(v146 - 1);
  MEMORY[0x28223BE20](v146);
  v13 = v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_22F73FDA0();
  v140 = *(v149 - 1);
  MEMORY[0x28223BE20](v149);
  v142 = (v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = v115 - v16;
  if (qword_2810A9418 != -1)
  {
    goto LABEL_119;
  }

  while (1)
  {
    v137 = v5;
    v18 = sub_22F740B90();
    v131 = __swift_project_value_buffer(v18, qword_2810B4D00);
    v19 = sub_22F740B70();
    v20 = sub_22F7415C0();
    v21 = os_log_type_enabled(v19, v20);
    v141 = v11;
    if (v21)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_22F0FC000, v19, v20, "generateTripExtendedTokens for query tokens has started.", v22, 2u);
      MEMORY[0x2319033A0](v22, -1, -1);
    }

    v147 = v13;
    v136 = v9;

    v23 = *(a1 + 16);
    v139 = a1;
    if (v23)
    {
      v24 = *(v140 + 2);
      v25 = a1 + ((v140[80] + 32) & ~v140[80]);
      v144 = *(v140 + 9);
      v145 = v24;
      v26 = (v140 + 8);
      a1 = MEMORY[0x277D84F90];
      v13 = v23;
      do
      {
        v27 = v149;
        (v145)(v17, v25, v149);
        v28 = sub_22F73FD90();
        (*v26)(v17, v27);
        if (v28)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a1 = sub_22F13EB2C(0, *(a1 + 16) + 1, 1, a1);
          }

          v30 = *(a1 + 16);
          v29 = *(a1 + 24);
          if (v30 >= v29 >> 1)
          {
            a1 = sub_22F13EB2C((v29 > 1), v30 + 1, 1, a1);
          }

          *(a1 + 16) = v30 + 1;
          *(a1 + 8 * v30 + 32) = v28;
        }

        v25 += v144;
        --v13;
      }

      while (v13);
    }

    else
    {
      a1 = MEMORY[0x277D84F90];
    }

    v11 = *(a1 + 16);
    if (!v11)
    {
      break;
    }

    v9 = 0;
    v5 = a1 + 32;
    v31 = MEMORY[0x277D84F90];
    while (v9 < *(a1 + 16))
    {
      v32 = *(v5 + 8 * v9);
      v17 = *(v32 + 16);
      v13 = *(v31 + 2);
      v33 = &v17[v13];
      if (__OFADD__(v13, v17))
      {
        goto LABEL_107;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v33 <= *(v31 + 3) >> 1)
      {
        if (*(v32 + 16))
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v13 <= v33)
        {
          v35 = &v17[v13];
        }

        else
        {
          v35 = v13;
        }

        v31 = sub_22F13E1A8(isUniquelyReferenced_nonNull_native, v35, 1, v31);
        if (*(v32 + 16))
        {
LABEL_28:
          if ((*(v31 + 3) >> 1) - *(v31 + 2) < v17)
          {
            goto LABEL_111;
          }

          swift_arrayInitWithCopy();

          if (v17)
          {
            v36 = *(v31 + 2);
            v37 = __OFADD__(v36, v17);
            v38 = &v17[v36];
            if (v37)
            {
              goto LABEL_114;
            }

            *(v31 + 2) = v38;
          }

          goto LABEL_17;
        }
      }

      if (v17)
      {
        goto LABEL_108;
      }

LABEL_17:
      if (v11 == ++v9)
      {
        goto LABEL_33;
      }
    }

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
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    swift_once();
  }

  v31 = MEMORY[0x277D84F90];
LABEL_33:

  v132 = sub_22F1515F8(v31);

  v39 = MEMORY[0x277D84F90];
  if (v23)
  {
    v145 = *(v140 + 2);
    a1 = v139 + ((v140[80] + 32) & ~v140[80]);
    v5 = *(v140 + 9);
    v9 = (v140 + 16);
    v11 = (v140 + 8);
    do
    {
      v40 = v142;
      v41 = v149;
      (v145)(v142, a1, v149);
      v17 = sub_22F73FD40();
      (*v11)(v40, v41);
      v42 = *(v17 + 2);
      v13 = v39[2];
      v43 = v13 + v42;
      if (__OFADD__(v13, v42))
      {
        goto LABEL_109;
      }

      v44 = swift_isUniquelyReferenced_nonNull_native();
      if (v44 && v43 <= v39[3] >> 1)
      {
        if (!*(v17 + 2))
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v13 <= v43)
        {
          v45 = v13 + v42;
        }

        else
        {
          v45 = v13;
        }

        v39 = sub_22F13EB04(v44, v45, 1, v39);
        if (!*(v17 + 2))
        {
LABEL_35:

          if (v42)
          {
            goto LABEL_110;
          }

          goto LABEL_36;
        }
      }

      if ((v39[3] >> 1) - v39[2] < v42)
      {
        goto LABEL_112;
      }

      swift_arrayInitWithCopy();

      if (v42)
      {
        v46 = v39[2];
        v37 = __OFADD__(v46, v42);
        v47 = v46 + v42;
        if (v37)
        {
          goto LABEL_115;
        }

        v39[2] = v47;
      }

LABEL_36:
      a1 += v5;
      --v23;
    }

    while (v23);
  }

  v150 = MEMORY[0x277D84F90];
  v48 = v39[2];
  if (v48)
  {
    v149 = *(v148 + 16);
    v49 = v39 + ((*(v148 + 80) + 32) & ~*(v148 + 80));
    v145 = *(v148 + 72);
    v142 = (v138 + 11);
    LODWORD(v144) = *MEMORY[0x277D3C4F0];
    v148 += 16;
    v50 = (v148 - 8);
    v139 = (v138 + 12);
    v140 = (v138 + 1);
    v51 = v141;
    v52 = v146;
    do
    {
      v53 = v147;
      (v149)(v147, v49, v52);
      sub_22F7403A0();
      v54 = v143;
      v55 = (*v142)(v51, v143);
      if (v55 == v144)
      {
        (*v139)(v51, v54);
        v56 = *v51;
        sub_22F120634(0, &qword_2810A90B8, 0x277CD9958);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v57);
        sub_22F1515F8(v56);

        v59 = sub_22F741410();

        v60 = [ObjCClassFromMetadata localIdentifiersWithUUIDs_];

        if (v60)
        {
          v61 = sub_22F741420();

          sub_22F144C4C(v61);
        }

        v52 = v146;
        (*v50)(v147, v146);
        v51 = v141;
      }

      else
      {
        (*v50)(v53, v52);
        (*v140)(v51, v54);
      }

      v49 += v145;
      --v48;
    }

    while (v48);
  }

  v9 = v150;
  v130 = OBJC_IVAR____TtC11PhotosGraph32ExtendedTokenCollectionGenerator_storyPhotoLibraryContext;
  v62 = sub_22F740610();
  sub_22F120634(0, &qword_2810A90B8, 0x277CD9958);
  v64 = swift_getObjCClassFromMetadata(v63);
  v65 = sub_22F741160();
  v117 = v62;
  v66 = [v64 fetchAssetCollectionsWithLocalIdentifiers:v65 options:v62];

  v5 = [v66 fetchedObjects];
  v68 = v136;
  v67 = v137;
  if (v5)
  {
    v115[1] = v9;
    sub_22F120634(0, &unk_2810A90C0, 0x277CD97B8);
    v13 = sub_22F741180();

    if (v13 >> 62)
    {
      v11 = sub_22F741A00();
      if (v11)
      {
LABEL_61:
        a1 = 0;
        v147 = 0;
        v141 = v13 & 0xC000000000000001;
        v119 = v13 & 0xFFFFFFFFFFFFFF8;
        v118 = v13 + 32;
        LODWORD(v140) = *MEMORY[0x277D3C2B8];
        v139 = (v128 + 104);
        v129 = *MEMORY[0x277CD9AA8];
        v123 = (v128 + 16);
        v122 = (v125 + 16);
        v121 = v125 + 8;
        v138 = (v128 + 8);
        v120 = v125 + 32;
        v17 = MEMORY[0x277D84F90];
        *(&v69 + 1) = 2;
        v128 = xmmword_22F771340;
        *&v69 = 136315138;
        v116 = v69;
        v127 = v13;
        v126 = v11;
        while (1)
        {
          if (v141)
          {
            v70 = MEMORY[0x2319016F0](a1, v13);
          }

          else
          {
            if (a1 >= *(v119 + 16))
            {
              goto LABEL_118;
            }

            v70 = *(v118 + 8 * a1);
          }

          v71 = v70;
          v37 = __OFADD__(a1++, 1);
          if (v37)
          {
            goto LABEL_113;
          }

          v72 = [v70 localizedSubtitle];
          if (!v72)
          {
            v72 = [v71 title];
          }

          v73 = v72;
          v149 = sub_22F740E20();
          v9 = v74;

          *v68 = 0;
          (*v139)(v68, v140, v67);
          v75 = [v71 uuid];
          if (v75)
          {
            v144 = v9;
            v11 = v17;
            v76 = v75;
            v142 = sub_22F740E20();
            v145 = v77;

            v78 = sub_22F740610();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
            v5 = swift_allocObject();
            *(v5 + 16) = v128;
            *(v5 + 32) = sub_22F740E20();
            *(v5 + 40) = v79;
            v9 = sub_22F741160();

            [v78 setFetchPropertySets_];

            v80 = objc_opt_self();
            v146 = v71;
            v13 = [v80 fetchAssetsInAssetCollection:v71 options:v78];
            v81 = [v13 count];
            if ((v81 & 0x8000000000000000) != 0)
            {
              goto LABEL_116;
            }

            v17 = v81;
            v143 = v78;
            v148 = a1;
            if (v81)
            {
              v82 = 0;
              v83 = MEMORY[0x277D84F90];
              do
              {
                v85 = [v13 objectAtIndexedSubscript_];
                v86 = [v85 uuid];

                if (v86)
                {
                  v87 = sub_22F740E20();
                  v89 = v88;

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v83 = sub_22F13E1A8(0, *(v83 + 2) + 1, 1, v83);
                  }

                  v91 = *(v83 + 2);
                  v90 = *(v83 + 3);
                  if (v91 >= v90 >> 1)
                  {
                    v83 = sub_22F13E1A8((v90 > 1), v91 + 1, 1, v83);
                  }

                  *(v83 + 2) = v91 + 1;
                  v84 = &v83[16 * v91];
                  *(v84 + 4) = v87;
                  *(v84 + 5) = v89;
                }

                ++v82;
              }

              while (v17 != v82);
            }

            v93 = v132;

            v95 = sub_22F1515F8(v94);

            v9 = sub_22F1ABBB4(v95, v93);

            v5 = *(v9 + 16);
            if (v5)
            {
              v96 = swift_allocObject();
              v97 = _swift_stdlib_malloc_size(v96);
              v98 = v97 - 32;
              if (v97 < 32)
              {
                v98 = v97 - 17;
              }

              v96[2] = v5;
              v96[3] = 2 * (v98 >> 4);
              v9 = sub_22F11A438(&v150, v96 + 4, v5, v9);
              sub_22F1534EC(v150);
              v68 = v136;
              v67 = v137;
              a1 = v148;
              if (v9 != v5)
              {
                goto LABEL_117;
              }

              v17 = v11;
            }

            else
            {

              v96 = MEMORY[0x277D84F90];
              v68 = v136;
              v67 = v137;
              v17 = v11;
              a1 = v148;
            }

            v150 = v96;

            v99 = v147;
            sub_22F1AB0EC(&v150);
            v147 = v99;
            if (v99)
            {

              __break(1u);
              return result;
            }

            v11 = v126;
            if (*(v150 + 2))
            {
              (*v123)(v124, v68, v67);
              v100 = v133;
              sub_22F740130();
              (*v122)(v134, v100, v135);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v17 = sub_22F13EADC(0, *(v17 + 2) + 1, 1, v17);
              }

              v102 = *(v17 + 2);
              v101 = *(v17 + 3);
              v5 = v102 + 1;
              if (v102 >= v101 >> 1)
              {
                v17 = sub_22F13EADC((v101 > 1), v102 + 1, 1, v17);
              }

              v103 = v125;
              v9 = v135;
              (*(v125 + 8))(v133, v135);
              (*v138)(v68, v67);
              *(v17 + 2) = v5;
              (*(v103 + 32))(&v17[((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v102], v134, v9);
            }

            else
            {

              v104 = v145;

              v105 = sub_22F740B70();
              v5 = sub_22F7415E0();

              if (os_log_type_enabled(v105, v5))
              {
                v9 = swift_slowAlloc();
                v106 = swift_slowAlloc();
                v150 = v106;
                *v9 = v116;
                v107 = sub_22F145F20(v142, v104, &v150);

                *(v9 + 4) = v107;
                a1 = v148;
                v68 = v136;
                _os_log_impl(&dword_22F0FC000, v105, v5, "No assets in trip highlight overlapping with query token assets for highlight %s!", v9, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v106);
                v108 = v106;
                v67 = v137;
                MEMORY[0x2319033A0](v108, -1, -1);
                MEMORY[0x2319033A0](v9, -1, -1);
              }

              else
              {
              }

              (*v138)(v68, v67);
            }

            v13 = v127;
            if (a1 == v11)
            {
              goto LABEL_122;
            }
          }

          else
          {

            v5 = sub_22F740B70();
            v92 = sub_22F7415E0();
            if (os_log_type_enabled(v5, v92))
            {
              v9 = swift_slowAlloc();
              *v9 = 0;
              _os_log_impl(&dword_22F0FC000, v5, v92, "Cannot get trip UUID from highlight!", v9, 2u);
              MEMORY[0x2319033A0](v9, -1, -1);
            }

            else
            {
            }

            (*v138)(v68, v67);
            if (a1 == v11)
            {
              goto LABEL_122;
            }
          }
        }
      }
    }

    else
    {
      v11 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_61;
      }
    }

    v17 = MEMORY[0x277D84F90];
LABEL_122:

    v112 = sub_22F740B70();
    v113 = sub_22F7415C0();
    if (!os_log_type_enabled(v112, v113))
    {
      v109 = v117;
      goto LABEL_126;
    }

    v111 = swift_slowAlloc();
    *v111 = 0;
    _os_log_impl(&dword_22F0FC000, v112, v113, "generateTripExtendedTokens for query tokens complete.", v111, 2u);
    v109 = v117;
    goto LABEL_124;
  }

  v109 = sub_22F740B70();
  v110 = sub_22F7415E0();
  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    *v111 = 0;
    _os_log_impl(&dword_22F0FC000, v109, v110, "Unable to fetch trip collections!", v111, 2u);
    v17 = MEMORY[0x277D84F90];
    v112 = v117;
LABEL_124:
    MEMORY[0x2319033A0](v111, -1, -1);
    goto LABEL_126;
  }

  v17 = MEMORY[0x277D84F90];
  v112 = v117;
LABEL_126:

  return v17;
}

uint64_t sub_22F1AB0EC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22F3F651C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_22F1AB158(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_22F1AB158(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22F742000();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_22F741200();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22F1AB320(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22F1AB250(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22F1AB250(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_22F742040(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22F1AB320(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_22F3F5F98(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_22F1AB8FC((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_22F742040();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_22F742040();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22F13D970(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_22F13D970((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_22F1AB8FC((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22F3F5F98(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_22F3F5F0C(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_22F742040(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_22F1AB8FC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_22F742040() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_22F742040() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

unint64_t *sub_22F1ABB24(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_22F1ABD78(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_22F1ABBB4(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_22F1ABD78((v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_22F1ABB24(v11, v6, a2, a1);

    MEMORY[0x2319033A0](v11, -1, -1);
  }

  return v9;
}

unint64_t *sub_22F1ABD78(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_22F742170();

      sub_22F740D60();
      v26 = sub_22F7421D0();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_22F742040() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_22F1B8E24(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_22F742170();

      sub_22F740D60();
      v39 = sub_22F7421D0();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_22F742040() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

void *SocialGroupsEvaluationMetrics.__allocating_init(librarySize:electedCount:personCount:leqTenAssetContainmentCount:leqThirtyAssetContainmentCount:leqFiftyAssetContainmentCount:leqOneHundredAssetContainmentCount:greaterThanOneHundredAssetContainmentCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  result[8] = a7;
  result[9] = a8;
  return result;
}

void *SocialGroupsEvaluationMetrics.init(librarySize:electedCount:personCount:leqTenAssetContainmentCount:leqThirtyAssetContainmentCount:leqFiftyAssetContainmentCount:leqOneHundredAssetContainmentCount:greaterThanOneHundredAssetContainmentCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v8[6] = a5;
  v8[7] = a6;
  v8[8] = a7;
  v8[9] = a8;
  return v8;
}

unint64_t sub_22F1AC338()
{
  v0 = sub_22F14E718(MEMORY[0x277D84F90]);
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v1 = sub_22F7417F0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22F12FEE8(v1, 0x5F7972617262696CLL, 0xEC000000657A6973, isUniquelyReferenced_nonNull_native);
  v3 = sub_22F7417F0();
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_22F12FEE8(v3, 0x5F64657463656C65, 0xED0000746E756F63, v4);
  v5 = sub_22F7417F0();
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_22F12FEE8(v5, 0x5F736E6F73726570, 0xED0000746E756F63, v6);
  v7 = sub_22F7417F0();
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_22F12FEE8(v7, 0xD000000000000013, 0x800000022F790810, v8);
  v9 = sub_22F7417F0();
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_22F12FEE8(v9, 0xD000000000000016, 0x800000022F790830, v10);
  v11 = sub_22F7417F0();
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_22F12FEE8(v11, 0xD000000000000015, 0x800000022F790850, v12);
  v13 = sub_22F7417F0();
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_22F12FEE8(v13, 0xD00000000000001BLL, 0x800000022F790870, v14);
  v15 = sub_22F7417F0();
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_22F12FEE8(v15, 0xD00000000000001FLL, 0x800000022F790890, v16);
  return v0;
}

id SocialGroupsEvaluator.__allocating_init(graph:photoLibrary:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC11PhotosGraph21SocialGroupsEvaluator_graph] = a1;
  *&v5[OBJC_IVAR____TtC11PhotosGraph21SocialGroupsEvaluator_photoLibrary] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id SocialGroupsEvaluator.init(graph:photoLibrary:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC11PhotosGraph21SocialGroupsEvaluator_graph] = a1;
  *&v2[OBJC_IVAR____TtC11PhotosGraph21SocialGroupsEvaluator_photoLibrary] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

void SocialGroupsEvaluator.evaluateSocialGroups(forTop:)(uint64_t a1)
{
  v3 = sub_22F740560();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC11PhotosGraph21SocialGroupsEvaluator_photoLibrary);
  v9 = [v8 librarySpecificFetchOptions];
  [v9 setFetchLimit_];
  (*(v4 + 104))(v7, *MEMORY[0x277D3C570], v3);
  sub_22F740570();
  swift_allocObject();
  v10 = v8;
  v11 = v9;
  v12 = sub_22F740550();
  sub_22F740230();
  v13 = sub_22F740220();
  v14 = [v13 fetchedObjects];

  if (v14)
  {
    sub_22F120634(0, &unk_2810A91B0, 0x277CD99D0);
    v15 = sub_22F741180();
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v42 = v10;
  v16 = [v10 librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22F771350;
  *(v17 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
  *(v17 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v18 = sub_22F741160();

  [v16 setIncludedDetectionTypes_];

  v19 = v15;
  if (v15 >> 62)
  {
    goto LABEL_40;
  }

  v20 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v43 = v12;
  v44 = v11;
  v41 = v16;
  if (v20)
  {
    if (v20 >= 1)
    {
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v11 = 0;
      v12 = 0;
      v16 = 0;
      v21 = 0;
      v15 = v19 & 0xC000000000000001;
      v22 = &off_27888E000;
      v23 = v19;
      while (1)
      {
        if (v15)
        {
          v24 = MEMORY[0x2319016F0](v21);
        }

        else
        {
          v24 = *(v19 + 8 * v21 + 32);
        }

        v25 = v24;
        if ([v24 v22[320]] <= 10)
        {
          v26 = __OFADD__(v12++, 1);
          if (v26)
          {
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            v39 = sub_22F741A00();
            v19 = v15;
            v20 = v39;
            goto LABEL_6;
          }
        }

        else if ([v25 v22[320]] <= 30)
        {
          v26 = __OFADD__(v11++, 1);
          if (v26)
          {
            goto LABEL_36;
          }
        }

        else if ([v25 v22[320]] <= 50)
        {
          if (__OFADD__(v47, 1))
          {
            goto LABEL_37;
          }

          ++v47;
        }

        else if ([v25 v22[320]] <= 100)
        {
          if (__OFADD__(v45, 1))
          {
            goto LABEL_39;
          }

          ++v45;
        }

        else
        {
          if (__OFADD__(v46, 1))
          {
            goto LABEL_38;
          }

          ++v46;
        }

        v27 = [v25 socialGroupVerifiedType];

        if (v27 == 2)
        {
          v26 = __OFADD__(v16++, 1);
          v22 = &off_27888E000;
          if (v26)
          {
            goto LABEL_35;
          }

          v19 = v23;
        }

        else
        {
          v19 = v23;
          v22 = &off_27888E000;
        }

        if (v20 == ++v21)
        {
          goto LABEL_34;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v11 = 0;
    v12 = 0;
    v16 = 0;
LABEL_34:

    v28 = objc_opt_self();
    v29 = [v42 librarySpecificFetchOptions];
    v30 = [v28 fetchAssetsWithOptions_];

    v31 = [v30 count];
    v32 = objc_opt_self();
    v33 = v41;
    v34 = [v32 fetchPersonsWithOptions_];
    v35 = [v34 count];

    type metadata accessor for SocialGroupsEvaluationMetrics();
    v36 = swift_allocObject();
    v36[2] = v31;
    v36[3] = v16;
    v36[4] = v35;
    v36[5] = v12;
    v37 = v47;
    v36[6] = v11;
    v36[7] = v37;
    v38 = v46;
    v36[8] = v45;
    v36[9] = v38;
  }
}

uint64_t SocialGroupsEvaluator.runEvaluation(progressReporter:)(uint64_t a1)
{
  result = sub_22F741690();
  if (!v1)
  {
    SocialGroupsEvaluator.evaluateSocialGroups(forTop:)(0);
    sub_22F741690();
    v3 = *(sub_22F1AC338() + 16);

    if (v3)
    {
      v4 = sub_22F740DF0();
      sub_22F1AC338();
      sub_22F120634(0, &qword_2810A8EC0, 0x277D82BB8);
      v5 = sub_22F740C80();

      AnalyticsSendEvent();
    }

    sub_22F741690();
  }

  return result;
}

id SocialGroupsEvaluator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SocialGroupsEvaluator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F1ACF28@<X0>(uint64_t *a1@<X0>, int64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t a4@<X1>)
{
  v5 = v4;
  v7 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v9 = a1[3];
  v54 = a1[4];
  v45 = a1[6];
  v46 = a1[5];
  if (qword_2810A9BD0 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v11 = qword_2810B4E90;
    *&v12 = CACurrentMediaTime();
    sub_22F1B560C("Music Curation - Filtering", 26, 2u, v12, 0, v11, v70);
    v71 = a2;
    a2 = *(a2 + 16);
    v13 = sub_22F741670();
    v63 = v7;
    v64 = v8;
    v65 = v10;
    v66 = v9;
    v67 = v54;
    v68 = v46;
    v69 = v45;
    v9 = sub_22F2045A0();
    v44 = v13;
    if (!a2)
    {
      break;
    }

    v48 = a2;
    v50 = v13 & 0xFFFFFFFFFFFFFF8;
    if (v13 >> 62)
    {
      v53 = sub_22F741A00();
    }

    else
    {
      v53 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = 0;
    v51 = v13 & 0xC000000000000001;
    v52 = v71 + 32;
    v49 = v13 + 32;
    v15 = v9 + 64;
    v8 = MEMORY[0x277D84FA0];
    v47 = v10;
    while (v14 != a2)
    {
      if (v14 == v53)
      {
LABEL_30:
        v35 = v5;

        goto LABEL_31;
      }

      v16 = (v52 + 16 * v14);
      v58 = v16[1];
      v59 = *v16;
      if (v51)
      {
        v17 = v14;
        v18 = MEMORY[0x2319016F0](v14, v44);
      }

      else
      {
        if (v14 >= *(v50 + 16))
        {
          goto LABEL_37;
        }

        v17 = v14;
        v18 = *(v49 + 8 * v14);
      }

      v60 = v18;
      v55 = v17 + 1;
      v56 = objc_autoreleasePoolPush();
      v19 = 1 << *(v9 + 32);
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      else
      {
        v20 = -1;
      }

      v10 = v20 & *(v9 + 64);
      a2 = (v19 + 63) >> 6;

      v21 = 0;
      while (v10)
      {
        v61 = v8;
LABEL_24:
        v25 = __clz(__rbit64(v10)) | (v21 << 6);
        v26 = *(v9 + 56);
        v7 = v9;
        v27 = (*(v9 + 48) + 16 * v25);
        v28 = *v27;
        v29 = v27[1];
        v30 = *(v26 + 8 * v25);

        v32 = sub_22F2C3878(v31, a4, v28, v29, v60, v59, v58);
        v71 = v5;
        if (v5)
        {

          objc_autoreleasePoolPop(v56);

          goto LABEL_33;
        }

        v33 = v32;

        if (*(v33 + 16) <= *(v30 + 16) >> 3)
        {
          v63 = v30;
          sub_22F3E7DB0(v33);

          v22 = v30;
        }

        else
        {
          v34 = sub_22F1E7F80(v33, v30);

          v22 = v34;
        }

        v9 = v7;
        v10 &= v10 - 1;
        sub_22F14470C(v22, v61);
        v8 = v23;
        v5 = v71;
      }

      while (1)
      {
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          __break(1u);
          goto LABEL_36;
        }

        if (v24 >= a2)
        {
          break;
        }

        v10 = *(v15 + 8 * v24);
        ++v21;
        if (v10)
        {
          v61 = v8;
          v21 = v24;
          goto LABEL_24;
        }
      }

      objc_autoreleasePoolPop(v56);

      v10 = v47;
      a2 = v48;
      v14 = v55;
      if (v55 == v48)
      {
        goto LABEL_30;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
  }

  v35 = v5;

  v8 = MEMORY[0x277D84FA0];
LABEL_31:

  sub_22F204754(v8, &v63);
  v36 = v63;
  v62 = v64;
  v38 = v65;
  v37 = v66;
  v39 = v67;
  v40 = v68;
  v41 = v69;
  sub_22F7416A0();
  v71 = v35;
  if (v35)
  {

LABEL_33:
  }

  else
  {
    sub_22F1B2BBC(0);

    *a3 = v36;
    a3[1] = v62;
    a3[2] = v38;
    a3[3] = v37;
    a3[4] = v39;
    a3[5] = v40;
    a3[6] = v41;
  }

  return result;
}

id FeatureExtractorIsInteresting.__allocating_init(prefetchIn:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_22F1AD9A0(a1);

  return v4;
}

id FeatureExtractorIsInteresting.init(prefetchIn:)(void *a1)
{
  v2 = sub_22F1AD9A0(a1);

  return v2;
}

id FeatureExtractorIsInteresting.__allocating_init(prefetchFor:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = [a1 interestingSubset];
  *&v3[OBJC_IVAR___PGFeatureExtractorIsInteresting_interestingMomentNodes] = v4;
  v5 = [a1 smartInterestingSubset];
  *&v3[OBJC_IVAR___PGFeatureExtractorIsInteresting_smartInterestingMomentNodes] = v5;
  v8.receiver = v3;
  v8.super_class = v1;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}