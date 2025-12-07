uint64_t sub_24F2D0490()
{

  return MEMORY[0x2822009F8](sub_24F2D05A8, 0, 0);
}

uint64_t sub_24F2D05A8()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  *(v1 + 304) = *(v0 + 16);
  *(v1 + 320) = v3;
  *(v1 + 336) = v2;

  if (qword_27F211458 != -1)
  {
    goto LABEL_87;
  }

  while (1)
  {
    v4 = *(v0 + 296);
    v5 = *(v0 + 304);
    v6 = *(v0 + 272);
    v7 = *(v0 + 280);
    v8 = sub_24F9220D8();
    __swift_project_value_buffer(v8, qword_27F39E958);
    v145 = *(v7 + 16);
    v145(v4, v5, v6);
    v9 = sub_24F9220B8();
    v10 = sub_24F92BD98();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 296);
    v13 = *(v0 + 272);
    v14 = *(v0 + 280);
    if (v11)
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      sub_24F91F5C8();
      v17 = v16;
      v132 = *(v14 + 8);
      (v132)(v12, v13);
      *(v15 + 4) = -v17;
      _os_log_impl(&dword_24E5DD000, v9, v10, "Contact query phase: %fs", v15, 0xCu);
      MEMORY[0x2530542D0](v15, -1, -1);

      if (!*(v0 + 352))
      {
        break;
      }

      goto LABEL_6;
    }

    v132 = *(v14 + 8);
    (v132)(v12, v13);
    if (!*(v0 + 352))
    {
      break;
    }

LABEL_6:
    v18 = 0;
    v151 = *(v0 + 336);
    v19 = *(v0 + 320);
    v20 = *(v0 + 224);
    v21 = *(v0 + 200) + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v22 = *(v19 + 72);
    while (1)
    {
      v27 = *(v0 + 328);
      v26 = *(v0 + 336);
      sub_24F2CC85C(v21, v26, type metadata accessor for Player);
      v28 = *v26;
      v29 = *(v151 + 8);
      swift_beginAccess();
      sub_24F2CC924(v26, v27, type metadata accessor for Player);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = *(v20 + 288);
      v153 = v31;
      *(v20 + 288) = 0x8000000000000000;
      v32 = sub_24E76D644(v28, v29);
      v34 = v31[2];
      v35 = (v33 & 1) == 0;
      v36 = __OFADD__(v34, v35);
      v37 = v34 + v35;
      if (v36)
      {
        break;
      }

      v38 = v33;
      if (v31[3] < v37)
      {
        sub_24E8A216C(v37, isUniquelyReferenced_nonNull_native);
        v32 = sub_24E76D644(v28, v29);
        if ((v38 & 1) != (v39 & 1))
        {
LABEL_76:

          return sub_24F92CF88();
        }

LABEL_14:
        v40 = *(v0 + 328);
        if (v38)
        {
          goto LABEL_7;
        }

        goto LABEL_15;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_14;
      }

      v44 = v32;
      sub_24E8B2BCC();
      v32 = v44;
      v40 = *(v0 + 328);
      if (v38)
      {
LABEL_7:
        v23 = v32;

        v24 = v153;
        sub_24F2D45C4(v40, v153[7] + v23 * v22, type metadata accessor for Player);
        goto LABEL_8;
      }

LABEL_15:
      v24 = v153;
      v153[(v32 >> 6) + 8] |= 1 << v32;
      v41 = (v153[6] + 16 * v32);
      *v41 = v28;
      v41[1] = v29;
      sub_24F2CC924(v40, v153[7] + v32 * v22, type metadata accessor for Player);
      v42 = v153[2];
      v36 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v36)
      {
        goto LABEL_83;
      }

      v153[2] = v43;
LABEL_8:
      ++v18;
      v25 = *(v0 + 352);
      *(v20 + 288) = v24;

      swift_endAccess();
      v21 += v22;
      if (v18 == v25)
      {
        goto LABEL_19;
      }
    }

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
LABEL_87:
    swift_once();
  }

LABEL_19:
  v45 = *(v0 + 280);
  v144 = *(v0 + 264);
  v47 = *(v0 + 208);
  v46 = *(v0 + 216);
  v48 = v47 + 64;
  v146 = *(v0 + 256);
  v128 = *(v0 + 248);
  v49 = -1 << *(v47 + 32);
  if (-v49 < 64)
  {
    v50 = ~(-1 << -v49);
  }

  else
  {
    v50 = -1;
  }

  v134 = v50 & *(v47 + 64);
  v136 = *(v0 + 280);
  v51 = v46 + 56;
  v148 = (v45 + 56);
  v149 = *(v0 + 224);
  v143 = (v45 + 48);
  v141 = (v45 + 32);
  v133 = (63 - v49) >> 6;

  v52 = 0;
  v53 = 0;
  v130 = v47;
  v131 = v46;
  v129 = v47 + 64;
  v54 = v133;
  v55 = v134;
  if (!v134)
  {
    goto LABEL_25;
  }

LABEL_29:
  while (2)
  {
    while (1)
    {
      v135 = (v55 - 1) & v55;
      v57 = __clz(__rbit64(v55)) | (v53 << 6);
      v58 = (*(v47 + 48) + 16 * v57);
      v59 = *v58;
      v152 = v58[1];
      v147 = *(*(v47 + 56) + 8 * v57);
      v150 = *v58;
      if (*(v46 + 16))
      {
        break;
      }

LABEL_38:
      v69 = v147;
      v142 = *(v147 + 16);
      if (v142)
      {
        v70 = 0;
        v139 = *(v128 + 20);
        v140 = *(v0 + 264);
        v137 = v51;
        v138 = v147 + ((*(v146 + 80) + 32) & ~*(v146 + 80));
        while (v70 < *(v69 + 16))
        {
          v73 = *(v0 + 264);
          v74 = *(v0 + 272);
          v75 = *(v0 + 240);
          sub_24F2CC85C(v138 + *(v146 + 72) * v70, v73, type metadata accessor for PlayActivity);
          v76 = *v73;
          v77 = *(v144 + 8);
          v145(v75, v140 + v139, v74);

          sub_24F2CC8C4(v73, type metadata accessor for PlayActivity);
          v78 = *v148;
          (*v148)(v75, 0, 1, v74);
          swift_beginAccess();
          sub_24E824448(v52, 0);
          v79 = swift_isUniquelyReferenced_nonNull_native();
          v80 = *(v149 + 296);
          *(v149 + 296) = 0x8000000000000000;
          v82 = sub_24E76D644(v76, v77);
          v83 = v80[2];
          v84 = (v81 & 1) == 0;
          v85 = v83 + v84;
          if (__OFADD__(v83, v84))
          {
            goto LABEL_82;
          }

          v86 = v81;
          if (v80[3] >= v85)
          {
            if ((v79 & 1) == 0)
            {
              sub_24E8B2BB8();
            }
          }

          else
          {
            sub_24E8A2158(v85, v79);
            v87 = sub_24E76D644(v76, v77);
            if ((v86 & 1) != (v88 & 1))
            {
              goto LABEL_76;
            }

            v82 = v87;
          }

          *(v149 + 296) = v80;
          if (v86)
          {
          }

          else
          {
            v89 = sub_24E60DE58(MEMORY[0x277D84F90]);
            v80[(v82 >> 6) + 8] |= 1 << v82;
            v90 = (v80[6] + 16 * v82);
            *v90 = v76;
            v90[1] = v77;
            *(v80[7] + 8 * v82) = v89;
            v91 = v80[2];
            v36 = __OFADD__(v91, 1);
            v92 = v91 + 1;
            if (v36)
            {
              goto LABEL_84;
            }

            v80[2] = v92;
          }

          v93 = *(v0 + 272);
          v94 = *(v0 + 240);
          v95 = v80[7];
          if ((*v143)(v94, 1, v93) == 1)
          {
            sub_24E601704(v94, &unk_27F22EC30, &qword_24F939880);
            v96 = sub_24E76D644(v150, v152);
            if (v97)
            {
              v98 = v96;
              v99 = swift_isUniquelyReferenced_nonNull_native();
              v100 = *(v95 + 8 * v82);
              *(v95 + 8 * v82) = 0x8000000000000000;
              if (!v99)
              {
                sub_24E8AE0F8();
              }

              v101 = *(v0 + 272);
              v102 = *(v0 + 232);

              (*(v136 + 32))(v102, *(v100 + 56) + *(v136 + 72) * v98, v101);
              sub_24EB52FA4(v98, v100);
              *(v95 + 8 * v82) = v100;

              v71 = 0;
            }

            else
            {
              v71 = 1;
            }

            v72 = *(v0 + 232);
            v78(v72, v71, 1, *(v0 + 272));
            sub_24E601704(v72, &unk_27F22EC30, &qword_24F939880);
            v51 = v137;
            v69 = v147;
          }

          else
          {
            v103 = *v141;
            (*v141)(*(v0 + 288), v94, v93);
            v104 = swift_isUniquelyReferenced_nonNull_native();
            v105 = *(v95 + 8 * v82);
            *(v95 + 8 * v82) = 0x8000000000000000;
            v106 = sub_24E76D644(v150, v152);
            v108 = v105[2];
            v109 = (v107 & 1) == 0;
            v36 = __OFADD__(v108, v109);
            v110 = v108 + v109;
            if (v36)
            {
              goto LABEL_85;
            }

            v111 = v107;
            if (v105[3] >= v110)
            {
              v51 = v137;
              if ((v104 & 1) == 0)
              {
                v118 = v106;
                sub_24E8AE0F8();
                v106 = v118;
              }
            }

            else
            {
              sub_24E899B5C(v110, v104);
              v106 = sub_24E76D644(v150, v152);
              if ((v111 & 1) != (v112 & 1))
              {
                goto LABEL_76;
              }

              v51 = v137;
            }

            v113 = *(v0 + 288);
            v114 = *(v0 + 272);
            if (v111)
            {
              (*(v136 + 40))(v105[7] + *(v136 + 72) * v106, v113, v114);
            }

            else
            {
              v105[(v106 >> 6) + 8] |= 1 << v106;
              v115 = (v105[6] + 16 * v106);
              *v115 = v150;
              v115[1] = v152;
              v103(v105[7] + *(v136 + 72) * v106, v113, v114);
              v116 = v105[2];
              v36 = __OFADD__(v116, 1);
              v117 = v116 + 1;
              if (v36)
              {
                goto LABEL_86;
              }

              v105[2] = v117;
            }

            v69 = v147;
            *(v95 + 8 * v82) = v105;
          }

          ++v70;
          swift_endAccess();
          v52 = sub_24F2C4620;
          if (v142 == v70)
          {
            goto LABEL_70;
          }
        }

        goto LABEL_81;
      }

LABEL_70:

      v47 = v130;
      v46 = v131;
      v48 = v129;
      v54 = v133;
      v55 = v135;
      if (!v135)
      {
        goto LABEL_25;
      }
    }

    sub_24F92D068();

    sub_24F92B218();
    v60 = sub_24F92D0B8();
    v61 = v152;
    v62 = -1 << *(v46 + 32);
    v63 = v60 & ~v62;
    if (((*(v51 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) == 0)
    {
      goto LABEL_38;
    }

    v64 = v59;
    v65 = ~v62;
    while (1)
    {
      v66 = (*(v46 + 48) + 16 * v63);
      if (*v66 == v64 && v66[1] == v61)
      {
        break;
      }

      v68 = sub_24F92CE08();
      v64 = v150;
      v61 = v152;
      if (v68)
      {
        break;
      }

      v63 = (v63 + 1) & v65;
      if (((*(v51 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    v54 = v133;
    v55 = v135;
    if (v135)
    {
      continue;
    }

    break;
  }

  while (1)
  {
LABEL_25:
    v56 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
      goto LABEL_80;
    }

    if (v56 >= v54)
    {
      break;
    }

    v55 = *(v48 + 8 * v56);
    ++v53;
    if (v55)
    {
      v53 = v56;
      goto LABEL_29;
    }
  }

  v119 = *(v0 + 224);
  v121 = *(v0 + 200);
  v120 = *(v0 + 208);
  v123 = *(v0 + 184);
  v122 = *(v0 + 192);
  v125 = *(v0 + 168);
  v124 = *(v0 + 176);
  v132();

  v119[34] = v121;

  v119[35] = v120;

  v119[30] = v125;
  v119[31] = v124;
  v119[32] = v123;
  v119[33] = v122;

  sub_24E824448(v52, 0);

  v126 = *(v0 + 8);

  return v126();
}

uint64_t sub_24F2D1230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[47] = a2;
  v3[48] = a3;
  v3[46] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213DB0, &qword_24F93B9F8);
  v3[49] = v4;
  v3[50] = *(v4 - 8);
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v5 = type metadata accessor for SocialGameCallHistory.CallNode(0);
  v3[53] = v5;
  v3[54] = *(v5 - 8);
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v6 = sub_24F91F648();
  v3[59] = v6;
  v3[60] = *(v6 - 8);
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F2D1478, 0, 0);
}

unint64_t sub_24F2D1478()
{
  v430 = v0;
  v1 = v0;
  sub_24E60D910(MEMORY[0x277D84F90]);
  v2 = sub_24F45D828(&unk_2861C07A8);
  swift_arrayDestroy();
  if (qword_27F211458 != -1)
  {
    goto LABEL_245;
  }

  while (1)
  {
    v3 = v1[46];
    v4 = sub_24F9220D8();
    __swift_project_value_buffer(v4, qword_27F39E958);

    v5 = sub_24F9220B8();
    v6 = sub_24F92BDA8();

    v7 = os_log_type_enabled(v5, v6);
    v8 = MEMORY[0x277D84FA0];
    v423 = v1;
    if (v7)
    {
      v9 = v1[46];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v429[0] = v11;
      *v10 = 136446210;
      if (v9)
      {
        v12 = v3;
      }

      else
      {
        v12 = v8;
      }

      v1[45] = sub_24EAE3F00(v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
      sub_24E602068(&qword_27F23E240, &unk_27F2285F0, &qword_24F93B070, MEMORY[0x277D83958]);
      v13 = sub_24F92AF68();
      v15 = v14;

      v16 = sub_24E7620D4(v13, v15, v429);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_24E5DD000, v5, v6, "Installed games: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x2530542D0](v11, -1, -1);
      MEMORY[0x2530542D0](v10, -1, -1);
    }

    v17 = v1[73];
    v18 = v1[72];
    v19 = v1[59];
    v20 = v1[60];
    v365 = BiomeLibrary();
    v364 = sub_24F92B098();
    sub_24F91F638();
    v370 = [objc_allocWithZone(MEMORY[0x277CF7D40]) init];
    v21 = [v370 callsWithPredicate:0 limit:0 offset:0 batchSize:0];
    sub_24E69A5C4(0, &unk_27F23E280, 0x277CF7D48);
    v22 = sub_24F92B5A8();

    v23 = sub_24EF1C364(v22);
    v25 = *(v20 + 16);
    v24 = v20 + 16;
    v406 = v25;
    v25(v18, v17, v19);

    v26 = sub_24F9220B8();
    v27 = sub_24F92BDA8();
    v28 = v23 >> 62;
    v384 = v2;
    v372 = v23 >> 62;
    if (os_log_type_enabled(v26, v27))
    {
      v29 = swift_slowAlloc();
      *v29 = 134218240;
      if (v28)
      {
        v359 = v29;
        v30 = sub_24F92C738();
        v29 = v359;
      }

      else
      {
        v30 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v31 = v1[72];
      v33 = v1[59];
      v32 = v1[60];
      *(v29 + 4) = v30;
      v34 = v29;

      *(v34 + 12) = 2048;
      sub_24F91F5C8();
      v36 = v35;
      v37 = v33;
      v38 = *(v32 + 8);
      v38(v31, v37);
      *(v34 + 14) = -v36;
      _os_log_impl(&dword_24E5DD000, v26, v27, "Queried %ld calls in %fs", v34, 0x16u);
      MEMORY[0x2530542D0](v34, -1, -1);

      v28 = v23 >> 62;
    }

    else
    {
      v39 = v1[72];
      v40 = v1[59];
      v41 = v1[60];

      v38 = *(v41 + 8);
      v38(v39, v40);
    }

    v2 = v28 ? sub_24F92C738() : *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v42 = &selRef_lockedAppBundleIdentifiers;
    v380 = v24;
    v398 = v38;
    v361 = v23;
    if (!v2)
    {
      break;
    }

    v43 = 0;
    v44 = v1[60];
    v416 = v23 + 32;
    v420 = v23 & 0xFFFFFFFFFFFFFF8;
    v424 = v23 & 0xC000000000000001;
    v374 = (v44 + 32);
    v410 = MEMORY[0x277D84F90];
    v394 = (v44 + 40);
    v45 = v1[54];
    v401 = v1[53];
    v413 = v2;
    while (1)
    {
      if (v424)
      {
        v46 = MEMORY[0x253052270](v43, v23);
      }

      else
      {
        if (v43 >= *(v420 + 16))
        {
          goto LABEL_238;
        }

        v46 = *(v416 + 8 * v43);
      }

      v47 = v46;
      v48 = __OFADD__(v43++, 1);
      if (v48)
      {
        goto LABEL_237;
      }

      v49 = [v46 date];
      if (!v49)
      {
        goto LABEL_17;
      }

      v50 = v49;
      sub_24F91F608();

      [v47 v42[489]];
      if (v51 > 0.0)
      {
        break;
      }

      v38(v1[71], v1[59]);
LABEL_17:

LABEL_18:
      if (v43 == v2)
      {
        goto LABEL_63;
      }
    }

    if ([v47 isJunk] & 1) != 0 || (objc_msgSend(v47, sel_callerIdIsBlocked) & 1) != 0 || (objc_msgSend(v47, sel_wasEmergencyCall))
    {
      goto LABEL_36;
    }

    if (qword_27F2110B0 != -1)
    {
      swift_once();
    }

    v52 = off_27F23E160;
    v53 = [v47 callStatus];
    if (!v52[2] || (v54 = v53, v55 = MEMORY[0x2530529D0](v52[5], v53, 4), v56 = -1 << *(v52 + 32), v57 = v55 & ~v56, ((*(v52 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v57) & 1) == 0))
    {
LABEL_36:
      v38(v1[71], v1[59]);

      v2 = v413;
      goto LABEL_18;
    }

    v58 = ~v56;
    while (*(v52[6] + 4 * v57) != v54)
    {
      v57 = (v57 + 1) & v58;
      if (((*(v52 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v57) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v360 = v45;
    v59 = v1[71];
    v60 = v42;
    v61 = v1[70];
    v62 = v1[59];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_24F941C80;
    *(v63 + 32) = v47;
    v64 = v62;
    v65 = v380;
    v406(v61, v59, v64);
    v368 = v47;
    [v368 v60 + 120];
    sub_24F91F568();
    swift_beginAccess();
    swift_beginAccess();
    v66 = v410;
    v2 = (v410 + 2);
    v67 = v410[2];
    if (!v67)
    {
LABEL_56:
      v96 = v406;
LABEL_57:
      v410 = v66;
      v119 = v1[70];
      v120 = v1[69];
      v121 = v1[59];
      v122 = v96;
      v123 = v1[55];
      swift_beginAccess();
      v122(v123, v119, v121);
      swift_beginAccess();
      v122(v123 + *(v401 + 20), v120, v121);
      *(v123 + *(v401 + 24)) = v63;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v410 = sub_24E618B6C(0, *v2 + 1, 1, v410);
      }

      v125 = v410[2];
      v124 = v410[3];
      if (v125 >= v124 >> 1)
      {
        v410 = sub_24E618B6C((v124 > 1), v125 + 1, 1, v410);
      }

      v126 = v1[71];
      v127 = v1[70];
      v128 = v1[69];
      v129 = v1[59];
      v130 = v1[55];

      v398(v126, v129);
      v410[2] = v125 + 1;
      sub_24F2CC924(v130, v410 + ((*(v360 + 80) + 32) & ~*(v360 + 80)) + *(v360 + 72) * v125, type metadata accessor for SocialGameCallHistory.CallNode);
      v131 = v128;
      v38 = v398;
      v398(v131, v129);
      v398(v127, v129);
      v45 = v360;
      v23 = v361;
      v42 = &selRef_lockedAppBundleIdentifiers;
      v2 = v413;
      goto LABEL_18;
    }

    v68 = (*(v360 + 80) + 32) & ~*(v360 + 80);
    v69 = *(v360 + 72);
    v385 = v69;
    v388 = v68;
    while (1)
    {
      v391 = v2;
      v70 = v65;
      v71 = v1[58];
      sub_24F2CC85C(v66 + v68 + (v67 - 1) * v69, v71, type metadata accessor for SocialGameCallHistory.CallNode);
      v72 = *(v401 + 20);
      sub_24F2D4580(&qword_27F2363D0, MEMORY[0x277CC9590]);
      v382 = v71;
      v73 = sub_24F92AF78();
      v74 = v1[58];
      if (v73)
      {
        sub_24F2CC8C4(v1[58], type metadata accessor for SocialGameCallHistory.CallNode);
        v2 = v391;
        goto LABEL_56;
      }

      v377 = v72;
      v76 = v1[56];
      v75 = v1[57];

      sub_24F2CC85C(v74, v75, type metadata accessor for SocialGameCallHistory.CallNode);
      sub_24F2CC85C(v74, v76, type metadata accessor for SocialGameCallHistory.CallNode);
      v77 = sub_24F9220B8();
      v78 = sub_24F92BDA8();
      if (os_log_type_enabled(v77, v78))
      {
        v366 = v78;
        v80 = v1[56];
        v79 = v1[57];
        v81 = swift_slowAlloc();
        v362 = swift_slowAlloc();
        v429[0] = v362;
        *v81 = 136381443;
        sub_24F2D4580(&qword_27F229EE8, MEMORY[0x277CC95B8]);
        v82 = sub_24F92CD88();
        v84 = v83;
        sub_24F2CC8C4(v79, type metadata accessor for SocialGameCallHistory.CallNode);
        v85 = sub_24E7620D4(v82, v84, v429);
        v1 = v423;

        *(v81 + 4) = v85;
        *(v81 + 12) = 2081;
        v86 = sub_24F92CD88();
        v88 = v87;
        sub_24F2CC8C4(v80, type metadata accessor for SocialGameCallHistory.CallNode);
        v89 = sub_24E7620D4(v86, v88, v429);

        *(v81 + 14) = v89;
        *(v81 + 22) = 2081;
        v90 = sub_24F92CD88();
        v92 = sub_24E7620D4(v90, v91, v429);

        *(v81 + 24) = v92;
        *(v81 + 32) = 2081;
        v65 = v380;
        v93 = sub_24F92CD88();
        v95 = sub_24E7620D4(v93, v94, v429);

        *(v81 + 34) = v95;
        _os_log_impl(&dword_24E5DD000, v77, v366, "Merging [%{private}s -> %{private}s] with [%{private}s -> %{private}s]", v81, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x2530542D0](v362, -1, -1);
        MEMORY[0x2530542D0](v81, -1, -1);

        v96 = v406;
        v97 = v398;
      }

      else
      {
        v98 = v1[56];
        v99 = v1[57];

        sub_24F2CC8C4(v98, type metadata accessor for SocialGameCallHistory.CallNode);
        sub_24F2CC8C4(v99, type metadata accessor for SocialGameCallHistory.CallNode);
        v96 = v406;
        v97 = v398;
        v65 = v70;
      }

      v96(v1[67], v1[70], v1[59]);
      v100 = sub_24F92AF78();
      v101 = v1[68];
      v102 = v1[59];
      if (v100)
      {
        v103 = v1[58];
        v97(v1[67], v1[59]);
        v96(v101, v103, v102);
      }

      else
      {
        (*v374)(v1[68], v1[67], v1[59]);
      }

      v104 = v1[69];
      v105 = v1[65];
      v106 = v1[59];
      v107 = *v394;
      (*v394)(v1[70], v1[68], v106);
      v96(v105, v104, v106);
      v2 = v65;
      v108 = sub_24F92AF88();
      v109 = v1[66];
      v110 = v1[65];
      v111 = v1[59];
      if (v108)
      {
        v398(v110, v111);
        v96(v109, v382 + v377, v111);
      }

      else
      {
        (*v374)(v109, v110, v111);
      }

      v112 = v1[58];
      v107(v1[69], v1[66], v1[59]);
      v113 = *(v112 + *(v401 + 24));
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24F941C80;
      *(inited + 32) = v368;
      v429[0] = v113;
      v115 = v368;

      sub_24EA0B104(inited);
      if (!*v391)
      {
        goto LABEL_242;
      }

      v63 = v429[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_24ECDE290(v66);
      }

      v2 = (v66 + 2);
      v116 = v66[2];
      if (!v116)
      {
        break;
      }

      v117 = v1[58];
      v118 = v116 - 1;
      sub_24F2CC8C4(v66 + v388 + (v116 - 1) * v385, type metadata accessor for SocialGameCallHistory.CallNode);
      v66[2] = v118;
      v68 = v388;
      sub_24F2CC8C4(v117, type metadata accessor for SocialGameCallHistory.CallNode);
      v69 = v385;
      v67 = v66[2];
      if (!v67)
      {
        goto LABEL_57;
      }
    }

LABEL_243:
    __break(1u);
LABEL_244:
    __break(1u);
LABEL_245:
    swift_once();
  }

  v410 = MEMORY[0x277D84F90];
LABEL_63:
  v132 = v1[63];
  v133 = v1[64];
  v134 = v1[59];
  sub_24F91F638();
  v406(v132, v133, v134);

  v135 = sub_24F9220B8();
  v136 = sub_24F92BDA8();
  if (os_log_type_enabled(v135, v136))
  {
    v137 = swift_slowAlloc();
    *v137 = 134218240;
    v138 = MEMORY[0x277D84FA0];
    if (v372)
    {
      v139 = sub_24F92C738();
    }

    else
    {
      v139 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v142 = v1[63];
    v143 = v1[59];
    *(v137 + 4) = v139;

    *(v137 + 12) = 2048;
    sub_24F91F5C8();
    v145 = v144;
    v398(v142, v143);
    *(v137 + 14) = -v145;
    _os_log_impl(&dword_24E5DD000, v135, v136, "Indexed %ld calls in %fs", v137, 0x16u);
    v146 = v137;
    v38 = v398;
    MEMORY[0x2530542D0](v146, -1, -1);
  }

  else
  {
    v138 = MEMORY[0x277D84FA0];
    v140 = v1[63];
    v141 = v1[59];

    v38(v140, v141);
  }

  v147 = v1[73];
  v395 = v1[61];
  v148 = v1[59];
  v389 = v1[62];
  v392 = v148;
  v149 = v1[47];
  v386 = v1[48];
  v402 = v1[46];
  v38(v1[64], v148);
  v38(v147, v148);
  v363 = swift_allocObject();
  v150 = MEMORY[0x277D84F90];
  *(v363 + 16) = sub_24E60DE30(MEMORY[0x277D84F90]);
  v421 = v363 + 16;
  v383 = swift_allocObject();
  *(v383 + 16) = v138;
  sub_24F91F638();
  v151 = swift_allocObject();
  *(v151 + 16) = 0;
  v152 = [objc_msgSend(v365 App)];
  swift_unknownObjectRelease();
  v399 = v152;
  v425 = [v152 publisherWithUseCase_];
  v153 = swift_allocObject();
  *(v153 + 16) = sub_24E60DE58(v150);
  v154 = swift_allocObject();
  *(v154 + 16) = 0;
  v155 = swift_allocObject();
  *(v155 + 16) = 0;
  *(v155 + 24) = 0;
  v1[6] = sub_24F2C027C;
  v1[7] = 0;
  v1[2] = MEMORY[0x277D85DD0];
  v1[3] = 1107296256;
  v1[4] = sub_24F2D4E50;
  v1[5] = &block_descriptor_80_0;
  v378 = _Block_copy(v1 + 2);
  v156 = swift_allocObject();
  v156[2] = v151;
  v156[3] = v149;
  v2 = v384;
  v156[4] = v386;
  v156[5] = v384;
  v156[6] = v155;
  v156[7] = v402;
  v156[8] = v153;
  v156[9] = v154;
  v156[10] = v410;
  v156[11] = v383;
  v156[12] = v363;
  v1[12] = sub_24F2D4B6C;
  v1[13] = v156;
  v1[8] = MEMORY[0x277D85DD0];
  v1[9] = 1107296256;
  v1[10] = sub_24F2D4E50;
  v1[11] = &block_descriptor_86_0;
  v157 = _Block_copy(v1 + 8);

  v158 = v151;

  v159 = [v425 sinkWithCompletion:v378 receiveInput:v157];
  _Block_release(v157);
  _Block_release(v378);

  v406(v395, v389, v392);

  v160 = sub_24F9220B8();
  v161 = sub_24F92BD98();
  v162 = os_log_type_enabled(v160, v161);
  v163 = v1[61];
  v164 = v1[62];
  v166 = v1[59];
  v165 = v1[60];
  if (v162)
  {
    v167 = swift_slowAlloc();
    *v167 = 134218240;
    swift_beginAccess();
    *(v167 + 4) = *(v158 + 16);

    *(v167 + 12) = 2048;
    sub_24F91F5C8();
    v169 = v168;
    v170 = *(v165 + 8);
    v170(v163, v166);
    *(v167 + 14) = -v169;
    _os_log_impl(&dword_24E5DD000, v160, v161, "Processed %ld event(s) in %fs", v167, 0x16u);
    MEMORY[0x2530542D0](v167, -1, -1);
  }

  else
  {

    v170 = *(v165 + 8);
    v170(v163, v166);
  }

  v170(v164, v166);
  v375 = v1[50];
  v376 = v170;
  v373 = v1[49];

  v390 = sub_24E60D910(MEMORY[0x277D84F90]);
  swift_beginAccess();
  v171 = *v421 + 64;
  v172 = -1 << *(*v421 + 32);
  if (-v172 < 64)
  {
    v173 = ~(-1 << -v172);
  }

  else
  {
    v173 = -1;
  }

  v396 = v173 & *(*v421 + 64);
  v371 = *v421;

  swift_beginAccess();
  v381 = 0;
  v174 = 0;
  v175 = (63 - v172) >> 6;
  v176 = v384 + 56;
  v177 = v383;
  v367 = v175;
  v369 = v171;
LABEL_78:
  v178 = v396;
  if (v396)
  {
    goto LABEL_83;
  }

  do
  {
    v179 = v174 + 1;
    if (__OFADD__(v174, 1))
    {
      __break(1u);
LABEL_236:
      __break(1u);
LABEL_237:
      __break(1u);
LABEL_238:
      __break(1u);
      goto LABEL_239;
    }

    if (v179 >= v175)
    {

      v321 = v390;
      v2 = v390 + 64;
      v322 = -1 << *(v390 + 32);
      if (-v322 < 64)
      {
        v323 = ~(-1 << -v322);
      }

      else
      {
        v323 = -1;
      }

      v324 = v323 & *(v390 + 64);
      v325 = (63 - v322) >> 6;

      v326 = 0;
      v327 = MEMORY[0x277D84FA0];
      v328 = MEMORY[0x277D84FA0];
LABEL_184:
      while (v324)
      {
LABEL_189:
        result = *(*(v321 + 56) + ((v326 << 9) | (8 * __clz(__rbit64(v324)))));
        if (result >> 62)
        {
          v415 = result;
          v331 = sub_24F92C738();
          result = v415;
        }

        else
        {
          v331 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v324 &= v324 - 1;
        if (v331)
        {
          v405 = v325;
          v422 = v331;
          if (v331 < 1)
          {
LABEL_248:
            __break(1u);
          }

          else
          {
            v332 = result & 0xC000000000000001;
            v408 = result + 32;
            v414 = result;

            v333 = 0;
            v409 = v332;
            while (1)
            {
LABEL_195:
              v335 = v327 & 0xFFFFFFFFFFFFFF8;
              if (v327 < 0)
              {
                v335 = v327;
              }

              v419 = v335;
              while (1)
              {
                while (1)
                {
                  v336 = v333;
                  v337 = v332 ? MEMORY[0x253052270](v333, v414) : *(v408 + 8 * v333);
                  v338 = v337;
                  v428 = v336 + 1;
                  if ((v327 & 0xC000000000000001) != 0)
                  {
                    break;
                  }

                  v341 = sub_24F92C3F8();
                  v342 = ~(-1 << *(v327 + 32));
                  for (i = v341 & v342; ; i = (i + 1) & v342)
                  {
                    if (((*(v327 + 56 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) == 0)
                    {
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v429[0] = v328;
                      sub_24ED87EAC(v338, i, isUniquelyReferenced_nonNull_native);
                      v333 = v428;
                      v328 = v429[0];
                      v327 = v429[0];
                      v1 = v423;
                      v321 = v390;
                      v332 = v409;
                      if (v428 == v422)
                      {
                        goto LABEL_225;
                      }

                      goto LABEL_195;
                    }

                    v344 = *(*(v327 + 48) + 8 * i);
                    v345 = sub_24F92C408();

                    if (v345)
                    {
                      break;
                    }
                  }

                  v1 = v423;
                  v333 = v428;
                  v321 = v390;
                  v332 = v409;
                  if (v428 == v422)
                  {
                    goto LABEL_225;
                  }
                }

                v339 = v337;

                v340 = sub_24F92C748();

                if (!v340)
                {
                  break;
                }

                v1[44] = v340;
                swift_dynamicCast();

                v333 = v428;
                v321 = v390;
                if (v428 == v422)
                {
                  goto LABEL_225;
                }
              }

              result = sub_24F92C738();
              if (__OFADD__(result, 1))
              {
                break;
              }

              v328 = sub_24ED8083C(v419, result + 1);
              v429[0] = v328;
              v346 = *(v328 + 16);
              if (*(v328 + 24) <= v346)
              {
                sub_24ED83118(v346 + 1);
                v328 = v429[0];
              }

              v347 = v339;
              result = sub_24F92C3F8();
              v348 = v328 + 56;
              v349 = -1 << *(v328 + 32);
              v350 = result & ~v349;
              v351 = v350 >> 6;
              if (((-1 << v350) & ~*(v328 + 56 + 8 * (v350 >> 6))) != 0)
              {
                v352 = __clz(__rbit64((-1 << v350) & ~*(v328 + 56 + 8 * (v350 >> 6)))) | v350 & 0x7FFFFFFFFFFFFFC0;
                v332 = v409;
                goto LABEL_224;
              }

              v353 = 0;
              v354 = (63 - v349) >> 6;
              v332 = v409;
              do
              {
                if (++v351 == v354 && (v353 & 1) != 0)
                {
                  __break(1u);
                  goto LABEL_248;
                }

                v355 = v351 == v354;
                if (v351 == v354)
                {
                  v351 = 0;
                }

                v353 |= v355;
                v356 = *(v348 + 8 * v351);
              }

              while (v356 == -1);
              v352 = __clz(__rbit64(~v356)) + (v351 << 6);
LABEL_224:
              *(v348 + ((v352 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v352;
              *(*(v328 + 48) + 8 * v352) = v347;
              ++*(v328 + 16);

              v327 = v328;
              v333 = v428;
              v321 = v390;
              if (v428 == v422)
              {
LABEL_225:

                v177 = v383;
                v325 = v405;
                goto LABEL_184;
              }
            }
          }

          __break(1u);
          return result;
        }
      }

      while (1)
      {
        v329 = v326 + 1;
        if (__OFADD__(v326, 1))
        {
          goto LABEL_236;
        }

        if (v329 >= v325)
        {
          break;
        }

        v324 = *(v2 + 8 * v329);
        ++v326;
        if (v324)
        {
          v326 = v329;
          goto LABEL_189;
        }
      }

      swift_unknownObjectRelease();

      swift_beginAccess();
      v357 = *(v177 + 16);

      sub_24E824448(v381, 0);

      v358 = v1[1];

      return v358(v361, v357, v327, v321);
    }

    v178 = *(v171 + 8 * v179);
    ++v174;
  }

  while (!v178);
  v174 = v179;
LABEL_83:
  v397 = v178;
  v379 = v174;
  v180 = (v174 << 9) | (8 * __clz(__rbit64(v178)));
  v181 = *(*(v371 + 56) + v180);
  v182 = *(*(v371 + 48) + v180);
  swift_retain_n();
  v183 = v182;
  v407 = v181;

  v184 = sub_24F9220B8();
  v185 = sub_24F92BDA8();

  v400 = v183;
  if (os_log_type_enabled(v184, v185))
  {
    v186 = swift_slowAlloc();
    v187 = swift_slowAlloc();
    v429[0] = v187;
    *v186 = 136446722;
    v188 = [v183 uniqueId];
    v189 = sub_24F92B0D8();
    v191 = v190;

    v192 = sub_24E7620D4(v189, v191, v429);

    *(v186 + 4) = v192;
    *(v186 + 12) = 2082;
    v193 = [v183 serviceProvider];
    if (v193)
    {
      v194 = v193;
      v195 = sub_24F92B0D8();
      v197 = v196;
    }

    else
    {
      v197 = 0xE100000000000000;
      v195 = 45;
    }

    v198 = sub_24E7620D4(v195, v197, v429);

    *(v186 + 14) = v198;
    *(v186 + 22) = 2080;
    v199 = *(v383 + 16);

    v200 = sub_24F4D429C(v183, v199);

    if (v200)
    {
      v201 = 0xD000000000000016;
    }

    else
    {
      v201 = 0x52414C55474552;
    }

    if (v200)
    {
      v202 = 0x800000024FA72830;
    }

    else
    {
      v202 = 0xE700000000000000;
    }

    v203 = sub_24E7620D4(v201, v202, v429);

    *(v186 + 24) = v203;
    _os_log_impl(&dword_24E5DD000, v184, v185, "%{public}s (%{public}s): %s", v186, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v187, -1, -1);
    MEMORY[0x2530542D0](v186, -1, -1);

    v176 = v384 + 56;
  }

  else
  {
  }

  v396 = (v397 - 1) & v397;
  v204 = v407;
  v205 = v407 + 64;
  v206 = -1 << *(v407 + 32);
  if (-v206 < 64)
  {
    v207 = ~(-1 << -v206);
  }

  else
  {
    v207 = -1;
  }

  v208 = v207 & *(v407 + 64);
  v209 = (63 - v206) >> 6;

  v210 = v208;
  v211 = 0;
  v212 = 0;
  v213 = 0.0;
  v411 = v209;
LABEL_100:
  if (v210)
  {
    v214 = v210;
    goto LABEL_106;
  }

  while (1)
  {
    v215 = v212 + 1;
    if (__OFADD__(v212, 1))
    {
      break;
    }

    if (v215 >= v209)
    {

      v243 = *(v204 + 16);
      v48 = __OFSUB__(v243, v211);
      v244 = v243 - v211;
      if (v48)
      {
        goto LABEL_240;
      }

      if (v244 <= 1)
      {
        v244 = 1;
      }

      v245 = v213 / v244;
      v246 = -1 << *(v204 + 32);
      if (-v246 < 64)
      {
        v247 = ~(-1 << -v246);
      }

      else
      {
        v247 = -1;
      }

      v418 = v247 & *(v204 + 64);
      v248 = (63 - v246) >> 6;

      v249 = 0;
      v250 = 0.0;
      v404 = v248;
      while (2)
      {
        v251 = v418;
        if (!v418)
        {
          while (1)
          {
            v252 = v249 + 1;
            if (__OFADD__(v249, 1))
            {
              goto LABEL_231;
            }

            if (v252 >= v248)
            {

              [v400 duration];
              v177 = v383;
              v171 = v369;
              if (v316 < v250)
              {
                v317 = sub_24F9220B8();
                v318 = sub_24F92BDB8();
                if (os_log_type_enabled(v317, v318))
                {
                  v319 = swift_slowAlloc();
                  *v319 = 0;
                  _os_log_impl(&dword_24E5DD000, v317, v318, "Game call percentage is > 100", v319, 2u);
                  v320 = v319;
                  v171 = v369;
                  MEMORY[0x2530542D0](v320, -1, -1);
                }
              }

              v174 = v379;
              v175 = v367;
              goto LABEL_78;
            }

            v251 = *(v205 + 8 * v252);
            ++v249;
            if (v251)
            {
              v249 = v252;
              break;
            }
          }
        }

        v418 = (v251 - 1) & v251;
        v412 = v249;
        v253 = __clz(__rbit64(v251)) | (v249 << 6);
        v254 = (*(v204 + 48) + 16 * v253);
        v255 = *v254;
        v256 = *(*(v204 + 56) + 8 * v253);
        v427 = v254[1];
        if (*(v2 + 16))
        {
          sub_24F92D068();

          v257 = v256;

          sub_24F92B218();
          v258 = sub_24F92D0B8();
          v259 = v427;
          v260 = -1 << *(v2 + 32);
          v261 = v258 & ~v260;
          if ((*(v176 + ((v261 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v261))
          {
            v262 = ~v260;
            while (1)
            {
              v263 = (*(v2 + 48) + 16 * v261);
              if (*v263 == v255 && v263[1] == v259)
              {
                break;
              }

              v265 = sub_24F92CE08();
              v259 = v427;
              if (v265)
              {
                break;
              }

              v261 = (v261 + 1) & v262;
              if (((*(v176 + ((v261 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v261) & 1) == 0)
              {
                goto LABEL_150;
              }
            }

LABEL_135:
            v249 = v412;
            v205 = v407 + 64;
            v248 = v404;
            continue;
          }
        }

        else
        {

          v257 = v256;
        }

        break;
      }

LABEL_150:
      v393 = v255;
      v266 = *(v257 + 16);
      if (v266)
      {
        v267 = v257;
        v268 = v423[51];
        v269 = *(v373 + 36);
        v270 = v267 + ((*(v375 + 80) + 32) & ~*(v375 + 80));
        v271 = *(v375 + 72);
        v272 = 0.0;
        do
        {
          v273 = v423[59];
          v274 = v423[51];
          sub_24E60169C(v270, v274, &qword_27F213DB0, &qword_24F93B9F8);
          sub_24F91F558();
          v276 = v275;
          v376(v274, v273);
          v376(v268 + v269, v273);
          v272 = v272 + v276;
          v270 += v271;
          --v266;
        }

        while (v266);
      }

      else
      {
        v272 = 0.0;
      }

      v277 = v245 + v272;
      [v400 duration];
      v279 = v277 / v278;
      [v400 duration];
      if (v280 <= 0.0 || v279 <= 0.5)
      {

        v292 = v400;

        v293 = sub_24F9220B8();
        v294 = sub_24F92BDB8();

        v1 = v423;
        v2 = v384;
        v204 = v407;
        if (os_log_type_enabled(v293, v294))
        {
          v295 = swift_slowAlloc();
          v387 = swift_slowAlloc();
          v429[0] = v387;
          *v295 = 136446722;
          *(v295 + 4) = sub_24E7620D4(v393, v427, v429);
          *(v295 + 12) = 2082;
          v296 = [v292 uniqueId];
          v297 = sub_24F92B0D8();
          v299 = v298;

          v300 = sub_24E7620D4(v297, v299, v429);

          *(v295 + 14) = v300;
          *(v295 + 22) = 2048;
          *(v295 + 24) = v279 * 100.0;
          _os_log_impl(&dword_24E5DD000, v293, v294, "Not considering %{public}s for call %{public}s as percentage only %f%%", v295, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x2530542D0](v387, -1, -1);
          MEMORY[0x2530542D0](v295, -1, -1);
        }
      }

      else
      {
        sub_24E824448(v381, 0);
        v281 = v390;
        v282 = swift_isUniquelyReferenced_nonNull_native();
        v429[0] = v390;
        v284 = sub_24E76D644(v393, v427);
        v285 = *(v390 + 16);
        v286 = (v283 & 1) == 0;
        v287 = v285 + v286;
        v1 = v423;
        v2 = v384;
        v204 = v407;
        if (__OFADD__(v285, v286))
        {
          goto LABEL_241;
        }

        v288 = v283;
        if (*(v390 + 24) >= v287)
        {
          if ((v282 & 1) == 0)
          {
            sub_24E8B2FB0();
            v281 = v429[0];
          }
        }

        else
        {
          sub_24E8A27A8(v287, v282);
          v289 = v429[0];
          v290 = sub_24E76D644(v393, v427);
          if ((v288 & 1) != (v291 & 1))
          {
            goto LABEL_232;
          }

          v284 = v290;
          v281 = v289;
        }

        if ((v288 & 1) == 0)
        {
          v281[(v284 >> 6) + 8] |= 1 << v284;
          v301 = (v281[6] + 16 * v284);
          *v301 = v393;
          v301[1] = v427;
          *(v281[7] + 8 * v284) = MEMORY[0x277D84F90];
          v302 = v281[2];
          v48 = __OFADD__(v302, 1);
          v303 = v302 + 1;
          if (v48)
          {
            goto LABEL_244;
          }

          v281[2] = v303;
        }

        v390 = v281;
        v304 = (v281[7] + 8 * v284);
        v305 = v400;
        MEMORY[0x253050F00]();
        if (*((*v304 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v304 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24F92B5E8();
        }

        sub_24F92B638();
        v381 = sub_24F2D4E44;
      }

      v250 = v250 + v277;
      v306 = v400;

      v307 = sub_24F9220B8();
      v308 = sub_24F92BDA8();

      if (os_log_type_enabled(v307, v308))
      {
        v309 = swift_slowAlloc();
        v310 = v1;
        v311 = v306;
        v312 = swift_slowAlloc();
        v429[0] = v312;
        *v309 = 136446978;
        v313 = sub_24E7620D4(v393, v427, v429);

        *(v309 + 4) = v313;
        *(v309 + 12) = 2050;
        *(v309 + 14) = v277;
        *(v309 + 22) = 2050;
        v314 = v311;
        v1 = v310;
        [v314 duration];
        *(v309 + 24) = v315;
        *(v309 + 32) = 2048;
        *(v309 + 34) = v279 * 100.0;
        _os_log_impl(&dword_24E5DD000, v307, v308, "\t%{public}s, %{public}f, %{public}f, %f%%", v309, 0x2Au);
        __swift_destroy_boxed_opaque_existential_1(v312);
        MEMORY[0x2530542D0](v312, -1, -1);
        MEMORY[0x2530542D0](v309, -1, -1);
      }

      else
      {
      }

      v176 = v384 + 56;
      goto LABEL_135;
    }

    v214 = *(v205 + 8 * v215);
    ++v212;
    if (v214)
    {
      v212 = v215;
LABEL_106:
      v210 = (v214 - 1) & v214;
      if (!*(v2 + 16))
      {
        goto LABEL_100;
      }

      v417 = (v214 - 1) & v214;
      v216 = __clz(__rbit64(v214)) | (v212 << 6);
      v217 = *(v204 + 56);
      v218 = (*(v204 + 48) + 16 * v216);
      v219 = v176;
      v221 = *v218;
      v220 = v218[1];
      v222 = *(v217 + 8 * v216);
      sub_24F92D068();

      sub_24F92B218();
      v223 = sub_24F92D0B8();
      v224 = -1 << *(v2 + 32);
      v225 = v223 & ~v224;
      if ((*(v219 + ((v225 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v225))
      {
        v226 = ~v224;
        while (1)
        {
          v227 = (*(v2 + 48) + 16 * v225);
          v228 = *v227 == v221 && v227[1] == v220;
          if (v228 || (sub_24F92CE08() & 1) != 0)
          {
            break;
          }

          v225 = (v225 + 1) & v226;
          if (((*(v384 + 56 + ((v225 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v225) & 1) == 0)
          {
            goto LABEL_99;
          }
        }

        v403 = v211;

        v229 = sub_24F9220B8();
        v230 = sub_24F92BDA8();

        if (os_log_type_enabled(v229, v230))
        {
          v231 = swift_slowAlloc();
          v232 = swift_slowAlloc();
          v429[0] = v232;
          *v231 = 136446210;
          v233 = sub_24E7620D4(v221, v220, v429);

          *(v231 + 4) = v233;
          _os_log_impl(&dword_24E5DD000, v229, v230, "Donating time range from %{public}s", v231, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v232);
          MEMORY[0x2530542D0](v232, -1, -1);
          MEMORY[0x2530542D0](v231, -1, -1);
        }

        else
        {
        }

        v209 = v411;
        v205 = v407 + 64;
        v234 = *(v222 + 16);
        if (v234)
        {
          v235 = v222;
          v236 = v1[52];
          v237 = *(v373 + 36);
          v238 = v235 + ((*(v375 + 80) + 32) & ~*(v375 + 80));
          v426 = *(v375 + 72);
          do
          {
            v239 = v423[59];
            v240 = v423[52];
            sub_24E60169C(v238, v240, &qword_27F213DB0, &qword_24F93B9F8);
            sub_24F91F558();
            v242 = v241;
            v376(v240, v239);
            v376(v236 + v237, v239);
            v213 = v213 + v242;
            v238 += v426;
            --v234;
          }

          while (v234);

          v1 = v423;
          v2 = v384;
          v209 = v411;
          v205 = v407 + 64;
        }

        else
        {
        }

        v204 = v407;
        v211 = v403 + 1;
        v210 = v417;
        v176 = v384 + 56;
        if (!__OFADD__(v403, 1))
        {
          goto LABEL_100;
        }

LABEL_239:
        __break(1u);
LABEL_240:
        __break(1u);
LABEL_241:
        __break(1u);
LABEL_242:
        __break(1u);
        goto LABEL_243;
      }

LABEL_99:

      v210 = v417;
      v176 = v384 + 56;
      v204 = v407;
      v209 = v411;
      v205 = v407 + 64;
      goto LABEL_100;
    }
  }

  __break(1u);
LABEL_231:
  __break(1u);
LABEL_232:

  return sub_24F92CF88();
}

void sub_24F2D3E6C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  sub_24E60D924(MEMORY[0x277D84F90]);

  sub_24E60D924(v4);

  sub_24E60D924(v4);

  sub_24E60D924(v4);

  sub_24E608B7C(v4);

  v98 = sub_24E60D924(v4);
  v97 = sub_24E60D924(v4);
  v99 = sub_24E60D924(v4);
  v5 = sub_24E60D924(v4);
  v6 = sub_24E608B7C(v4);
  v7 = 0;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  for (i = (v8 + 63) >> 6; v10; a2 = v92)
  {
LABEL_8:
    while (1)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v14 = (v7 << 9) | (8 * v13);
      v15 = *(*(a1 + 56) + v14);
      v16 = *(*(a1 + 48) + v14);

      v17 = [v16 type];
      if (v17 > 1)
      {
        break;
      }

      if (!v17)
      {
        v91 = v6;
        v92 = a2;
        v95 = v5;
        v41 = [v16 value];
        v42 = sub_24F92B0D8();
        v44 = v43;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v100 = v99;
        v85 = v42;
        v89 = v44;
        v46 = sub_24E76D644(v42, v44);
        v47 = v99[2];
        v48 = (v45 & 1) == 0;
        v49 = v47 + v48;
        if (__OFADD__(v47, v48))
        {
          goto LABEL_65;
        }

        if (v99[3] >= v49)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v5 = v95;
            if ((v45 & 1) == 0)
            {
LABEL_46:
              v66 = v99;
              v99[(v46 >> 6) + 8] |= 1 << v46;
              v67 = (v99[6] + 16 * v46);
              *v67 = v85;
              v67[1] = v89;
              *(v99[7] + 8 * v46) = v15;

              v68 = v99[2];
              v26 = __OFADD__(v68, 1);
              v69 = v68 + 1;
              if (v26)
              {
                goto LABEL_67;
              }

LABEL_51:
              v99 = v66;
LABEL_58:
              v66[2] = v69;
              goto LABEL_59;
            }

            goto LABEL_41;
          }

          v50 = v45;
          sub_24E8B2BA4();
        }

        else
        {
          v50 = v45;
          sub_24E8A2144(v49, isUniquelyReferenced_nonNull_native);
          v51 = sub_24E76D644(v85, v89);
          if ((v50 & 1) != (v52 & 1))
          {
            goto LABEL_71;
          }

          v46 = v51;
        }

        v53 = v50;
        v5 = v95;
        if ((v53 & 1) == 0)
        {
          goto LABEL_46;
        }

LABEL_41:

        v65 = v100;
        v99 = v100;
        goto LABEL_45;
      }

      if (v17 == 1)
      {
        v91 = v6;
        v92 = a2;
        v93 = v5;
        v18 = [v16 value];
        v19 = sub_24F92B0D8();
        v21 = v20;

        v79 = swift_isUniquelyReferenced_nonNull_native();
        v100 = v99;
        v83 = v19;
        v87 = v21;
        v22 = sub_24E76D644(v19, v21);
        v24 = v99[2];
        v25 = (v23 & 1) == 0;
        v26 = __OFADD__(v24, v25);
        v27 = v24 + v25;
        if (v26)
        {
          goto LABEL_66;
        }

        v28 = v23;
        if (v99[3] < v27)
        {
          sub_24E8A2144(v27, v79);
          v22 = sub_24E76D644(v19, v87);
          if ((v28 & 1) != (v29 & 1))
          {
            goto LABEL_71;
          }

          goto LABEL_34;
        }

        if (v79)
        {
LABEL_34:
          v5 = v93;
          if ((v28 & 1) == 0)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v70 = v22;
          sub_24E8B2BA4();
          v22 = v70;
          v5 = v93;
          if ((v28 & 1) == 0)
          {
LABEL_50:
            v66 = v99;
            v99[(v22 >> 6) + 8] |= 1 << v22;
            v71 = (v99[6] + 16 * v22);
            *v71 = v83;
            v71[1] = v87;
            *(v99[7] + 8 * v22) = v15;

            v72 = v99[2];
            v26 = __OFADD__(v72, 1);
            v69 = v72 + 1;
            if (v26)
            {
              goto LABEL_68;
            }

            goto LABEL_51;
          }
        }

        v46 = v22;
        goto LABEL_41;
      }

LABEL_17:

      if (!v10)
      {
        goto LABEL_4;
      }
    }

    if (v17 == 2)
    {
      v91 = v6;
      v92 = a2;
      v96 = v5;
      v54 = [v16 value];
      v55 = sub_24F92B0D8();
      v57 = v56;

      v82 = swift_isUniquelyReferenced_nonNull_native();
      v86 = v55;
      v90 = v57;
      v58 = sub_24E76D644(v55, v57);
      v60 = v98[2];
      v61 = (v59 & 1) == 0;
      v26 = __OFADD__(v60, v61);
      v62 = v60 + v61;
      if (v26)
      {
        goto LABEL_64;
      }

      v63 = v59;
      if (v98[3] < v62)
      {
        sub_24E8A2144(v62, v82);
        v58 = sub_24E76D644(v55, v90);
        if ((v63 & 1) != (v64 & 1))
        {
          goto LABEL_71;
        }

        goto LABEL_43;
      }

      if (v82)
      {
LABEL_43:
        v5 = v96;
        if ((v63 & 1) == 0)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v76 = v58;
        sub_24E8B2BA4();
        v58 = v76;
        v5 = v96;
        if ((v63 & 1) == 0)
        {
LABEL_57:
          v66 = v98;
          v98[(v58 >> 6) + 8] |= 1 << v58;
          v77 = (v98[6] + 16 * v58);
          *v77 = v86;
          v77[1] = v90;
          *(v98[7] + 8 * v58) = v15;

          v78 = v98[2];
          v26 = __OFADD__(v78, 1);
          v69 = v78 + 1;
          if (v26)
          {
            goto LABEL_69;
          }

          goto LABEL_58;
        }
      }

      v46 = v58;

      v65 = v98;
      goto LABEL_45;
    }

    if (v17 != 3)
    {
      goto LABEL_17;
    }

    v91 = v6;
    v92 = a2;
    v94 = v5;
    v30 = [v16 value];
    v31 = sub_24F92B0D8();
    v33 = v32;

    v80 = swift_isUniquelyReferenced_nonNull_native();
    v84 = v31;
    v88 = v33;
    v34 = sub_24E76D644(v31, v33);
    v36 = v97[2];
    v37 = (v35 & 1) == 0;
    v26 = __OFADD__(v36, v37);
    v38 = v36 + v37;
    if (v26)
    {
      goto LABEL_63;
    }

    v39 = v35;
    if (v97[3] >= v38)
    {
      if ((v80 & 1) == 0)
      {
        v73 = v34;
        sub_24E8B2BA4();
        v34 = v73;
        v5 = v94;
        if ((v39 & 1) == 0)
        {
LABEL_53:
          v66 = v97;
          v97[(v34 >> 6) + 8] |= 1 << v34;
          v74 = (v97[6] + 16 * v34);
          *v74 = v84;
          v74[1] = v88;
          *(v97[7] + 8 * v34) = v15;

          v75 = v97[2];
          v26 = __OFADD__(v75, 1);
          v69 = v75 + 1;
          if (v26)
          {
            goto LABEL_70;
          }

          goto LABEL_58;
        }

        goto LABEL_38;
      }
    }

    else
    {
      sub_24E8A2144(v38, v80);
      v34 = sub_24E76D644(v31, v88);
      if ((v39 & 1) != (v40 & 1))
      {
        goto LABEL_71;
      }
    }

    v5 = v94;
    if ((v39 & 1) == 0)
    {
      goto LABEL_53;
    }

LABEL_38:
    v46 = v34;

    v65 = v97;
LABEL_45:
    *(v65[7] + 8 * v46) = v15;

LABEL_59:
    v6 = v91;
  }

LABEL_4:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= i)
    {

      *a2 = v98;
      a2[1] = v97;
      a2[2] = v99;
      a2[3] = v5;
      a2[4] = v6;
      return;
    }

    v10 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v10)
    {
      v7 = v12;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  sub_24F92CF88();
  __break(1u);
}

uint64_t sub_24F2D4580(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_24F91F648();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F2D45C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t block_copy_helper_138(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_24F2D4698(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  if (a1)
  {
  }
}

uint64_t sub_24F2D4750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *(a1 + 2);
    if (v4 >= 4)
    {
      return v4 - 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_24F91F648();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F2D4808(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *(result + 2) = a2 + 3;
  }

  else
  {
    v7 = sub_24F91F648();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24F2D48A8(uint64_t a1)
{
  result = sub_24F91F648();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24F2D4940()
{
  result = qword_27F23E268;
  if (!qword_27F23E268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E268);
  }

  return result;
}

unint64_t sub_24F2D4998()
{
  result = qword_27F23E270;
  if (!qword_27F23E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E270);
  }

  return result;
}

unint64_t sub_24F2D49F0()
{
  result = qword_27F23E278;
  if (!qword_27F23E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E278);
  }

  return result;
}

uint64_t sub_24F2D4A64()
{

  return swift_deallocObject();
}

uint64_t sub_24F2D4AAC()
{

  return swift_deallocObject();
}

uint64_t sub_24F2D4AE4()
{

  return swift_deallocObject();
}

uint64_t sub_24F2D4BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24F2D4C90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F91F648();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_24F2D4D48(uint64_t a1)
{
  sub_24F91F648();
  if (v1 <= 0x3F)
  {
    sub_24F2D4DCC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F2D4DCC(uint64_t a1)
{
  if (!qword_27F23E2B0)
  {
    sub_24E69A5C4(255, &unk_27F23E280, 0x277CF7D48);
    v1 = sub_24F92B6E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F23E2B0);
    }
  }
}

uint64_t EnvironmentValues.pageContext.getter()
{
  sub_24EC6BAC0();
  sub_24F924868();
  return v1;
}

void (*EnvironmentValues.pageContext.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_24EC6BAC0();
  sub_24F924868();
  *v4 = v4[1];
  return sub_24F2D4F64;
}

void sub_24F2D4F64(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v2[2] = v4;
  v2[3] = v3;
  if (a2)
  {

    sub_24F924878();
  }

  else
  {
    sub_24F924878();
  }

  free(v2);
}

double View.providePageContextMetrics()(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v15 = 0;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  sub_24F926F28();
  v5 = v9;
  v6 = v10;
  v7 = v11;
  v9 = KeyPath;
  v10 = 0;
  LOBYTE(v11) = 0;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  MEMORY[0x25304C420](&v9, a1, &type metadata for ProvidePageContextModifier, a2);

  return result;
}

uint64_t sub_24F2D50CC(void *a1)
{
  sub_24F924038();
  sub_24F2D5130();
  return swift_getWitnessTable();
}

unint64_t sub_24F2D5130()
{
  result = qword_27F23E2B8;
  if (!qword_27F23E2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E2B8);
  }

  return result;
}

uint64_t sub_24F2D5184(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_24F2D51E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_24F2D527C(uint64_t a1)
{
  v1[12] = a1;
  v2 = sub_24F924848();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  sub_24F92B7F8();
  v1[16] = sub_24F92B7E8();
  v4 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F2D5370, v4, v3);
}

uint64_t sub_24F2D5370()
{
  v1 = *(v0 + 96);

  v2 = *(v1 + 16);
  *(v0 + 40) = *v1;
  *(v0 + 56) = v2;
  v3 = *(v0 + 40);
  if (v2 == 1)
  {
  }

  else
  {
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v7 = *(v0 + 104);

    sub_24F92BDC8();
    v8 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(v0 + 40, &qword_27F224448, &qword_24F971A00);
    (*(v6 + 8))(v5, v7);
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
  }

  v9 = *(v0 + 96);
  v10 = *(v9 + 40);
  *(v0 + 16) = *(v9 + 24);
  *(v0 + 32) = v10;
  *(v0 + 80) = v3;
  *(v0 + 88) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E2E8, &unk_24F9E0300);
  sub_24F926F48();

  v11 = *(v0 + 8);

  return v11();
}

void sub_24F2D54FC(uint64_t a1, __int128 *a2)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 24);
  v14 = *(a2 + 5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E2E8, &unk_24F9E0300);
  sub_24F926F38();
  v7 = v12;
  if (v12)
  {
    v8 = v11;
  }

  else
  {
    v13 = *a2;
    LOBYTE(v14) = *(a2 + 16);
    v8 = v13;
    if (v14 == 1)
    {
      v7 = *(&v13 + 1);

      if (!v7)
      {
        return;
      }
    }

    else
    {

      sub_24F92BDC8();
      v9 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E601704(&v13, &qword_27F224448, &qword_24F971A00);
      (*(v4 + 8))(v6, v3);
      v8 = v11;
      v7 = v12;
      if (!v12)
      {
        return;
      }
    }
  }

  v11 = v8;
  v12 = v7;
  if (qword_27F210670 != -1)
  {
    swift_once();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910, &unk_24F974C00);
  __swift_project_value_buffer(v10, qword_27F22E400);
  sub_24F929A98();
}

uint64_t sub_24F2D5738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a1;
  v16 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E2C0, &qword_24F9E02D0);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - v4;
  v6 = *(v2 + 5);
  v18 = *v2;
  v19 = *(v2 + 16);
  v21 = *(v2 + 24);
  v20 = v6;
  v7 = swift_allocObject();
  v8 = v2[1];
  *(v7 + 16) = *v2;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(v2 + 4);
  *(v7 + 56) = v6;
  v9 = &v5[*(v3 + 36)];
  sub_24F923AD8();
  sub_24E60169C(&v18, v17, &qword_27F224448, &qword_24F971A00);
  sub_24E60169C(&v21, v17, &unk_27F23B740, &qword_24F93EC10);
  sub_24E60169C(&v20, v17, &qword_27F23E2C8, &qword_24F9E02F0);
  sub_24F92B818();
  *v9 = &unk_24F9E02E0;
  *(v9 + 1) = v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E2D0, &qword_24F9E02F8);
  (*(*(v10 - 8) + 16))(v5, v15, v10);
  v11 = swift_allocObject();
  v12 = v2[1];
  *(v11 + 16) = *v2;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(v2 + 4);
  *(v11 + 56) = v6;
  sub_24E60169C(&v18, v17, &qword_27F224448, &qword_24F971A00);
  sub_24E60169C(&v21, v17, &unk_27F23B740, &qword_24F93EC10);
  sub_24E60169C(&v20, v17, &qword_27F23E2C8, &qword_24F9E02F0);
  sub_24F2D5AA0();
  sub_24F925F38();

  return sub_24E601704(v5, &qword_27F23E2C0, &qword_24F9E02D0);
}

uint64_t sub_24F2D59B8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24E614970;

  return sub_24F2D527C(v0 + 16);
}

uint64_t objectdestroyTm_61()
{
  sub_24E74C370(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

unint64_t sub_24F2D5AA0()
{
  result = qword_27F23E2D8;
  if (!qword_27F23E2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23E2C0, &qword_24F9E02D0);
    sub_24F2D5B2C();
    sub_24E6D8720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E2D8);
  }

  return result;
}

unint64_t sub_24F2D5B2C()
{
  result = qword_27F23E2E0;
  if (!qword_27F23E2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23E2D0, &qword_24F9E02F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E2E0);
  }

  return result;
}

uint64_t sub_24F2D5B90()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23E2C0, &qword_24F9E02D0);
  sub_24F2D5AA0();
  return swift_getOpaqueTypeConformance2();
}

__n128 PurchaseDecorationIntent.init(purchaseIntent:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0xD000000000000018;
  *(a2 + 8) = 0x800000024F9E02F0;
  v2 = *(a1 + 112);
  *(a2 + 112) = *(a1 + 96);
  *(a2 + 128) = v2;
  v3 = *(a1 + 144);
  *(a2 + 144) = *(a1 + 128);
  *(a2 + 160) = v3;
  v4 = *(a1 + 48);
  *(a2 + 48) = *(a1 + 32);
  *(a2 + 64) = v4;
  v5 = *(a1 + 80);
  *(a2 + 80) = *(a1 + 64);
  *(a2 + 96) = v5;
  result = *a1;
  v7 = *(a1 + 16);
  *(a2 + 16) = *a1;
  *(a2 + 32) = v7;
  return result;
}

uint64_t PurchaseDecorationIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

JSValue __swiftcall PurchaseDecorationIntent.makeValue(in:)(JSContext in)
{
  v2 = objc_opt_self();
  result.super.isa = [v2 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    sub_24EBA9E24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
    v5 = [v2 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v5)
    {
      sub_24F92C328();
      return isa;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_24F2D5D6C()
{
  result = qword_27F23E2F0;
  if (!qword_27F23E2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E2F0);
  }

  return result;
}

__n128 PlatformSelectorViewLayout.init(metrics:style:descriptionLabel:accessoryImageView:)@<Q0>(void *__src@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 9);
  memcpy((a5 + 96), __src, 0x118uLL);
  *(a5 + 80) = v8;
  *(a5 + 88) = v9;
  *(a5 + 89) = v10;
  sub_24E612C80(a3, a5);
  result = *a4;
  v12 = *(a4 + 16);
  *(a5 + 40) = *a4;
  *(a5 + 56) = v12;
  *(a5 + 72) = *(a4 + 32);
  return result;
}

void PlatformSelectorViewLayout.style.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 89);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t PlatformSelectorViewLayout.Metrics.AccessoryAlignment.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t PlatformSelectorViewLayout.Metrics.badgeHorizontalPadding.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t PlatformSelectorViewLayout.Metrics.textSpaceWhenInline.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return sub_24E612C80(a1, v1 + 40);
}

uint64_t PlatformSelectorViewLayout.Metrics.textSpaceWhenExclusiveLine.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 80));

  return sub_24E612C80(a1, v1 + 80);
}

uint64_t PlatformSelectorViewLayout.Metrics.badgeSpaceExclusiveLine.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 120));

  return sub_24E612C80(a1, v1 + 120);
}

uint64_t PlatformSelectorViewLayout.Metrics.accessoryHorizontalPadding.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 160));

  return sub_24E612C80(a1, v1 + 160);
}

void PlatformSelectorViewLayout.Metrics.accessoryContentInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[25] = a1;
  v4[26] = a2;
  v4[27] = a3;
  v4[28] = a4;
}

uint64_t PlatformSelectorViewLayout.Metrics.bottomSpacer.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 240));

  return sub_24E612C80(a1, v1 + 240);
}

uint64_t PlatformSelectorViewLayout.Metrics.init(badgeHorizontalPadding:textSpaceWhenInline:textSpaceWhenExclusiveLine:badgeSpaceExclusiveLine:accessoryHorizontalPadding:accessoryContentInsets:accessoryAlignment:bottomSpacer:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, char *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>, double a12@<D3>)
{
  v31 = *a6;
  sub_24E615E00(a1, a8);
  v21 = sub_24F922628();
  v22 = MEMORY[0x277D22798];
  *(a8 + 64) = v21;
  *(a8 + 72) = v22;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a8 + 40));
  v24 = *(v21 - 8);
  v25 = *(v24 + 16);
  v25(boxed_opaque_existential_1, a2, v21);
  *(a8 + 104) = v21;
  *(a8 + 112) = v22;
  v26 = __swift_allocate_boxed_opaque_existential_1((a8 + 80));
  v25(v26, a3, v21);
  *(a8 + 144) = v21;
  *(a8 + 152) = v22;
  v27 = __swift_allocate_boxed_opaque_existential_1((a8 + 120));
  (*(v24 + 32))(v27, a4, v21);
  v28 = *(v24 + 8);
  v28(a3, v21);
  v28(a2, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_24E612C80(a5, a8 + 160);
  *(a8 + 200) = a9;
  *(a8 + 208) = a10;
  *(a8 + 216) = a11;
  *(a8 + 224) = a12;
  *(a8 + 232) = v31;

  return sub_24E612C80(a7, a8 + 240);
}

id static PlatformSelectorViewLayout.makeFullPlatformString(descriptiveText:badgeString:metrics:style:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_24F92CDB8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v23 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v22 = sub_24F92B098();
    v19 = [v23 initWithString_];
    goto LABEL_6;
  }

  v44[0] = v13;
  v16 = *a5;
  v17 = *(a5 + 8);
  v18 = *(a5 + 9);
  v19 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  if (v18 != 1)
  {
    v24 = objc_allocWithZone(MEMORY[0x277CCA898]);

    v25 = sub_24F92B098();

    v26 = [v24 initWithString_];

    [v19 appendAttributedString_];
    if (v17)
    {
      return v19;
    }

    v27 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
    [v27 setHeadIndent_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221880, &unk_24F947748);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;
    v29 = *MEMORY[0x277D74118];
    *(inited + 32) = *MEMORY[0x277D74118];
    v30 = inited + 32;
    *(inited + 64) = sub_24F2D6958();
    *(inited + 40) = v27;
    v31 = v29;
    v32 = v27;
LABEL_10:
    v41 = v32;
    sub_24E608940(inited);
    swift_setDeallocating();
    sub_24E601704(v30, &qword_27F221890, &qword_24F93AD40);
    type metadata accessor for Key(0);
    sub_24EADDED4();
    v42 = sub_24F92AE28();

    [v19 addAttributes:v42 range:{0, objc_msgSend(v19, sel_length)}];

    return v19;
  }

  if (!(*&v16 | v17))
  {
    v44[10] = 10;
    v44[11] = 0xE100000000000000;
    MEMORY[0x253050C20](a1, a2);
    v33 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v34 = sub_24F92B098();

    v35 = [v33 initWithString_];

    [v19 appendAttributedString_];
    v36 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
    v37 = *(a4 + 144);
    __swift_project_boxed_opaque_existential_1((a4 + 120), v37);
    sub_24E8ED7D8(v37);
    v38 = sub_24F9223A8();
    (*(v12 + 8))(v15, v44[0]);
    [v36 setParagraphSpacing_];
    [v36 setLineBreakMode_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221880, &unk_24F947748);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;
    v39 = *MEMORY[0x277D74118];
    *(inited + 32) = *MEMORY[0x277D74118];
    v30 = inited + 32;
    *(inited + 64) = sub_24F2D6958();
    *(inited + 40) = v36;
    v40 = v39;
    v32 = v36;
    goto LABEL_10;
  }

  v20 = objc_allocWithZone(MEMORY[0x277CCA898]);

  v21 = sub_24F92B098();

  v22 = [v20 initWithString_];

  [v19 appendAttributedString_];
LABEL_6:

  return v19;
}

unint64_t sub_24F2D6958()
{
  result = qword_27F2254C8;
  if (!qword_27F2254C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F2254C8);
  }

  return result;
}

double PlatformSelectorViewLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  v4 = v3;
  v7 = sub_24F92CDB8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E94275C((v3 + 5), v22);
  if (!v23)
  {
    sub_24E601704(v22, &qword_27F229780, &unk_24F965BB0);
    goto LABEL_5;
  }

  __swift_project_boxed_opaque_existential_1(v22, v23);
  sub_24F922298();
  v12 = v11;
  __swift_destroy_boxed_opaque_existential_1(v22);
  if (v12 <= 0.0)
  {
LABEL_5:
    v13 = MEMORY[0x277D839F8];
    v23 = MEMORY[0x277D839F8];
    v24 = MEMORY[0x277D22A30];
    v22[0] = 0;
    goto LABEL_6;
  }

  sub_24E615E00((v3 + 32), v22);
  v13 = v23;
LABEL_6:
  __swift_project_boxed_opaque_existential_1(v22, v13);
  sub_24E8ED7D8(v13);
  sub_24F9223A8();
  v14 = *(v8 + 8);
  v19[2] = v8 + 8;
  v21 = v14;
  v14(v10, v7);
  v15 = v4[3];
  v19[1] = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v15);
  v20 = v7;
  v16 = [a1 traitCollection];
  sub_24F92BF98();

  sub_24F922478();
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v4 + 17, v4[20]);
  sub_24F9223C8();
  v17 = v4[45];
  __swift_project_boxed_opaque_existential_1(v4 + 42, v17);
  sub_24E8ED7D8(v17);
  sub_24F9223A8();
  v21(v10, v20);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return ceil(a2);
}

uint64_t BadgeDisplayStyle.numberOfLines(for:)(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  v5 = [a1 traitCollection];
  v6 = sub_24F92BF98();

  v7 = 2;
  if (v6)
  {
    v7 = 3;
  }

  if (v2 | v3)
  {
    v8 = v7;
  }

  else
  {
    v8 = v7 + 1;
  }

  if (v4 == 1)
  {
    return v8;
  }

  else
  {
    return v7;
  }
}

uint64_t PlatformSelectorViewLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v71 = a2;
  v13 = sub_24F92CDB8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E94275C(v6 + 40, v78);
  if (v79)
  {
    __swift_project_boxed_opaque_existential_1(v78, v79);
    sub_24F922298();
    v18 = v17;
    v66 = v19;
    __swift_destroy_boxed_opaque_existential_1(v78);
    if (v18 > 0.0)
    {
      sub_24E615E00(v6 + 256, v78);
      v20 = v79;
      goto LABEL_6;
    }
  }

  else
  {
    sub_24E601704(v78, &qword_27F229780, &unk_24F965BB0);
    v66 = 0;
    v18 = 0.0;
  }

  v20 = MEMORY[0x277D839F8];
  v79 = MEMORY[0x277D839F8];
  v80 = MEMORY[0x277D22A30];
  v78[0] = 0;
LABEL_6:
  __swift_project_boxed_opaque_existential_1(v78, v20);
  sub_24E8ED7D8(v20);
  v21 = sub_24F9223A8();
  v22 = *(v14 + 8);
  v67 = v16;
  v69 = v13;
  v68 = v14 + 8;
  v64 = v22;
  v22(v16, v13);
  v65 = v18;
  v73 = a5 - (v18 + v21);
  __swift_project_boxed_opaque_existential_1(v7, *(v7 + 24));
  v23 = [a1 traitCollection];
  sub_24F92BF98();

  sub_24F922478();
  __swift_project_boxed_opaque_existential_1(v7, *(v7 + 24));
  sub_24F922288();
  v25 = v24;
  v27 = v26;
  v72 = v28;
  v70 = v29;
  v81.origin.x = a3;
  v81.origin.y = a4;
  v81.size.width = a5;
  v81.size.height = a6;
  v30 = floor(CGRectGetMinX(v81));
  v82.origin.x = a3;
  v82.origin.y = a4;
  v82.size.width = a5;
  v82.size.height = a6;
  v31 = a3;
  v32 = a4;
  MinY = CGRectGetMinY(v82);
  __swift_project_boxed_opaque_existential_1((v7 + 136), *(v7 + 160));
  sub_24F9223C8();
  v35 = MinY + v34;
  v36 = v32;
  v37 = v31;
  v38 = floor(v35);
  v39 = v73;
  if (v25 < v73)
  {
    v39 = v25;
  }

  v40 = a5;
  v41 = ceil(v39);
  v42 = ceil(v27);
  v43 = a6;
  v44 = v36;
  __swift_project_boxed_opaque_existential_1(v7, *(v7 + 24));
  v73 = v30;
  v72 = v42;
  sub_24F92C1D8();
  sub_24F922228();
  sub_24E94275C(v7 + 40, &v74);
  if (v75)
  {
    sub_24E612C80(&v74, v76);
    v45 = *(v7 + 328);
    v70 = v38;
    v63 = v41;
    if (v45)
    {
      v83.origin.x = v37;
      v83.origin.y = v44;
      v83.size.width = v40;
      v83.size.height = v43;
      CGRectGetMaxX(v83);
      v46 = v37;
      v47 = v44;
      v48 = v40;
      v49 = v43;
      v50 = v69;
      v51 = v67;
      v52 = v64;
    }

    else
    {
      v53 = [a1 traitCollection];
      v54 = sub_24F92BF78();

      v50 = v69;
      v51 = v67;
      v52 = v64;
      if ((v54 & 1) != 0 && (v55 = [a1 traitCollection], v56 = sub_24F92BF98(), v55, (v56 & 1) == 0))
      {
        v85.origin.x = v73;
        v85.origin.y = v38;
        v85.size.width = v41;
        v85.size.height = v72;
        CGRectGetMaxX(v85);
        v57 = v79;
        __swift_project_boxed_opaque_existential_1(v78, v79);
        sub_24E8ED7D8(v57);
        v49 = v43;
        sub_24F9223A8();
        v52(v51, v50);
        v46 = v37;
        v47 = v44;
        v48 = v40;
      }

      else
      {
        v84.origin.x = v37;
        v84.origin.y = v44;
        v84.size.width = v40;
        v84.size.height = v43;
        CGRectGetMaxX(v84);
        v46 = v37;
        v47 = v44;
        v48 = v40;
        v49 = v43;
      }
    }

    v86.origin.x = v46;
    v86.origin.y = v47;
    v86.size.width = v48;
    v86.size.height = v49;
    CGRectGetMinY(v86);
    v58 = *(v7 + 160);
    __swift_project_boxed_opaque_existential_1((v7 + 136), v58);
    sub_24E8ED7D8(v58);
    sub_24F9223A8();
    v52(v51, v50);
    __swift_project_boxed_opaque_existential_1(v76, v77);
    sub_24F92C1D8();
    sub_24F922228();
    __swift_destroy_boxed_opaque_existential_1(v76);
    v38 = v70;
    v41 = v63;
  }

  else
  {
    sub_24E601704(&v74, &qword_27F229780, &unk_24F965BB0);
  }

  v59 = v73;
  v87.origin.x = v73;
  v87.origin.y = v38;
  v87.size.width = v41;
  v60 = v72;
  v87.size.height = v72;
  CGRectGetMinX(v87);
  v88.origin.x = v59;
  v88.origin.y = v38;
  v88.size.width = v41;
  v88.size.height = v60;
  CGRectGetMinY(v88);
  sub_24E94275C(v7 + 40, v76);
  if (v77)
  {
    __swift_project_boxed_opaque_existential_1(v76, v77);
    sub_24F922218();
    CGRectGetMaxX(v89);
    __swift_destroy_boxed_opaque_existential_1(v76);
  }

  else
  {
    sub_24E601704(v76, &qword_27F229780, &unk_24F965BB0);
    v90.origin.x = v59;
    v90.origin.y = v38;
    v90.size.width = v41;
    v90.size.height = v60;
    CGRectGetMaxX(v90);
  }

  v91.origin.x = v59;
  v91.origin.y = v38;
  v91.size.width = v41;
  v91.size.height = v60;
  CGRectGetHeight(v91);
  sub_24F922128();
  return __swift_destroy_boxed_opaque_existential_1(v78);
}

double sub_24F2D7570()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2297E0, &unk_24F99D420);
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E320, &unk_24F9E0738);
  v1 = swift_allocObject();
  *(v1 + 16) = KeyPath;
  *&result = 1;
  *(v1 + 24) = xmmword_24F941C80;
  off_27F23E300 = v1;
  return result;
}

uint64_t static BadgeDisplayStyle.numberOfBadgesAllowedInline.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F2110B8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = off_27F23E300;
}

void static BadgeDisplayStyle.style(forBadgeCount:pageTraits:indentForBadges:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (qword_27F2110B8 != -1)
  {
    swift_once();
  }

  v14 = a2;
  (*(*off_27F23E300 + 104))(&v15, &v14);
  if (v15 >= a1)
  {
    v12 = [a2 traitCollection];
    v13 = sub_24F92BF98();

    if (v13)
    {
      v10 = 0;
      a3 = 1;
      v11 = 1;
    }

    else
    {
      v11 = 0;
      v10 = a4 & 1;
    }
  }

  else
  {
    a3 = 0;
    v10 = 0;
    v11 = 1;
  }

  *a5 = a3;
  *(a5 + 8) = v10;
  *(a5 + 9) = v11;
}

BOOL static BadgeDisplayStyle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 9) == 1)
  {
    if (*&v2 | v3)
    {
      if (*(a2 + 9))
      {
        return (*&v4 | v5) != 0;
      }
    }

    else if (*(a2 + 9))
    {
      return (*&v4 | v5) == 0;
    }
  }

  else if ((*(a2 + 9) & 1) == 0)
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else if ((v5 & 1) == 0 && v2 == v4)
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_24F2D7814(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 9) == 1)
  {
    if (*&v2 | v3)
    {
      if (*(a2 + 9))
      {
        return (*&v4 | v5) != 0;
      }
    }

    else if (*(a2 + 9))
    {
      return (*&v4 | v5) == 0;
    }

    return 0;
  }

  if ((*(a2 + 9) & 1) == 0)
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else if ((v5 & 1) == 0 && v2 == v4)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_24F2D789C()
{
  result = qword_27F23E310;
  if (!qword_27F23E310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E310);
  }

  return result;
}

uint64_t sub_24F2D7908(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 280))
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

uint64_t sub_24F2D7950(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BadgeDisplayStyle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BadgeDisplayStyle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 10) = v3;
  return result;
}

uint64_t sub_24F2D7A48(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24F2D7A64(uint64_t result, int a2)
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

__n128 sub_24F2D7AA8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t PaginatedPagePresenter.isPreparingNextPage.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(v4, a1);
  v2 = v5;
  if (v5 == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    sub_24E94E128(v4);
  }

  return v2;
}

double PaginatedPagePresenter.nextPage.getter@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  (*(a1 + 24))(v5);
  if (v7)
  {
    sub_24E612B0C(v5, a2);
  }

  else
  {

    result = *v5;
    v4 = v5[1];
    *a2 = v5[0];
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_24F2D7BA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return PaginatedPagePresenter.isPreparingNextPage.getter(a1, WitnessTable);
}

BOOL sub_24F2D7BF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return PaginatedPagePresenter.shouldPrepareNextPage.getter(a1, WitnessTable);
}

BOOL PaginatedPagePresenter.shouldPrepareNextPage.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(&v5, a1);
  if (v8)
  {
    sub_24E94E128(&v5);
    return 0;
  }

  else
  {

    v4[0] = v5;
    v4[1] = v6;
    v2 = *(&v6 + 1) != 0;
    sub_24E857CC8(v4);
  }

  return v2;
}

void sub_24F2D7D00(uint64_t a1)
{
  swift_getWitnessTable();

  PaginatedPagePresenter.prepareNextPage()();
}

uint64_t sub_24F2D7D54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return PaginatedPagePresenter.isPreparingNextPage.getter(a1, WitnessTable);
}

BOOL sub_24F2D7DA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return PaginatedPagePresenter.shouldPrepareNextPage.getter(a1, WitnessTable);
}

void sub_24F2D7DFC(uint64_t a1)
{
  swift_getWitnessTable();

  PaginatedPagePresenter.prepareNextPage()();
}

uint64_t PageTabChangeAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v31 = a2;
  v26 = *v3;
  v30 = sub_24F9285B8();
  v34 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v32 = a1;
  sub_24F928398();
  v13 = sub_24F928348();
  v15 = v14;
  v16 = *(v7 + 8);
  v33 = v6;
  v16(v12, v6);
  if (v15)
  {
    v17 = (v29 + OBJC_IVAR____TtC12GameStoreKit19PageTabChangeAction_selectedTabId);
    *v17 = v13;
    v17[1] = v15;
    v18 = v32;
    (*(v7 + 16))(v9, v32, v33);
    v6 = v27;
    v20 = v30;
    v19 = v31;
    (*(v34 + 16))(v27, v31, v30);
    v21 = v28;
    v22 = Action.init(deserializing:using:)(v9, v6);
    if (!v21)
    {
      v6 = v22;
    }

    (*(v34 + 8))(v19, v20);
    v16(v18, v33);
  }

  else
  {
    v23 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    strcpy(v24, "selectedTabId");
    *(v24 + 7) = -4864;
    *(v24 + 2) = v26;
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D22530], v23);
    swift_willThrow();
    (*(v34 + 8))(v31, v30);
    v16(v32, v33);
    type metadata accessor for PageTabChangeAction(0);
    swift_deallocPartialClassInstance();
  }

  return v6;
}

uint64_t type metadata accessor for PageTabChangeAction(uint64_t a1)
{
  result = qword_27F23E330;
  if (!qword_27F23E330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PageTabChangeAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t PageTabChangeAction.selectedTabId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit19PageTabChangeAction_selectedTabId);

  return v1;
}

uint64_t PageTabChangeAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

id sub_24F2D85AC(void *a1, void *a2, char a3, uint64_t a4, __n128 a5)
{
  v10 = sub_24F91E968();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - v15;
  v17 = type metadata accessor for LegacyMediaAuthenticationProtocolHandler();
  v23.receiver = v5;
  v23.super_class = v17;
  result = objc_msgSendSuper2(&v23, sel_reconfigureNewRequest_originalTask_redirect_error_, a1, a2, a3 & 1, a4);
  if (a3)
  {
    result = [a2 originalRequest];
    if (result)
    {
      v19 = result;
      sub_24F91E908();

      (*(v11 + 32))(v16, v13, v10);
      sub_24F91E948();
      if (v20)
      {
        v21 = sub_24F92B098();

        v22 = sub_24F92B098();
        [a1 setValue:v21 forHTTPHeaderField:v22];
      }

      return (*(v11 + 8))(v16, v10);
    }
  }

  return result;
}

id sub_24F2D8874()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LegacyMediaAuthenticationProtocolHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24F2D88CC(void *a1, void *a2, char a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_24F91E968();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = MEMORY[0x28223BE20](v15).n128_u64[0];
  v18 = &v24 - v17;
  v24.receiver = v5;
  v24.super_class = ObjectType;
  result = objc_msgSendSuper2(&v24, sel_reconfigureNewRequest_originalTask_redirect_error_, a1, a2, a3 & 1, a4, v16);
  if (a3)
  {
    result = [a2 originalRequest];
    if (result)
    {
      v20 = result;
      sub_24F91E908();

      (*(v12 + 32))(v18, v14, v11);
      sub_24F91E948();
      if (v21)
      {
        v22 = sub_24F92B098();

        v23 = sub_24F92B098();
        [a1 setValue:v22 forHTTPHeaderField:v23];
      }

      return (*(v12 + 8))(v18, v11);
    }
  }

  return result;
}

double NestedModelImpressionsRecording.startRecordingNestedImpressions(for:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);

  v8(a2, a3, a4);
  v9 = (*(a4 + 56))(a1, a2, a3, a4);
  (*(a4 + 40))(v9);
  v10 = (*(a4 + 32))(a3, a4);
  if (v10)
  {
    v13 = v11;
    v14 = v10;
    v10();

    return sub_24E824448(v14, v13);
  }

  return result;
}

uint64_t NestedModelImpressionsRecording.stopRecordingNestedImpressions(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ImpressionsCalculator.removeAllElements()();
  (*(a3 + 16))(0, a2, a3);
  v5 = *(a3 + 40);

  return v5(0, 0, a2, a3);
}

BOOL sub_24F2D8E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = off_2861D2618;
  type metadata accessor for Restrictions();
  if (v6())
  {
    if (off_2861D2608() >= a3)
    {
      return 0;
    }

    v7 = ASKDeviceTypeGetCurrent();
    v8 = sub_24F92B0D8();
    v10 = v9;
    if (v8 == sub_24F92B0D8() && v10 == v11)
    {

      return 0;
    }

    v13 = sub_24F92CE08();

    if (v13)
    {
      return 0;
    }

    if (a2)
    {
      v15 = off_2861D2610();
      if (*(v15 + 16))
      {
        v16 = sub_24E76D644(a1, a2);
        if (v17)
        {
          v18 = *(*(v15 + 56) + 8 * v16);

          return v18 < a3;
        }
      }
    }
  }

  return 1;
}

uint64_t sub_24F2D8FF4()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F23E340);
  __swift_project_value_buffer(v4, qword_27F23E340);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t sub_24F2D9148(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = *(a2 + 24);
  v9 = *(a2 + 25);
  v10 = swift_task_alloc();
  *(v3 + 24) = v10;
  if (v9)
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  *v10 = v3;
  v10[1] = sub_24EA2DAEC;

  return sub_24F2D93E8(v5, v6, v7, v11 | v8, a3);
}

uint64_t sub_24F2D9238(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5)
{
  type metadata accessor for Restrictions();
  sub_24F928FD8();
  sub_24F92A758();
  if (off_2861D2618() & 1) != 0 && ((off_2861D2628() & 1) == 0 || (a4 & 0x100) != 0) && ((a4 & 1) != 0 || !sub_24F2D8E44(a1, a2, a3)) || (sub_24F92BF18(), (v10))
  {

    return 0;
  }

  else
  {
    sub_24F92BF18();

    if (v10)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t sub_24F2D93E8(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5)
{
  *(v5 + 72) = a4;
  *(v5 + 40) = a3;
  *(v5 + 48) = a5;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  return MEMORY[0x2822009F8](sub_24F2D9410, 0, 0);
}

uint64_t sub_24F2D9410()
{
  sub_24F2D96B0();
  sub_24F928FD8();
  sub_24F92A758();
  v0[7] = v0[2];
  if (qword_27F2110C0 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  v2 = __swift_project_value_buffer(v1, qword_27F23E340);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_24F2D9520;

  return sub_24EB6124C(v2);
}

uint64_t sub_24F2D9520(char a1)
{
  *(*v1 + 74) = a1;

  return MEMORY[0x2822009F8](sub_24F2D9620, 0, 0);
}

uint64_t sub_24F2D9620()
{
  if (*(v0 + 74))
  {
    v1 = 0;
  }

  else
  {
    v1 = sub_24F2D9238(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 72) & 0x101, *(v0 + 48));
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_24F2D96B0()
{
  result = qword_27F221568;
  if (!qword_27F221568)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F221568);
  }

  return result;
}

uint64_t AdamId.stringValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static AdamId.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24F92CE08();
  }
}

void AdamId.numberValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = HIBYTE(v2) & 0xF;
  v4 = v1 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v5 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    if ((v2 & 0x1000000000000000) == 0)
    {
      if ((v2 & 0x2000000000000000) != 0)
      {
        v28[0] = v1;
        v28[1] = v2 & 0xFFFFFFFFFFFFFFLL;
        if (v1 == 43)
        {
          if (v3)
          {
            if (--v3)
            {
              v8 = 0;
              v18 = v28 + 1;
              while (1)
              {
                v19 = *v18 - 48;
                if (v19 > 9)
                {
                  break;
                }

                v20 = 10 * v8;
                if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                {
                  break;
                }

                v8 = v20 + v19;
                if (__OFADD__(v20, v19))
                {
                  break;
                }

                ++v18;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_61;
          }

LABEL_70:
          __break(1u);
          return;
        }

        if (v1 != 45)
        {
          if (v3)
          {
            v8 = 0;
            v23 = v28;
            while (1)
            {
              v24 = *v23 - 48;
              if (v24 > 9)
              {
                break;
              }

              v25 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                break;
              }

              v8 = v25 + v24;
              if (__OFADD__(v25, v24))
              {
                break;
              }

              ++v23;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

        if (v3)
        {
          if (--v3)
          {
            v8 = 0;
            v12 = v28 + 1;
            while (1)
            {
              v13 = *v12 - 48;
              if (v13 > 9)
              {
                break;
              }

              v14 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                break;
              }

              v8 = v14 - v13;
              if (__OFSUB__(v14, v13))
              {
                break;
              }

              ++v12;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }
      }

      else
      {
        if ((v1 & 0x1000000000000000) != 0)
        {
          v6 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v6 = sub_24F92C928();
        }

        v7 = *v6;
        if (v7 == 43)
        {
          if (v4 >= 1)
          {
            v3 = v4 - 1;
            if (v4 != 1)
            {
              v8 = 0;
              if (v6)
              {
                v15 = v6 + 1;
                while (1)
                {
                  v16 = *v15 - 48;
                  if (v16 > 9)
                  {
                    goto LABEL_61;
                  }

                  v17 = 10 * v8;
                  if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                  {
                    goto LABEL_61;
                  }

                  v8 = v17 + v16;
                  if (__OFADD__(v17, v16))
                  {
                    goto LABEL_61;
                  }

                  ++v15;
                  if (!--v3)
                  {
                    goto LABEL_62;
                  }
                }
              }

              goto LABEL_53;
            }

            goto LABEL_61;
          }

          goto LABEL_69;
        }

        if (v7 != 45)
        {
          if (v4)
          {
            v8 = 0;
            if (v6)
            {
              while (1)
              {
                v21 = *v6 - 48;
                if (v21 > 9)
                {
                  goto LABEL_61;
                }

                v22 = 10 * v8;
                if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                {
                  goto LABEL_61;
                }

                v8 = v22 + v21;
                if (__OFADD__(v22, v21))
                {
                  goto LABEL_61;
                }

                ++v6;
                if (!--v4)
                {
                  goto LABEL_53;
                }
              }
            }

            goto LABEL_53;
          }

LABEL_61:
          v8 = 0;
          LOBYTE(v3) = 1;
LABEL_62:
          v29 = v3;
          if (v3)
          {
            return;
          }

LABEL_65:
          [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
          return;
        }

        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v8 = 0;
            if (v6)
            {
              v9 = v6 + 1;
              while (1)
              {
                v10 = *v9 - 48;
                if (v10 > 9)
                {
                  goto LABEL_61;
                }

                v11 = 10 * v8;
                if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                {
                  goto LABEL_61;
                }

                v8 = v11 - v10;
                if (__OFSUB__(v11, v10))
                {
                  goto LABEL_61;
                }

                ++v9;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

LABEL_53:
            LOBYTE(v3) = 0;
            goto LABEL_62;
          }

          goto LABEL_61;
        }

        __break(1u);
      }

      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v8 = sub_24F2D9F3C(v1, v2, 10);
    v27 = v26;

    if ((v27 & 1) == 0)
    {
      goto LABEL_65;
    }
  }
}

GameStoreKit::AdamId __swiftcall AdamId.init(value:)(Swift::Int64 value)
{
  v2 = v1;
  v3 = sub_24F92CD88();
  *v2 = v3;
  v2[1] = v4;
  result.underlyingAdamID._object = v4;
  result.underlyingAdamID._countAndFlagsBits = v3;
  return result;
}

GameStoreKit::AdamId __swiftcall AdamId.init(value:)(NSNumber value)
{
  v3 = v1;
  v4 = [(objc_class *)value.super.super.isa stringValue];
  v5 = sub_24F92B0D8();
  v7 = v6;

  *v3 = v5;
  v3[1] = v7;
  result.underlyingAdamID._object = v9;
  result.underlyingAdamID._countAndFlagsBits = v8;
  return result;
}

uint64_t sub_24F2D9B30()
{
  result = sub_24F92CD88();
  qword_27F23E358 = result;
  qword_27F23E360 = v1;
  return result;
}

double static AdamId.invalidAdamId.getter@<D0>(void *a1@<X8>)
{
  if (qword_27F2110C8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_27F23E360;
  *a1 = qword_27F23E358;
  a1[1] = v2;

  return result;
}

uint64_t AdamId.PreferenceKey.lookupName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

double AdamId.PreferenceKey.encode(_:)@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  a2[3] = MEMORY[0x277D837D0];
  *a2 = v2;
  a2[1] = v3;

  return result;
}

void AdamId.PreferenceKey.decode(_:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_24E643A9C(a1, v7);
  if (swift_dynamicCast())
  {
    v3 = v5;
    v4 = v6;
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  *a2 = v3;
  a2[1] = v4;
}

double sub_24F2D9CD8@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  a2[3] = MEMORY[0x277D837D0];
  *a2 = v2;
  a2[1] = v3;

  return result;
}

void sub_24F2D9CF0(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_24E643A9C(a1, v7);
  if (swift_dynamicCast())
  {
    v3 = v5;
    v4 = v6;
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  *a2 = v3;
  a2[1] = v4;
}

uint64_t AdamId.hashValue.getter()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t AdamId.description.getter()
{
  MEMORY[0x253050C20](*v0, v0[1]);
  MEMORY[0x253050C20](93, 0xE100000000000000);
  return 0x5B2064496D616441;
}

uint64_t sub_24F2D9E0C()
{
  MEMORY[0x253050C20](*v0, v0[1]);
  MEMORY[0x253050C20](93, 0xE100000000000000);
  return 0x5B2064496D616441;
}

unint64_t sub_24F2D9E6C()
{
  result = qword_27F23E368;
  if (!qword_27F23E368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E368);
  }

  return result;
}

unint64_t sub_24F2D9EC4()
{
  result = qword_27F23E370;
  if (!qword_27F23E370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E370);
  }

  return result;
}

unsigned __int8 *sub_24F2D9F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_24F92B3C8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_24F914BE4(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_24F92C928();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_24F2DA4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_24F92B3C8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_24F914BE4(result, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_24F92C928();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if (v29 != v29)
              {
                goto LABEL_126;
              }

              v30 = v27 + v28;
              v21 = __OFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_127;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if (v37 != v37)
            {
              goto LABEL_126;
            }

            v38 = v35 + v36;
            v21 = __OFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if (v19 != v19)
            {
              goto LABEL_126;
            }

            v20 = v16 + v17;
            v21 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v21)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_127;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if (v67 != v67)
          {
            goto LABEL_126;
          }

          v68 = v65 + v66;
          v21 = __OFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_126;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_127;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if (v50 != v50)
          {
            goto LABEL_126;
          }

          v51 = v48 + v49;
          v21 = __OFSUB__(v50, v51);
          v43 = v50 - v51;
          if (v21)
          {
            goto LABEL_126;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_127;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if (v59 != v59)
        {
          goto LABEL_126;
        }

        v60 = v57 + v58;
        v21 = __OFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_126;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_125:
      v15 = 0;
      v18 = v43;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_24F2DAA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24F9249B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F924E78();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, *MEMORY[0x277CE00F0], v5, v11);
  sub_24F924E68();
  sub_24F924E48();
  sub_24F924E58();
  MEMORY[0x25304C420](v13, a2, v9, a3);
  return (*(v10 + 8))(v13, v9);
}

id sub_24F2DAC20()
{
  result = [objc_allocWithZone(type metadata accessor for AutoPlayVideoSettingsManager()) init];
  qword_27F23E380 = result;
  return result;
}

id static AutoPlayVideoSettingsManager.shared.getter()
{
  if (qword_27F2110D0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F23E380;

  return v1;
}

void sub_24F2DACAC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_defaultAutoPlayVideoSetting);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  sub_24F2DBA44();
}

uint64_t sub_24F2DAD24()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_defaultAutoPlayVideoSetting);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void sub_24F2DAD7C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_defaultAutoPlayVideoSetting);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  sub_24F2DBA44();
}

void (*sub_24F2DADE0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24F2DAE44;
}

void sub_24F2DAE44(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_24F2DBA44();
  }
}

uint64_t sub_24F2DAE78()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_autoPlayUserSetting);
  if (!v1 || (*(v0 + OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_networkIsConstrained) & 1) != 0)
  {
    goto LABEL_11;
  }

  v2 = v1;
  if (ASKPerformanceProfileGetForCurrentDevice(v2, v3) != 2)
  {

    goto LABEL_11;
  }

  v4 = sub_24F92B0D8();
  v6 = v5;
  if (v4 == sub_24F92B0D8() && v6 == v7)
  {

    v10 = 1;
    return v10 & 1;
  }

  v9 = sub_24F92CE08();

  if ((v9 & 1) == 0)
  {
    v12 = sub_24F92B0D8();
    v14 = v13;
    if (v12 == sub_24F92B0D8() && v14 == v15)
    {

      goto LABEL_21;
    }

    v17 = sub_24F92CE08();

    if (v17)
    {

LABEL_21:
      v10 = *(v0 + OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_networkMayUseCellular) ^ 1;
      return v10 & 1;
    }

    v18 = sub_24F92B0D8();
    v20 = v19;
    if (v18 != sub_24F92B0D8() || v20 != v21)
    {
      sub_24F92CE08();
    }

LABEL_11:
    v10 = 0;
    return v10 & 1;
  }

  v10 = 1;
  return v10 & 1;
}

void sub_24F2DB060(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_autoPlayUserSetting);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_autoPlayUserSetting) = a1;
  if (!a1)
  {
    if (!v2)
    {
      return;
    }

    goto LABEL_11;
  }

  if (!v2)
  {
LABEL_11:
    *(v1 + OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_settingsChangeNotificationNeeded) = 1;
    return;
  }

  v9 = v2;
  v3 = sub_24F92B0D8();
  v5 = v4;
  if (v3 != sub_24F92B0D8() || v5 != v6)
  {
    v8 = sub_24F92CE08();

    if (v8)
    {
      return;
    }

    goto LABEL_11;
  }
}

_BYTE *sub_24F2DB158()
{
  v1 = &v0[OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_defaultAutoPlayVideoSetting];
  *v1 = 0;
  v1[1] = 0;
  result = *MEMORY[0x277D6A738];
  if (!*MEMORY[0x277D6A738])
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = &v0[OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_motionAutoPlayVideoSetLastAutoPlayVideoValueKey];
  *v3 = sub_24F92B0D8();
  v3[1] = v4;
  result = *MEMORY[0x277D6A720];
  if (!*MEMORY[0x277D6A720])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = &v0[OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_lastMotionAutoPlayVideoValueKey];
  *v5 = sub_24F92B0D8();
  v5[1] = v6;
  result = *MEMORY[0x277D6A730];
  if (!*MEMORY[0x277D6A730])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = &v0[OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_lowPowerModeSetLastAutoPlayVideoValueKey];
  *v7 = sub_24F92B0D8();
  v7[1] = v8;
  result = *MEMORY[0x277D6A718];
  if (!*MEMORY[0x277D6A718])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = &v0[OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_lastLowPowerModeValueKey];
  *v9 = sub_24F92B0D8();
  v9[1] = v10;
  result = *MEMORY[0x277D6A710];
  if (!*MEMORY[0x277D6A710])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = &v0[OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_autoPlayVideoSettingKey];
  *v11 = sub_24F92B0D8();
  v11[1] = v12;
  result = *MEMORY[0x277D6A740];
  if (!*MEMORY[0x277D6A740])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = &v0[OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_userSetAutoPlayVideoSettingKey];
  *v13 = sub_24F92B0D8();
  v13[1] = v14;
  result = *MEMORY[0x277D6A728];
  if (!*MEMORY[0x277D6A728])
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v15 = &v0[OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_lastUserSetAutoPlayVideoValueKey];
  *v15 = sub_24F92B0D8();
  v15[1] = v16;
  *&v0[OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_autoPlayUserSetting] = 0;
  v0[OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_networkIsConstrained] = 0;
  v17 = &v0[OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_networkInquiry];
  v18 = _s12GameStoreKit20NWPathNetworkInquiryCACycfC_0();
  v17[3] = type metadata accessor for NWPathNetworkInquiry(0);
  v17[4] = &protocol witness table for NWPathNetworkInquiry;
  *v17 = v18;
  v19 = &v0[OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_networkObservation];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 4) = 0;
  v0[OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_settingsChangeNotificationNeeded] = 0;
  v0[OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_networkMayUseCellular] = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_fullScreenAudioSettingsTimeoutMinutes] = 0x4020000000000000;
  v46.receiver = v0;
  v46.super_class = type metadata accessor for AutoPlayVideoSettingsManager();
  v20 = objc_msgSendSuper2(&v46, sel_init);
  v21 = OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_networkInquiry;
  sub_24E615E00(v20 + OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_networkInquiry, v40);
  v22 = v41;
  v23 = v42;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v24 = sub_24E74EC40();
  v25 = v20;
  v26 = sub_24F92BEF8();
  v39[3] = v24;
  v39[4] = MEMORY[0x277D225C0];
  v39[0] = v26;
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = *(v23 + 40);

  v28(v43, v39, sub_24F2DD1D0, v27, v22, v23);

  __swift_destroy_boxed_opaque_existential_1(v39);
  v29 = OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_networkObservation;
  swift_beginAccess();
  sub_24EA043F8(v43, &v25[v29]);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v40);
  sub_24E615E00(v20 + v21, v43);
  v30 = v44;
  v31 = v45;
  __swift_project_boxed_opaque_existential_1(v43, v44);
  (*(v31 + 16))(v40, v30, v31);
  LOBYTE(v29) = LOBYTE(v40[0]) == 3;
  __swift_destroy_boxed_opaque_existential_1(v43);
  v25[OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_networkMayUseCellular] = v29;
  sub_24E615E00(v20 + v21, v43);
  v32 = v44;
  v33 = v45;
  __swift_project_boxed_opaque_existential_1(v43, v44);
  v25[OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_networkIsConstrained] = (*(v33 + 32))(v32, v33) & 1;
  __swift_destroy_boxed_opaque_existential_1(v43);
  v34 = &v25[OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_defaultAutoPlayVideoSetting];
  swift_beginAccess();
  if (*(v34 + 1))
  {
    sub_24F2DBA44();
  }

  v35 = objc_opt_self();
  v36 = [v35 defaultCenter];
  [v36 addObserver:v25 selector:sel_updateAutoPlayVideoSettings name:*MEMORY[0x277D76648] object:0];

  v37 = [v35 defaultCenter];
  [v37 addObserver:v25 selector:sel_restoreFullScreenAudioSettings name:*MEMORY[0x277D76758] object:0];

  v38 = [v35 defaultCenter];
  [v38 addObserver:v25 selector:sel_saveFullScreenAudioSettings name:*MEMORY[0x277D76660] object:0];

  return v25;
}

void sub_24F2DB628(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = a1[3];
    v6 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v5);
    (*(v6 + 16))(v17, v5, v6);
    v7 = LOBYTE(v17[0]) == 3;
    v8 = v4[OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_networkMayUseCellular];
    v4[OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_networkMayUseCellular] = v7;
    if (v7 != v8)
    {
      v4[OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_settingsChangeNotificationNeeded] = 1;
    }
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = a1[3];
    v12 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v11);
    v13 = (*(v12 + 32))(v11, v12);
    v14 = v10[OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_networkIsConstrained];
    v10[OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_networkIsConstrained] = v13 & 1;
    if ((v13 & 1) != v14)
    {
      v10[OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_settingsChangeNotificationNeeded] = 1;
    }
  }

  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    sub_24F2DC650();
  }
}

id AutoPlayVideoSettingsManager.__deallocating_deinit()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_networkObservation;
  swift_beginAccess();
  if (*(v2 + 24))
  {
    sub_24E615E00(v2, v7);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v4 + 8))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  v5 = type metadata accessor for AutoPlayVideoSettingsManager();
  v10.receiver = v1;
  v10.super_class = v5;
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

void sub_24F2DBA44()
{
  IsVideoAutoplayEnabled = UIAccessibilityIsVideoAutoplayEnabled();
  v2 = [objc_opt_self() processInfo];
  v49 = [v2 isLowPowerModeEnabled];

  v3 = objc_opt_self();
  v4 = [v3 standardUserDefaults];
  v5 = sub_24F92B098();
  v6 = [v4 valueForKey_];

  if (v6)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v50 = 0u;
    v51 = 0u;
  }

  sub_24E601704(&v50, &qword_27F2129B0, &unk_24F945320);
  v7 = [v3 standardUserDefaults];
  v8 = sub_24F92B098();
  v9 = [v7 BOOLForKey_];

  v48 = IsVideoAutoplayEnabled;
  if (IsVideoAutoplayEnabled == v9)
  {
    v10 = (v6 == 0) & (IsVideoAutoplayEnabled ^ 1);
  }

  else
  {
    v10 = 1;
  }

  v11 = [v3 standardUserDefaults];
  v12 = sub_24F92B098();
  v13 = [v11 valueForKey_];

  if (v13)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v50 = 0u;
    v51 = 0u;
  }

  sub_24E601704(&v50, &qword_27F2129B0, &unk_24F945320);
  v14 = [v3 standardUserDefaults];
  v15 = sub_24F92B098();
  v16 = [v14 BOOLForKey_];

  if (v49 == v16)
  {
    if (v13)
    {
      if ((v10 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else if ((v10 & 1) == 0)
    {
      if ((v49 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }
  }

  if (v49)
  {
LABEL_16:
    v17 = [v3 standardUserDefaults];
    v18 = *MEMORY[0x277D69DF8];
    v19 = sub_24F92B098();
    [v17 setObject:v18 forKey:v19];

    v20 = [v3 standardUserDefaults];
    v21 = sub_24F92B098();
    [v20 setBool:1 forKey:v21];

    v22 = [v3 standardUserDefaults];
    v23 = sub_24F92B098();
    goto LABEL_18;
  }

  v22 = [v3 standardUserDefaults];
  v23 = sub_24F92B098();
LABEL_18:
  [v22 setBool:0 forKey:v23];

  v24 = [v3 standardUserDefaults];
  if ((v48 & 1) == 0)
  {
    v39 = *MEMORY[0x277D69DF8];
    v40 = sub_24F92B098();
    [v24 setObject:v39 forKey:v40];

    v41 = [v3 standardUserDefaults];
    v42 = sub_24F92B098();
    [v41 setBool:1 forKey:v42];

    v37 = [v3 standardUserDefaults];
    goto LABEL_23;
  }

  v25 = sub_24F92B098();
  [v24 setBool:0 forKey:v25];

  if ((v49 & 1) == 0)
  {
    v26 = [v3 standardUserDefaults];
    v27 = sub_24F92B098();
    [v26 setBool:0 forKey:v27];

    v28 = [v3 standardUserDefaults];
    v29 = sub_24F92B098();
    [v28 setBool:0 forKey:v29];

    v30 = [v3 standardUserDefaults];
    v47 = *(v0 + OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_userSetAutoPlayVideoSettingKey);
    v31 = sub_24F92B098();
    [v30 setBool:0 forKey:v31];

    v32 = [v3 standardUserDefaults];
    v33 = sub_24F92B098();
    v34 = [v32 stringForKey_];

    v35 = [v3 standardUserDefaults];
    v36 = sub_24F92B098();
    if (v34)
    {
      [v35 setObject:v34 forKey:v36];

      v37 = [v3 standardUserDefaults];
      v38 = sub_24F92B098();
      [v37 setBool:1 forKey:{v38, v47}];
LABEL_24:

      goto LABEL_25;
    }

    [v35 setURL:0 forKey:v36];

    v37 = [v3 standardUserDefaults];
LABEL_23:
    v38 = sub_24F92B098();
    [v37 setBool:0 forKey:{v38, v47}];
    goto LABEL_24;
  }

LABEL_25:
  v43 = [v3 standardUserDefaults];
  v44 = sub_24F92B098();
  [v43 setBool:v48 forKey:v44];

  v45 = [v3 standardUserDefaults];
  v46 = sub_24F92B098();
  [v45 setBool:v49 forKey:v46];

LABEL_26:
  sub_24F2DC234(v0);
}

void sub_24F2DC234(uint64_t a1)
{
  sub_24F2DC348();
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 stringForKey_];

  if (v4)
  {
    sub_24F2DB060(v4);
  }

  else
  {
    v5 = *(a1 + OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_autoPlayUserSetting);
    *(a1 + OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_autoPlayUserSetting) = 0;
    if (v5)
    {

      *(a1 + OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_settingsChangeNotificationNeeded) = 1;
    }
  }

  sub_24F2DC650();
}

void sub_24F2DC348()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = sub_24F92B098();
  v3 = [v1 BOOLForKey_];

  v4 = [v0 standardUserDefaults];
  v5 = sub_24F92B098();
  v6 = [v4 BOOLForKey_];

  v7 = [v0 standardUserDefaults];
  v8 = sub_24F92B098();
  v9 = [v7 BOOLForKey_];

  if ((v3 & 1) == 0 && (v6 & 1) == 0 && (v9 & 1) == 0)
  {
    v10 = [v0 standardUserDefaults];
    v11 = sub_24F2DC52C();
    if (v11)
    {
      v12 = v11;
      v13 = sub_24F92B0D8();
      v15 = v14;

      v18[0] = v13;
      v18[1] = v15;
      v16 = sub_24F92CDE8();
      sub_24EB715C4(v18);
    }

    else
    {
      v16 = 0;
    }

    v17 = sub_24F92B098();
    [v10 setObject:v16 forKey:v17];

    swift_unknownObjectRelease();
  }
}

id sub_24F2DC52C()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_defaultAutoPlayVideoSetting);
  swift_beginAccess();
  v2 = v1[1];
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = *v1;
  v4 = v3 == 0x796C6E4F69666977 && v2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {
    v5 = MEMORY[0x277D69E08];
    goto LABEL_14;
  }

  v6 = v3 == 28271 && v2 == 0xE200000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {
LABEL_13:
    v5 = MEMORY[0x277D69E00];
    goto LABEL_14;
  }

  v10 = v3 == 6710895 && v2 == 0xE300000000000000;
  if (!v10 && (sub_24F92CE08() & 1) == 0)
  {
    return 0;
  }

  v5 = MEMORY[0x277D69DF8];
LABEL_14:
  v7 = *v5;
  v8 = *v5;
  return v7;
}

void sub_24F2DC650()
{
  v1 = sub_24F927D88();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F927DC8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_settingsChangeNotificationNeeded] == 1)
  {
    v0[OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_settingsChangeNotificationNeeded] = 0;
    sub_24E74EC40();
    v9 = v0;
    v10 = sub_24F92BEF8();
    v11 = sub_24F2DAE78();
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    *(v12 + 24) = v11 & 1;
    aBlock[4] = sub_24F2DCD04;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EAF8248;
    aBlock[3] = &block_descriptor_139;
    v13 = _Block_copy(aBlock);
    v14 = v9;

    sub_24F927DA8();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24F2DD150(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
    sub_24E8582A8();
    sub_24F92C6A8();
    MEMORY[0x2530518B0](0, v8, v4, v13);
    _Block_release(v13);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
  }
}

void sub_24F2DC930(uint64_t a1, char a2)
{
  v4 = [objc_opt_self() defaultCenter];
  v5 = sub_24F92B098();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222878, &unk_24F96B040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  sub_24F92C7F8();
  *(inited + 96) = &type metadata for AutoPlayVideoSettings;
  *(inited + 72) = a2;
  sub_24E608210(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, qword_27F23E470, &qword_24F93ADD0);
  v7 = sub_24F92AE28();

  [v4 postNotificationName:v5 object:a1 userInfo:v7];
}

double sub_24F2DCB10@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_defaultAutoPlayVideoSetting);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;

  return result;
}

uint64_t sub_24F2DCCCC()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_139(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F2DD150(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F2DD198()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24F2DD1E4(char *a1)
{
  v2 = sub_24F928AE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_24F928418();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = *a1;
  if (qword_27F2105C8 != -1)
  {
    swift_once();
  }

  v8 = sub_24F92AAE8();
  __swift_project_value_buffer(v8, qword_27F22D7E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  v11 = &type metadata for PreorderStatus;
  v10[0] = v7;
  sub_24F9283D8();
  sub_24E857CC8(v10);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A588();

  (*(v3 + 104))(v5, *MEMORY[0x277D21CA8], v2);
  sub_24F92A9C8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24F2DD498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_24F928418();
  MEMORY[0x28223BE20](v7 - 8);
  if (qword_27F2105C8 != -1)
  {
    swift_once();
  }

  v8 = sub_24F92AAE8();
  __swift_project_value_buffer(v8, qword_27F22D7E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  swift_getErrorValue();
  v14[3] = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F9283D8();
  sub_24E857CC8(v14);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A5A8();

  v10.underlyingAdamID._object = swift_getObjectType();
  v14[0] = a4;
  v14[1] = a5;
  v10.underlyingAdamID._countAndFlagsBits = v14;
  AppStateController.clearWaiting(for:)(v10);
  return sub_24F92A9A8();
}

uint64_t sub_24F2DD708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  v4 = sub_24F92A9E8();
  v6 = *(a1 + OBJC_IVAR____TtC12GameStoreKit20CancelPreorderAction_preorderAdamId);
  v5 = *(a1 + OBJC_IVAR____TtC12GameStoreKit20CancelPreorderAction_preorderAdamId + 8);
  v7 = *(a1 + OBJC_IVAR____TtC12GameStoreKit20CancelPreorderAction_isArcade);
  type metadata accessor for Commerce();

  sub_24F92A758();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0, &unk_24F980F50);
  sub_24F92A758();
  v12 = *v13;
  v13[0] = v6;
  v13[1] = v5;
  sub_24F13AEE0(v13, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = v12;
  *(v8 + 32) = v6;
  *(v8 + 40) = v5;
  *(v8 + 48) = v4;
  v9 = sub_24E74EC40();
  swift_retain_n();
  swift_unknownObjectRetain();
  v10 = sub_24F92BEF8();
  v14 = v9;
  v15 = MEMORY[0x277D225C0];
  v13[0] = v10;
  sub_24F92A958();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v13);
  return v4;
}

unint64_t sub_24F2DD8E4()
{
  result = qword_27F216240;
  if (!qword_27F216240)
  {
    type metadata accessor for CancelPreorderAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216240);
  }

  return result;
}

uint64_t sub_24F2DD95C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

GameStoreKit::EditorialPageKey_optional __swiftcall EditorialPageKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EditorialPageKey.rawValue.getter()
{
  v1 = 0x736275732D6E6F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x6269726373627573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_24F2DDA88(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x736275732D6E6F6ELL;
  v4 = 0xEE00726562697263;
  if (v2 != 1)
  {
    v3 = 0x6269726373627573;
    v4 = 0xEA00000000007265;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x736275732D6E6F6ELL;
  v8 = 0xEE00726562697263;
  if (*a2 != 1)
  {
    v7 = 0x6269726373627573;
    v8 = 0xEA00000000007265;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

void sub_24F2DDBB8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEE00726562697263;
  v5 = 0x736275732D6E6F6ELL;
  if (v2 != 1)
  {
    v5 = 0x6269726373627573;
    v4 = 0xEA00000000007265;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_24F2DDC2C()
{
  result = qword_27F23E4F8;
  if (!qword_27F23E4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23E500, &qword_24F9E0B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E4F8);
  }

  return result;
}

unint64_t sub_24F2DDCA4()
{
  result = qword_27F23E508;
  if (!qword_27F23E508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E508);
  }

  return result;
}

uint64_t sub_24F2DDCF8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F2DDDAC(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F2DDE4C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

unint64_t sub_24F2DDFBC()
{
  result = qword_27F23E510;
  if (!qword_27F23E510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E510);
  }

  return result;
}

uint64_t Quote.text.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Quote.credit.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Quote.__allocating_init(id:text:credit:artwork:isFullWidthArtwork:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v32 = a2;
  v33 = a3;
  v14 = sub_24F91F6B8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  sub_24E60169C(a1, &v36, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v37 + 1))
  {
    v19 = v37;
    *(v18 + 64) = v36;
    *(v18 + 80) = v19;
    *(v18 + 96) = v38;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v30 = a8;
    v31 = a4;
    v21 = a5;
    v22 = a7;
    v23 = v20;
    v24 = a6;
    v26 = v25;
    (*(v15 + 8))(v17, v14);
    v34 = v23;
    v35 = v26;
    a7 = v22;
    a5 = v21;
    a6 = v24;
    a8 = v30;
    a4 = v31;
    sub_24F92C7F8();
    sub_24E601704(&v36, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E65E0D4(a8, v18 + OBJC_IVAR____TtC12GameStoreKit5Quote_impressionMetrics);
  v27 = v33;
  *(v18 + 16) = v32;
  *(v18 + 24) = v27;
  *(v18 + 32) = a4;
  *(v18 + 40) = a5;
  *(v18 + 48) = a6;
  *(v18 + 56) = a7 & 1;
  return v18;
}

uint64_t Quote.init(id:text:credit:artwork:isFullWidthArtwork:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v9 = v8;
  v33 = a2;
  v34 = a3;
  v16 = sub_24F91F6B8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, &v37, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v38 + 1))
  {
    v40 = v37;
    v41 = v38;
    v42 = v39;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v31 = a8;
    v32 = a4;
    v21 = a5;
    v22 = a7;
    v23 = v20;
    v24 = a6;
    v26 = v25;
    (*(v17 + 8))(v19, v16);
    v35 = v23;
    v36 = v26;
    a7 = v22;
    a5 = v21;
    a6 = v24;
    a8 = v31;
    a4 = v32;
    sub_24F92C7F8();
    sub_24E601704(&v37, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v27 = v41;
  *(v9 + 64) = v40;
  *(v9 + 80) = v27;
  *(v9 + 96) = v42;
  sub_24E65E0D4(a8, v9 + OBJC_IVAR____TtC12GameStoreKit5Quote_impressionMetrics);
  v28 = v34;
  *(v9 + 16) = v33;
  *(v9 + 24) = v28;
  *(v9 + 32) = a4;
  *(v9 + 40) = a5;
  *(v9 + 48) = a6;
  *(v9 + 56) = a7 & 1;
  return v9;
}

uint64_t Quote.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Quote.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *Quote.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v82 = a2;
  v71 = *v3;
  v5 = sub_24F9285B8();
  v83 = *(v5 - 8);
  v84 = v5;
  MEMORY[0x28223BE20](v5);
  v80 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v79 = &v70 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v9 - 8);
  v74 = &v70 - v10;
  v11 = sub_24F91F6B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F928388();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v72 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v73 = &v70 - v19;
  MEMORY[0x28223BE20](v20);
  v76 = &v70 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v70 - v23;
  v90 = a1;
  sub_24F928398();
  v25 = sub_24F928348();
  v81 = v15;
  if (v26)
  {
    v85 = v25;
    v86 = v26;
  }

  else
  {
    sub_24F91F6A8();
    v27 = sub_24F91F668();
    v28 = v12;
    v30 = v29;
    (*(v28 + 8))(v14, v11);
    v85 = v27;
    v86 = v30;
  }

  sub_24F92C7F8();
  v31 = *(v16 + 8);
  v77 = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v78 = v31;
  v31(v24, v15);
  v32 = v88;
  *(v3 + 4) = v87;
  *(v3 + 5) = v32;
  v3[12] = v89;
  sub_24F929608();
  sub_24F928398();
  v33 = v3;
  v34 = v82;
  v35 = *(v83 + 16);
  v36 = v84;
  v35(v79, v82, v84);
  v37 = v74;
  sub_24F929548();
  v38 = OBJC_IVAR____TtC12GameStoreKit5Quote_impressionMetrics;
  v75 = v33;
  sub_24E65E0D4(v37, v33 + OBJC_IVAR____TtC12GameStoreKit5Quote_impressionMetrics);
  v39 = v80;
  v40 = v34;
  v41 = v35;
  v35(v80, v40, v36);
  v42 = v73;
  sub_24F928398();
  v43 = sub_24F928348();
  v45 = v44;
  v46 = v42;
  v47 = v78;
  v78(v46, v81);
  if (v45)
  {
    v48 = v43;
    v74 = v45;
    type metadata accessor for Artwork(0);
    v49 = v76;
    sub_24F928398();
    v41(v79, v39, v84);
    sub_24F2DEE2C(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    sub_24F929548();
    if (v87)
    {
      v50 = sub_24E9F738C();
    }

    else
    {
      v50 = 0;
    }

    v57 = v83;
    v58 = v74;
    v59 = v75;
    v75[2] = v48;
    v59[3] = v58;
    v60 = v90;
    sub_24F928398();
    v61 = sub_24F928348();
    v63 = v62;
    v64 = v49;
    v65 = v81;
    v66 = v78;
    v78(v64, v81);
    v59[4] = v61;
    v59[5] = v63;
    v59[6] = v50;

    v67 = v72;
    sub_24F928398();
    LODWORD(v83) = sub_24F928278();

    v68 = *(v57 + 8);
    v69 = v84;
    v68(v82, v84);
    v66(v60, v65);
    v66(v67, v65);
    v68(v80, v69);
    result = v59;
    *(v59 + 56) = v83 & 1;
  }

  else
  {
    v51 = sub_24F92AC38();
    sub_24F2DEE2C(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v52 = 1954047348;
    v52[1] = 0xE400000000000000;
    v52[2] = v71;
    (*(*(v51 - 8) + 104))(v52, *MEMORY[0x277D22530], v51);
    swift_willThrow();
    v53 = *(v83 + 8);
    v54 = v84;
    v53(v82, v84);
    v47(v90, v81);
    v53(v39, v54);
    v55 = v75;
    sub_24E6585F8((v75 + 8));
    sub_24E601704(v55 + v38, &qword_27F213E68, &unk_24F93BC80);
    type metadata accessor for Quote(0);
    swift_deallocPartialClassInstance();
    return v55;
  }

  return result;
}

uint64_t type metadata accessor for Quote(uint64_t a1)
{
  result = qword_27F23E520;
  if (!qword_27F23E520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Quote.deinit()
{

  sub_24E6585F8(v0 + 64);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit5Quote_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v0;
}

uint64_t Quote.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 64);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit5Quote_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t sub_24F2DEE2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *sub_24F2DEE84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for Quote(0);
  v7 = swift_allocObject();
  result = Quote.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void sub_24F2DEF34(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void __swiftcall PlaceholderBrick.init(style:title:badge:artworks:)(GameStoreKit::PlaceholderBrick *__return_ptr retstr, GameStoreKit::ChartOrCategoryBrickStyle_optional style, Swift::String title, Swift::String_optional badge, Swift::OpaquePointer_optional artworks)
{
  v5 = *style.value;
  if (v5 == 3)
  {
    LOBYTE(v5) = 0;
  }

  retstr->_style = v5;
  retstr->title = title;
  retstr->badge = badge;
  retstr->_artworks.value._rawValue = artworks.value._rawValue;
}

double ChartOrCategoryBrick.textSafeArea.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return result;
}

GameStoreKit::ChartOrCategoryBrickSafeArea::Constraint_optional __swiftcall ChartOrCategoryBrickSafeArea.Constraint.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ChartOrCategoryBrickSafeArea.Constraint.rawValue.getter()
{
  v1 = 0x6D726F4665657266;
  if (*v0 == 1)
  {
    v1 = 0x7942657261757173;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7942657261757173;
  }
}

uint64_t sub_24F2DF1A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xEE00746867696548;
  v4 = 0x6D726F4665657266;
  if (v2 == 1)
  {
    v4 = 0x7942657261757173;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7942657261757173;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xED00006874646957;
  }

  v7 = 0xEE00746867696548;
  v8 = 0x6D726F4665657266;
  if (*a2 == 1)
  {
    v8 = 0x7942657261757173;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7942657261757173;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xED00006874646957;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F2DF2A4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F2DF350(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F2DF3E8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F2DF49C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006874646957;
  v4 = 0xEE00746867696548;
  v5 = 0x7942657261757173;
  if (v2 != 1)
  {
    v5 = 0x6D726F4665657266;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7942657261757173;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void ChartOrCategoryBrickSafeArea.location.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t ChartOrCategoryBrickSafeArea.location.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = *(result + 24);
  v5 = *(result + 32);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  return result;
}

uint64_t ChartOrCategoryBrickSafeArea.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v48 = a3;
  v50 = a2;
  v51 = sub_24F9285B8();
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v46 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  sub_24F928398();
  v47 = sub_24F928308();
  v19 = v18;
  v20 = *(v6 + 8);
  v21 = v17;
  v22 = a1;
  v20(v21, v5);
  if (v19 & 1) != 0 || (sub_24F928398(), v23 = sub_24F928308(), v25 = v24, v20(v14, v5), (v25))
  {
    v26 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v27 = 0x6874646977;
    v27[1] = 0xE500000000000000;
    v27[2] = &type metadata for ChartOrCategoryBrickSafeArea;
    (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D22530], v26);
    swift_willThrow();
    (*(v49 + 8))(v50, v51);
    return (v20)(v22, v5);
  }

  else
  {
    v45 = v23;
    sub_24F928398();
    v57 = sub_24F928278();
    v20(v11, v5);
    sub_24F928398();
    v29 = v49;
    v30 = v50;
    (*(v49 + 16))(v46, v50, v51);
    sub_24F2DFB38();
    sub_24F929548();
    v43 = v53;
    v44 = v52;
    v46 = v54;
    v42 = v55;
    v31 = v22;
    v32 = v56;
    sub_24F928398();
    sub_24F2DFB8C();
    sub_24F928208();
    (*(v29 + 8))(v30, v51);
    v20(v31, v5);
    result = (v20)(v8, v5);
    v33 = v46;
    v34 = v52;
    v35 = v57 & 1;
    if (v46 == 255)
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v33 = 1;
      v32 = 1;
      v39 = v45;
    }

    else
    {
      v36 = v44;
      v39 = v45;
      v38 = v42;
      v37 = v43;
    }

    v40 = v48;
    *v48 = v47;
    v40[1] = v39;
    *(v40 + 16) = v35;
    *(v40 + 24) = v36;
    v40[4] = v37;
    *(v40 + 40) = v33 & 1;
    v40[6] = v38;
    *(v40 + 56) = v32 & 1;
    *(v40 + 57) = v34;
  }

  return result;
}

unint64_t sub_24F2DFB38()
{
  result = qword_27F23E530;
  if (!qword_27F23E530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E530);
  }

  return result;
}

unint64_t sub_24F2DFB8C()
{
  result = qword_27F23E538;
  if (!qword_27F23E538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E538);
  }

  return result;
}

CGSize __swiftcall ChartOrCategoryBrickSafeArea.size(in:)(__C::CGRect in)
{
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  v6 = v1[1];
  v23[0] = *v1;
  v23[1] = v6;
  *v24 = v1[2];
  *&v24[10] = *(v1 + 42);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 1;
  v8 = swift_allocObject();
  v9 = v8;
  *(v8 + 16) = 0;
  v10 = (v8 + 16);
  *(v8 + 24) = 1;
  v11 = (v8 + 24);
  if (!v24[25])
  {
    sub_24F2DFDA4(v7, v23, x, y, width, height);
    v15 = v14;
    swift_beginAccess();
    *v10 = v15;
    goto LABEL_5;
  }

  if (v24[25] == 1)
  {
    sub_24F2DFE28(v8, v23, x, y, width, height);
    v13 = v12;
    swift_beginAccess();
    *(v7 + 16) = v13;
    v11 = (v7 + 24);
LABEL_5:
    *v11 = 0;
  }

  sub_24F2DFDA4(v7, v23, x, y, width, height);
  v17 = v16;
  sub_24F2DFE28(v9, v23, x, y, width, height);
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

void sub_24F2DFDA4(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  if (*(a1 + 24))
  {
    v7 = 1.0;
    if (*(a2 + 16))
    {
      v8 = a2;
      Width = CGRectGetWidth(*&a3);
      a2 = v8;
      v7 = Width;
    }

    v10 = v7 * *a2;
    swift_beginAccess();
    *(a1 + 16) = v10;
    *(a1 + 24) = 0;
  }
}

void sub_24F2DFE28(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  if (*(a1 + 24))
  {
    v7 = 1.0;
    if (*(a2 + 16))
    {
      v8 = a2;
      Height = CGRectGetHeight(*&a3);
      a2 = v8;
      v7 = Height;
    }

    v10 = v7 * *(a2 + 8);
    swift_beginAccess();
    *(a1 + 16) = v10;
    *(a1 + 24) = 0;
  }
}

void ChartOrCategoryBrickSafeArea.Location.distanceX.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

void ChartOrCategoryBrickSafeArea.Location.distanceY.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t ChartOrCategoryBrickSafeArea.Location.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v27 = a2;
  v32 = a3;
  v4 = sub_24F9285B8();
  v26 = *(v4 - 8);
  v5 = v26;
  MEMORY[0x28223BE20](v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_24F928388();
  v29 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24F928398();
  sub_24F2E0220();
  sub_24F928208();
  v12 = *(v9 + 8);
  v28 = v9 + 8;
  v30 = v12;
  v12(v11, v8);
  v31 = v33;
  sub_24F928398();
  v13 = *(v5 + 16);
  v14 = v7;
  v15 = v7;
  v16 = v27;
  v13(v15, v27, v4);
  sub_24F2E0274();
  sub_24F929548();
  v25 = v33;
  v24 = v34;
  sub_24F928398();
  v13(v14, v16, v4);
  sub_24F929548();
  (*(v26 + 8))(v16, v4);
  result = v30(a1, v29);
  v19 = v32;
  v18 = v33;
  v20 = v34;
  v21 = v24;
  v22 = v25;
  if (v24 == 255)
  {
    v22 = 0;
  }

  if (v34 == 255)
  {
    v18 = 0;
  }

  *v32 = v31;
  *(v19 + 1) = v22;
  v19[16] = v21 & 1;
  *(v19 + 3) = v18;
  v19[32] = v20 & 1;
  return result;
}

unint64_t sub_24F2E0220()
{
  result = qword_27F23E540;
  if (!qword_27F23E540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E540);
  }

  return result;
}

unint64_t sub_24F2E0274()
{
  result = qword_27F23E548;
  if (!qword_27F23E548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E548);
  }

  return result;
}

CGPoint __swiftcall ChartOrCategoryBrickSafeArea.Location.absoluteDistance(in:)(__C::CGRect in)
{
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = v6 * CGRectGetWidth(in);
  if (!v7)
  {
    v6 = v10;
  }

  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v11 = v8 * CGRectGetHeight(v15);
  if (v9)
  {
    v12 = v8;
  }

  else
  {
    v12 = v11;
  }

  v13 = v6;
  result.y = v12;
  result.x = v13;
  return result;
}

GameStoreKit::ChartOrCategoryBrickSafeArea::Location::RelativeLocation_optional __swiftcall ChartOrCategoryBrickSafeArea.Location.RelativeLocation.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v5 = rawValue._countAndFlagsBits == 0x7468676952706F74 && rawValue._object == 0xE800000000000000;
  if (!v5 && (sub_24F92CE08() & 1) == 0)
  {
    if (countAndFlagsBits == 0x7466654C706F74 && object == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
    {

      v7 = 1;
      goto LABEL_7;
    }

    v8 = 0x6C69617254706F74;
    v7 = byte_2861BA988;
    if (byte_2861BA988)
    {
      if (byte_2861BA988 == 1)
      {
        v9 = 1282436980;
      }

      else
      {
        v9 = 1281649005;
      }

      v10 = v9 | 0x6964616500000000;
      v11 = 0xEA0000000000676ELL;
    }

    else
    {
      v10 = 0x6C69617254706F74;
      v11 = 0xEB00000000676E69;
    }

    if (v10 == countAndFlagsBits && v11 == object)
    {
LABEL_20:

      goto LABEL_7;
    }

    v12 = sub_24F92CE08();

    if ((v12 & 1) == 0)
    {
      v7 = byte_2861BA989;
      if (byte_2861BA989)
      {
        if (byte_2861BA989 == 1)
        {
          v13 = 1282436980;
        }

        else
        {
          v13 = 1281649005;
        }

        v14 = v13 | 0x6964616500000000;
        v15 = 0xEA0000000000676ELL;
      }

      else
      {
        v14 = 0x6C69617254706F74;
        v15 = 0xEB00000000676E69;
      }

      if (v14 == countAndFlagsBits && v15 == object)
      {
        goto LABEL_20;
      }

      v16 = sub_24F92CE08();

      if ((v16 & 1) == 0)
      {
        v7 = byte_2861BA98A;
        if (byte_2861BA98A)
        {
          if (byte_2861BA98A == 1)
          {
            v17 = 1282436980;
          }

          else
          {
            v17 = 1281649005;
          }

          v8 = v17 | 0x6964616500000000;
          v18 = 0xEA0000000000676ELL;
        }

        else
        {
          v18 = 0xEB00000000676E69;
        }

        if (v8 == countAndFlagsBits && v18 == object)
        {
          goto LABEL_20;
        }

        v19 = sub_24F92CE08();

        if ((v19 & 1) == 0)
        {

          v7 = 3;
          goto LABEL_7;
        }
      }
    }

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:
  *v4 = v7;
  return result;
}

uint64_t ChartOrCategoryBrickSafeArea.Location.RelativeLocation.rawValue.getter()
{
  v1 = 0x696461654C706F74;
  if (*v0 != 1)
  {
    v1 = 0x696461654C64696DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C69617254706F74;
  }
}

uint64_t sub_24F2E0668(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x696461654C706F74;
  if (v2 != 1)
  {
    v3 = 0x696461654C64696DLL;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6C69617254706F74;
  }

  if (v2)
  {
    v5 = 0xEA0000000000676ELL;
  }

  else
  {
    v5 = 0xEB00000000676E69;
  }

  v6 = 0x696461654C706F74;
  if (*a2 != 1)
  {
    v6 = 0x696461654C64696DLL;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6C69617254706F74;
  }

  if (*a2)
  {
    v8 = 0xEA0000000000676ELL;
  }

  else
  {
    v8 = 0xEB00000000676E69;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();
  }

  return v9 & 1;
}

uint64_t sub_24F2E0760()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F2E0814(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F2E08B4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F2E0970(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000676E69;
  v4 = 0x696461654C706F74;
  if (v2 != 1)
  {
    v4 = 0x696461654C64696DLL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6C69617254706F74;
  }

  if (!v5)
  {
    v3 = 0xEA0000000000676ELL;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t ChartOrCategoryBrickSafeArea.Location.Distance.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a2;
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  sub_24F928398();
  v20 = sub_24F928308();
  v13 = v12;
  v14 = *(v6 + 8);
  v14(v11, v5);
  sub_24F928398();
  v15 = sub_24F928278();
  v16 = sub_24F9285B8();
  (*(*(v16 - 8) + 8))(v21, v16);
  v14(a1, v5);
  result = (v14)(v8, v5);
  v18 = v15 == 2 || (v15 & 1) == 0;
  v19 = v20;
  if (v13)
  {
    v19 = 0;
  }

  *a3 = v19;
  *(a3 + 8) = v18;
  return result;
}

uint64_t PlaceholderBrick.brickBadge.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t PlaceholderBrick.brickTitle.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

unint64_t sub_24F2E0C84()
{
  result = qword_27F23E550;
  if (!qword_27F23E550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E550);
  }

  return result;
}

unint64_t sub_24F2E0CDC()
{
  result = qword_27F23E558;
  if (!qword_27F23E558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E558);
  }

  return result;
}

unint64_t sub_24F2E0D34()
{
  result = qword_27F23E560;
  if (!qword_27F23E560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23E568, &qword_24F9E0F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E560);
  }

  return result;
}

uint64_t sub_24F2E0DAC()
{
  v1 = *(v0 + 8);

  return v1;
}

double sub_24F2E0DDC@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return result;
}

uint64_t sub_24F2E0E74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 58))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24F2E0EC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_24F2E0F3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24F2E0F84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_24F2E1008(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F2E1050(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_24F2E10B8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213A10, &unk_24F947300);
  v6 = *(v5 - 8);
  v7 = v6;
  if (v4)
  {
    sub_24E60169C(v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), a1, &qword_27F213A10, &unk_24F947300);
    (*(v7 + 56))(a1, 0, 1, v5);
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213A10, &unk_24F947300) - 8);
    sub_24E6B8EE4(v3, v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), 1, (2 * v4) | 1);
    v3 = v9;
  }

  else
  {
    (*(v6 + 56))(a1, 1, 1, v5);
  }

  *v1 = v3;
  return result;
}

uint64_t _JetTraceAggregator.TimedEvent.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_24F2E12C4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24F2E1304()
{
  sub_24E69A5C4(0, &qword_27F23E5B8, 0x277D86200);
  result = sub_24F92C488();
  qword_27F23E570 = result;
  return result;
}

uint64_t sub_24F2E1398()
{
  sub_24E69A5C4(0, &qword_27F23E598, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0, &qword_24F9876F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F93A400;
  v1 = MEMORY[0x277D837D0];
  *(v0 + 56) = MEMORY[0x277D837D0];
  v2 = sub_24E90A06C();
  *(v0 + 32) = 0xD000000000000013;
  *(v0 + 40) = 0x800000024FA730C0;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 64) = v2;
  *(v0 + 72) = 0x656361725474656ALL;
  *(v0 + 80) = 0xE800000000000000;
  result = sub_24F92BD28();
  qword_27F23E578 = result;
  return result;
}

uint64_t sub_24F2E14A4()
{
  sub_24E69A5C4(0, &qword_27F23E598, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0, &qword_24F9876F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F93A400;
  v1 = MEMORY[0x277D837D0];
  *(v0 + 56) = MEMORY[0x277D837D0];
  v2 = sub_24E90A06C();
  *(v0 + 32) = 0xD000000000000013;
  *(v0 + 40) = 0x800000024FA73020;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 64) = v2;
  *(v0 + 72) = 0x5D74656A5BLL;
  *(v0 + 80) = 0xE500000000000000;
  result = sub_24F92BD28();
  qword_27F23E580 = result;
  return result;
}

uint64_t _JetTraceAggregator.__allocating_init(signpostPredicate:aggregationWindow:signpostTimeout:activityTimeout:)(void *a1, double a2, double a3, double a4)
{
  v8 = sub_24F92BEE8();
  v21 = *(v8 - 8);
  v22 = v8;
  MEMORY[0x28223BE20](v8);
  v20 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F92BE88();
  MEMORY[0x28223BE20](v10);
  v11 = sub_24F927DC8();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = swift_allocObject();
  *(v12 + 32) = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 96) = 0u;
  *(v12 + 112) = 0u;
  v13 = MEMORY[0x277D84F90];
  *(v12 + 128) = sub_24E611148(MEMORY[0x277D84F90]);
  v14 = sub_24E6112E4(v13);
  v15 = MEMORY[0x277D84FA0];
  *(v12 + 136) = v14;
  *(v12 + 144) = v15;
  *(v12 + 152) = v13;
  *(v12 + 160) = v13;
  *(v12 + 168) = v13;
  *(v12 + 176) = 0;
  *(v12 + 48) = a1;
  *(v12 + 56) = a2;
  *(v12 + 64) = a3;
  *(v12 + 72) = a4;
  swift_beginAccess();
  *(v12 + 24) = 0;
  *(v12 + 16) = 0;
  v16 = objc_allocWithZone(MEMORY[0x277CCAAF8]);
  v19 = a1;
  *(v12 + 80) = [v16 init];
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  sub_24F927DA8();
  v23 = v13;
  sub_24E97238C(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10);
  sub_24F92C6A8();
  (*(v21 + 104))(v20, *MEMORY[0x277D85260], v22);
  v17 = sub_24F92BF38();

  *(v12 + 88) = v17;
  return v12;
}

uint64_t _JetTraceAggregator.init(signpostPredicate:aggregationWindow:signpostTimeout:activityTimeout:)(void *a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_24F92BEE8();
  v23 = *(v10 - 8);
  v24 = v10;
  MEMORY[0x28223BE20](v10);
  v22 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F92BE88();
  MEMORY[0x28223BE20](v12);
  v13 = sub_24F927DC8();
  MEMORY[0x28223BE20](v13 - 8);
  *(v4 + 32) = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  v14 = MEMORY[0x277D84F90];
  *(v4 + 128) = sub_24E611148(MEMORY[0x277D84F90]);
  v15 = sub_24E6112E4(v14);
  v16 = MEMORY[0x277D84FA0];
  *(v4 + 136) = v15;
  *(v4 + 144) = v16;
  *(v4 + 152) = v14;
  *(v4 + 160) = v14;
  *(v4 + 168) = v14;
  *(v4 + 176) = 0;
  *(v4 + 48) = a1;
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  swift_beginAccess();
  v17 = *(v4 + 16);
  v18 = *(v4 + 24);
  *(v4 + 24) = 0;
  *(v4 + 16) = 0;
  v21 = a1;
  sub_24E824448(v17, v18);
  *(v4 + 80) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  sub_24F927DA8();
  v25 = v14;
  sub_24E97238C(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10);
  sub_24F92C6A8();
  (*(v23 + 104))(v22, *MEMORY[0x277D85260], v24);
  v19 = sub_24F92BF38();

  *(v5 + 88) = v19;
  return v5;
}

uint64_t sub_24F2E1BF0@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24EADD848;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24E5FCA4C(v4, v5);
}

double sub_24F2E1C84(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24EADD7E8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_24E5FCA4C(v3, v4);
  return sub_24E824448(v8, v9);
}

uint64_t _JetTraceAggregator.didFinishEvent.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_24E5FCA4C(v1, *(v0 + 24));
  return v1;
}

double _JetTraceAggregator.didFinishEvent.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_24E824448(v5, v6);
}

uint64_t sub_24F2E1E34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24EA04384;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24E5FCA4C(v4, v5);
}

double sub_24F2E1EC8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24EA0434C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  sub_24E5FCA4C(v3, v4);
  return sub_24E824448(v8, v9);
}

uint64_t _JetTraceAggregator.shouldRecordActivity.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_24E5FCA4C(v1, *(v0 + 40));
  return v1;
}

double _JetTraceAggregator.shouldRecordActivity.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_24E824448(v5, v6);
}

Swift::Void __swiftcall _JetTraceAggregator.start()()
{
  v1 = *(v0 + 80);
  [v1 lock];
  sub_24F2E2100(v0);

  [v1 unlock];
}

void sub_24F2E2100(uint64_t a1)
{
  v2 = sub_24F91F648();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(a1 + 176);
  if (v6)
  {
    v7 = *(v6 + 24);

    [v7 lock];
    *(v6 + 16) = 1;
    [v7 unlock];
  }

  swift_beginAccess();
  sub_24E60169C(a1 + 96, aBlock, &qword_27F2129B0, &unk_24F945320);
  v8 = v16;
  sub_24E601704(aBlock, &qword_27F2129B0, &unk_24F945320);
  if (!v8)
  {
    v9 = [objc_opt_self() sharedCoordinator];
    v17 = j___s12GameStoreKit19_JetTraceAggregatorC4stopyyF;
    v18 = a1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EAF8248;
    v16 = &block_descriptor_140;
    v10 = _Block_copy(aBlock);

    v11 = [v9 registerCleanupHandler_];
    _Block_release(v10);

    sub_24F92C648();
    swift_unknownObjectRelease();
    swift_beginAccess();
    sub_24E8E7708(aBlock, a1 + 96);
    swift_endAccess();
  }

  sub_24F91F638();
  type metadata accessor for _JetTraceAggregator.CancellableAggregation();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = [objc_allocWithZone(MEMORY[0x277D225F0]) init];
  *(v12 + 32) = 0;
  v13 = sub_24F2E5F1C(v5, v12);

  (*(v3 + 8))(v5, v2);
  *(a1 + 176) = v13;
}

Swift::Void __swiftcall _JetTraceAggregator.stop()()
{
  v1 = *(v0 + 80);
  [v1 lock];
  v2 = *(v0 + 176);
  if (v2)
  {
    v3 = *(v2 + 24);

    [v3 lock];
    *(v2 + 16) = 1;
    [v3 unlock];
  }

  *(v0 + 176) = 0;

  [v1 unlock];
}

id sub_24F2E2488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v23[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v13 = &v23[-1] - v12;
  v14 = *(a1 + 24);
  [v14 lock];
  v15 = *(a1 + 16);
  result = [v14 unlock];
  if ((v15 & 1) == 0)
  {
    sub_24F91F638();
    sub_24F2E26C4(a3, a1);
    (*(v7 + 16))(v9, v13, v6);
    v17 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v18 = (v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    (*(v7 + 32))(v19 + v17, v9, v6);
    *(v19 + v18) = a1;
    v20 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);

    v21 = sub_24F92BEF8();
    v23[3] = v20;
    v23[4] = MEMORY[0x277D225C0];
    v23[0] = v21;
    sub_24F92A998();

    (*(v7 + 8))(v13, v6);
    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  return result;
}

uint64_t sub_24F2E26C4(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v18 = a2;
  v2 = sub_24F91F648();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  if (qword_27F210580 != -1)
  {
    swift_once();
  }

  v5 = sub_24F92AAE8();
  __swift_project_value_buffer(v5, qword_27F39C3E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A598();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224518, &qword_24F9E1340);
  v6 = sub_24F92A9E8();
  v16 = [objc_opt_self() localStore];
  v23 = sub_24F2E6834;
  v24 = v6;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_24F2E2E78;
  v22 = &block_descriptor_43_0;
  v7 = _Block_copy(&aBlock);

  [v16 setProgressHandler_];
  _Block_release(v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v9, v17, v2);
  v10 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  (*(v3 + 32))(v12 + v10, v9, v2);
  *(v12 + v11) = v18;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v6;
  v23 = sub_24F2E6964;
  v24 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_24E6251C8;
  v22 = &block_descriptor_52_1;
  v13 = _Block_copy(&aBlock);

  v14 = v16;
  [v16 prepareWithCompletionHandler_];
  _Block_release(v13);

  return v6;
}

void sub_24F2E2AD0(void *a1, double a2)
{
  v4 = sub_24F928418();
  MEMORY[0x28223BE20](v4 - 8);
  if ((sub_24F92A928() & 1) == 0)
  {
    if (a1)
    {
      v5 = a1;
      if (qword_27F210580 != -1)
      {
        swift_once();
      }

      v6 = sub_24F92AAE8();
      __swift_project_value_buffer(v6, qword_27F39C3E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F928408();
      sub_24F9283F8();
      swift_getErrorValue();
      v10[3] = v9;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
      (*(*(v9 - 8) + 16))(boxed_opaque_existential_1);
      sub_24F9283D8();
      sub_24E601704(v10, &qword_27F2129B0, &unk_24F945320);
      sub_24F9283F8();
      sub_24F928428();
      sub_24F92A5A8();
    }

    if (a2 >= 1.0)
    {
      if (qword_27F210580 != -1)
      {
        swift_once();
      }

      v8 = sub_24F92AAE8();
      __swift_project_value_buffer(v8, qword_27F39C3E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F9283A8();
      sub_24F92A588();

      LOBYTE(v10[0]) = 1;
      sub_24F92A9C8();
    }
  }
}

void sub_24F2E2E78(uint64_t a1, void *a2, double a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

void sub_24F2E2EF4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_24F928418();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = a1;
  v10 = a2;
  sub_24E69A5C4(0, &qword_27F23E588, 0x277D24430);
  sub_24F92A728();
  v34 = aBlock;
  v35 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E590, &qword_24F9E1348);
  sub_24F92A738();
  sub_24EAA5C74(aBlock);
  v11 = v33;
  v12 = [objc_allocWithZone(MEMORY[0x277D24440]) initWithSource_];
  [v12 setFlags_];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_24F9C29E0;
    v16 = *(v14 + 48);
    *(v15 + 32) = v16;
    v17 = qword_27F2110E8;
    v18 = v16;
    if (v17 != -1)
    {
      swift_once();
    }

    v19 = qword_27F23E580;
    *(v15 + 40) = qword_27F23E580;
    sub_24E69A5C4(0, &qword_27F23E598, 0x277CCAC30);
    v20 = v19;
    v21 = sub_24F92B588();

    v22 = [objc_opt_self() orPredicateWithSubpredicates_];
  }

  else
  {
    v22 = 0;
  }

  [v12 setFilterPredicate_];

  v23 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v31 = sub_24F2E6A20;
  v32 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_24ECAEFC8;
  v30 = &block_descriptor_56;
  v24 = _Block_copy(&aBlock);

  [v12 setEventHandler_];
  _Block_release(v24);
  v25 = sub_24F91F578();
  [v12 activateStreamFromDate_];

  v26 = *(a5 + 32);
  *(a5 + 32) = v12;
}

double sub_24F2E3454(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24F2E34B4(a1);
  }

  return result;
}

double sub_24F2E34B4(void *a1)
{
  v3 = sub_24F927D88();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F927DC8();
  v6 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F2E5D1C(a1, v20);
  v9 = swift_allocObject();
  v10 = v20[3];
  *(v9 + 48) = v20[2];
  *(v9 + 64) = v10;
  *(v9 + 80) = v20[4];
  v11 = v21;
  v12 = v20[1];
  *(v9 + 16) = v20[0];
  *(v9 + 32) = v12;
  *(v9 + 96) = v11;
  *(v9 + 104) = v1;
  aBlock[4] = sub_24F2E6A78;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_62_0;
  v13 = _Block_copy(aBlock);

  sub_24F927DA8();
  v18 = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v8, v5, v13);
  _Block_release(v13);
  (*(v17 + 8))(v5, v3);
  (*(v6 + 8))(v8, v16);

  return result;
}

void sub_24F2E3798(uint64_t a1)
{
  sub_24F928418();
  MEMORY[0x28223BE20](a1);
  v3 = *v2;
  if (*v2 == 513)
  {
    sub_24F2E3C20(v2);
  }

  else if (v3 == 1536)
  {
    sub_24F2E39C8(v2);
  }

  else
  {
    if (qword_27F210580 != -1)
    {
      swift_once();
    }

    v4 = sub_24F92AAE8();
    __swift_project_value_buffer(v4, qword_27F39C3E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    type metadata accessor for OSLogEventType(0);
    v6[3] = v5;
    v6[0] = v3;
    sub_24F9283D8();
    sub_24E601704(v6, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A588();
  }

  sub_24F2E451C();
}

uint64_t sub_24F2E39C8(uint64_t a1)
{
  sub_24F928418();
  MEMORY[0x28223BE20](a1);
  v3 = *(v2 + 48);
  if (v3 == 2)
  {

    return sub_24F2E51B0(v2);
  }

  else if (v3 == 1)
  {

    return sub_24F2E4E90(v2);
  }

  else
  {
    if (qword_27F210580 != -1)
    {
      swift_once();
    }

    v5 = sub_24F92AAE8();
    __swift_project_value_buffer(v5, qword_27F39C3E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    type metadata accessor for OSLogEventSignpostType(0);
    v7[3] = v6;
    v7[0] = v3;
    sub_24F9283D8();
    sub_24E601704(v7, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A588();
  }
}

uint64_t sub_24F2E3C20(void *a1)
{
  v2 = v1;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213A10, &unk_24F947300);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v85 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v86 = (&v81 - v6);
  MEMORY[0x28223BE20](v7);
  v92 = &v81 - v8;
  MEMORY[0x28223BE20](v9);
  v93 = (&v81 - v10);
  v91 = sub_24F91F648();
  v94 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v84 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v90 = &v81 - v13;
  MEMORY[0x28223BE20](v14);
  v87 = &v81 - v15;
  v16 = sub_24F91F6B8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[1];
  v20 = a1[2];
  if (!v20 || (*&v97 = a1[1], *(&v97 + 1) = v20, *&v96[0] = 0x5D74656A5BLL, *(&v96[0] + 1) = 0xE500000000000000, sub_24E8B97C4(), sub_24E8B9818(), , (sub_24F92AF38() & 1) == 0))
  {
    swift_beginAccess();
    if (!*(v1[17] + 16) || (sub_24E7728CC(a1[5]), (v22 & 1) == 0))
    {
      swift_endAccess();
    }

    swift_endAccess();
  }

  sub_24F91F6A8();
  v83 = sub_24F91F668();
  v82 = v23;
  (*(v17 + 8))(v19, v16);
  v24 = a1[4];
  v81 = a1[5];
  if (v20)
  {
    v25 = v21;
  }

  else
  {
    v25 = 0;
  }

  if (v20)
  {
    v26 = v20;
  }

  else
  {
    v26 = 0xE000000000000000;
  }

  v27 = sub_24F92B358();

  if (v27)
  {
    v28 = sub_24F92B228();
    v29 = sub_24EF62944(v28, v25, v26);
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v25 = MEMORY[0x253050B50](v29, v31, v33, v35);
    v37 = v36;
  }

  else
  {
    v37 = v26;
  }

  v39 = v89;
  if (sub_24F92B358())
  {
    v40 = sub_24EF62944(1uLL, v25, v37);
    v42 = v41;
    v44 = v43;
    v46 = v45;

    v25 = MEMORY[0x253050B50](v40, v42, v44, v46);
    v37 = v47;
  }

  *&v97 = v25;
  *(&v97 + 1) = v37;
  v48 = sub_24F92B3C8();
  v50 = v49;

  *&v97 = v83;
  *(&v97 + 1) = v82;
  *&v98 = v24;
  *(&v98 + 1) = v81;
  *&v99 = v48;
  *(&v99 + 1) = v50;
  swift_beginAccess();
  sub_24F2E6DC4(&v97, v96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v96[0] = v2[17];
  v2[17] = 0x8000000000000000;
  sub_24E8228E4(&v97, v24, isUniquelyReferenced_nonNull_native);
  v2[17] = *&v96[0];
  swift_endAccess();
  v52 = v90;
  sub_24F91F638();
  v53 = v87;
  sub_24F91F568();
  v54 = v94;
  v55 = *(v94 + 8);
  v56 = v52;
  v57 = v91;
  v55(v56, v91);
  v58 = *(v39 + 48);
  v59 = v93;
  *v93 = v24;
  v60 = *(v54 + 32);
  v94 = v54 + 32;
  v60(v59 + v58, v53, v57);
  sub_24E60169C(v59, v92, &qword_27F213A10, &unk_24F947300);
  v61 = v2[20];
  v62 = swift_isUniquelyReferenced_nonNull_native();
  v2[20] = v61;
  if ((v62 & 1) == 0)
  {
    v61 = sub_24E61A314(0, v61[2] + 1, 1, v61);
    v2[20] = v61;
  }

  v64 = v61[2];
  v63 = v61[3];
  v65 = v39;
  if (v64 >= v63 >> 1)
  {
    v61 = sub_24E61A314((v63 > 1), v64 + 1, 1, v61);
    v2[20] = v61;
  }

  v61[2] = v64 + 1;
  v89 = (*(v88 + 80) + 32) & ~*(v88 + 80);
  v66 = *(v88 + 72);
  sub_24E6009C8(v92, v61 + v89 + v66 * v64, &qword_27F213A10, &unk_24F947300);
  v2[20] = v61;
  sub_24E601704(v93, &qword_27F213A10, &unk_24F947300);
  swift_beginAccess();
  if (sub_24F4D95E4())
  {
    sub_24F2E6DFC(&v97);
  }

  else
  {
    swift_beginAccess();
    v67 = v2[4];
    if (!v67)
    {
      return sub_24F2E6DFC(&v97);
    }

    v68 = v2[5];
    v96[0] = v97;
    v96[1] = v98;
    v96[2] = v99;

    v69 = v67(v96);
    sub_24E824448(v67, v68);
    result = sub_24F2E6DFC(&v97);
    if (v69)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_24ED80084(v95, v24);
  swift_endAccess();
  v70 = v90;
  sub_24F91F638();
  v71 = v84;
  sub_24F91F568();
  v72 = v70;
  v73 = v91;
  v55(v72, v91);
  v74 = *(v65 + 48);
  v75 = v86;
  *v86 = v24;
  v60((v75 + v74), v71, v73);
  swift_beginAccess();
  v76 = v85;
  sub_24E60169C(v75, v85, &qword_27F213A10, &unk_24F947300);
  v77 = v2[21];
  v78 = swift_isUniquelyReferenced_nonNull_native();
  v2[21] = v77;
  if ((v78 & 1) == 0)
  {
    v77 = sub_24E61A314(0, v77[2] + 1, 1, v77);
    v2[21] = v77;
  }

  v80 = v77[2];
  v79 = v77[3];
  if (v80 >= v79 >> 1)
  {
    v77 = sub_24E61A314((v79 > 1), v80 + 1, 1, v77);
    v2[21] = v77;
  }

  v77[2] = v80 + 1;
  sub_24E6009C8(v76, v77 + v89 + v80 * v66, &qword_27F213A10, &unk_24F947300);
  v2[21] = v77;
  return sub_24E601704(v75, &qword_27F213A10, &unk_24F947300);
}

void sub_24F2E451C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E5A8, &qword_24F9E1358);
  MEMORY[0x28223BE20](v2 - 8);
  v76 = &v66 - v3;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139F8, &qword_24F93B5B0);
  v69 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v78 = (&v66 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E5B0, &qword_24F9E1360);
  MEMORY[0x28223BE20](v5 - 8);
  v74 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v77 = (&v66 - v8);
  v80 = sub_24F91F648();
  v67 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213A10, &unk_24F947300);
  v70 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v12 = (&v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = (&v66 - v14);
  v16 = v0[20];
  if (!*(v16 + 16))
  {
LABEL_20:
    swift_beginAccess();
    v40 = v1[21];
    if (*(v40 + 16))
    {
      v41 = (*(v70 + 80) + 32) & ~*(v70 + 80);
      v42 = (v67 + 8);
      v43 = v74;
      while (1)
      {
        sub_24E60169C(v40 + v41, v12, &qword_27F213A10, &unk_24F947300);
        v44 = *v12;
        sub_24F91F638();
        v45 = sub_24F91F598();
        (*v42)(v10, v80);
        if ((v45 & 1) == 0)
        {
          break;
        }

        swift_beginAccess();
        sub_24F2E10B8(v43);
        swift_endAccess();
        sub_24E601704(v43, &qword_27F23E5B0, &qword_24F9E1360);
        swift_beginAccess();
        sub_24F7A5DCC(v44);
        swift_endAccess();
        sub_24E601704(v12, &qword_27F213A10, &unk_24F947300);
        v40 = v1[21];
        if (!*(v40 + 16))
        {
          goto LABEL_26;
        }
      }

      sub_24E601704(v12, &qword_27F213A10, &unk_24F947300);
    }

LABEL_26:
    v81 = v10;
    v46 = v1[19];
    v47 = v78;
    if (*(v46 + 16))
    {
      v75 = *(v69 + 80);
      v48 = (v75 + 32) & ~v75;
      v49 = (v67 + 8);
      v77 = (v69 + 56);
      while (1)
      {
        sub_24E60169C(v46 + v48, v47, &qword_27F2139F8, &qword_24F93B5B0);
        v50 = *v47;
        v51 = v81;
        sub_24F91F638();
        v52 = sub_24F91F598();
        (*v49)(v51, v80);
        if ((v52 & 1) == 0)
        {
          break;
        }

        v53 = v1[19];
        v54 = v53[2];
        if (v54)
        {
          v55 = v76;
          sub_24E60169C(v53 + v48, v76, &qword_27F2139F8, &qword_24F93B5B0);
          (*v77)(v55, 0, 1, v79);
          v56 = v54 - 1;
          if (v54 == 1)
          {
            v53 = MEMORY[0x277D84F90];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139F0, &qword_24F93B5A8);
            v57 = *(v69 + 72);
            v53 = swift_allocObject();
            v58 = _swift_stdlib_malloc_size(v53);
            if (!v57)
            {
              goto LABEL_48;
            }

            if (v58 - v48 == 0x8000000000000000 && v57 == -1)
            {
              goto LABEL_50;
            }

            v53[2] = v56;
            v53[3] = 2 * ((v58 - v48) / v57);
            swift_arrayInitWithCopy();
          }

          v60 = v76;
        }

        else
        {
          v60 = v76;
          (*v77)(v76, 1, 1, v79);
        }

        v1[19] = v53;

        sub_24E601704(v60, &qword_27F23E5A8, &qword_24F9E1358);
        swift_beginAccess();
        v61 = sub_24E7728CC(v50);
        v47 = v78;
        if (v62)
        {
          v63 = v61;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v65 = v1[16];
          v82 = v65;
          v1[16] = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_24E8B6D00();
            v65 = v82;
          }

          sub_24EB55E50(v63, v65);
          v1[16] = v65;
          v47 = v78;
        }

        swift_endAccess();
        sub_24E601704(v47, &qword_27F2139F8, &qword_24F93B5B0);
        v46 = v1[19];
        if (!*(v46 + 16))
        {
          return;
        }
      }

      sub_24E601704(v78, &qword_27F2139F8, &qword_24F93B5B0);
    }

    return;
  }

  v68 = *(v70 + 80);
  v17 = (v68 + 32) & ~v68;
  v72 = (v70 + 56);
  v73 = (v67 + 8);
  v18 = &unk_24F947300;
  v71 = v12;
  v75 = v17;
  while (1)
  {
    v19 = v18;
    sub_24E60169C(v16 + v17, v15, &qword_27F213A10, v18);
    v20 = *v15;
    sub_24F91F638();
    v21 = sub_24F91F598();
    (*v73)(v10, v80);
    if ((v21 & 1) == 0)
    {
      sub_24E601704(v15, &qword_27F213A10, &unk_24F947300);
      goto LABEL_20;
    }

    v22 = v1[20];
    v23 = v22[2];
    if (!v23)
    {
      v33 = v77;
      (*v72)(v77, 1, 1, v81);

      goto LABEL_16;
    }

    v24 = v77;
    v25 = v75;
    sub_24E60169C(v22 + v75, v77, &qword_27F213A10, v19);
    (*v72)(v24, 0, 1, v81);
    v26 = v23 - 1;
    if (v23 == 1)
    {
      v22 = MEMORY[0x277D84F90];
      v33 = v77;
      v12 = v71;
      goto LABEL_16;
    }

    v27 = v10;
    v28 = v15;
    v29 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213A08, &unk_24F93B5C0);
    v30 = *(v70 + 72);
    v22 = swift_allocObject();
    v31 = _swift_stdlib_malloc_size(v22);
    if (!v30)
    {
      break;
    }

    if (v31 - v25 == 0x8000000000000000 && v30 == -1)
    {
      goto LABEL_49;
    }

    v22[2] = v26;
    v22[3] = 2 * ((v31 - v25) / v30);
    swift_arrayInitWithCopy();
    v33 = v77;
    v12 = v71;
    v34 = v29;
    v15 = v28;
    v10 = v34;
LABEL_16:
    v1[20] = v22;

    sub_24E601704(v33, &qword_27F23E5B0, &qword_24F9E1360);
    swift_beginAccess();
    v35 = sub_24E7728CC(v20);
    v17 = v75;
    if (v36)
    {
      v37 = v35;
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v39 = v1[17];
      v83 = v39;
      v1[17] = 0x8000000000000000;
      if (!v38)
      {
        sub_24E8B6EC0();
        v39 = v83;
      }

      sub_24EB55FC4(v37, v39);
      v1[17] = v39;
    }

    swift_endAccess();
    v18 = v19;
    sub_24E601704(v15, &qword_27F213A10, v19);
    v16 = v1[20];
    if (!*(v16 + 16))
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}