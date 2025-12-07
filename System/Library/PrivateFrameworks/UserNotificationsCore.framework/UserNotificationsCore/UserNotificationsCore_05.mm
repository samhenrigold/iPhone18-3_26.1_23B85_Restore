void sub_1DA86F9CC(uint64_t a2@<X8>)
{
  v3 = sub_1DA940064();
  if (!v3)
  {
    v9 = *MEMORY[0x1E69DF130];
    goto LABEL_13;
  }

  v16 = v3;
  v4 = [v3 listPriority];
  if (v4 == 1)
  {
    v12 = MEMORY[0x1E69DF128];
  }

  else
  {
    if (v4 == 2)
    {
      v6 = sub_1DA940014();
      v7 = v5;
      if (v6 == 0xD00000000000002CLL && 0x80000001DA952D10 == v5 || (sub_1DA941684() & 1) != 0 || v6 == 0xD000000000000013 && 0x80000001DA9505A0 == v7 || (sub_1DA941684() & 1) != 0)
      {

        v8 = MEMORY[0x1E69DF118];
      }

      else if (v6 == 0xD00000000000001FLL && 0x80000001DA952D40 == v7 || (sub_1DA941684() & 1) != 0)
      {

        v8 = MEMORY[0x1E69DF108];
      }

      else if (v6 == 0xD000000000000016 && 0x80000001DA952D60 == v7 || (sub_1DA941684() & 1) != 0)
      {

        v8 = MEMORY[0x1E69DF100];
      }

      else
      {
        if (v6 == 0xD000000000000029 && 0x80000001DA952D80 == v7)
        {
        }

        else
        {
          v15 = sub_1DA941684();

          if ((v15 & 1) == 0)
          {
            v8 = MEMORY[0x1E69DF120];
            goto LABEL_11;
          }
        }

        v8 = MEMORY[0x1E69DF110];
      }

LABEL_11:
      v9 = *v8;
LABEL_13:
      v10 = sub_1DA93FF94();
      v11 = *(*(v10 - 8) + 104);

      v11(a2, v9, v10);
      return;
    }

    v12 = MEMORY[0x1E69DF130];
  }

  v13 = *v12;
  v14 = sub_1DA93FF94();
  (*(*(v14 - 8) + 104))(a2, v13, v14);
}

uint64_t sub_1DA86FCC0(uint64_t a1, void *a2, void *a3, unsigned int (*a4)(void, void, void))
{
  v101 = a4;
  v100 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E10, &unk_1DA958758);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v91 = &v83 - v7;
  v90 = sub_1DA9401F4();
  v99 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1DA93FEC4();
  v96 = *(v104 - 8);
  v9 = MEMORY[0x1EEE9AC00](v104);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v105 = &v83 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E08, &qword_1DA958750);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v95 = &v83 - v14;
  v94 = sub_1DA940294();
  v93 = *(v94 - 8);
  v15 = MEMORY[0x1EEE9AC00](v94);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v92 = &v83 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5BA0, &qword_1DA95CD00);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v83 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AE0, &unk_1DA9656A0);
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v103 = &v83 - v30;
  LODWORD(v88) = sub_1DA87C4F4(a1, v100);
  v31 = [a2 notificationSettings];
  v100 = [v31 groupingSetting];

  v106 = v101;
  v107 = a1;
  sub_1DA940FE4();
  v101 = *(v26 + 48);
  if (v101(v22, 1, v25) != 1)
  {
    v41 = *(v26 + 32);
    v41(v29, v22, v25);
    v41(v24, v29, v25);
    v42 = 0;
    v43 = v26;
    v44 = a1;
    goto LABEL_19;
  }

  v86 = v26 + 48;
  v87 = v24;
  v97 = v26;
  v98 = v25;
  sub_1DA7BA120(v22, &qword_1ECBD5BA0, &qword_1DA95CD00);
  v32 = v92;
  v33 = a1;
  sub_1DA93FEE4();
  sub_1DA940264();
  v34 = sub_1DA7ACFF0(&qword_1ECBD5AF0, MEMORY[0x1E69DF1B0], MEMORY[0x1E69DF1C0]);
  v35 = v94;
  sub_1DA941164();
  v36 = *(v93 + 8);
  v36(v17, v35);
  sub_1DA940204();
  v85 = v34;
  sub_1DA941164();
  v93 = v36;
  v36(v17, v35);
  v37 = v95;
  v102 = v33;
  sub_1DA940044();
  v38 = sub_1DA940004();
  v39 = *(v38 - 8);
  v40 = v32;
  if ((*(v39 + 48))(v37, 1, v38) == 1)
  {
    sub_1DA7BA120(v37, &qword_1ECBD4E08, &qword_1DA958750);
  }

  else
  {
    v45 = sub_1DA93FFA4();
    (*(v39 + 8))(v37, v38);
    v40 = v32;
    if (v45 != 2 && (v45 & 1) != 0)
    {
      (v93)(v32, v35);
      v43 = v97;
      v24 = v87;
      v25 = v98;
      (*(v97 + 104))(v87, *MEMORY[0x1E69DF210], v98);
      v42 = 0;
      v44 = v102;
      goto LABEL_19;
    }
  }

  sub_1DA940204();
  v46 = sub_1DA941164();
  v47 = v93;
  (v93)(v17, v35);
  if (v46)
  {
    v47(v40, v35);
    v43 = v97;
    v48 = *(v97 + 104);
    v44 = v102;
    if (v88)
    {
      v49 = MEMORY[0x1E69DF238];
    }

    else
    {
      v49 = MEMORY[0x1E69DF248];
    }

    v52 = *v49;
    goto LABEL_18;
  }

  sub_1DA940234();
  v50 = sub_1DA941164();
  v47(v17, v35);
  v44 = v102;
  if (v50)
  {
    v47(v40, v35);
    v51 = MEMORY[0x1E69DF220];
LABEL_17:
    v52 = *v51;
    v43 = v97;
    v48 = *(v97 + 104);
LABEL_18:
    v24 = v87;
    v25 = v98;
    v48(v87, v52, v98);
    v42 = 0;
    goto LABEL_19;
  }

  sub_1DA940284();
  v53 = sub_1DA941164();
  v47(v17, v35);
  v47(v40, v35);
  if (v53)
  {
    v51 = MEMORY[0x1E69DF240];
    goto LABEL_17;
  }

  v42 = 1;
  v25 = v98;
  v43 = v97;
  v24 = v87;
LABEL_19:
  v54 = v101;
  (*(v43 + 56))(v24, v42, 1, v25);
  v55 = v54(v24, 1, v25);
  v56 = v55;
  if (v55 == 1)
  {
    sub_1DA7BA120(v24, &qword_1ECBD5BA0, &qword_1DA95CD00);
    return v56 != 1;
  }

  LODWORD(v87) = v55;
  (*(v43 + 32))(v103, v24, v25);
  sub_1DA940124();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AA0, &qword_1DA95CB10);
  v58 = *(sub_1DA940464() + 16);

  v84 = v58;
  if (v58)
  {
    v59 = 0;
    v60 = (v96 + 8);
    v102 = v44;
    v98 = v25;
    v97 = v43;
    v86 = v57;
    while (1)
    {
      v61 = sub_1DA940454();
      v63 = v62;
      v64 = *v62;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v63 = v64;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v64 = sub_1DA884B48(v64);
        *v63 = v64;
      }

      if (v59 >= v64[2])
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v88 = v61;
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
      v67 = v64 + ((*(*(v66 - 8) + 80) + 32) & ~*(*(v66 - 8) + 80));
      v68 = *(*(v66 - 8) + 72);
      v85 = v59;
      v95 = v66;
      v94 = &v67[v68 * v59];
      v69 = *(sub_1DA940424() + 16);

      v92 = v69;
      if (v69)
      {
        break;
      }

LABEL_36:
      v59 = v85 + 1;
      v88(v110, 0);
      v25 = v98;
      v43 = v97;
      v57 = v86;
      if (v59 == v84)
      {
        goto LABEL_40;
      }
    }

    v70 = 0;
    while (1)
    {
      v61 = sub_1DA940414();
      v64 = v71;
      v63 = *v71;
      v72 = swift_isUniquelyReferenced_nonNull_native();
      *v64 = v63;
      if ((v72 & 1) == 0)
      {
        v63 = sub_1DA884B34(v63);
        *v64 = v63;
      }

      if (v70 >= v63[2])
      {
        __break(1u);
        goto LABEL_47;
      }

      v101 = v61;
      v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68) - 8);
      v93 = v63 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v70;
      v74 = sub_1DA940394();
      v25 = v74;
      v43 = *(v74 + 16);
      if (v43)
      {
        break;
      }

LABEL_27:
      ++v70;

      (v101)(v109, 0);
      v44 = v102;
      if (v70 == v92)
      {
        goto LABEL_36;
      }
    }

    v75 = 0;
    v76 = v74 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
    v77 = *(v99 + 72);
    while (1)
    {
      sub_1DA940124();
      v57 = sub_1DA93FEA4();
      (*v60)(v11, v104);
      if (v57)
      {
        break;
      }

      ++v75;
      v76 += v77;
      if (v43 == v75)
      {
        goto LABEL_27;
      }
    }

    v78 = sub_1DA940384();
    v79 = v89;
    sub_1DA8765F4(v75, sub_1DA884B20, MEMORY[0x1E69DF180], v89);
    (*(v99 + 8))(v79, v90);
    v78(v108, 0);
    v80 = sub_1DA93F844();
    (*(*(v80 - 8) + 56))(v91, 1, 1, v80);
    sub_1DA9403F4();
    (v101)(v109, 0);
    v88(v110, 0);
    v44 = v102;
    v25 = v98;
    v43 = v97;
  }

LABEL_40:
  (*(v96 + 8))(v105, v104);
  v61 = sub_1DA874D94(v103);
  v64 = sub_1DA940454();
  v57 = v81;
  v63 = *v81;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v57 = v63;
  if (result)
  {
    if ((v61 & 0x8000000000000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_48:
  result = sub_1DA884B48(v63);
  v63 = result;
  *v57 = result;
  if ((v61 & 0x8000000000000000) != 0)
  {
    goto LABEL_49;
  }

LABEL_42:
  if (v61 < v63[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
    sub_1DA875120(v44, v100);
    (v64)(v110, 0);
    (*(v43 + 8))(v103, v25);
    v56 = v87;
    return v56 != 1;
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_1DA870C38(uint64_t a1, char a2)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
  v4 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v24 = &v23 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AA0, &qword_1DA95CB10);
  v26 = *(sub_1DA940464() + 16);

  v6 = 0;
  do
  {
    v7 = v6;
    if (v26 == v6)
    {
      return v26 != v7;
    }

    v8 = sub_1DA940454();
    v10 = v9;
    v11 = *v9;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v10 = v11;
    if ((result & 1) == 0)
    {
      result = sub_1DA884B48(v11);
      v11 = result;
      *v10 = result;
    }

    if (v7 >= v11[2])
    {
      __break(1u);
      goto LABEL_13;
    }

    v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v14 = *(v4 + 72) * v7;
    v15 = sub_1DA875E24(a1, a2 & 1);
    v8(v27, 0);
    v6 = v7 + 1;
  }

  while ((v15 & 1) == 0);
  if (a2)
  {
    return v26 != v7;
  }

  result = sub_1DA940464();
  if (v7 < *(result + 16))
  {
    v16 = result + v13 + v14;
    v18 = v24;
    v17 = v25;
    (*(v4 + 16))(v24, v16, v25);

    v19 = sub_1DA940434();
    v20 = *(v4 + 8);
    v20(v18, v17);
    if (v19)
    {
      v21 = sub_1DA940454();
      v22 = v24;
      sub_1DA8764AC(v7, sub_1DA884B48, &qword_1ECBD5AC0, &qword_1DA95CC48, v24);
      v20(v22, v25);
      v21(v27, 0);
    }

    return v26 != v7;
  }

LABEL_13:
  __break(1u);
  return result;
}

double sub_1DA870EF0(uint64_t a1, uint64_t a2)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6D30, &qword_1DA9593C0);
  v2 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v4 = &v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AA0, &qword_1DA95CB10);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  v9 = sub_1DA9408C4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return result;
  }

  v15 = Strong;
  v16 = *(Strong + 56);
  *v12 = v16;
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v17 = v16;
  LOBYTE(v16) = sub_1DA9408F4();
  (*(v10 + 8))(v12, v9);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_1ECBD47C8 != -1)
  {
LABEL_9:
    swift_once();
  }

  v18 = sub_1DA9405A4();
  __swift_project_value_buffer(v18, qword_1ECBE3DD0);
  v19 = sub_1DA940584();
  v20 = sub_1DA940F34();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1DA7A9000, v19, v20, "Processing updates", v21, 2u);
    MEMORY[0x1E12739F0](v21, -1, -1);
  }

  sub_1DA871288();
  v22 = OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_list;
  swift_beginAccess();
  (*(v6 + 16))(v8, v15 + v22, v5);
  sub_1DA86E858(v4);
  (*(v6 + 8))(v8, v5);
  v23 = SummaryService.update(listState:)(v4);
  (*(v2 + 8))(v4, v25, v23);
  sub_1DA86E1BC();

  return result;
}

uint64_t sub_1DA871288()
{
  v1 = v0;
  v2 = sub_1DA93FEC4();
  v155 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v182 = &v137 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v172 = &v137 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v166 = &v137 - v7;
  v188 = sub_1DA9401F4();
  v168 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v9 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v171 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v173 = &v137 - v11;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AE0, &unk_1DA9656A0);
  v12 = *(v157 - 8);
  v13 = MEMORY[0x1EEE9AC00](v157);
  v140 = &v137 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v158 = &v137 - v15;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
  v156 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v160 = &v137 - v16;
  v17 = sub_1DA9408C4();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v137 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v1 + 56);
  *v20 = v21;
  (*(v18 + 104))(v20, *MEMORY[0x1E69E8020], v17);
  v22 = v21;
  LOBYTE(v21) = sub_1DA9408F4();
  (*(v18 + 8))(v20, v17);
  if ((v21 & 1) == 0)
  {
    goto LABEL_110;
  }

  v23 = sub_1DA847DA8(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AA0, &qword_1DA95CB10);
  v24 = sub_1DA940464();
  swift_endAccess();
  v25 = v24;
  v144 = *(v24 + 16);
  if (!v144)
  {
    goto LABEL_97;
  }

  v138 = v23;
  v184 = v2;
  v139 = v1;
  v26 = 0;
  v153 = v24 + ((*(v156 + 80) + 32) & ~*(v156 + 80));
  v152 = v156 + 16;
  v151 = (v12 + 88);
  v150 = *MEMORY[0x1E69DF238];
  v149 = *MEMORY[0x1E69DF248];
  v148 = *MEMORY[0x1E69DF230];
  v147 = *MEMORY[0x1E69DF218];
  v146 = *MEMORY[0x1E69DF228];
  v145 = *MEMORY[0x1E69DF210];
  v142 = (v156 + 8);
  v141 = (v12 + 8);
  v27 = v171;
  v175 = v171 + 16;
  v169 = (v171 + 8);
  v181 = (v155 + 16);
  v180 = (v155 + 32);
  v154 = MEMORY[0x1E69E7CC0];
  v170 = v10;
  v28 = v173;
  v29 = v157;
  v143 = v24;
  v165 = v168 + 16;
  v164 = (v155 + 8);
  v163 = v9;
  v162 = (v168 + 8);
  while (1)
  {
    if (v26 >= *(v25 + 16))
    {
      goto LABEL_105;
    }

    v30 = *(v156 + 72);
    v159 = v26;
    v31 = v160;
    v32 = v161;
    (*(v156 + 16))(v160, v153 + v30 * v26, v161);
    sub_1DA940364();
    v33 = v158;
    v34 = (*v151)(v158, v29);
    v35 = v34 == v150 || v34 == v149;
    v36 = v35 || v34 == v148;
    v37 = v36 || v34 == v147;
    v38 = v37 || v34 == v146;
    if (v38 || v34 == v145)
    {
      break;
    }

    (*v142)(v31, v32);
    (*v141)(v33, v29);
LABEL_4:
    v26 = v159 + 1;
    v25 = v143;
    if (v159 + 1 == v144)
    {

      v23 = v138;
      v135 = v154;
      goto LABEL_98;
    }
  }

  v178 = sub_1DA84900C(MEMORY[0x1E69E7CC0]);
  v40 = sub_1DA940424();
  v41 = v40;
  v177 = *(v40 + 16);
  if (v177)
  {
    v42 = 0;
    v176 = v40 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v43 = v169;
    v44 = v178;
    v167 = v40;
    while (1)
    {
      if (v42 >= *(v41 + 16))
      {
        goto LABEL_101;
      }

      (*(v27 + 16))(v28, v176 + *(v27 + 72) * v42, v10);
      v183 = sub_1DA9403C4();
      v185 = v45;
      if (v45)
      {
        break;
      }

      (*v43)(v28, v10);
LABEL_26:
      if (++v42 == v177)
      {
        v178 = v44;

        v29 = v157;
        goto LABEL_51;
      }
    }

    if (v44[2] && (v46 = sub_1DA85A4B4(v183, v185), (v47 & 1) != 0))
    {
      v48 = *(v44[7] + 8 * v46);
      v190 = v48;
    }

    else
    {
      v48 = MEMORY[0x1E69E7CD0];
      v190 = MEMORY[0x1E69E7CD0];
    }

    v179 = v42;
    v49 = sub_1DA940394();
    v50 = *(v49 + 16);
    if (v50)
    {
      v178 = v44;
      v51 = (*(v168 + 80) + 32) & ~*(v168 + 80);
      i = v49;
      v52 = v49 + v51;
      v53 = *(v168 + 72);
      v186 = *(v168 + 16);
      v187 = v53;
      v54 = v184;
      v55 = v188;
      v56 = v172;
      v57 = v164;
      v58 = v163;
      v59 = v162;
      v60 = v166;
      do
      {
        v186(v58, v52, v55);
        sub_1DA940124();
        sub_1DA8A93F0(v60, v56);
        v55 = v188;
        (*v57)(v60, v54);
        (*v59)(v58, v55);
        v52 += v187;
        --v50;
      }

      while (v50);

      v48 = v190;
      v10 = v170;
      v27 = v171;
      v43 = v169;
      v44 = v178;
      v41 = v167;
    }

    else
    {
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v189 = v44;
    v62 = sub_1DA85A4B4(v183, v185);
    v64 = v44[2];
    v65 = (v63 & 1) == 0;
    v66 = __OFADD__(v64, v65);
    v67 = v64 + v65;
    if (v66)
    {
      goto LABEL_102;
    }

    v68 = v63;
    if (v44[3] >= v67)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v70 = v62;
        sub_1DA860D40();
        v62 = v70;
        v44 = v189;
        if (v68)
        {
          goto LABEL_44;
        }

        goto LABEL_46;
      }
    }

    else
    {
      sub_1DA85C9C0(v67, isUniquelyReferenced_nonNull_native);
      v62 = sub_1DA85A4B4(v183, v185);
      if ((v68 & 1) != (v69 & 1))
      {
        goto LABEL_111;
      }
    }

    v44 = v189;
    if (v68)
    {
LABEL_44:
      *(v44[7] + 8 * v62) = v48;

LABEL_48:
      v28 = v173;
      (*v43)(v173, v10);
      v42 = v179;
      goto LABEL_26;
    }

LABEL_46:
    v44[(v62 >> 6) + 8] |= 1 << v62;
    v71 = (v44[6] + 16 * v62);
    v72 = v185;
    *v71 = v183;
    v71[1] = v72;
    *(v44[7] + 8 * v62) = v48;
    v73 = v44[2];
    v66 = __OFADD__(v73, 1);
    v74 = v73 + 1;
    if (v66)
    {
      goto LABEL_103;
    }

    v44[2] = v74;
    goto LABEL_48;
  }

LABEL_51:
  v75 = sub_1DA849020(MEMORY[0x1E69E7CC0]);
  v76 = v178 + 64;
  v77 = 1 << *(v178 + 32);
  if (v77 < 64)
  {
    v78 = ~(-1 << v77);
  }

  else
  {
    v78 = -1;
  }

  v79 = v78 & *(v178 + 64);
  v80 = (v77 + 63) >> 6;

  v81 = 0;
  v82 = v172;
  v176 = v76;
  for (i = v80; ; v80 = i)
  {
    if (!v79)
    {
      while (1)
      {
        v85 = v81 + 1;
        if (__OFADD__(v81, 1))
        {
          break;
        }

        if (v85 >= v80)
        {

          v125 = v140;
          sub_1DA940364();
          v126 = sub_1DA940354();
          v128 = v127;
          (*v141)(v125, v29);
          v129 = v154;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v129 = sub_1DA8863EC(0, *(v129 + 2) + 1, 1, v129);
          }

          v130 = v129;
          v131 = *(v129 + 2);
          v154 = v130;
          v132 = *(v130 + 3);
          if (v131 >= v132 >> 1)
          {
            v154 = sub_1DA8863EC((v132 > 1), v131 + 1, 1, v154);
          }

          (*v142)();
          v133 = v154;
          *(v154 + 2) = v131 + 1;
          v134 = &v133[24 * v131];
          *(v134 + 4) = v126;
          *(v134 + 5) = v128;
          *(v134 + 6) = v75;

          v28 = v173;
          goto LABEL_4;
        }

        v79 = *(v76 + 8 * v85);
        ++v81;
        if (v79)
        {
          goto LABEL_62;
        }
      }

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

      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      result = sub_1DA9416E4();
      __break(1u);
      return result;
    }

    v85 = v81;
LABEL_62:
    v179 = v85;
    v86 = __clz(__rbit64(v79)) | (v85 << 6);
    v87 = *(v178 + 56);
    v88 = (*(v178 + 48) + 16 * v86);
    v90 = *v88;
    v89 = v88[1];
    v185 = v90;
    v186 = v89;
    v187 = *(v87 + 8 * v86);
    v91 = *(v187 + 16);
    v183 = v79;
    if (!v91)
    {
      v177 = MEMORY[0x1E69E7CC0];
      goto LABEL_81;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B88, &qword_1DA95D4D0);
    v92 = *(v155 + 72);
    v93 = (*(v155 + 80) + 32) & ~*(v155 + 80);
    v23 = swift_allocObject();
    v94 = _swift_stdlib_malloc_size(v23);
    if (!v92)
    {
      goto LABEL_106;
    }

    if (v94 - v93 == 0x8000000000000000 && v92 == -1)
    {
      goto LABEL_109;
    }

    v167 = v75;
    v96 = 0;
    v97 = v91;
    v98 = 0;
    v99 = v97;
    v23[2] = v97;
    v23[3] = 2 * ((v94 - v93) / v92);
    v100 = v187 + 56;
    v101 = 1 << *(v187 + 32);
    v102 = v101 < 64 ? ~(-1 << v101) : -1;
    v103 = v102 & *(v187 + 56);
    v177 = v23;
    v104 = v23 + v93;
    v105 = (v101 + 63) >> 6;
    if (!v103)
    {
      break;
    }

    while (1)
    {
      v106 = v96;
LABEL_76:
      ++v98;
      v107 = v182;
      v23 = v184;
      (*v181)(v182, *(v187 + 48) + (__clz(__rbit64(v103)) | (v106 << 6)) * v92, v184);
      (*v180)(v104, v107, v23);
      if (v98 == v99)
      {
        break;
      }

      v103 &= v103 - 1;
      v104 += v92;
      v96 = v106;
      if (!v103)
      {
        goto LABEL_73;
      }
    }

    v82 = v172;
    v10 = v170;
    v27 = v171;
    v29 = v157;
    v75 = v167;
LABEL_81:
    v108 = v186;

    v109 = swift_isUniquelyReferenced_nonNull_native();
    v190 = v75;
    v110 = sub_1DA85A4B4(v185, v108);
    v112 = v75[2];
    v113 = (v111 & 1) == 0;
    v66 = __OFADD__(v112, v113);
    v114 = v112 + v113;
    if (v66)
    {
      goto LABEL_104;
    }

    if (v75[3] >= v114)
    {
      v117 = v183;
      if ((v109 & 1) == 0)
      {
        v122 = v82;
        v123 = v110;
        v124 = v111;
        sub_1DA860D2C();
        v111 = v124;
        v110 = v123;
        v82 = v122;
      }

      v76 = v176;
    }

    else
    {
      v115 = v111;
      sub_1DA85C9AC(v114, v109);
      v110 = sub_1DA85A4B4(v185, v186);
      if ((v115 & 1) != (v116 & 1))
      {
        goto LABEL_111;
      }

      v111 = v115;
      v76 = v176;
      v117 = v183;
    }

    v79 = (v117 - 1) & v117;
    if (v111)
    {
      v83 = v82;
      v84 = v110;

      v75 = v190;
      *(v190[7] + 8 * v84) = v177;
      v82 = v83;
    }

    else
    {
      v75 = v190;
      v190[(v110 >> 6) + 8] |= 1 << v110;
      v118 = (v75[6] + 16 * v110);
      v119 = v186;
      *v118 = v185;
      v118[1] = v119;
      *(v75[7] + 8 * v110) = v177;
      v120 = v75[2];
      v66 = __OFADD__(v120, 1);
      v121 = v120 + 1;
      if (v66)
      {
        goto LABEL_107;
      }

      v75[2] = v121;
    }

    v81 = v179;
  }

LABEL_73:
  while (1)
  {
    v106 = v96 + 1;
    if (__OFADD__(v96, 1))
    {
      break;
    }

    if (v106 >= v105)
    {
      goto LABEL_108;
    }

    v103 = *(v100 + 8 * v106);
    ++v96;
    if (v103)
    {
      goto LABEL_76;
    }
  }

  __break(1u);
LABEL_97:

  v135 = MEMORY[0x1E69E7CC0];
LABEL_98:
  sub_1DA92AA04(1, v135, v23);
}

double sub_1DA8722E0()
{
  v1 = sub_1DA9407F4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DA940854();
  v5 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[1] = *(v0 + 48);
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_1DA87E018;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_86;
  v9 = _Block_copy(aBlock);

  sub_1DA940824();
  v13 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACFF0(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0, MEMORY[0x1E69E6328]);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v7, v4, v9);
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v12);

  return result;
}

uint64_t sub_1DA8725AC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v105 = a4;
  v100 = a1;
  v87 = sub_1DA93FAF4();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v101 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AE0, &unk_1DA9656A0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v91 = &v80 - v11;
  v12 = sub_1DA9408C4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v5 + 56);
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8020], v12);
  v17 = v16;
  LOBYTE(v16) = sub_1DA9408F4();
  result = (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AE8, &qword_1DA95CC80);
  v19 = *(v10 + 72);
  v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1DA95CAF0;
  v98 = v21;
  v22 = v21 + v20;
  v24 = v10 + 104;
  v23 = *(v10 + 104);
  (v23)(v22, *MEMORY[0x1E69DF210], v9);
  (v23)(v22 + v19, *MEMORY[0x1E69DF238], v9);
  (v23)(v22 + 2 * v19, *MEMORY[0x1E69DF248], v9);
  v89 = 2 * v19;
  v88 = v19;
  v25 = *MEMORY[0x1E69DF230];
  v102 = v23;
  v103 = v22;
  v90 = 3 * v19;
  (v23)(v22 + 3 * v19, v25, v9);
  v26 = &qword_1ECBD5000;
  v106 = a2;
  v107 = v5;
  v99 = a3;
  if (a3)
  {
    v27 = v10;
    v28 = a3;
    v29 = [v28 notificationSettings];
    v30 = [v29 lockScreenSetting];

    v31 = [v105 notificationSettings];
    v32 = [v31 lockScreenSetting];

    if (v30 == v32)
    {

      v97 = 0;
      a3 = v99;
      v5 = v107;
LABEL_9:
      v33 = v106;
      v26 = &qword_1ECBD5000;
      goto LABEL_10;
    }

    v34 = [v105 notificationSettings];
    v35 = [v34 lockScreenSetting];

    v5 = v107;
    if (v35 != 1)
    {

      v97 = 0;
      a3 = v99;
      goto LABEL_9;
    }

    v36 = OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_list;
    v37 = *(v107 + 40);
    v97 = *MEMORY[0x1E69DF240];
    v38 = v91;
    v39 = v102;
    (v102)(v91);
    swift_beginAccess();
    v95 = v28;
    v84 = sub_1DA880680;
    v40 = v103;
    v83 = v37;
    LODWORD(v94) = sub_1DA8730F0(v103, v38, v37, v5 + v36, sub_1DA879D9C, sub_1DA880680);
    swift_endAccess();
    v104 = v27;
    v82 = *(v27 + 8);
    v82(v38, v9);
    v41 = v97;
    (v39)(v38, v97, v9);
    swift_beginAccess();
    v42 = v84;
    LODWORD(v93) = sub_1DA8730F0(v40 + v88, v38, v37, v107 + v36, sub_1DA879D9C, v84);
    swift_endAccess();
    v43 = v82;
    v82(v38, v9);
    (v39)(v38, v41, v9);
    swift_beginAccess();
    v44 = v83;
    v85 = sub_1DA8730F0(v103 + v89, v38, v83, v107 + v36, sub_1DA879D9C, v42);
    swift_endAccess();
    v43(v38, v9);
    (v39)(v38, v97, v9);
    swift_beginAccess();
    v10 = v104;
    v45 = v107 + v36;
    v26 = &qword_1ECBD5000;
    LODWORD(v40) = sub_1DA8730F0(v103 + v90, v38, v44, v45, sub_1DA879D9C, v42);
    swift_endAccess();
    v43(v38, v9);
    v5 = v107;

    v97 = v40 | v85 | v93 | v94;
    a3 = v99;
    v33 = v106;
  }

  else
  {
    v97 = 0;
    v33 = a2;
  }

LABEL_10:
  v46 = [v105 muteAssertion];
  v47 = v100;
  if (v46)
  {
    v48 = v46;
    v104 = v10;
    v96 = v24;
    v49 = v9;
    v50 = v101;
    sub_1DA93FAC4();
    v51 = v26[333];
    v93 = *(v5 + 40);
    LODWORD(v95) = *MEMORY[0x1E69DF240];
    v52 = v33;
    v53 = v91;
    v54 = (v102)(v91);
    v94 = &v80;
    MEMORY[0x1EEE9AC00](v54);
    *(&v80 - 4) = v47;
    *(&v80 - 3) = v52;
    *(&v80 - 2) = v48;
    *(&v80 - 1) = v50;
    v82 = v51;
    swift_beginAccess();
    v84 = sub_1DA87BF8C;
    v55 = v93;
    v85 = sub_1DA873B24(v103, v53, v93, sub_1DA87BF8C, (&v80 - 6));
    swift_endAccess();
    v94 = *(v104 + 8);
    v104 += 8;
    (v94)(v53, v49);
    v56 = v95;
    v57 = v102;
    v58 = (v102)(v53, v95, v49);
    v81 = &v80;
    MEMORY[0x1EEE9AC00](v58);
    v59 = v106;
    *(&v80 - 4) = v47;
    *(&v80 - 3) = v59;
    *(&v80 - 2) = v48;
    *(&v80 - 1) = v50;
    swift_beginAccess();
    v60 = v103;
    v61 = v55;
    v62 = v84;
    LODWORD(v88) = sub_1DA873B24(v103 + v88, v53, v61, v84, (&v80 - 6));
    swift_endAccess();
    v92 = v49;
    v63 = v48;
    v83 = v48;
    v64 = v94;
    (v94)(v53, v49);
    v65 = (v57)(v53, v56, v49);
    v81 = &v80;
    MEMORY[0x1EEE9AC00](v65);
    v67 = v100;
    v66 = v101;
    v68 = v106;
    *(&v80 - 4) = v100;
    *(&v80 - 3) = v68;
    *(&v80 - 2) = v63;
    *(&v80 - 1) = v66;
    swift_beginAccess();
    v69 = v60 + v89;
    v70 = v93;
    LODWORD(v89) = sub_1DA873B24(v69, v53, v93, v62, (&v80 - 6));
    swift_endAccess();
    v71 = v92;
    (v64)(v53, v92);
    v72 = (v102)(v53, v95, v71);
    v102 = &v80;
    MEMORY[0x1EEE9AC00](v72);
    v73 = v106;
    *(&v80 - 4) = v67;
    *(&v80 - 3) = v73;
    v74 = v83;
    *(&v80 - 2) = v83;
    *(&v80 - 1) = v66;
    swift_beginAccess();
    a3 = v99;
    v75 = v62;
    v76 = v106;
    LODWORD(v71) = sub_1DA873B24(v103 + v90, v53, v70, v75, (&v80 - 6));
    swift_endAccess();
    v77 = v53;
    v33 = v76;
    (v94)(v77, v92);

    v78 = v71 | v89 | v88 | v85 | v97;
    (*(v86 + 8))(v101, v87);
  }

  else
  {

    v67 = v47;
    v78 = v97;
  }

  swift_beginAccess();
  v79 = sub_1DA87462C(v67, v33, a3, v105);
  swift_endAccess();
  return (v79 | v78) & 1;
}

uint64_t sub_1DA8730F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(unint64_t), uint64_t a6)
{
  v90 = a6;
  v91 = a3;
  v92 = a5;
  v9 = sub_1DA9401F4();
  v93 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v70 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AE0, &unk_1DA9656A0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v70 - v17;
  v75 = sub_1DA940294();
  v77 = *(v75 - 8);
  v19 = MEMORY[0x1EEE9AC00](v75);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v76 = &v70 - v22;
  v23 = sub_1DA8779F8(a1);
  if (v24)
  {
    return 0;
  }

  v25 = v23;
  v80 = v12;
  v89 = a2;
  v84 = sub_1DA874D94(a2);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AA0, &qword_1DA95CB10);
  v78 = a4;
  v26 = sub_1DA940454();
  v28 = v27;
  v29 = *v27;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v28 = v29;
  if ((result & 1) == 0)
  {
    goto LABEL_34;
  }

  for (; (v25 & 0x8000000000000000) == 0; *v28 = result)
  {
    if (v25 >= v29[2])
    {
      goto LABEL_36;
    }

    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48) - 8);
    v82 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v32 = v29 + v82;
    v33 = *(v31 + 72);
    v34 = sub_1DA8767B0(&v32[v33 * v25], v92);
    (v26)(v94, 0);
    if (!*(v34 + 16))
    {

      return 0;
    }

    v86 = v33;
    v72 = v34;
    v94[0] = MEMORY[0x1E69E7CC0];
    v35 = v16;
    v36 = sub_1DA7ACFF0(&qword_1ECBD5AF0, MEMORY[0x1E69DF1B0], MEMORY[0x1E69DF1C0]);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AF8, &qword_1DA95CC88);
    sub_1DA7AD11C(&qword_1ECBD5B00, &qword_1ECBD5AF8, &qword_1DA95CC88, MEMORY[0x1E69E6328]);
    v88 = v37;
    v38 = v75;
    v92 = v36;
    sub_1DA9411D4();
    (*(v35 + 16))(v18, v89, v15);
    if ((*(v35 + 88))(v18, v15) == *MEMORY[0x1E69DF240])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B10, &unk_1DA95CC90);
      v39 = v77;
      v40 = swift_allocObject();
      v40[1] = xmmword_1DA9596E0;
      sub_1DA940284();
      v94[0] = v40;
      v41 = v38;
      sub_1DA9411D4();
      v42 = v76;
      (*(v39 + 40))(v76, v21, v38);
      v15 = v78;
    }

    else
    {
      (*(v35 + 8))(v18, v15);
      v15 = v78;
      v41 = v38;
      v39 = v77;
      v42 = v76;
    }

    sub_1DA9411C4();
    sub_1DA7ACFF0(&qword_1ECBD5B08, MEMORY[0x1E69DF1B0], MEMORY[0x1E69DF1B8]);
    v43 = sub_1DA9409F4();
    v71 = *(v39 + 8);
    v71(v21, v41);
    v77 = v39 + 8;
    if (v43)
    {
      v21 = 0;
      v45 = v72;
      v16 = *(v72 + 16);
      if (!v16)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v21 = 0;
      v45 = sub_1DA87C7EC(v72, v42);

      v16 = *(v45 + 16);
      if (!v16)
      {
LABEL_30:

LABEL_31:
        v71(v42, v41);
        return 1;
      }
    }

    v92 = *(v93 + 16);
    v46 = *(v93 + 80);
    v88 = *(v91 + 16);
    v72 = v45;
    v18 = (v45 + ((v46 + 32) & ~v46));
    v47 = *(v93 + 72);
    v81 = v86 * v84;
    v93 += 16;
    v86 = (v93 - 8);
    v87 = v47;
    *&v44 = 136315138;
    v74 = v44;
    v89 = v9;
    v73 = v14;
    (v92)(v14, v18, v9);
    while (1)
    {
      v49 = sub_1DA940014();
      v50 = MEMORY[0x1EEE9AC00](v49);
      *(&v70 - 4) = v91;
      *(&v70 - 3) = v50;
      *(&v70 - 2) = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD8, &unk_1DA95CC70);
      sub_1DA940FE4();

      v25 = v94[0];
      if (!v94[0])
      {
        v85 = v21;
        v56 = v14;
        if (qword_1ECBD47C8 != -1)
        {
          swift_once();
        }

        v57 = sub_1DA9405A4();
        __swift_project_value_buffer(v57, qword_1ECBE3DD0);
        v58 = v80;
        (v92)(v80, v56, v9);
        v59 = sub_1DA940584();
        v60 = sub_1DA940F14();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v94[0] = v62;
          *v61 = v74;
          v79 = sub_1DA940014();
          v64 = v63;
          v65 = *v86;
          (*v86)(v58, v89);
          v66 = v65;
          v67 = sub_1DA7AE6E8(v79, v64, v94);
          v15 = v78;

          *(v61 + 4) = v67;
          _os_log_impl(&dword_1DA7A9000, v59, v60, "Could not find notification source settings for bundle identifier: %s", v61, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v62);
          v68 = v62;
          v9 = v89;
          MEMORY[0x1E12739F0](v68, -1, -1);
          MEMORY[0x1E12739F0](v61, -1, -1);

          v69 = v73;
          v66(v73, v9);
          v14 = v69;
        }

        else
        {

          v48 = *v86;
          (*v86)(v58, v9);
          v48(v56, v9);
          v14 = v56;
        }

        v21 = v85;
        goto LABEL_16;
      }

      v52 = [v94[0] notificationSettings];
      v29 = [v52 groupingSetting];

      v28 = sub_1DA940454();
      v54 = v53;
      v26 = *v53;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v54 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = sub_1DA884B48(v26);
        *v54 = v26;
      }

      v9 = v89;
      if ((v84 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v84 >= *(v26 + 16))
      {
        goto LABEL_33;
      }

      sub_1DA875120(v14, v29);
      (v28)(v94, 0);

      (*v86)(v14, v9);
LABEL_16:
      v18 += v87;
      if (!--v16)
      {

        v41 = v75;
        v42 = v76;
        goto LABEL_31;
      }

      (v92)(v14, v18, v9);
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    result = sub_1DA884B48(v29);
    v29 = result;
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1DA873B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), void (*a5)(void, void, void))
{
  v89 = a4;
  v90 = a5;
  v78 = a3;
  v8 = sub_1DA9401F4();
  v91 = *(v8 - 1);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v69 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AE0, &unk_1DA9656A0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v69 - v16;
  v75 = sub_1DA940294();
  v76 = *(v75 - 8);
  v18 = MEMORY[0x1EEE9AC00](v75);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v74 = &v69 - v21;
  v85 = v5;
  v22 = sub_1DA8779F8(a1);
  if (v23)
  {
    return 0;
  }

  v25 = v22;
  v79 = v11;
  v88 = a2;
  v83 = sub_1DA874D94(a2);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AA0, &qword_1DA95CB10);
  v26 = sub_1DA940454();
  v28 = v27;
  v29 = *v27;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v28 = v29;
  if ((result & 1) == 0)
  {
    goto LABEL_34;
  }

  if ((v25 & 0x8000000000000000) == 0)
  {
LABEL_5:
    if (v25 >= v29[2])
    {
      goto LABEL_36;
    }

    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48) - 8);
    v81 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v31 = *(v30 + 72);
    v32 = sub_1DA876A88(v89, v90);
    v26(v92, 0);
    if (!*(v32 + 16))
    {

      return 0;
    }

    v89 = v31;
    v90 = v20;
    v71 = v32;
    v92[0] = MEMORY[0x1E69E7CC0];
    sub_1DA7ACFF0(&qword_1ECBD5AF0, MEMORY[0x1E69DF1B0], MEMORY[0x1E69DF1C0]);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AF8, &qword_1DA95CC88);
    sub_1DA7AD11C(&qword_1ECBD5B00, &qword_1ECBD5AF8, &qword_1DA95CC88, MEMORY[0x1E69E6328]);
    v34 = v74;
    v87 = v33;
    v35 = v75;
    sub_1DA9411D4();
    (*(v15 + 16))(v17, v88, v14);
    if ((*(v15 + 88))(v17, v14) == *MEMORY[0x1E69DF240])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B10, &unk_1DA95CC90);
      v36 = v76;
      v37 = swift_allocObject();
      v37[1] = xmmword_1DA9596E0;
      v34 = v74;
      v35 = v75;
      sub_1DA940284();
      v92[0] = v37;
      v38 = v90;
      sub_1DA9411D4();
      (*(v36 + 40))(v34, v38, v35);
      v14 = v78;
    }

    else
    {
      (*(v15 + 8))(v17, v14);
      v14 = v78;
      v36 = v76;
      v38 = v90;
    }

    sub_1DA9411C4();
    sub_1DA7ACFF0(&qword_1ECBD5B08, MEMORY[0x1E69DF1B0], MEMORY[0x1E69DF1B8]);
    v39 = sub_1DA9409F4();
    v41 = *(v36 + 8);
    v40 = v36 + 8;
    v70 = v41;
    v41(v38, v35);
    v43 = v89;
    if (v39)
    {
      v25 = 0;
      v44 = v71;
      v15 = *(v71 + 16);
      if (!v15)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v25 = 0;
      v44 = sub_1DA87C7EC(v71, v34);

      v15 = *(v44 + 16);
      if (!v15)
      {
LABEL_30:

LABEL_31:
        v70(v34, v35);
        return 1;
      }
    }

    v76 = v40;
    v90 = *(v91 + 16);
    v45 = *(v91 + 80);
    v88 = *(v14 + 16);
    v71 = v44;
    v17 = (v44 + ((v45 + 32) & ~v45));
    v46 = *(v91 + 72);
    v80 = v43 * v83;
    v91 += 16;
    v86 = (v91 - 8);
    v87 = v46;
    *&v42 = 136315138;
    v73 = v42;
    v89 = v8;
    v72 = v13;
    v90(v13, v17, v8);
    while (1)
    {
      v48 = sub_1DA940014();
      v49 = MEMORY[0x1EEE9AC00](v48);
      *(&v69 - 4) = v14;
      *(&v69 - 3) = v49;
      *(&v69 - 2) = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD8, &unk_1DA95CC70);
      sub_1DA940FE4();

      v20 = v92[0];
      if (v92[0])
      {
        v51 = [v92[0] notificationSettings];
        v26 = [v51 groupingSetting];

        v28 = sub_1DA940454();
        v53 = v52;
        v29 = *v52;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v53 = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29 = sub_1DA884B48(v29);
          *v53 = v29;
        }

        v8 = v89;
        if ((v83 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          result = sub_1DA884B48(v29);
          v29 = result;
          *v28 = result;
          if ((v25 & 0x8000000000000000) != 0)
          {
            break;
          }

          goto LABEL_5;
        }

        if (v83 >= v29[2])
        {
          goto LABEL_33;
        }

        sub_1DA875120(v13, v26);
        (v28)(v92, 0);

        (*v86)(v13, v8);
      }

      else
      {
        v84 = v25;
        v55 = v13;
        if (qword_1ECBD47C8 != -1)
        {
          swift_once();
        }

        v56 = sub_1DA9405A4();
        __swift_project_value_buffer(v56, qword_1ECBE3DD0);
        v57 = v79;
        v90(v79, v55, v8);
        v58 = sub_1DA940584();
        v59 = sub_1DA940F14();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v92[0] = v61;
          *v60 = v73;
          v77 = sub_1DA940014();
          v63 = v62;
          v64 = *v86;
          (*v86)(v57, v89);
          v65 = v64;
          v66 = sub_1DA7AE6E8(v77, v63, v92);
          v14 = v78;

          *(v60 + 4) = v66;
          _os_log_impl(&dword_1DA7A9000, v58, v59, "Could not find notification source settings for bundle identifier: %s", v60, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v61);
          v67 = v61;
          v8 = v89;
          MEMORY[0x1E12739F0](v67, -1, -1);
          MEMORY[0x1E12739F0](v60, -1, -1);

          v68 = v72;
          v65(v72, v8);
          v13 = v68;
        }

        else
        {

          v47 = *v86;
          (*v86)(v57, v8);
          v47(v55, v8);
          v13 = v55;
        }

        v25 = v84;
      }

      v17 += v87;
      if (!--v15)
      {

        v35 = v75;
        v34 = v74;
        goto LABEL_31;
      }

      v90(v13, v17, v8);
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

id sub_1DA87454C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (sub_1DA940014() == a2 && v6 == a3)
  {
  }

  else
  {
    v7 = sub_1DA941684();

    v8 = 0;
    if ((v7 & 1) == 0)
    {
      return v8;
    }
  }

  sub_1DA940094();
  if (v9)
  {
    v10 = sub_1DA940A04();
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_1DA93FA44();
  v8 = [a4 isActiveForThreadIdentifier:v10 currentDate:v11];

  return v8;
}

uint64_t sub_1DA87462C(void (*a1)(uint64_t, unint64_t, uint64_t), uint64_t a2, void *a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AA0, &qword_1DA95CB10);
  v6 = *(sub_1DA940464() + 16);

  v7 = 0;
  if (!v6)
  {
    return v7 & 1;
  }

  v8 = 0;
  while (1)
  {
    v9 = sub_1DA940454();
    v11 = v10;
    v12 = *v10;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v11 = v12;
    if ((result & 1) == 0)
    {
      result = sub_1DA884B48(v12);
      v12 = result;
      *v11 = result;
    }

    if (v8 >= v12[2])
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
    v14 = sub_1DA877D04(a1, a2, a3, a4);
    v9(v17, 0);
    v7 |= v14;
    if (v6 == ++v8)
    {
      return v7 & 1;
    }
  }

  __break(1u);
  return result;
}

double sub_1DA8747D8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AE0, &unk_1DA9656A0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = *(v4 + 104);
  v10(&v17 - v8, *MEMORY[0x1E69DF248], v3);
  v10(v7, *MEMORY[0x1E69DF240], v3);
  v11 = *(a1 + 40);
  v12 = OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_list;
  swift_beginAccess();

  v14 = sub_1DA8AD2F4(v13);

  sub_1DA87EA0C(v9, v7, v11, a1 + v12, v14);
  swift_endAccess();
  swift_bridgeObjectRelease_n();
  v15 = *(v4 + 8);
  v15(v7, v3);
  v15(v9, v3);
  return sub_1DA86A66C();
}

Swift::Void __swiftcall NotificationGroupService.summaryServiceDidReceiveGroupSummaries(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = sub_1DA9407F4();
  v15 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DA940854();
  v7 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 56);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2]._rawValue = v10;
  v11[3]._rawValue = a1._rawValue;
  aBlock[4] = sub_1DA87BBFC;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_55;
  v12 = _Block_copy(aBlock);

  sub_1DA940824();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACFF0(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0, MEMORY[0x1E69E6328]);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v9, v6, v12);
  _Block_release(v12);
  (*(v15 + 8))(v6, v4);
  (*(v7 + 8))(v9, v14);
}

double sub_1DA874CBC(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1DA86D5F4(a2);
  }

  return result;
}

unint64_t sub_1DA874D94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AE0, &unk_1DA9656A0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  result = sub_1DA8779F8(a1);
  if (v14)
  {
    (*(v3 + 16))(v5, a1, v2);
    sub_1DA9401F4();
    v15 = MEMORY[0x1E69DF180];
    sub_1DA7ACFF0(&qword_1ECBD5A70, MEMORY[0x1E69DF180], MEMORY[0x1E69DF1A0]);
    sub_1DA7ACFF0(&qword_1ECBD5A78, v15, MEMORY[0x1E69DF188]);
    sub_1DA7ACFF0(&qword_1ECBD5A80, v15, MEMORY[0x1E69DF198]);
    sub_1DA940404();
    (*(v7 + 16))(v10, v12, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AA0, &qword_1DA95CB10);
    v25 = sub_1DA940454();
    v17 = v16;
    v18 = *v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v17 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_1DA886044(0, v18[2] + 1, 1, v18);
      *v17 = v18;
    }

    v21 = v18[2];
    v20 = v18[3];
    if (v21 >= v20 >> 1)
    {
      v18 = sub_1DA886044((v20 > 1), v21 + 1, 1, v18);
      *v17 = v18;
    }

    v18[2] = v21 + 1;
    (*(v7 + 32))(v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v21, v10, v6);
    v25(v26, 0);
    v22 = sub_1DA940464();
    (*(v7 + 8))(v12, v6);
    v23 = *(v22 + 16);

    return v23 - 1;
  }

  return result;
}

uint64_t sub_1DA875120(uint64_t a1, uint64_t a2)
{
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC8, &qword_1DA95CC60);
  v4 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v6 = (&v86 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v8 = *(v7 - 8);
  v89 = v7;
  v90 = v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v86 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v86 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v86 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v86 = &v86 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v87 = &v86 - v23;
  v91 = a1;
  v24 = sub_1DA940014();
  v26 = v25;
  if (a2 == 1)
  {
    goto LABEL_18;
  }

  if (a2)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4F00, qword_1DA958E20);
    v47 = sub_1DA9401F4();
    v48 = *(v47 - 8);
    v49 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1DA9596E0;
    (*(v48 + 16))(v50 + v49, v91, v47);
    (*(v4 + 104))(v6, *MEMORY[0x1E69DF250], v88);
    v51 = MEMORY[0x1E69DF180];
    sub_1DA7ACFF0(&qword_1ECBD5A70, MEMORY[0x1E69DF180], MEMORY[0x1E69DF1A0]);
    sub_1DA7ACFF0(&qword_1ECBD5A78, v51, MEMORY[0x1E69DF188]);
    sub_1DA7ACFF0(&qword_1ECBD5A80, v51, MEMORY[0x1E69DF198]);
    sub_1DA940374();
    v53 = v89;
    v52 = v90;
    (*(v90 + 16))(v11, v14, v89);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
    v54 = sub_1DA940414();
    v56 = v55;
    v57 = *v55;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v56 = v57;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v57 = sub_1DA886020(0, v57[2] + 1, 1, v57);
      *v56 = v57;
    }

    v60 = v57[2];
    v59 = v57[3];
    if (v60 >= v59 >> 1)
    {
      v57 = sub_1DA886020((v59 > 1), v60 + 1, 1, v57);
      *v56 = v57;
    }

    v57[2] = v60 + 1;
    (*(v52 + 32))(v57 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v60, v11, v53);
    v54(v93, 0);
    (*(v52 + 8))(v14, v53);
    goto LABEL_28;
  }

  v27 = sub_1DA940094();
  if (!v28)
  {
LABEL_18:
    v61 = sub_1DA8788B4(v24, v26, 0, 0);
    if (v62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4F00, qword_1DA958E20);
      v63 = sub_1DA9401F4();
      v64 = *(v63 - 8);
      v65 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1DA9596E0;
      (*(v64 + 16))(v66 + v65, v91, v63);
      *v6 = v24;
      v6[1] = v26;
      (*(v4 + 104))(v6, *MEMORY[0x1E69DF258], v88);
      v67 = MEMORY[0x1E69DF180];
      sub_1DA7ACFF0(&qword_1ECBD5A70, MEMORY[0x1E69DF180], MEMORY[0x1E69DF1A0]);
      sub_1DA7ACFF0(&qword_1ECBD5A78, v67, MEMORY[0x1E69DF188]);
      sub_1DA7ACFF0(&qword_1ECBD5A80, v67, MEMORY[0x1E69DF198]);
      sub_1DA940374();
      v69 = v89;
      v68 = v90;
      (*(v90 + 16))(v17, v20, v89);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
      v70 = sub_1DA940414();
      v72 = v71;
      v73 = *v71;
      v74 = swift_isUniquelyReferenced_nonNull_native();
      *v72 = v73;
      if ((v74 & 1) == 0)
      {
        v73 = sub_1DA886020(0, v73[2] + 1, 1, v73);
        *v72 = v73;
      }

      v76 = v73[2];
      v75 = v73[3];
      if (v76 >= v75 >> 1)
      {
        v73 = sub_1DA886020((v75 > 1), v76 + 1, 1, v73);
        *v72 = v73;
      }

      v73[2] = v76 + 1;
      (*(v68 + 32))(v73 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v76, v17, v69);
      v70(v93, 0);
      (*(v68 + 8))(v20, v69);
      goto LABEL_28;
    }

    v40 = v61;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
    v42 = sub_1DA940414();
    v78 = v77;
    v43 = *v77;
    v79 = swift_isUniquelyReferenced_nonNull_native();
    *v78 = v43;
    if (v79)
    {
      if ((v40 & 0x8000000000000000) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v43 = sub_1DA884B34(v43);
      *v78 = v43;
      if ((v40 & 0x8000000000000000) == 0)
      {
LABEL_26:
        if (v40 < v43[2])
        {
          sub_1DA878E84(v91);
          (v42)(v93, 0);
LABEL_28:
          v92 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
          v80 = sub_1DA940414();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B18, &qword_1DA95CCA0);
          sub_1DA7AD11C(&qword_1ECBD5B20, &qword_1ECBD5B18, &qword_1DA95CCA0, MEMORY[0x1E69E6318]);
          sub_1DA7AD11C(&qword_1ECBD5B28, &qword_1ECBD5B18, &qword_1DA95CCA0, MEMORY[0x1E69E6338]);
          sub_1DA87CBC8();
          sub_1DA9409E4();
          return v80(v93, 0);
        }

LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  v29 = v27;
  v30 = v28;
  v31 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v31 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (!v31)
  {

    goto LABEL_18;
  }

  v32 = sub_1DA8788B4(v24, v26, v29, v30);
  v34 = v33;

  if (v34)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4F00, qword_1DA958E20);
    v35 = sub_1DA9401F4();
    v36 = *(v35 - 8);
    v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1DA9596E0;
    (*(v36 + 16))(v38 + v37, v91, v35);
    *v6 = v29;
    v6[1] = v30;
    v6[2] = v24;
    v6[3] = v26;
    (*(v4 + 104))(v6, *MEMORY[0x1E69DF260], v88);
    v39 = MEMORY[0x1E69DF180];
    sub_1DA7ACFF0(&qword_1ECBD5A70, MEMORY[0x1E69DF180], MEMORY[0x1E69DF1A0]);
    sub_1DA7ACFF0(&qword_1ECBD5A78, v39, MEMORY[0x1E69DF188]);
    sub_1DA7ACFF0(&qword_1ECBD5A80, v39, MEMORY[0x1E69DF198]);
    v17 = v87;
    sub_1DA940374();
    v20 = v89;
    v4 = v90;
    v24 = v86;
    (*(v90 + 16))(v86, v17, v89);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
    v40 = sub_1DA940414();
    v42 = v41;
    v43 = *v41;
    v44 = swift_isUniquelyReferenced_nonNull_native();
    *v42 = v43;
    if (v44)
    {
LABEL_9:
      v46 = v43[2];
      v45 = v43[3];
      if (v46 >= v45 >> 1)
      {
        v43 = sub_1DA886020((v45 > 1), v46 + 1, 1, v43);
        *v42 = v43;
      }

      v43[2] = v46 + 1;
      (*(v4 + 32))(v43 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v46, v24, v20);
      (v40)(v93, 0);
      (*(v4 + 8))(v17, v20);
      goto LABEL_28;
    }

LABEL_36:
    v43 = sub_1DA886020(0, v43[2] + 1, 1, v43);
    *v42 = v43;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
  v82 = sub_1DA940414();
  v84 = v83;
  v85 = *v83;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v84 = v85;
  if (result)
  {
    if ((v32 & 0x8000000000000000) == 0)
    {
      goto LABEL_31;
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  result = sub_1DA884B34(v85);
  v85 = result;
  *v84 = result;
  if ((v32 & 0x8000000000000000) != 0)
  {
    goto LABEL_38;
  }

LABEL_31:
  if (v32 < v85[2])
  {
    sub_1DA878E84(v91);
    v82(v93, 0);
    goto LABEL_28;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1DA875E24(uint64_t a1, int a2)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E10, &unk_1DA958758);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v42 - v7;
  v46 = sub_1DA9401F4();
  v53 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DA93FEC4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
  v14 = *(sub_1DA940424() + 16);

  v50 = v14;
  if (v14)
  {
    v43 = v8;
    v54 = v4;
    v55 = v3;
    v15 = 0;
    v16 = (v11 + 8);
    v49 = v2;
    while (1)
    {
      v17 = sub_1DA940414();
      v19 = v18;
      v20 = *v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v19 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = sub_1DA884B34(v20);
        *v19 = v20;
      }

      result = v55;
      if (v15 >= v20[2])
      {
        break;
      }

      v58 = v17;
      v48 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v23 = *(v54 + 72);
      v56 = v15;
      v51 = v20 + v48;
      v52 = v23 * v15;
      v24 = sub_1DA940394();
      v25 = *(v24 + 16);
      if (v25)
      {
        v26 = 0;
        v27 = v24 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
        v28 = *(v53 + 72);
        while (1)
        {
          sub_1DA940124();
          v29 = sub_1DA93FEA4();
          (*v16)(v13, v10);
          if (v29)
          {
            break;
          }

          ++v26;
          v27 += v28;
          if (v25 == v26)
          {
            goto LABEL_3;
          }
        }

        v30 = v52;
        v31 = v55;
        v32 = sub_1DA940384();
        v33 = v45;
        sub_1DA8765F4(v26, sub_1DA884B20, MEMORY[0x1E69DF180], v45);
        (*(v53 + 8))(v33, v46);
        v32(v59, 0);
        v34 = sub_1DA93F844();
        v35 = 1;
        (*(*(v34 - 8) + 56))(v43, 1, 1, v34);
        sub_1DA9403F4();
        v58(v60, 0);
        if (v47)
        {
          return v35;
        }

        result = sub_1DA940424();
        if (v56 < *(result + 16))
        {
          v36 = v54;
          v37 = v44;
          (*(v54 + 16))(v44, result + v48 + v30, v31);

          v38 = sub_1DA9403E4();
          v39 = *(v36 + 8);
          v39(v37, v31);
          if (v38)
          {
            v40 = sub_1DA940414();
            sub_1DA8764AC(v56, sub_1DA884B34, &qword_1ECBD5AD0, &qword_1DA95CC68, v37);
            v39(v37, v31);
            v40(v60, 0);
          }

          v59[0] = 0;
          v41 = sub_1DA940414();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B18, &qword_1DA95CCA0);
          sub_1DA7AD11C(&qword_1ECBD5B20, &qword_1ECBD5B18, &qword_1DA95CCA0, MEMORY[0x1E69E6318]);
          sub_1DA7AD11C(&qword_1ECBD5B28, &qword_1ECBD5B18, &qword_1DA95CCA0, MEMORY[0x1E69E6338]);
          sub_1DA87CBC8();
          sub_1DA9409E4();
          v41(v60, 0);
          return 1;
        }

LABEL_20:
        __break(1u);
        return result;
      }

LABEL_3:
      v15 = v56 + 1;

      v58(v60, 0);
      if (v15 == v50)
      {
        return 0;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  return 0;
}

uint64_t sub_1DA8764AC@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *v5;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v11);
    v11 = result;
  }

  v13 = *(v11 + 16);
  if (v13 <= a1)
  {
    __break(1u);
  }

  else
  {
    v14 = v13 - 1;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v16 = *(v15 - 8);
    v17 = *(v16 + 72);
    v18 = v11 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + v17 * a1;
    result = (*(v16 + 32))(a5, v18, v15);
    if (v17 > 0 || v18 >= v18 + v17 + v17 * (v14 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    *(v11 + 16) = v14;
    *v5 = v11;
  }

  return result;
}

uint64_t sub_1DA8765F4@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v9 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v9);
    v9 = result;
  }

  v11 = *(v9 + 16);
  if (v11 <= a1)
  {
    __break(1u);
  }

  else
  {
    v12 = v11 - 1;
    v13 = a3(0);
    v14 = *(v13 - 8);
    v15 = *(v14 + 72);
    v16 = v9 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + v15 * a1;
    result = (*(v14 + 32))(a4, v16, v13);
    if (v15 > 0 || v16 >= v16 + v15 + v15 * (v12 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v15)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    *(v9 + 16) = v12;
    *v4 = v9;
  }

  return result;
}

uint64_t sub_1DA87670C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DA884BE8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v3 + 24 * a1;
    v7 = *(v6 + 32);
    v8 = v5 - 1;
    memmove((v6 + 32), (v6 + 56), 24 * (v5 - 1 - a1));
    *(v3 + 16) = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1DA8767B0(uint64_t a1, uint64_t (*a2)(unint64_t))
{
  v25 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - v4;
  v28 = MEMORY[0x1E69E7CC0];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
  v6 = *(sub_1DA940424() + 16);

  HIDWORD(v22) = 0;
  v7 = v6 - 1;
  v23 = (v3 + 16);
  v24 = v3;
  v8 = (v3 + 8);
  while (1)
  {
    v9 = v7;
    if (v7-- < 1)
    {
      if ((v9 != 0) | BYTE4(v22) & 1)
      {
        return v28;
      }

      v7 = 0;
      HIDWORD(v22) = 1;
    }

    v11 = sub_1DA940414();
    v13 = v12;
    v14 = *v12;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v14;
    if ((result & 1) == 0)
    {
      result = sub_1DA884B34(v14);
      v14 = result;
      *v13 = result;
    }

    if (v9 >= v14[2])
    {
      break;
    }

    v16 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v17 = *(v24 + 72) * v9;
    v18 = v25(v14 + v16 + v17);
    v11(v27, 0);
    sub_1DA84BFA0(v18);
    result = sub_1DA940424();
    if (v9 >= *(result + 16))
    {
      goto LABEL_14;
    }

    (*v23)(v5, result + v16 + v17, v2);

    v19 = sub_1DA9403E4();
    v20 = *v8;
    (*v8)(v5, v2);
    if (v19)
    {
      v21 = sub_1DA940414();
      sub_1DA8764AC(v9, sub_1DA884B34, &qword_1ECBD5AD0, &qword_1DA95CC68, v5);
      v20(v5, v2);
      v21(v27, 0);
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1DA876A88(uint64_t (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v26 = a1;
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - v6;
  v31 = MEMORY[0x1E69E7CC0];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
  v8 = *(sub_1DA940424() + 16);

  HIDWORD(v23) = 0;
  v9 = v8 - 1;
  v24 = (v5 + 16);
  v25 = v5;
  v28 = (v5 + 8);
  while (1)
  {
    v10 = v9;
    if (v9 <= 0)
    {
      if ((v9 != 0) | BYTE4(v23) & 1)
      {
        return v31;
      }

      v9 = 0;
      HIDWORD(v23) = 1;
    }

    else
    {
      --v9;
    }

    v11 = v3;
    v12 = sub_1DA940414();
    v14 = v13;
    v15 = *v13;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v14 = v15;
    if ((result & 1) == 0)
    {
      result = sub_1DA884B34(v15);
      v15 = result;
      *v14 = result;
    }

    if (v10 >= v15[2])
    {
      break;
    }

    v17 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v18 = *(v25 + 72) * v10;
    v19 = sub_1DA87A0A0(v26, v27);
    v12(v30, 0);
    sub_1DA84BFA0(v19);
    v3 = v11;
    result = sub_1DA940424();
    if (v10 >= *(result + 16))
    {
      goto LABEL_14;
    }

    (*v24)(v7, result + v17 + v18, v4);

    v20 = sub_1DA9403E4();
    v21 = *v28;
    (*v28)(v7, v4);
    if (v20)
    {
      v22 = sub_1DA940414();
      sub_1DA8764AC(v10, sub_1DA884B34, &qword_1ECBD5AD0, &qword_1DA95CC68, v7);
      v21(v7, v4);
      v22(v30, 0);
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1DA876D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v81 = a8;
  v80 = a7;
  v90 = a6;
  v97 = a5;
  v85 = a4;
  v89 = a3;
  v91 = a2;
  v82 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E10, &unk_1DA958758);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v76 - v14;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC8, &qword_1DA95CC60);
  v16 = *(v96 - 8);
  v17 = MEMORY[0x1EEE9AC00](v96);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v100 = &v76 - v20;
  v112 = sub_1DA9401F4();
  v21 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v111 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v76 - v25;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
  v27 = *(sub_1DA940424() + 16);

  v101 = v27;
  if (!v27)
  {
    return 0;
  }

  v84 = v19;
  v78 = v15;
  v77 = v13;
  v28 = 0;
  v103 = v24 + 16;
  v109 = (v21 + 8);
  v110 = v21 + 16;
  v92 = (v16 + 11);
  v88 = *MEMORY[0x1E69DF260];
  v104 = v24;
  v102 = (v24 + 8);
  v87 = (v16 + 1);
  v86 = (v16 + 12);
  v83 = *MEMORY[0x1E69DF258];
  v79 = v90 + 5;
  v29 = v100;
  v30 = v21;
  v98 = v21;
  v95 = v23;
  v94 = v26;
  v93 = v9;
  while (1)
  {
    v31 = v9;
    v32 = sub_1DA940424();
    if (v28 >= *(v32 + 16))
    {
      __break(1u);
      __break(1u);
      goto LABEL_68;
    }

    v99 = (*(v104 + 80) + 32) & ~*(v104 + 80);
    v33 = *(v104 + 16);
    v105 = *(v104 + 72) * v28;
    v33(v26, v32 + v99 + v105, v23);

    v21 = sub_1DA940394();
    v34 = *(v21 + 16);
    if (v34)
    {
      v107 = v28;
      v113 = MEMORY[0x1E69E7CC0];
      sub_1DA82A778(0, v34, 0);
      v16 = v113;
      v35 = *(v30 + 80);
      v106 = v21;
      v36 = v21 + ((v35 + 32) & ~v35);
      v21 = *(v30 + 72);
      v37 = *(v30 + 16);
      do
      {
        v38 = v111;
        v39 = v112;
        v37(v111, v36, v112);
        v40 = sub_1DA9400A4();
        v42 = v41;
        (*v109)(v38, v39);
        v113 = v16;
        v44 = v16[2];
        v43 = v16[3];
        if (v44 >= v43 >> 1)
        {
          sub_1DA82A778((v43 > 1), v44 + 1, 1);
          v16 = v113;
        }

        v16[2] = v44 + 1;
        v45 = &v16[2 * v44];
        v45[4] = v40;
        v45[5] = v42;
        v36 += v21;
        --v34;
      }

      while (v34);

      v23 = v95;
      v26 = v94;
      v9 = v93;
      v28 = v107;
      v29 = v100;
      if (!v16[2])
      {
        goto LABEL_3;
      }
    }

    else
    {

      v16 = MEMORY[0x1E69E7CC0];
      if (!*(MEMORY[0x1E69E7CC0] + 16))
      {
        goto LABEL_3;
      }
    }

    if (!v97)
    {
      v49 = v84;
      sub_1DA9403B4();
      v21 = v96;
      v50 = (*v92)(v49, v96);
      if (v50 != v83)
      {
        (*v102)(v26, v23);

        (*v87)(v49, v21);
        goto LABEL_4;
      }

      (*v86)(v49, v21);
      if (*v49 == v91 && v49[1] == v89)
      {

LABEL_42:
        v21 = v16[2];
        if (v21 != v90[2])
        {
LABEL_53:

          (*v102)(v26, v23);
          goto LABEL_4;
        }

        if (!v21 || v16 == v90)
        {
          goto LABEL_61;
        }

        v57 = v16 + 5;
        v58 = v79;
        while (1)
        {
          v59 = *(v57 - 1) == *(v58 - 1) && *v57 == *v58;
          if (!v59 && (sub_1DA941684() & 1) == 0)
          {
            goto LABEL_3;
          }

          v57 += 2;
          v58 += 2;
          if (!--v21)
          {
            goto LABEL_61;
          }
        }
      }

      v56 = sub_1DA941684();

      if (v56)
      {
        goto LABEL_42;
      }

      goto LABEL_3;
    }

    sub_1DA9403B4();
    v21 = v96;
    v46 = (*v92)(v29, v96);
    if (v46 != v88)
    {
      (*v102)(v26, v23);

      (*v87)(v29, v21);
      goto LABEL_4;
    }

    (*v86)(v29, v21);
    v48 = *v29;
    v47 = v29[1];
    if (v29[2] == v91 && v29[3] == v89)
    {
    }

    else
    {
      v51 = sub_1DA941684();

      if ((v51 & 1) == 0)
      {
        (*v102)(v26, v23);

        v29 = v100;
        goto LABEL_4;
      }
    }

    if (v48 == v85 && v47 == v97)
    {
      break;
    }

    v52 = sub_1DA941684();

    v29 = v100;
    if (v52)
    {
      goto LABEL_30;
    }

LABEL_3:
    (*v102)(v26, v23);

LABEL_4:
    v30 = v98;
    if (++v28 == v101)
    {
      return 0;
    }
  }

  v29 = v100;
LABEL_30:
  v21 = v16[2];
  if (v21 != v90[2])
  {
    goto LABEL_53;
  }

  if (v21 && v16 != v90)
  {
    v53 = v16 + 5;
    v54 = v79;
    do
    {
      v55 = *(v53 - 1) == *(v54 - 1) && *v53 == *v54;
      if (!v55 && (sub_1DA941684() & 1) == 0)
      {
        goto LABEL_3;
      }

      v53 += 2;
      v54 += 2;
    }

    while (--v21);
  }

  v61 = sub_1DA93F844();
  v62 = *(v61 - 8);
  v63 = v78;
  (*(v62 + 16))(v78, v82, v61);
  (*(v62 + 56))(v63, 0, 1, v61);
  v21 = sub_1DA940414();
  v16 = v64;
  v31 = *v64;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v16 = v31;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_57;
  }

LABEL_68:
  v31 = sub_1DA884B34(v31);
  *v16 = v31;
LABEL_57:
  if (v28 >= v31[2])
  {
    __break(1u);
  }

  else
  {
    sub_1DA9403F4();
    (v21)(&v113, 0);
    v21 = sub_1DA940414();
    v16 = v66;
    v31 = *v66;
    v67 = swift_isUniquelyReferenced_nonNull_native();
    *v16 = v31;
    if (v67)
    {
      goto LABEL_59;
    }
  }

  v31 = sub_1DA884B34(v31);
  *v16 = v31;
LABEL_59:
  if (v28 < v31[2])
  {
    goto LABEL_66;
  }

  __break(1u);
LABEL_61:

  v68 = sub_1DA93F844();
  v69 = *(v68 - 8);
  v70 = v77;
  (*(v69 + 16))(v77, v82, v68);
  (*(v69 + 56))(v70, 0, 1, v68);
  v21 = sub_1DA940414();
  v72 = v71;
  v73 = *v71;
  v74 = swift_isUniquelyReferenced_nonNull_native();
  *v72 = v73;
  if ((v74 & 1) == 0)
  {
    v73 = sub_1DA884B34(v73);
    *v72 = v73;
  }

  if (v28 >= v73[2])
  {
    __break(1u);
  }

  else
  {
    sub_1DA9403F4();
    (v21)(&v113, 0);
    v21 = sub_1DA940414();
    v72 = v75;
    v73 = *v75;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v72 = v73;
    if (result)
    {
      goto LABEL_65;
    }
  }

  result = sub_1DA884B34(v73);
  v73 = result;
  *v72 = result;
LABEL_65:
  if (v28 < v73[2])
  {
LABEL_66:

    sub_1DA9403D4();
    (v21)(&v113, 0);
    (*v102)(v26, v23);
    return 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1DA8779F8(uint64_t a1)
{
  v16 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AE0, &unk_1DA9656A0);
  v2 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v4 = v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AA0, &qword_1DA95CB10);
  v18 = v1;
  v19 = *(sub_1DA940464() + 16);

  v9 = 0;
  v14[1] = v6 + 8;
  v14[2] = v6 + 16;
  v14[0] = v2 + 8;
  while (1)
  {
    v10 = v9;
    if (v19 == v9)
    {
      return 0;
    }

    result = sub_1DA940464();
    if (v9 >= *(result + 16))
    {
      break;
    }

    ++v9;
    (*(v6 + 16))(v8, result + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10, v5);

    sub_1DA940364();
    (*(v6 + 8))(v8, v5);
    sub_1DA9401F4();
    v12 = MEMORY[0x1E69DF180];
    sub_1DA7ACFF0(&qword_1ECBD5A70, MEMORY[0x1E69DF180], MEMORY[0x1E69DF1A0]);
    sub_1DA7ACFF0(&qword_1ECBD5A78, v12, MEMORY[0x1E69DF188]);
    sub_1DA7ACFF0(&qword_1ECBD5A80, v12, MEMORY[0x1E69DF198]);
    v13 = sub_1DA940334();
    (*v14[0])(v4, v15);
    if (v13)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1DA877D04(void (*a1)(uint64_t, unint64_t, uint64_t), uint64_t a2, void *a3, void *a4)
{
  v9 = sub_1DA9401F4();
  MEMORY[0x1EEE9AC00](v9);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    return 0;
  }

  v43 = v10;
  v44 = a1;
  v42 = v12;
  v13 = a3;
  v14 = [v13 notificationSettings];
  v15 = [v14 notificationCenterSetting];

  v16 = [a4 notificationSettings];
  v17 = [v16 notificationCenterSetting];

  if (v15 == v17 || (v18 = [a4 notificationSettings], v19 = objc_msgSend(v18, sel_notificationCenterSetting), v18, v19 != 1))
  {
    v20 = v9;

    v23 = 0;
  }

  else
  {
    v20 = v9;

    v21 = sub_1DA87DCF0(v4, v44, a2);

    v22 = *(v21 + 16);

    v23 = v22 != 0;
  }

  v24 = v13;
  v25 = [v24 notificationSettings];
  v26 = [v25 groupingSetting];

  v27 = a4;
  v28 = [a4 notificationSettings];
  v29 = [v28 &selRef_indexSearchableItems_deleteSearchableItemsWithIdentifiers_clientState_protectionClass_forBundleID_options_completionHandler_ + 4];

  if (v26 == v29)
  {
LABEL_13:

    return v23;
  }

  v30 = sub_1DA87DCF0(v4, v44, a2);

  v31 = v30;
  v32 = *(v30 + 16);
  if (!v32)
  {

    goto LABEL_13;
  }

  v40[1] = v30;
  v41 = v24;
  v33 = v42;
  v35 = v43 + 16;
  v34 = *(v43 + 16);
  v36 = v31 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
  v43 = *(v43 + 72);
  v44 = v34;
  do
  {
    v44(v33, v36, v20);
    v37 = [v27 notificationSettings];
    v38 = [v37 groupingSetting];

    sub_1DA875120(v33, v38);
    (*(v35 - 8))(v33, v20);
    v36 += v43;
    --v32;
  }

  while (v32);

  return 1;
}

void *sub_1DA878030()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v23 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
  v4 = sub_1DA940424();
  v5 = *(v4 + 16);
  if (!v5)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v7 = *(v1 + 16);
  v6 = v1 + 16;
  v8 = v4 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
  v9 = *(v6 + 56);
  v23 = v4;
  v24 = v9;
  v25 = (v6 - 8);
  v26 = v7;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v12 = v6;
    v26(v3, v8, v0);
    v13 = sub_1DA940394();
    result = (*v25)(v3, v0);
    v14 = *(v13 + 16);
    v15 = v10[2];
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v16 <= v10[3] >> 1)
    {
      if (*(v13 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v15 <= v16)
      {
        v18 = v15 + v14;
      }

      else
      {
        v18 = v15;
      }

      v10 = sub_1DA885FF8(isUniquelyReferenced_nonNull_native, v18, 1, v10);
      if (*(v13 + 16))
      {
LABEL_14:
        v19 = (v10[3] >> 1) - v10[2];
        result = sub_1DA9401F4();
        if (v19 < v14)
        {
          goto LABEL_23;
        }

        swift_arrayInitWithCopy();

        v6 = v12;
        if (v14)
        {
          v20 = v10[2];
          v21 = __OFADD__(v20, v14);
          v22 = v20 + v14;
          if (v21)
          {
            goto LABEL_24;
          }

          v10[2] = v22;
        }

        goto LABEL_4;
      }
    }

    v6 = v12;
    if (v14)
    {
      goto LABEL_22;
    }

LABEL_4:
    v8 += v24;
    if (!--v5)
    {

      return v10;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1DA8782BC@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B68, &qword_1DA95CCC8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v53 = &v41 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B70, &qword_1DA95CCD0);
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v59 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AE0, &unk_1DA9656A0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B78, &qword_1DA95CCD8);
  v44 = *(v14 - 8);
  v45 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v42 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v41 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
  sub_1DA940364();
  sub_1DA940354();
  (*(v11 + 8))(v13, v10);
  v43 = v18;
  sub_1DA940344();
  v19 = sub_1DA940424();
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = *(v59 + 16);
    v22 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v41 = v19;
    v23 = v19 + v22;
    v55 = *(v59 + 72);
    v56 = v21;
    v59 += 16;
    v24 = (v59 - 8);
    v25 = v52;
    v26 = (v51 + 48);
    v54 = (v51 + 32);
    v47 = v51 + 8;
    v48 = (v51 + 16);
    v27 = MEMORY[0x1E69E7CC0];
    v28 = v53;
    v49 = v8;
    v50 = v6;
    do
    {
      v29 = v57;
      v56(v57, v23, v8);
      sub_1DA87A488(v28);
      (*v24)(v29, v8);
      if ((*v26)(v28, 1, v25) == 1)
      {
        sub_1DA7BA120(v28, &qword_1ECBD5B68, &qword_1DA95CCC8);
      }

      else
      {
        v30 = v25;
        v31 = *v54;
        v32 = v58;
        (*v54)(v58, v28, v30);
        (*v48)(v6, v32, v30);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1DA8861BC(0, v27[2] + 1, 1, v27);
        }

        v34 = v27[2];
        v33 = v27[3];
        if (v34 >= v33 >> 1)
        {
          v27 = sub_1DA8861BC((v33 > 1), v34 + 1, 1, v27);
        }

        v35 = v51;
        v25 = v52;
        (*(v51 + 8))(v58, v52);
        v27[2] = v34 + 1;
        v36 = v27 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v34;
        v6 = v50;
        v31(v36, v50, v25);
        v28 = v53;
        v8 = v49;
      }

      v23 += v55;
      --v20;
    }

    while (v20);
  }

  v37 = v45;
  v39 = v43;
  v38 = v44;
  (*(v44 + 16))(v42, v43, v45);
  sub_1DA940404();
  return (*(v38 + 8))(v39, v37);
}

uint64_t sub_1DA8788B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a3;
  v47 = a2;
  v49 = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC8, &qword_1DA95CC60);
  v6 = *(v51 - 8);
  v7 = MEMORY[0x1EEE9AC00](v51 - 8);
  v9 = (v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v11 = (v39 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v39 - v17;
  v48 = v4;
  v42 = a4;
  if (!a4)
  {
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
    v31 = *(sub_1DA940424() + 16);

    v45 = v31;
    if (v31)
    {
      v21 = 0;
      v44 = v13 + 16;
      v32 = (v6 + 88);
      LODWORD(v43) = *MEMORY[0x1E69DF258];
      v50 = (v13 + 8);
      v33 = v6;
      v34 = (v6 + 8);
      v35 = (v33 + 96);
      do
      {
        result = sub_1DA940424();
        if (v21 >= *(result + 16))
        {
          goto LABEL_32;
        }

        (*(v13 + 16))(v16, result + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v21, v12);

        sub_1DA9403B4();
        v36 = v51;
        v37 = (*v32)(v9, v51);
        if (v37 == v43)
        {
          (*v35)(v9, v36);
          if (*v9 == v49 && v9[1] == v47)
          {
            v18 = v16;
LABEL_29:

            (*v50)(v18, v12);
            return v21;
          }

          v38 = sub_1DA941684();

          (*v50)(v16, v12);
          if (v38)
          {
            return v21;
          }
        }

        else
        {
          (*v50)(v16, v12);
          (*v34)(v9, v36);
        }

        ++v21;
      }

      while (v45 != v21);
    }

    return 0;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
  v20 = *(sub_1DA940424() + 16);

  v46 = v20;
  if (!v20)
  {
    return 0;
  }

  v21 = 0;
  v45 = v13 + 16;
  v22 = v6;
  v23 = (v6 + 88);
  LODWORD(v44) = *MEMORY[0x1E69DF260];
  v50 = (v13 + 8);
  v40 = (v22 + 96);
  v41 = (v22 + 8);
  v39[1] = v19;
  while (1)
  {
    result = sub_1DA940424();
    if (v21 >= *(result + 16))
    {
      break;
    }

    (*(v13 + 16))(v18, result + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v21, v12);

    sub_1DA9403B4();
    v25 = v51;
    v26 = (*v23)(v11, v51);
    if (v26 == v44)
    {
      (*v40)(v11, v25);
      v28 = v11[2];
      v27 = v11[3];
      if (*v11 == v43 && v11[1] == v42)
      {
      }

      else
      {
        v29 = sub_1DA941684();

        if ((v29 & 1) == 0)
        {
          (*v50)(v18, v12);

          goto LABEL_5;
        }
      }

      if (v28 == v49 && v27 == v47)
      {
        goto LABEL_29;
      }

      v30 = sub_1DA941684();

      (*v50)(v18, v12);
      if (v30)
      {
        return v21;
      }
    }

    else
    {
      (*v50)(v18, v12);
      (*v41)(v11, v25);
    }

LABEL_5:
    if (v46 == ++v21)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1DA878E84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E10, &unk_1DA958758);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v18 = &v18 - v3;
  v4 = sub_1DA9401F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v8 = sub_1DA940384();
  v10 = v9;
  v11 = *v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1DA885FF8(0, v11[2] + 1, 1, v11);
    *v10 = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_1DA885FF8((v13 > 1), v14 + 1, 1, v11);
    *v10 = v11;
  }

  v11[2] = v14 + 1;
  (*(v5 + 32))(v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v7, v4);
  v8(v20, 0);
  v19 = 0;
  v15 = sub_1DA940384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B38, &qword_1DA95CCA8);
  sub_1DA7AD11C(&qword_1ECBD5B40, &qword_1ECBD5B38, &qword_1DA95CCA8, MEMORY[0x1E69E6318]);
  sub_1DA7AD11C(&qword_1ECBD5B48, &qword_1ECBD5B38, &qword_1DA95CCA8, MEMORY[0x1E69E6338]);
  sub_1DA87CC1C();
  sub_1DA9409E4();
  v15(v20, 0);
  v16 = sub_1DA93F844();
  (*(*(v16 - 8) + 56))(v18, 1, 1, v16);
  return sub_1DA9403F4();
}

void *sub_1DA8791BC(uint64_t a1)
{
  v2 = sub_1DA9400B4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v56 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v55 = v43 - v6;
  v7 = sub_1DA9401F4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v57 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v46 = v43 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E10, &unk_1DA958758);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v19 = sub_1DA940394();
  v20 = *(v19 + 16);
  if (v20)
  {
    v43[2] = v18;
    v44 = v17;
    v45 = a1;
    v22 = *(v8 + 16);
    v21 = v8 + 16;
    v59 = v22;
    v23 = (*(v21 + 64) + 32) & ~*(v21 + 64);
    v43[1] = v19;
    v54 = v23;
    v24 = v19 + v23;
    v53 = *(v21 + 56);
    v51 = (v3 + 8);
    v52 = (v3 + 104);
    v50 = (v21 - 8);
    v49 = (v21 + 16);
    v48 = *MEMORY[0x1E69DF160];
    v47 = MEMORY[0x1E69E7CC0];
    v58 = MEMORY[0x1E69E7CC0];
    do
    {
      v27 = v21;
      v59(v14, v24, v7);
      v28 = v55;
      sub_1DA9400C4();
      v29 = v56;
      (*v52)(v56, v48, v2);
      sub_1DA7ACFF0(&qword_1ECBD5B90, MEMORY[0x1E69DF168], MEMORY[0x1E69DF178]);
      sub_1DA940B74();
      sub_1DA940B74();
      v30 = *v51;
      (*v51)(v29, v2);
      v30(v28, v2);
      if (v61 == v60 && (v31 = sub_1DA93FF84(), v32 = [v31 request], v31, v33 = objc_msgSend(v32, sel_content), v32, v34 = objc_msgSend(v33, sel_interruptionLevel), v33, v34 != 2))
      {
        v59(v46, v14, v7);
        v35 = v47;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_1DA885FF8(0, v35[2] + 1, 1, v35);
        }

        v37 = v35[2];
        v40 = v35[3];
        v38 = v37 + 1;
        if (v37 >= v40 >> 1)
        {
          v35 = sub_1DA885FF8((v40 > 1), v37 + 1, 1, v35);
          v39 = v46;
          v47 = v35;
        }

        else
        {
          v47 = v35;
          v39 = v46;
        }
      }

      else
      {
        v59(v57, v14, v7);
        v35 = v58;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_1DA885FF8(0, v35[2] + 1, 1, v35);
        }

        v37 = v35[2];
        v36 = v35[3];
        v38 = v37 + 1;
        if (v37 >= v36 >> 1)
        {
          v35 = sub_1DA885FF8((v36 > 1), v37 + 1, 1, v35);
        }

        v39 = v57;
        v58 = v35;
      }

      (*v50)(v14, v7);
      v35[2] = v38;
      v26 = v53;
      (*v49)(v35 + v54 + v37 * v53, v39, v7);
      v24 += v26;
      --v20;
      v21 = v27;
    }

    while (v20);

    v17 = v44;
    v25 = v47;
  }

  else
  {

    v25 = MEMORY[0x1E69E7CC0];
  }

  sub_1DA9403A4();
  if (v25[2])
  {
    v41 = sub_1DA93F844();
    (*(*(v41 - 8) + 56))(v17, 1, 1, v41);
    sub_1DA9403F4();
  }

  return v25;
}

void *sub_1DA87979C(uint64_t a1)
{
  v55 = sub_1DA9400B4();
  v2 = *(v55 - 8);
  v3 = MEMORY[0x1EEE9AC00](v55);
  v54 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v53 = v46 - v5;
  v6 = sub_1DA9401F4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v58 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v52 = v46 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v57 = v46 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E10, &unk_1DA958758);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v17 = sub_1DA940394();
  v18 = *(v17 + 16);
  if (!v18)
  {

    v25 = MEMORY[0x1E69E7CC0];
    goto LABEL_20;
  }

  v46[2] = v16;
  v47 = v15;
  v48 = a1;
  v20 = *(v7 + 16);
  v19 = v7 + 16;
  v64 = v20;
  v21 = (*(v19 + 64) + 32) & ~*(v19 + 64);
  v46[1] = v17;
  v62 = v21;
  v22 = v17 + v21;
  v61 = *(v19 + 56);
  v51 = *MEMORY[0x1E69DF158];
  v49 = (v2 + 8);
  v50 = (v2 + 104);
  v59 = (v19 + 16);
  v60 = (v19 - 8);
  v56 = MEMORY[0x1E69E7CC0];
  v63 = MEMORY[0x1E69E7CC0];
  v24 = v57;
  v23 = v58;
  v20(v57, (v17 + v21), v6);
  while (1)
  {
    v27 = sub_1DA93FF84();
    v28 = [v27 request];

    v29 = [v28 content];
    if ([v29 interruptionLevel] == 3)
    {

LABEL_9:
      v64(v23, v24, v6);
      v38 = v63;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1DA885FF8(0, v38[2] + 1, 1, v38);
      }

      v40 = v38[2];
      v39 = v38[3];
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        v38 = sub_1DA885FF8((v39 > 1), v40 + 1, 1, v38);
      }

      v42 = v23;
      v63 = v38;
      goto LABEL_4;
    }

    v30 = v6;
    v31 = v19;
    v32 = v53;
    sub_1DA9400C4();
    v33 = v54;
    v34 = v55;
    (*v50)(v54, v51, v55);
    sub_1DA7ACFF0(&qword_1ECBD5B90, MEMORY[0x1E69DF168], MEMORY[0x1E69DF178]);
    sub_1DA940B74();
    sub_1DA940B74();

    v35 = *v49;
    v36 = v33;
    v24 = v57;
    (*v49)(v36, v34);
    v37 = v32;
    v19 = v31;
    v6 = v30;
    v23 = v58;
    v35(v37, v34);
    if (v66 == v65)
    {
      goto LABEL_9;
    }

    v64(v52, v24, v6);
    v38 = v56;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_1DA885FF8(0, v38[2] + 1, 1, v38);
    }

    v40 = v38[2];
    v43 = v38[3];
    v41 = v40 + 1;
    if (v40 >= v43 >> 1)
    {
      v38 = sub_1DA885FF8((v43 > 1), v40 + 1, 1, v38);
      v42 = v52;
      v56 = v38;
    }

    else
    {
      v56 = v38;
      v42 = v52;
    }

LABEL_4:
    (*v60)(v24, v6);
    v38[2] = v41;
    v26 = v61;
    (*v59)(v38 + v62 + v40 * v61, v42, v6);
    v22 += v26;
    if (!--v18)
    {
      break;
    }

    v64(v24, v22, v6);
  }

  v15 = v47;
  v25 = v56;
LABEL_20:
  sub_1DA9403A4();
  if (v25[2])
  {
    v44 = sub_1DA93F844();
    (*(*(v44 - 8) + 56))(v15, 1, 1, v44);
    sub_1DA9403F4();
  }

  return v25;
}

void *sub_1DA879D9C(uint64_t a1)
{
  v2 = sub_1DA9401F4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v34 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E10, &unk_1DA958758);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v12 = sub_1DA940394();
  v13 = *(v12 + 16);
  if (v13)
  {
    v26[1] = v11;
    v27 = v10;
    v28 = a1;
    v29 = v12;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v31 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v32 = v15;
    v16 = v12 + v31;
    v30 = *(v14 + 56);
    v17 = MEMORY[0x1E69E7CC0];
    v33 = v14;
    v18 = v34;
    do
    {
      v19 = v32;
      v32(v7, v16, v2);
      v19(v18, v7, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1DA885FF8(0, v17[2] + 1, 1, v17);
      }

      v21 = v17[2];
      v20 = v17[3];
      if (v21 >= v20 >> 1)
      {
        v17 = sub_1DA885FF8((v20 > 1), v21 + 1, 1, v17);
      }

      (*(v14 - 8))(v7, v2);
      v17[2] = v21 + 1;
      v22 = v30;
      v23 = v17 + v31 + v21 * v30;
      v18 = v34;
      (*(v14 + 16))(v23, v34, v2);
      v16 += v22;
      --v13;
    }

    while (v13);

    v10 = v27;
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
  }

  sub_1DA9403A4();
  if (v17[2])
  {
    v24 = sub_1DA93F844();
    (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
    sub_1DA9403F4();
  }

  return v17;
}

void *sub_1DA87A0A0(uint64_t (*a1)(char *), uint64_t a2)
{
  v47 = a1;
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E10, &unk_1DA958758);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v36 - v4;
  v6 = sub_1DA9401F4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v46 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v45 = v36 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v15 = sub_1DA940394();
  v16 = *(v15 + 16);
  if (v16)
  {
    v36[1] = v14;
    v37 = v5;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = (*(v18 + 64) + 32) & ~*(v18 + 64);
    v36[0] = v15;
    v42 = v20;
    v21 = v15 + v20;
    v22 = *(v18 + 56);
    v40 = (v18 - 8);
    v41 = v22;
    v38 = v2;
    v39 = (v18 + 16);
    v23 = MEMORY[0x1E69E7CC0];
    v24 = MEMORY[0x1E69E7CC0];
    v43 = v19;
    v44 = v18;
    v19(v13, (v15 + v20), v6);
    while (1)
    {
      if (v47(v13))
      {
        v17(v45, v13, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1DA885FF8(0, v23[2] + 1, 1, v23);
        }

        v30 = v23[2];
        v29 = v23[3];
        v31 = v30 + 1;
        if (v30 >= v29 >> 1)
        {
          v25 = sub_1DA885FF8((v29 > 1), v30 + 1, 1, v23);
          v26 = v45;
          v32 = v25;
        }

        else
        {
          v32 = v23;
          v25 = v23;
          v26 = v45;
        }
      }

      else
      {
        v17(v46, v13, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1DA885FF8(0, v24[2] + 1, 1, v24);
        }

        v32 = v23;
        v30 = v24[2];
        v33 = v24[3];
        v31 = v30 + 1;
        if (v30 >= v33 >> 1)
        {
          v25 = sub_1DA885FF8((v33 > 1), v30 + 1, 1, v24);
          v26 = v46;
          v24 = v25;
        }

        else
        {
          v25 = v24;
          v26 = v46;
        }
      }

      (*v40)(v13, v6);
      v25[2] = v31;
      v27 = v25 + v42;
      v28 = v41;
      (*v39)(&v27[v30 * v41], v26, v6);
      v21 += v28;
      --v16;
      v17 = v43;
      v23 = v32;
      if (!v16)
      {
        break;
      }

      v43(v13, v21, v6);
    }

    v5 = v37;
  }

  else
  {

    v23 = MEMORY[0x1E69E7CC0];
  }

  sub_1DA9403A4();
  if (v23[2])
  {
    v34 = sub_1DA93F844();
    (*(*(v34 - 8) + 56))(v5, 1, 1, v34);
    sub_1DA9403F4();
  }

  return v23;
}

uint64_t sub_1DA87A488@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1DA9401F4();
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC8, &qword_1DA95CC60);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B80, &unk_1DA95CCE0);
  v48 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v47 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v43 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  sub_1DA9403B4();
  v14 = (*(v6 + 88))(v8, v5);
  v15 = v14;
  if (v14 == *MEMORY[0x1E69DF260])
  {
    (*(v6 + 96))(v8, v5);
    v17 = *(v8 + 2);
    v16 = *(v8 + 3);
    *v13 = *v8;
    *(v13 + 2) = v17;
    v18 = 24;
LABEL_5:
    *&v13[v18] = v16;
    goto LABEL_6;
  }

  if (v14 == *MEMORY[0x1E69DF258])
  {
    (*(v6 + 96))(v8, v5);
    v16 = *(v8 + 1);
    *v13 = *v8;
    v18 = 8;
    goto LABEL_5;
  }

  if (v14 != *MEMORY[0x1E69DF250])
  {
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B70, &qword_1DA95CCD0);
    (*(*(v42 - 8) + 56))(a1, 1, 1, v42);
    return (*(v6 + 8))(v8, v5);
  }

LABEL_6:
  v19 = *(v48 + 104);
  v46 = v13;
  v19(v13, v15, v9);
  v20 = sub_1DA940394();
  v21 = *(v20 + 16);
  if (v21)
  {
    v44 = v9;
    v45 = a1;
    v23 = v50 + 16;
    v22 = *(v50 + 16);
    v24 = *(v50 + 80);
    v43[1] = v20;
    v25 = v20 + ((v24 + 32) & ~v24);
    v49 = *(v50 + 72);
    v50 = v22;
    v26 = (v23 - 8);
    v27 = MEMORY[0x1E69E7CC0];
    do
    {
      v28 = v51;
      (v50)(v4, v25, v51);
      v29 = sub_1DA93FF84();
      (*v26)(v4, v28);
      v30 = [v29 request];

      v31 = [v30 identifier];
      v32 = sub_1DA940A14();
      v34 = v33;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1DA7B6928(0, *(v27 + 2) + 1, 1, v27);
      }

      v36 = *(v27 + 2);
      v35 = *(v27 + 3);
      if (v36 >= v35 >> 1)
      {
        v27 = sub_1DA7B6928((v35 > 1), v36 + 1, 1, v27);
      }

      *(v27 + 2) = v36 + 1;
      v37 = &v27[16 * v36];
      *(v37 + 4) = v32;
      *(v37 + 5) = v34;
      v25 += v49;
      --v21;
    }

    while (v21);

    v9 = v44;
    a1 = v45;
  }

  else
  {
  }

  v38 = v48;
  v39 = v46;
  (*(v48 + 16))(v47, v46, v9);
  sub_1DA940374();
  (*(v38 + 8))(v39, v9);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B70, &qword_1DA95CCD0);
  return (*(*(v40 - 8) + 56))(a1, 0, 1, v40);
}

uint64_t sub_1DA87AA34()
{
  sub_1DA941764();
  sub_1DA93FB44();
  sub_1DA93FB44();
  return sub_1DA941794();
}

uint64_t sub_1DA87AA8C(uint64_t a1)
{
  sub_1DA93FB44();

  return sub_1DA93FB44();
}

uint64_t sub_1DA87AAD0(uint64_t a1)
{
  sub_1DA941764();
  sub_1DA93FB44();
  sub_1DA93FB44();
  return sub_1DA941794();
}

uint64_t sub_1DA87AB24(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((sub_1DA93FB34() & 1) == 0)
  {
    return 0;
  }

  return sub_1DA93FB34();
}

uint64_t sub_1DA87AB8C()
{
  sub_1DA941764();
  sub_1DA93FB44();
  return sub_1DA941794();
}

uint64_t sub_1DA87ABDC(uint64_t a1)
{
  sub_1DA941764();
  sub_1DA93FB44();
  return sub_1DA941794();
}

void *sub_1DA87AC2C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = v1 + 32;

  v4 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1DA87BF04(v3, v12);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1DA886198(0, v4[2] + 1, 1, v4);
      }

      v9 = v4[2];
      v8 = v4[3];
      if (v9 >= v8 >> 1)
      {
        v4 = sub_1DA886198((v8 > 1), v9 + 1, 1, v4);
      }

      sub_1DA87BF3C(v12);
      v4[2] = v9 + 1;
      v10 = &v4[2 * v9];
      v10[4] = v6;
      v10[5] = v7;
    }

    else
    {
      sub_1DA87BF3C(v12);
    }

    v3 += 16;
    --v2;
  }

  while (v2);

  return v4;
}

uint64_t sub_1DA87AD60()
{
  result = swift_beginAccess();
  v2 = 0;
  v3 = *(*(v0 + 16) + 16);
  v4 = v3 - 1;
  v5 = v3 == 1;
  if (v3 - 1 > 0)
  {
    goto LABEL_7;
  }

LABEL_2:
  v6 = !v5;
  if (((v6 | v2) & 1) == 0)
  {
    v7 = 0;
    v2 = 1;
    while (1)
    {
      v8 = *(v0 + 16);
      if (v4 >= *(v8 + 16))
      {
        break;
      }

      sub_1DA87BF04(v8 + 16 * v4 + 32, v13);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1DA87BF3C(v13);
      if (Strong)
      {
        result = swift_unknownObjectRelease();
      }

      else
      {
        swift_beginAccess();
        v10 = *(v0 + 16);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 16) = v10;
        if ((result & 1) == 0)
        {
          result = sub_1DA884B5C(v10);
          v10 = result;
          *(v0 + 16) = result;
        }

        v11 = v10[2];
        if (v4 >= v11)
        {
          goto LABEL_19;
        }

        v12 = v11 - 1;
        sub_1DA87BF3C(&v10[2 * v4 + 4]);
        swift_arrayInitWithTakeFrontToBack();
        v10[2] = v12;
        *(v0 + 16) = v10;
        result = swift_endAccess();
      }

      v4 = v7;
      v5 = v7 == 0;
      if (v7 <= 0)
      {
        goto LABEL_2;
      }

LABEL_7:
      v7 = v4 - 1;
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA87AEC4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v17 = a2;
  v18 = a3;
  v16 = a1;
  v15 = sub_1DA940FC4();
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DA940F74();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1DA940854();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);
  v14[1] = "7WeakObserverArray";
  v14[2] = v11;
  sub_1DA940824();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACFF0(&qword_1EE115A60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD11C(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840, MEMORY[0x1E69E6328]);
  sub_1DA9411D4();
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8090], v15);
  *(v4 + 48) = sub_1DA941004();
  *(v4 + 56) = 0;
  *(v4 + 64) = 1;
  *(v4 + 16) = a4;
  v12 = v17;
  *(v4 + 24) = v16;
  *(v4 + 32) = v12;
  *(v4 + 40) = v18;
  return v4;
}

void sub_1DA87B16C()
{
  v1 = sub_1DA9408C4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 48);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  v7 = sub_1DA9408F4();
  (*(v2 + 8))(v4, v1);
  if (v7)
  {
    if (!*(v0 + 56))
    {
      v8 = objc_allocWithZone(MEMORY[0x1E69D54C8]);
      v9 = sub_1DA940A04();
      v10 = [v8 initWithIdentifier_];

      v11 = *(v0 + 16);
      if (v11 / 10.0 <= 0.1)
      {
        v12 = v11 / 10.0;
      }

      else
      {
        v12 = 0.1;
      }

      v13 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_1DA87E040;
      aBlock[5] = v13;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA7B00D0;
      aBlock[3] = &block_descriptor_92;
      v14 = _Block_copy(aBlock);

      [v10 scheduleWithFireInterval:v6 leewayInterval:v14 queue:v11 handler:v12];
      _Block_release(v14);
      v15 = *(v0 + 56);
      *(v0 + 56) = v10;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1DA87B3B8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DA9407F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DA940854();
  v24 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DA9408C4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = *(Strong + 48);
    *v12 = v15;
    (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
    v16 = v15;
    LOBYTE(v15) = sub_1DA9408F4();
    (*(v10 + 8))(v12, v9);
    if (v15)
    {
      v17 = *(v14 + 56);
      if (v17)
      {
        [v17 invalidate];
        v18 = *(v14 + 56);
      }

      else
      {
        v18 = 0;
      }

      *(v14 + 56) = 0;

      if ((*(v14 + 64) & 1) == 0)
      {
        v23 = *(v14 + 24);
        v19 = swift_allocObject();
        *(v19 + 16) = v14;
        aBlock[4] = sub_1DA87E048;
        aBlock[5] = v19;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1DA7AF1D0;
        aBlock[3] = &block_descriptor_98;
        v20 = _Block_copy(aBlock);

        sub_1DA940824();
        v25 = MEMORY[0x1E69E7CC0];
        sub_1DA7ACFF0(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        v22 = v6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
        sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0, MEMORY[0x1E69E6328]);
        sub_1DA9411D4();
        MEMORY[0x1E12720D0](0, v8, v5, v20);
        _Block_release(v20);
        (*(v3 + 8))(v5, v2);
        (*(v24 + 8))(v8, v22);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_1DA87B80C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA9407F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DA940854();
  v8 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(a2 + 16);
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a1;
  v11[4] = &off_1F5634440;
  aBlock[4] = sub_1DA87F7E8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_137;
  v12 = _Block_copy(aBlock);

  sub_1DA940824();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACFF0(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0, MEMORY[0x1E69E6328]);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v10, v7, v12);
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v15);

  return result;
}

id sub_1DA87BAF8@<X0>(BOOL *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_resumeTimer);
  if (v3)
  {
    result = [v3 invalidate];
  }

  *a1 = v3 == 0;
  return result;
}

double sub_1DA87BB5C()
{
  if (!*(v0 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_resumeTimer))
  {
    return sub_1DA8688D4();
  }

  return result;
}

uint64_t type metadata accessor for NotificationGroupService(uint64_t a1)
{
  result = qword_1ECBD5AA8;
  if (!qword_1ECBD5AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DA87BC6C(uint64_t a1)
{
  sub_1DA87BD64(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1DA87BD64(uint64_t a1)
{
  if (!qword_1ECBD5AB8)
  {
    sub_1DA9401F4();
    v1 = MEMORY[0x1E69DF180];
    sub_1DA7ACFF0(&qword_1ECBD5A70, MEMORY[0x1E69DF180], MEMORY[0x1E69DF1A0]);
    sub_1DA7ACFF0(&qword_1ECBD5A78, v1, MEMORY[0x1E69DF188]);
    sub_1DA7ACFF0(&qword_1ECBD5A80, v1, MEMORY[0x1E69DF198]);
    v2 = sub_1DA940474();
    if (!v3)
    {
      atomic_store(v2, &qword_1ECBD5AB8);
    }
  }
}

uint64_t sub_1DA87BE68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DA87BEB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = 1;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_1DA87BF98(uint64_t a1, id a2)
{
  v3 = [a2 topicSettings];
  sub_1DA7AF3EC(0, &qword_1ECBD5BB8, 0x1E69DF290);
  v4 = sub_1DA940BE4();

  if (v4 >> 62)
  {
    goto LABEL_28;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v4; v5; i = v4)
  {
    v6 = 0;
    v32 = v4 & 0xC000000000000001;
    v29 = v4 + 32;
    v30 = v4 & 0xFFFFFFFFFFFFFF8;
    v7 = a1 + 56;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v32)
      {
        v9 = MEMORY[0x1E1272460](v6, i);
      }

      else
      {
        if (v6 >= *(v30 + 16))
        {
          goto LABEL_27;
        }

        v9 = *(v29 + 8 * v6);
      }

      v10 = v9;
      if (__OFADD__(v6++, 1))
      {
        break;
      }

      v12 = [v9 topic];
      v4 = [v12 identifier];

      v13 = sub_1DA940A14();
      v15 = v14;

      if (*(a1 + 16) && (sub_1DA941764(), sub_1DA940AB4(), v16 = sub_1DA941794(), v17 = -1 << *(a1 + 32), v4 = v16 & ~v17, ((*(v7 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0))
      {
        v18 = ~v17;
        while (1)
        {
          v19 = (*(a1 + 48) + 16 * v4);
          v20 = *v19 == v13 && v19[1] == v15;
          if (v20 || (sub_1DA941684() & 1) != 0)
          {
            break;
          }

          v4 = (v4 + 1) & v18;
          if (((*(v7 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1DA885EEC(0, *(v8 + 2) + 1, 1, v8);
        }

        v4 = *(v8 + 2);
        v21 = *(v8 + 3);
        if (v4 >= v21 >> 1)
        {
          v8 = sub_1DA885EEC((v21 > 1), v4 + 1, 1, v8);
        }

        *(v8 + 2) = v4 + 1;
        v22 = &v8[16 * v4];
        *(v22 + 4) = v10;
        v22[40] = 1;
        if (v6 == v5)
        {
          goto LABEL_30;
        }
      }

      else
      {
LABEL_4:

        if (v6 == v5)
        {
          goto LABEL_30;
        }
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    v5 = sub_1DA941264();
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_30:

  if (!*(v8 + 2))
  {
    v23 = a2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1DA885EEC(0, 1, 1, v8);
    }

    v25 = *(v8 + 2);
    v24 = *(v8 + 3);
    if (v25 >= v24 >> 1)
    {
      v8 = sub_1DA885EEC((v24 > 1), v25 + 1, 1, v8);
    }

    *(v8 + 2) = v25 + 1;
    v26 = &v8[16 * v25];
    *(v26 + 4) = v23;
    v26[40] = 0;
  }

  return v8;
}

BOOL sub_1DA87C2E8()
{
  v0 = sub_1DA9400B4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v12 - v5;
  v7 = sub_1DA93FF84();
  v8 = [v7 request];

  v9 = [v8 content];
  if ([v9 interruptionLevel] == 3)
  {

    return 1;
  }

  else
  {
    sub_1DA9400C4();
    (*(v1 + 104))(v4, *MEMORY[0x1E69DF158], v0);
    sub_1DA7ACFF0(&qword_1ECBD5B90, MEMORY[0x1E69DF168], MEMORY[0x1E69DF178]);
    sub_1DA940B74();
    sub_1DA940B74();

    v11 = *(v1 + 8);
    v11(v4, v0);
    v11(v6, v0);
    return v12[1] == v12[0];
  }
}

BOOL sub_1DA87C4F4(uint64_t a1, void *a2)
{
  result = 1;
  if (!sub_1DA87C2E8())
  {
    if ([a2 notificationListDisplayStyleSetting] != 2)
    {
      return 0;
    }

    v3 = sub_1DA93FF84();
    v4 = [v3 request];

    v5 = [v4 content];
    v6 = [v5 interruptionLevel];

    if (!v6)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DA87C5A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  for (i = a1 + 32; ; i += 16)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      swift_unknownObjectRelease();
      if (v7 == a2)
      {
        break;
      }
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_1DA87C648(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  result = sub_1DA87C5A4(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    return v5[2];
  }

  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_29;
  }

  v11 = v5 + 2;
  v10 = v5[2];
  if (v9 == v10)
  {
    return v8;
  }

  v12 = 16 * result + 48;
  while (v9 < v10)
  {
    sub_1DA87BF04(v5 + v12, v17);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      swift_unknownObjectRelease();
      result = sub_1DA87BF3C(v17);
      if (v14 == a2)
      {
        goto LABEL_10;
      }

      if (v9 != v8)
      {
LABEL_17:
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_25;
        }

        v15 = *v11;
        if (v8 >= *v11)
        {
          goto LABEL_26;
        }

        result = sub_1DA87BF04(&v5[2 * v8 + 4], v17);
        if (v9 >= v15)
        {
          goto LABEL_27;
        }

        sub_1DA87BF04(v5 + v12, v16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1DA884B5C(v5);
        }

        result = sub_1DA87F464(v16, &v5[2 * v8 + 4]);
        if (v9 >= v5[2])
        {
          goto LABEL_28;
        }

        result = sub_1DA87F464(v17, v5 + v12);
        *a1 = v5;
      }
    }

    else
    {
      result = sub_1DA87BF3C(v17);
      if (v9 != v8)
      {
        goto LABEL_17;
      }
    }

    ++v8;
LABEL_10:
    ++v9;
    v11 = v5 + 2;
    v10 = v5[2];
    v12 += 16;
    if (v9 == v10)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1DA87C7EC(uint64_t a1, uint64_t a2)
{
  v45 = sub_1DA940294();
  v4 = *(v45 - 8);
  v5 = MEMORY[0x1EEE9AC00](v45);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v32 - v8;
  v33 = sub_1DA9401F4();
  v9 = MEMORY[0x1EEE9AC00](v33);
  v44 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  v14 = *(a1 + 16);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v16 = *(v11 + 16);
  v15 = v11 + 16;
  v41 = v16;
  v17 = *(v15 + 56);
  v35 = (*(v15 + 64) + 32) & ~*(v15 + 64);
  v18 = a1 + v35;
  v38 = (v4 + 8);
  v39 = (v4 + 16);
  v34 = (v15 - 8);
  v37 = (v15 + 16);
  v47 = MEMORY[0x1E69E7CC0];
  v42 = v15;
  v43 = a2;
  v36 = v7;
  v19 = v33;
  v40 = v17;
  do
  {
    v48 = v14;
    v41(v13, v18, v19);
    v21 = v46;
    sub_1DA93FEE4();
    v22 = v13;
    v23 = v45;
    (*v39)(v7, a2, v45);
    sub_1DA7ACFF0(&qword_1ECBD5AF0, MEMORY[0x1E69DF1B0], MEMORY[0x1E69DF1C0]);
    v24 = sub_1DA941164();
    v25 = *v38;
    (*v38)(v7, v23);
    v25(v21, v23);
    if (v24)
    {
      v26 = *v37;
      (*v37)(v44, v22, v19);
      v27 = v47;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v27;
      v13 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DA82AAAC(0, *(v27 + 16) + 1, 1);
        v19 = v33;
        v27 = v49;
      }

      v30 = *(v27 + 16);
      v29 = *(v27 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1DA82AAAC((v29 > 1), v30 + 1, 1);
        v19 = v33;
        v27 = v49;
      }

      *(v27 + 16) = v30 + 1;
      v47 = v27;
      v20 = v40;
      v26((v27 + v35 + v30 * v40), v44, v19);
      a2 = v43;
      v7 = v36;
    }

    else
    {
      (*v34)(v22, v19);
      v13 = v22;
      a2 = v43;
      v20 = v40;
    }

    v18 += v20;
    v14 = v48 - 1;
  }

  while (v48 != 1);
  return v47;
}

unint64_t sub_1DA87CBC8()
{
  result = qword_1ECBD5B30;
  if (!qword_1ECBD5B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5B30);
  }

  return result;
}

unint64_t sub_1DA87CC1C()
{
  result = qword_1ECBD5B50;
  if (!qword_1ECBD5B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5B50);
  }

  return result;
}

void *sub_1DA87CC70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA9401F4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v54 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v46 = v43 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E10, &unk_1DA958758);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v16 = sub_1DA940394();
  v53 = *(v16 + 16);
  if (v53)
  {
    v43[2] = v15;
    v44 = v14;
    v45 = a1;
    v17 = 0;
    v19 = *(v5 + 16);
    v18 = v5 + 16;
    v56 = v19;
    v20 = (*(v18 + 64) + 32) & ~*(v18 + 64);
    v43[1] = v16;
    v52 = v20;
    v51 = v16 + v20;
    v21 = *(v18 + 56);
    v22 = a2 + 56;
    v48 = (v18 + 16);
    v49 = (v18 - 8);
    v47 = MEMORY[0x1E69E7CC0];
    v55 = MEMORY[0x1E69E7CC0];
    v50 = v21;
    do
    {
      v23 = v18;
      v56(v11, v51 + v21 * v17, v4);
      v24 = sub_1DA940014();
      v26 = v25;
      if (*(a2 + 16) && (v27 = v24, sub_1DA941764(), sub_1DA940AB4(), v28 = sub_1DA941794(), v29 = -1 << *(a2 + 32), v30 = v28 & ~v29, ((*(v22 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) != 0))
      {
        v31 = ~v29;
        while (1)
        {
          v32 = (*(a2 + 48) + 16 * v30);
          v33 = *v32 == v27 && v32[1] == v26;
          if (v33 || (sub_1DA941684() & 1) != 0)
          {
            break;
          }

          v30 = (v30 + 1) & v31;
          if (((*(v22 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        v56(v46, v11, v4);
        v34 = v47;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_1DA885FF8(0, v34[2] + 1, 1, v34);
        }

        v36 = v34[2];
        v39 = v34[3];
        v37 = v36 + 1;
        if (v36 >= v39 >> 1)
        {
          v34 = sub_1DA885FF8((v39 > 1), v36 + 1, 1, v34);
          v38 = v46;
          v47 = v34;
        }

        else
        {
          v47 = v34;
          v38 = v46;
        }
      }

      else
      {
LABEL_14:

        v56(v54, v11, v4);
        v34 = v55;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_1DA885FF8(0, v34[2] + 1, 1, v34);
        }

        v36 = v34[2];
        v35 = v34[3];
        v37 = v36 + 1;
        if (v36 >= v35 >> 1)
        {
          v34 = sub_1DA885FF8((v35 > 1), v36 + 1, 1, v34);
        }

        v38 = v54;
        v55 = v34;
      }

      ++v17;
      (*v49)(v11, v4);
      v34[2] = v37;
      v21 = v50;
      (*v48)(v34 + v52 + v36 * v50, v38, v4);
      v18 = v23;
    }

    while (v17 != v53);

    v14 = v44;
    v40 = v47;
  }

  else
  {

    v40 = MEMORY[0x1E69E7CC0];
  }

  sub_1DA9403A4();
  if (v40[2])
  {
    v41 = sub_1DA93F844();
    (*(*(v41 - 8) + 56))(v14, 1, 1, v41);
    sub_1DA9403F4();
  }

  return v40;
}

uint64_t sub_1DA87D154(uint64_t a1, uint64_t a2)
{
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
  v4 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v69 = &v62[-v5];
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v6 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v76 = &v62[-v7];
  v87 = MEMORY[0x1E69E7CC0];
  v78 = a2;

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AA0, &qword_1DA95CB10);
  v9 = *(sub_1DA940464() + 16);

  v63 = 0;
  v10 = v9 - 1;
  v75 = (v6 + 16);
  v77 = v6;
  v79 = (v6 + 8);
  v64 = (v4 + 16);
  v67 = v4;
  v68 = (v4 + 8);
  v66 = a1;
  v65 = v8;
  while (1)
  {
    if (v10 <= 0)
    {
      if ((v10 != 0) | v63 & 1)
      {
LABEL_50:

        return v87;
      }

      v11 = 0;
      v63 = 1;
    }

    else
    {
      v11 = v10 - 1;
    }

    v12 = sub_1DA940454();
    v14 = v13;
    v15 = *v13;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v14 = v15;
    if ((result & 1) == 0)
    {
      result = sub_1DA884B48(v15);
      v15 = result;
      *v14 = result;
    }

    if (v10 >= v15[2])
    {
      break;
    }

    v72 = v12;
    v71 = v11;
    v70 = (*(v67 + 80) + 32) & ~*(v67 + 80);
    v17 = v15 + v70;
    v18 = *(v67 + 72);
    v73 = v10;
    v19 = v18 * v10;
    swift_bridgeObjectRetain_n();
    v82 = v17;
    v83 = v19;
    v20 = *(sub_1DA940424() + 16);

    v74 = 0;
    v81 = v20 - 1;
    v21 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v22 = v81;
      v23 = v81 - 1;
      if (v81 >= 1)
      {
        goto LABEL_15;
      }

      if ((v81 != 0) | v74 & 1)
      {
        break;
      }

      v23 = 0;
      v74 = 1;
LABEL_15:
      v24 = sub_1DA940414();
      v26 = v25;
      v27 = *v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v26 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = sub_1DA884B34(v27);
        *v26 = v27;
      }

      if (v22 >= v27[2])
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v29 = v78;
      v30 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v31 = *(v77 + 72);
      v32 = v31 * v22;

      v33 = sub_1DA87CC70(v27 + v30 + v31 * v22, v29);

      v24(v85, 0);
      v34 = v33[2];
      v35 = v21[2];
      v36 = v35 + v34;
      if (__OFADD__(v35, v34))
      {
        goto LABEL_44;
      }

      v37 = swift_isUniquelyReferenced_nonNull_native();
      if (v37 && v36 <= v21[3] >> 1)
      {
        if (!v33[2])
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v35 <= v36)
        {
          v42 = v35 + v34;
        }

        else
        {
          v42 = v35;
        }

        v21 = sub_1DA885FF8(v37, v42, 1, v21);
        if (!v33[2])
        {
LABEL_30:

          if (v34)
          {
            goto LABEL_45;
          }

          goto LABEL_31;
        }
      }

      v38 = (v21[3] >> 1) - v21[2];
      sub_1DA9401F4();
      if (v38 < v34)
      {
        goto LABEL_47;
      }

      swift_arrayInitWithCopy();

      if (v34)
      {
        v39 = v21[2];
        v40 = __OFADD__(v39, v34);
        v41 = v39 + v34;
        if (v40)
        {
          goto LABEL_49;
        }

        v21[2] = v41;
      }

LABEL_31:
      v43 = sub_1DA940424();
      if (v22 >= *(v43 + 16))
      {
        goto LABEL_46;
      }

      v81 = v23;
      v44 = v76;
      v45 = v80;
      (*v75)(v76, v43 + v30 + v32, v80);

      v46 = sub_1DA9403E4();
      v47 = *v79;
      (*v79)(v44, v45);
      if (v46)
      {
        v48 = sub_1DA940414();
        v50 = v49;
        v51 = *v49;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_1DA884B34(v51);
        }

        v52 = v51[2];
        if (v22 >= v52)
        {
          goto LABEL_48;
        }

        v53 = v52 - 1;
        v54 = v51 + v30 + v32;
        v47(v54, v80);
        if (v31 > 0 || v54 >= &v54[v31 + (v53 - v22) * v31])
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v31)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v51[2] = v53;
        *v50 = v51;
        v48(v85, 0);
      }
    }

    swift_bridgeObjectRelease_n();
    v72(v86, 0);
    sub_1DA84BFA0(v21);
    result = sub_1DA940464();
    v55 = v73;
    if (v73 >= *(result + 16))
    {
      goto LABEL_52;
    }

    v56 = v84;
    v57 = v69;
    (*v64)(v69, result + v70 + v83, v84);

    v58 = sub_1DA940434();
    v59 = *v68;
    (*v68)(v57, v56);
    v10 = v71;
    if (v58)
    {
      v60 = sub_1DA940454();
      v61 = v69;
      sub_1DA8764AC(v55, sub_1DA884B48, &qword_1ECBD5AC0, &qword_1DA95CC48, v69);
      v59(v61, v84);
      v60(v86, 0);
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

void *sub_1DA87D8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a3;
  v50 = a2;
  v4 = sub_1DA9401F4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v41 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v49 = v38 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E10, &unk_1DA958758);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v16 = sub_1DA940394();
  v17 = *(v16 + 16);
  if (!v17)
  {

    v25 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

  v38[1] = v15;
  v39 = v14;
  v40 = a1;
  v20 = *(v5 + 16);
  v18 = v5 + 16;
  v19 = v20;
  v21 = (*(v18 + 64) + 32) & ~*(v18 + 64);
  v38[0] = v16;
  v45 = v21;
  v22 = v16 + v21;
  v23 = *(v18 + 56);
  v43 = (v18 - 8);
  v44 = v23;
  v24 = (v18 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  v42 = MEMORY[0x1E69E7CC0];
  v46 = v20;
  v47 = v18;
  v20(v11, (v16 + v21), v4);
  while (1)
  {
    if (sub_1DA940014() == v50 && v30 == v48)
    {

LABEL_11:
      v19(v49, v11, v4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1DA885FF8(0, v25[2] + 1, 1, v25);
      }

      v33 = v25[2];
      v32 = v25[3];
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        v26 = sub_1DA885FF8((v32 > 1), v33 + 1, 1, v25);
        v27 = v49;
        v25 = v26;
      }

      else
      {
        v26 = v25;
        v27 = v49;
      }

      goto LABEL_5;
    }

    v31 = sub_1DA941684();

    if (v31)
    {
      goto LABEL_11;
    }

    v19(v41, v11, v4);
    v26 = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_1DA885FF8(0, v26[2] + 1, 1, v26);
    }

    v33 = v26[2];
    v35 = v26[3];
    v34 = v33 + 1;
    if (v33 >= v35 >> 1)
    {
      v26 = sub_1DA885FF8((v35 > 1), v33 + 1, 1, v26);
    }

    v27 = v41;
    v42 = v26;
LABEL_5:
    (*v43)(v11, v4);
    v26[2] = v34;
    v28 = v26 + v45;
    v29 = v44;
    (*v24)(&v28[v33 * v44], v27, v4);
    v22 += v29;
    --v17;
    v19 = v46;
    if (!v17)
    {
      break;
    }

    v46(v11, v22, v4);
  }

  v14 = v39;
LABEL_21:
  sub_1DA9403A4();
  if (v25[2])
  {
    v36 = sub_1DA93F844();
    (*(*(v36 - 8) + 56))(v14, 1, 1, v36);
    sub_1DA9403F4();
  }

  return v25;
}

uint64_t sub_1DA87DCF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v5 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v7 = &v29 - v6;
  v37 = MEMORY[0x1E69E7CC0];
  v33 = a3;

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
  v9 = *(sub_1DA940424() + 16);

  HIDWORD(v29) = 0;
  v10 = v9 - 1;
  v30 = (v5 + 16);
  v31 = v5;
  v35 = (v5 + 8);
  while (1)
  {
    v11 = v10;
    if (v10-- < 1)
    {
      if ((v11 != 0) | BYTE4(v29) & 1)
      {

        return v37;
      }

      v10 = 0;
      HIDWORD(v29) = 1;
    }

    v13 = sub_1DA940414();
    v15 = v14;
    v16 = *v14;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v15 = v16;
    if ((result & 1) == 0)
    {
      result = sub_1DA884B34(v16);
      v16 = result;
      *v15 = result;
    }

    if (v11 >= v16[2])
    {
      break;
    }

    v18 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v19 = v16 + v18;
    v20 = *(v31 + 72) * v11;
    v21 = v8;
    v22 = a1;
    v23 = v33;

    v24 = sub_1DA87D8D0(&v19[v20], v32, v23);
    a1 = v22;
    v8 = v21;

    v13(v36, 0);
    sub_1DA84BFA0(v24);
    result = sub_1DA940424();
    if (v11 >= *(result + 16))
    {
      goto LABEL_14;
    }

    v25 = v34;
    (*v30)(v7, result + v18 + v20, v34);

    v26 = sub_1DA9403E4();
    v27 = *v35;
    (*v35)(v7, v25);
    if (v26)
    {
      v28 = sub_1DA940414();
      sub_1DA8764AC(v11, sub_1DA884B34, &qword_1ECBD5AD0, &qword_1DA95CC68, v7);
      v27(v7, v34);
      v28(v36, 0);
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void *sub_1DA87E07C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA93FEC4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v71 = v49 - v9;
  v68 = sub_1DA9401F4();
  v10 = *(v68 - 8);
  v11 = MEMORY[0x1EEE9AC00](v68);
  v61 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v53 = v49 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = v49 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E10, &unk_1DA958758);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v49 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v21 = sub_1DA940394();
  v60 = *(v21 + 16);
  if (v60)
  {
    v49[2] = v20;
    v50 = v19;
    v51 = a1;
    v22 = 0;
    v24 = *(v10 + 16);
    v23 = v10 + 16;
    v65 = v24;
    v25 = (*(v23 + 64) + 32) & ~*(v23 + 64);
    v49[1] = v21;
    v59 = v25;
    v58 = v21 + v25;
    v26 = *(v23 + 56);
    v69 = v5 + 16;
    v70 = a2 + 56;
    v52 = v5;
    v27 = (v5 + 8);
    v55 = (v23 + 16);
    v56 = (v23 - 8);
    v54 = MEMORY[0x1E69E7CC0];
    v62 = MEMORY[0x1E69E7CC0];
    v28 = a2;
    v29 = v23;
    v30 = v68;
    v66 = v16;
    v67 = v29;
    v57 = v26;
    do
    {
      v64 = v22;
      v65(v16, v58 + v26 * v22, v30);
      sub_1DA940124();
      if (*(a2 + 16) && (sub_1DA7ACFF0(&qword_1ECBD5940, MEMORY[0x1E69DF0D0], MEMORY[0x1E69DF0E0]), v33 = v28, v34 = sub_1DA9409A4(), v35 = -1 << *(v28 + 32), v36 = v34 & ~v35, ((*(v70 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) != 0))
      {
        v37 = ~v35;
        v38 = *(v52 + 72);
        v39 = *(v52 + 16);
        while (1)
        {
          v39(v8, *(v33 + 48) + v38 * v36, v4);
          sub_1DA7ACFF0(&qword_1ECBD5948, MEMORY[0x1E69DF0D0], MEMORY[0x1E69DF0E8]);
          v40 = sub_1DA9409F4();
          v41 = *v27;
          (*v27)(v8, v4);
          if (v40)
          {
            break;
          }

          v36 = (v36 + 1) & v37;
          v33 = v28;
          if (((*(v70 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        v41(v71, v4);
        v65(v53, v66, v68);
        v42 = v54;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_1DA885FF8(0, v42[2] + 1, 1, v42);
        }

        v44 = v42[2];
        v46 = v42[3];
        v63 = v44 + 1;
        if (v44 >= v46 >> 1)
        {
          v42 = sub_1DA885FF8((v46 > 1), v44 + 1, 1, v42);
          v45 = v53;
          v54 = v42;
        }

        else
        {
          v54 = v42;
          v45 = v53;
        }
      }

      else
      {
LABEL_10:
        (*v27)(v71, v4);
        v65(v61, v66, v68);
        v42 = v62;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_1DA885FF8(0, v42[2] + 1, 1, v42);
        }

        v44 = v42[2];
        v43 = v42[3];
        v63 = v44 + 1;
        if (v44 >= v43 >> 1)
        {
          v42 = sub_1DA885FF8((v43 > 1), v44 + 1, 1, v42);
        }

        v45 = v61;
        v62 = v42;
      }

      v22 = v64 + 1;
      v16 = v66;
      v30 = v68;
      (*v56)(v66, v68);
      v42[2] = v63;
      v32 = v42 + v59 + v44 * v57;
      v26 = v57;
      (*v55)(v32, v45, v30);
      a2 = v28;
    }

    while (v22 != v60);

    v19 = v50;
    v31 = v54;
  }

  else
  {

    v31 = MEMORY[0x1E69E7CC0];
  }

  sub_1DA9403A4();
  if (v31[2])
  {
    v47 = sub_1DA93F844();
    (*(*(v47 - 8) + 56))(v19, 1, 1, v47);
    sub_1DA9403F4();
  }

  return v31;
}

uint64_t sub_1DA87E6E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - v6;
  v34 = MEMORY[0x1E69E7CC0];
  v30 = a2;

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
  v9 = *(sub_1DA940424() + 16);

  v27 = 0;
  v10 = v9 - 1;
  v28 = (v5 + 16);
  v29 = v5;
  v31 = (v5 + 8);
  while (1)
  {
    v11 = v10;
    if (v10 < 1)
    {
      if ((v10 != 0) | v27 & 1)
      {

        return v34;
      }

      v32 = 0;
      v27 = 1;
    }

    else
    {
      v32 = v10 - 1;
    }

    v12 = sub_1DA940414();
    v14 = v13;
    v15 = *v13;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v14 = v15;
    if ((result & 1) == 0)
    {
      result = sub_1DA884B34(v15);
      v15 = result;
      *v14 = result;
    }

    if (v11 >= v15[2])
    {
      break;
    }

    v17 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v18 = *(v29 + 72) * v11;
    v19 = v8;
    v20 = a1;
    v21 = v30;

    v22 = sub_1DA87E07C(v15 + v17 + v18, v21);
    a1 = v20;
    v8 = v19;

    v12(v33, 0);
    sub_1DA84BFA0(v22);
    result = sub_1DA940424();
    if (v11 >= *(result + 16))
    {
      goto LABEL_14;
    }

    (*v28)(v7, result + v17 + v18, v4);

    v23 = sub_1DA9403E4();
    v24 = *v31;
    (*v31)(v7, v4);
    v10 = v32;
    if (v23)
    {
      v25 = sub_1DA940414();
      sub_1DA8764AC(v11, sub_1DA884B34, &qword_1ECBD5AD0, &qword_1DA95CC68, v7);
      v24(v7, v4);
      v25(v33, 0);
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1DA87EA0C(uint64_t a1, void (**a2)(char *, uint64_t), char *a3, uint64_t a4, uint64_t a5)
{
  v75 = a3;
  v9 = sub_1DA9401F4();
  v88 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v84 = &v67 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AE0, &unk_1DA9656A0);
  v87 = *(v14 - 1);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v67 - v15;
  v17 = sub_1DA940294();
  v73 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v72 = &v67 - v21;

  v80 = a4;
  v22 = sub_1DA8779F8(a1);
  if (v23)
  {
LABEL_9:

    return 0;
  }

  else
  {
    v24 = v22;
    v86 = v12;
    v70 = a5;
    v85 = a2;
    v79 = sub_1DA874D94(a2);
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AA0, &qword_1DA95CB10);
    v25 = sub_1DA940454();
    v27 = v26;
    v28 = *v26;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v27 = v28;
    if ((result & 1) == 0)
    {
      goto LABEL_33;
    }

    for (; (v24 & 0x8000000000000000) == 0; *v27 = result)
    {
      if (v24 >= v28[2])
      {
        goto LABEL_35;
      }

      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48) - 8);
      v77 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v31 = v28 + v77;
      v32 = *(v30 + 72);
      v33 = &v31[v32 * v24];
      v34 = v70;

      v35 = sub_1DA87E6E8(v33, v34);

      (v25)(v89, 0);
      if (!*(v35 + 16))
      {

        goto LABEL_9;
      }

      v83 = v32;
      v69 = v35;
      v89[0] = MEMORY[0x1E69E7CC0];
      sub_1DA7ACFF0(&qword_1ECBD5AF0, MEMORY[0x1E69DF1B0], MEMORY[0x1E69DF1C0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AF8, &qword_1DA95CC88);
      sub_1DA7AD11C(&qword_1ECBD5B00, &qword_1ECBD5AF8, &qword_1DA95CC88, MEMORY[0x1E69E6328]);
      v36 = v72;
      sub_1DA9411D4();
      v37 = v87;
      (*(v87 + 16))(v16, v85, v14);
      if ((*(v37 + 88))(v16, v14) == *MEMORY[0x1E69DF240])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B10, &unk_1DA95CC90);
        v38 = v73;
        v39 = swift_allocObject();
        v39[1] = xmmword_1DA9596E0;
        sub_1DA940284();
        v89[0] = v39;
        sub_1DA9411D4();
        (*(v38 + 40))(v36, v20, v17);
        v16 = v75;
        v40 = v86;
      }

      else
      {
        (*(v37 + 8))(v16, v14);
        v16 = v75;
        v40 = v86;
        v38 = v73;
      }

      sub_1DA9411C4();
      sub_1DA7ACFF0(&qword_1ECBD5B08, MEMORY[0x1E69DF1B0], MEMORY[0x1E69DF1B8]);
      v41 = sub_1DA9409F4();
      v42 = *(v38 + 8);
      v42(v20, v17);
      v44 = v69;
      v73 = v38 + 8;
      if (v41)
      {
        v24 = 0;
        v45 = *(v69 + 16);
        if (!v45)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v24 = 0;
        v44 = sub_1DA87C7EC(v69, v36);

        v45 = *(v44 + 16);
        if (!v45)
        {
LABEL_29:

          v42(v36, v17);
LABEL_30:

          return 1;
        }
      }

      v67 = v42;
      v68 = v17;
      v87 = *(v88 + 16);
      v46 = *(v88 + 80);
      v82 = *(v16 + 2);
      v69 = v44;
      v20 = (v44 + ((v46 + 32) & ~v46));
      v81 = *(v88 + 72);
      v76 = v83 * v79;
      v88 += 16;
      v85 = (v88 - 8);
      *&v43 = 136315138;
      v71 = v43;
      v83 = v9;
      v17 = v84;
      (v87)(v84, v20, v9);
      while (1)
      {
        v48 = sub_1DA940014();
        v49 = MEMORY[0x1EEE9AC00](v48);
        *(&v67 - 4) = v16;
        *(&v67 - 3) = v49;
        *(&v67 - 2) = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD8, &unk_1DA95CC70);
        sub_1DA940FE4();

        v14 = v89[0];
        if (!v89[0])
        {
          if (qword_1ECBD47C8 != -1)
          {
            swift_once();
          }

          v55 = sub_1DA9405A4();
          __swift_project_value_buffer(v55, qword_1ECBE3DD0);
          v17 = v84;
          (v87)(v40, v84, v9);
          v56 = sub_1DA940584();
          v57 = sub_1DA940F14();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            v89[0] = v59;
            *v58 = v71;
            v60 = sub_1DA940014();
            v62 = v61;
            v74 = v24;
            v63 = *v85;
            (*v85)(v86, v83);
            v64 = sub_1DA7AE6E8(v60, v62, v89);
            v16 = v75;

            *(v58 + 4) = v64;
            _os_log_impl(&dword_1DA7A9000, v56, v57, "Could not find notification source settings for bundle identifier: %s", v58, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v59);
            v65 = v59;
            v9 = v83;
            MEMORY[0x1E12739F0](v65, -1, -1);
            v66 = v58;
            v40 = v86;
            MEMORY[0x1E12739F0](v66, -1, -1);

            v63(v17, v9);
            v24 = v74;
          }

          else
          {

            v47 = *v85;
            (*v85)(v40, v9);
            v47(v17, v9);
          }

          goto LABEL_15;
        }

        v51 = [v89[0] notificationSettings];
        v28 = [v51 groupingSetting];

        v27 = sub_1DA940454();
        v53 = v52;
        v25 = *v52;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v53 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v25 = sub_1DA884B48(v25);
          *v53 = v25;
        }

        v9 = v83;
        if ((v79 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v79 >= *(v25 + 16))
        {
          goto LABEL_32;
        }

        v17 = v84;
        sub_1DA875120(v84, v28);
        (v27)(v89, 0);

        (*v85)(v17, v9);
        v40 = v86;
LABEL_15:
        v20 += v81;
        if (!--v45)
        {

          v67(v72, v68);
          goto LABEL_30;
        }

        (v87)(v17, v20, v9);
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      result = sub_1DA884B48(v28);
      v28 = result;
    }

    __break(1u);
LABEL_35:
    __break(1u);
  }

  return result;
}

uint64_t objectdestroy_73Tm()
{
  v1 = sub_1DA9402B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DA87F59C()
{
  v1 = *(sub_1DA9402B4() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v3 + 8))(v0 + v2, ObjectType, v3);
}

uint64_t sub_1DA87F660(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5BB0, &unk_1DA95CD10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA87F6D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DA7B7470;

  return sub_1DA86D0C0(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_0(void (*a1)(void, __n128), uint64_t a2)
{

  (a1)(*(v2 + 24));

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1DA87F814(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1DA87F85C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserNotificationGroupSortComparator(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for UserNotificationGroupSortComparator(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DA87FA24()
{
  result = qword_1ECBD5BC0;
  if (!qword_1ECBD5BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5BC0);
  }

  return result;
}

unint64_t sub_1DA87FA7C()
{
  result = qword_1ECBD5BC8;
  if (!qword_1ECBD5BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5BC8);
  }

  return result;
}

unint64_t sub_1DA87FAD4()
{
  result = qword_1ECBD5BD0;
  if (!qword_1ECBD5BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5BD0);
  }

  return result;
}

unint64_t sub_1DA87FB2C()
{
  result = qword_1ECBD5BD8;
  if (!qword_1ECBD5BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5BD8);
  }

  return result;
}

uint64_t sub_1DA87FB80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA93FAF4();
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v57 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v56 = v55 - v7;
  v64 = sub_1DA9400B4();
  v62 = *(v64 - 8);
  v8 = MEMORY[0x1EEE9AC00](v64);
  v61 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v55 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v55 - v13;
  v15 = sub_1DA93FF94();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v55 - v20;
  v22 = a1;
  sub_1DA940024();
  v23 = a2;
  sub_1DA940024();
  sub_1DA7ACFF0(&qword_1ECBD5BE0, MEMORY[0x1E69DF138], MEMORY[0x1E69DF148]);
  LOBYTE(a1) = sub_1DA9409F4();
  v24 = *(v16 + 8);
  v24(v19, v15);
  v24(v21, v15);
  if (a1)
  {
    v55[2] = v22;
    sub_1DA9400C4();
    v58 = v12;
    v55[1] = v23;
    sub_1DA9400C4();
    v25 = *MEMORY[0x1E69DF150];
    v27 = v61;
    v26 = v62;
    v28 = *(v62 + 13);
    v29 = v64;
    v28(v61, v25, v64);
    sub_1DA7ACFF0(&qword_1ECBD5B90, MEMORY[0x1E69DF168], MEMORY[0x1E69DF178]);
    v63 = v14;
    sub_1DA940B74();
    sub_1DA940B74();
    v30 = *(v26 + 1);
    v30(v27, v29);
    if (v66 == v65)
    {
      v31 = v63;
      v30(v63, v29);
      v28(v31, *MEMORY[0x1E69DF160], v29);
    }

    v28(v27, v25, v29);
    v32 = v58;
    sub_1DA940B74();
    sub_1DA940B74();
    v30(v27, v29);
    if (v66 == v65)
    {
      v30(v32, v29);
      v28(v32, *MEMORY[0x1E69DF160], v29);
    }

    v62 = v30;
    sub_1DA7ACFF0(&unk_1ECBD5BF0, MEMORY[0x1E69DF168], MEMORY[0x1E69DF170]);
    v33 = v63;
    if (sub_1DA9409F4())
    {
      v34 = sub_1DA93FF84();
      v35 = [v34 date];

      v36 = v56;
      sub_1DA93FAB4();

      v37 = sub_1DA93FF84();
      v38 = [v37 date];

      v39 = v57;
      sub_1DA93FAB4();

      v40 = v36;
      LOBYTE(v37) = sub_1DA93FA54();
      v41 = v60;
      v42 = *(v59 + 8);
      v42(v39, v60);
      v42(v40, v41);
      if (v37)
      {
        v43 = v64;
        v44 = v62;
        v62(v58, v64);
        v44(v63, v43);
        return -1;
      }

      else
      {
        v48 = sub_1DA93FF84();
        v49 = v40;
        v50 = [v48 date];

        sub_1DA93FAB4();
        v51 = sub_1DA93FF84();
        v52 = [v51 date];

        sub_1DA93FAB4();
        LOBYTE(v51) = sub_1DA93FA64();
        v42(v39, v41);
        v42(v49, v41);
        v53 = v64;
        v54 = v62;
        v62(v58, v64);
        v54(v63, v53);
        return v51 & 1;
      }
    }

    else
    {
      v28(v27, *MEMORY[0x1E69DF158], v29);
      sub_1DA940B74();
      sub_1DA940B74();
      v47 = v62;
      v62(v27, v29);
      v47(v32, v29);
      v47(v33, v29);
      if (v66 == v65)
      {
        return -1;
      }

      else
      {
        return 1;
      }
    }
  }

  else
  {
    sub_1DA940024();
    sub_1DA940024();
    sub_1DA7ACFF0(&qword_1ECBD5BE8, MEMORY[0x1E69DF138], MEMORY[0x1E69DF140]);
    v46 = sub_1DA9409D4();
    v24(v19, v15);
    v24(v21, v15);
    if (v46)
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t sub_1DA880378(uint64_t a1)
{
  v2 = sub_1DA9401F4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v25 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v25 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v25 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AD0, &qword_1DA95CC68);
  v15 = sub_1DA940394();
  if (*(v15 + 16))
  {
    v28 = v6;
    v29 = v9;
    v16 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v17 = *(v3 + 16);
    v25[1] = a1;
    v26 = v16;
    v27 = v17;
    v17(v12, v15 + v16, v2);

    v18 = *(v3 + 32);
    v18(v14, v12, v2);
    v19 = sub_1DA940394();
    if (*(v19 + 16))
    {
      v20 = v28;
      v27(v28, v19 + v26, v2);

      v21 = v29;
      v18(v29, v20, v2);
      v22 = sub_1DA87FB80(v14, v21);
      v23 = *(v3 + 8);
      v23(v21, v2);
      v23(v14, v2);
      return v22;
    }

    (*(v3 + 8))(v14, v2);
  }

  else
  {
  }

  if (sub_1DA9403E4() & 1) != 0 && (sub_1DA9403E4())
  {
    return 0;
  }

  if (sub_1DA9403E4())
  {
    return 1;
  }

  return -1;
}

id NotificationPipelineAssertion.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NotificationPipelineAssertion.init()()
{
  type metadata accessor for PowerAssertion();
  swift_allocObject();
  *&v0[OBJC_IVAR___UNCNotificationPipelineAssertionImpl_assertion] = sub_1DA898C10(0xD000000000000030, 0x80000001DA952DF0, 0xD00000000000001CLL, 0x80000001DA952E30, 15.0);
  result = os_transaction_create();
  if (result)
  {
    *&v0[OBJC_IVAR___UNCNotificationPipelineAssertionImpl_transaction] = result;
    v2.receiver = v0;
    v2.super_class = type metadata accessor for NotificationPipelineAssertion();
    return objc_msgSendSuper2(&v2, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id NotificationPipelineAssertion.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationPipelineAssertion();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1DA880904(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DA9407F4();
  v19 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DA940854();
  v9 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for Cancellable();
  swift_allocObject();
  v13 = sub_1DA82B1E4(sub_1DA883A04, v12);
  v17 = *(v3 + 32);
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = v13;
  v14[4] = a1;
  v14[5] = a2;
  aBlock[4] = sub_1DA883A0C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_41;
  v15 = _Block_copy(aBlock);

  sub_1DA940824();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1DA825DC4(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v11, v8, v15);
  _Block_release(v15);
  (*(v19 + 8))(v8, v6);
  (*(v9 + 8))(v11, v18);

  return v13;
}

uint64_t sub_1DA880C44()
{
  type metadata accessor for SpotlightIndexListener();
  v0 = swift_allocObject();
  result = sub_1DA880C80();
  qword_1EE11AEB0 = v0;
  return result;
}

uint64_t sub_1DA880C80()
{
  v1 = v0;
  v22 = sub_1DA940FC4();
  v2 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DA940F74();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1DA940854();
  MEMORY[0x1EEE9AC00](v6 - 8);
  *(v0 + 16) = 0;
  *(v0 + 24) = [objc_allocWithZone(type metadata accessor for SpotlightDaemonClient()) init];
  v7 = sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);
  v21[0] = "Client";
  v21[1] = v7;
  sub_1DA940824();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1DA825DC4(&qword_1EE115A60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD0C8(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8090], v22);
  *(v0 + 32) = sub_1DA941004();
  v8 = sub_1DA8480CC(MEMORY[0x1E69E7CC0]);
  v9 = MEMORY[0x1E69E7CD0];
  *(v0 + 40) = v8;
  *(v0 + 48) = v9;
  *(v0 + 56) = 0;
  v10 = *(v0 + 24);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = &v10[OBJC_IVAR____TtC21UserNotificationsCoreP33_2EBB79DBAE553364D10B28CEFE20CBF021SpotlightDaemonClient_handler];
  v13 = *&v10[OBJC_IVAR____TtC21UserNotificationsCoreP33_2EBB79DBAE553364D10B28CEFE20CBF021SpotlightDaemonClient_handler];
  v14 = *&v10[OBJC_IVAR____TtC21UserNotificationsCoreP33_2EBB79DBAE553364D10B28CEFE20CBF021SpotlightDaemonClient_handler + 8];
  *v12 = sub_1DA883A20;
  v12[1] = v11;
  v15 = v10;

  sub_1DA7B5220(v13, v14);

  v16 = *(v1 + 24);
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 sharedInstance];
  [v19 addObserver_];

  return v1;
}

double sub_1DA880FE4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DA9407F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DA940854();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = *(Strong + 32);
    v13 = Strong;
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = v13;
    v19 = v13;
    aBlock[4] = sub_1DA883A28;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DA7AF1D0;
    aBlock[3] = &block_descriptor_55_0;
    v15 = v8;
    v16 = _Block_copy(aBlock);

    sub_1DA940824();
    v21 = MEMORY[0x1E69E7CC0];
    sub_1DA825DC4(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
    v18 = v7;
    sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
    sub_1DA9411D4();
    MEMORY[0x1E12720D0](0, v10, v6, v16);
    _Block_release(v16);
    (*(v4 + 8))(v6, v3);
    (*(v15 + 8))(v10, v18);
  }

  return result;
}

uint64_t sub_1DA8812E8(unint64_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v59 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v58 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v58 - v9;
  result = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  v60 = result;
  *(result + 16) = MEMORY[0x1E69E7CC0];
  v14 = (result + 16);
  v72 = v13;
  if (a1 >> 62)
  {
    result = sub_1DA941264();
    v15 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_47:
    v51 = MEMORY[0x1E69E7CC0];
    v52 = MEMORY[0x1E69E7CC0];
LABEL_48:
    v54 = v60;
    v53 = v61;
    if (v51 >> 62)
    {
      if (!sub_1DA941264())
      {
LABEL_51:
        if (v52 >> 62)
        {
          if (!sub_1DA941264())
          {
            goto LABEL_54;
          }
        }

        else if (!*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_54:
        }

        sub_1DA881EE0(v52);
        goto LABEL_54;
      }
    }

    else if (!*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_51;
    }

    v55 = sub_1DA940D34();
    v56 = v59;
    (*(*(v55 - 8) + 56))(v59, 1, 1, v55);
    v57 = swift_allocObject();
    v57[2] = 0;
    v57[3] = 0;
    v57[4] = v53;
    v57[5] = v54;

    sub_1DA8DB00C(0, 0, v56, &unk_1DA95D1B8, v57);

    goto LABEL_51;
  }

  v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_47;
  }

LABEL_3:
  if (v15 >= 1)
  {
    v16 = 0;
    v69 = 0x80000001DA950720;
    v70 = a1 & 0xC000000000000001;
    v63 = 0x80000001DA950740;
    v62 = MEMORY[0x1E69E7CC0];
    *&v12 = 136315138;
    v64 = v12;
    v66 = v8;
    v67 = v15;
    v65 = v10;
    v68 = v14;
    while (1)
    {
      if (v70)
      {
        v17 = MEMORY[0x1E1272460](v16, a1);
      }

      else
      {
        v17 = *(a1 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = [v17 domainIdentifier];
      if (!v19)
      {
        goto LABEL_25;
      }

      v20 = v19;
      v21 = sub_1DA940A14();
      v23 = v22;

      v24 = v21 == 0xD00000000000001BLL && v69 == v23;
      if (!v24 && (sub_1DA941684() & 1) == 0)
      {
        break;
      }

      v25 = v18;
      MEMORY[0x1E1271CA0]();
      if (*((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DA940C04();
      }

      sub_1DA940C14();

LABEL_7:
      if (v15 == ++v16)
      {
        v51 = *v14;
        v52 = v62;
        goto LABEL_48;
      }
    }

    if (v21 == 0xD000000000000022 && v63 == v23)
    {

LABEL_32:
      v40 = v18;
      MEMORY[0x1E1271CA0]();
      if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DA940C04();
      }

      sub_1DA940C14();

      v62 = v72;
      goto LABEL_7;
    }

    v27 = sub_1DA941684();

    if (v27)
    {
      goto LABEL_32;
    }

LABEL_25:
    if (qword_1EE114E00 != -1)
    {
      swift_once();
    }

    v28 = sub_1DA9405A4();
    __swift_project_value_buffer(v28, qword_1EE11AFA0);
    v29 = v18;
    v30 = sub_1DA940584();
    v31 = sub_1DA940F14();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = a1;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v71[0] = v34;
      *v33 = v64;
      v35 = [v29 domainIdentifier];
      if (v35)
      {
        v36 = v35;
        v37 = sub_1DA940A14();
        v39 = v38;
      }

      else
      {
        v37 = 0;
        v39 = 0xE000000000000000;
      }

      v41 = sub_1DA7AE6E8(v37, v39, v71);

      *(v33 + 4) = v41;
      _os_log_impl(&dword_1DA7A9000, v30, v31, "SpotlightIndexListener handler received unknown domain: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1E12739F0](v34, -1, -1);
      MEMORY[0x1E12739F0](v33, -1, -1);

      a1 = v32;
      v10 = v65;
      v8 = v66;
    }

    else
    {
    }

    v42 = sub_1DA940D34();
    v43 = *(v42 - 8);
    (*(v43 + 56))(v10, 1, 1, v42);
    v44 = swift_allocObject();
    *(v44 + 16) = 0u;
    *(v44 + 32) = 0u;
    *(v44 + 48) = 10;
    sub_1DA81D458(v10, v8);
    v45 = (*(v43 + 48))(v8, 1, v42);

    if (v45 == 1)
    {
      sub_1DA7BA120(v8, &qword_1ECBD4FA0, &unk_1DA958730);
    }

    else
    {
      sub_1DA940D24();
      (*(v43 + 8))(v8, v42);
    }

    v46 = *(v44 + 16);
    swift_unknownObjectRetain();

    if (v46)
    {
      swift_getObjectType();
      v47 = sub_1DA940C34();
      v49 = v48;
      swift_unknownObjectRelease();
    }

    else
    {
      v47 = 0;
      v49 = 0;
    }

    v15 = v67;
    sub_1DA7BA120(v10, &qword_1ECBD4FA0, &unk_1DA958730);
    v50 = swift_allocObject();
    *(v50 + 16) = &unk_1DA95D1A0;
    *(v50 + 24) = v44;
    if (v49 | v47)
    {
      v71[1] = 0;
      v71[2] = 0;
      v71[3] = v47;
      v71[4] = v49;
    }

    v14 = v68;
    swift_task_create();

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA881AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA881B60, 0, 0);
}

uint64_t sub_1DA881B60()
{
  v1 = *(v0[8] + 16);
  v0[11] = v1;
  if (v1)
  {
    v2 = v0[9];
    swift_beginAccess();
    v0[12] = *(v2 + 16);

    return MEMORY[0x1EEE6DFA0](sub_1DA881E04, v1, 0);
  }

  else
  {
    if (qword_1EE114E00 != -1)
    {
      swift_once();
    }

    v3 = sub_1DA9405A4();
    __swift_project_value_buffer(v3, qword_1EE11AFA0);

    v4 = sub_1DA940584();
    v5 = sub_1DA940F14();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[9];
    if (v6)
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      swift_beginAccess();
      v9 = *(v7 + 16);
      if (v9 >> 62)
      {
        v10 = sub_1DA941264();
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v8 + 4) = v10;

      _os_log_impl(&dword_1DA7A9000, v4, v5, "Dropping %ld inferences, notificationInferenceClient isn't set up", v8, 0xCu);
      MEMORY[0x1E12739F0](v8, -1, -1);
    }

    else
    {
    }

    v11 = v0[10];
    v12 = sub_1DA940D34();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    v13 = swift_allocObject();
    *(v13 + 16) = 0u;
    *(v13 + 32) = 0u;
    *(v13 + 48) = 9;
    sub_1DA8DB00C(0, 0, v11, &unk_1DA95D1C0, v13);

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1DA881E04()
{
  sub_1DA926CC4(*(v0 + 96));

  return MEMORY[0x1EEE6DFA0](sub_1DA881E78, 0, 0);
}

uint64_t sub_1DA881E78()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1DA881EE0(unint64_t a1)
{
  v2 = v1;
  if (qword_1EE114E00 != -1)
  {
    swift_once();
  }

  v4 = sub_1DA9405A4();
  __swift_project_value_buffer(v4, qword_1EE11AFA0);

  v5 = sub_1DA940584();
  v6 = sub_1DA940F34();
  v7 = a1 >> 62;
  v42 = a1;
  if (os_log_type_enabled(v5, v6))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    if (v7)
    {
      v9 = sub_1DA941264();
    }

    else
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v8 + 4) = v9;

    _os_log_impl(&dword_1DA7A9000, v5, v6, "Handling group results: %ld", v8, 0xCu);
    MEMORY[0x1E12739F0](v8, -1, -1);
  }

  else
  {
  }

  v46 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v10 = a1;
    v11 = sub_1DA941264();
  }

  else
  {
    v10 = a1;
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    if (v11 < 1)
    {
      __break(1u);
LABEL_38:
      v26 = sub_1DA941264();
      if (v26)
      {
        goto LABEL_22;
      }

LABEL_39:

      v28 = MEMORY[0x1E69E7CC0];
      v38 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v38)
      {
LABEL_42:

        sub_1DA882390();
        return;
      }

LABEL_40:
      v39 = (v28 + 40);
      do
      {
        v40 = *(v39 - 1);
        v41 = *v39;
        swift_beginAccess();

        sub_1DA8A9058(v45, v40, v41);
        swift_endAccess();

        v39 += 2;
        --v38;
      }

      while (v38);
      goto LABEL_42;
    }

    v13 = 0;
    v14 = v10 & 0xC000000000000001;
    do
    {
      if (v14)
      {
        v23 = MEMORY[0x1E1272460](v13, v10);
      }

      else
      {
        v23 = *(v10 + 8 * v13 + 32);
      }

      v24 = v23;
      v25 = sub_1DA8E6198(v24);
      v16 = v15;
      v17 = v2;
      v18 = v25;
      v20 = v19;

      sub_1DA883024(v18, v20, v16 & 1);
      v21 = v18;
      v2 = v17;
      v22 = v20;
      v10 = v42;
      sub_1DA8839F4(v21, v22, v16 & 1);
      ++v13;
    }

    while (v11 != v13);
  }

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_20;
    }

LABEL_34:

    return;
  }

  if (sub_1DA941264() < 1)
  {
    goto LABEL_34;
  }

LABEL_20:
  if (v12 >> 62)
  {
    goto LABEL_38;
  }

  v26 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
    goto LABEL_39;
  }

LABEL_22:
  v44 = MEMORY[0x1E69E7CC0];
  sub_1DA82A778(0, v26 & ~(v26 >> 63), 0);
  if ((v26 & 0x8000000000000000) == 0)
  {
    v43 = v2;
    v27 = 0;
    v28 = v44;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x1E1272460](v27, v12);
      }

      else
      {
        v29 = *(v12 + 8 * v27 + 32);
      }

      v30 = v29;
      v31 = [v29 uniqueIdentifier];
      v32 = sub_1DA940A14();
      v34 = v33;

      v36 = *(v44 + 16);
      v35 = *(v44 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1DA82A778((v35 > 1), v36 + 1, 1);
      }

      ++v27;
      *(v44 + 16) = v36 + 1;
      v37 = v44 + 16 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v34;
    }

    while (v26 != v27);

    v38 = *(v44 + 16);
    if (!v38)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  __break(1u);
}

void sub_1DA882390()
{
  v1 = sub_1DA9408C4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 32);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = sub_1DA9408F4();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (*(v0 + 56))
  {
    return;
  }

  swift_beginAccess();
  v7 = *(v0 + 48);
  if (!*(v7 + 16))
  {
    return;
  }

  *(v0 + 56) = 1;
  *(v0 + 48) = MEMORY[0x1E69E7CD0];
  sub_1DA8E6760(&v24);
  v29 = v26;
  v23 = v25;
  v20 = v27;
  v21 = v28;
  v22 = v24;
  v8 = *(v7 + 16);
  if (!v8)
  {

    sub_1DA7BA120(&v29, &unk_1ECBD5C90, &unk_1DA95D190);
    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  v9 = sub_1DA8BF688(*(v7 + 16), 0);
  v10 = sub_1DA8BF88C(&v30, v9 + 4, v8, v7);
  sub_1DA830720(v30);
  if (v10 != v8)
  {
LABEL_14:
    __break(1u);
    return;
  }

  sub_1DA7BA120(&v29, &unk_1ECBD5C90, &unk_1DA95D190);
LABEL_8:
  v30 = v24;
  v31 = v25;
  v32 = v9;
  v33 = v27;
  v34 = v28;
  v11 = swift_allocObject();
  swift_weakInit();

  if (_s21UserNotificationsCore19PlatformEligibilityV21isGreyMatterAvailableSbvgZ_0())
  {
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1DA883950;
    *(v12 + 24) = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1DA883950;
    *(v13 + 24) = v11;
    swift_retain_n();
  }

  else
  {
    sub_1DA836320();
    v14 = swift_allocError();
    sub_1DA882704(v14, 1, v11);
  }

  v15 = v22;
  v16 = v23;
  v17 = v9;
  v18 = v20;
  v19 = v21;
  sub_1DA88395C(&v15);
}

double sub_1DA882704(void *a1, char a2, uint64_t a3)
{
  v5 = sub_1DA9407F4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DA940854();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20[1] = *(Strong + 32);
    v22 = Strong;
    v15 = swift_allocObject();
    v20[0] = v6;
    v21 = v9;
    v16 = v15;
    swift_weakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = a1;
    v18 = a2 & 1;
    *(v17 + 32) = a2 & 1;
    aBlock[4] = sub_1DA8839CC;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DA7AF1D0;
    aBlock[3] = &block_descriptor_9;
    v19 = _Block_copy(aBlock);

    sub_1DA8839D8(a1, v18);
    sub_1DA940824();
    v23 = MEMORY[0x1E69E7CC0];
    sub_1DA825DC4(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
    sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
    sub_1DA9411D4();
    MEMORY[0x1E12720D0](0, v12, v8, v19);
    _Block_release(v19);
    (*(v20[0] + 8))(v8, v5);
    (*(v10 + 8))(v12, v21);
  }

  return result;
}

double sub_1DA882A4C(uint64_t a1, unint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (a3)
    {
      if (qword_1EE114E00 == -1)
      {
LABEL_4:
        v8 = sub_1DA9405A4();
        __swift_project_value_buffer(v8, qword_1EE11AFA0);
        v9 = a2;
        v10 = sub_1DA940584();
        v11 = sub_1DA940F14();
        sub_1DA8839C0(a2, 1);
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          *&v36 = v13;
          *v12 = 136315138;
          swift_getErrorValue();
          v14 = sub_1DA941704();
          v16 = sub_1DA7AE6E8(v14, v15, &v36);

          *(v12 + 4) = v16;
          _os_log_impl(&dword_1DA7A9000, v10, v11, "Failed to re-fetch group summary item. error: '%s'.", v12, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v13);
          MEMORY[0x1E12739F0](v13, -1, -1);
          MEMORY[0x1E12739F0](v12, -1, -1);
        }

LABEL_32:
        *(v7 + 56) = 0;
        sub_1DA882390();

        return result;
      }

LABEL_24:
      swift_once();
      goto LABEL_4;
    }

    v33 = Strong;
    v7 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      v17 = sub_1DA941264();
      if (v17)
      {
LABEL_9:
        v18 = 0;
        v19 = a2 & 0xC000000000000001;
        v20 = MEMORY[0x1E69E7CC0];
        v34 = a2;
        while (1)
        {
          if (v19)
          {
            v22 = MEMORY[0x1E1272460](v18, a2);
          }

          else
          {
            if (v18 >= *(v7 + 16))
            {
              goto LABEL_23;
            }

            v22 = *(a2 + 8 * v18 + 32);
          }

          v23 = v22;
          v24 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          v38 = v22;
          sub_1DA882DBC(&v38, &v36);

          v25 = v37;
          if (v37 != 255)
          {
            v35 = v36;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v20 = sub_1DA88650C(0, *(v20 + 2) + 1, 1, v20);
            }

            v27 = *(v20 + 2);
            v26 = *(v20 + 3);
            if (v27 >= v26 >> 1)
            {
              v20 = sub_1DA88650C((v26 > 1), v27 + 1, 1, v20);
            }

            *(v20 + 2) = v27 + 1;
            v21 = &v20[24 * v27];
            *(v21 + 2) = v35;
            v21[48] = v25 & 1;
            a2 = v34;
          }

          ++v18;
          if (v24 == v17)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    else
    {
      v17 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_9;
      }
    }

    v20 = MEMORY[0x1E69E7CC0];
LABEL_27:
    v28 = *(v20 + 2);
    if (v28)
    {
      v29 = v20 + 48;
      v7 = v33;
      do
      {
        v30 = *(v29 - 2);
        v31 = *(v29 - 1);
        v32 = *v29;
        v29 += 24;
        sub_1DA8839E4(v30, v31, v32);
        sub_1DA883024(v30, v31, v32);
        sub_1DA8839F4(v30, v31, v32);
        --v28;
      }

      while (v28);
    }

    else
    {

      v7 = v33;
    }

    goto LABEL_32;
  }

  return result;
}

void sub_1DA882DBC(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = [*a1 uniqueIdentifier];
  v6 = sub_1DA940A14();
  v8 = v7;

  v9 = v4;
  v10 = sub_1DA8E6198(v9);
  if (v2)
  {

    if (qword_1EE114E00 != -1)
    {
      swift_once();
    }

    v13 = sub_1DA9405A4();
    __swift_project_value_buffer(v13, qword_1EE11AFA0);

    v14 = v2;
    v15 = sub_1DA940584();
    v16 = sub_1DA940F14();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27 = v18;
      *v17 = 136446466;
      v19 = sub_1DA7AE6E8(v6, v8, &v27);

      *(v17 + 4) = v19;
      *(v17 + 12) = 2080;
      swift_getErrorValue();
      v20 = sub_1DA941704();
      v22 = sub_1DA7AE6E8(v20, v21, &v27);

      *(v17 + 14) = v22;
      _os_log_impl(&dword_1DA7A9000, v15, v16, "Could not create SpotlightGroupInferenceResult from re-fetched group summary item with identifier '%{public}s'. error: '%s'.", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v18, -1, -1);
      MEMORY[0x1E12739F0](v17, -1, -1);
    }

    else
    {
    }

    *a2 = 0;
    *(a2 + 8) = 0;
    v26 = -1;
  }

  else
  {
    v23 = v10;
    v24 = v11;
    v25 = v12;

    v26 = v25 & 1;
    *a2 = v23;
    *(a2 + 8) = v24;
  }

  *(a2 + 16) = v26;
}

void sub_1DA883024(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  v7 = *(v3 + 40);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (v10)
  {
    v13 = v12;
LABEL_9:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = *(*(v7 + 56) + ((v13 << 10) | (16 * v14)));

    v15(a1, a2, a3 & 1);
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      return;
    }

    v10 = *(v7 + 64 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1DA883150()
{

  return swift_deallocClassInstance();
}

double sub_1DA8831CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DA9407F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DA940854();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17[1] = *(Strong + 32);
    v19 = Strong;
    v13 = swift_allocObject();
    v17[0] = v4;
    v18 = v7;
    v14 = v13;
    swift_weakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = a1;
    aBlock[4] = sub_1DA883A18;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DA7AF1D0;
    aBlock[3] = &block_descriptor_48;
    v16 = _Block_copy(aBlock);

    sub_1DA940824();
    v20 = MEMORY[0x1E69E7CC0];
    sub_1DA825DC4(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
    sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
    sub_1DA9411D4();
    MEMORY[0x1E12720D0](0, v10, v6, v16);
    _Block_release(v16);
    (*(v17[0] + 8))(v6, v3);
    (*(v8 + 8))(v10, v18);
  }

  return result;
}

double sub_1DA8834FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    sub_1DA8F0E70(0, 0, a2);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1DA88358C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a1 + 40);
  *(a1 + 40) = 0x8000000000000000;
  sub_1DA90B540(a3, a4, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + 40) = v10;
  return swift_endAccess();
}

void sub_1DA88362C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCoreP33_2EBB79DBAE553364D10B28CEFE20CBF021SpotlightDaemonClient_handler);
  if (v2)
  {
    v4 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCoreP33_2EBB79DBAE553364D10B28CEFE20CBF021SpotlightDaemonClient_handler + 8);

    v2(a1);

    sub_1DA7B5220(v2, v4);
  }

  else
  {
    if (qword_1EE114E00 != -1)
    {
      swift_once();
    }

    v5 = sub_1DA9405A4();
    __swift_project_value_buffer(v5, qword_1EE11AFA0);
    oslog = sub_1DA940584();
    v6 = sub_1DA940F14();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DA7A9000, oslog, v6, "SpotlightDaemonClient: No handler", v7, 2u);
      MEMORY[0x1E12739F0](v7, -1, -1);
    }
  }
}

id sub_1DA883840()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpotlightDaemonClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1DA8838BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1DA883904(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1DA8839C0(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_1DA8839D8(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

id sub_1DA8839E4(void *a1, id a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return a1;
  }
}

void sub_1DA8839F4(void *a1, id a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1DA883A30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DA7B7470;

  return sub_1DA928D40(a1, v4);
}

uint64_t sub_1DA883AE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DA7B7470;

  return sub_1DA881AC4(a1, v4, v5, v7, v6);
}

id sub_1DA883BC0(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v16 = a2;
  v14 = sub_1DA940FC4();
  v3 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DA940F74();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1DA940854();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v13 = OBJC_IVAR____TtC21UserNotificationsCore31NotificationCoreServiceListener_queue;
  v8 = sub_1DA7AC344();
  v12[1] = "enerConfiguring>8";
  v12[2] = v8;
  sub_1DA940824();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1DA825DC4(&qword_1EE115A60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD0C8(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8090], v14);
  *&v2[v13] = sub_1DA941004();
  *&v2[OBJC_IVAR____TtC21UserNotificationsCore31NotificationCoreServiceListener_queue_listener] = 0;
  *&v2[OBJC_IVAR____TtC21UserNotificationsCore31NotificationCoreServiceListener_queue_connections] = MEMORY[0x1E69E7CC0];
  v9 = v16;
  *&v2[OBJC_IVAR____TtC21UserNotificationsCore31NotificationCoreServiceListener_notificationRepository] = v15;
  *&v2[OBJC_IVAR____TtC21UserNotificationsCore31NotificationCoreServiceListener_categoryRepository] = v9;
  v10 = type metadata accessor for NotificationCoreServiceListener();
  v17.receiver = v2;
  v17.super_class = v10;
  return objc_msgSendSuper2(&v17, sel_init);
}

void sub_1DA883E78()
{
  v1 = objc_opt_self();
  v2 = [v1 domain];
  if (!v2)
  {
    sub_1DA940A14();
    v2 = sub_1DA940A04();
  }

  v3 = sub_1DA940A14();
  v5 = v4;
  v6 = [v1 serviceInterface];
  v14[2] = v3;
  v14[3] = v5;
  v14[4] = MEMORY[0x1EEE9AC00](v6);
  v14[5] = v0;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DA885474;
  *(v7 + 24) = v14;
  aBlock[4] = sub_1DA7AF9C8;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA88419C;
  aBlock[3] = &block_descriptor_20_0;
  v8 = _Block_copy(aBlock);
  v9 = objc_opt_self();

  v10 = [v9 listenerWithConfigurator_];
  _Block_release(v8);

  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    v11 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore31NotificationCoreServiceListener_queue_listener);
    *(v0 + OBJC_IVAR____TtC21UserNotificationsCore31NotificationCoreServiceListener_queue_listener) = v10;
    v12 = v10;

    [v12 activate];
    v13 = [objc_opt_self() activateManualDomain_];

    swift_unknownObjectRelease();
  }
}

id sub_1DA8840D4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = sub_1DA940A04();
  [a1 setDomain_];

  v9 = [a4 identifier];
  if (!v9)
  {
    sub_1DA940A14();
    v9 = sub_1DA940A04();
  }

  [a1 setService_];

  return [a1 setDelegate_];
}

uint64_t sub_1DA88419C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

id sub_1DA884220()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationCoreServiceListener();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1DA8842F4(void *a1, uint64_t a2)
{
  v4 = [a1 remoteToken];
  v5 = sub_1DA940A04();
  v6 = [v4 hasEntitlement_];

  if (v6)
  {
    v7 = *(a2 + OBJC_IVAR____TtC21UserNotificationsCore31NotificationCoreServiceListener_notificationRepository);
    v8 = *(a2 + OBJC_IVAR____TtC21UserNotificationsCore31NotificationCoreServiceListener_categoryRepository);
    v9 = type metadata accessor for NotificationCoreServiceConnection();
    v10 = objc_allocWithZone(v9);
    *&v10[OBJC_IVAR____TtC21UserNotificationsCore33NotificationCoreServiceConnection_delegate + 8] = 0;
    v11 = swift_unknownObjectWeakInit();
    *&v10[OBJC_IVAR____TtC21UserNotificationsCore33NotificationCoreServiceConnection_connection] = a1;
    *&v10[OBJC_IVAR____TtC21UserNotificationsCore33NotificationCoreServiceConnection_notificationRepository] = v7;
    *&v10[OBJC_IVAR____TtC21UserNotificationsCore33NotificationCoreServiceConnection_categoryRepository] = v8;
    *(v11 + 8) = &off_1F5634C58;
    swift_unknownObjectWeakAssign();
    v27.receiver = v10;
    v27.super_class = v9;
    v12 = a1;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v13 = objc_msgSendSuper2(&v27, sel_init);
    sub_1DA91A2C4();
    v14 = OBJC_IVAR____TtC21UserNotificationsCore31NotificationCoreServiceListener_queue_connections;
    swift_beginAccess();
    v15 = v13;
    MEMORY[0x1E1271CA0]();
    if (*((*(a2 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v14) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DA940C04();
    }

    sub_1DA940C14();
    swift_endAccess();
  }

  else
  {
    [a1 invalidate];
    if (qword_1EE115AA0 != -1)
    {
      swift_once();
    }

    v16 = sub_1DA9405A4();
    __swift_project_value_buffer(v16, qword_1EE11B068);
    v17 = v4;
    oslog = sub_1DA940584();
    v18 = sub_1DA940F14();

    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315394;
      v21 = [v17 bundleID];
      if (v21)
      {
        v22 = v21;
        sub_1DA940A14();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD73A0, &unk_1DA95CC50);
      v23 = sub_1DA940A74();
      v25 = sub_1DA7AE6E8(v23, v24, &v28);

      *(v19 + 4) = v25;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_1DA7AE6E8(0xD00000000000001FLL, 0x80000001DA95D1D0, &v28);
      _os_log_impl(&dword_1DA7A9000, oslog, v18, "Entitlement is missing. %s could not connect to %s.", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v20, -1, -1);
      MEMORY[0x1E12739F0](v19, -1, -1);
    }

    else
    {
    }
  }
}

double sub_1DA884758(void *a1)
{
  v3 = sub_1DA9407F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DA940854();
  v7 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *&v1[OBJC_IVAR____TtC21UserNotificationsCore31NotificationCoreServiceListener_queue];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1DA884B04;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_10;
  v11 = _Block_copy(aBlock);
  v12 = v1;
  v13 = a1;
  sub_1DA940824();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1DA825DC4(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v16);

  return result;
}

void sub_1DA884A1C(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC21UserNotificationsCore31NotificationCoreServiceListener_queue_connections;
  swift_beginAccess();
  v5 = a2;
  v6 = sub_1DA88501C((a1 + v4), v5);

  v7 = *(a1 + v4);
  if (v7 >> 62)
  {
    v8 = sub_1DA941264();
    if (v8 >= v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8 >= v6)
    {
LABEL_3:
      sub_1DA885378(v6, v8, sub_1DA84D398, sub_1DA8ED468);
      swift_endAccess();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1DA884B70(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1DA941264();
  }

  return sub_1DA941394();
}

unint64_t sub_1DA884C54(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = sub_1DA941264();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = MEMORY[0x1E1272460](v4, a1);
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

double sub_1DA884D58(void *a1)
{
  v3 = sub_1DA9407F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DA940854();
  v7 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *&v1[OBJC_IVAR____TtC21UserNotificationsCore31NotificationCoreServiceListener_queue];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v1;
  aBlock[4] = sub_1DA885240;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_14_0;
  v11 = _Block_copy(aBlock);
  v12 = a1;
  v13 = v1;
  sub_1DA940824();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1DA825DC4(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v16);

  return result;
}

uint64_t sub_1DA88501C(unint64_t *a1, void *a2)
{
  v7 = *a1;
  v8 = sub_1DA884C54(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_1DA941264();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_1DA941264())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v21 = MEMORY[0x1E1272460](v11, v7);
    swift_unknownObjectRelease();
    if (v21 != a2)
    {
      if (v10 != v11)
      {
        v3 = MEMORY[0x1E1272460](v10, v7);
        v17 = MEMORY[0x1E1272460](v11, v7);
        goto LABEL_21;
      }

LABEL_9:
      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v15)
    {
      goto LABEL_40;
    }

    v16 = *(v7 + 32 + 8 * v11);
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v15)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);
        v17 = v16;
LABEL_21:
        v18 = v17;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_1DA884B70(v7);
          v19 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        v20 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v18;

        if ((v7 & 0x8000000000000000) != 0 || v19)
        {
          v7 = sub_1DA884B70(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        v12 = v4 + 8 * v11;
        v13 = *(v12 + 32);
        *(v12 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return sub_1DA941264();
}

uint64_t sub_1DA885274(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_1DA885378(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = a3;
    v5 = a2;
    v7 = a1;
    v9 = *v6;
    v10 = *v6 >> 62;
    v15 = a4;
    if (!v10)
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1DA941264();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v5, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 - v5;
  if (__OFSUB__(0, v5 - v7))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v10)
  {
    v13 = sub_1DA941264();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (v14)
  {
    goto LABEL_18;
  }

  v8(result, 1);

  return v15(v7, v5, 0);
}

void *sub_1DA885540@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1DA88556C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t NotificationPublisherDestinations.description.getter()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_1DA7B6928(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1DA7B6928((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x6C6E4F646E756F73;
  *(v5 + 5) = 0xE900000000000079;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1DA7B6928(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1DA7B6928((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x73656369746F6ELL;
    *(v8 + 5) = 0xE700000000000000;
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1DA7B6928(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_1DA7B6928((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0x657263536B636F6CLL;
    *(v11 + 5) = 0xEA00000000006E65;
    if ((v1 & 8) == 0)
    {
LABEL_14:
      if ((v1 & 0x40) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_30;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DA7B6928(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_1DA7B6928((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 0x7472656C61;
  *(v14 + 5) = 0xE500000000000000;
  if ((v1 & 0x40) == 0)
  {
LABEL_15:
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_30:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DA7B6928(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = sub_1DA7B6928((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  v17 = &v2[16 * v16];
  *(v17 + 4) = 7496035;
  *(v17 + 5) = 0xE300000000000000;
  if ((v1 & 0x80) == 0)
  {
LABEL_16:
    if ((v1 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_35:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DA7B6928(0, *(v2 + 2) + 1, 1, v2);
  }

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_1DA7B6928((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  *(v20 + 4) = 0x6E656B6F7073;
  *(v20 + 5) = 0xE600000000000000;
  if ((v1 & 0x100) == 0)
  {
LABEL_17:
    if ((v1 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_40:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DA7B6928(0, *(v2 + 2) + 1, 1, v2);
  }

  v22 = *(v2 + 2);
  v21 = *(v2 + 3);
  if (v22 >= v21 >> 1)
  {
    v2 = sub_1DA7B6928((v21 > 1), v22 + 1, 1, v2);
  }

  *(v2 + 2) = v22 + 1;
  v23 = &v2[16 * v22];
  *(v23 + 4) = 0x6964726177726F66;
  *(v23 + 5) = 0xEA0000000000676ELL;
  if ((v1 & 0x400) == 0)
  {
LABEL_18:
    if ((v1 & 0x10000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_50;
  }

LABEL_45:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DA7B6928(0, *(v2 + 2) + 1, 1, v2);
  }

  v25 = *(v2 + 2);
  v24 = *(v2 + 3);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_1DA7B6928((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 2) = v25 + 1;
  v26 = &v2[16 * v25];
  strcpy(v26 + 32, "unreadNotices");
  *(v26 + 23) = -4864;
  if ((v1 & 0x10000) != 0)
  {
LABEL_50:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1DA7B6928(0, *(v2 + 2) + 1, 1, v2);
    }

    v28 = *(v2 + 2);
    v27 = *(v2 + 3);
    if (v28 >= v27 >> 1)
    {
      v2 = sub_1DA7B6928((v27 > 1), v28 + 1, 1, v2);
    }

    *(v2 + 2) = v28 + 1;
    v29 = &v2[16 * v28];
    *(v29 + 4) = 0x656469727265766FLL;
    *(v29 + 5) = 0xE800000000000000;
  }

LABEL_55:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
  sub_1DA7B6A38();
  v30 = sub_1DA9409C4();
  v32 = v31;

  MEMORY[0x1E1271BD0](v30, v32);

  MEMORY[0x1E1271BD0](93, 0xE100000000000000);
  return 91;
}

unint64_t sub_1DA885B6C()
{
  result = qword_1ECBD5D98;
  if (!qword_1ECBD5D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5D98);
  }

  return result;
}

unint64_t sub_1DA885BC4()
{
  result = qword_1ECBD5DA0;
  if (!qword_1ECBD5DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5DA0);
  }

  return result;
}

unint64_t sub_1DA885C1C()
{
  result = qword_1ECBD5DA8;
  if (!qword_1ECBD5DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5DA8);
  }

  return result;
}

unint64_t sub_1DA885C74()
{
  result = qword_1ECBD5DB0;
  if (!qword_1ECBD5DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5DB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NotificationPublisherDestinations(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NotificationPublisherDestinations(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

void *sub_1DA885D94(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5690, &qword_1DA95B5F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD56A0, &qword_1DA95D470);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DA885EEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5E40, &qword_1DA95D540);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DA886068(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5DC8, &qword_1DA95D488);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}