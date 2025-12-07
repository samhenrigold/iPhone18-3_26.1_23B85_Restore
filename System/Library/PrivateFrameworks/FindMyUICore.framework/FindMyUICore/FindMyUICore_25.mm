uint64_t sub_24B28CB68()
{
  v192 = v0;
  v1 = v0[31];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[21] + OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_subscriptionsStorage;
  swift_beginAccess();
  v185 = *(v3 + 16);
  v185(v1, v4, v2);

  v5 = sub_24B2D3164();
  v6 = sub_24B2D5934();

  v190 = v4;
  if (os_log_type_enabled(v5, v6))
  {
    v181 = v0[25];
    v183 = v0[31];
    v8 = v0[23];
    v7 = v0[24];
    v9 = v0[22];
    v177 = v0[20];
    v179 = v0[26];
    v175 = v0[19];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v191 = v11;
    *v10 = 136447235;
    sub_24B2D12A4();
    v12 = sub_24B2D24B4();
    v14 = v13;
    (*(v8 + 8))(v7, v9);
    v15 = sub_24AFF321C(v12, v14, &v191);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2160;
    *(v10 + 14) = 1752392040;
    *(v10 + 22) = 2081;
    sub_24B137F64(v16, v17, v18);
    v19 = sub_24B2D57F4();
    v21 = sub_24AFF321C(v19, v20, &v191);

    *(v10 + 24) = v21;
    *(v10 + 32) = 2160;
    *(v10 + 34) = 1752392040;
    *(v10 + 42) = 2081;
    v0[16] = v175;
    v0[17] = v177;

    v22 = sub_24B2D53C4();
    v24 = sub_24AFF321C(v22, v23, &v191);

    *(v10 + 44) = v24;
    _os_log_impl(&dword_24AFD2000, v5, v6, "Provider(%{public}s):setSubscriptions\n- subscriptions: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v10, 0x34u);
    swift_arrayDestroy();
    v25 = v11;
    v4 = v190;
    MEMORY[0x24C23D530](v25, -1, -1);
    MEMORY[0x24C23D530](v10, -1, -1);

    v26 = *(v179 + 8);
    v26(v183, v181);
  }

  else
  {
    v27 = v0[31];
    v28 = v0[25];
    v29 = v0[26];

    v26 = *(v29 + 8);
    v26(v27, v28);
  }

  v30 = v0[18];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC838, &unk_24B2F1230);
  v32 = *(v4 + *(v31 + 36));
  v34 = v0[19];
  v33 = v0[20];
  v182 = v26;
  v184 = *(v4 + *(v31 + 40));
  if (*(v30 + 16))
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v191 = v32;
    sub_24B1C94C8(v30, v34, v33, isUniquelyReferenced_nonNull_native);

    v36 = v191;
  }

  else
  {

    sub_24B18C22C(0, v34, v33);
    v36 = v32;
  }

  v37 = *(v36 + 64);
  v191 = MEMORY[0x277D84F90];
  v38 = -1;
  v39 = -1 << *(v36 + 32);
  if (-v39 < 64)
  {
    v38 = ~(-1 << -v39);
  }

  v40 = v38 & v37;
  v41 = (63 - v39) >> 6;
  result = swift_bridgeObjectRetain_n();
  v43 = 0;
  if (v40)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v44 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
      return result;
    }

    if (v44 >= v41)
    {
      break;
    }

    v40 = *(v36 + 64 + 8 * v44);
    ++v43;
    if (v40)
    {
      v43 = v44;
      do
      {
LABEL_15:
        v40 &= v40 - 1;

        result = sub_24B030108(v45);
      }

      while (v40);
      continue;
    }
  }

  v46 = sub_24B1D02FC(v191);

  v47 = v0[18];
  if (*(v184 + 16) <= *(v30 + 16) >> 3)
  {
    v191 = v0[18];

    sub_24B2A4BB8(v184, sub_24B1BB68C);
    v173 = v191;
  }

  else
  {

    v173 = sub_24B2B18E0(v184, v47, &qword_27EFCC848, &qword_24B2EC0E0);
  }

  v178 = v31;
  if (*(v46 + 16) <= *(v184 + 16) >> 3)
  {
    v191 = v184;

    sub_24B2A4BB8(v46, sub_24B1BB68C);
    v48 = v191;
  }

  else
  {

    v48 = sub_24B2B18E0(v46, v184, &qword_27EFCC848, &qword_24B2EC0E0);
  }

  v49 = v0[25];
  v180 = v46;
  v176 = v30;
  if (*(v48 + 16))
  {
    v185(v0[29], v4, v49);

    v50 = sub_24B2D3164();
    v51 = sub_24B2D5934();

    v52 = os_log_type_enabled(v50, v51);
    v53 = v0[29];
    v54 = v0[25];
    if (v52)
    {
      v169 = v0[25];
      v55 = v0[23];
      v56 = v0[24];
      v163 = v0[29];
      v57 = v0[22];
      v157 = v0[19];
      v159 = v0[20];
      v58 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      v191 = v161;
      *v58 = 136447235;
      sub_24B2D12A4();
      v59 = sub_24B2D24B4();
      v61 = v60;
      (*(v55 + 8))(v56, v57);
      v62 = sub_24AFF321C(v59, v61, &v191);

      *(v58 + 4) = v62;
      *(v58 + 12) = 2160;
      *(v58 + 14) = 1752392040;
      *(v58 + 22) = 2081;
      sub_24B137F64(v63, v64, v65);
      v66 = sub_24B2D57F4();
      v68 = sub_24AFF321C(v66, v67, &v191);

      *(v58 + 24) = v68;
      *(v58 + 32) = 2160;
      v46 = v180;
      *(v58 + 34) = 1752392040;
      *(v58 + 42) = 2081;
      v0[12] = v157;
      v0[13] = v159;

      v69 = sub_24B2D53C4();
      v71 = sub_24AFF321C(v69, v70, &v191);

      *(v58 + 44) = v71;
      _os_log_impl(&dword_24AFD2000, v50, v51, "Provider(%{public}s):setSubscriptions-didRemoveUniqueSubscriptions:YES\n- SubscriptionsThatDoNotExistAnymore: %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v58, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v161, -1, -1);
      MEMORY[0x24C23D530](v58, -1, -1);

      v72 = v163;
      v73 = v169;
    }

    else
    {

      v72 = v53;
      v73 = v54;
    }

    v99 = v182;
    v182(v72, v73);
    v100 = v173;
    v4 = v190;
    if (!*(v46 + 16))
    {
      v101 = v0[21];
      v102 = OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_valuePublisher;
      if (*(v101 + OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_valuePublisher))
      {

        sub_24B2D5764();
      }

      *(v101 + v102) = 0;
    }
  }

  else
  {
    v185(v0[30], v4, v49);

    v74 = sub_24B2D3164();
    v75 = sub_24B2D5934();

    v76 = os_log_type_enabled(v74, v75);
    v77 = v0[30];
    v78 = v0[25];
    if (v76)
    {
      v166 = v0[30];
      v170 = v0[25];
      v80 = v0[23];
      v79 = v0[24];
      v81 = v0[22];
      v160 = v0[19];
      v162 = v0[20];
      v82 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      v191 = v164;
      *v82 = 136447235;
      sub_24B2D12A4();
      v83 = sub_24B2D24B4();
      v158 = v75;
      v85 = v84;
      (*(v80 + 8))(v79, v81);
      v86 = sub_24AFF321C(v83, v85, &v191);

      *(v82 + 4) = v86;
      *(v82 + 12) = 2160;
      *(v82 + 14) = 1752392040;
      *(v82 + 22) = 2081;
      sub_24B137F64(v87, v88, v89);
      v90 = sub_24B2D57F4();
      v92 = sub_24AFF321C(v90, v91, &v191);

      *(v82 + 24) = v92;
      *(v82 + 32) = 2160;
      *(v82 + 34) = 1752392040;
      *(v82 + 42) = 2081;
      v0[14] = v160;
      v0[15] = v162;

      v93 = sub_24B2D53C4();
      v95 = sub_24AFF321C(v93, v94, &v191);

      *(v82 + 44) = v95;
      _os_log_impl(&dword_24AFD2000, v74, v158, "Provider(%{public}s):setSubscriptions-didRemoveUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v82, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v164, -1, -1);
      v96 = v82;
      v4 = v190;
      MEMORY[0x24C23D530](v96, -1, -1);

      v97 = v166;
      v98 = v170;
    }

    else
    {

      v97 = v77;
      v98 = v78;
    }

    v99 = v182;
    v182(v97, v98);
    v100 = v173;
  }

  v103 = v0[25];
  if (*(v100 + 16))
  {
    v104 = v0[27];

    v185(v104, v4, v103);

    v105 = sub_24B2D3164();
    v106 = sub_24B2D5934();

    v107 = os_log_type_enabled(v105, v106);
    v108 = v0[27];
    v109 = v0[25];
    if (v107)
    {
      v188 = v0[25];
      v111 = v0[23];
      v110 = v0[24];
      v186 = v0[27];
      v112 = v0[22];
      v165 = v0[19];
      v167 = v0[20];
      v113 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      v191 = v171;
      *v113 = 136447235;
      sub_24B2D12A4();
      v114 = sub_24B2D24B4();
      v116 = v115;
      (*(v111 + 8))(v110, v112);
      v117 = sub_24AFF321C(v114, v116, &v191);

      *(v113 + 4) = v117;
      *(v113 + 12) = 2160;
      *(v113 + 14) = 1752392040;
      *(v113 + 22) = 2081;
      sub_24B137F64(v118, v119, v120);
      v121 = sub_24B2D57F4();
      v123 = v122;

      v124 = sub_24AFF321C(v121, v123, &v191);

      *(v113 + 24) = v124;
      *(v113 + 32) = 2160;
      *(v113 + 34) = 1752392040;
      *(v113 + 42) = 2081;
      v0[8] = v165;
      v0[9] = v167;

      v125 = sub_24B2D53C4();
      v127 = sub_24AFF321C(v125, v126, &v191);

      *(v113 + 44) = v127;
      _os_log_impl(&dword_24AFD2000, v105, v106, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:YES\n- subscriptionsThatDidNotExistBefore: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v113, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v171, -1, -1);
      MEMORY[0x24C23D530](v113, -1, -1);

      v182(v186, v188);
    }

    else
    {

      v99(v108, v109);
    }

    v152 = *(v184 + 16);

    if (!v152)
    {
      sub_24B2010E4();
    }

    if (*(v176 + 16))
    {
      goto LABEL_44;
    }

LABEL_47:
    v153 = 0;
    goto LABEL_48;
  }

  v128 = v0[28];

  v185(v128, v4, v103);

  v129 = sub_24B2D3164();
  v130 = sub_24B2D5934();

  v131 = os_log_type_enabled(v129, v130);
  v132 = v0[28];
  v133 = v0[25];
  if (v131)
  {
    v189 = v0[25];
    v135 = v0[23];
    v134 = v0[24];
    v187 = v0[28];
    v136 = v0[22];
    v168 = v0[19];
    v172 = v0[20];
    v137 = swift_slowAlloc();
    v174 = swift_slowAlloc();
    v191 = v174;
    *v137 = 136447235;
    sub_24B2D12A4();
    v138 = sub_24B2D24B4();
    v140 = v139;
    (*(v135 + 8))(v134, v136);
    v141 = sub_24AFF321C(v138, v140, &v191);

    *(v137 + 4) = v141;
    *(v137 + 12) = 2160;
    *(v137 + 14) = 1752392040;
    *(v137 + 22) = 2081;
    sub_24B137F64(v142, v143, v144);
    v145 = sub_24B2D57F4();
    v147 = v146;

    v148 = sub_24AFF321C(v145, v147, &v191);

    *(v137 + 24) = v148;
    *(v137 + 32) = 2160;
    *(v137 + 34) = 1752392040;
    *(v137 + 42) = 2081;
    v0[10] = v168;
    v0[11] = v172;

    v149 = sub_24B2D53C4();
    v151 = sub_24AFF321C(v149, v150, &v191);

    *(v137 + 44) = v151;
    _os_log_impl(&dword_24AFD2000, v129, v130, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v137, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v174, -1, -1);
    MEMORY[0x24C23D530](v137, -1, -1);

    v182(v187, v189);
  }

  else
  {

    v99(v132, v133);
  }

  if (!*(v176 + 16))
  {
    goto LABEL_47;
  }

LABEL_44:
  v153 = v0[18];

LABEL_48:
  v154 = v0[19];
  v155 = v0[20];
  swift_beginAccess();

  sub_24B18C22C(v153, v154, v155);
  sub_24B297674(&qword_27EFCC838, &unk_24B2F1230, &qword_27EFCF888, &unk_24B2F57F0);
  *(v190 + *(v178 + 40)) = v180;

  sub_24B2978F4();
  swift_endAccess();

  v156 = v0[1];

  return v156();
}

uint64_t sub_24B28DC6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  v4[23] = swift_task_alloc();
  v5 = sub_24B2D2504();
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  v6 = sub_24B2D3184();
  v4[27] = v6;
  v4[28] = *(v6 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B28DDF4, v3, 0);
}

void sub_24B28DDF4()
{
  v182 = v0;
  v1 = v0[33];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[22];
  v5 = OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_subscriptionsStorage;
  v0[34] = OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_subscriptionsStorage;
  v6 = v4 + v5;
  swift_beginAccess();
  v175 = *(v3 + 16);
  v175(v1, v6, v2);

  v7 = sub_24B2D3164();
  v8 = sub_24B2D5934();

  v173 = v6;
  if (os_log_type_enabled(v7, v8))
  {
    v178 = v0[33];
    v167 = v0[28];
    v169 = v0[27];
    v9 = v0[25];
    v10 = v0[26];
    v11 = v0[24];
    v159 = v0[20];
    v162 = v0[21];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v181 = v13;
    *v12 = 136447235;
    sub_24B2D12A4();
    v14 = sub_24B2D24B4();
    v16 = v15;
    (*(v9 + 8))(v10, v11);
    v17 = sub_24AFF321C(v14, v16, &v181);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    type metadata accessor for ContactsProvider.Subscription(0);
    sub_24B2BF448(&qword_27EFCDB80, type metadata accessor for ContactsProvider.Subscription, &protocol conformance descriptor for ContactsProvider.Subscription);
    v18 = sub_24B2D57F4();
    v20 = sub_24AFF321C(v18, v19, &v181);

    *(v12 + 24) = v20;
    *(v12 + 32) = 2160;
    *(v12 + 34) = 1752392040;
    *(v12 + 42) = 2081;
    v0[16] = v159;
    v0[17] = v162;

    v21 = sub_24B2D53C4();
    v23 = sub_24AFF321C(v21, v22, &v181);

    *(v12 + 44) = v23;
    _os_log_impl(&dword_24AFD2000, v7, v8, "Provider(%{public}s):setSubscriptions\n- subscriptions: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v12, 0x34u);
    swift_arrayDestroy();
    v24 = v13;
    v6 = v173;
    MEMORY[0x24C23D530](v24, -1, -1);
    MEMORY[0x24C23D530](v12, -1, -1);

    v25 = *(v167 + 8);
    v25(v178, v169);
  }

  else
  {
    v26 = v0[33];
    v27 = v0[27];
    v28 = v0[28];

    v25 = *(v28 + 8);
    v25(v26, v27);
  }

  v29 = v0[19];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDB48, &qword_24B2EEE80);
  v0[35] = v30;
  v31 = *(v6 + *(v30 + 40));
  v32 = *(v6 + *(v30 + 36));
  v0[18] = v32;
  v34 = v0[20];
  v33 = v0[21];
  v179 = v31;
  if (*(v29 + 16))
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v181 = v32;
    sub_24B1C94F8(v29, v34, v33, isUniquelyReferenced_nonNull_native);

    v36 = v181;
    v0[18] = v181;
  }

  else
  {

    sub_24B18C26C(0, v34, v33);
    v36 = v0[18];
  }

  v0[36] = v36;
  v37 = *(v36 + 64);
  v181 = MEMORY[0x277D84F90];
  v38 = -1;
  v39 = -1 << *(v36 + 32);
  if (-v39 < 64)
  {
    v38 = ~(-1 << -v39);
  }

  v40 = v38 & v37;
  v41 = (63 - v39) >> 6;
  swift_bridgeObjectRetain_n();
  v42 = 0;
  if (v40)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v43 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      __break(1u);
      return;
    }

    if (v43 >= v41)
    {
      break;
    }

    v40 = *(v36 + 64 + 8 * v43);
    ++v42;
    if (v40)
    {
      v42 = v43;
      do
      {
LABEL_15:
        v40 &= v40 - 1;

        sub_24B030120(v44);
      }

      while (v40);
      continue;
    }
  }

  v45 = sub_24B1D032C(v181);
  v0[37] = v45;

  v46 = v0[19];
  if (*(v31 + 16) <= *(v29 + 16) >> 3)
  {
    v181 = v0[19];

    sub_24B2A3C64(v31);
    v47 = v181;
  }

  else
  {

    v47 = sub_24B2A85C0(v31, v46);
  }

  v170 = v47;
  v0[38] = v47;
  if (*(v45 + 16) <= *(v31 + 16) >> 3)
  {
    v181 = v31;

    sub_24B2A3C64(v45);
    v48 = v181;
  }

  else
  {

    v48 = sub_24B2A85C0(v45, v31);
  }

  v49 = v0[27];
  v168 = v25;
  if (*(v48 + 16))
  {
    v175(v0[31], v6, v49);

    v50 = sub_24B2D3164();
    v51 = sub_24B2D5934();

    v163 = v51;
    v52 = os_log_type_enabled(v50, v51);
    v53 = v0[31];
    v54 = v0[27];
    if (v52)
    {
      v160 = v0[27];
      v56 = v0[25];
      v55 = v0[26];
      v57 = v0[24];
      v156 = v0[31];
      v151 = v0[20];
      v152 = v0[21];
      v58 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      v181 = v154;
      *v58 = 136447235;
      sub_24B2D12A4();
      v59 = sub_24B2D24B4();
      v61 = v60;
      (*(v56 + 8))(v55, v57);
      v62 = sub_24AFF321C(v59, v61, &v181);

      *(v58 + 4) = v62;
      *(v58 + 12) = 2160;
      *(v58 + 14) = 1752392040;
      *(v58 + 22) = 2081;
      type metadata accessor for ContactsProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCDB80, type metadata accessor for ContactsProvider.Subscription, &protocol conformance descriptor for ContactsProvider.Subscription);
      v63 = sub_24B2D57F4();
      v65 = sub_24AFF321C(v63, v64, &v181);

      *(v58 + 24) = v65;
      *(v58 + 32) = 2160;
      *(v58 + 34) = 1752392040;
      *(v58 + 42) = 2081;
      v0[12] = v151;
      v0[13] = v152;

      v66 = sub_24B2D53C4();
      v68 = sub_24AFF321C(v66, v67, &v181);

      *(v58 + 44) = v68;
      _os_log_impl(&dword_24AFD2000, v50, v163, "Provider(%{public}s):setSubscriptions-didRemoveUniqueSubscriptions:YES\n- SubscriptionsThatDoNotExistAnymore: %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v58, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v154, -1, -1);
      v69 = v58;
      v25 = v168;
      MEMORY[0x24C23D530](v69, -1, -1);

      v70 = v156;
      v71 = v160;
    }

    else
    {

      v70 = v53;
      v71 = v54;
    }

    v25(v70, v71);
    if (!*(v45 + 16))
    {
      sub_24B17EF28();
    }
  }

  else
  {
    v175(v0[32], v6, v49);

    v72 = sub_24B2D3164();
    v73 = sub_24B2D5934();

    v74 = os_log_type_enabled(v72, v73);
    v75 = v0[32];
    v76 = v0[27];
    if (v74)
    {
      v77 = v0[25];
      v78 = v0[26];
      v164 = v0[32];
      v79 = v0[24];
      v153 = v0[20];
      v155 = v0[21];
      v80 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v181 = v157;
      *v80 = 136447235;
      sub_24B2D12A4();
      v81 = sub_24B2D24B4();
      v158 = v76;
      v83 = v82;
      (*(v77 + 8))(v78, v79);
      v84 = sub_24AFF321C(v81, v83, &v181);

      *(v80 + 4) = v84;
      *(v80 + 12) = 2160;
      *(v80 + 14) = 1752392040;
      *(v80 + 22) = 2081;
      type metadata accessor for ContactsProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCDB80, type metadata accessor for ContactsProvider.Subscription, &protocol conformance descriptor for ContactsProvider.Subscription);
      v85 = sub_24B2D57F4();
      v87 = sub_24AFF321C(v85, v86, &v181);

      *(v80 + 24) = v87;
      *(v80 + 32) = 2160;
      *(v80 + 34) = 1752392040;
      *(v80 + 42) = 2081;
      v0[14] = v153;
      v0[15] = v155;

      v88 = sub_24B2D53C4();
      v90 = sub_24AFF321C(v88, v89, &v181);

      *(v80 + 44) = v90;
      _os_log_impl(&dword_24AFD2000, v72, v73, "Provider(%{public}s):setSubscriptions-didRemoveUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v80, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v157, -1, -1);
      MEMORY[0x24C23D530](v80, -1, -1);

      v91 = v164;
      v92 = v158;
    }

    else
    {

      v91 = v75;
      v92 = v76;
    }

    v25 = v168;
    v168(v91, v92);
  }

  v93 = v0[27];
  if (!*(v170 + 16))
  {
    v115 = v0[30];

    v175(v115, v173, v93);

    v116 = sub_24B2D3164();
    v117 = sub_24B2D5934();

    v118 = os_log_type_enabled(v116, v117);
    v119 = v0[30];
    v120 = v0[27];
    if (v118)
    {
      v180 = v0[27];
      v122 = v0[25];
      v121 = v0[26];
      v177 = v0[30];
      v123 = v0[24];
      v171 = v0[21];
      v166 = v0[20];
      v124 = swift_slowAlloc();
      v172 = swift_slowAlloc();
      v181 = v172;
      *v124 = 136447235;
      sub_24B2D12A4();
      v125 = sub_24B2D24B4();
      v127 = v126;
      (*(v122 + 8))(v121, v123);
      v128 = sub_24AFF321C(v125, v127, &v181);

      *(v124 + 4) = v128;
      *(v124 + 12) = 2160;
      *(v124 + 14) = 1752392040;
      *(v124 + 22) = 2081;
      type metadata accessor for ContactsProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCDB80, type metadata accessor for ContactsProvider.Subscription, &protocol conformance descriptor for ContactsProvider.Subscription);
      v129 = sub_24B2D57F4();
      v131 = v130;

      v132 = sub_24AFF321C(v129, v131, &v181);

      *(v124 + 24) = v132;
      *(v124 + 32) = 2160;
      *(v124 + 34) = 1752392040;
      *(v124 + 42) = 2081;
      v0[10] = v166;
      v0[11] = v171;

      v133 = sub_24B2D53C4();
      v135 = sub_24AFF321C(v133, v134, &v181);

      *(v124 + 44) = v135;
      _os_log_impl(&dword_24AFD2000, v116, v117, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v124, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v172, -1, -1);
      MEMORY[0x24C23D530](v124, -1, -1);

      v168(v177, v180);
    }

    else
    {

      v25(v119, v120);
    }

LABEL_45:
    v144 = v0[19];
    if (*(v144 + 16))
    {
    }

    else
    {
      v144 = 0;
    }

    v145 = v0[37];
    v146 = v0[35];
    v147 = v0[22] + v0[34];
    v149 = v0[20];
    v148 = v0[21];
    swift_beginAccess();

    sub_24B18C26C(v144, v149, v148);
    sub_24B297674(&qword_27EFCDB48, &qword_24B2EEE80, &qword_27EFCF870, &qword_24B2F5698);
    *(v147 + *(v146 + 40)) = v145;

    sub_24B297AEC();
    swift_endAccess();

    v150 = v0[1];

    v150();
    return;
  }

  v94 = v0[29];

  v175(v94, v173, v93);

  v95 = sub_24B2D3164();
  v96 = sub_24B2D5934();

  v97 = os_log_type_enabled(v95, v96);
  v98 = v0[29];
  v99 = v0[27];
  if (v97)
  {
    v174 = v0[29];
    v176 = v0[27];
    v100 = v0[25];
    v101 = v0[26];
    v102 = v0[24];
    v161 = v0[20];
    v165 = v0[21];
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v181 = v104;
    *v103 = 136447235;
    sub_24B2D12A4();
    v105 = sub_24B2D24B4();
    v107 = v106;
    (*(v100 + 8))(v101, v102);
    v108 = sub_24AFF321C(v105, v107, &v181);

    *(v103 + 4) = v108;
    *(v103 + 12) = 2160;
    *(v103 + 14) = 1752392040;
    *(v103 + 22) = 2081;
    type metadata accessor for ContactsProvider.Subscription(0);
    sub_24B2BF448(&qword_27EFCDB80, type metadata accessor for ContactsProvider.Subscription, &protocol conformance descriptor for ContactsProvider.Subscription);
    v109 = sub_24B2D57F4();
    v111 = sub_24AFF321C(v109, v110, &v181);

    *(v103 + 24) = v111;
    *(v103 + 32) = 2160;
    *(v103 + 34) = 1752392040;
    *(v103 + 42) = 2081;
    v0[8] = v161;
    v0[9] = v165;

    v112 = sub_24B2D53C4();
    v114 = sub_24AFF321C(v112, v113, &v181);

    *(v103 + 44) = v114;
    _os_log_impl(&dword_24AFD2000, v95, v96, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:YES\n- subscriptionsThatDidNotExistBefore: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v103, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v104, -1, -1);
    MEMORY[0x24C23D530](v103, -1, -1);

    v168(v174, v176);
  }

  else
  {

    v25(v98, v99);
  }

  v136 = *(v179 + 16);

  if (v136)
  {
    v137 = v0[38];
    v138 = v0[22];
    v139 = v0[23];
    v140 = sub_24B2D56D4();
    (*(*(v140 - 8) + 56))(v139, 1, 1, v140);
    v141 = sub_24B2BF448(&qword_27EFCDB68, type metadata accessor for ContactsProvider, &protocol conformance descriptor for ContactsProvider);
    v142 = swift_allocObject();
    v142[2] = v138;
    v142[3] = v141;
    v142[4] = v138;
    v142[5] = v137;
    swift_retain_n();
    sub_24B00A9A4(0, 0, v139, &unk_24B2EEEC0, v142);

    goto LABEL_45;
  }

  v143 = swift_task_alloc();
  v0[39] = v143;
  *v143 = v0;
  v143[1] = sub_24B28F0A8;

  sub_24B17D404();
}

uint64_t sub_24B28F0A8()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);

    v4 = sub_24B28F434;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 176);
    v4 = sub_24B28F1D8;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_24B28F1D8()
{
  v1 = v0[38];
  v2 = v0[22];
  v3 = v0[23];
  v4 = sub_24B2D56D4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = sub_24B2BF448(&qword_27EFCDB68, type metadata accessor for ContactsProvider, &protocol conformance descriptor for ContactsProvider);
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v5;
  v6[4] = v2;
  v6[5] = v1;
  swift_retain_n();
  sub_24B00A9A4(0, 0, v3, &unk_24B2EEEC0, v6);

  v7 = v0[19];
  if (*(v7 + 16))
  {
  }

  else
  {
    v7 = 0;
  }

  v8 = v0[37];
  v9 = v0[35];
  v10 = v0[22] + v0[34];
  v12 = v0[20];
  v11 = v0[21];
  swift_beginAccess();

  sub_24B18C26C(v7, v12, v11);
  sub_24B297674(&qword_27EFCDB48, &qword_24B2EEE80, &qword_27EFCF870, &qword_24B2F5698);
  *(v10 + *(v9 + 40)) = v8;

  sub_24B297AEC();
  swift_endAccess();

  v13 = v0[1];

  return v13();
}

uint64_t sub_24B28F434()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B28F4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v5 = sub_24B2D2504();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  v6 = sub_24B2D3184();
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B28F64C, v3, 0);
}

void sub_24B28F64C()
{
  v184 = v0;
  v1 = v0[32];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[22];
  v5 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_subscriptionsStorage;
  v0[33] = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_subscriptionsStorage;
  v6 = v4 + v5;
  swift_beginAccess();
  v7 = *(v2 + 16);
  v0[34] = v7;
  v0[35] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v170 = v7;
  v7(v1, v6, v3);

  v8 = sub_24B2D3164();
  v9 = sub_24B2D5934();

  v178 = v6;
  if (os_log_type_enabled(v8, v9))
  {
    v163 = v0[26];
    v168 = v0[32];
    v11 = v0[24];
    v10 = v0[25];
    v12 = v0[23];
    v154 = v0[21];
    v158 = v0[27];
    v152 = v0[20];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v183 = v14;
    *v13 = 136447235;
    sub_24B2D12A4();
    v15 = sub_24B2D24B4();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_24AFF321C(v15, v17, &v183);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    type metadata accessor for PeopleLocationsProvider.Subscription(0);
    sub_24B2BF448(&qword_27EFCC7D8, type metadata accessor for PeopleLocationsProvider.Subscription, &protocol conformance descriptor for PeopleLocationsProvider.Subscription);
    v19 = sub_24B2D57F4();
    v21 = sub_24AFF321C(v19, v20, &v183);

    *(v13 + 24) = v21;
    *(v13 + 32) = 2160;
    *(v13 + 34) = 1752392040;
    *(v13 + 42) = 2081;
    v0[16] = v152;
    v0[17] = v154;

    v22 = sub_24B2D53C4();
    v24 = sub_24AFF321C(v22, v23, &v183);

    *(v13 + 44) = v24;
    _os_log_impl(&dword_24AFD2000, v8, v9, "Provider(%{public}s):setSubscriptions\n- subscriptions: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v13, 0x34u);
    swift_arrayDestroy();
    v25 = v14;
    v6 = v178;
    MEMORY[0x24C23D530](v25, -1, -1);
    MEMORY[0x24C23D530](v13, -1, -1);

    v26 = *(v158 + 8);
    v26(v168, v163);
  }

  else
  {
    v27 = v0[32];
    v28 = v0[26];
    v29 = v0[27];

    v26 = *(v29 + 8);
    v26(v27, v28);
  }

  v0[36] = v26;
  v30 = v0[19];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7D0, &qword_24B2EC040);
  v0[37] = v31;
  v32 = *(v6 + *(v31 + 40));
  v0[38] = v32;
  v33 = *(v6 + *(v31 + 36));
  v0[18] = v33;
  v35 = v0[20];
  v34 = v0[21];
  if (*(v30 + 16))
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v183 = v33;
    sub_24B1C96E0(v30, v35, v34, isUniquelyReferenced_nonNull_native);

    v37 = v183;
    v0[18] = v183;
  }

  else
  {

    sub_24B18C3B8(0, v35, v34);
    v37 = v0[18];
  }

  v0[39] = v37;
  v38 = *(v37 + 64);
  v183 = MEMORY[0x277D84F90];
  v39 = -1;
  v40 = -1 << *(v37 + 32);
  if (-v40 < 64)
  {
    v39 = ~(-1 << -v40);
  }

  v41 = v39 & v38;
  v42 = (63 - v40) >> 6;
  swift_bridgeObjectRetain_n();
  v43 = 0;
  if (v41)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v44 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
      return;
    }

    if (v44 >= v42)
    {
      break;
    }

    v41 = *(v37 + 64 + 8 * v44);
    ++v43;
    if (v41)
    {
      v43 = v44;
      do
      {
LABEL_15:
        v41 &= v41 - 1;

        sub_24B030820(v45);
      }

      while (v41);
      continue;
    }
  }

  v46 = sub_24B1D04BC(v183);
  v0[40] = v46;

  v47 = v0[19];
  if (*(v32 + 16) <= *(v30 + 16) >> 3)
  {
    v183 = v0[19];

    sub_24B2A3E6C(v32);
    v48 = v183;
  }

  else
  {

    v48 = sub_24B2AA7D8(v32, v47);
  }

  v0[41] = v48;
  if (*(v46 + 16) <= *(v32 + 16) >> 3)
  {
    v183 = v32;

    sub_24B2A3E6C(v46);
    v49 = v183;
  }

  else
  {

    v49 = sub_24B2AA7D8(v46, v32);
  }

  v0[42] = v49;
  v50 = v0[26];
  if (*(v49 + 16))
  {
    v170(v0[30], v178, v50);

    v51 = sub_24B2D3164();
    v52 = sub_24B2D5934();

    v53 = os_log_type_enabled(v51, v52);
    v54 = v0[30];
    v55 = v0[26];
    if (v53)
    {
      v174 = v0[26];
      v164 = v52;
      v57 = v0[24];
      v56 = v0[25];
      v169 = v0[30];
      v58 = v0[23];
      v153 = v0[20];
      v155 = v0[21];
      v59 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v183 = v159;
      *v59 = 136447235;
      sub_24B2D12A4();
      v60 = sub_24B2D24B4();
      v179 = v26;
      v62 = v61;
      (*(v57 + 8))(v56, v58);
      v63 = sub_24AFF321C(v60, v62, &v183);

      *(v59 + 4) = v63;
      *(v59 + 12) = 2160;
      *(v59 + 14) = 1752392040;
      *(v59 + 22) = 2081;
      type metadata accessor for PeopleLocationsProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCC7D8, type metadata accessor for PeopleLocationsProvider.Subscription, &protocol conformance descriptor for PeopleLocationsProvider.Subscription);
      v64 = sub_24B2D57F4();
      v66 = sub_24AFF321C(v64, v65, &v183);

      *(v59 + 24) = v66;
      *(v59 + 32) = 2160;
      *(v59 + 34) = 1752392040;
      *(v59 + 42) = 2081;
      v0[12] = v153;
      v0[13] = v155;

      v67 = sub_24B2D53C4();
      v69 = sub_24AFF321C(v67, v68, &v183);

      *(v59 + 44) = v69;
      _os_log_impl(&dword_24AFD2000, v51, v164, "Provider(%{public}s):setSubscriptions-didRemoveUniqueSubscriptions:YES\n- SubscriptionsThatDoNotExistAnymore: %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v59, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v159, -1, -1);
      MEMORY[0x24C23D530](v59, -1, -1);

      v179(v169, v174);
    }

    else
    {

      v26(v54, v55);
    }

    v89 = *(v46 + 16) == 0;
    v90 = swift_task_alloc();
    v0[45] = v90;
    *v90 = v0;
    v90[1] = sub_24B290B80;

    sub_24B1FADF4(v49, v89);
  }

  else
  {
    v170(v0[31], v178, v50);

    v70 = sub_24B2D3164();
    v71 = sub_24B2D5934();

    v72 = os_log_type_enabled(v70, v71);
    v73 = v0[31];
    v74 = v0[26];
    if (v72)
    {
      v171 = v0[31];
      v175 = v0[26];
      v76 = v0[24];
      v75 = v0[25];
      v77 = v0[23];
      v156 = v0[20];
      v160 = v0[21];
      v78 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      v183 = v165;
      *v78 = 136447235;
      sub_24B2D12A4();
      v79 = sub_24B2D24B4();
      v180 = v26;
      v81 = v80;
      (*(v76 + 8))(v75, v77);
      v82 = sub_24AFF321C(v79, v81, &v183);

      *(v78 + 4) = v82;
      *(v78 + 12) = 2160;
      *(v78 + 14) = 1752392040;
      *(v78 + 22) = 2081;
      type metadata accessor for PeopleLocationsProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCC7D8, type metadata accessor for PeopleLocationsProvider.Subscription, &protocol conformance descriptor for PeopleLocationsProvider.Subscription);
      v83 = sub_24B2D57F4();
      v85 = sub_24AFF321C(v83, v84, &v183);

      *(v78 + 24) = v85;
      *(v78 + 32) = 2160;
      *(v78 + 34) = 1752392040;
      *(v78 + 42) = 2081;
      v0[14] = v156;
      v0[15] = v160;

      v86 = sub_24B2D53C4();
      v88 = sub_24AFF321C(v86, v87, &v183);

      *(v78 + 44) = v88;
      _os_log_impl(&dword_24AFD2000, v70, v71, "Provider(%{public}s):setSubscriptions-didRemoveUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v78, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v165, -1, -1);
      MEMORY[0x24C23D530](v78, -1, -1);

      v180(v171, v175);
    }

    else
    {

      v26(v73, v74);
    }

    if (*(v0[41] + 16))
    {
      v91 = v0[34];
      v92 = v0[33];
      v93 = v0[28];
      v94 = v0[26];
      v95 = v0[22];

      v91(v93, v95 + v92, v94);

      v96 = sub_24B2D3164();
      v97 = sub_24B2D5934();

      if (os_log_type_enabled(v96, v97))
      {
        v176 = v0[28];
        v181 = v0[36];
        v98 = v0[25];
        v172 = v0[26];
        v99 = v0[23];
        v100 = v0[24];
        v166 = v0[21];
        v161 = v0[20];
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v183 = v102;
        *v101 = 136447235;
        sub_24B2D12A4();
        v103 = sub_24B2D24B4();
        v105 = v104;
        (*(v100 + 8))(v98, v99);
        v106 = sub_24AFF321C(v103, v105, &v183);

        *(v101 + 4) = v106;
        *(v101 + 12) = 2160;
        *(v101 + 14) = 1752392040;
        *(v101 + 22) = 2081;
        type metadata accessor for PeopleLocationsProvider.Subscription(0);
        sub_24B2BF448(&qword_27EFCC7D8, type metadata accessor for PeopleLocationsProvider.Subscription, &protocol conformance descriptor for PeopleLocationsProvider.Subscription);
        v107 = sub_24B2D57F4();
        v109 = sub_24AFF321C(v107, v108, &v183);

        *(v101 + 24) = v109;
        *(v101 + 32) = 2160;
        *(v101 + 34) = 1752392040;
        *(v101 + 42) = 2081;
        v0[8] = v161;
        v0[9] = v166;

        v110 = sub_24B2D53C4();
        v112 = sub_24AFF321C(v110, v111, &v183);

        *(v101 + 44) = v112;
        _os_log_impl(&dword_24AFD2000, v96, v97, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:YES\n- subscriptionsThatDidNotExistBefore: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v101, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x24C23D530](v102, -1, -1);
        MEMORY[0x24C23D530](v101, -1, -1);

        v181(v176, v172);
      }

      else
      {
        v139 = v0[36];
        v140 = v0[28];
        v141 = v0[26];

        v139(v140, v141);
      }

      v142 = *(v0[38] + 16);

      v143 = swift_task_alloc();
      v0[43] = v143;
      *v143 = v0;
      v143[1] = sub_24B2908BC;
      v144 = v0[41];

      sub_24B1FA3E8(v144, v142 == 0);
    }

    else
    {
      v113 = v0[34];
      v114 = v0[33];
      v115 = v0[29];
      v116 = v0[26];
      v117 = v0[22];

      v113(v115, v117 + v114, v116);

      v118 = sub_24B2D3164();
      v119 = sub_24B2D5934();

      v120 = os_log_type_enabled(v118, v119);
      v121 = v0[36];
      v122 = v0[29];
      v123 = v0[26];
      if (v120)
      {
        v177 = v0[36];
        v182 = v0[29];
        v125 = v0[24];
        v124 = v0[25];
        v173 = v0[26];
        v126 = v0[23];
        v157 = v0[20];
        v162 = v0[21];
        v127 = swift_slowAlloc();
        v167 = swift_slowAlloc();
        v183 = v167;
        *v127 = 136447235;
        sub_24B2D12A4();
        v128 = sub_24B2D24B4();
        v130 = v129;
        (*(v125 + 8))(v124, v126);
        v131 = sub_24AFF321C(v128, v130, &v183);

        *(v127 + 4) = v131;
        *(v127 + 12) = 2160;
        *(v127 + 14) = 1752392040;
        *(v127 + 22) = 2081;
        type metadata accessor for PeopleLocationsProvider.Subscription(0);
        sub_24B2BF448(&qword_27EFCC7D8, type metadata accessor for PeopleLocationsProvider.Subscription, &protocol conformance descriptor for PeopleLocationsProvider.Subscription);
        v132 = sub_24B2D57F4();
        v134 = v133;

        v135 = sub_24AFF321C(v132, v134, &v183);

        *(v127 + 24) = v135;
        *(v127 + 32) = 2160;
        *(v127 + 34) = 1752392040;
        *(v127 + 42) = 2081;
        v0[10] = v157;
        v0[11] = v162;

        v136 = sub_24B2D53C4();
        v138 = sub_24AFF321C(v136, v137, &v183);

        *(v127 + 44) = v138;
        _os_log_impl(&dword_24AFD2000, v118, v119, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v127, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x24C23D530](v167, -1, -1);
        MEMORY[0x24C23D530](v127, -1, -1);

        v177(v182, v173);
      }

      else
      {

        v121(v122, v123);
      }

      v145 = v0[19];
      if (*(v145 + 16))
      {
      }

      else
      {
        v145 = 0;
      }

      v146 = v0[40];
      v147 = v0[37];
      v148 = v0[21];
      v149 = v0[22] + v0[33];
      v150 = v0[20];
      swift_beginAccess();

      sub_24B18C3B8(v145, v150, v148);
      sub_24B297674(&qword_27EFCC7D0, &qword_24B2EC040, &qword_27EFCF868, &qword_24B2F5670);
      *(v149 + *(v147 + 40)) = v146;

      sub_24B297D1C();
      swift_endAccess();

      v151 = v0[1];

      v151();
    }
  }
}

uint64_t sub_24B2908BC()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);

    v4 = sub_24B2BF7D8;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 176);
    v4 = sub_24B290A08;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_24B290A08()
{
  v1 = v0[19];
  if (*(v1 + 16))
  {
  }

  else
  {
    v1 = 0;
  }

  v2 = v0[40];
  v3 = v0[37];
  v4 = v0[21];
  v5 = v0[22] + v0[33];
  v6 = v0[20];
  swift_beginAccess();

  sub_24B18C3B8(v1, v6, v4);
  sub_24B297674(&qword_27EFCC7D0, &qword_24B2EC040, &qword_27EFCF868, &qword_24B2F5670);
  *(v5 + *(v3 + 40)) = v2;

  sub_24B297D1C();
  swift_endAccess();

  v7 = v0[1];

  return v7();
}

uint64_t sub_24B290B80()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);

    v4 = sub_24B2BF7DC;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 176);
    v4 = sub_24B290CD0;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_24B290CD0()
{
  v75 = v0;
  if (*(v0[41] + 16))
  {
    v1 = v0[34];
    v2 = v0[33];
    v3 = v0[28];
    v4 = v0[26];
    v5 = v0[22];

    v1(v3, v5 + v2, v4);

    v6 = sub_24B2D3164();
    v7 = sub_24B2D5934();

    if (os_log_type_enabled(v6, v7))
    {
      v70 = v0[28];
      v72 = v0[36];
      v8 = v0[25];
      v68 = v0[26];
      v9 = v0[23];
      v10 = v0[24];
      v66 = v0[21];
      v64 = v0[20];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v74 = v12;
      *v11 = 136447235;
      sub_24B2D12A4();
      v13 = sub_24B2D24B4();
      v15 = v14;
      (*(v10 + 8))(v8, v9);
      v16 = sub_24AFF321C(v13, v15, &v74);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2160;
      *(v11 + 14) = 1752392040;
      *(v11 + 22) = 2081;
      type metadata accessor for PeopleLocationsProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCC7D8, type metadata accessor for PeopleLocationsProvider.Subscription, &protocol conformance descriptor for PeopleLocationsProvider.Subscription);
      v17 = sub_24B2D57F4();
      v19 = sub_24AFF321C(v17, v18, &v74);

      *(v11 + 24) = v19;
      *(v11 + 32) = 2160;
      *(v11 + 34) = 1752392040;
      *(v11 + 42) = 2081;
      v0[8] = v64;
      v0[9] = v66;

      v20 = sub_24B2D53C4();
      v22 = sub_24AFF321C(v20, v21, &v74);

      *(v11 + 44) = v22;
      _os_log_impl(&dword_24AFD2000, v6, v7, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:YES\n- subscriptionsThatDidNotExistBefore: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v11, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v12, -1, -1);
      MEMORY[0x24C23D530](v11, -1, -1);

      v72(v70, v68);
    }

    else
    {
      v49 = v0[36];
      v50 = v0[28];
      v51 = v0[26];

      v49(v50, v51);
    }

    v52 = *(v0[38] + 16);

    v53 = swift_task_alloc();
    v0[43] = v53;
    *v53 = v0;
    v53[1] = sub_24B2908BC;
    v54 = v0[41];

    return sub_24B1FA3E8(v54, v52 == 0);
  }

  else
  {
    v23 = v0[34];
    v24 = v0[33];
    v25 = v0[29];
    v26 = v0[26];
    v27 = v0[22];

    v23(v25, v27 + v24, v26);

    v28 = sub_24B2D3164();
    v29 = sub_24B2D5934();

    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[36];
    v32 = v0[29];
    v33 = v0[26];
    if (v30)
    {
      v71 = v0[36];
      v73 = v0[29];
      v35 = v0[24];
      v34 = v0[25];
      v69 = v0[26];
      v36 = v0[23];
      v63 = v0[20];
      v65 = v0[21];
      v37 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v74 = v67;
      *v37 = 136447235;
      sub_24B2D12A4();
      v38 = sub_24B2D24B4();
      v40 = v39;
      (*(v35 + 8))(v34, v36);
      v41 = sub_24AFF321C(v38, v40, &v74);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2160;
      *(v37 + 14) = 1752392040;
      *(v37 + 22) = 2081;
      type metadata accessor for PeopleLocationsProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCC7D8, type metadata accessor for PeopleLocationsProvider.Subscription, &protocol conformance descriptor for PeopleLocationsProvider.Subscription);
      v42 = sub_24B2D57F4();
      v44 = v43;

      v45 = sub_24AFF321C(v42, v44, &v74);

      *(v37 + 24) = v45;
      *(v37 + 32) = 2160;
      *(v37 + 34) = 1752392040;
      *(v37 + 42) = 2081;
      v0[10] = v63;
      v0[11] = v65;

      v46 = sub_24B2D53C4();
      v48 = sub_24AFF321C(v46, v47, &v74);

      *(v37 + 44) = v48;
      _os_log_impl(&dword_24AFD2000, v28, v29, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v37, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v67, -1, -1);
      MEMORY[0x24C23D530](v37, -1, -1);

      v71(v73, v69);
    }

    else
    {

      v31(v32, v33);
    }

    v56 = v0[19];
    if (*(v56 + 16))
    {
    }

    else
    {
      v56 = 0;
    }

    v57 = v0[40];
    v58 = v0[37];
    v59 = v0[21];
    v60 = v0[22] + v0[33];
    v61 = v0[20];
    swift_beginAccess();

    sub_24B18C3B8(v56, v61, v59);
    sub_24B297674(&qword_27EFCC7D0, &qword_24B2EC040, &qword_27EFCF868, &qword_24B2F5670);
    *(v60 + *(v58 + 40)) = v57;

    sub_24B297D1C();
    swift_endAccess();

    v62 = v0[1];

    return v62();
  }
}

uint64_t sub_24B29146C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v5 = sub_24B2D2504();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  v6 = sub_24B2D3184();
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B2915BC, v3, 0);
}

void sub_24B2915BC()
{
  v184 = v0;
  v1 = v0[32];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[22];
  v5 = OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_subscriptionsStorage;
  v0[33] = OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_subscriptionsStorage;
  v6 = v4 + v5;
  swift_beginAccess();
  v7 = *(v2 + 16);
  v0[34] = v7;
  v0[35] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v170 = v7;
  v7(v1, v6, v3);

  v8 = sub_24B2D3164();
  v9 = sub_24B2D5934();

  v178 = v6;
  if (os_log_type_enabled(v8, v9))
  {
    v163 = v0[26];
    v168 = v0[32];
    v11 = v0[24];
    v10 = v0[25];
    v12 = v0[23];
    v154 = v0[21];
    v158 = v0[27];
    v152 = v0[20];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v183 = v14;
    *v13 = 136447235;
    sub_24B2D12A4();
    v15 = sub_24B2D24B4();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_24AFF321C(v15, v17, &v183);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    type metadata accessor for PeopleProvider.Subscription(0);
    sub_24B2BF448(&qword_27EFCC7F0, type metadata accessor for PeopleProvider.Subscription, &protocol conformance descriptor for PeopleProvider.Subscription);
    v19 = sub_24B2D57F4();
    v21 = sub_24AFF321C(v19, v20, &v183);

    *(v13 + 24) = v21;
    *(v13 + 32) = 2160;
    *(v13 + 34) = 1752392040;
    *(v13 + 42) = 2081;
    v0[16] = v152;
    v0[17] = v154;

    v22 = sub_24B2D53C4();
    v24 = sub_24AFF321C(v22, v23, &v183);

    *(v13 + 44) = v24;
    _os_log_impl(&dword_24AFD2000, v8, v9, "Provider(%{public}s):setSubscriptions\n- subscriptions: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v13, 0x34u);
    swift_arrayDestroy();
    v25 = v14;
    v6 = v178;
    MEMORY[0x24C23D530](v25, -1, -1);
    MEMORY[0x24C23D530](v13, -1, -1);

    v26 = *(v158 + 8);
    v26(v168, v163);
  }

  else
  {
    v27 = v0[32];
    v28 = v0[26];
    v29 = v0[27];

    v26 = *(v29 + 8);
    v26(v27, v28);
  }

  v0[36] = v26;
  v30 = v0[19];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7E8, &unk_24B2EC060);
  v0[37] = v31;
  v32 = *(v6 + *(v31 + 40));
  v0[38] = v32;
  v33 = *(v6 + *(v31 + 36));
  v0[18] = v33;
  v35 = v0[20];
  v34 = v0[21];
  if (*(v30 + 16))
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v183 = v33;
    sub_24B1C9710(v30, v35, v34, isUniquelyReferenced_nonNull_native);

    v37 = v183;
    v0[18] = v183;
  }

  else
  {

    sub_24B18C3F8(0, v35, v34);
    v37 = v0[18];
  }

  v0[39] = v37;
  v38 = *(v37 + 64);
  v183 = MEMORY[0x277D84F90];
  v39 = -1;
  v40 = -1 << *(v37 + 32);
  if (-v40 < 64)
  {
    v39 = ~(-1 << -v40);
  }

  v41 = v39 & v38;
  v42 = (63 - v40) >> 6;
  swift_bridgeObjectRetain_n();
  v43 = 0;
  if (v41)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v44 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
      return;
    }

    if (v44 >= v42)
    {
      break;
    }

    v41 = *(v37 + 64 + 8 * v44);
    ++v43;
    if (v41)
    {
      v43 = v44;
      do
      {
LABEL_15:
        v41 &= v41 - 1;

        sub_24B030F20(v45);
      }

      while (v41);
      continue;
    }
  }

  v46 = sub_24B1D064C(v183);
  v0[40] = v46;

  v47 = v0[19];
  if (*(v32 + 16) <= *(v30 + 16) >> 3)
  {
    v183 = v0[19];

    sub_24B2A4074(v32);
    v48 = v183;
  }

  else
  {

    v48 = sub_24B2AB678(v32, v47);
  }

  v0[41] = v48;
  if (*(v46 + 16) <= *(v32 + 16) >> 3)
  {
    v183 = v32;

    sub_24B2A4074(v46);
    v49 = v183;
  }

  else
  {

    v49 = sub_24B2AB678(v46, v32);
  }

  v0[42] = v49;
  v50 = v0[26];
  if (*(v49 + 16))
  {
    v170(v0[30], v178, v50);

    v51 = sub_24B2D3164();
    v52 = sub_24B2D5934();

    v53 = os_log_type_enabled(v51, v52);
    v54 = v0[30];
    v55 = v0[26];
    if (v53)
    {
      v174 = v0[26];
      v164 = v52;
      v57 = v0[24];
      v56 = v0[25];
      v169 = v0[30];
      v58 = v0[23];
      v153 = v0[20];
      v155 = v0[21];
      v59 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v183 = v159;
      *v59 = 136447235;
      sub_24B2D12A4();
      v60 = sub_24B2D24B4();
      v179 = v26;
      v62 = v61;
      (*(v57 + 8))(v56, v58);
      v63 = sub_24AFF321C(v60, v62, &v183);

      *(v59 + 4) = v63;
      *(v59 + 12) = 2160;
      *(v59 + 14) = 1752392040;
      *(v59 + 22) = 2081;
      type metadata accessor for PeopleProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCC7F0, type metadata accessor for PeopleProvider.Subscription, &protocol conformance descriptor for PeopleProvider.Subscription);
      v64 = sub_24B2D57F4();
      v66 = sub_24AFF321C(v64, v65, &v183);

      *(v59 + 24) = v66;
      *(v59 + 32) = 2160;
      *(v59 + 34) = 1752392040;
      *(v59 + 42) = 2081;
      v0[12] = v153;
      v0[13] = v155;

      v67 = sub_24B2D53C4();
      v69 = sub_24AFF321C(v67, v68, &v183);

      *(v59 + 44) = v69;
      _os_log_impl(&dword_24AFD2000, v51, v164, "Provider(%{public}s):setSubscriptions-didRemoveUniqueSubscriptions:YES\n- SubscriptionsThatDoNotExistAnymore: %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v59, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v159, -1, -1);
      MEMORY[0x24C23D530](v59, -1, -1);

      v179(v169, v174);
    }

    else
    {

      v26(v54, v55);
    }

    v89 = *(v46 + 16) == 0;
    v90 = swift_task_alloc();
    v0[45] = v90;
    *v90 = v0;
    v90[1] = sub_24B292AF0;

    sub_24B1EE0F8(v49, v89);
  }

  else
  {
    v170(v0[31], v178, v50);

    v70 = sub_24B2D3164();
    v71 = sub_24B2D5934();

    v72 = os_log_type_enabled(v70, v71);
    v73 = v0[31];
    v74 = v0[26];
    if (v72)
    {
      v171 = v0[31];
      v175 = v0[26];
      v76 = v0[24];
      v75 = v0[25];
      v77 = v0[23];
      v156 = v0[20];
      v160 = v0[21];
      v78 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      v183 = v165;
      *v78 = 136447235;
      sub_24B2D12A4();
      v79 = sub_24B2D24B4();
      v180 = v26;
      v81 = v80;
      (*(v76 + 8))(v75, v77);
      v82 = sub_24AFF321C(v79, v81, &v183);

      *(v78 + 4) = v82;
      *(v78 + 12) = 2160;
      *(v78 + 14) = 1752392040;
      *(v78 + 22) = 2081;
      type metadata accessor for PeopleProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCC7F0, type metadata accessor for PeopleProvider.Subscription, &protocol conformance descriptor for PeopleProvider.Subscription);
      v83 = sub_24B2D57F4();
      v85 = sub_24AFF321C(v83, v84, &v183);

      *(v78 + 24) = v85;
      *(v78 + 32) = 2160;
      *(v78 + 34) = 1752392040;
      *(v78 + 42) = 2081;
      v0[14] = v156;
      v0[15] = v160;

      v86 = sub_24B2D53C4();
      v88 = sub_24AFF321C(v86, v87, &v183);

      *(v78 + 44) = v88;
      _os_log_impl(&dword_24AFD2000, v70, v71, "Provider(%{public}s):setSubscriptions-didRemoveUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v78, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v165, -1, -1);
      MEMORY[0x24C23D530](v78, -1, -1);

      v180(v171, v175);
    }

    else
    {

      v26(v73, v74);
    }

    if (*(v0[41] + 16))
    {
      v91 = v0[34];
      v92 = v0[33];
      v93 = v0[28];
      v94 = v0[26];
      v95 = v0[22];

      v91(v93, v95 + v92, v94);

      v96 = sub_24B2D3164();
      v97 = sub_24B2D5934();

      if (os_log_type_enabled(v96, v97))
      {
        v176 = v0[28];
        v181 = v0[36];
        v98 = v0[25];
        v172 = v0[26];
        v99 = v0[23];
        v100 = v0[24];
        v166 = v0[21];
        v161 = v0[20];
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v183 = v102;
        *v101 = 136447235;
        sub_24B2D12A4();
        v103 = sub_24B2D24B4();
        v105 = v104;
        (*(v100 + 8))(v98, v99);
        v106 = sub_24AFF321C(v103, v105, &v183);

        *(v101 + 4) = v106;
        *(v101 + 12) = 2160;
        *(v101 + 14) = 1752392040;
        *(v101 + 22) = 2081;
        type metadata accessor for PeopleProvider.Subscription(0);
        sub_24B2BF448(&qword_27EFCC7F0, type metadata accessor for PeopleProvider.Subscription, &protocol conformance descriptor for PeopleProvider.Subscription);
        v107 = sub_24B2D57F4();
        v109 = sub_24AFF321C(v107, v108, &v183);

        *(v101 + 24) = v109;
        *(v101 + 32) = 2160;
        *(v101 + 34) = 1752392040;
        *(v101 + 42) = 2081;
        v0[8] = v161;
        v0[9] = v166;

        v110 = sub_24B2D53C4();
        v112 = sub_24AFF321C(v110, v111, &v183);

        *(v101 + 44) = v112;
        _os_log_impl(&dword_24AFD2000, v96, v97, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:YES\n- subscriptionsThatDidNotExistBefore: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v101, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x24C23D530](v102, -1, -1);
        MEMORY[0x24C23D530](v101, -1, -1);

        v181(v176, v172);
      }

      else
      {
        v139 = v0[36];
        v140 = v0[28];
        v141 = v0[26];

        v139(v140, v141);
      }

      v142 = *(v0[38] + 16);

      v143 = swift_task_alloc();
      v0[43] = v143;
      *v143 = v0;
      v143[1] = sub_24B29282C;
      v144 = v0[41];

      sub_24B1EC900(v144, v142 == 0);
    }

    else
    {
      v113 = v0[34];
      v114 = v0[33];
      v115 = v0[29];
      v116 = v0[26];
      v117 = v0[22];

      v113(v115, v117 + v114, v116);

      v118 = sub_24B2D3164();
      v119 = sub_24B2D5934();

      v120 = os_log_type_enabled(v118, v119);
      v121 = v0[36];
      v122 = v0[29];
      v123 = v0[26];
      if (v120)
      {
        v177 = v0[36];
        v182 = v0[29];
        v125 = v0[24];
        v124 = v0[25];
        v173 = v0[26];
        v126 = v0[23];
        v157 = v0[20];
        v162 = v0[21];
        v127 = swift_slowAlloc();
        v167 = swift_slowAlloc();
        v183 = v167;
        *v127 = 136447235;
        sub_24B2D12A4();
        v128 = sub_24B2D24B4();
        v130 = v129;
        (*(v125 + 8))(v124, v126);
        v131 = sub_24AFF321C(v128, v130, &v183);

        *(v127 + 4) = v131;
        *(v127 + 12) = 2160;
        *(v127 + 14) = 1752392040;
        *(v127 + 22) = 2081;
        type metadata accessor for PeopleProvider.Subscription(0);
        sub_24B2BF448(&qword_27EFCC7F0, type metadata accessor for PeopleProvider.Subscription, &protocol conformance descriptor for PeopleProvider.Subscription);
        v132 = sub_24B2D57F4();
        v134 = v133;

        v135 = sub_24AFF321C(v132, v134, &v183);

        *(v127 + 24) = v135;
        *(v127 + 32) = 2160;
        *(v127 + 34) = 1752392040;
        *(v127 + 42) = 2081;
        v0[10] = v157;
        v0[11] = v162;

        v136 = sub_24B2D53C4();
        v138 = sub_24AFF321C(v136, v137, &v183);

        *(v127 + 44) = v138;
        _os_log_impl(&dword_24AFD2000, v118, v119, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v127, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x24C23D530](v167, -1, -1);
        MEMORY[0x24C23D530](v127, -1, -1);

        v177(v182, v173);
      }

      else
      {

        v121(v122, v123);
      }

      v145 = v0[19];
      if (*(v145 + 16))
      {
      }

      else
      {
        v145 = 0;
      }

      v146 = v0[40];
      v147 = v0[37];
      v148 = v0[21];
      v149 = v0[22] + v0[33];
      v150 = v0[20];
      swift_beginAccess();

      sub_24B18C3F8(v145, v150, v148);
      sub_24B297674(&qword_27EFCC7E8, &unk_24B2EC060, &qword_27EFCF878, &qword_24B2F57A0);
      *(v149 + *(v147 + 40)) = v146;

      sub_24B297F4C();
      swift_endAccess();

      v151 = v0[1];

      v151();
    }
  }
}

uint64_t sub_24B29282C()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);

    v4 = sub_24B2BF7D8;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 176);
    v4 = sub_24B292978;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_24B292978()
{
  v1 = v0[19];
  if (*(v1 + 16))
  {
  }

  else
  {
    v1 = 0;
  }

  v2 = v0[40];
  v3 = v0[37];
  v4 = v0[21];
  v5 = v0[22] + v0[33];
  v6 = v0[20];
  swift_beginAccess();

  sub_24B18C3F8(v1, v6, v4);
  sub_24B297674(&qword_27EFCC7E8, &unk_24B2EC060, &qword_27EFCF878, &qword_24B2F57A0);
  *(v5 + *(v3 + 40)) = v2;

  sub_24B297F4C();
  swift_endAccess();

  v7 = v0[1];

  return v7();
}

uint64_t sub_24B292AF0()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);

    v4 = sub_24B2BF7DC;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 176);
    v4 = sub_24B292C40;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_24B292C40()
{
  v75 = v0;
  if (*(v0[41] + 16))
  {
    v1 = v0[34];
    v2 = v0[33];
    v3 = v0[28];
    v4 = v0[26];
    v5 = v0[22];

    v1(v3, v5 + v2, v4);

    v6 = sub_24B2D3164();
    v7 = sub_24B2D5934();

    if (os_log_type_enabled(v6, v7))
    {
      v70 = v0[28];
      v72 = v0[36];
      v8 = v0[25];
      v68 = v0[26];
      v9 = v0[23];
      v10 = v0[24];
      v66 = v0[21];
      v64 = v0[20];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v74 = v12;
      *v11 = 136447235;
      sub_24B2D12A4();
      v13 = sub_24B2D24B4();
      v15 = v14;
      (*(v10 + 8))(v8, v9);
      v16 = sub_24AFF321C(v13, v15, &v74);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2160;
      *(v11 + 14) = 1752392040;
      *(v11 + 22) = 2081;
      type metadata accessor for PeopleProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCC7F0, type metadata accessor for PeopleProvider.Subscription, &protocol conformance descriptor for PeopleProvider.Subscription);
      v17 = sub_24B2D57F4();
      v19 = sub_24AFF321C(v17, v18, &v74);

      *(v11 + 24) = v19;
      *(v11 + 32) = 2160;
      *(v11 + 34) = 1752392040;
      *(v11 + 42) = 2081;
      v0[8] = v64;
      v0[9] = v66;

      v20 = sub_24B2D53C4();
      v22 = sub_24AFF321C(v20, v21, &v74);

      *(v11 + 44) = v22;
      _os_log_impl(&dword_24AFD2000, v6, v7, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:YES\n- subscriptionsThatDidNotExistBefore: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v11, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v12, -1, -1);
      MEMORY[0x24C23D530](v11, -1, -1);

      v72(v70, v68);
    }

    else
    {
      v49 = v0[36];
      v50 = v0[28];
      v51 = v0[26];

      v49(v50, v51);
    }

    v52 = *(v0[38] + 16);

    v53 = swift_task_alloc();
    v0[43] = v53;
    *v53 = v0;
    v53[1] = sub_24B29282C;
    v54 = v0[41];

    return sub_24B1EC900(v54, v52 == 0);
  }

  else
  {
    v23 = v0[34];
    v24 = v0[33];
    v25 = v0[29];
    v26 = v0[26];
    v27 = v0[22];

    v23(v25, v27 + v24, v26);

    v28 = sub_24B2D3164();
    v29 = sub_24B2D5934();

    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[36];
    v32 = v0[29];
    v33 = v0[26];
    if (v30)
    {
      v71 = v0[36];
      v73 = v0[29];
      v35 = v0[24];
      v34 = v0[25];
      v69 = v0[26];
      v36 = v0[23];
      v63 = v0[20];
      v65 = v0[21];
      v37 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v74 = v67;
      *v37 = 136447235;
      sub_24B2D12A4();
      v38 = sub_24B2D24B4();
      v40 = v39;
      (*(v35 + 8))(v34, v36);
      v41 = sub_24AFF321C(v38, v40, &v74);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2160;
      *(v37 + 14) = 1752392040;
      *(v37 + 22) = 2081;
      type metadata accessor for PeopleProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCC7F0, type metadata accessor for PeopleProvider.Subscription, &protocol conformance descriptor for PeopleProvider.Subscription);
      v42 = sub_24B2D57F4();
      v44 = v43;

      v45 = sub_24AFF321C(v42, v44, &v74);

      *(v37 + 24) = v45;
      *(v37 + 32) = 2160;
      *(v37 + 34) = 1752392040;
      *(v37 + 42) = 2081;
      v0[10] = v63;
      v0[11] = v65;

      v46 = sub_24B2D53C4();
      v48 = sub_24AFF321C(v46, v47, &v74);

      *(v37 + 44) = v48;
      _os_log_impl(&dword_24AFD2000, v28, v29, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v37, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v67, -1, -1);
      MEMORY[0x24C23D530](v37, -1, -1);

      v71(v73, v69);
    }

    else
    {

      v31(v32, v33);
    }

    v56 = v0[19];
    if (*(v56 + 16))
    {
    }

    else
    {
      v56 = 0;
    }

    v57 = v0[40];
    v58 = v0[37];
    v59 = v0[21];
    v60 = v0[22] + v0[33];
    v61 = v0[20];
    swift_beginAccess();

    sub_24B18C3F8(v56, v61, v59);
    sub_24B297674(&qword_27EFCC7E8, &unk_24B2EC060, &qword_27EFCF878, &qword_24B2F57A0);
    *(v60 + *(v58 + 40)) = v57;

    sub_24B297F4C();
    swift_endAccess();

    v62 = v0[1];

    return v62();
  }
}

uint64_t sub_24B2933DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v5 = sub_24B2D2504();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  v6 = sub_24B2D3184();
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B29352C, v3, 0);
}

void sub_24B29352C()
{
  v184 = v0;
  v1 = v0[32];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[22];
  v5 = OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_subscriptionsStorage;
  v0[33] = OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_subscriptionsStorage;
  v6 = v4 + v5;
  swift_beginAccess();
  v7 = *(v2 + 16);
  v0[34] = v7;
  v0[35] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v170 = v7;
  v7(v1, v6, v3);

  v8 = sub_24B2D3164();
  v9 = sub_24B2D5934();

  v178 = v6;
  if (os_log_type_enabled(v8, v9))
  {
    v163 = v0[26];
    v168 = v0[32];
    v11 = v0[24];
    v10 = v0[25];
    v12 = v0[23];
    v154 = v0[21];
    v158 = v0[27];
    v152 = v0[20];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v183 = v14;
    *v13 = 136447235;
    sub_24B2D12A4();
    v15 = sub_24B2D24B4();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_24AFF321C(v15, v17, &v183);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    type metadata accessor for ItemsLocationsProvider.Subscription(0);
    sub_24B2BF448(&qword_27EFCE130, type metadata accessor for ItemsLocationsProvider.Subscription, &protocol conformance descriptor for ItemsLocationsProvider.Subscription);
    v19 = sub_24B2D57F4();
    v21 = sub_24AFF321C(v19, v20, &v183);

    *(v13 + 24) = v21;
    *(v13 + 32) = 2160;
    *(v13 + 34) = 1752392040;
    *(v13 + 42) = 2081;
    v0[16] = v152;
    v0[17] = v154;

    v22 = sub_24B2D53C4();
    v24 = sub_24AFF321C(v22, v23, &v183);

    *(v13 + 44) = v24;
    _os_log_impl(&dword_24AFD2000, v8, v9, "Provider(%{public}s):setSubscriptions\n- subscriptions: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v13, 0x34u);
    swift_arrayDestroy();
    v25 = v14;
    v6 = v178;
    MEMORY[0x24C23D530](v25, -1, -1);
    MEMORY[0x24C23D530](v13, -1, -1);

    v26 = *(v158 + 8);
    v26(v168, v163);
  }

  else
  {
    v27 = v0[32];
    v28 = v0[26];
    v29 = v0[27];

    v26 = *(v29 + 8);
    v26(v27, v28);
  }

  v0[36] = v26;
  v30 = v0[19];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE1B0, &unk_24B2F0110);
  v0[37] = v31;
  v32 = *(v6 + *(v31 + 40));
  v0[38] = v32;
  v33 = *(v6 + *(v31 + 36));
  v0[18] = v33;
  v35 = v0[20];
  v34 = v0[21];
  if (*(v30 + 16))
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v183 = v33;
    sub_24B1C9E58(v30, v35, v34, isUniquelyReferenced_nonNull_native);

    v37 = v183;
    v0[18] = v183;
  }

  else
  {

    sub_24B18C66C(0, v35, v34);
    v37 = v0[18];
  }

  v0[39] = v37;
  v38 = *(v37 + 64);
  v183 = MEMORY[0x277D84F90];
  v39 = -1;
  v40 = -1 << *(v37 + 32);
  if (-v40 < 64)
  {
    v39 = ~(-1 << -v40);
  }

  v41 = v39 & v38;
  v42 = (63 - v40) >> 6;
  swift_bridgeObjectRetain_n();
  v43 = 0;
  if (v41)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v44 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
      return;
    }

    if (v44 >= v42)
    {
      break;
    }

    v41 = *(v37 + 64 + 8 * v44);
    ++v43;
    if (v41)
    {
      v43 = v44;
      do
      {
LABEL_15:
        v41 &= v41 - 1;

        sub_24B03173C(v45);
      }

      while (v41);
      continue;
    }
  }

  v46 = sub_24B1D0B08(v183);
  v0[40] = v46;

  v47 = v0[19];
  if (*(v32 + 16) <= *(v30 + 16) >> 3)
  {
    v183 = v0[19];

    sub_24B2A427C(v32);
    v48 = v183;
  }

  else
  {

    v48 = sub_24B2ACBA8(v32, v47);
  }

  v0[41] = v48;
  if (*(v46 + 16) <= *(v32 + 16) >> 3)
  {
    v183 = v32;

    sub_24B2A427C(v46);
    v49 = v183;
  }

  else
  {

    v49 = sub_24B2ACBA8(v46, v32);
  }

  v0[42] = v49;
  v50 = v0[26];
  if (*(v49 + 16))
  {
    v170(v0[30], v178, v50);

    v51 = sub_24B2D3164();
    v52 = sub_24B2D5934();

    v53 = os_log_type_enabled(v51, v52);
    v54 = v0[30];
    v55 = v0[26];
    if (v53)
    {
      v174 = v0[26];
      v164 = v52;
      v57 = v0[24];
      v56 = v0[25];
      v169 = v0[30];
      v58 = v0[23];
      v153 = v0[20];
      v155 = v0[21];
      v59 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v183 = v159;
      *v59 = 136447235;
      sub_24B2D12A4();
      v60 = sub_24B2D24B4();
      v179 = v26;
      v62 = v61;
      (*(v57 + 8))(v56, v58);
      v63 = sub_24AFF321C(v60, v62, &v183);

      *(v59 + 4) = v63;
      *(v59 + 12) = 2160;
      *(v59 + 14) = 1752392040;
      *(v59 + 22) = 2081;
      type metadata accessor for ItemsLocationsProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCE130, type metadata accessor for ItemsLocationsProvider.Subscription, &protocol conformance descriptor for ItemsLocationsProvider.Subscription);
      v64 = sub_24B2D57F4();
      v66 = sub_24AFF321C(v64, v65, &v183);

      *(v59 + 24) = v66;
      *(v59 + 32) = 2160;
      *(v59 + 34) = 1752392040;
      *(v59 + 42) = 2081;
      v0[12] = v153;
      v0[13] = v155;

      v67 = sub_24B2D53C4();
      v69 = sub_24AFF321C(v67, v68, &v183);

      *(v59 + 44) = v69;
      _os_log_impl(&dword_24AFD2000, v51, v164, "Provider(%{public}s):setSubscriptions-didRemoveUniqueSubscriptions:YES\n- SubscriptionsThatDoNotExistAnymore: %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v59, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v159, -1, -1);
      MEMORY[0x24C23D530](v59, -1, -1);

      v179(v169, v174);
    }

    else
    {

      v26(v54, v55);
    }

    v89 = *(v46 + 16) == 0;
    v90 = swift_task_alloc();
    v0[45] = v90;
    *v90 = v0;
    v90[1] = sub_24B294A60;

    sub_24B1DD814(v49, v89);
  }

  else
  {
    v170(v0[31], v178, v50);

    v70 = sub_24B2D3164();
    v71 = sub_24B2D5934();

    v72 = os_log_type_enabled(v70, v71);
    v73 = v0[31];
    v74 = v0[26];
    if (v72)
    {
      v171 = v0[31];
      v175 = v0[26];
      v76 = v0[24];
      v75 = v0[25];
      v77 = v0[23];
      v156 = v0[20];
      v160 = v0[21];
      v78 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      v183 = v165;
      *v78 = 136447235;
      sub_24B2D12A4();
      v79 = sub_24B2D24B4();
      v180 = v26;
      v81 = v80;
      (*(v76 + 8))(v75, v77);
      v82 = sub_24AFF321C(v79, v81, &v183);

      *(v78 + 4) = v82;
      *(v78 + 12) = 2160;
      *(v78 + 14) = 1752392040;
      *(v78 + 22) = 2081;
      type metadata accessor for ItemsLocationsProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCE130, type metadata accessor for ItemsLocationsProvider.Subscription, &protocol conformance descriptor for ItemsLocationsProvider.Subscription);
      v83 = sub_24B2D57F4();
      v85 = sub_24AFF321C(v83, v84, &v183);

      *(v78 + 24) = v85;
      *(v78 + 32) = 2160;
      *(v78 + 34) = 1752392040;
      *(v78 + 42) = 2081;
      v0[14] = v156;
      v0[15] = v160;

      v86 = sub_24B2D53C4();
      v88 = sub_24AFF321C(v86, v87, &v183);

      *(v78 + 44) = v88;
      _os_log_impl(&dword_24AFD2000, v70, v71, "Provider(%{public}s):setSubscriptions-didRemoveUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v78, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v165, -1, -1);
      MEMORY[0x24C23D530](v78, -1, -1);

      v180(v171, v175);
    }

    else
    {

      v26(v73, v74);
    }

    if (*(v0[41] + 16))
    {
      v91 = v0[34];
      v92 = v0[33];
      v93 = v0[28];
      v94 = v0[26];
      v95 = v0[22];

      v91(v93, v95 + v92, v94);

      v96 = sub_24B2D3164();
      v97 = sub_24B2D5934();

      if (os_log_type_enabled(v96, v97))
      {
        v176 = v0[28];
        v181 = v0[36];
        v98 = v0[25];
        v172 = v0[26];
        v99 = v0[23];
        v100 = v0[24];
        v166 = v0[21];
        v161 = v0[20];
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v183 = v102;
        *v101 = 136447235;
        sub_24B2D12A4();
        v103 = sub_24B2D24B4();
        v105 = v104;
        (*(v100 + 8))(v98, v99);
        v106 = sub_24AFF321C(v103, v105, &v183);

        *(v101 + 4) = v106;
        *(v101 + 12) = 2160;
        *(v101 + 14) = 1752392040;
        *(v101 + 22) = 2081;
        type metadata accessor for ItemsLocationsProvider.Subscription(0);
        sub_24B2BF448(&qword_27EFCE130, type metadata accessor for ItemsLocationsProvider.Subscription, &protocol conformance descriptor for ItemsLocationsProvider.Subscription);
        v107 = sub_24B2D57F4();
        v109 = sub_24AFF321C(v107, v108, &v183);

        *(v101 + 24) = v109;
        *(v101 + 32) = 2160;
        *(v101 + 34) = 1752392040;
        *(v101 + 42) = 2081;
        v0[8] = v161;
        v0[9] = v166;

        v110 = sub_24B2D53C4();
        v112 = sub_24AFF321C(v110, v111, &v183);

        *(v101 + 44) = v112;
        _os_log_impl(&dword_24AFD2000, v96, v97, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:YES\n- subscriptionsThatDidNotExistBefore: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v101, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x24C23D530](v102, -1, -1);
        MEMORY[0x24C23D530](v101, -1, -1);

        v181(v176, v172);
      }

      else
      {
        v139 = v0[36];
        v140 = v0[28];
        v141 = v0[26];

        v139(v140, v141);
      }

      v142 = *(v0[38] + 16);

      v143 = swift_task_alloc();
      v0[43] = v143;
      *v143 = v0;
      v143[1] = sub_24B29479C;
      v144 = v0[41];

      sub_24B1DC994(v144, v142 == 0);
    }

    else
    {
      v113 = v0[34];
      v114 = v0[33];
      v115 = v0[29];
      v116 = v0[26];
      v117 = v0[22];

      v113(v115, v117 + v114, v116);

      v118 = sub_24B2D3164();
      v119 = sub_24B2D5934();

      v120 = os_log_type_enabled(v118, v119);
      v121 = v0[36];
      v122 = v0[29];
      v123 = v0[26];
      if (v120)
      {
        v177 = v0[36];
        v182 = v0[29];
        v125 = v0[24];
        v124 = v0[25];
        v173 = v0[26];
        v126 = v0[23];
        v157 = v0[20];
        v162 = v0[21];
        v127 = swift_slowAlloc();
        v167 = swift_slowAlloc();
        v183 = v167;
        *v127 = 136447235;
        sub_24B2D12A4();
        v128 = sub_24B2D24B4();
        v130 = v129;
        (*(v125 + 8))(v124, v126);
        v131 = sub_24AFF321C(v128, v130, &v183);

        *(v127 + 4) = v131;
        *(v127 + 12) = 2160;
        *(v127 + 14) = 1752392040;
        *(v127 + 22) = 2081;
        type metadata accessor for ItemsLocationsProvider.Subscription(0);
        sub_24B2BF448(&qword_27EFCE130, type metadata accessor for ItemsLocationsProvider.Subscription, &protocol conformance descriptor for ItemsLocationsProvider.Subscription);
        v132 = sub_24B2D57F4();
        v134 = v133;

        v135 = sub_24AFF321C(v132, v134, &v183);

        *(v127 + 24) = v135;
        *(v127 + 32) = 2160;
        *(v127 + 34) = 1752392040;
        *(v127 + 42) = 2081;
        v0[10] = v157;
        v0[11] = v162;

        v136 = sub_24B2D53C4();
        v138 = sub_24AFF321C(v136, v137, &v183);

        *(v127 + 44) = v138;
        _os_log_impl(&dword_24AFD2000, v118, v119, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v127, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x24C23D530](v167, -1, -1);
        MEMORY[0x24C23D530](v127, -1, -1);

        v177(v182, v173);
      }

      else
      {

        v121(v122, v123);
      }

      v145 = v0[19];
      if (*(v145 + 16))
      {
      }

      else
      {
        v145 = 0;
      }

      v146 = v0[40];
      v147 = v0[37];
      v148 = v0[21];
      v149 = v0[22] + v0[33];
      v150 = v0[20];
      swift_beginAccess();

      sub_24B18C66C(v145, v150, v148);
      sub_24B297674(&qword_27EFCE1B0, &unk_24B2F0110, &qword_27EFCF880, &qword_24B2F57C8);
      *(v149 + *(v147 + 40)) = v146;

      sub_24B29817C();
      swift_endAccess();

      v151 = v0[1];

      v151();
    }
  }
}

uint64_t sub_24B29479C()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);

    v4 = sub_24B2BF7D8;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 176);
    v4 = sub_24B2948E8;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_24B2948E8()
{
  v1 = v0[19];
  if (*(v1 + 16))
  {
  }

  else
  {
    v1 = 0;
  }

  v2 = v0[40];
  v3 = v0[37];
  v4 = v0[21];
  v5 = v0[22] + v0[33];
  v6 = v0[20];
  swift_beginAccess();

  sub_24B18C66C(v1, v6, v4);
  sub_24B297674(&qword_27EFCE1B0, &unk_24B2F0110, &qword_27EFCF880, &qword_24B2F57C8);
  *(v5 + *(v3 + 40)) = v2;

  sub_24B29817C();
  swift_endAccess();

  v7 = v0[1];

  return v7();
}

uint64_t sub_24B294A60()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);

    v4 = sub_24B2BF7DC;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 176);
    v4 = sub_24B294BB0;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_24B294BB0()
{
  v75 = v0;
  if (*(v0[41] + 16))
  {
    v1 = v0[34];
    v2 = v0[33];
    v3 = v0[28];
    v4 = v0[26];
    v5 = v0[22];

    v1(v3, v5 + v2, v4);

    v6 = sub_24B2D3164();
    v7 = sub_24B2D5934();

    if (os_log_type_enabled(v6, v7))
    {
      v70 = v0[28];
      v72 = v0[36];
      v8 = v0[25];
      v68 = v0[26];
      v9 = v0[23];
      v10 = v0[24];
      v66 = v0[21];
      v64 = v0[20];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v74 = v12;
      *v11 = 136447235;
      sub_24B2D12A4();
      v13 = sub_24B2D24B4();
      v15 = v14;
      (*(v10 + 8))(v8, v9);
      v16 = sub_24AFF321C(v13, v15, &v74);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2160;
      *(v11 + 14) = 1752392040;
      *(v11 + 22) = 2081;
      type metadata accessor for ItemsLocationsProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCE130, type metadata accessor for ItemsLocationsProvider.Subscription, &protocol conformance descriptor for ItemsLocationsProvider.Subscription);
      v17 = sub_24B2D57F4();
      v19 = sub_24AFF321C(v17, v18, &v74);

      *(v11 + 24) = v19;
      *(v11 + 32) = 2160;
      *(v11 + 34) = 1752392040;
      *(v11 + 42) = 2081;
      v0[8] = v64;
      v0[9] = v66;

      v20 = sub_24B2D53C4();
      v22 = sub_24AFF321C(v20, v21, &v74);

      *(v11 + 44) = v22;
      _os_log_impl(&dword_24AFD2000, v6, v7, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:YES\n- subscriptionsThatDidNotExistBefore: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v11, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v12, -1, -1);
      MEMORY[0x24C23D530](v11, -1, -1);

      v72(v70, v68);
    }

    else
    {
      v49 = v0[36];
      v50 = v0[28];
      v51 = v0[26];

      v49(v50, v51);
    }

    v52 = *(v0[38] + 16);

    v53 = swift_task_alloc();
    v0[43] = v53;
    *v53 = v0;
    v53[1] = sub_24B29479C;
    v54 = v0[41];

    return sub_24B1DC994(v54, v52 == 0);
  }

  else
  {
    v23 = v0[34];
    v24 = v0[33];
    v25 = v0[29];
    v26 = v0[26];
    v27 = v0[22];

    v23(v25, v27 + v24, v26);

    v28 = sub_24B2D3164();
    v29 = sub_24B2D5934();

    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[36];
    v32 = v0[29];
    v33 = v0[26];
    if (v30)
    {
      v71 = v0[36];
      v73 = v0[29];
      v35 = v0[24];
      v34 = v0[25];
      v69 = v0[26];
      v36 = v0[23];
      v63 = v0[20];
      v65 = v0[21];
      v37 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v74 = v67;
      *v37 = 136447235;
      sub_24B2D12A4();
      v38 = sub_24B2D24B4();
      v40 = v39;
      (*(v35 + 8))(v34, v36);
      v41 = sub_24AFF321C(v38, v40, &v74);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2160;
      *(v37 + 14) = 1752392040;
      *(v37 + 22) = 2081;
      type metadata accessor for ItemsLocationsProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCE130, type metadata accessor for ItemsLocationsProvider.Subscription, &protocol conformance descriptor for ItemsLocationsProvider.Subscription);
      v42 = sub_24B2D57F4();
      v44 = v43;

      v45 = sub_24AFF321C(v42, v44, &v74);

      *(v37 + 24) = v45;
      *(v37 + 32) = 2160;
      *(v37 + 34) = 1752392040;
      *(v37 + 42) = 2081;
      v0[10] = v63;
      v0[11] = v65;

      v46 = sub_24B2D53C4();
      v48 = sub_24AFF321C(v46, v47, &v74);

      *(v37 + 44) = v48;
      _os_log_impl(&dword_24AFD2000, v28, v29, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v37, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v67, -1, -1);
      MEMORY[0x24C23D530](v37, -1, -1);

      v71(v73, v69);
    }

    else
    {

      v31(v32, v33);
    }

    v56 = v0[19];
    if (*(v56 + 16))
    {
    }

    else
    {
      v56 = 0;
    }

    v57 = v0[40];
    v58 = v0[37];
    v59 = v0[21];
    v60 = v0[22] + v0[33];
    v61 = v0[20];
    swift_beginAccess();

    sub_24B18C66C(v56, v61, v59);
    sub_24B297674(&qword_27EFCE1B0, &unk_24B2F0110, &qword_27EFCF880, &qword_24B2F57C8);
    *(v60 + *(v58 + 40)) = v57;

    sub_24B29817C();
    swift_endAccess();

    v62 = v0[1];

    return v62();
  }
}

uint64_t sub_24B29534C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v5 = sub_24B2D2504();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  v6 = sub_24B2D3184();
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B29549C, v3, 0);
}

void sub_24B29549C()
{
  v184 = v0;
  v1 = v0[32];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[22];
  v5 = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_subscriptionsStorage;
  v0[33] = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_subscriptionsStorage;
  v6 = v4 + v5;
  swift_beginAccess();
  v7 = *(v2 + 16);
  v0[34] = v7;
  v0[35] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v170 = v7;
  v7(v1, v6, v3);

  v8 = sub_24B2D3164();
  v9 = sub_24B2D5934();

  v178 = v6;
  if (os_log_type_enabled(v8, v9))
  {
    v163 = v0[26];
    v168 = v0[32];
    v11 = v0[24];
    v10 = v0[25];
    v12 = v0[23];
    v154 = v0[21];
    v158 = v0[27];
    v152 = v0[20];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v183 = v14;
    *v13 = 136447235;
    sub_24B2D12A4();
    v15 = sub_24B2D24B4();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_24AFF321C(v15, v17, &v183);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    type metadata accessor for ItemsProvider.Subscription(0);
    sub_24B2BF448(&qword_27EFCC858, type metadata accessor for ItemsProvider.Subscription, &protocol conformance descriptor for ItemsProvider.Subscription);
    v19 = sub_24B2D57F4();
    v21 = sub_24AFF321C(v19, v20, &v183);

    *(v13 + 24) = v21;
    *(v13 + 32) = 2160;
    *(v13 + 34) = 1752392040;
    *(v13 + 42) = 2081;
    v0[16] = v152;
    v0[17] = v154;

    v22 = sub_24B2D53C4();
    v24 = sub_24AFF321C(v22, v23, &v183);

    *(v13 + 44) = v24;
    _os_log_impl(&dword_24AFD2000, v8, v9, "Provider(%{public}s):setSubscriptions\n- subscriptions: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v13, 0x34u);
    swift_arrayDestroy();
    v25 = v14;
    v6 = v178;
    MEMORY[0x24C23D530](v25, -1, -1);
    MEMORY[0x24C23D530](v13, -1, -1);

    v26 = *(v158 + 8);
    v26(v168, v163);
  }

  else
  {
    v27 = v0[32];
    v28 = v0[26];
    v29 = v0[27];

    v26 = *(v29 + 8);
    v26(v27, v28);
  }

  v0[36] = v26;
  v30 = v0[19];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC850, &unk_24B2EC0F0);
  v0[37] = v31;
  v32 = *(v6 + *(v31 + 40));
  v0[38] = v32;
  v33 = *(v6 + *(v31 + 36));
  v0[18] = v33;
  v35 = v0[20];
  v34 = v0[21];
  if (*(v30 + 16))
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v183 = v33;
    sub_24B1C9E88(v30, v35, v34, isUniquelyReferenced_nonNull_native);

    v37 = v183;
    v0[18] = v183;
  }

  else
  {

    sub_24B18C6AC(0, v35, v34);
    v37 = v0[18];
  }

  v0[39] = v37;
  v38 = *(v37 + 64);
  v183 = MEMORY[0x277D84F90];
  v39 = -1;
  v40 = -1 << *(v37 + 32);
  if (-v40 < 64)
  {
    v39 = ~(-1 << -v40);
  }

  v41 = v39 & v38;
  v42 = (63 - v40) >> 6;
  swift_bridgeObjectRetain_n();
  v43 = 0;
  if (v41)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v44 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
      return;
    }

    if (v44 >= v42)
    {
      break;
    }

    v41 = *(v37 + 64 + 8 * v44);
    ++v43;
    if (v41)
    {
      v43 = v44;
      do
      {
LABEL_15:
        v41 &= v41 - 1;

        sub_24B031E3C(v45);
      }

      while (v41);
      continue;
    }
  }

  v46 = sub_24B1D0C98(v183);
  v0[40] = v46;

  v47 = v0[19];
  if (*(v32 + 16) <= *(v30 + 16) >> 3)
  {
    v183 = v0[19];

    sub_24B2A4484(v32);
    v48 = v183;
  }

  else
  {

    v48 = sub_24B2AD7AC(v32, v47);
  }

  v0[41] = v48;
  if (*(v46 + 16) <= *(v32 + 16) >> 3)
  {
    v183 = v32;

    sub_24B2A4484(v46);
    v49 = v183;
  }

  else
  {

    v49 = sub_24B2AD7AC(v46, v32);
  }

  v0[42] = v49;
  v50 = v0[26];
  if (*(v49 + 16))
  {
    v170(v0[30], v178, v50);

    v51 = sub_24B2D3164();
    v52 = sub_24B2D5934();

    v53 = os_log_type_enabled(v51, v52);
    v54 = v0[30];
    v55 = v0[26];
    if (v53)
    {
      v174 = v0[26];
      v164 = v52;
      v57 = v0[24];
      v56 = v0[25];
      v169 = v0[30];
      v58 = v0[23];
      v153 = v0[20];
      v155 = v0[21];
      v59 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v183 = v159;
      *v59 = 136447235;
      sub_24B2D12A4();
      v60 = sub_24B2D24B4();
      v179 = v26;
      v62 = v61;
      (*(v57 + 8))(v56, v58);
      v63 = sub_24AFF321C(v60, v62, &v183);

      *(v59 + 4) = v63;
      *(v59 + 12) = 2160;
      *(v59 + 14) = 1752392040;
      *(v59 + 22) = 2081;
      type metadata accessor for ItemsProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCC858, type metadata accessor for ItemsProvider.Subscription, &protocol conformance descriptor for ItemsProvider.Subscription);
      v64 = sub_24B2D57F4();
      v66 = sub_24AFF321C(v64, v65, &v183);

      *(v59 + 24) = v66;
      *(v59 + 32) = 2160;
      *(v59 + 34) = 1752392040;
      *(v59 + 42) = 2081;
      v0[12] = v153;
      v0[13] = v155;

      v67 = sub_24B2D53C4();
      v69 = sub_24AFF321C(v67, v68, &v183);

      *(v59 + 44) = v69;
      _os_log_impl(&dword_24AFD2000, v51, v164, "Provider(%{public}s):setSubscriptions-didRemoveUniqueSubscriptions:YES\n- SubscriptionsThatDoNotExistAnymore: %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v59, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v159, -1, -1);
      MEMORY[0x24C23D530](v59, -1, -1);

      v179(v169, v174);
    }

    else
    {

      v26(v54, v55);
    }

    v89 = *(v46 + 16) == 0;
    v90 = swift_task_alloc();
    v0[45] = v90;
    *v90 = v0;
    v90[1] = sub_24B296A8C;

    sub_24B1AB2EC(v49, v89);
  }

  else
  {
    v170(v0[31], v178, v50);

    v70 = sub_24B2D3164();
    v71 = sub_24B2D5934();

    v72 = os_log_type_enabled(v70, v71);
    v73 = v0[31];
    v74 = v0[26];
    if (v72)
    {
      v171 = v0[31];
      v175 = v0[26];
      v76 = v0[24];
      v75 = v0[25];
      v77 = v0[23];
      v156 = v0[20];
      v160 = v0[21];
      v78 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      v183 = v165;
      *v78 = 136447235;
      sub_24B2D12A4();
      v79 = sub_24B2D24B4();
      v180 = v26;
      v81 = v80;
      (*(v76 + 8))(v75, v77);
      v82 = sub_24AFF321C(v79, v81, &v183);

      *(v78 + 4) = v82;
      *(v78 + 12) = 2160;
      *(v78 + 14) = 1752392040;
      *(v78 + 22) = 2081;
      type metadata accessor for ItemsProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCC858, type metadata accessor for ItemsProvider.Subscription, &protocol conformance descriptor for ItemsProvider.Subscription);
      v83 = sub_24B2D57F4();
      v85 = sub_24AFF321C(v83, v84, &v183);

      *(v78 + 24) = v85;
      *(v78 + 32) = 2160;
      *(v78 + 34) = 1752392040;
      *(v78 + 42) = 2081;
      v0[14] = v156;
      v0[15] = v160;

      v86 = sub_24B2D53C4();
      v88 = sub_24AFF321C(v86, v87, &v183);

      *(v78 + 44) = v88;
      _os_log_impl(&dword_24AFD2000, v70, v71, "Provider(%{public}s):setSubscriptions-didRemoveUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v78, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v165, -1, -1);
      MEMORY[0x24C23D530](v78, -1, -1);

      v180(v171, v175);
    }

    else
    {

      v26(v73, v74);
    }

    if (*(v0[41] + 16))
    {
      v91 = v0[34];
      v92 = v0[33];
      v93 = v0[28];
      v94 = v0[26];
      v95 = v0[22];

      v91(v93, v95 + v92, v94);

      v96 = sub_24B2D3164();
      v97 = sub_24B2D5934();

      if (os_log_type_enabled(v96, v97))
      {
        v176 = v0[28];
        v181 = v0[36];
        v98 = v0[25];
        v172 = v0[26];
        v99 = v0[23];
        v100 = v0[24];
        v166 = v0[21];
        v161 = v0[20];
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v183 = v102;
        *v101 = 136447235;
        sub_24B2D12A4();
        v103 = sub_24B2D24B4();
        v105 = v104;
        (*(v100 + 8))(v98, v99);
        v106 = sub_24AFF321C(v103, v105, &v183);

        *(v101 + 4) = v106;
        *(v101 + 12) = 2160;
        *(v101 + 14) = 1752392040;
        *(v101 + 22) = 2081;
        type metadata accessor for ItemsProvider.Subscription(0);
        sub_24B2BF448(&qword_27EFCC858, type metadata accessor for ItemsProvider.Subscription, &protocol conformance descriptor for ItemsProvider.Subscription);
        v107 = sub_24B2D57F4();
        v109 = sub_24AFF321C(v107, v108, &v183);

        *(v101 + 24) = v109;
        *(v101 + 32) = 2160;
        *(v101 + 34) = 1752392040;
        *(v101 + 42) = 2081;
        v0[8] = v161;
        v0[9] = v166;

        v110 = sub_24B2D53C4();
        v112 = sub_24AFF321C(v110, v111, &v183);

        *(v101 + 44) = v112;
        _os_log_impl(&dword_24AFD2000, v96, v97, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:YES\n- subscriptionsThatDidNotExistBefore: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v101, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x24C23D530](v102, -1, -1);
        MEMORY[0x24C23D530](v101, -1, -1);

        v181(v176, v172);
      }

      else
      {
        v139 = v0[36];
        v140 = v0[28];
        v141 = v0[26];

        v139(v140, v141);
      }

      v142 = *(v0[38] + 16);

      v143 = swift_task_alloc();
      v0[43] = v143;
      *v143 = v0;
      v143[1] = sub_24B29670C;
      v144 = v0[41];

      sub_24B1A9AD0(v144, v142 == 0);
    }

    else
    {
      v113 = v0[34];
      v114 = v0[33];
      v115 = v0[29];
      v116 = v0[26];
      v117 = v0[22];

      v113(v115, v117 + v114, v116);

      v118 = sub_24B2D3164();
      v119 = sub_24B2D5934();

      v120 = os_log_type_enabled(v118, v119);
      v121 = v0[36];
      v122 = v0[29];
      v123 = v0[26];
      if (v120)
      {
        v177 = v0[36];
        v182 = v0[29];
        v125 = v0[24];
        v124 = v0[25];
        v173 = v0[26];
        v126 = v0[23];
        v157 = v0[20];
        v162 = v0[21];
        v127 = swift_slowAlloc();
        v167 = swift_slowAlloc();
        v183 = v167;
        *v127 = 136447235;
        sub_24B2D12A4();
        v128 = sub_24B2D24B4();
        v130 = v129;
        (*(v125 + 8))(v124, v126);
        v131 = sub_24AFF321C(v128, v130, &v183);

        *(v127 + 4) = v131;
        *(v127 + 12) = 2160;
        *(v127 + 14) = 1752392040;
        *(v127 + 22) = 2081;
        type metadata accessor for ItemsProvider.Subscription(0);
        sub_24B2BF448(&qword_27EFCC858, type metadata accessor for ItemsProvider.Subscription, &protocol conformance descriptor for ItemsProvider.Subscription);
        v132 = sub_24B2D57F4();
        v134 = v133;

        v135 = sub_24AFF321C(v132, v134, &v183);

        *(v127 + 24) = v135;
        *(v127 + 32) = 2160;
        *(v127 + 34) = 1752392040;
        *(v127 + 42) = 2081;
        v0[10] = v157;
        v0[11] = v162;

        v136 = sub_24B2D53C4();
        v138 = sub_24AFF321C(v136, v137, &v183);

        *(v127 + 44) = v138;
        _os_log_impl(&dword_24AFD2000, v118, v119, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v127, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x24C23D530](v167, -1, -1);
        MEMORY[0x24C23D530](v127, -1, -1);

        v177(v182, v173);
      }

      else
      {

        v121(v122, v123);
      }

      v145 = v0[19];
      if (*(v145 + 16))
      {
      }

      else
      {
        v145 = 0;
      }

      v146 = v0[40];
      v147 = v0[37];
      v148 = v0[21];
      v149 = v0[22] + v0[33];
      v150 = v0[20];
      swift_beginAccess();

      sub_24B18C6AC(v145, v150, v148);
      sub_24B297674(&qword_27EFCC850, &unk_24B2EC0F0, &qword_27EFCF890, &qword_24B2F5808);
      *(v149 + *(v147 + 40)) = v146;

      sub_24B2983AC();
      swift_endAccess();

      v151 = v0[1];

      v151();
    }
  }
}

uint64_t sub_24B29670C()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);

    v4 = sub_24B2969D0;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 176);
    v4 = sub_24B296858;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_24B296858()
{
  v1 = v0[19];
  if (*(v1 + 16))
  {
  }

  else
  {
    v1 = 0;
  }

  v2 = v0[40];
  v3 = v0[37];
  v4 = v0[21];
  v5 = v0[22] + v0[33];
  v6 = v0[20];
  swift_beginAccess();

  sub_24B18C6AC(v1, v6, v4);
  sub_24B297674(&qword_27EFCC850, &unk_24B2EC0F0, &qword_27EFCF890, &qword_24B2F5808);
  *(v5 + *(v3 + 40)) = v2;

  sub_24B2983AC();
  swift_endAccess();

  v7 = v0[1];

  return v7();
}

uint64_t sub_24B2969D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B296A8C()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);

    v4 = sub_24B297378;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 176);
    v4 = sub_24B296BDC;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_24B296BDC()
{
  v75 = v0;
  if (*(v0[41] + 16))
  {
    v1 = v0[34];
    v2 = v0[33];
    v3 = v0[28];
    v4 = v0[26];
    v5 = v0[22];

    v1(v3, v5 + v2, v4);

    v6 = sub_24B2D3164();
    v7 = sub_24B2D5934();

    if (os_log_type_enabled(v6, v7))
    {
      v70 = v0[28];
      v72 = v0[36];
      v8 = v0[25];
      v68 = v0[26];
      v9 = v0[23];
      v10 = v0[24];
      v66 = v0[21];
      v64 = v0[20];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v74 = v12;
      *v11 = 136447235;
      sub_24B2D12A4();
      v13 = sub_24B2D24B4();
      v15 = v14;
      (*(v10 + 8))(v8, v9);
      v16 = sub_24AFF321C(v13, v15, &v74);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2160;
      *(v11 + 14) = 1752392040;
      *(v11 + 22) = 2081;
      type metadata accessor for ItemsProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCC858, type metadata accessor for ItemsProvider.Subscription, &protocol conformance descriptor for ItemsProvider.Subscription);
      v17 = sub_24B2D57F4();
      v19 = sub_24AFF321C(v17, v18, &v74);

      *(v11 + 24) = v19;
      *(v11 + 32) = 2160;
      *(v11 + 34) = 1752392040;
      *(v11 + 42) = 2081;
      v0[8] = v64;
      v0[9] = v66;

      v20 = sub_24B2D53C4();
      v22 = sub_24AFF321C(v20, v21, &v74);

      *(v11 + 44) = v22;
      _os_log_impl(&dword_24AFD2000, v6, v7, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:YES\n- subscriptionsThatDidNotExistBefore: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v11, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v12, -1, -1);
      MEMORY[0x24C23D530](v11, -1, -1);

      v72(v70, v68);
    }

    else
    {
      v49 = v0[36];
      v50 = v0[28];
      v51 = v0[26];

      v49(v50, v51);
    }

    v52 = *(v0[38] + 16);

    v53 = swift_task_alloc();
    v0[43] = v53;
    *v53 = v0;
    v53[1] = sub_24B29670C;
    v54 = v0[41];

    return sub_24B1A9AD0(v54, v52 == 0);
  }

  else
  {
    v23 = v0[34];
    v24 = v0[33];
    v25 = v0[29];
    v26 = v0[26];
    v27 = v0[22];

    v23(v25, v27 + v24, v26);

    v28 = sub_24B2D3164();
    v29 = sub_24B2D5934();

    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[36];
    v32 = v0[29];
    v33 = v0[26];
    if (v30)
    {
      v71 = v0[36];
      v73 = v0[29];
      v35 = v0[24];
      v34 = v0[25];
      v69 = v0[26];
      v36 = v0[23];
      v63 = v0[20];
      v65 = v0[21];
      v37 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v74 = v67;
      *v37 = 136447235;
      sub_24B2D12A4();
      v38 = sub_24B2D24B4();
      v40 = v39;
      (*(v35 + 8))(v34, v36);
      v41 = sub_24AFF321C(v38, v40, &v74);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2160;
      *(v37 + 14) = 1752392040;
      *(v37 + 22) = 2081;
      type metadata accessor for ItemsProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCC858, type metadata accessor for ItemsProvider.Subscription, &protocol conformance descriptor for ItemsProvider.Subscription);
      v42 = sub_24B2D57F4();
      v44 = v43;

      v45 = sub_24AFF321C(v42, v44, &v74);

      *(v37 + 24) = v45;
      *(v37 + 32) = 2160;
      *(v37 + 34) = 1752392040;
      *(v37 + 42) = 2081;
      v0[10] = v63;
      v0[11] = v65;

      v46 = sub_24B2D53C4();
      v48 = sub_24AFF321C(v46, v47, &v74);

      *(v37 + 44) = v48;
      _os_log_impl(&dword_24AFD2000, v28, v29, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v37, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v67, -1, -1);
      MEMORY[0x24C23D530](v37, -1, -1);

      v71(v73, v69);
    }

    else
    {

      v31(v32, v33);
    }

    v56 = v0[19];
    if (*(v56 + 16))
    {
    }

    else
    {
      v56 = 0;
    }

    v57 = v0[40];
    v58 = v0[37];
    v59 = v0[21];
    v60 = v0[22] + v0[33];
    v61 = v0[20];
    swift_beginAccess();

    sub_24B18C6AC(v56, v61, v59);
    sub_24B297674(&qword_27EFCC850, &unk_24B2EC0F0, &qword_27EFCF890, &qword_24B2F5808);
    *(v60 + *(v58 + 40)) = v57;

    sub_24B2983AC();
    swift_endAccess();

    v62 = v0[1];

    return v62();
  }
}

uint64_t sub_24B297378()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B297434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_24AFFDE44;

  return sub_24B28F4FC(a2, a3, a4);
}

uint64_t sub_24B2974E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_24AFFD370;

  return sub_24B28DC6C(a2, a3, a4);
}

uint64_t sub_24B29759C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_24AFFDE44;

  return sub_24B2933DC(a2, a3, a4);
}

uint64_t sub_24B297674(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v9 = v4;
  v10 = sub_24B2D3184();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  (*(v11 + 16))(v13, v9, v10);

  v14 = sub_24B2D3164();
  v15 = sub_24B2D5904();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = v17;
    *v16 = 136315138;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    sub_24B1A35D0(v18, v19, v20);
    v21 = sub_24B2D51F4();
    v23 = sub_24AFF321C(v21, v22, &v26);

    *(v16 + 4) = v23;
    _os_log_impl(&dword_24AFD2000, v14, v15, "SubscriptionManagerStorage: subscriptionsBySubscriber - %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x24C23D530](v17, -1, -1);
    MEMORY[0x24C23D530](v16, -1, -1);
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_24B2978F4()
{
  v1 = v0;
  v2 = sub_24B2D3184();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC838, &unk_24B2F1230);
  (*(v3 + 16))(v5, v1, v2);

  v6 = sub_24B2D3164();
  v7 = sub_24B2D5904();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    sub_24B137F64(v9, v10, v11);
    v12 = sub_24B2D57F4();
    v14 = sub_24AFF321C(v12, v13, &v17);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_24AFD2000, v6, v7, "SubscriptionManagerStorage: uniqueSubscriptions - %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24B297AEC()
{
  v1 = v0;
  v2 = sub_24B2D3184();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDB48, &qword_24B2EEE80);
  (*(v3 + 16))(v5, v1, v2);

  v6 = sub_24B2D3164();
  v7 = sub_24B2D5904();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    type metadata accessor for ContactsProvider.Subscription(0);
    sub_24B2BF448(&qword_27EFCDB80, type metadata accessor for ContactsProvider.Subscription, &protocol conformance descriptor for ContactsProvider.Subscription);
    v10 = sub_24B2D57F4();
    v12 = sub_24AFF321C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_24AFD2000, v6, v7, "SubscriptionManagerStorage: uniqueSubscriptions - %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24B297D1C()
{
  v1 = v0;
  v2 = sub_24B2D3184();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7D0, &qword_24B2EC040);
  (*(v3 + 16))(v5, v1, v2);

  v6 = sub_24B2D3164();
  v7 = sub_24B2D5904();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    type metadata accessor for PeopleLocationsProvider.Subscription(0);
    sub_24B2BF448(&qword_27EFCC7D8, type metadata accessor for PeopleLocationsProvider.Subscription, &protocol conformance descriptor for PeopleLocationsProvider.Subscription);
    v10 = sub_24B2D57F4();
    v12 = sub_24AFF321C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_24AFD2000, v6, v7, "SubscriptionManagerStorage: uniqueSubscriptions - %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24B297F4C()
{
  v1 = v0;
  v2 = sub_24B2D3184();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7E8, &unk_24B2EC060);
  (*(v3 + 16))(v5, v1, v2);

  v6 = sub_24B2D3164();
  v7 = sub_24B2D5904();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    type metadata accessor for PeopleProvider.Subscription(0);
    sub_24B2BF448(&qword_27EFCC7F0, type metadata accessor for PeopleProvider.Subscription, &protocol conformance descriptor for PeopleProvider.Subscription);
    v10 = sub_24B2D57F4();
    v12 = sub_24AFF321C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_24AFD2000, v6, v7, "SubscriptionManagerStorage: uniqueSubscriptions - %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24B29817C()
{
  v1 = v0;
  v2 = sub_24B2D3184();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE1B0, &unk_24B2F0110);
  (*(v3 + 16))(v5, v1, v2);

  v6 = sub_24B2D3164();
  v7 = sub_24B2D5904();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    type metadata accessor for ItemsLocationsProvider.Subscription(0);
    sub_24B2BF448(&qword_27EFCE130, type metadata accessor for ItemsLocationsProvider.Subscription, &protocol conformance descriptor for ItemsLocationsProvider.Subscription);
    v10 = sub_24B2D57F4();
    v12 = sub_24AFF321C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_24AFD2000, v6, v7, "SubscriptionManagerStorage: uniqueSubscriptions - %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24B2983AC()
{
  v1 = v0;
  v2 = sub_24B2D3184();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC850, &unk_24B2EC0F0);
  (*(v3 + 16))(v5, v1, v2);

  v6 = sub_24B2D3164();
  v7 = sub_24B2D5904();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    type metadata accessor for ItemsProvider.Subscription(0);
    sub_24B2BF448(&qword_27EFCC858, type metadata accessor for ItemsProvider.Subscription, &protocol conformance descriptor for ItemsProvider.Subscription);
    v10 = sub_24B2D57F4();
    v12 = sub_24AFF321C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_24AFD2000, v6, v7, "SubscriptionManagerStorage: uniqueSubscriptions - %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24B2985DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB298, &qword_24B2F42E0);
  MEMORY[0x28223BE20](v4 - 8);
  v276 = v224 - v5;
  v6 = sub_24B2D5324();
  MEMORY[0x28223BE20](v6 - 8);
  v272 = v224 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24B2D2534();
  MEMORY[0x28223BE20](v8 - 8);
  v271 = v224 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = sub_24B2D2204();
  v266 = *(v270 - 8);
  MEMORY[0x28223BE20](v270);
  v267 = v224 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24B2D5344();
  MEMORY[0x28223BE20](v11 - 8);
  v277 = v224 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24B2D2214();
  v14 = *(v13 - 8);
  v279 = v13;
  v280 = v14;
  MEMORY[0x28223BE20](v13);
  v265 = v224 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v273 = v224 - v17;
  MEMORY[0x28223BE20](v18);
  v269 = v224 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288, &unk_24B2EBD20);
  MEMORY[0x28223BE20](v20 - 8);
  v256 = v224 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF758, &qword_24B2F5120);
  MEMORY[0x28223BE20](v22 - 8);
  v275 = v224 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v233 = v224 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = v224 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB278, &unk_24B2EC3C0);
  MEMORY[0x28223BE20](v29 - 8);
  v232 = v224 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB280, &qword_24B2F4430);
  MEMORY[0x28223BE20](v31 - 8);
  v227 = v224 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB270, &unk_24B2EBD40);
  MEMORY[0x28223BE20](v33 - 8);
  v274 = v224 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v268 = v224 - v36;
  MEMORY[0x28223BE20](v37);
  v278 = v224 - v38;
  MEMORY[0x28223BE20](v39);
  v244 = v224 - v40;
  MEMORY[0x28223BE20](v41);
  v234 = v224 - v42;
  MEMORY[0x28223BE20](v43);
  v260 = v224 - v44;
  v231 = sub_24B2D1524();
  v230 = *(v231 - 8);
  MEMORY[0x28223BE20](v231);
  v229 = v224 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_24B2D1544();
  v247 = *(v248 - 8);
  MEMORY[0x28223BE20](v248);
  v246 = v224 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB2A0, &unk_24B2F4B50);
  MEMORY[0x28223BE20](v264);
  v236 = v224 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v240 = v224 - v49;
  MEMORY[0x28223BE20](v50);
  v241 = v224 - v51;
  MEMORY[0x28223BE20](v52);
  v242 = v224 - v53;
  MEMORY[0x28223BE20](v54);
  v228 = v224 - v55;
  MEMORY[0x28223BE20](v56);
  v258 = v224 - v57;
  MEMORY[0x28223BE20](v58);
  v259 = v224 - v59;
  MEMORY[0x28223BE20](v60);
  v257 = v224 - v61;
  MEMORY[0x28223BE20](v62);
  v245 = v224 - v63;
  v263 = sub_24B2D1874();
  v262 = *(v263 - 8);
  MEMORY[0x28223BE20](v263);
  v255 = v224 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v243 = v224 - v66;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF518, &unk_24B2F5770);
  MEMORY[0x28223BE20](v250);
  v251 = v224 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v252 = v224 - v69;
  MEMORY[0x28223BE20](v70);
  v253 = v224 - v71;
  MEMORY[0x28223BE20](v72);
  v261 = v224 - v73;
  MEMORY[0x28223BE20](v74);
  v235 = v224 - v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD50, &unk_24B2ECC40);
  MEMORY[0x28223BE20](v76 - 8);
  v238 = v224 - v77;
  v78 = type metadata accessor for PersonDetailsController.State(0);
  MEMORY[0x28223BE20](v78);
  v80 = v224 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = type metadata accessor for DetailsPersonInfo(0);
  v237 = *(v239 - 8);
  MEMORY[0x28223BE20](v239);
  v249 = v224 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF4F8, &qword_24B2F4CA0);
  MEMORY[0x28223BE20](v82 - 8);
  v84 = v224 - v83;
  swift_getKeyPath();
  v282 = v1;
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel, &unk_24B2F552C);
  sub_24B2D2584();

  v85 = v1[48];
  v254 = v28;
  if (v85 > 1)
  {
    v86 = 0;
  }

  else
  {

    v86 = sub_24B128D40();
  }

  swift_getKeyPath();
  v282 = v1;
  sub_24B2D2584();

  if (v1[48] > 1u)
  {
    v108 = v279;
    v109 = *(v280 + 56);
    v109(a1, 1, 1, v279);
    v110 = type metadata accessor for EmbeddedPeopleSummaryMapView.State(0);
    v109(a1 + v110[5], 1, 1, v108);
    v111 = v110[6];
    v112 = sub_24B2D1954();
    (*(*(v112 - 8) + 56))(a1 + v111, 1, 1, v112);
    v109(a1 + v110[7], 1, 1, v108);
    v113 = v110[9];
    Action = type metadata accessor for PersonLocateAction(0);
    result = (*(*(Action - 8) + 56))(a1 + v113, 1, 1, Action);
    *(a1 + v110[8]) = 0;
    return result;
  }

  v225 = v86;
  v226 = a1;
  v87 = *(v1 + 3);
  v224[1] = *(v1 + 2);
  v88 = *(v1 + 4);
  v89 = *(v1 + 5);
  if (*(v88 + 16) == 1)
  {
    sub_24B2D1494();

    v90 = sub_24B2D1484();
    sub_24B2D5A64();

    v91 = sub_24B2D15F4();
    if ((*(*(v91 - 8) + 48))(v84, 1, v91) != 1)
    {

      sub_24AFF8258(v84, &qword_27EFCF4F8, &qword_24B2F4CA0);
      swift_getKeyPath();
      v282 = v2;
      sub_24B2D2584();

      v92 = *&v2[OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__detailsController];
      if (!v92)
      {
        v138 = v264;
        v139 = sub_24B2D1944();
        v140 = v256;
        (*(*(v139 - 8) + 56))(v256, 1, 1, v139);
        v141 = v262;
        v142 = v255;
        v143 = v263;
        (*(v262 + 104))(v255, *MEMORY[0x277D08CB0], v263);
        v144 = v257;
        sub_24B2D1894();
        (*(v141 + 8))(v142, v143);
        sub_24AFF8258(v140, &qword_27EFCB288, &unk_24B2EBD20);
        v145 = v259;
        sub_24B008890(v144, v259, &qword_27EFCB2A0, &unk_24B2F4B50);
        v146 = *(v138 + 48);
        v277 = *(v138 + 64);
        v278 = v146;
        v147 = v258;
        sub_24B008890(v144, v258, &qword_27EFCB2A0, &unk_24B2F4B50);
        v148 = *(v138 + 48);
        v276 = *(v138 + 64);
        v149 = v236;
        sub_24B0391CC(v144, v236, &qword_27EFCB2A0, &unk_24B2F4B50);
        v275 = *(v138 + 48);
        v150 = *(v138 + 64);
        v151 = type metadata accessor for EmbeddedPeopleSummaryMapView.State(0);
        v152 = v226;
        (*(v280 + 56))(v226 + v151[7], 1, 1, v279);
        v153 = v151[9];
        v154 = type metadata accessor for PersonLocateAction(0);
        (*(*(v154 - 8) + 56))(v152 + v153, 1, 1, v154);
        sub_24B0391CC(v145, v152, &qword_27EFCB270, &unk_24B2EBD40);
        sub_24B0391CC(v147 + v148, v152 + v151[5], &qword_27EFCB270, &unk_24B2EBD40);
        sub_24B0391CC(v149 + v150, v152 + v151[6], &qword_27EFCB298, &qword_24B2F42E0);
        *(v152 + v151[8]) = 1;
        sub_24AFF8258(v149 + v275, &qword_27EFCB270, &unk_24B2EBD40);
        sub_24AFF8258(v149, &qword_27EFCB270, &unk_24B2EBD40);
        sub_24AFF8258(v147 + v276, &qword_27EFCB298, &qword_24B2F42E0);
        sub_24AFF8258(v147, &qword_27EFCB270, &unk_24B2EBD40);
        sub_24AFF8258(&v277[v145], &qword_27EFCB298, &qword_24B2F42E0);
        v155 = v145 + v278;
        return sub_24AFF8258(v155, &qword_27EFCB270, &unk_24B2EBD40);
      }

      swift_getKeyPath();
      v282 = v92;
      sub_24B2BF448(&qword_27EFCCD10, type metadata accessor for PersonDetailsController, &protocol conformance descriptor for PersonDetailsController);

      sub_24B2D2584();

      v93 = OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController__state;
      swift_beginAccess();
      sub_24B2BF490(&v92[v93], v80, type metadata accessor for PersonDetailsController.State);
      v94 = &v80[*(v78 + 20)];
      v95 = v238;
      sub_24B0391CC(v94, v238, &qword_27EFCCD50, &unk_24B2ECC40);
      v96 = v239;
      v97 = (*(v237 + 48))(v95, 1, v239);
      v98 = v263;
      v99 = v262;
      if (v97 == 1)
      {
        sub_24AFF8258(v95, &qword_27EFCCD50, &unk_24B2ECC40);
        swift_getKeyPath();
        v281 = v92;
        sub_24B2D2584();

        v100 = v92[v93];
        v101 = sub_24B2D1944();
        v102 = v256;
        (*(*(v101 - 8) + 56))(v256, 1, 1, v101);
        v103 = v255;
        (*(v99 + 104))(v255, *MEMORY[0x277D08CB0], v98);
        v104 = v228;
        LODWORD(v278) = v100 ^ 1;
        sub_24B2D1894();

        (*(v99 + 8))(v103, v98);
        sub_24AFF8258(v102, &qword_27EFCB288, &unk_24B2EBD20);
        sub_24B008890(v104, v242, &qword_27EFCB2A0, &unk_24B2F4B50);
        sub_24B008890(v104, v241, &qword_27EFCB2A0, &unk_24B2F4B50);
        sub_24B0391CC(v104, v240, &qword_27EFCB2A0, &unk_24B2F4B50);
        (*(v280 + 56))(v244, 1, 1, v279);
        v105 = v226;
        if (v100)
        {
          v106 = v233;
          *v233 = 0;
          v107 = type metadata accessor for PersonLocateAction(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v107 - 8) + 56))(v106, 0, 1, v107);
        }

        else
        {
          v175 = type metadata accessor for PersonLocateAction(0);
          v106 = v233;
          (*(*(v175 - 8) + 56))(v233, 1, 1, v175);
        }

        v176 = *(v264 + 48);
        v177 = *(v264 + 64);
        v178 = v242;
        sub_24B0391CC(v242, v105, &qword_27EFCB270, &unk_24B2EBD40);
        v179 = type metadata accessor for EmbeddedPeopleSummaryMapView.State(0);
        v180 = v241;
        sub_24B0391CC(v241 + v176, v105 + v179[5], &qword_27EFCB270, &unk_24B2EBD40);
        v181 = v240;
        sub_24B0391CC(v240 + v177, v105 + v179[6], &qword_27EFCB298, &qword_24B2F42E0);
        sub_24B0391CC(v244, v105 + v179[7], &qword_27EFCB270, &unk_24B2EBD40);
        *(v105 + v179[8]) = v278;
        sub_24B0391CC(v106, v105 + v179[9], &qword_27EFCF758, &qword_24B2F5120);
        sub_24AFF8258(v181 + v176, &qword_27EFCB270, &unk_24B2EBD40);
        sub_24AFF8258(v181, &qword_27EFCB270, &unk_24B2EBD40);
        sub_24AFF8258(v180 + v177, &qword_27EFCB298, &qword_24B2F42E0);
        sub_24AFF8258(v180, &qword_27EFCB270, &unk_24B2EBD40);
        sub_24AFF8258(v178 + v177, &qword_27EFCB298, &qword_24B2F42E0);
        return sub_24AFF8258(v178 + v176, &qword_27EFCB270, &unk_24B2EBD40);
      }

      v277 = v92;
      v156 = v263;
      v157 = v249;
      sub_24B2BF380(v95, v249, type metadata accessor for DetailsPersonInfo);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF520, &qword_24B2F4B60);
      v158 = sub_24B2D17A4();
      v159 = *(v158 - 8);
      v160 = *(v159 + 72);
      v161 = (*(v159 + 80) + 32) & ~*(v159 + 80);
      v162 = swift_allocObject();
      *(v162 + 16) = xmmword_24B2DEAD0;
      v163 = v162 + v161;
      v164 = *(v159 + 104);
      v164(v163, *MEMORY[0x277D08C58], v158);
      v164(v163 + v160, *MEMORY[0x277D08C50], v158);
      v275 = sub_24B1377DC(v162);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      (*(v99 + 104))(v243, *MEMORY[0x277D08CB0], v156);
      v278 = *(v264 + 48);
      LODWORD(v156) = *(v157 + *(v96 + 24));
      v165 = v246;
      sub_24B2D1554();
      v166 = v229;
      sub_24B2D1534();
      v167 = v96;
      v168 = v247 + 8;
      v276 = *(v247 + 8);
      (v276)(v165, v248);
      sub_24B2D1514();
      (*(v230 + 8))(v166, v231);
      LODWORD(v278) = v156;
      sub_24B2D1894();
      v169 = v232;
      sub_24B008890(v157 + *(v167 + 32), v232, &qword_27EFCB278, &unk_24B2EC3C0);
      v170 = sub_24B2D1824();
      v171 = *(v170 - 8);
      v172 = (*(v171 + 48))(v169, 1, v170);
      v173 = v280;
      if (v172 == 1)
      {

        sub_24AFF8258(v169, &qword_27EFCB278, &unk_24B2EC3C0);
        v174 = 1;
      }

      else
      {
        v247 = v168;
        v182 = v227;
        sub_24B2D1814();

        (*(v171 + 8))(v169, v170);
        v183 = sub_24B2D1F54();
        v184 = *(v183 - 8);
        if ((*(v184 + 48))(v182, 1, v183) == 1)
        {
          sub_24AFF8258(v182, &qword_27EFCB280, &qword_24B2F4430);
          v174 = 1;
        }

        else
        {
          sub_24B2D1F34();
          (*(v184 + 8))(v182, v183);
          v174 = 0;
        }
      }

      v185 = v262;
      v186 = v263;
      v187 = *(v173 + 56);
      v280 = v173 + 56;
      v187(v260, v174, 1, v279);
      v271 = v250[12];
      v188 = v250[20];
      v273 = v250[16];
      v274 = v188;
      v275 = v250[24];
      v189 = v246;
      sub_24B2D1554();
      v190 = v234;
      sub_24B2D14F4();
      (v276)(v189, v248);
      sub_24AFF8258(v190, &qword_27EFCB270, &unk_24B2EBD40);
      (*(v185 + 8))(v243, v186);
      v191 = v245;
      v192 = v257;
      sub_24B008890(v245, v257, &qword_27EFCB2A0, &unk_24B2F4B50);
      v193 = v264;
      v276 = *(v264 + 48);
      v272 = *(v264 + 64);
      v194 = v235;
      sub_24B0391CC(v192, v235, &qword_27EFCB270, &unk_24B2EBD40);
      v195 = v259;
      sub_24B008890(v191, v259, &qword_27EFCB2A0, &unk_24B2F4B50);
      v196 = *(v193 + 48);
      v270 = *(v193 + 64);
      sub_24B0391CC(v195 + v196, &v271[v194], &qword_27EFCB270, &unk_24B2EBD40);
      v197 = v191;
      v198 = v258;
      sub_24B0391CC(v197, v258, &qword_27EFCB2A0, &unk_24B2F4B50);
      v199 = *(v193 + 48);
      sub_24B0391CC(v198 + *(v193 + 64), &v273[v194], &qword_27EFCB298, &qword_24B2F42E0);
      sub_24B0391CC(v260, &v274[v194], &qword_27EFCB270, &unk_24B2EBD40);
      v187(v194 + v275, 1, 1, v279);
      sub_24AFF8258(v198 + v199, &qword_27EFCB270, &unk_24B2EBD40);
      sub_24AFF8258(v198, &qword_27EFCB270, &unk_24B2EBD40);
      sub_24AFF8258(v195 + v270, &qword_27EFCB298, &qword_24B2F42E0);
      sub_24AFF8258(v195, &qword_27EFCB270, &unk_24B2EBD40);
      sub_24AFF8258(&v272[v192], &qword_27EFCB298, &qword_24B2F42E0);
      sub_24AFF8258(v192 + v276, &qword_27EFCB270, &unk_24B2EBD40);
      sub_24B008890(v194, v261, &qword_27EFCF518, &unk_24B2F5770);
      sub_24B008890(v194, v253, &qword_27EFCF518, &unk_24B2F5770);
      sub_24B008890(v194, v252, &qword_27EFCF518, &unk_24B2F5770);
      sub_24B008890(v194, v251, &qword_27EFCF518, &unk_24B2F5770);
      if (v225)
      {
        sub_24B137AFC(&unk_285E48FB0);
        v200 = v249;
        v201 = DetailsPersonInfo.locateActions(allowedActions:)();

        v202 = v200;
        if (v201[2])
        {
          v203 = type metadata accessor for PersonLocateAction(0);
          v204 = *(v203 - 8);
          v205 = v254;
          sub_24B2BF490(v201 + ((*(v204 + 80) + 32) & ~*(v204 + 80)), v254, type metadata accessor for PersonLocateAction);

          sub_24AFF8258(v194, &qword_27EFCF518, &unk_24B2F5770);
          sub_24B2BF3E8(v202, type metadata accessor for DetailsPersonInfo);
          (*(v204 + 56))(v205, 0, 1, v203);
LABEL_36:
          v208 = v250[12];
          v209 = v250[16];
          v210 = v250[20];
          v211 = v250[24];
          v279 = v210;
          v280 = v211;
          v212 = v226;
          sub_24B0391CC(v261, v226, &qword_27EFCB270, &unk_24B2EBD40);
          v213 = type metadata accessor for EmbeddedPeopleSummaryMapView.State(0);
          v214 = v253;
          sub_24B0391CC(v253 + v208, v212 + v213[5], &qword_27EFCB270, &unk_24B2EBD40);
          v215 = v252;
          sub_24B0391CC(v252 + v209, v212 + v213[6], &qword_27EFCB298, &qword_24B2F42E0);
          v216 = v251;
          sub_24B0391CC(v251 + v210, v212 + v213[7], &qword_27EFCB270, &unk_24B2EBD40);
          *(v212 + v213[8]) = v278;
          sub_24B0391CC(v254, v212 + v213[9], &qword_27EFCF758, &qword_24B2F5120);
          v217 = v280;
          sub_24AFF8258(v216 + v280, &qword_27EFCB270, &unk_24B2EBD40);
          v218 = v209;
          sub_24AFF8258(v216 + v209, &qword_27EFCB298, &qword_24B2F42E0);
          sub_24AFF8258(v216 + v208, &qword_27EFCB270, &unk_24B2EBD40);
          sub_24AFF8258(v216, &qword_27EFCB270, &unk_24B2EBD40);
          v219 = v217;
          sub_24AFF8258(v215 + v217, &qword_27EFCB270, &unk_24B2EBD40);
          v220 = v279;
          sub_24AFF8258(v215 + v279, &qword_27EFCB270, &unk_24B2EBD40);
          sub_24AFF8258(v215 + v208, &qword_27EFCB270, &unk_24B2EBD40);
          sub_24AFF8258(v215, &qword_27EFCB270, &unk_24B2EBD40);
          sub_24AFF8258(v214 + v217, &qword_27EFCB270, &unk_24B2EBD40);
          v221 = v220;
          sub_24AFF8258(v214 + v220, &qword_27EFCB270, &unk_24B2EBD40);
          v222 = v218;
          sub_24AFF8258(v214 + v218, &qword_27EFCB298, &qword_24B2F42E0);
          sub_24AFF8258(v214, &qword_27EFCB270, &unk_24B2EBD40);
          v223 = v261;
          sub_24AFF8258(v261 + v219, &qword_27EFCB270, &unk_24B2EBD40);
          sub_24AFF8258(v223 + v221, &qword_27EFCB270, &unk_24B2EBD40);
          sub_24AFF8258(v223 + v222, &qword_27EFCB298, &qword_24B2F42E0);
          v155 = v223 + v208;
          return sub_24AFF8258(v155, &qword_27EFCB270, &unk_24B2EBD40);
        }

        sub_24AFF8258(v194, &qword_27EFCF518, &unk_24B2F5770);
        v206 = v200;
      }

      else
      {

        sub_24AFF8258(v194, &qword_27EFCF518, &unk_24B2F5770);
        v206 = v249;
      }

      sub_24B2BF3E8(v206, type metadata accessor for DetailsPersonInfo);
      v207 = type metadata accessor for PersonLocateAction(0);
      (*(*(v207 - 8) + 56))(v254, 1, 1, v207);
      goto LABEL_36;
    }
  }

  else
  {
    v116 = sub_24B2D15F4();
    (*(*(v116 - 8) + 56))(v84, 1, 1, v116);
  }

  v264 = v89;
  v277 = v87;
  sub_24AFF8258(v84, &qword_27EFCF4F8, &qword_24B2F4CA0);
  sub_24B2D52E4();
  if (qword_27EFC7730 != -1)
  {
    swift_once();
  }

  v117 = v270;
  v118 = __swift_project_value_buffer(v270, qword_27EFE4628);
  v119 = v267;
  v120 = *(v266 + 16);
  v120(v267, v118, v117);
  sub_24B2D2524();
  v121 = v269;
  sub_24B2D2224();
  sub_24B2D5314();
  sub_24B2D5304();
  v282 = *(v88 + 16);
  sub_24B2D52F4();
  sub_24B2D5304();
  sub_24B2D5334();
  v120(v119, v118, v117);
  sub_24B2D2524();
  v122 = v273;
  sub_24B2D2224();
  v123 = v279;
  v124 = v280;
  v125 = *(v280 + 56);
  v125(v278, 1, 1, v279);
  if (v277)
  {
    v126 = v265;
    sub_24B2D21F4();

    (*(v124 + 8))(v121, v123);
    v127 = v126;
    v128 = v226;
  }

  else
  {

    v128 = v226;
    v127 = v121;
  }

  v129 = v268;
  v130 = *(v124 + 32);
  v130(v268, v127, v123);
  v125(v129, 0, 1, v123);
  v131 = v276;
  v130(v276, v122, v123);
  v132 = sub_24B2D1954();
  swift_storeEnumTagMultiPayload();
  (*(*(v132 - 8) + 56))(v131, 0, 1, v132);
  v133 = v274;
  v125(v274, 1, 1, v123);
  if (v225)
  {
    v134 = v275;
    *v275 = 0;
    v135 = type metadata accessor for PersonLocateAction(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v135 - 8) + 56))(v134, 0, 1, v135);
  }

  else
  {
    v136 = type metadata accessor for PersonLocateAction(0);
    v134 = v275;
    (*(*(v136 - 8) + 56))(v275, 1, 1, v136);
  }

  sub_24B0391CC(v278, v128, &qword_27EFCB270, &unk_24B2EBD40);
  v137 = type metadata accessor for EmbeddedPeopleSummaryMapView.State(0);
  sub_24B0391CC(v129, v128 + v137[5], &qword_27EFCB270, &unk_24B2EBD40);
  sub_24B0391CC(v131, v128 + v137[6], &qword_27EFCB298, &qword_24B2F42E0);
  sub_24B0391CC(v133, v128 + v137[7], &qword_27EFCB270, &unk_24B2EBD40);
  *(v128 + v137[8]) = 0;
  return sub_24B0391CC(v134, v128 + v137[9], &qword_27EFCF758, &qword_24B2F5120);
}

uint64_t sub_24B29ABE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF500, &qword_24B2F4AC8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v12 - v2;
  swift_getKeyPath();
  v13 = v0;
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel, &unk_24B2F552C);
  sub_24B2D2584();

  v5 = *(v0 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__listController);
  v12[0] = &_s25OrganizedListExtraStorageVN_0;
  v12[1] = sub_24B2A0804(v4, v6, v7);
  swift_getKeyPath();
  v13 = v5;
  sub_24B039184(&qword_27EFCF850, &qword_27EFCF858, &qword_24B2F55F8, &protocol conformance descriptor for PeopleListController<A>);

  sub_24B2D2584();

  v8 = *(*v5 + 128);
  swift_beginAccess();
  sub_24B008890(v5 + v8, v3, &qword_27EFCF500, &qword_24B2F4AC8);

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF860, &unk_24B2F5600);
  sub_24B2D1984();
  (*(*(v9 - 8) + 8))(v3, v9);
  v10 = v12[3];

  return v10;
}

uint64_t sub_24B29AE28()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF500, &qword_24B2F4AC8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v11 - v2;
  swift_getKeyPath();
  v12 = v0;
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel, &unk_24B2F552C);
  sub_24B2D2584();

  v5 = *(v0 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__listController);
  v11[0] = &_s25OrganizedListExtraStorageVN_0;
  v11[1] = sub_24B2A0804(v4, v6, v7);
  swift_getKeyPath();
  v12 = v5;
  sub_24B039184(&qword_27EFCF850, &qword_27EFCF858, &qword_24B2F55F8, &protocol conformance descriptor for PeopleListController<A>);

  sub_24B2D2584();

  v8 = *(*v5 + 128);
  swift_beginAccess();
  sub_24B008890(v5 + v8, v3, &qword_27EFCF500, &qword_24B2F4AC8);

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF860, &unk_24B2F5600);
  sub_24B2D1984();
  (*(*(v9 - 8) + 8))(v3, v9);

  return v11[4];
}

uint64_t sub_24B29B070@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v105 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC190, &qword_24B2EB210);
  MEMORY[0x28223BE20](v3 - 8);
  v99 = v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v100 = v95 - v6;
  v104 = type metadata accessor for PinCollection.PinInfo(0);
  v102 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v101 = v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_24B2D1494();
  v103 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v112 = v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Icon(0);
  v110 = *(v9 - 8);
  v111 = v9;
  MEMORY[0x28223BE20](v9);
  v109 = v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288, &unk_24B2EBD20);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v95 - v12;
  v98 = type metadata accessor for ListPersonInfo(0);
  v14 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v16 = v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF500, &qword_24B2F4AC8);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v97 = v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v95 - v21;
  swift_getKeyPath();
  v23 = OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel___observationRegistrar;
  v120 = v2;
  v106 = sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel, &unk_24B2F552C);
  v107 = v23;
  sub_24B2D2584();

  v25 = OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__listController;
  v108 = v2;
  v26 = *(v2 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__listController);
  v114 = &_s25OrganizedListExtraStorageVN_0;
  v96 = sub_24B2A0804(v24, v27, v28);
  v115 = v96;
  swift_getKeyPath();
  v120 = v26;
  v29 = sub_24B039184(&qword_27EFCF850, &qword_27EFCF858, &qword_24B2F55F8, &protocol conformance descriptor for PeopleListController<A>);

  v95[1] = v29;
  sub_24B2D2584();

  v30 = *(*v26 + 128);
  swift_beginAccess();
  sub_24B008890(v26 + v30, v22, &qword_27EFCF500, &qword_24B2F4AC8);

  v31 = v22[*(v18 + 44)];
  sub_24AFF8258(v22, &qword_27EFCF500, &qword_24B2F4AC8);
  if (v31 > 4 || ((1 << v31) & 0x19) == 0)
  {
    swift_getKeyPath();
    v60 = v108;
    v119 = v108;
    sub_24B2D2584();

    v62 = *(v60 + v25);
    MEMORY[0x28223BE20](v61);
    v63 = v96;
    v95[-2] = &_s25OrganizedListExtraStorageVN_0;
    v95[-1] = v63;
    swift_getKeyPath();
    v119 = v62;

    sub_24B2D2584();

    v64 = *(*v62 + 128);
    swift_beginAccess();
    v65 = v97;
    sub_24B008890(v62 + v64, v97, &qword_27EFCF500, &qword_24B2F4AC8);

    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF860, &unk_24B2F5600);
    v67 = sub_24B2D19A4();
    result = (*(*(v66 - 8) + 8))(v65, v66);
    v68 = 0;
    v69 = *(v67 + 16);
    v70 = v98;
    while (1)
    {
      if (v69 == v68)
      {

        goto LABEL_3;
      }

      if (v68 >= *(v67 + 16))
      {
        break;
      }

      sub_24B2BF490(v67 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v68++, v16, type metadata accessor for ListPersonInfo);
      sub_24B008890(&v16[*(v70 + 28)], v13, &qword_27EFCB288, &unk_24B2EBD20);
      v71 = sub_24B2D1944();
      v72 = (*(*(v71 - 8) + 48))(v13, 1, v71);
      sub_24AFF8258(v13, &qword_27EFCB288, &unk_24B2EBD20);
      result = sub_24B2BF3E8(v16, type metadata accessor for ListPersonInfo);
      if (v72 != 1)
      {

        v73 = type metadata accessor for PinCollection.Style(0);
        return (*(*(v73 - 8) + 56))(v105, 1, 1, v73);
      }
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_3:
  swift_getKeyPath();
  v32 = v108;
  v117 = v108;
  sub_24B2D2584();

  if (*(v32 + 48) > 1u)
  {
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1E0, &unk_24B2F5760);
    v47 = v46[12];
    v48 = v46[16];
    v49 = v105;
    v50 = (v105 + v46[20]);
    (*(v103 + 56))(v105, 1, 1, v113);
    swift_storeEnumTagMultiPayload();
    v51 = v104;
    *(v49 + *(v104 + 20)) = 0;
    v52 = *(v102 + 56);
    v52(v49 + v47, 1, 1, v51);
    v52(v49 + v48, 1, 1, v51);
LABEL_23:
    v78 = type metadata accessor for PinCollection.Style(0);
    *v50 = 0;
    v50[1] = 0;
    swift_storeEnumTagMultiPayload();
    v79 = *(*(v78 - 8) + 56);
    v80 = v49;
    return v79(v80, 0, 1, v78);
  }

  v33 = *(v32 + 32);
  v34 = *(v33 + 16);
  v35 = MEMORY[0x277D84F90];
  if (v34)
  {
    v36 = *(v32 + 24);
    v37 = *(v32 + 40);
    v117 = MEMORY[0x277D84F90];
    v97 = v36;

    v96 = v37;

    sub_24B007C78(0, v34, 0);
    sub_24B2D5694();
    v107 = *(v103 + 16);
    v35 = v117;
    v38 = (*(v103 + 80) + 32) & ~*(v103 + 80);
    v98 = v33;
    v39 = v33 + v38;
    v106 = *(v103 + 72);
    v40 = (v103 + 32);
    v108 = v103 + 16;
    v41 = (v103 + 56);
    v42 = v109;
    do
    {
      v107(v112, v39, v113);
      sub_24B2D5684();
      sub_24B2D5604();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v43 = v113;
      (*v40)(v42, v112, v113);
      (*v41)(v42, 0, 1, v43);
      swift_storeEnumTagMultiPayload();

      v117 = v35;
      v45 = *(v35 + 16);
      v44 = *(v35 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_24B007C78((v44 > 1), v45 + 1, 1);
        v35 = v117;
      }

      *(v35 + 16) = v45 + 1;
      sub_24B2BF380(v42, v35 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v45, type metadata accessor for Icon);
      v39 += v106;
      --v34;
    }

    while (v34);
  }

  v53 = v104;
  v54 = *(v35 + 16);
  v55 = v102;
  if (!v54)
  {

    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1E0, &unk_24B2F5760);
    v75 = v74[12];
    v76 = v74[16];
    v49 = v105;
    v50 = (v105 + v74[20]);
    (*(v103 + 56))(v105, 1, 1, v113);
    swift_storeEnumTagMultiPayload();
    *(v49 + *(v53 + 20)) = 0;
    v77 = *(v55 + 56);
    v77(v49 + v75, 1, 1, v53);
    v77(v49 + v76, 1, 1, v53);
    goto LABEL_23;
  }

  if (v54 >= 4)
  {
    v117 = 43;
    v118 = 0xE100000000000000;
    v116 = v54 - 3;
    v56 = sub_24B2D5FA4();
    MEMORY[0x24C23BC10](v56);

    v58 = *(v35 + 16);
    if (v58)
    {
      v59 = v117;
      v113 = v118;
      goto LABEL_25;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v113 = 0;
  v59 = 0;
  v58 = v54;
LABEL_25:
  v81 = v35 + ((*(v110 + 80) + 32) & ~*(v110 + 80));
  v82 = v101;
  result = sub_24B2BF490(v81, v101, type metadata accessor for Icon);
  *(v82 + *(v53 + 20)) = 0;
  if (v54 == 1)
  {
    v83 = *(v55 + 56);
    v83(v100, 1, 1, v53);
LABEL_32:

    v88 = v99;
    v83(v99, 1, 1, v53);
    goto LABEL_33;
  }

  if (v58 == 1)
  {
    goto LABEL_37;
  }

  v84 = *(v110 + 72);
  v85 = v100;
  sub_24B2BF490(v81 + v84, v100, type metadata accessor for Icon);
  *(v85 + *(v53 + 20)) = 0;
  v83 = *(v55 + 56);
  result = (v83)(v85, 0, 1, v53);
  if (v54 < 3)
  {
    goto LABEL_32;
  }

  if (v58 >= 3)
  {
    v86 = v81 + 2 * v84;
    v87 = v99;
    sub_24B2BF490(v86, v99, type metadata accessor for Icon);

    *(v87 + *(v53 + 20)) = 0;
    v83(v87, 0, 1, v53);
    v88 = v87;
LABEL_33:
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1E0, &unk_24B2F5760);
    v90 = v89[12];
    v91 = v89[16];
    v92 = v105;
    v93 = (v105 + v89[20]);
    sub_24B2BF380(v101, v105, type metadata accessor for PinCollection.PinInfo);
    sub_24B0391CC(v100, v92 + v90, &qword_27EFCC190, &qword_24B2EB210);
    sub_24B0391CC(v88, v92 + v91, &qword_27EFCC190, &qword_24B2EB210);
    v94 = v113;
    *v93 = v59;
    v93[1] = v94;
    v78 = type metadata accessor for PinCollection.Style(0);
    swift_storeEnumTagMultiPayload();
    v79 = *(*(v78 - 8) + 56);
    v80 = v92;
    return v79(v80, 0, 1, v78);
  }

LABEL_38:
  __break(1u);
  return result;
}

void sub_24B29BF2C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v35 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF4F8, &qword_24B2F4CA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v35 - v6;
  v8 = sub_24B2D15F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v35 - v13;
  swift_getKeyPath();
  *&v39 = v0;
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel, &unk_24B2F552C);
  sub_24B2D2584();

  if (*(v0 + 48) <= 1u)
  {
    v15 = *(v0 + 24);
    v37 = *(v1 + 16);
    *&v38 = v4;
    v16 = *(v1 + 32);

    if (sub_24B128D40())
    {
      v17 = *(v1 + 64);
      v18 = *(v1 + 72);
      v19 = *(v1 + 80);
      v20 = *(v1 + 136);
      *&v39 = *(v1 + 56);
      *(&v39 + 1) = v17;
      v40 = v18;
      v41 = v19;
      v21 = *(v1 + 104);
      v35[0] = *(v1 + 88);
      v35[1] = v21;
      v42 = v35[0];
      v43 = v21;
      v38 = *(v1 + 120);
      v44 = v38;
      v45 = v20;
      type metadata accessor for EmbeddedPeopleInteractiveMapViewModel(0);
      swift_allocObject();

      v22 = sub_24B273E54(0, v37, v15, v16, &v39);

      sub_24B29C508(v22);
    }

    else
    {
      v23 = *(v16 + 16);
      v36 = v15;
      if (v23 == 1)
      {
        sub_24B2D1494();
        v24 = sub_24B2D1484();
        sub_24B2D5A64();
      }

      else
      {
        (*(v9 + 56))(v7, 1, 1, v8);
      }

      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {
        sub_24AFF8258(v7, &qword_27EFCF4F8, &qword_24B2F4CA0);
        v25 = sub_24B2D56D4();
        v26 = v38;
        (*(*(v25 - 8) + 56))(v38, 1, 1, v25);
        sub_24B2D5694();

        v27 = sub_24B2D5684();
        v28 = swift_allocObject();
        v29 = MEMORY[0x277D85700];
        v28[2] = v27;
        v28[3] = v29;
        v28[4] = v1;
        sub_24B00B0F0(0, 0, v26, &unk_24B2F5718, v28);
      }

      else
      {
        v37 = *(v9 + 32);
        v37(v14, v7, v8);
        v30 = sub_24B2D56D4();
        (*(*(v30 - 8) + 56))(v38, 1, 1, v30);
        (*(v9 + 16))(v11, v14, v8);
        sub_24B2D5694();

        v31 = sub_24B2D5684();
        v32 = (*(v9 + 80) + 40) & ~*(v9 + 80);
        v33 = swift_allocObject();
        v34 = MEMORY[0x277D85700];
        *(v33 + 2) = v31;
        *(v33 + 3) = v34;
        *(v33 + 4) = v1;
        v37(&v33[v32], v11, v8);
        sub_24B00B0F0(0, 0, v38, &unk_24B2F5728, v33);

        (*(v9 + 8))(v14, v8);
      }
    }
  }
}

double sub_24B29C508(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__fullScreenInteractiveMap);
  if (!v2)
  {
    if (!a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel, &unk_24B2F552C);
    sub_24B2D2574();

    return result;
  }

  if (v2 != a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  *(v1 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__fullScreenInteractiveMap) = a1;

  return result;
}

uint64_t sub_24B29C6C0(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v5 = sub_24B2D3164();
  v6 = sub_24B2D5934();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_24AFF321C(a1, a2, &v11);
    _os_log_impl(&dword_24AFD2000, v5, v6, "EmbeddedPeopleSummaryMapViewModel: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C23D530](v8, -1, -1);
    MEMORY[0x24C23D530](v7, -1, -1);
  }

  return a3();
}

uint64_t sub_24B29C7E4(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_24B2D1794();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB020, &qword_24B2E71F8);
  v2[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288, &unk_24B2EBD20);
  v2[18] = swift_task_alloc();
  v4 = sub_24B2D1C44();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = type metadata accessor for OpenFindMyAction.Destination(0);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = type metadata accessor for PersonDetailsController.State(0);
  v2[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD50, &unk_24B2ECC40);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v5 = type metadata accessor for DetailsPersonInfo(0);
  v2[30] = v5;
  v2[31] = *(v5 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = type metadata accessor for PersonLocateAction(0);
  v2[35] = swift_task_alloc();
  sub_24B2D5694();
  v2[36] = sub_24B2D5684();
  v7 = sub_24B2D5604();
  v2[37] = v7;
  v2[38] = v6;

  return MEMORY[0x2822009F8](sub_24B29CAF8, v7, v6);
}

uint64_t sub_24B29CAF8()
{
  sub_24B2BF490(v0[12], v0[35], type metadata accessor for PersonLocateAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  swift_getKeyPath();
  v2 = v0[13];
  if (EnumCaseMultiPayload != 1)
  {
    v0[10] = v2;
    sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel, &unk_24B2F552C);
    sub_24B2D2584();

    v10 = *(v2 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__detailsController);
    v11 = v0[30];
    v12 = v0[31];
    v13 = v0[29];
    if (v10)
    {
      v15 = v0[26];
      v14 = v0[27];
      swift_getKeyPath();
      v0[11] = v10;
      sub_24B2BF448(&qword_27EFCCD10, type metadata accessor for PersonDetailsController, &protocol conformance descriptor for PersonDetailsController);

      sub_24B2D2584();

      v16 = OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController__state;
      swift_beginAccess();
      sub_24B2BF490(v10 + v16, v14, type metadata accessor for PersonDetailsController.State);

      sub_24B0391CC(v14 + *(v15 + 20), v13, &qword_27EFCCD50, &unk_24B2ECC40);
      if ((*(v12 + 48))(v13, 1, v11) != 1)
      {
        v17 = v0[13];
        sub_24B2BF380(v0[29], v0[33], type metadata accessor for DetailsPersonInfo);
        v18 = *(v17 + 112);
        sub_24B2D1724();
        swift_storeEnumTagMultiPayload();
        v52 = (v18 + *v18);
        v19 = swift_task_alloc();
        v0[39] = v19;
        *v19 = v0;
        v19[1] = sub_24B29D418;
        v20 = v0[25];
LABEL_15:

        return v52(v20);
      }
    }

    else
    {
      (*(v12 + 56))(v13, 1, 1, v11);
    }

    v29 = v0[13];
    sub_24AFF8258(v0[29], &qword_27EFCCD50, &unk_24B2ECC40);
    v30 = *(v29 + 112);
    swift_storeEnumTagMultiPayload();
    v52 = (v30 + *v30);
    v31 = swift_task_alloc();
    v0[40] = v31;
    *v31 = v0;
    v31[1] = sub_24B29D6B0;
    v20 = v0[24];
    goto LABEL_15;
  }

  v0[8] = v2;
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel, &unk_24B2F552C);
  sub_24B2D2584();

  v3 = *(v2 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__detailsController);
  if (!v3)
  {
    v21 = v0[30];
    v22 = v0[31];
    v23 = v0[28];

    (*(v22 + 56))(v23, 1, 1, v21);
    goto LABEL_9;
  }

  v4 = v0[30];
  v5 = v0[31];
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[26];
  swift_getKeyPath();
  v0[9] = v3;
  sub_24B2BF448(&qword_27EFCCD10, type metadata accessor for PersonDetailsController, &protocol conformance descriptor for PersonDetailsController);

  sub_24B2D2584();

  v9 = OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController__state;
  swift_beginAccess();
  sub_24B2BF490(v3 + v9, v7, type metadata accessor for PersonDetailsController.State);

  sub_24B0391CC(v7 + *(v8 + 20), v6, &qword_27EFCCD50, &unk_24B2ECC40);
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {

LABEL_9:
    v24 = v0[28];
    v25 = &qword_27EFCCD50;
    v26 = &unk_24B2ECC40;
LABEL_10:
    sub_24AFF8258(v24, v25, v26);
    sub_24AFF8258(v0[35], &qword_27EFCB280, &qword_24B2F4430);

    v27 = v0[1];

    return v27();
  }

  v32 = v0[32];
  v33 = v0[30];
  v34 = v0[18];
  sub_24B2BF380(v0[28], v32, type metadata accessor for DetailsPersonInfo);
  sub_24B008890(v32 + *(v33 + 28), v34, &qword_27EFCB288, &unk_24B2EBD20);
  v35 = sub_24B2D1944();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
    v37 = v0[18];
    sub_24B2BF3E8(v0[32], type metadata accessor for DetailsPersonInfo);

    v25 = &qword_27EFCB288;
    v26 = &unk_24B2EBD20;
    v24 = v37;
    goto LABEL_10;
  }

  v38 = v0[21];
  v50 = v0[22];
  v51 = v0[32];
  v39 = v0[20];
  v49 = v0[19];
  v40 = v0[18];
  v41 = v0[15];
  v42 = v0[16];
  v43 = v0[13];
  v44 = v0[14];
  sub_24B2D18B4();
  (*(v36 + 8))(v40, v35);
  (*(v39 + 32))(v50, v38, v49);
  v45 = *(v43 + 96);
  (*(v41 + 16))(v42, v51, v44);
  sub_24B2D1F24();
  sub_24B2D1AA4();
  v53 = (v45 + *v45);
  v46 = swift_task_alloc();
  v0[41] = v46;
  *v46 = v0;
  v46[1] = sub_24B29D81C;
  v47 = v0[22];
  v48 = v0[17];

  return v53(v47, v48);
}

uint64_t sub_24B29D418()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 200);
  if (v0)
  {

    sub_24B2BF3E8(v4, type metadata accessor for OpenFindMyAction.Destination);
    v5 = *(v3 + 296);
    v6 = *(v3 + 304);
    v7 = sub_24B2BF7E0;
  }

  else
  {
    sub_24B2BF3E8(v4, type metadata accessor for OpenFindMyAction.Destination);
    v5 = *(v3 + 296);
    v6 = *(v3 + 304);
    v7 = sub_24B29D584;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24B29D584()
{
  v1 = *(v0 + 264);

  sub_24B2BF3E8(v1, type metadata accessor for DetailsPersonInfo);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B29D6B0()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 192);
  if (v0)
  {

    sub_24B2BF3E8(v4, type metadata accessor for OpenFindMyAction.Destination);
    v5 = *(v3 + 296);
    v6 = *(v3 + 304);
    v7 = sub_24B276EE4;
  }

  else
  {
    sub_24B2BF3E8(v4, type metadata accessor for OpenFindMyAction.Destination);
    v5 = *(v3 + 296);
    v6 = *(v3 + 304);
    v7 = sub_24B27324C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24B29D81C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 136);
  if (v0)
  {

    sub_24AFF8258(v4, &qword_27EFCB020, &qword_24B2E71F8);
    v5 = *(v3 + 296);
    v6 = *(v3 + 304);
    v7 = sub_24B2BF7C8;
  }

  else
  {
    sub_24AFF8258(v4, &qword_27EFCB020, &qword_24B2E71F8);
    v5 = *(v3 + 296);
    v6 = *(v3 + 304);
    v7 = sub_24B29D980;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24B29D980()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[22];
  v4 = v0[19];
  v5 = v0[20];

  (*(v5 + 8))(v3, v4);
  sub_24B2BF3E8(v2, type metadata accessor for DetailsPersonInfo);
  sub_24AFF8258(v1, &qword_27EFCB280, &qword_24B2F4430);

  v6 = v0[1];

  return v6();
}

void sub_24B29DAE4(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v8 = v1;
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel, &unk_24B2F552C);
  sub_24B2D2584();

  v3 = *(v1 + 16);
  v4 = *(v8 + 24);
  v5 = *(v8 + 32);
  v6 = *(v8 + 40);
  v7 = *(v8 + 48);
  sub_24B2A0910(v3, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
}

double sub_24B29DBBC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel, &unk_24B2F552C);
  sub_24B2D2584();

  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  v8 = *(v3 + 48);
  *(a2 + 32) = v8;
  return sub_24B2A0910(v4, v5, v6, v7, v8);
}

double sub_24B29DC78(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel, &unk_24B2F552C);
  sub_24B2D2574();

  return result;
}

uint64_t sub_24B29DD54(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  *(a1 + 16) = *a2;
  *(a1 + 32) = v6;
  v7 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 32);
  sub_24B2A0880(a2, v9);
  return sub_24B2A08B8(v2, v3, v4, v5, v7);
}

double sub_24B29DDD4()
{
  swift_getKeyPath();
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel, &unk_24B2F552C);
  sub_24B2D2584();

  return result;
}

double sub_24B29DE80@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel, &unk_24B2F552C);
  sub_24B2D2584();

  *a2 = *(v3 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__listController);

  return result;
}

double sub_24B29DF34(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__listController) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel, &unk_24B2F552C);
    sub_24B2D2574();
  }

  return result;
}

double sub_24B29E084(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel, &unk_24B2F552C);
  sub_24B2D2584();

  return result;
}

double sub_24B29E128(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__detailsController;
  v3 = *(v1 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__detailsController);
  *(v1 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__detailsController) = a1;

  if (v3)
  {
    PersonDetailsController.onDisappear()();
  }

  swift_getKeyPath();
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel, &unk_24B2F552C);
  sub_24B2D2584();

  if (*(v1 + v2))
  {

    PersonDetailsController.onAppear()();
  }

  return result;
}

double sub_24B29E224@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel, &unk_24B2F552C);
  sub_24B2D2584();

  *a2 = *(v3 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__detailsController);

  return result;
}

double sub_24B29E2D8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel, &unk_24B2F552C);
  sub_24B2D2574();

  return result;
}

uint64_t sub_24B29E3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = v5;
  v41 = a4;
  v48 = a3;
  v42 = a2;
  v40 = a1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF500, &qword_24B2F4AC8) - 8;
  MEMORY[0x28223BE20](v47);
  v46 = &v40 - v8;
  v9 = sub_24B2D2504();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a5;
  v13 = a5[1];
  v15 = a5[3];
  v49 = a5[2];
  v43 = v15;
  v16 = *(a5 + 3);
  v58 = *(a5 + 2);
  v59 = v16;
  v17 = a5[9];
  v60 = a5[8];
  v18 = a5[10];
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 2;
  sub_24B2D24F4();
  v19 = sub_24B2D24B4();
  v21 = v20;
  (*(v10 + 8))(v12, v9);
  *(v6 + 144) = v19;
  *(v6 + 152) = v21;
  sub_24B2D3174();
  *(v6 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__detailsController) = 0;
  *(v6 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__fullScreenInteractiveMap) = 0;
  sub_24B2D25B4();
  v22 = v59;
  *(v6 + 88) = v58;
  *(v6 + 56) = v14;
  *(v6 + 64) = v13;
  v23 = v49;
  v24 = v43;
  *(v6 + 72) = v49;
  *(v6 + 80) = v24;
  *(v6 + 104) = v22;
  *(v6 + 120) = v60;
  *(v6 + 128) = v17;
  *(v6 + 136) = v18;
  *&v53 = v14;
  *(&v53 + 1) = v13;
  v54 = v23;
  v55 = v24;
  v56 = v17;
  v57 = v18;
  v45 = type metadata accessor for ListPersonInfo(0);
  v44 = sub_24B2BF448(&qword_27EFCCEE8, type metadata accessor for ListPersonInfo, &protocol conformance descriptor for ListPersonInfo);
  sub_24B2BF448(&qword_27EFCCEF0, type metadata accessor for ListPersonInfo, &protocol conformance descriptor for ListPersonInfo);
  sub_24B2BF448(&qword_27EFCCEF8, type metadata accessor for ListPersonInfo, &protocol conformance descriptor for ListPersonInfo);
  sub_24B2BF448(&qword_27EFCCF00, type metadata accessor for ListPersonInfo, &protocol conformance descriptor for ListPersonInfo);
  v25 = sub_24B2BF448(&qword_27EFCCF08, type metadata accessor for ListPersonInfo, &protocol conformance descriptor for ListPersonInfo);
  sub_24B2A0804(v25, v26, v27);

  v28 = v46;
  sub_24B2D19C4();
  *(v28 + *(v47 + 44)) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF858, &qword_24B2F55F8);
  swift_allocObject();
  v29 = sub_24B26E264(v28, &v53);
  v30 = OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__listController;
  *(v6 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__listController) = v29;
  swift_getKeyPath();
  v51[0] = v6;
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel, &unk_24B2F552C);
  sub_24B2D2584();

  v31 = *(v6 + v30);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = (v31 + *(*v31 + 152));
  swift_beginAccess();
  v34 = *v33;
  v35 = v33[1];
  *v33 = sub_24B2BEDD4;
  v33[1] = v32;

  v36 = v35;
  v37 = v48;
  sub_24AFD5890(v34, v36);

  if (v37)
  {
    v51[0] = v40;
    v51[1] = v42;
    v51[2] = v37;
    v51[3] = v41;
    v52 = 1;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v40 - 2) = v6;
    *(&v40 - 1) = v51;
    v50 = v6;
    sub_24B2D2574();
  }

  return v6;
}

double sub_24B29E97C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_24B2D56D4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_24B2D5694();

  v8 = sub_24B2D5684();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  v9[5] = a1;

  sub_24B00B0F0(0, 0, v5, &unk_24B2F5788, v9);

  return result;
}

uint64_t sub_24B29EB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_24B2D5694();
  v5[8] = sub_24B2D5684();
  v7 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B29EBAC, v7, v6);
}

uint64_t sub_24B29EBAC()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_24B29EC54(*(v0 + 56));
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

void sub_24B29EC54(uint64_t a1)
{
  v2 = v1;
  v73 = a1;
  v3 = sub_24B2D2504();
  v70 = *(v3 - 8);
  v71 = v3;
  MEMORY[0x28223BE20](v3);
  v67 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for PersonDetailsController.State(0);
  MEMORY[0x28223BE20](v66);
  v65 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B2D1574();
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x28223BE20](v6);
  v76 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB018, &qword_24B2E71F0);
  MEMORY[0x28223BE20](v8 - 8);
  v72 = &v58 - v9;
  v10 = sub_24B2D1794();
  v74 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF4F8, &qword_24B2F4CA0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v58 - v14;
  v16 = sub_24B2D15F4();
  v75 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v19 = OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel___observationRegistrar;
  v77 = v1;
  v20 = sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel, &unk_24B2F552C);
  sub_24B2D2584();

  if (!*(v1 + 48))
  {
    v63 = v12;
    v64 = v15;
    v22 = v75;
    v21 = v76;
    v62 = v18;
    swift_getKeyPath();
    v77 = v1;
    v61 = v20;
    sub_24B2D2584();

    if (*(v1 + 48) >= 2u)
    {
      v30 = v64;
      (*(v22 + 56))(v64, 1, 1, v16);
LABEL_11:
      sub_24AFF8258(v30, &qword_27EFCF4F8, &qword_24B2F4CA0);
      return;
    }

    v23 = v19;
    v60 = v10;
    v24 = *(*(v1 + 32) + 16);
    if (v24 < 2)
    {
      v31 = v21;
      if (v24)
      {
        sub_24B2D1494();

        v32 = sub_24B2D1484();
        v30 = v64;
        sub_24B2D5A64();

        v27 = v60;
        v28 = v16;
        v25 = v22;
      }

      else
      {
        v25 = v22;
        v30 = v64;
        v28 = v16;
        (*(v22 + 56))(v64, 1, 1, v16);

        v27 = v60;
      }

      v29 = v31;
    }

    else
    {
      v25 = v22;
      v26 = v64;
      (*(v22 + 56))(v64, 1, 1, v16);

      v27 = v60;
      v28 = v16;
      v29 = v21;
      v30 = v26;
    }

    v33 = (*(v25 + 48))(v30, 1, v28);
    v34 = v63;
    if (v33 == 1)
    {
      goto LABEL_11;
    }

    v35 = v25;
    v36 = v62;
    (*(v25 + 32))(v62, v30, v28);
    swift_getKeyPath();
    v77 = v2;
    sub_24B2D2584();

    if (*(v2 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__detailsController))
    {
      goto LABEL_15;
    }

    v76 = v23;
    MEMORY[0x28223BE20](v37);
    *(&v58 - 2) = v36;
    v38 = v72;
    sub_24B26E064(sub_24B2BEE9C, v73, v72);
    v39 = v74;
    if ((*(v74 + 48))(v38, 1, v27) == 1)
    {
      sub_24AFF8258(v38, &qword_27EFCB018, &qword_24B2E71F0);
LABEL_15:
      (*(v35 + 8))(v36, v28);
      return;
    }

    v75 = 0;
    (*(v39 + 32))(v34, v38, v27);
    _s12FindMyUICore17DetailsPersonInfoV2id0aB4Core0E5ModelV16UniqueIdentifierVvg_0();
    v40 = v2[8];
    v42 = v2[9];
    v41 = v2[10];
    v43 = v2[11];
    v44 = qword_27EFC76D0;
    v73 = v2[7];

    v72 = v40;

    v64 = v42;

    v59 = v41;
    v45 = v43;

    v46 = v29;
    if (v44 != -1)
    {
      swift_once();
    }

    v47 = __swift_project_value_buffer(v66, qword_27EFCCDA0);
    v48 = v65;
    sub_24B2BF490(v47, v65, type metadata accessor for PersonDetailsController.State);
    type metadata accessor for PersonDetailsController(0);
    v49 = swift_allocObject();
    v50 = v67;
    sub_24B2D24F4();
    v51 = sub_24B2D24B4();
    v53 = v52;
    (*(v70 + 8))(v50, v71);
    *(v49 + 16) = v51;
    *(v49 + 24) = v53;
    sub_24B2D3174();
    *(v49 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController__observationTask) = 0;
    *(v49 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_isAutomaticSubscriptionsForwardingEnabled) = 0;
    sub_24B2D25B4();
    (*(v68 + 32))(v49 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_personIdentifier, v46, v69);
    sub_24B2BF380(v48, v49 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController__state, type metadata accessor for PersonDetailsController.State);
    v54 = (v49 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_dependencies);
    v55 = v72;
    *v54 = v73;
    v54[1] = v55;
    v56 = v59;
    v54[2] = v64;
    v54[3] = v56;
    v54[4] = v45;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v58 - 2) = v2;
    *(&v58 - 1) = v49;
    v77 = v2;
    sub_24B2D2574();

    (*(v74 + 8))(v63, v60);
    (*(v35 + 8))(v62, v28);
  }
}

uint64_t sub_24B29F5A4@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF4F8, &qword_24B2F4CA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v31 - v4;
  v6 = sub_24B2D15F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v40 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_24B2D1494();
  v10 = MEMORY[0x28223BE20](v39);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (v13)
  {
    v15 = *(v9 + 16);
    v14 = v9 + 16;
    v16 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v37 = *(v14 + 56);
    v38 = v15;
    v17 = (v7 + 48);
    v33 = v7;
    v35 = (v7 + 32);
    v36 = (v14 - 8);
    v18 = MEMORY[0x277D84F90];
    v34 = v6;
    do
    {
      v19 = v39;
      v20 = v14;
      v38(v12, v16, v39, v10);
      v21 = sub_24B2D1484();
      sub_24B2D5A64();

      (*v36)(v12, v19);
      if ((*v17)(v5, 1, v6) == 1)
      {
        sub_24AFF8258(v5, &qword_27EFCF4F8, &qword_24B2F4CA0);
      }

      else
      {
        v22 = *v35;
        (*v35)(v40, v5, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_24B006880(0, v18[2] + 1, 1, v18);
        }

        v24 = v18[2];
        v23 = v18[3];
        if (v24 >= v23 >> 1)
        {
          v18 = sub_24B006880((v23 > 1), v24 + 1, 1, v18);
        }

        v18[2] = v24 + 1;
        v25 = v18 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v24;
        v6 = v34;
        v22(v25, v40, v34);
      }

      v16 += v37;
      --v13;
      v14 = v20;
    }

    while (v13);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v26 = sub_24B1D0160(v18);

  v27 = v32;
  *v32 = v26;
  v28 = *MEMORY[0x277D08B88];
  v29 = sub_24B2D1654();
  return (*(*(v29 - 8) + 104))(v27, v28, v29);
}

uint64_t sub_24B29F940(uint64_t a1, uint64_t a2)
{
  v3 = sub_24B2D15F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D1724();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8020, &qword_24B2DFC80);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24B2DE430;
  (*(v4 + 16))(v8 + v7, a2, v3);
  sub_24B137C44(v8);
  swift_setDeallocating();
  v9 = *(v4 + 8);
  v9(v8 + v7, v3);
  swift_deallocClassInstance();
  LOBYTE(v8) = sub_24B2D15E4();

  v9(v6, v3);

  return v8 & 1;
}

uint64_t sub_24B29FB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = type metadata accessor for OpenFindMyAction.Destination(0);
  v4[5] = swift_task_alloc();
  sub_24B2D5694();
  v4[6] = sub_24B2D5684();
  v6 = sub_24B2D5604();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_24B29FC0C, v6, v5);
}

uint64_t sub_24B29FC0C()
{
  v1 = *(v0[3] + 112);
  swift_storeEnumTagMultiPayload();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_24B29FD10;
  v3 = v0[5];

  return v5(v3);
}

uint64_t sub_24B29FD10()
{
  v2 = *v1;
  v2[10] = v0;

  v3 = v2[5];
  if (v0)
  {

    sub_24B2BF3E8(v3, type metadata accessor for OpenFindMyAction.Destination);
    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_24B2BF7D0;
  }

  else
  {
    sub_24B2BF3E8(v3, type metadata accessor for OpenFindMyAction.Destination);
    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_24B29FE80;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_24B29FE80()
{
  v1 = v0[10];
  v2 = v0[2];

  *v2 = v1 != 0;

  v3 = v0[1];

  return v3();
}

uint64_t sub_24B29FF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = type metadata accessor for OpenFindMyAction.Destination(0);
  v5[6] = swift_task_alloc();
  sub_24B2D5694();
  v5[7] = sub_24B2D5684();
  v7 = sub_24B2D5604();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x2822009F8](sub_24B29FFD0, v7, v6);
}

uint64_t sub_24B29FFD0()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = *(v0[3] + 112);
  v4 = sub_24B2D15F4();
  (*(*(v4 - 8) + 16))(v1, v2, v4);
  swift_storeEnumTagMultiPayload();
  v8 = (v3 + *v3);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_24B2A0124;
  v6 = v0[6];

  return v8(v6);
}

uint64_t sub_24B2A0124()
{
  v2 = *v1;
  v2[11] = v0;

  v3 = v2[6];
  if (v0)
  {

    sub_24B2BF3E8(v3, type metadata accessor for OpenFindMyAction.Destination);
    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_24B2BF7D4;
  }

  else
  {
    sub_24B2BF3E8(v3, type metadata accessor for OpenFindMyAction.Destination);
    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_24B2A0294;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_24B2A0294()
{
  v1 = v0[11];
  v2 = v0[2];

  *v2 = v1 != 0;

  v3 = v0[1];

  return v3();
}

uint64_t sub_24B2A0318()
{
  sub_24B2A08B8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  v1 = OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel_logger;
  v2 = sub_24B2D3184();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel___observationRegistrar;
  v4 = sub_24B2D25C4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_24B2A046C()
{
  sub_24B2A0318();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EmbeddedPeopleSummaryMapViewModel(uint64_t a1)
{
  result = qword_27EFCF820;
  if (!qword_27EFCF820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B2A0518(uint64_t a1)
{
  result = sub_24B2D3184();
  if (v2 <= 0x3F)
  {
    result = sub_24B2D25C4();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12FindMyUICore33EmbeddedPeopleSummaryMapViewModelC5State33_0E35A95CF2CF42A4B880F844CAB075F4LLO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24B2A0648(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_24B2A0690(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_24B2A06D8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_24B2A074C(uint64_t a1)
{
  *(a1 + 8) = sub_24B2BF448(&qword_27EFCF838, type metadata accessor for EmbeddedPeopleSummaryMapViewModel, &unk_24B2F54D0);
  result = sub_24B2BF448(&qword_27EFCF840, type metadata accessor for EmbeddedPeopleSummaryMapViewModel, &unk_24B2F5470);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24B2A0804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCF848;
  if (!qword_27EFCF848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF848);
  }

  return result;
}

uint64_t sub_24B2A0858()
{
  result = sub_24B134048(&unk_285E482A8);
  qword_27EFE4640 = result;
  return result;
}

uint64_t sub_24B2A08B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
  }

  return result;
}

double sub_24B2A0910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
  }

  return result;
}

void sub_24B2A0968()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__listController) = *(v0 + 24);
}

uint64_t sub_24B2A09AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D1704();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SettingsContactsProvider.Subscription(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D60E4();
  sub_24B2BF490(a1, v11, type metadata accessor for SettingsContactsProvider.Subscription);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x24C23C8D0](1);
    sub_24B2D5404();
  }

  else
  {
    (*(v5 + 32))(v7, v11, v4);
    MEMORY[0x24C23C8D0](0);
    sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
    sub_24B2D5254();
    (*(v5 + 8))(v7, v4);
  }

  sub_24B2D6124();
  v12 = sub_24B2D5B74();
  *(a2 + 56 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
  result = sub_24B2BF380(a1, *(a2 + 48) + *(v9 + 72) * v12, type metadata accessor for SettingsContactsProvider.Subscription);
  ++*(a2 + 16);
  return result;
}

uint64_t sub_24B2A0C50(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v7 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v53 = *(v16 - 8);
  v54 = v16;
  MEMORY[0x28223BE20](v16);
  v52 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - v19;
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(v56 + 16) == a3)
  {
    return v56;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8E0, &qword_24B2EC1D8);
  result = sub_24B2D5C04();
  v21 = result;
  v50 = v9;
  v51 = v7;
  v48 = v15;
  v49 = v12;
  if (a2 < 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = *a1;
  }

  v24 = 0;
  v25 = result + 56;
  v26 = v52;
  while (v23)
  {
    v27 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
LABEL_16:
    v30 = *(v56 + 48);
    v55 = *(v53 + 72);
    sub_24B2BF490(v30 + v55 * (v27 | (v24 << 6)), v20, _s14descr285E46659O16SubscriptionDataOMa);
    sub_24B2D60E4();
    sub_24B2BF490(v20, v26, _s14descr285E46659O16SubscriptionDataOMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v36 = v26;
        v33 = v49;
        sub_24B2BF380(v36, v49, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
        MEMORY[0x24C23C8D0](3);
        v47 = sub_24B2D1704();
        sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
        sub_24B2D5254();
        v34 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa;
      }

      else
      {
        v32 = v26;
        v33 = v48;
        sub_24B2BF380(v32, v48, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
        MEMORY[0x24C23C8D0](2);
        v47 = sub_24B2D1704();
        sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
        sub_24B2D5254();
        v34 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
      }

      goto LABEL_25;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v35 = v26;
      v33 = v50;
      sub_24B2BF380(v35, v50, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      MEMORY[0x24C23C8D0](4);
      v47 = sub_24B2D1704();
      sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
      sub_24B2D5254();
      sub_24B2D6104();
      v34 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa;
LABEL_25:
      v37 = v33;
      v26 = v52;
      sub_24B2BF3E8(v37, v34);
      goto LABEL_26;
    }

    if (EnumCaseMultiPayload == 3)
    {
      MEMORY[0x24C23C8D0](0);
    }

    else
    {
      MEMORY[0x24C23C8D0](1);
    }

LABEL_26:
    result = sub_24B2D6124();
    v38 = -1 << *(v21 + 32);
    v39 = result & ~v38;
    v40 = v39 >> 6;
    if (((-1 << v39) & ~*(v25 + 8 * (v39 >> 6))) == 0)
    {
      v42 = 0;
      v43 = (63 - v38) >> 6;
      while (++v40 != v43 || (v42 & 1) == 0)
      {
        v44 = v40 == v43;
        if (v40 == v43)
        {
          v40 = 0;
        }

        v42 |= v44;
        v45 = *(v25 + 8 * v40);
        if (v45 != -1)
        {
          v41 = __clz(__rbit64(~v45)) + (v40 << 6);
          goto LABEL_36;
        }
      }

      goto LABEL_41;
    }

    v41 = __clz(__rbit64((-1 << v39) & ~*(v25 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_36:
    *(v25 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
    result = sub_24B2BF380(v20, *(v21 + 48) + v41 * v55, _s14descr285E46659O16SubscriptionDataOMa);
    ++*(v21 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_42;
    }

    if (!a3)
    {
LABEL_38:

      return v21;
    }
  }

  v28 = v24;
  while (1)
  {
    v24 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v24 >= a2)
    {
      goto LABEL_38;
    }

    v29 = a1[v24];
    ++v28;
    if (v29)
    {
      v27 = __clz(__rbit64(v29));
      v23 = (v29 - 1) & v29;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_24B2A1260(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v9 = sub_24B2D14C4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_24B2D15F4();
  v13 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC810, &qword_24B2F5690);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v66 = &v52 - v19;
  v20 = type metadata accessor for ContactsProvider.Subscription(0);
  v64 = *(v20 - 8);
  v65 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v71 = &v52 - v24;
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  v61 = v17;
  v55 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC818, &unk_24B2EC090);
  result = sub_24B2D5C04();
  v25 = result;
  v62 = v9;
  v63 = a4;
  if (a2 < 1)
  {
    v27 = 0;
  }

  else
  {
    v27 = *a1;
  }

  v28 = 0;
  v60 = (v13 + 32);
  v59 = (v10 + 48);
  v54 = (v10 + 32);
  v53 = (v10 + 8);
  v58 = (v13 + 8);
  v29 = result + 56;
  v30 = v71;
  v57 = v22;
  v56 = a1;
  while (v27)
  {
    v31 = __clz(__rbit64(v27));
    v69 = (v27 - 1) & v27;
LABEL_16:
    v34 = *(v63 + 48);
    v70 = *(v64 + 72);
    sub_24B2BF490(v34 + v70 * (v31 | (v28 << 6)), v30, type metadata accessor for ContactsProvider.Subscription);
    sub_24B2D60E4();
    sub_24B2BF490(v30, v22, type metadata accessor for ContactsProvider.Subscription);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      MEMORY[0x24C23C8D0](1);
      sub_24B2D5404();
      v30 = v71;
    }

    else
    {
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820, &unk_24B2EF120) + 48);
      v36 = v66;
      sub_24B0391CC(v22, v66, &qword_27EFCC810, &qword_24B2F5690);
      (*v60)(v67, &v22[v35], v68);
      MEMORY[0x24C23C8D0](0);
      v37 = v61;
      sub_24B008890(v36, v61, &qword_27EFCC810, &qword_24B2F5690);
      v38 = v62;
      if ((*v59)(v37, 1, v62) == 1)
      {
        sub_24B2D6104();
        v30 = v71;
      }

      else
      {
        v39 = v55;
        (*v54)(v55, v37, v38);
        sub_24B2D6104();
        sub_24B2BF448(&qword_27EFCC830, MEMORY[0x277D08B38], MEMORY[0x277D08B40]);
        sub_24B2D5254();
        v40 = v39;
        v30 = v71;
        (*v53)(v40, v38);
      }

      sub_24B2BF448(&qword_27EFCC740, MEMORY[0x277D08B70], MEMORY[0x277D08B78]);
      v41 = v67;
      v42 = v68;
      sub_24B2D5254();
      (*v58)(v41, v42);
      sub_24AFF8258(v66, &qword_27EFCC810, &qword_24B2F5690);
      v22 = v57;
      a1 = v56;
    }

    result = sub_24B2D6124();
    v43 = -1 << *(v25 + 32);
    v44 = result & ~v43;
    v45 = v44 >> 6;
    if (((-1 << v44) & ~*(v29 + 8 * (v44 >> 6))) == 0)
    {
      v47 = 0;
      v48 = (63 - v43) >> 6;
      while (++v45 != v48 || (v47 & 1) == 0)
      {
        v49 = v45 == v48;
        if (v45 == v48)
        {
          v45 = 0;
        }

        v47 |= v49;
        v50 = *(v29 + 8 * v45);
        if (v50 != -1)
        {
          v46 = __clz(__rbit64(~v50)) + (v45 << 6);
          goto LABEL_32;
        }
      }

      goto LABEL_37;
    }

    v46 = __clz(__rbit64((-1 << v44) & ~*(v29 + 8 * (v44 >> 6)))) | v44 & 0x7FFFFFFFFFFFFFC0;
LABEL_32:
    *(v29 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
    result = sub_24B2BF380(v30, *(v25 + 48) + v46 * v70, type metadata accessor for ContactsProvider.Subscription);
    ++*(v25 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_38;
    }

    v27 = v69;
    if (!a3)
    {
LABEL_34:

      return v25;
    }
  }

  v32 = v28;
  while (1)
  {
    v28 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v28 >= a2)
    {
      goto LABEL_34;
    }

    v33 = a1[v28];
    ++v32;
    if (v33)
    {
      v31 = __clz(__rbit64(v33));
      v69 = (v33 - 1) & v33;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_24B2A196C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7E0, &qword_24B2EC048);
  result = sub_24B2D5C04();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_16:
    v19 = *(a4 + 48);
    v33 = *(v31 + 72);
    sub_24B2BF490(v19 + v33 * (v16 | (v14 << 6)), v10, type metadata accessor for PeopleLocationsProvider.Subscription);
    sub_24B2D60E4();
    sub_24B2D1574();
    sub_24B2BF448(&qword_27EFCC6C0, MEMORY[0x277D08B50], MEMORY[0x277D08B58]);
    sub_24B2D5254();
    sub_24B2D5404();

    result = sub_24B2D6124();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      a4 = v30;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
    a4 = v30;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = sub_24B2BF380(v10, *(v11 + 48) + v23 * v33, type metadata accessor for PeopleLocationsProvider.Subscription);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v13 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24B2A1CDC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24B2D1574();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PeopleProvider.Subscription(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v45 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v48 = &v39 - v16;
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  v44 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7F8, &unk_24B2EC070);
  result = sub_24B2D5C04();
  v17 = result;
  v41 = v11;
  if (a2 < 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = *a1;
  }

  v20 = 0;
  v42 = a4;
  v43 = (v9 + 48);
  v39 = (v9 + 8);
  v40 = (v9 + 32);
  v21 = result + 56;
  v22 = v45;
  while (v19)
  {
    v23 = __clz(__rbit64(v19));
    v46 = (v19 - 1) & v19;
LABEL_16:
    v26 = *(a4 + 48);
    v47 = *(v13 + 72);
    v27 = v48;
    sub_24B2BF490(v26 + v47 * (v23 | (v20 << 6)), v48, type metadata accessor for PeopleProvider.Subscription);
    sub_24B2D60E4();
    sub_24B2BF490(v27, v22, type metadata accessor for PeopleProvider.Subscription);
    v28 = v44;
    if ((*v43)(v22, 1, v44) == 1)
    {
      MEMORY[0x24C23C8D0](0);
    }

    else
    {
      v29 = v41;
      (*v40)(v41, v22, v28);
      MEMORY[0x24C23C8D0](1);
      sub_24B2BF448(&qword_27EFCC6C0, MEMORY[0x277D08B50], MEMORY[0x277D08B58]);
      sub_24B2D5254();
      v22 = v45;
      (*v39)(v29, v28);
    }

    result = sub_24B2D6124();
    v30 = -1 << *(v17 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
    {
      v34 = 0;
      v35 = (63 - v30) >> 6;
      while (++v32 != v35 || (v34 & 1) == 0)
      {
        v36 = v32 == v35;
        if (v32 == v35)
        {
          v32 = 0;
        }

        v34 |= v36;
        v37 = *(v21 + 8 * v32);
        if (v37 != -1)
        {
          v33 = __clz(__rbit64(~v37)) + (v32 << 6);
          goto LABEL_29;
        }
      }

      goto LABEL_34;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    *(v21 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    result = sub_24B2BF380(v48, *(v17 + 48) + v33 * v47, type metadata accessor for PeopleProvider.Subscription);
    ++*(v17 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_35;
    }

    a4 = v42;
    v19 = v46;
    if (!a3)
    {
LABEL_31:

      return v17;
    }
  }

  v24 = v20;
  while (1)
  {
    v20 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v20 >= a2)
    {
      goto LABEL_31;
    }

    v25 = a1[v20];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v46 = (v25 - 1) & v25;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_24B2A2154(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE140, &qword_24B2F5830);
  result = sub_24B2D5C04();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_16:
    v19 = *(a4 + 48);
    v33 = *(v31 + 72);
    sub_24B2BF490(v19 + v33 * (v16 | (v14 << 6)), v10, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
    sub_24B2D60E4();
    sub_24B2D1704();
    sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
    sub_24B2D5254();
    sub_24B2D6104();
    result = sub_24B2D6124();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      a4 = v30;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
    a4 = v30;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = sub_24B2BF380(v10, *(v11 + 48) + v23 * v33, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v13 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24B2A2488(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE138, &qword_24B2F5820);
  result = sub_24B2D5C04();
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
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_24B2D5A24();
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
    *(*(v9 + 48) + 8 * v20) = v16;
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

uint64_t sub_24B2A267C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ItemsLocationsProvider.Subscription(0);
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  v31 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE128, &qword_24B2F57C0);
  result = sub_24B2D5C04();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v15 = v31;
  v30 = a4;
  while (v12)
  {
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v19 = *(a4 + 48);
    v20 = *(v32 + 72);
    sub_24B2BF490(v19 + v20 * (v16 | (v13 << 6)), v15, type metadata accessor for ItemsLocationsProvider.Subscription);
    sub_24B2D60E4();
    sub_24B2D1DA4();
    sub_24B2BF448(&qword_27EFCC630, MEMORY[0x277D08E20], MEMORY[0x277D08E28]);
    sub_24B2D5254();
    sub_24B2D5404();
    result = sub_24B2D6124();
    v21 = -1 << *(v10 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      v15 = v31;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v14 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
    v15 = v31;
LABEL_26:
    *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = sub_24B2BF380(v15, *(v10 + 48) + v24 * v20, type metadata accessor for ItemsLocationsProvider.Subscription);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v30;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v17 = v13;
  while (1)
  {
    v13 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v13];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v12 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24B2A29B4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24B2D1DA4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ItemsProvider.Subscription(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v45 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v48 = &v39 - v16;
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  v44 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC860, &unk_24B2EC100);
  result = sub_24B2D5C04();
  v17 = result;
  v41 = v11;
  if (a2 < 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = *a1;
  }

  v20 = 0;
  v42 = a4;
  v43 = (v9 + 48);
  v39 = (v9 + 8);
  v40 = (v9 + 32);
  v21 = result + 56;
  v22 = v45;
  while (v19)
  {
    v23 = __clz(__rbit64(v19));
    v46 = (v19 - 1) & v19;
LABEL_16:
    v26 = *(a4 + 48);
    v47 = *(v13 + 72);
    v27 = v48;
    sub_24B2BF490(v26 + v47 * (v23 | (v20 << 6)), v48, type metadata accessor for ItemsProvider.Subscription);
    sub_24B2D60E4();
    sub_24B2BF490(v27, v22, type metadata accessor for ItemsProvider.Subscription);
    v28 = v44;
    if ((*v43)(v22, 1, v44) == 1)
    {
      MEMORY[0x24C23C8D0](0);
    }

    else
    {
      v29 = v41;
      (*v40)(v41, v22, v28);
      MEMORY[0x24C23C8D0](1);
      sub_24B2BF448(&qword_27EFCC630, MEMORY[0x277D08E20], MEMORY[0x277D08E28]);
      sub_24B2D5254();
      v22 = v45;
      (*v39)(v29, v28);
    }

    result = sub_24B2D6124();
    v30 = -1 << *(v17 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
    {
      v34 = 0;
      v35 = (63 - v30) >> 6;
      while (++v32 != v35 || (v34 & 1) == 0)
      {
        v36 = v32 == v35;
        if (v32 == v35)
        {
          v32 = 0;
        }

        v34 |= v36;
        v37 = *(v21 + 8 * v32);
        if (v37 != -1)
        {
          v33 = __clz(__rbit64(~v37)) + (v32 << 6);
          goto LABEL_29;
        }
      }

      goto LABEL_34;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    *(v21 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    result = sub_24B2BF380(v48, *(v17 + 48) + v33 * v47, type metadata accessor for ItemsProvider.Subscription);
    ++*(v17 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_35;
    }

    a4 = v42;
    v19 = v46;
    if (!a3)
    {
LABEL_31:

      return v17;
    }
  }

  v24 = v20;
  while (1)
  {
    v20 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v20 >= a2)
    {
      goto LABEL_31;
    }

    v25 = a1[v20];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v46 = (v25 - 1) & v25;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_24B2A2E2C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SettingsContactsProvider.Subscription(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE0C0, &qword_24B2EFE28);
  result = sub_24B2D5C04();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_16:
    sub_24B2BF490(*(a4 + 48) + *(v9 + 72) * (v16 | (v15 << 6)), v11, type metadata accessor for SettingsContactsProvider.Subscription);
    result = sub_24B2A09AC(v11, v12);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    if (!a3)
    {
LABEL_18:

      return v12;
    }
  }

  v17 = v15;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_18;
    }

    v18 = a1[v15];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v14 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_24B2A2FF4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7A0, &unk_24B2EC010);
  result = sub_24B2D5C04();
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
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_24B2D60E4();
    MEMORY[0x24C23C8D0](0);
    sub_24B2D6104();
    result = sub_24B2D6124();
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
    *(*(v9 + 48) + v20) = v16;
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

uint64_t sub_24B2A3208(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v8 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
  v41 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v40 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v44 = &v36 - v14;
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7B0, &qword_24B2EC020);
  result = sub_24B2D5C04();
  v15 = result;
  v37 = v10;
  if (a2 < 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = *a1;
  }

  v18 = 0;
  v38 = a4;
  v39 = (v8 + 48);
  v19 = result + 56;
  v20 = v40;
  while (v17)
  {
    v21 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_16:
    v24 = *(a4 + 48);
    v43 = *(v41 + 72);
    v25 = v44;
    sub_24B2BF490(v24 + v43 * (v21 | (v18 << 6)), v44, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    sub_24B2D60E4();
    sub_24B2BF490(v25, v20, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    if ((*v39)(v20, 1, v42) == 1)
    {
      MEMORY[0x24C23C8D0](0);
    }

    else
    {
      v26 = v37;
      sub_24B2BF380(v20, v37, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
      MEMORY[0x24C23C8D0](1);
      sub_24B2D1704();
      sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
      v20 = v40;
      sub_24B2D5254();
      sub_24B2BF3E8(v26, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    }

    result = sub_24B2D6124();
    v27 = -1 << *(v15 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v19 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_29;
        }
      }

      goto LABEL_34;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    *(v19 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    result = sub_24B2BF380(v44, *(v15 + 48) + v30 * v43, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    ++*(v15 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_35;
    }

    a4 = v38;
    if (!a3)
    {
LABEL_31:

      return v15;
    }
  }

  v22 = v18;
  while (1)
  {
    v18 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v18 >= a2)
    {
      goto LABEL_31;
    }

    v23 = a1[v18];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v17 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_24B2A366C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x277D84FA0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_24B2D5C04();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
LABEL_15:
    sub_24B2D60E4();
    MEMORY[0x24C23C8D0](0);
    result = sub_24B2D6124();
    v16 = -1 << *(v11 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v14 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_29;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_30;
    }

    v12 &= v12 - 1;
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_6;
    }

    v12 = a1[v15];
    ++v13;
    if (v12)
    {
      v13 = v15;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void sub_24B2A383C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF8A0, &qword_24B2F5838);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_24B2BF490(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      sub_24B2B8228(v9, v5);
      sub_24B2BF3E8(v9, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      sub_24AFF8258(v5, &qword_27EFCF8A0, &qword_24B2F5838);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_24B2A3A44(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF898, &qword_24B2F5828);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_24B2BF490(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, _s14descr285E46659O16SubscriptionDataOMa);
      sub_24B2B8524(v9, v5);
      sub_24B2BF3E8(v9, _s14descr285E46659O16SubscriptionDataOMa);
      sub_24AFF8258(v5, &qword_27EFCF898, &qword_24B2F5828);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_24B2A3C64(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC84B0, &qword_24B2E09E8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for ContactsProvider.Subscription(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_24B2BF490(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, type metadata accessor for ContactsProvider.Subscription);
      sub_24B2B8758(v9, v5);
      sub_24B2BF3E8(v9, type metadata accessor for ContactsProvider.Subscription);
      sub_24AFF8258(v5, &qword_27EFC84B0, &qword_24B2E09E8);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_24B2A3E6C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC84A8, &unk_24B2F5660);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_24B2BF490(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, type metadata accessor for PeopleLocationsProvider.Subscription);
      sub_24B2B898C(v9, v5);
      sub_24B2BF3E8(v9, type metadata accessor for PeopleLocationsProvider.Subscription);
      sub_24AFF8258(v5, &qword_27EFC84A8, &unk_24B2F5660);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_24B2A4074(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85C8, &qword_24B2E0A78);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for PeopleProvider.Subscription(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_24B2BF490(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, type metadata accessor for PeopleProvider.Subscription);
      sub_24B2B8DC4(v9, v5);
      sub_24B2BF3E8(v9, type metadata accessor for PeopleProvider.Subscription);
      sub_24AFF8258(v5, &qword_27EFC85C8, &qword_24B2E0A78);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_24B2A427C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85D0, &qword_24B2E0A80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for ItemsLocationsProvider.Subscription(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_24B2BF490(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, type metadata accessor for ItemsLocationsProvider.Subscription);
      sub_24B2B9564(v9, v5);
      sub_24B2BF3E8(v9, type metadata accessor for ItemsLocationsProvider.Subscription);
      sub_24AFF8258(v5, &qword_27EFC85D0, &qword_24B2E0A80);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_24B2A4484(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85E0, &qword_24B2F5800);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for ItemsProvider.Subscription(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_24B2BF490(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, type metadata accessor for ItemsProvider.Subscription);
      sub_24B2B98B4(v9, v5);
      sub_24B2BF3E8(v9, type metadata accessor for ItemsProvider.Subscription);
      sub_24AFF8258(v5, &qword_27EFC85E0, &qword_24B2F5800);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_24B2A468C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85B8, &qword_24B2F15B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for SettingsContactsProvider.Subscription(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_24B2BF490(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, type metadata accessor for SettingsContactsProvider.Subscription);
      sub_24B2BA054(v9, v5);
      sub_24B2BF3E8(v9, type metadata accessor for SettingsContactsProvider.Subscription);
      sub_24AFF8258(v5, &qword_27EFC85B8, &qword_24B2F15B0);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_24B2A4894(uint64_t a1)
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

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        sub_24B2BA758(*(*(a1 + 48) + (v10 | (v9 << 6))), &v11);
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

void sub_24B2A4998(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85C0, &unk_24B2F5790);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_24B2BF490(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      sub_24B2BA874(v9, v5);
      sub_24B2BF3E8(v9, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      sub_24AFF8258(v5, &qword_27EFC85C0, &unk_24B2F5790);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_24B2A4BB8(uint64_t a1, void (*a2)(void))
{
  v3 = *v2;
  if (*(*v2 + 16))
  {
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

    v9 = 0;
    v10 = v3 + 56;
    if (!v7)
    {
      goto LABEL_8;
    }

    do
    {
LABEL_6:
      while (1)
      {
        v7 &= v7 - 1;
        sub_24B2D60E4();
        MEMORY[0x24C23C8D0](0);
        v11 = sub_24B2D6124() & ~(-1 << *(v3 + 32));
        if ((*(v10 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
        {
          break;
        }

        if (!v7)
        {
          goto LABEL_8;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v15;
      if (!isUniquelyReferenced_nonNull_native)
      {
        a2();
      }

      sub_24B2BDB5C(v11);
      v3 = v16;
      *v15 = v16;
      v10 = v16 + 56;
    }

    while (v7);
    while (1)
    {
LABEL_8:
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        return;
      }

      if (v12 >= v8)
      {
        break;
      }

      v7 = *(v4 + 8 * v12);
      ++v9;
      if (v7)
      {
        v9 = v12;
        goto LABEL_6;
      }
    }
  }
}

uint64_t sub_24B2A4D5C(uint64_t a1, uint64_t a2)
{
  v167[2] = *MEMORY[0x277D85DE8];
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC8650, &qword_24B2EC1D0);
  MEMORY[0x28223BE20](v163);
  v5 = &v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v135 - v7;
  v147 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  MEMORY[0x28223BE20](v147);
  v151 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v137 = &v135 - v11;
  MEMORY[0x28223BE20](v12);
  v142 = &v135 - v13;
  MEMORY[0x28223BE20](v14);
  v135 = &v135 - v15;
  v16 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa(0);
  MEMORY[0x28223BE20](v16 - 8);
  v150 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v141 = &v135 - v19;
  MEMORY[0x28223BE20](v20);
  v139 = &v135 - v21;
  v22 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa(0);
  MEMORY[0x28223BE20](v22 - 8);
  v146 = &v135 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v140 = &v135 - v25;
  MEMORY[0x28223BE20](v26);
  v138 = &v135 - v27;
  v28 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v135 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  MEMORY[0x28223BE20](v33);
  v160 = &v135 - v34;
  MEMORY[0x28223BE20](v35);
  v156 = &v135 - v36;
  MEMORY[0x28223BE20](v37);
  v152 = &v135 - v38;
  MEMORY[0x28223BE20](v39);
  v162 = &v135 - v40;
  MEMORY[0x28223BE20](v41);
  v153 = (&v135 - v42);
  MEMORY[0x28223BE20](v43);
  MEMORY[0x28223BE20](v44);
  v46 = (&v135 - v45);
  MEMORY[0x28223BE20](v47);
  v161 = &v135 - v48;
  MEMORY[0x28223BE20](v49);
  v143 = &v135 - v50;
  MEMORY[0x28223BE20](v51);
  v158 = &v135 - v54;
  if (*(a2 + 16))
  {
    v145 = v53;
    v155 = v52;
    v167[0] = a1;
    v55 = *(a1 + 16);

    v136 = v55;
    if (v55)
    {
      v56 = 0;
      v148 = a1 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
      v57 = *(v29 + 72);
      v165 = a2;
      v166 = v57;
      v164 = (a2 + 56);
      v149 = a1;
      v159 = v31;
      v144 = v46;
      while (1)
      {
        v58 = v56 + 1;
        v167[1] = v56 + 1;
        v59 = v158;
        sub_24B2BF490(v148 + v166 * v56, v158, _s14descr285E46659O16SubscriptionDataOMa);
        sub_24B2D60E4();
        sub_24B2BF490(v59, v143, _s14descr285E46659O16SubscriptionDataOMa);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v154 = v58;
        if (EnumCaseMultiPayload <= 1)
        {
          if (EnumCaseMultiPayload)
          {
            v61 = v139;
            sub_24B2BF380(v143, v139, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
            MEMORY[0x24C23C8D0](3);
            sub_24B2D1704();
            sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
            sub_24B2D5254();
            v62 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa;
          }

          else
          {
            v61 = v138;
            sub_24B2BF380(v143, v138, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
            MEMORY[0x24C23C8D0](2);
            sub_24B2D1704();
            sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
            sub_24B2D5254();
            v62 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
          }

          sub_24B2BF3E8(v61, v62);
          a2 = v165;
        }

        else if (EnumCaseMultiPayload == 2)
        {
          v63 = v135;
          sub_24B2BF380(v143, v135, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
          MEMORY[0x24C23C8D0](4);
          sub_24B2D1704();
          sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
          a2 = v165;
          sub_24B2D5254();
          sub_24B2D6104();
          sub_24B2BF3E8(v63, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
        }

        else if (EnumCaseMultiPayload == 3)
        {
          MEMORY[0x24C23C8D0](0);
        }

        else
        {
          MEMORY[0x24C23C8D0](1);
        }

        v64 = sub_24B2D6124();
        v65 = -1 << *(a2 + 32);
        v66 = v64 & ~v65;
        v67 = v66 >> 6;
        v68 = 1 << v66;
        if (((1 << v66) & v164[v66 >> 6]) != 0)
        {
          break;
        }

LABEL_4:
        sub_24B2BF3E8(v158, _s14descr285E46659O16SubscriptionDataOMa);
        v56 = v154;
        a2 = v165;
        if (v154 == v136)
        {
          goto LABEL_49;
        }
      }

      v157 = ~v65;
      while (1)
      {
        v71 = v161;
        sub_24B2BF490(*(v165 + 48) + v66 * v166, v161, _s14descr285E46659O16SubscriptionDataOMa);
        v72 = *(v163 + 48);
        sub_24B2BF490(v71, v8, _s14descr285E46659O16SubscriptionDataOMa);
        sub_24B2BF490(v158, &v8[v72], _s14descr285E46659O16SubscriptionDataOMa);
        v73 = swift_getEnumCaseMultiPayload();
        if (v73 > 1)
        {
          break;
        }

        if (!v73)
        {
          sub_24B2BF490(v8, v46, _s14descr285E46659O16SubscriptionDataOMa);
          if (!swift_getEnumCaseMultiPayload())
          {
            v86 = v140;
            sub_24B2BF380(&v8[v72], v140, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
            sub_24B2D1704();
            sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8], MEMORY[0x277D08C10]);
            v87 = sub_24B2D52A4();
            sub_24B2BF3E8(v86, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
            sub_24B2BF3E8(v161, _s14descr285E46659O16SubscriptionDataOMa);
            sub_24B2BF3E8(v46, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
            v70 = v159;
            if (v87)
            {
              goto LABEL_46;
            }

            goto LABEL_43;
          }

          sub_24B2BF3E8(v161, _s14descr285E46659O16SubscriptionDataOMa);
          v74 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
          v75 = v46;
LABEL_37:
          sub_24B2BF3E8(v75, v74);
          goto LABEL_19;
        }

        v83 = v145;
        sub_24B2BF490(v8, v145, _s14descr285E46659O16SubscriptionDataOMa);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v84 = v141;
          sub_24B2BF380(&v8[v72], v141, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
          sub_24B2D1704();
          sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8], MEMORY[0x277D08C10]);
          v85 = sub_24B2D52A4();
          sub_24B2BF3E8(v84, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
          sub_24B2BF3E8(v161, _s14descr285E46659O16SubscriptionDataOMa);
          sub_24B2BF3E8(v83, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
          v70 = v159;
          v46 = v144;
          if (v85)
          {
            goto LABEL_46;
          }

LABEL_43:
          sub_24B2BF3E8(v8, _s14descr285E46659O16SubscriptionDataOMa);
          goto LABEL_20;
        }

        sub_24B2BF3E8(v161, _s14descr285E46659O16SubscriptionDataOMa);
        sub_24B2BF3E8(v83, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
        v46 = v144;
LABEL_19:
        sub_24AFF8258(v8, &unk_27EFC8650, &qword_24B2EC1D0);
LABEL_20:
        v66 = (v66 + 1) & v157;
        v67 = v66 >> 6;
        v68 = 1 << v66;
        if ((v164[v66 >> 6] & (1 << v66)) == 0)
        {
          goto LABEL_4;
        }
      }

      if (v73 != 2)
      {
        if (v73 == 3)
        {
          sub_24B2BF3E8(v161, _s14descr285E46659O16SubscriptionDataOMa);
          v69 = swift_getEnumCaseMultiPayload() == 3;
        }

        else
        {
          sub_24B2BF3E8(v161, _s14descr285E46659O16SubscriptionDataOMa);
          v69 = swift_getEnumCaseMultiPayload() == 4;
        }

        v70 = v159;
        if (v69)
        {
          goto LABEL_46;
        }

        goto LABEL_19;
      }

      sub_24B2BF490(v8, v153, _s14descr285E46659O16SubscriptionDataOMa);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v76 = &v8[v72];
        v77 = v142;
        sub_24B2BF380(v76, v142, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
        sub_24B2D1704();
        sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8], MEMORY[0x277D08C10]);
        v78 = sub_24B2D52A4();
        sub_24B2BF3E8(v161, _s14descr285E46659O16SubscriptionDataOMa);
        if (v78)
        {
          v79 = *(v147 + 20);
          v80 = *(v153 + v79);
          v81 = v77;
          v82 = *(v77 + v79);
          sub_24B2BF3E8(v81, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
          v69 = v80 == v82;
          v70 = v159;
          if (v69)
          {
            sub_24B2BF3E8(v153, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
LABEL_46:
            sub_24B2BF3E8(v8, _s14descr285E46659O16SubscriptionDataOMa);
            v88 = sub_24B2BF3E8(v158, _s14descr285E46659O16SubscriptionDataOMa);
            v89 = v165;
            v90 = *(v165 + 32);
            v144 = ((1 << v90) + 63) >> 6;
            v91 = 8 * v144;
            if ((v90 & 0x3Fu) > 0xD)
            {
              goto LABEL_101;
            }

            while (1)
            {
              v145 = &v135;
              MEMORY[0x28223BE20](v88);
              v93 = &v135 - ((v92 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v93, v164, v92);
              v94 = *(v89 + 16);
              v95 = *&v93[8 * v67] & ~v68;
              v153 = v93;
              *&v93[8 * v67] = v95;
              v157 = v94 - 1;
              v96 = v149;
              v67 = v154;
              v158 = *(v149 + 16);
              v66 = v89;
              if (v154 == v158)
              {
LABEL_48:
                a2 = sub_24B2A0C50(v153, v144, v157, v66);
                goto LABEL_49;
              }

              v98 = v156;
LABEL_55:
              if (v67 < *(v96 + 16))
              {
                break;
              }

              __break(1u);
LABEL_100:
              __break(1u);
LABEL_101:
              v131 = v91;

              v132 = v131;
              if (!swift_stdlib_isStackAllocationSafe())
              {
                v133 = swift_slowAlloc();
                memcpy(v133, v164, v132);
                sub_24B2B1CCC(v133, v144, v89, v66, v167);
                a2 = v134;

                MEMORY[0x24C23D530](v133, -1, -1);
                goto LABEL_49;
              }
            }

            v99 = v162;
            sub_24B2BF490(v148 + v67 * v166, v162, _s14descr285E46659O16SubscriptionDataOMa);
            sub_24B2D60E4();
            sub_24B2BF490(v99, v152, _s14descr285E46659O16SubscriptionDataOMa);
            v100 = swift_getEnumCaseMultiPayload();
            v154 = v67;
            if (v100 <= 1)
            {
              if (v100)
              {
                v101 = v139;
                sub_24B2BF380(v152, v139, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
                MEMORY[0x24C23C8D0](3);
                sub_24B2D1704();
                sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
                sub_24B2D5254();
                v102 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa;
              }

              else
              {
                v101 = v138;
                sub_24B2BF380(v152, v138, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
                MEMORY[0x24C23C8D0](2);
                sub_24B2D1704();
                sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
                sub_24B2D5254();
                v102 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
              }

              sub_24B2BF3E8(v101, v102);
              v66 = v165;
            }

            else if (v100 == 2)
            {
              v103 = v137;
              sub_24B2BF380(v152, v137, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
              MEMORY[0x24C23C8D0](4);
              sub_24B2D1704();
              sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
              v66 = v165;
              sub_24B2D5254();
              sub_24B2D6104();
              sub_24B2BF3E8(v103, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
            }

            else if (v100 == 3)
            {
              MEMORY[0x24C23C8D0](0);
            }

            else
            {
              MEMORY[0x24C23C8D0](1);
            }

            v104 = sub_24B2D6124();
            v105 = -1 << *(v66 + 32);
            v89 = v104 & ~v105;
            v68 = v89 >> 6;
            v106 = 1 << v89;
            if (((1 << v89) & v164[v89 >> 6]) == 0)
            {
LABEL_52:
              sub_24B2BF3E8(v162, _s14descr285E46659O16SubscriptionDataOMa);
LABEL_53:
              v96 = v149;
              v67 = v154;
              goto LABEL_54;
            }

            v161 = ~v105;
            while (2)
            {
              sub_24B2BF490(*(v66 + 48) + v89 * v166, v98, _s14descr285E46659O16SubscriptionDataOMa);
              v108 = *(v163 + 48);
              sub_24B2BF490(v98, v5, _s14descr285E46659O16SubscriptionDataOMa);
              sub_24B2BF490(v162, &v5[v108], _s14descr285E46659O16SubscriptionDataOMa);
              v109 = swift_getEnumCaseMultiPayload();
              if (v109 <= 1)
              {
                if (v109)
                {
                  v119 = v28;
                  v120 = v155;
                  sub_24B2BF490(v5, v155, _s14descr285E46659O16SubscriptionDataOMa);
                  v121 = v119;
                  if (swift_getEnumCaseMultiPayload() != 1)
                  {
                    v98 = v156;
                    sub_24B2BF3E8(v156, _s14descr285E46659O16SubscriptionDataOMa);
                    sub_24B2BF3E8(v120, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
                    v66 = v165;
                    v28 = v119;
                    goto LABEL_70;
                  }

                  v122 = v150;
                  sub_24B2BF380(&v5[v108], v150, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
                  sub_24B2D1704();
                  sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8], MEMORY[0x277D08C10]);
                  v123 = sub_24B2D52A4();
                  v124 = v122;
                  v70 = v159;
                  sub_24B2BF3E8(v124, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
                  v98 = v156;
                  sub_24B2BF3E8(v156, _s14descr285E46659O16SubscriptionDataOMa);
                  sub_24B2BF3E8(v120, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
                  v66 = v165;
                  v28 = v121;
                  if (v123)
                  {
                    goto LABEL_95;
                  }

                  goto LABEL_94;
                }

                sub_24B2BF490(v5, v160, _s14descr285E46659O16SubscriptionDataOMa);
                if (!swift_getEnumCaseMultiPayload())
                {
                  v125 = v146;
                  sub_24B2BF380(&v5[v108], v146, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
                  sub_24B2D1704();
                  sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8], MEMORY[0x277D08C10]);
                  v126 = v160;
                  v127 = sub_24B2D52A4();
                  v128 = v125;
                  v70 = v159;
                  sub_24B2BF3E8(v128, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
                  sub_24B2BF3E8(v98, _s14descr285E46659O16SubscriptionDataOMa);
                  sub_24B2BF3E8(v126, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
                  v66 = v165;
                  if (v127)
                  {
                    goto LABEL_95;
                  }

LABEL_94:
                  sub_24B2BF3E8(v5, _s14descr285E46659O16SubscriptionDataOMa);
                  goto LABEL_71;
                }

                sub_24B2BF3E8(v98, _s14descr285E46659O16SubscriptionDataOMa);
                v110 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
                v111 = v160;
              }

              else
              {
                if (v109 != 2)
                {
                  if (v109 == 3)
                  {
                    sub_24B2BF3E8(v98, _s14descr285E46659O16SubscriptionDataOMa);
                    v107 = swift_getEnumCaseMultiPayload() == 3;
                  }

                  else
                  {
                    sub_24B2BF3E8(v98, _s14descr285E46659O16SubscriptionDataOMa);
                    v107 = swift_getEnumCaseMultiPayload() == 4;
                  }

                  v66 = v165;
                  if (v107)
                  {
                    goto LABEL_95;
                  }

LABEL_70:
                  sub_24AFF8258(v5, &unk_27EFC8650, &qword_24B2EC1D0);
LABEL_71:
                  v89 = (v89 + 1) & v161;
                  v68 = v89 >> 6;
                  v106 = 1 << v89;
                  if ((v164[v89 >> 6] & (1 << v89)) == 0)
                  {
                    goto LABEL_52;
                  }

                  continue;
                }

                sub_24B2BF490(v5, v70, _s14descr285E46659O16SubscriptionDataOMa);
                if (swift_getEnumCaseMultiPayload() == 2)
                {
                  v112 = &v5[v108];
                  v113 = v151;
                  sub_24B2BF380(v112, v151, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
                  sub_24B2D1704();
                  sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8], MEMORY[0x277D08C10]);
                  v114 = sub_24B2D52A4();
                  sub_24B2BF3E8(v98, _s14descr285E46659O16SubscriptionDataOMa);
                  if (v114)
                  {
                    v115 = *(v147 + 20);
                    v116 = *(v70 + v115);
                    v117 = v113;
                    v118 = *(v113 + v115);
                    sub_24B2BF3E8(v117, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
                    v69 = v116 == v118;
                    v66 = v165;
                    if (v69)
                    {
                      sub_24B2BF3E8(v70, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
LABEL_95:
                      sub_24B2BF3E8(v5, _s14descr285E46659O16SubscriptionDataOMa);
                      sub_24B2BF3E8(v162, _s14descr285E46659O16SubscriptionDataOMa);
                      v129 = v153[v68];
                      v153[v68] = v129 & ~v106;
                      if ((v129 & v106) == 0)
                      {
                        goto LABEL_53;
                      }

                      v130 = v157 - 1;
                      v96 = v149;
                      v67 = v154;
                      if (__OFSUB__(v157, 1))
                      {
                        goto LABEL_100;
                      }

                      --v157;
                      if (!v130)
                      {

                        a2 = MEMORY[0x277D84FA0];
                        goto LABEL_49;
                      }

LABEL_54:
                      if (++v67 == v158)
                      {
                        goto LABEL_48;
                      }

                      goto LABEL_55;
                    }
                  }

                  else
                  {
                    sub_24B2BF3E8(v113, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
                    v66 = v165;
                  }

                  sub_24B2BF3E8(v70, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
                  goto LABEL_94;
                }

                sub_24B2BF3E8(v98, _s14descr285E46659O16SubscriptionDataOMa);
                v110 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa;
                v111 = v70;
              }

              break;
            }

            sub_24B2BF3E8(v111, v110);
            v66 = v165;
            goto LABEL_70;
          }
        }

        else
        {
          sub_24B2BF3E8(v77, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
        }

        sub_24B2BF3E8(v153, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
        goto LABEL_43;
      }

      sub_24B2BF3E8(v161, _s14descr285E46659O16SubscriptionDataOMa);
      v74 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa;
      v75 = v153;
      goto LABEL_37;
    }

LABEL_49:
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return a2;
}

uint64_t sub_24B2A6758(uint64_t a1, uint64_t a2)
{
  v207 = *MEMORY[0x277D85DE8];
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC8650, &qword_24B2EC1D0);
  MEMORY[0x28223BE20](v198);
  v5 = &v159 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v188 = (&v159 - v7);
  v174 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  MEMORY[0x28223BE20](v174);
  v9 = &v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v165 = &v159 - v11;
  MEMORY[0x28223BE20](v12);
  v164 = &v159 - v13;
  MEMORY[0x28223BE20](v14);
  v160 = &v159 - v15;
  v16 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa(0);
  MEMORY[0x28223BE20](v16 - 8);
  v185 = &v159 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v163 = &v159 - v19;
  MEMORY[0x28223BE20](v20);
  v168 = &v159 - v21;
  v22 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa(0);
  MEMORY[0x28223BE20](v22 - 8);
  v173 = &v159 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v161 = &v159 - v25;
  MEMORY[0x28223BE20](v26);
  v167 = &v159 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF898, &qword_24B2F5828);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v159 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v162 = &v159 - v32;
  v33 = _s14descr285E46659O16SubscriptionDataOMa(0);
  MEMORY[0x28223BE20](v33);
  MEMORY[0x28223BE20](v34);
  v194 = &v159 - v35;
  MEMORY[0x28223BE20](v36);
  MEMORY[0x28223BE20](v37);
  v196 = &v159 - v38;
  MEMORY[0x28223BE20](v39);
  v186 = &v159 - v40;
  MEMORY[0x28223BE20](v41);
  v199 = &v159 - v42;
  MEMORY[0x28223BE20](v43);
  MEMORY[0x28223BE20](&v159 - v44);
  MEMORY[0x28223BE20](v45);
  v47 = &v159 - v46;
  MEMORY[0x28223BE20](v48);
  v197 = &v159 - v49;
  MEMORY[0x28223BE20](v50);
  v169 = &v159 - v51;
  MEMORY[0x28223BE20](v52);
  v193 = &v159 - v58;
  v201 = a2;
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v171 = v54;
  v172 = v53;
  v191 = v56;
  v192 = v55;
  v175 = v30;
  v184 = v9;
  v159 = 0;
  v60 = a1 + 56;
  v59 = *(a1 + 56);
  v61 = -1 << *(a1 + 32);
  v183 = ~v61;
  if (-v61 < 64)
  {
    v62 = ~(-1 << -v61);
  }

  else
  {
    v62 = -1;
  }

  v200 = v62 & v59;
  v176 = (63 - v61) >> 6;
  v182 = (v57 + 56);
  v166 = v57;
  v181 = (v57 + 48);
  v195 = (v201 + 56);

  v64 = 0;
  v179 = a1 + 56;
  v180 = a1;
  v170 = v47;
  while (1)
  {
    v65 = v200;
    v66 = v64;
    if (v200)
    {
LABEL_15:
      v70 = a1;
      v71 = (v65 - 1) & v65;
      v72 = v162;
      sub_24B2BF490(*(v70 + 48) + *(v166 + 72) * (__clz(__rbit64(v65)) | (v66 << 6)), v162, _s14descr285E46659O16SubscriptionDataOMa);
      v73 = 0;
    }

    else
    {
      if (v176 <= (v64 + 1))
      {
        v67 = v64 + 1;
      }

      else
      {
        v67 = v176;
      }

      v68 = v67 - 1;
      v69 = v64;
      while (1)
      {
        v66 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          goto LABEL_120;
        }

        if (v66 >= v176)
        {
          break;
        }

        v65 = *(v60 + 8 * v66);
        ++v69;
        if (v65)
        {
          goto LABEL_15;
        }
      }

      v70 = a1;
      v71 = 0;
      v73 = 1;
      v66 = v68;
      v72 = v162;
    }

    v178 = *v182;
    v178(v72, v73, 1, v33);
    v202 = v70;
    v203 = v60;
    v204 = v183;
    v205 = v66;
    v190 = v71;
    v206 = v71;
    v177 = *v181;
    if (v177(v72, 1, v33) == 1)
    {
      sub_24AFF8258(v72, &qword_27EFCF898, &qword_24B2F5828);
      v105 = v180;
      goto LABEL_117;
    }

    v74 = v193;
    sub_24B2BF380(v72, v193, _s14descr285E46659O16SubscriptionDataOMa);
    sub_24B2D60E4();
    sub_24B2BF490(v74, v169, _s14descr285E46659O16SubscriptionDataOMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v189 = v66;
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v76 = v168;
        sub_24B2BF380(v169, v168, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
        MEMORY[0x24C23C8D0](3);
        sub_24B2D1704();
        sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
        sub_24B2D5254();
        v77 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa;
      }

      else
      {
        v76 = v167;
        sub_24B2BF380(v169, v167, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
        MEMORY[0x24C23C8D0](2);
        sub_24B2D1704();
        sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
        sub_24B2D5254();
        v77 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
      }

      goto LABEL_26;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v76 = v160;
      sub_24B2BF380(v169, v160, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      MEMORY[0x24C23C8D0](4);
      sub_24B2D1704();
      sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
      sub_24B2D5254();
      sub_24B2D6104();
      v77 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa;
LABEL_26:
      sub_24B2BF3E8(v76, v77);
      goto LABEL_27;
    }

    if (EnumCaseMultiPayload == 3)
    {
      MEMORY[0x24C23C8D0](0);
    }

    else
    {
      MEMORY[0x24C23C8D0](1);
    }

LABEL_27:
    v78 = sub_24B2D6124();
    v79 = -1 << *(v201 + 32);
    v64 = v78 & ~v79;
    v60 = v64 >> 6;
    v66 = 1 << v64;
    if (((1 << v64) & v195[v64 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_24B2BF3E8(v193, _s14descr285E46659O16SubscriptionDataOMa);
    v64 = v189;
    v200 = v190;
    v60 = v179;
    a1 = v180;
  }

  v187 = ~v79;
  v200 = *(v166 + 72);
  while (1)
  {
    v81 = v197;
    sub_24B2BF490(*(v201 + 48) + v200 * v64, v197, _s14descr285E46659O16SubscriptionDataOMa);
    v82 = *(v198 + 48);
    v83 = v81;
    v84 = v188;
    sub_24B2BF490(v83, v188, _s14descr285E46659O16SubscriptionDataOMa);
    v85 = v84;
    sub_24B2BF490(v193, v84 + v82, _s14descr285E46659O16SubscriptionDataOMa);
    v86 = swift_getEnumCaseMultiPayload();
    if (v86 > 1)
    {
      break;
    }

    if (!v86)
    {
      sub_24B2BF490(v84, v47, _s14descr285E46659O16SubscriptionDataOMa);
      if (!swift_getEnumCaseMultiPayload())
      {
        v101 = v84 + v82;
        v102 = v161;
        sub_24B2BF380(v101, v161, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
        sub_24B2D1704();
        sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8], MEMORY[0x277D08C10]);
        v103 = sub_24B2D52A4();
        sub_24B2BF3E8(v102, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
        sub_24B2BF3E8(v197, _s14descr285E46659O16SubscriptionDataOMa);
        sub_24B2BF3E8(v47, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
        if (v103)
        {
          goto LABEL_58;
        }

LABEL_51:
        v104 = v84;
LABEL_54:
        sub_24B2BF3E8(v104, _s14descr285E46659O16SubscriptionDataOMa);
        goto LABEL_32;
      }

      sub_24B2BF3E8(v197, _s14descr285E46659O16SubscriptionDataOMa);
      v87 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
      v88 = v47;
      goto LABEL_48;
    }

    v98 = v171;
    sub_24B2BF490(v84, v171, _s14descr285E46659O16SubscriptionDataOMa);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v99 = v163;
      sub_24B2BF380(v84 + v82, v163, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
      sub_24B2D1704();
      sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8], MEMORY[0x277D08C10]);
      v100 = sub_24B2D52A4();
      sub_24B2BF3E8(v99, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
      sub_24B2BF3E8(v197, _s14descr285E46659O16SubscriptionDataOMa);
      sub_24B2BF3E8(v98, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
      v47 = v170;
      if (v100)
      {
        goto LABEL_58;
      }

      goto LABEL_51;
    }

    sub_24B2BF3E8(v197, _s14descr285E46659O16SubscriptionDataOMa);
    sub_24B2BF3E8(v98, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
    v47 = v170;
LABEL_31:
    sub_24AFF8258(v84, &unk_27EFC8650, &qword_24B2EC1D0);
LABEL_32:
    v64 = (v64 + 1) & v187;
    v60 = v64 >> 6;
    v66 = 1 << v64;
    if ((v195[v64 >> 6] & (1 << v64)) == 0)
    {
      goto LABEL_6;
    }
  }

  if (v86 != 2)
  {
    if (v86 == 3)
    {
      sub_24B2BF3E8(v197, _s14descr285E46659O16SubscriptionDataOMa);
      v80 = swift_getEnumCaseMultiPayload() == 3;
    }

    else
    {
      sub_24B2BF3E8(v197, _s14descr285E46659O16SubscriptionDataOMa);
      v80 = swift_getEnumCaseMultiPayload() == 4;
    }

    if (v80)
    {
      goto LABEL_58;
    }

    goto LABEL_31;
  }

  v89 = v84;
  v90 = v172;
  sub_24B2BF490(v89, v172, _s14descr285E46659O16SubscriptionDataOMa);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_24B2BF3E8(v197, _s14descr285E46659O16SubscriptionDataOMa);
    v87 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa;
    v88 = v90;
LABEL_48:
    sub_24B2BF3E8(v88, v87);
    v84 = v85;
    goto LABEL_31;
  }

  v91 = v85 + v82;
  v92 = v164;
  sub_24B2BF380(v91, v164, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
  sub_24B2D1704();
  sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8], MEMORY[0x277D08C10]);
  v93 = sub_24B2D52A4();
  sub_24B2BF3E8(v197, _s14descr285E46659O16SubscriptionDataOMa);
  if ((v93 & 1) == 0)
  {
    sub_24B2BF3E8(v92, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
    goto LABEL_53;
  }

  v94 = *(v174 + 20);
  v95 = *(v90 + v94);
  v96 = v92;
  v97 = *(v92 + v94);
  sub_24B2BF3E8(v96, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
  if (v95 != v97)
  {
LABEL_53:
    sub_24B2BF3E8(v90, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
    v104 = v188;
    goto LABEL_54;
  }

  sub_24B2BF3E8(v90, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
  v84 = v188;
LABEL_58:
  sub_24B2BF3E8(v84, _s14descr285E46659O16SubscriptionDataOMa);
  v106 = sub_24B2BF3E8(v193, _s14descr285E46659O16SubscriptionDataOMa);
  v107 = *(v201 + 32);
  v171 = ((1 << v107) + 63) >> 6;
  v63 = 8 * v171;
  if ((v107 & 0x3Fu) > 0xD)
  {
    goto LABEL_121;
  }

  while (2)
  {
    v172 = &v159;
    MEMORY[0x28223BE20](v106);
    v109 = &v159 - ((v108 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v109, v195, v108);
    v110 = *&v109[8 * v60] & ~v66;
    v188 = v109;
    *&v109[8 * v60] = v110;
    v111 = *(v201 + 16) - 1;
    v112 = v180;
    v64 = v175;
    v193 = v33;
    v113 = v179;
    v114 = v176;
    v66 = v189;
    v60 = v190;
LABEL_60:
    v187 = v111;
    while (2)
    {
      if (v60)
      {
        v115 = v66;
LABEL_72:
        v118 = __clz(__rbit64(v60));
        v119 = (v60 - 1) & v60;
        sub_24B2BF490(*(v112 + 48) + (v118 | (v115 << 6)) * v200, v64, _s14descr285E46659O16SubscriptionDataOMa);
        v120 = 0;
LABEL_73:
        v178(v64, v120, 1, v33);
        v202 = v112;
        v203 = v113;
        v204 = v183;
        v205 = v66;
        v206 = v119;
        if (v177(v64, 1, v33) == 1)
        {
          sub_24AFF8258(v64, &qword_27EFCF898, &qword_24B2F5828);
          v201 = sub_24B2A0C50(v188, v171, v187, v201);
          goto LABEL_116;
        }

        v121 = v64;
        v122 = v199;
        sub_24B2BF380(v121, v199, _s14descr285E46659O16SubscriptionDataOMa);
        sub_24B2D60E4();
        sub_24B2BF490(v122, v186, _s14descr285E46659O16SubscriptionDataOMa);
        v123 = swift_getEnumCaseMultiPayload();
        v189 = v66;
        v190 = v119;
        if (v123 <= 1)
        {
          v124 = v195;
          if (v123)
          {
            v125 = v168;
            sub_24B2BF380(v186, v168, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
            MEMORY[0x24C23C8D0](3);
            sub_24B2D1704();
            sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
            sub_24B2D5254();
            v126 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa;
          }

          else
          {
            v125 = v167;
            sub_24B2BF380(v186, v167, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
            MEMORY[0x24C23C8D0](2);
            sub_24B2D1704();
            sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
            sub_24B2D5254();
            v126 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
          }
        }

        else
        {
          v124 = v195;
          if (v123 != 2)
          {
            if (v123 == 3)
            {
              MEMORY[0x24C23C8D0](0);
            }

            else
            {
              MEMORY[0x24C23C8D0](1);
            }

LABEL_84:
            v127 = v196;
            v128 = sub_24B2D6124();
            v129 = -1 << *(v201 + 32);
            v130 = v128 & ~v129;
            v131 = v130 >> 6;
            v132 = 1 << v130;
            if (((1 << v130) & v124[v130 >> 6]) == 0)
            {
LABEL_61:
              sub_24B2BF3E8(v199, _s14descr285E46659O16SubscriptionDataOMa);
              v112 = v180;
              v64 = v175;
              v113 = v179;
              v114 = v176;
              v66 = v189;
              v60 = v190;
              continue;
            }

            v197 = ~v129;
LABEL_89:
            sub_24B2BF490(*(v201 + 48) + v130 * v200, v127, _s14descr285E46659O16SubscriptionDataOMa);
            v133 = *(v198 + 48);
            sub_24B2BF490(v127, v5, _s14descr285E46659O16SubscriptionDataOMa);
            sub_24B2BF490(v199, &v5[v133], _s14descr285E46659O16SubscriptionDataOMa);
            v134 = swift_getEnumCaseMultiPayload();
            if (v134 <= 1)
            {
              v135 = v194;
              if (v134)
              {
                sub_24B2BF490(v5, v194, _s14descr285E46659O16SubscriptionDataOMa);
                if (swift_getEnumCaseMultiPayload() != 1)
                {
                  sub_24B2BF3E8(v127, _s14descr285E46659O16SubscriptionDataOMa);
                  sub_24B2BF3E8(v135, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
                  goto LABEL_87;
                }

                v143 = v185;
                sub_24B2BF380(&v5[v133], v185, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
                sub_24B2D1704();
                sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8], MEMORY[0x277D08C10]);
                v144 = sub_24B2D52A4();
                v145 = v143;
                v33 = v193;
                sub_24B2BF3E8(v145, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
                sub_24B2BF3E8(v127, _s14descr285E46659O16SubscriptionDataOMa);
                sub_24B2BF3E8(v135, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
                if (v144)
                {
                  goto LABEL_111;
                }
              }

              else
              {
                v136 = v191;
                sub_24B2BF490(v5, v191, _s14descr285E46659O16SubscriptionDataOMa);
                if (swift_getEnumCaseMultiPayload())
                {
                  v127 = v196;
                  sub_24B2BF3E8(v196, _s14descr285E46659O16SubscriptionDataOMa);
                  sub_24B2BF3E8(v136, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
                  v124 = v195;
                  goto LABEL_87;
                }

                v148 = v173;
                sub_24B2BF380(&v5[v133], v173, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
                sub_24B2D1704();
                sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8], MEMORY[0x277D08C10]);
                v149 = sub_24B2D52A4();
                v150 = v148;
                v33 = v193;
                sub_24B2BF3E8(v150, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
                v127 = v196;
                sub_24B2BF3E8(v196, _s14descr285E46659O16SubscriptionDataOMa);
                sub_24B2BF3E8(v136, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
                v124 = v195;
                if (v149)
                {
                  goto LABEL_111;
                }
              }

              sub_24B2BF3E8(v5, _s14descr285E46659O16SubscriptionDataOMa);
            }

            else if (v134 == 2)
            {
              v137 = v192;
              sub_24B2BF490(v5, v192, _s14descr285E46659O16SubscriptionDataOMa);
              if (swift_getEnumCaseMultiPayload() != 2)
              {
                v146 = v196;
                sub_24B2BF3E8(v196, _s14descr285E46659O16SubscriptionDataOMa);
                v147 = v137;
                v127 = v146;
                sub_24B2BF3E8(v147, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
                goto LABEL_87;
              }

              v138 = v184;
              sub_24B2BF380(&v5[v133], v184, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
              sub_24B2D1704();
              sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8], MEMORY[0x277D08C10]);
              v139 = sub_24B2D52A4();
              sub_24B2BF3E8(v196, _s14descr285E46659O16SubscriptionDataOMa);
              if (v139)
              {
                v140 = *(v174 + 20);
                v141 = *(v137 + v140);
                v142 = *(v138 + v140);
                sub_24B2BF3E8(v138, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
                if (v141 == v142)
                {
                  sub_24B2BF3E8(v137, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
                  v33 = v193;
LABEL_111:
                  sub_24B2BF3E8(v5, _s14descr285E46659O16SubscriptionDataOMa);
                  sub_24B2BF3E8(v199, _s14descr285E46659O16SubscriptionDataOMa);
                  v151 = v188[v131];
                  v188[v131] = v151 & ~v132;
                  v112 = v180;
                  v64 = v175;
                  v113 = v179;
                  v114 = v176;
                  v66 = v189;
                  v60 = v190;
                  if ((v151 & v132) != 0)
                  {
                    v111 = v187 - 1;
                    if (__OFSUB__(v187, 1))
                    {
                      __break(1u);
                    }

                    if (v187 == 1)
                    {

                      v201 = MEMORY[0x277D84FA0];
                      goto LABEL_116;
                    }

                    goto LABEL_60;
                  }

                  continue;
                }
              }

              else
              {
                sub_24B2BF3E8(v138, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
              }

              sub_24B2BF3E8(v137, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
              sub_24B2BF3E8(v5, _s14descr285E46659O16SubscriptionDataOMa);
              v33 = v193;
              v127 = v196;
            }

            else
            {
              if (v134 == 3)
              {
                sub_24B2BF3E8(v127, _s14descr285E46659O16SubscriptionDataOMa);
                if (swift_getEnumCaseMultiPayload() == 3)
                {
                  goto LABEL_111;
                }
              }

              else
              {
                sub_24B2BF3E8(v127, _s14descr285E46659O16SubscriptionDataOMa);
                if (swift_getEnumCaseMultiPayload() == 4)
                {
                  goto LABEL_111;
                }
              }

LABEL_87:
              sub_24AFF8258(v5, &unk_27EFC8650, &qword_24B2EC1D0);
            }

            v130 = (v130 + 1) & v197;
            v131 = v130 >> 6;
            v132 = 1 << v130;
            if ((v124[v130 >> 6] & (1 << v130)) == 0)
            {
              goto LABEL_61;
            }

            goto LABEL_89;
          }

          v125 = v165;
          sub_24B2BF380(v186, v165, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
          MEMORY[0x24C23C8D0](4);
          sub_24B2D1704();
          sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
          sub_24B2D5254();
          sub_24B2D6104();
          v126 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa;
        }

        sub_24B2BF3E8(v125, v126);
        goto LABEL_84;
      }

      break;
    }

    if (v114 <= v66 + 1)
    {
      v116 = v66 + 1;
    }

    else
    {
      v116 = v114;
    }

    v117 = v116 - 1;
    while (1)
    {
      v115 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        break;
      }

      if (v115 >= v114)
      {
        v119 = 0;
        v120 = 1;
        v66 = v117;
        goto LABEL_73;
      }

      v60 = *(v113 + 8 * v115);
      ++v66;
      if (v60)
      {
        v66 = v115;
        goto LABEL_72;
      }
    }

    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    v153 = v63;

    v154 = v153;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v155 = swift_slowAlloc();
  memcpy(v155, v195, v154);
  v156 = v159;
  sub_24B2B2A18(v155, v171, v201, v64, &v202);
  v158 = v157;

  if (v156)
  {

    result = MEMORY[0x24C23D530](v155, -1, -1);
    __break(1u);
  }

  else
  {

    MEMORY[0x24C23D530](v155, -1, -1);
    v201 = v158;
LABEL_116:
    v105 = v202;
LABEL_117:
    sub_24B0363BC(v105);
    return v201;
  }

  return result;
}

uint64_t sub_24B2A8558(uint64_t a1, uint64_t a2, __n128 a3)
{

  return sub_24B2B18E0(a1, a2, &qword_27EFCC848, &qword_24B2EC0E0);
}

uint64_t sub_24B2A85C0(unint64_t a1, uint64_t a2)
{
  v267 = *MEMORY[0x277D85DE8];
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC800, &unk_24B2F5680);
  MEMORY[0x28223BE20](v244);
  v247 = &v205 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v216 = &v205 - v6;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC808, &unk_24B2EC080);
  MEMORY[0x28223BE20](v258);
  v261 = &v205 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v205 - v9;
  v248 = sub_24B2D14C4();
  v11 = *(v248 - 8);
  MEMORY[0x28223BE20](v248);
  v234 = &v205 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = sub_24B2D15F4();
  v260 = *(v255 - 8);
  MEMORY[0x28223BE20](v255);
  v252 = &v205 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v250 = &v205 - v15;
  MEMORY[0x28223BE20](v16);
  v223 = &v205 - v17;
  MEMORY[0x28223BE20](v18);
  v220 = &v205 - v19;
  MEMORY[0x28223BE20](v20);
  v219 = &v205 - v21;
  MEMORY[0x28223BE20](v22);
  v209 = &v205 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC810, &qword_24B2F5690);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v205 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v214 = &v205 - v28;
  MEMORY[0x28223BE20](v29);
  v222 = &v205 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v205 - v32;
  MEMORY[0x28223BE20](v34);
  v206 = &v205 - v35;
  MEMORY[0x28223BE20](v36);
  v208 = &v205 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC84B0, &qword_24B2E09E8);
  MEMORY[0x28223BE20](v38 - 8);
  v40 = &v205 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v210 = &v205 - v42;
  v43 = type metadata accessor for ContactsProvider.Subscription(0);
  MEMORY[0x28223BE20](v43);
  v251 = (&v205 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v45);
  v47 = &v205 - v46;
  MEMORY[0x28223BE20](v48);
  v253 = &v205 - v49;
  MEMORY[0x28223BE20](v50);
  v221 = &v205 - v51;
  MEMORY[0x28223BE20](v52);
  v259 = &v205 - v53;
  MEMORY[0x28223BE20](v54);
  v218 = (&v205 - v55);
  MEMORY[0x28223BE20](v56);
  v217 = &v205 - v57;
  MEMORY[0x28223BE20](v58);
  v256 = &v205 - v59;
  MEMORY[0x28223BE20](v60);
  v207 = &v205 - v61;
  MEMORY[0x28223BE20](v62);
  v242 = &v205 - v64;
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v215 = v10;
  v224 = v40;
  v235 = v26;
  v205 = 0;
  v66 = a1 + 56;
  v65 = *(a1 + 56);
  v67 = -1 << *(a1 + 32);
  v232 = ~v67;
  if (-v67 < 64)
  {
    v68 = ~(-1 << -v67);
  }

  else
  {
    v68 = -1;
  }

  v69 = v68 & v65;
  v225 = (63 - v67) >> 6;
  v231 = (v63 + 56);
  v212 = v63;
  v230 = (v63 + 48);
  v246 = (v260 + 32);
  v245 = (v11 + 48);
  v233 = (v11 + 32);
  v238 = (v11 + 8);
  v254 = (v260 + 8);
  v260 = (a2 + 56);

  v71 = 0;
  v257 = a2;
  v229 = a1;
  v243 = v43;
  v249 = v47;
  v72 = v253;
  v228 = a1 + 56;
  v213 = v33;
  v73 = a1;
  while (1)
  {
    v74 = v69;
    v75 = v71;
    v76 = v210;
    if (v69)
    {
LABEL_15:
      v80 = (v74 - 1) & v74;
      sub_24B2BF490(*(v73 + 48) + *(v212 + 72) * (__clz(__rbit64(v74)) | (v75 << 6)), v210, type metadata accessor for ContactsProvider.Subscription);
      v81 = 0;
      v78 = v75;
    }

    else
    {
      v77 = v225 <= v71 + 1 ? v71 + 1 : v225;
      v78 = v77 - 1;
      v79 = v71;
      while (1)
      {
        v75 = v79 + 1;
        if (__OFADD__(v79, 1))
        {
          goto LABEL_115;
        }

        if (v75 >= v225)
        {
          break;
        }

        v74 = *(v66 + 8 * v75);
        ++v79;
        if (v74)
        {
          goto LABEL_15;
        }
      }

      v80 = 0;
      v81 = 1;
    }

    v227 = *v231;
    v227(v76, v81, 1, v43);
    v262 = v73;
    v263 = v66;
    v264 = v232;
    v265 = v78;
    v266 = v80;
    v226 = *v230;
    if (v226(v76, 1, v43) == 1)
    {
      sub_24AFF8258(v76, &qword_27EFC84B0, &qword_24B2E09E8);
      sub_24B0363BC(v73);
      return v257;
    }

    v82 = v242;
    sub_24B2BF380(v76, v242, type metadata accessor for ContactsProvider.Subscription);
    sub_24B2D60E4();
    v83 = v207;
    sub_24B2BF490(v82, v207, type metadata accessor for ContactsProvider.Subscription);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v241 = v78;
    v240 = v80;
    if (EnumCaseMultiPayload == 1)
    {
      MEMORY[0x24C23C8D0](1);
      sub_24B2D5404();
      v78 = v257;
    }

    else
    {
      v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820, &unk_24B2EF120) + 48);
      v86 = v208;
      sub_24B0391CC(v83, v208, &qword_27EFCC810, &qword_24B2F5690);
      (*v246)(v209, v83 + v85, v255);
      MEMORY[0x24C23C8D0](0);
      v87 = v206;
      sub_24B008890(v86, v206, &qword_27EFCC810, &qword_24B2F5690);
      v88 = v248;
      if ((*v245)(v87, 1, v248) == 1)
      {
        sub_24B2D6104();
      }

      else
      {
        v89 = v234;
        (*v233)(v234, v87, v88);
        sub_24B2D6104();
        sub_24B2BF448(&qword_27EFCC830, MEMORY[0x277D08B38], MEMORY[0x277D08B40]);
        sub_24B2D5254();
        (*v238)(v89, v88);
      }

      sub_24B2BF448(&qword_27EFCC740, MEMORY[0x277D08B70], MEMORY[0x277D08B78]);
      v90 = v209;
      v91 = v255;
      sub_24B2D5254();
      (*v254)(v90, v91);
      sub_24AFF8258(v208, &qword_27EFCC810, &qword_24B2F5690);
      v78 = v257;
    }

    v92 = sub_24B2D6124();
    v93 = -1 << *(v78 + 32);
    v69 = v92 & ~v93;
    v94 = v69 >> 6;
    v47 = 1 << v69;
    v95 = v215;
    if (((1 << v69) & *&v260[8 * (v69 >> 6)]) != 0)
    {
      break;
    }

LABEL_6:
    sub_24B2BF3E8(v242, type metadata accessor for ContactsProvider.Subscription);
    v71 = v241;
    v69 = v240;
    v73 = v229;
    v66 = v228;
  }

  v237 = ~v93;
  v76 = *(v212 + 72);
  v239 = v76;
  while (1)
  {
    v236 = v94;
    v96 = v78;
    v97 = *(v78 + 48) + v76 * v69;
    v98 = v256;
    sub_24B2BF490(v97, v256, type metadata accessor for ContactsProvider.Subscription);
    v99 = (v95 + *(v258 + 48));
    sub_24B2BF490(v98, v95, type metadata accessor for ContactsProvider.Subscription);
    sub_24B2BF490(v242, v99, type metadata accessor for ContactsProvider.Subscription);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v107 = v217;
      sub_24B2BF490(v95, v217, type metadata accessor for ContactsProvider.Subscription);
      v108 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820, &unk_24B2EF120) + 48);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_24B2BF3E8(v256, type metadata accessor for ContactsProvider.Subscription);
        (*v254)((v107 + v108), v255);
        sub_24AFF8258(v107, &qword_27EFCC810, &qword_24B2F5690);
        v78 = v96;
LABEL_26:
        sub_24AFF8258(v95, &qword_27EFCC808, &unk_24B2EC080);
        goto LABEL_27;
      }

      v109 = v107;
      v110 = *v246;
      v111 = v255;
      (*v246)(v219, v107 + v108, v255);
      v110(v220, v99 + v108, v111);
      v112 = v248;
      v113 = *(v244 + 48);
      v114 = v216;
      sub_24B0391CC(v109, v216, &qword_27EFCC810, &qword_24B2F5690);
      sub_24B0391CC(v99, v114 + v113, &qword_27EFCC810, &qword_24B2F5690);
      v115 = *v245;
      if ((*v245)(v114, 1, v112) == 1)
      {
        if (v115(v114 + v113, 1, v112) == 1)
        {
          sub_24AFF8258(v114, &qword_27EFCC810, &qword_24B2F5690);
          v78 = v257;
          v76 = v239;
          goto LABEL_47;
        }

        v118 = *v254;
        v119 = v255;
        (*v254)(v220, v255);
        v118(v219, v119);
        sub_24B2BF3E8(v256, type metadata accessor for ContactsProvider.Subscription);
      }

      else
      {
        sub_24B008890(v114, v213, &qword_27EFCC810, &qword_24B2F5690);
        if (v115(v114 + v113, 1, v112) != 1)
        {
          v120 = v234;
          (*v233)(v234, v114 + v113, v112);
          sub_24B2BF448(&qword_27EFCC828, MEMORY[0x277D08B38], MEMORY[0x277D08B48]);
          v121 = v213;
          v211 = sub_24B2D52A4();
          v122 = *v238;
          v123 = v120;
          v43 = v243;
          (*v238)(v123, v112);
          v122(v121, v112);
          sub_24AFF8258(v114, &qword_27EFCC810, &qword_24B2F5690);
          v78 = v257;
          v76 = v239;
          if (v211)
          {
LABEL_47:
            v124 = v219;
            v125 = v220;
            v126 = MEMORY[0x24C237DB0](v219, v220);
            v127 = *v254;
            v128 = v125;
            v129 = v255;
            (*v254)(v128, v255);
            v127(v124, v129);
            sub_24B2BF3E8(v256, type metadata accessor for ContactsProvider.Subscription);
            v95 = v215;
            sub_24B2BF3E8(v215, type metadata accessor for ContactsProvider.Subscription);
            v72 = v253;
            if (v126)
            {
              goto LABEL_54;
            }

            goto LABEL_27;
          }

          v130 = *v254;
          v131 = v255;
          (*v254)(v220, v255);
          v130(v219, v131);
          sub_24B2BF3E8(v256, type metadata accessor for ContactsProvider.Subscription);
LABEL_45:
          v72 = v253;
          v95 = v215;
          sub_24B2BF3E8(v215, type metadata accessor for ContactsProvider.Subscription);
          goto LABEL_27;
        }

        v116 = *v254;
        v117 = v255;
        (*v254)(v220, v255);
        v116(v219, v117);
        sub_24B2BF3E8(v256, type metadata accessor for ContactsProvider.Subscription);
        (*v238)(v213, v112);
      }

      v78 = v257;
      v76 = v239;
      sub_24AFF8258(v216, &qword_27EFCC800, &unk_24B2F5680);
      goto LABEL_45;
    }

    v100 = v218;
    sub_24B2BF490(v95, v218, type metadata accessor for ContactsProvider.Subscription);
    v101 = *v100;
    v102 = v100[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_24B2BF3E8(v256, type metadata accessor for ContactsProvider.Subscription);

      v78 = v257;
      goto LABEL_26;
    }

    v103 = *v99;
    v104 = v99[1];
    v105 = v101 == v103 && v102 == v104;
    if (v105)
    {
      break;
    }

    v106 = sub_24B2D6004();

    sub_24B2BF3E8(v256, type metadata accessor for ContactsProvider.Subscription);
    if (v106)
    {
      goto LABEL_53;
    }

    sub_24B2BF3E8(v95, type metadata accessor for ContactsProvider.Subscription);
    v78 = v257;
LABEL_27:
    v69 = (v69 + 1) & v237;
    v94 = v69 >> 6;
    v47 = 1 << v69;
    if ((*&v260[8 * (v69 >> 6)] & (1 << v69)) == 0)
    {
      goto LABEL_6;
    }
  }

  sub_24B2BF3E8(v256, type metadata accessor for ContactsProvider.Subscription);
LABEL_53:
  sub_24B2BF3E8(v95, type metadata accessor for ContactsProvider.Subscription);
  v78 = v257;
LABEL_54:
  v133 = sub_24B2BF3E8(v242, type metadata accessor for ContactsProvider.Subscription);
  v134 = *(v78 + 32);
  v73 = ((1 << v134) + 63) >> 6;
  v70 = 8 * v73;
  if ((v134 & 0x3Fu) > 0xD)
  {
    goto LABEL_116;
  }

  while (2)
  {
    v219 = v73;
    v220 = &v205;
    MEMORY[0x28223BE20](v133);
    v136 = &v205 - ((v135 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v136, v260, v135);
    v137 = *&v136[8 * v236] & ~v47;
    v237 = v136;
    *&v136[8 * v236] = v137;
    v138 = *(v78 + 16) - 1;
    v47 = &qword_24B2F5690;
    v139 = v229;
    v140 = v224;
    v73 = v228;
    v141 = v225;
    v78 = v241;
    v69 = v240;
LABEL_56:
    v236 = v138;
    while (2)
    {
      if (v69)
      {
        v142 = v78;
        v143 = v248;
LABEL_68:
        v146 = __clz(__rbit64(v69));
        v147 = (v69 - 1) & v69;
        sub_24B2BF490(*(v139 + 48) + (v146 | (v142 << 6)) * v76, v140, type metadata accessor for ContactsProvider.Subscription);
        v148 = 0;
LABEL_69:
        v227(v140, v148, 1, v43);
        v262 = v139;
        v263 = v73;
        v264 = v232;
        v265 = v78;
        v266 = v147;
        if (v226(v140, 1, v43) == 1)
        {
          sub_24AFF8258(v140, &qword_27EFC84B0, &qword_24B2E09E8);
          v132 = sub_24B2A1260(v237, v219, v236, v257, v199);
          goto LABEL_111;
        }

        v149 = v259;
        sub_24B2BF380(v140, v259, type metadata accessor for ContactsProvider.Subscription);
        sub_24B2D60E4();
        v150 = v221;
        sub_24B2BF490(v149, v221, type metadata accessor for ContactsProvider.Subscription);
        v151 = swift_getEnumCaseMultiPayload();
        v241 = v78;
        v240 = v147;
        if (v151 == 1)
        {
          MEMORY[0x24C23C8D0](1);
          sub_24B2D5404();
          v152 = v257;
        }

        else
        {
          v153 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820, &unk_24B2EF120) + 48);
          v154 = v222;
          sub_24B0391CC(v150, v222, &qword_27EFCC810, &qword_24B2F5690);
          (*v246)(v223, v150 + v153, v255);
          MEMORY[0x24C23C8D0](0);
          v155 = v214;
          sub_24B008890(v154, v214, &qword_27EFCC810, &qword_24B2F5690);
          if ((*v245)(v155, 1, v143) == 1)
          {
            sub_24B2D6104();
          }

          else
          {
            v156 = v234;
            (*v233)(v234, v155, v143);
            sub_24B2D6104();
            sub_24B2BF448(&qword_27EFCC830, MEMORY[0x277D08B38], MEMORY[0x277D08B40]);
            sub_24B2D5254();
            (*v238)(v156, v143);
          }

          v72 = v253;
          sub_24B2BF448(&qword_27EFCC740, MEMORY[0x277D08B70], MEMORY[0x277D08B78]);
          v157 = v223;
          v158 = v255;
          sub_24B2D5254();
          (*v254)(v157, v158);
          sub_24AFF8258(v222, &qword_27EFCC810, &qword_24B2F5690);
          v152 = v257;
        }

        v159 = sub_24B2D6124();
        v160 = -1 << *(v152 + 32);
        v161 = v159 & ~v160;
        v162 = v161 >> 6;
        v163 = 1 << v161;
        if (((1 << v161) & *&v260[8 * (v161 >> 6)]) == 0)
        {
LABEL_57:
          sub_24B2BF3E8(v259, type metadata accessor for ContactsProvider.Subscription);
          v139 = v229;
          v140 = v224;
          v73 = v228;
          v141 = v225;
          v78 = v241;
          v69 = v240;
          v47 = &qword_24B2F5690;
          continue;
        }

        v256 = ~v160;
LABEL_81:
        sub_24B2BF490(*(v152 + 48) + v161 * v76, v72, type metadata accessor for ContactsProvider.Subscription);
        v166 = (v261 + *(v258 + 48));
        sub_24B2BF490(v72, v261, type metadata accessor for ContactsProvider.Subscription);
        sub_24B2BF490(v259, v166, type metadata accessor for ContactsProvider.Subscription);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v167 = v251;
          sub_24B2BF490(v261, v251, type metadata accessor for ContactsProvider.Subscription);
          v168 = *v167;
          v169 = v167[1];
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v170 = *v166;
            v171 = v166[1];
            if (v168 == v170 && v169 == v171)
            {

              sub_24B2BF3E8(v72, type metadata accessor for ContactsProvider.Subscription);
LABEL_105:
              sub_24B2BF3E8(v261, type metadata accessor for ContactsProvider.Subscription);
LABEL_106:
              sub_24B2BF3E8(v259, type metadata accessor for ContactsProvider.Subscription);
              v198 = *(v237 + 8 * v162);
              *(v237 + 8 * v162) = v198 & ~v163;
              v105 = (v198 & v163) == 0;
              v139 = v229;
              v140 = v224;
              v73 = v228;
              v141 = v225;
              v78 = v241;
              v69 = v240;
              v47 = &qword_24B2F5690;
              if (!v105)
              {
                v138 = v236 - 1;
                if (__OFSUB__(v236, 1))
                {
                  __break(1u);
                }

                if (v236 == 1)
                {

                  v132 = MEMORY[0x277D84FA0];
                  goto LABEL_111;
                }

                goto LABEL_56;
              }

              continue;
            }

            v173 = sub_24B2D6004();

            sub_24B2BF3E8(v72, type metadata accessor for ContactsProvider.Subscription);
            if (v173)
            {
              goto LABEL_105;
            }

            sub_24B2BF3E8(v261, type metadata accessor for ContactsProvider.Subscription);
            v152 = v257;
            goto LABEL_80;
          }

          sub_24B2BF3E8(v72, type metadata accessor for ContactsProvider.Subscription);

          v152 = v257;
LABEL_79:
          sub_24AFF8258(v261, &qword_27EFCC808, &unk_24B2EC080);
LABEL_80:
          v161 = (v161 + 1) & v256;
          v162 = v161 >> 6;
          v163 = 1 << v161;
          if ((*&v260[8 * (v161 >> 6)] & (1 << v161)) == 0)
          {
            goto LABEL_57;
          }

          goto LABEL_81;
        }

        v174 = v249;
        sub_24B2BF490(v261, v249, type metadata accessor for ContactsProvider.Subscription);
        v175 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820, &unk_24B2EF120) + 48);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v164 = v253;
          sub_24B2BF3E8(v253, type metadata accessor for ContactsProvider.Subscription);
          (*v254)((v174 + v175), v255);
          v165 = v174;
          v72 = v164;
          sub_24AFF8258(v165, &qword_27EFCC810, &qword_24B2F5690);
          goto LABEL_79;
        }

        v176 = *v246;
        v177 = v255;
        (*v246)(v250, v174 + v175, v255);
        v176(v252, v166 + v175, v177);
        v178 = *(v244 + 48);
        v179 = v247;
        sub_24B0391CC(v174, v247, &qword_27EFCC810, &qword_24B2F5690);
        sub_24B0391CC(v166, v179 + v178, &qword_27EFCC810, &qword_24B2F5690);
        v180 = *v245;
        v181 = v248;
        if ((*v245)(v179, 1, v248) == 1)
        {
          v182 = v180(v179 + v178, 1, v181);
          v72 = v253;
          if (v182 == 1)
          {
            sub_24AFF8258(v179, &qword_27EFCC810, &qword_24B2F5690);
            v152 = v257;
            v183 = v72;
            v184 = v252;
            goto LABEL_100;
          }

          v188 = *v254;
          v189 = v255;
          (*v254)(v252, v255);
          v188(v250, v189);
          sub_24B2BF3E8(v72, type metadata accessor for ContactsProvider.Subscription);
LABEL_97:
          v152 = v257;
          sub_24AFF8258(v247, &qword_27EFCC800, &unk_24B2F5680);
          v43 = v243;
        }

        else
        {
          v185 = v235;
          sub_24B008890(v179, v235, &qword_27EFCC810, &qword_24B2F5690);
          if (v180(v179 + v178, 1, v181) == 1)
          {
            v186 = *v254;
            v187 = v255;
            (*v254)(v252, v255);
            v186(v250, v187);
            v72 = v253;
            sub_24B2BF3E8(v253, type metadata accessor for ContactsProvider.Subscription);
            (*v238)(v185, v181);
            goto LABEL_97;
          }

          v190 = v234;
          (*v233)(v234, v179 + v178, v181);
          sub_24B2BF448(&qword_27EFCC828, MEMORY[0x277D08B38], MEMORY[0x277D08B48]);
          LODWORD(v242) = sub_24B2D52A4();
          v191 = *v238;
          v192 = v190;
          v184 = v252;
          (*v238)(v192, v181);
          v191(v185, v181);
          sub_24AFF8258(v179, &qword_27EFCC810, &qword_24B2F5690);
          v152 = v257;
          v183 = v253;
          if (v242)
          {
LABEL_100:
            v193 = v250;
            LODWORD(v242) = MEMORY[0x24C237DB0](v250, v184);
            v194 = *v254;
            v195 = v255;
            (*v254)(v184, v255);
            v194(v193, v195);
            sub_24B2BF3E8(v183, type metadata accessor for ContactsProvider.Subscription);
            sub_24B2BF3E8(v261, type metadata accessor for ContactsProvider.Subscription);
            v43 = v243;
            v76 = v239;
            v72 = v183;
            if (v242)
            {
              goto LABEL_106;
            }

            goto LABEL_80;
          }

          v196 = *v254;
          v197 = v255;
          (*v254)(v184, v255);
          v196(v250, v197);
          sub_24B2BF3E8(v183, type metadata accessor for ContactsProvider.Subscription);
          v43 = v243;
          v76 = v239;
          v72 = v183;
        }

        sub_24B2BF3E8(v261, type metadata accessor for ContactsProvider.Subscription);
        goto LABEL_80;
      }

      break;
    }

    if (v141 <= v78 + 1)
    {
      v144 = v78 + 1;
    }

    else
    {
      v144 = v141;
    }

    v145 = v144 - 1;
    v143 = v248;
    while (1)
    {
      v142 = v78 + 1;
      if (__OFADD__(v78, 1))
      {
        break;
      }

      if (v142 >= v141)
      {
        v147 = 0;
        v148 = 1;
        v78 = v145;
        goto LABEL_69;
      }

      v69 = *(v73 + 8 * v142);
      ++v78;
      if (v69)
      {
        v78 = v142;
        goto LABEL_68;
      }
    }

    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    v201 = v70;

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v202 = swift_slowAlloc();
  memcpy(v202, v260, v201);
  v203 = v205;
  sub_24B2B387C(v202, v73, v78, v69, &v262);
  v132 = v204;

  if (v203)
  {

    result = MEMORY[0x24C23D530](v202, -1, -1);
    __break(1u);
  }

  else
  {

    MEMORY[0x24C23D530](v202, -1, -1);
LABEL_111:
    sub_24B0363BC(v262);
    return v132;
  }

  return result;
}

uint64_t sub_24B2AA7D8(uint64_t a1, uint64_t a2)
{
  v121 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC84A8, &unk_24B2F5660);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v83 - v9;
  v11 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v13);
  v111 = &v83 - v14;
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v104 = &v83 - v20;
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v103 = v17;
  v102 = v19;
  v105 = v18;
  v84 = 0;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v100 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v110 = v24 & v21;
  v95 = (63 - v23) >> 6;
  v99 = (v12 + 56);
  v98 = (v12 + 48);
  v108 = (a2 + 56);

  v26 = 0;
  v86 = v10;
  v107 = a2;
  for (i = v12; ; v12 = i)
  {
    v27 = v110;
    v28 = v26;
    if (v110)
    {
      goto LABEL_16;
    }

    v29 = v95 <= (v26 + 1) ? v26 + 1 : v95;
    v30 = v29 - 1;
    v31 = v26;
    do
    {
      v28 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_108;
      }

      if (v28 >= v95)
      {
        v34 = 0;
        v33 = 1;
        goto LABEL_17;
      }

      v27 = *(v22 + 8 * v28);
      ++v31;
    }

    while (!v27);
    v12 = i;
LABEL_16:
    v32 = (v27 - 1) & v27;
    sub_24B2BF490(*(a1 + 48) + *(v12 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v86, type metadata accessor for PeopleLocationsProvider.Subscription);
    v33 = 0;
    v30 = v28;
    v34 = v32;
    v10 = v86;
LABEL_17:
    v2 = v103;
    v97 = *v99;
    v97(v10, v33, 1, v103);
    v116 = a1;
    v117 = a1 + 56;
    v118 = v100;
    v119 = v30;
    v120 = v34;
    v96 = *v98;
    if (v96(v10, 1, v2) == 1)
    {
      goto LABEL_106;
    }

    v101 = v34;
    sub_24B2BF380(v10, v104, type metadata accessor for PeopleLocationsProvider.Subscription);
    sub_24B2D60E4();
    v35 = sub_24B2D1574();
    v36 = sub_24B2BF448(&qword_27EFCC6C0, MEMORY[0x277D08B50], MEMORY[0x277D08B58]);
    v110 = v35;
    v94 = v36;
    sub_24B2D5254();
    v87 = *(v2 + 20);
    sub_24B2D5404();

    v37 = sub_24B2D6124();
    v38 = -1 << *(a2 + 32);
    v28 = v37 & ~v38;
    v39 = v28 >> 6;
    v40 = (1 << v28);
    v10 = v102;
    if (((1 << v28) & v108[v28 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_24B2BF3E8(v104, type metadata accessor for PeopleLocationsProvider.Subscription);
    v26 = v30;
    v110 = v101;
    v10 = v86;
  }

  v88 = ~v38;
  v109 = *(i + 72);
  while (1)
  {
    v89 = v40;
    v90 = v39;
    sub_24B2BF490(*(a2 + 48) + v109 * v28, v10, type metadata accessor for PeopleLocationsProvider.Subscription);
    v41 = sub_24B2BF448(&qword_27EFCC6D8, MEMORY[0x277D08B50], MEMORY[0x277D08B68]);
    sub_24B2D54E4();
    v106 = v41;
    sub_24B2D54E4();
    v2 = v115;
    v42 = v114 == v112 && v115 == v113;
    if (v42)
    {
    }

    else
    {
      v43 = sub_24B2D6004();

      if ((v43 & 1) == 0)
      {
        v10 = v102;
        sub_24B2BF3E8(v102, type metadata accessor for PeopleLocationsProvider.Subscription);
        goto LABEL_21;
      }
    }

    v44 = v102;
    v45 = *(v102 + *(v103 + 20)) ? 0x776F6C6C616873 : 1702259052;
    v2 = *(v102 + *(v103 + 20)) ? 0xE700000000000000 : 0xE400000000000000;
    v46 = *(v104 + v87) ? 0x776F6C6C616873 : 1702259052;
    v10 = (*(v104 + v87) ? 0xE700000000000000 : 0xE400000000000000);
    if (v45 == v46 && v2 == v10)
    {
      break;
    }

    v48 = sub_24B2D6004();

    sub_24B2BF3E8(v44, type metadata accessor for PeopleLocationsProvider.Subscription);
    v10 = v44;
    if (v48)
    {
      goto LABEL_50;
    }

LABEL_21:
    v28 = (v28 + 1) & v88;
    v39 = v28 >> 6;
    v40 = (1 << v28);
    a2 = v107;
    if ((v108[v28 >> 6] & (1 << v28)) == 0)
    {
      goto LABEL_6;
    }
  }

  sub_24B2BF3E8(v44, type metadata accessor for PeopleLocationsProvider.Subscription);
LABEL_50:
  v49 = sub_24B2BF3E8(v104, type metadata accessor for PeopleLocationsProvider.Subscription);
  v2 = v107;
  v50 = *(v107 + 32);
  v87 = ((1 << v50) + 63) >> 6;
  v25 = 8 * v87;
  a2 = v103;
  if ((v50 & 0x3Fu) > 0xD)
  {
LABEL_108:
    v79 = v25;

    v10 = v79;
    if (swift_stdlib_isStackAllocationSafe())
    {

      goto LABEL_51;
    }

    v80 = swift_slowAlloc();
    memcpy(v80, v108, v79);
    v81 = v84;
    sub_24B2B494C(v80, v87, v2, v28, &v116);
    a2 = v82;

    if (!v81)
    {

      MEMORY[0x24C23D530](v80, -1, -1);
LABEL_102:
      v77 = v116;
      goto LABEL_103;
    }

    result = MEMORY[0x24C23D530](v80, -1, -1);
    __break(1u);
    return result;
  }

LABEL_51:
  v88 = &v83;
  MEMORY[0x28223BE20](v49);
  v52 = &v83 - ((v51 + 15) & 0x3FFFFFFFFFFFFFF0);
  memcpy(v52, v108, v51);
  v53 = *&v52[8 * v90] & ~v89;
  v89 = v52;
  *&v52[8 * v90] = v53;
  v54 = *(v2 + 16) - 1;
  v55 = v95;
  v56 = v101;
  v93 = a1;
  v92 = v7;
  v91 = a1 + 56;
LABEL_52:
  v90 = v54;
  while (2)
  {
    if (v56)
    {
      v57 = v30;
LABEL_64:
      v60 = __clz(__rbit64(v56));
      v61 = (v56 - 1) & v56;
      sub_24B2BF490(*(a1 + 48) + (v60 | (v57 << 6)) * v109, v7, type metadata accessor for PeopleLocationsProvider.Subscription);
      v62 = 0;
LABEL_65:
      v97(v7, v62, 1, a2);
      v116 = a1;
      v117 = v22;
      v118 = v100;
      v119 = v30;
      v120 = v61;
      if (v96(v7, 1, a2) == 1)
      {
        sub_24AFF8258(v7, &qword_27EFC84A8, &unk_24B2F5660);
        a2 = sub_24B2A196C(v89, v87, v90, v2);
        goto LABEL_102;
      }

      v101 = v61;
      sub_24B2BF380(v7, v111, type metadata accessor for PeopleLocationsProvider.Subscription);
      sub_24B2D60E4();
      sub_24B2D5254();
      v102 = *(a2 + 20);
      sub_24B2D5404();

      v10 = &v114;
      v63 = sub_24B2D6124();
      v64 = -1 << *(v2 + 32);
      v65 = v63 & ~v64;
      v66 = v65 >> 6;
      v67 = 1 << v65;
      if (((1 << v65) & v108[v65 >> 6]) == 0)
      {
LABEL_53:
        sub_24B2BF3E8(v111, type metadata accessor for PeopleLocationsProvider.Subscription);
        a1 = v93;
        v7 = v92;
        a2 = v103;
        v22 = v91;
        v55 = v95;
        v56 = v101;
        continue;
      }

      v104 = ~v64;
      v68 = v105;
LABEL_70:
      sub_24B2BF490(*(v2 + 48) + v65 * v109, v68, type metadata accessor for PeopleLocationsProvider.Subscription);
      sub_24B2D54E4();
      sub_24B2D54E4();
      v10 = v113;
      if (v114 != v112 || v115 != v113)
      {
        v70 = sub_24B2D6004();

        if (v70)
        {
LABEL_77:
          v68 = v105;
          if (*(v105 + *(v103 + 20)))
          {
            v71 = 0x776F6C6C616873;
          }

          else
          {
            v71 = 1702259052;
          }

          if (*(v105 + *(v103 + 20)))
          {
            v72 = 0xE700000000000000;
          }

          else
          {
            v72 = 0xE400000000000000;
          }

          if (*(v111 + v102))
          {
            v73 = 0x776F6C6C616873;
          }

          else
          {
            v73 = 1702259052;
          }

          if (*(v111 + v102))
          {
            v10 = 0xE700000000000000;
          }

          else
          {
            v10 = 0xE400000000000000;
          }

          if (v71 == v73 && v72 == v10)
          {

            sub_24B2BF3E8(v68, type metadata accessor for PeopleLocationsProvider.Subscription);
LABEL_97:
            sub_24B2BF3E8(v111, type metadata accessor for PeopleLocationsProvider.Subscription);
            v76 = v89[v66];
            v89[v66] = v76 & ~v67;
            v42 = (v76 & v67) == 0;
            v2 = v107;
            a1 = v93;
            v7 = v92;
            a2 = v103;
            v22 = v91;
            v55 = v95;
            v56 = v101;
            if (!v42)
            {
              v54 = v90 - 1;
              if (__OFSUB__(v90, 1))
              {
                __break(1u);
              }

              if (v90 == 1)
              {

                a2 = MEMORY[0x277D84FA0];
                goto LABEL_102;
              }

              goto LABEL_52;
            }

            continue;
          }

          v75 = sub_24B2D6004();

          sub_24B2BF3E8(v68, type metadata accessor for PeopleLocationsProvider.Subscription);
          if (v75)
          {
            goto LABEL_97;
          }
        }

        else
        {
          v68 = v105;
          sub_24B2BF3E8(v105, type metadata accessor for PeopleLocationsProvider.Subscription);
        }

        v65 = (v65 + 1) & v104;
        v66 = v65 >> 6;
        v67 = 1 << v65;
        v2 = v107;
        if ((v108[v65 >> 6] & (1 << v65)) == 0)
        {
          goto LABEL_53;
        }

        goto LABEL_70;
      }

      goto LABEL_77;
    }

    break;
  }

  if (v55 <= (v30 + 1))
  {
    v58 = v30 + 1;
  }

  else
  {
    v58 = v55;
  }

  v59 = v58 - 1;
  while (1)
  {
    v57 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v57 >= v55)
    {
      v61 = 0;
      v62 = 1;
      v30 = v59;
      goto LABEL_65;
    }

    v56 = *(v22 + 8 * v57);
    ++v30;
    if (v56)
    {
      v30 = v57;
      goto LABEL_64;
    }
  }

  __break(1u);
LABEL_106:
  sub_24AFF8258(v10, &qword_27EFC84A8, &unk_24B2F5660);
  v77 = a1;
LABEL_103:
  sub_24B0363BC(v77);
  return a2;
}

uint64_t sub_24B2AB678(unint64_t a1, uint64_t a2)
{
  v165 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC6D0, &qword_24B2EBE70);
  MEMORY[0x28223BE20](v4);
  v6 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v138 = (&v117 - v8);
  v9 = sub_24B2D1574();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v145 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v122 = &v117 - v13;
  MEMORY[0x28223BE20](v14);
  v121 = &v117 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85C8, &qword_24B2E0A78);
  MEMORY[0x28223BE20](v16 - 8);
  v125 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v117 - v19;
  v136 = type metadata accessor for PeopleProvider.Subscription(0);
  v21 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v147 = &v117 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v24);
  v124 = &v117 - v25;
  MEMORY[0x28223BE20](v26);
  v152 = &v117 - v27;
  MEMORY[0x28223BE20](v28);
  MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  v119 = &v117 - v31;
  MEMORY[0x28223BE20](v32);
  v137 = &v117 - v36;
  v154 = a2;
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v148 = v35;
  v123 = v34;
  v118 = v20;
  v155 = v33;
  v144 = v9;
  v117 = 0;
  v38 = a1 + 56;
  v37 = *(a1 + 56);
  v39 = -1 << *(a1 + 32);
  v135 = ~v39;
  if (-v39 < 64)
  {
    v40 = ~(-1 << -v39);
  }

  else
  {
    v40 = -1;
  }

  v41 = v40 & v37;
  v42 = (63 - v39) >> 6;
  v134 = (v21 + 56);
  v133 = (v21 + 48);
  v153 = (v10 + 48);
  v142 = (v10 + 32);
  v146 = (v10 + 8);
  v150 = (v154 + 56);

  v44 = 0;
  v128 = a1 + 56;
  v45 = a1;
  v120 = v21;
  v129 = a1;
  v143 = v4;
  v139 = v42;
  while (1)
  {
    v46 = v41;
    v47 = v44;
    v151 = v41;
    if (v41)
    {
LABEL_16:
      a1 = (v46 - 1) & v46;
      v51 = v118;
      sub_24B2BF490(*(v45 + 48) + *(v21 + 72) * (__clz(__rbit64(v46)) | (v47 << 6)), v118, type metadata accessor for PeopleProvider.Subscription);
      v52 = 0;
      v49 = v47;
    }

    else
    {
      v48 = v42 <= v44 + 1 ? v44 + 1 : v42;
      v49 = v48 - 1;
      v50 = v44;
      while (1)
      {
        v47 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          goto LABEL_79;
        }

        if (v47 >= v42)
        {
          break;
        }

        v46 = *(v38 + 8 * v47);
        ++v50;
        if (v46)
        {
          v21 = v120;
          goto LABEL_16;
        }
      }

      a1 = 0;
      v52 = 1;
      v51 = v118;
    }

    v53 = v136;
    v127 = *v134;
    v127(v51, v52, 1, v136);
    v160 = v45;
    v161 = v38;
    v162 = v135;
    v163 = v49;
    v164 = a1;
    v126 = *v133;
    if (v126(v51, 1, v53) == 1)
    {
      sub_24AFF8258(v51, &qword_27EFC85C8, &qword_24B2E0A78);
      v109 = v45;
      goto LABEL_75;
    }

    v54 = v137;
    sub_24B2BF380(v51, v137, type metadata accessor for PeopleProvider.Subscription);
    sub_24B2D60E4();
    v55 = v119;
    sub_24B2BF490(v54, v119, type metadata accessor for PeopleProvider.Subscription);
    v56 = *v153;
    v57 = v144;
    if ((*v153)(v55, 1, v144) == 1)
    {
      MEMORY[0x24C23C8D0](0);
    }

    else
    {
      v58 = v121;
      (*v142)(v121, v55, v57);
      MEMORY[0x24C23C8D0](1);
      sub_24B2BF448(&qword_27EFCC6C0, MEMORY[0x277D08B50], MEMORY[0x277D08B58]);
      sub_24B2D5254();
      (*v146)(v58, v57);
    }

    v59 = sub_24B2D6124();
    v60 = -1 << *(v154 + 32);
    v41 = v59 & ~v60;
    v61 = v41 >> 6;
    v62 = 1 << v41;
    if (((1 << v41) & v150[v41 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_24B2BF3E8(v137, type metadata accessor for PeopleProvider.Subscription);
    v44 = v49;
    v41 = a1;
    v38 = v128;
    v45 = v129;
    v21 = v120;
  }

  v130 = ~v60;
  v151 = *(v120 + 72);
  v149 = v56;
  v140 = v49;
  v141 = a1;
  while (1)
  {
    v131 = v62;
    v132 = v61;
    v65 = v56;
    v66 = v148;
    sub_24B2BF490(*(v154 + 48) + v151 * v41, v148, type metadata accessor for PeopleProvider.Subscription);
    v67 = *(v4 + 48);
    v68 = v138;
    sub_24B2BF490(v66, v138, type metadata accessor for PeopleProvider.Subscription);
    sub_24B2BF490(v137, v68 + v67, type metadata accessor for PeopleProvider.Subscription);
    v69 = v144;
    if (v65(v68, 1, v144) == 1)
    {
      sub_24B2BF3E8(v66, type metadata accessor for PeopleProvider.Subscription);
      v63 = v65(v68 + v67, 1, v69) == 1;
      v64 = v68;
      v56 = v65;
      if (v63)
      {
        goto LABEL_36;
      }

      goto LABEL_24;
    }

    v70 = v123;
    sub_24B2BF490(v68, v123, type metadata accessor for PeopleProvider.Subscription);
    if (v65(v68 + v67, 1, v69) == 1)
    {
      v56 = v65;
      sub_24B2BF3E8(v148, type metadata accessor for PeopleProvider.Subscription);
      (*v146)(v70, v69);
      v64 = v68;
      v42 = v139;
LABEL_24:
      sub_24AFF8258(v64, &qword_27EFCC6D0, &qword_24B2EBE70);
      goto LABEL_25;
    }

    (*v142)(v122, v68 + v67, v69);
    sub_24B2BF448(&qword_27EFCC6D8, MEMORY[0x277D08B50], MEMORY[0x277D08B68]);
    sub_24B2D54E4();
    sub_24B2D54E4();
    if (v158 == v156 && v159 == v157)
    {
      break;
    }

    v71 = sub_24B2D6004();
    v72 = *v146;
    v73 = v144;
    (*v146)(v122, v144);
    sub_24B2BF3E8(v148, type metadata accessor for PeopleProvider.Subscription);

    v72(v123, v73);
    v49 = v140;
    v56 = v149;
    v64 = v138;
    v42 = v139;
    if (v71)
    {
      goto LABEL_36;
    }

    sub_24B2BF3E8(v138, type metadata accessor for PeopleProvider.Subscription);
LABEL_25:
    v4 = v143;
    a1 = v141;
    v41 = (v41 + 1) & v130;
    v61 = v41 >> 6;
    v62 = 1 << v41;
    if ((v150[v41 >> 6] & (1 << v41)) == 0)
    {
      goto LABEL_6;
    }
  }

  v74 = *v146;
  v75 = v144;
  (*v146)(v122, v144);
  sub_24B2BF3E8(v148, type metadata accessor for PeopleProvider.Subscription);

  v74(v123, v75);
  v49 = v140;
  v64 = v138;
  v42 = v139;
LABEL_36:
  sub_24B2BF3E8(v64, type metadata accessor for PeopleProvider.Subscription);
  v76 = sub_24B2BF3E8(v137, type metadata accessor for PeopleProvider.Subscription);
  v77 = *(v154 + 32);
  v123 = ((1 << v77) + 63) >> 6;
  v43 = 8 * v123;
  v4 = v143;
  a1 = v141;
  v45 = v129;
  if ((v77 & 0x3Fu) > 0xD)
  {
    goto LABEL_80;
  }

  while (2)
  {
    v130 = &v117;
    MEMORY[0x28223BE20](v76);
    v79 = &v117 - ((v78 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v79, v150, v78);
    v80 = *&v79[8 * v132] & ~v131;
    v138 = v79;
    *&v79[8 * v132] = v80;
    v81 = *(v154 + 16) - 1;
    v41 = v144;
    v82 = v125;
    v83 = v128;
LABEL_38:
    v137 = v81;
    while (2)
    {
      if (a1)
      {
        v84 = v49;
LABEL_50:
        v87 = __clz(__rbit64(a1));
        v88 = (a1 - 1) & a1;
        sub_24B2BF490(*(v45 + 48) + (v87 | (v84 << 6)) * v151, v82, type metadata accessor for PeopleProvider.Subscription);
        v89 = 0;
LABEL_51:
        v90 = v136;
        v127(v82, v89, 1, v136);
        v160 = v45;
        v161 = v83;
        v162 = v135;
        v163 = v49;
        v164 = v88;
        if (v126(v82, 1, v90) == 1)
        {
          sub_24AFF8258(v82, &qword_27EFC85C8, &qword_24B2E0A78);
          v154 = sub_24B2A1CDC(v138, v123, v137, v154);
          goto LABEL_74;
        }

        v91 = v82;
        v92 = v152;
        sub_24B2BF380(v91, v152, type metadata accessor for PeopleProvider.Subscription);
        sub_24B2D60E4();
        v93 = v124;
        sub_24B2BF490(v92, v124, type metadata accessor for PeopleProvider.Subscription);
        v94 = v149(v93, 1, v41);
        v140 = v49;
        v141 = v88;
        if (v94 == 1)
        {
          MEMORY[0x24C23C8D0](0);
        }

        else
        {
          v95 = v121;
          (*v142)(v121, v93, v41);
          MEMORY[0x24C23C8D0](1);
          sub_24B2BF448(&qword_27EFCC6C0, MEMORY[0x277D08B50], MEMORY[0x277D08B58]);
          sub_24B2D5254();
          (*v146)(v95, v41);
        }

        v96 = sub_24B2D6124();
        v97 = -1 << *(v154 + 32);
        v98 = v96 & ~v97;
        v99 = v98 >> 6;
        v100 = 1 << v98;
        if (((1 << v98) & v150[v98 >> 6]) == 0)
        {
LABEL_39:
          sub_24B2BF3E8(v152, type metadata accessor for PeopleProvider.Subscription);
          v45 = v129;
          v82 = v125;
          v83 = v128;
          v42 = v139;
          v49 = v140;
          a1 = v141;
          continue;
        }

        v148 = ~v97;
LABEL_60:
        v101 = v155;
        sub_24B2BF490(*(v154 + 48) + v98 * v151, v155, type metadata accessor for PeopleProvider.Subscription);
        v102 = *(v4 + 48);
        sub_24B2BF490(v101, v6, type metadata accessor for PeopleProvider.Subscription);
        sub_24B2BF490(v152, &v6[v102], type metadata accessor for PeopleProvider.Subscription);
        v103 = v149;
        if (v149(v6, 1, v41) == 1)
        {
          sub_24B2BF3E8(v101, type metadata accessor for PeopleProvider.Subscription);
          if (v103(&v6[v102], 1, v41) == 1)
          {
            goto LABEL_69;
          }

LABEL_58:
          sub_24AFF8258(v6, &qword_27EFCC6D0, &qword_24B2EBE70);
        }

        else
        {
          v104 = v147;
          sub_24B2BF490(v6, v147, type metadata accessor for PeopleProvider.Subscription);
          if (v103(&v6[v102], 1, v41) == 1)
          {
            sub_24B2BF3E8(v155, type metadata accessor for PeopleProvider.Subscription);
            (*v146)(v104, v41);
            goto LABEL_58;
          }

          (*v142)(v145, &v6[v102], v41);
          sub_24B2BF448(&qword_27EFCC6D8, MEMORY[0x277D08B50], MEMORY[0x277D08B68]);
          sub_24B2D54E4();
          sub_24B2D54E4();
          if (v158 == v156 && v159 == v157)
          {
            v107 = *v146;
            v41 = v144;
            (*v146)(v145, v144);
            sub_24B2BF3E8(v155, type metadata accessor for PeopleProvider.Subscription);

            v107(v147, v41);
LABEL_69:
            sub_24B2BF3E8(v6, type metadata accessor for PeopleProvider.Subscription);
            sub_24B2BF3E8(v152, type metadata accessor for PeopleProvider.Subscription);
            v108 = v138[v99];
            v138[v99] = v108 & ~v100;
            v63 = (v108 & v100) == 0;
            v45 = v129;
            v82 = v125;
            v83 = v128;
            v42 = v139;
            v49 = v140;
            a1 = v141;
            if (!v63)
            {
              v81 = v137 - 1;
              if (__OFSUB__(v137, 1))
              {
                __break(1u);
              }

              if (v137 == 1)
              {

                v154 = MEMORY[0x277D84FA0];
                goto LABEL_74;
              }

              goto LABEL_38;
            }

            continue;
          }

          v105 = sub_24B2D6004();
          v106 = *v146;
          v41 = v144;
          (*v146)(v145, v144);
          sub_24B2BF3E8(v155, type metadata accessor for PeopleProvider.Subscription);

          v106(v147, v41);
          v4 = v143;
          if (v105)
          {
            goto LABEL_69;
          }

          sub_24B2BF3E8(v6, type metadata accessor for PeopleProvider.Subscription);
        }

        v98 = (v98 + 1) & v148;
        v99 = v98 >> 6;
        v100 = 1 << v98;
        if ((v150[v98 >> 6] & (1 << v98)) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_60;
      }

      break;
    }

    if (v42 <= v49 + 1)
    {
      v85 = v49 + 1;
    }

    else
    {
      v85 = v42;
    }

    v86 = v85 - 1;
    while (1)
    {
      v84 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v84 >= v42)
      {
        v88 = 0;
        v89 = 1;
        v49 = v86;
        goto LABEL_51;
      }

      a1 = *(v83 + 8 * v84);
      ++v49;
      if (a1)
      {
        v49 = v84;
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    v111 = v43;

    v112 = v111;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v113 = swift_slowAlloc();
  memcpy(v113, v150, v112);
  v114 = v117;
  sub_24B2B4FB8(v113, v123, v154, v41, &v160);
  v116 = v115;

  if (v114)
  {

    result = MEMORY[0x24C23D530](v113, -1, -1);
    __break(1u);
  }

  else
  {

    MEMORY[0x24C23D530](v113, -1, -1);
    v154 = v116;
LABEL_74:
    v109 = v160;
LABEL_75:
    sub_24B0363BC(v109);
    return v154;
  }

  return result;
}

uint64_t sub_24B2ACBA8(uint64_t a1, uint64_t a2)
{
  v106 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85D0, &qword_24B2E0A80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v74 - v9;
  v90 = type metadata accessor for ItemsLocationsProvider.Subscription(0);
  MEMORY[0x28223BE20](v90);
  v92 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v96 = &v74 - v13;
  MEMORY[0x28223BE20](v14);
  v76 = &v74 - v15;
  MEMORY[0x28223BE20](v16);
  v79 = (&v74 - v18);
  if (*(a2 + 16))
  {
    v80 = v7;
    v74 = 0;
    v20 = a1 + 56;
    v19 = *(a1 + 56);
    v21 = -1 << *(a1 + 32);
    v89 = ~v21;
    if (-v21 < 64)
    {
      v22 = ~(-1 << -v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & v19;
    v24 = (63 - v21) >> 6;
    v88 = (v17 + 56);
    v77 = v17;
    v87 = (v17 + 48);
    v93 = (a2 + 56);

    v26 = 0;
    v91 = a2;
    v85 = a1;
    v84 = a1 + 56;
    v86 = v24;
    v75 = v10;
    while (1)
    {
      v27 = v23;
      v28 = v26;
      if (!v23)
      {
        if (v24 <= v26 + 1)
        {
          v29 = v26 + 1;
        }

        else
        {
          v29 = v24;
        }

        v30 = v29 - 1;
        v31 = v26;
        while (1)
        {
          v28 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          if (v28 >= v24)
          {
            v2 = 0;
            v32 = 1;
            goto LABEL_16;
          }

          v27 = *(v20 + 8 * v28);
          ++v31;
          if (v27)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_68;
      }

LABEL_15:
      v2 = (v27 - 1) & v27;
      sub_24B2BF490(*(a1 + 48) + v77[9] * (__clz(__rbit64(v27)) | (v28 << 6)), v10, type metadata accessor for ItemsLocationsProvider.Subscription);
      v32 = 0;
      v30 = v28;
LABEL_16:
      v33 = v90;
      v83 = *v88;
      v83(v10, v32, 1, v90);
      v101 = a1;
      v102 = v20;
      v103 = v89;
      v104 = v30;
      v105 = v2;
      v82 = *v87;
      if (v82(v10, 1, v33) == 1)
      {
        goto LABEL_66;
      }

      sub_24B2BF380(v10, v79, type metadata accessor for ItemsLocationsProvider.Subscription);
      sub_24B2D60E4();
      v34 = sub_24B2D1DA4();
      v35 = sub_24B2BF448(&qword_27EFCC630, MEMORY[0x277D08E20], MEMORY[0x277D08E28]);
      v95 = v34;
      v81 = v35;
      sub_24B2D5254();
      sub_24B2D5404();
      v36 = sub_24B2D6124();
      v37 = -1 << *(a2 + 32);
      v20 = v36 & ~v37;
      v24 = v20 >> 6;
      a1 = 1 << v20;
      v38 = v76;
      if (((1 << v20) & v93[v20 >> 6]) != 0)
      {
        break;
      }

LABEL_6:
      sub_24B2BF3E8(v79, type metadata accessor for ItemsLocationsProvider.Subscription);
      v26 = v30;
      v23 = v2;
      v20 = v84;
      v24 = v86;
      v10 = v75;
      a1 = v85;
    }

    v78 = ~v37;
    v94 = v77[9];
    while (1)
    {
      sub_24B2BF490(*(a2 + 48) + v94 * v20, v38, type metadata accessor for ItemsLocationsProvider.Subscription);
      sub_24B2BF448(&qword_27EFCC6E8, MEMORY[0x277D08E20], MEMORY[0x277D08E40]);
      sub_24B2D54E4();
      sub_24B2D54E4();
      v39 = v99 == v97 && v100 == v98;
      v40 = v38;
      if (v39)
      {
        break;
      }

      v41 = sub_24B2D6004();

      if (v41)
      {
        goto LABEL_29;
      }

      sub_24B2BF3E8(v40, type metadata accessor for ItemsLocationsProvider.Subscription);
      v20 = (v20 + 1) & v78;
      v24 = v20 >> 6;
      a1 = 1 << v20;
      v38 = v40;
      a2 = v91;
      if ((v93[v20 >> 6] & (1 << v20)) == 0)
      {
        goto LABEL_6;
      }
    }

LABEL_29:
    sub_24B2BF3E8(v40, type metadata accessor for ItemsLocationsProvider.Subscription);
    v42 = sub_24B2BF3E8(v79, type metadata accessor for ItemsLocationsProvider.Subscription);
    v10 = v91;
    v43 = *(v91 + 32);
    v76 = ((1 << v43) + 63) >> 6;
    v25 = 8 * v76;
    a2 = v86;
    if ((v43 & 0x3Fu) <= 0xD)
    {
      goto LABEL_30;
    }

LABEL_68:
    v69 = v25;

    v70 = v69;
    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_30:
      v77 = &v74;
      MEMORY[0x28223BE20](v42);
      v45 = &v74 - ((v44 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v45, v93, v44);
      v46 = *&v45[8 * v24] & ~a1;
      v47 = *(v10 + 2);
      v79 = v45;
      *&v45[8 * v24] = v46;
      v48 = v47 - 1;
      v49 = v80;
      v50 = v84;
      v51 = v85;
LABEL_31:
      v78 = v48;
      while (v2)
      {
        v52 = v30;
LABEL_43:
        v55 = __clz(__rbit64(v2));
        v2 &= v2 - 1;
        sub_24B2BF490(*(v51 + 48) + (v55 | (v52 << 6)) * v94, v49, type metadata accessor for ItemsLocationsProvider.Subscription);
        v56 = 0;
LABEL_44:
        v57 = v90;
        v83(v49, v56, 1, v90);
        v101 = v51;
        v102 = v50;
        v103 = v89;
        v104 = v30;
        v105 = v2;
        if (v82(v49, 1, v57) == 1)
        {
          sub_24AFF8258(v49, &qword_27EFC85D0, &qword_24B2E0A80);
          a2 = sub_24B2A267C(v79, v76, v78, v10);
          goto LABEL_62;
        }

        sub_24B2BF380(v49, v96, type metadata accessor for ItemsLocationsProvider.Subscription);
        sub_24B2D60E4();
        sub_24B2D5254();
        sub_24B2D5404();
        v58 = sub_24B2D6124();
        v59 = -1 << v10[32];
        v60 = v58 & ~v59;
        v61 = v60 >> 6;
        v62 = 1 << v60;
        if (((1 << v60) & v93[v60 >> 6]) != 0)
        {
          a1 = ~v59;
          v63 = v92;
          while (1)
          {
            sub_24B2BF490(*(v10 + 6) + v60 * v94, v63, type metadata accessor for ItemsLocationsProvider.Subscription);
            sub_24B2D54E4();
            sub_24B2D54E4();
            if (v99 == v97 && v100 == v98)
            {
              break;
            }

            v65 = sub_24B2D6004();

            if (v65)
            {
              goto LABEL_55;
            }

            v63 = v92;
            sub_24B2BF3E8(v92, type metadata accessor for ItemsLocationsProvider.Subscription);
            v60 = (v60 + 1) & a1;
            v61 = v60 >> 6;
            v62 = 1 << v60;
            v10 = v91;
            if ((v93[v60 >> 6] & (1 << v60)) == 0)
            {
              goto LABEL_32;
            }
          }

LABEL_55:
          sub_24B2BF3E8(v92, type metadata accessor for ItemsLocationsProvider.Subscription);
          sub_24B2BF3E8(v96, type metadata accessor for ItemsLocationsProvider.Subscription);
          v66 = v79[v61];
          v79[v61] = v66 & ~v62;
          v39 = (v66 & v62) == 0;
          v10 = v91;
          v51 = v85;
          v49 = v80;
          v50 = v84;
          a2 = v86;
          if (!v39)
          {
            v48 = v78 - 1;
            if (__OFSUB__(v78, 1))
            {
              __break(1u);
            }

            if (v78 == 1)
            {

              a2 = MEMORY[0x277D84FA0];
              goto LABEL_62;
            }

            goto LABEL_31;
          }
        }

        else
        {
LABEL_32:
          sub_24B2BF3E8(v96, type metadata accessor for ItemsLocationsProvider.Subscription);
          v51 = v85;
          v49 = v80;
          v50 = v84;
          a2 = v86;
        }
      }

      if (a2 <= v30 + 1)
      {
        v53 = v30 + 1;
      }

      else
      {
        v53 = a2;
      }

      v54 = v53 - 1;
      while (1)
      {
        v52 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v52 >= a2)
        {
          v2 = 0;
          v56 = 1;
          v30 = v54;
          goto LABEL_44;
        }

        v2 = *(v50 + 8 * v52);
        ++v30;
        if (v2)
        {
          v30 = v52;
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_66:
      sub_24AFF8258(v10, &qword_27EFC85D0, &qword_24B2E0A80);
      v67 = a1;
LABEL_63:
      sub_24B0363BC(v67);
      return a2;
    }

    v71 = swift_slowAlloc();
    memcpy(v71, v93, v70);
    v72 = v74;
    sub_24B2B59F8(v71, v76, v10, v20, &v101);
    a2 = v73;

    if (!v72)
    {

      MEMORY[0x24C23D530](v71, -1, -1);
LABEL_62:
      v67 = v101;
      goto LABEL_63;
    }

    result = MEMORY[0x24C23D530](v71, -1, -1);
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_24B2AD7AC(unint64_t a1, uint64_t a2)
{
  v165 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC6E0, &unk_24B2F0100);
  MEMORY[0x28223BE20](v4);
  v6 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v138 = (&v117 - v8);
  v9 = sub_24B2D1DA4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v145 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v122 = &v117 - v13;
  MEMORY[0x28223BE20](v14);
  v121 = &v117 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85E0, &qword_24B2F5800);
  MEMORY[0x28223BE20](v16 - 8);
  v125 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v117 - v19;
  v136 = type metadata accessor for ItemsProvider.Subscription(0);
  v21 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v147 = &v117 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v24);
  v124 = &v117 - v25;
  MEMORY[0x28223BE20](v26);
  v152 = &v117 - v27;
  MEMORY[0x28223BE20](v28);
  MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  v119 = &v117 - v31;
  MEMORY[0x28223BE20](v32);
  v137 = &v117 - v36;
  v154 = a2;
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v148 = v35;
  v123 = v34;
  v118 = v20;
  v155 = v33;
  v144 = v9;
  v117 = 0;
  v38 = a1 + 56;
  v37 = *(a1 + 56);
  v39 = -1 << *(a1 + 32);
  v135 = ~v39;
  if (-v39 < 64)
  {
    v40 = ~(-1 << -v39);
  }

  else
  {
    v40 = -1;
  }

  v41 = v40 & v37;
  v42 = (63 - v39) >> 6;
  v134 = (v21 + 56);
  v133 = (v21 + 48);
  v153 = (v10 + 48);
  v142 = (v10 + 32);
  v146 = (v10 + 8);
  v150 = (v154 + 56);

  v44 = 0;
  v128 = a1 + 56;
  v45 = a1;
  v120 = v21;
  v129 = a1;
  v143 = v4;
  v139 = v42;
  while (1)
  {
    v46 = v41;
    v47 = v44;
    v151 = v41;
    if (v41)
    {
LABEL_16:
      a1 = (v46 - 1) & v46;
      v51 = v118;
      sub_24B2BF490(*(v45 + 48) + *(v21 + 72) * (__clz(__rbit64(v46)) | (v47 << 6)), v118, type metadata accessor for ItemsProvider.Subscription);
      v52 = 0;
      v49 = v47;
    }

    else
    {
      v48 = v42 <= v44 + 1 ? v44 + 1 : v42;
      v49 = v48 - 1;
      v50 = v44;
      while (1)
      {
        v47 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          goto LABEL_79;
        }

        if (v47 >= v42)
        {
          break;
        }

        v46 = *(v38 + 8 * v47);
        ++v50;
        if (v46)
        {
          v21 = v120;
          goto LABEL_16;
        }
      }

      a1 = 0;
      v52 = 1;
      v51 = v118;
    }

    v53 = v136;
    v127 = *v134;
    v127(v51, v52, 1, v136);
    v160 = v45;
    v161 = v38;
    v162 = v135;
    v163 = v49;
    v164 = a1;
    v126 = *v133;
    if (v126(v51, 1, v53) == 1)
    {
      sub_24AFF8258(v51, &qword_27EFC85E0, &qword_24B2F5800);
      v109 = v45;
      goto LABEL_75;
    }

    v54 = v137;
    sub_24B2BF380(v51, v137, type metadata accessor for ItemsProvider.Subscription);
    sub_24B2D60E4();
    v55 = v119;
    sub_24B2BF490(v54, v119, type metadata accessor for ItemsProvider.Subscription);
    v56 = *v153;
    v57 = v144;
    if ((*v153)(v55, 1, v144) == 1)
    {
      MEMORY[0x24C23C8D0](0);
    }

    else
    {
      v58 = v121;
      (*v142)(v121, v55, v57);
      MEMORY[0x24C23C8D0](1);
      sub_24B2BF448(&qword_27EFCC630, MEMORY[0x277D08E20], MEMORY[0x277D08E28]);
      sub_24B2D5254();
      (*v146)(v58, v57);
    }

    v59 = sub_24B2D6124();
    v60 = -1 << *(v154 + 32);
    v41 = v59 & ~v60;
    v61 = v41 >> 6;
    v62 = 1 << v41;
    if (((1 << v41) & v150[v41 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_24B2BF3E8(v137, type metadata accessor for ItemsProvider.Subscription);
    v44 = v49;
    v41 = a1;
    v38 = v128;
    v45 = v129;
    v21 = v120;
  }

  v130 = ~v60;
  v151 = *(v120 + 72);
  v149 = v56;
  v140 = v49;
  v141 = a1;
  while (1)
  {
    v131 = v62;
    v132 = v61;
    v65 = v56;
    v66 = v148;
    sub_24B2BF490(*(v154 + 48) + v151 * v41, v148, type metadata accessor for ItemsProvider.Subscription);
    v67 = *(v4 + 48);
    v68 = v138;
    sub_24B2BF490(v66, v138, type metadata accessor for ItemsProvider.Subscription);
    sub_24B2BF490(v137, v68 + v67, type metadata accessor for ItemsProvider.Subscription);
    v69 = v144;
    if (v65(v68, 1, v144) == 1)
    {
      sub_24B2BF3E8(v66, type metadata accessor for ItemsProvider.Subscription);
      v63 = v65(v68 + v67, 1, v69) == 1;
      v64 = v68;
      v56 = v65;
      if (v63)
      {
        goto LABEL_36;
      }

      goto LABEL_24;
    }

    v70 = v123;
    sub_24B2BF490(v68, v123, type metadata accessor for ItemsProvider.Subscription);
    if (v65(v68 + v67, 1, v69) == 1)
    {
      v56 = v65;
      sub_24B2BF3E8(v148, type metadata accessor for ItemsProvider.Subscription);
      (*v146)(v70, v69);
      v64 = v68;
      v42 = v139;
LABEL_24:
      sub_24AFF8258(v64, &qword_27EFCC6E0, &unk_24B2F0100);
      goto LABEL_25;
    }

    (*v142)(v122, v68 + v67, v69);
    sub_24B2BF448(&qword_27EFCC6E8, MEMORY[0x277D08E20], MEMORY[0x277D08E40]);
    sub_24B2D54E4();
    sub_24B2D54E4();
    if (v158 == v156 && v159 == v157)
    {
      break;
    }

    v71 = sub_24B2D6004();
    v72 = *v146;
    v73 = v144;
    (*v146)(v122, v144);
    sub_24B2BF3E8(v148, type metadata accessor for ItemsProvider.Subscription);

    v72(v123, v73);
    v49 = v140;
    v56 = v149;
    v64 = v138;
    v42 = v139;
    if (v71)
    {
      goto LABEL_36;
    }

    sub_24B2BF3E8(v138, type metadata accessor for ItemsProvider.Subscription);
LABEL_25:
    v4 = v143;
    a1 = v141;
    v41 = (v41 + 1) & v130;
    v61 = v41 >> 6;
    v62 = 1 << v41;
    if ((v150[v41 >> 6] & (1 << v41)) == 0)
    {
      goto LABEL_6;
    }
  }

  v74 = *v146;
  v75 = v144;
  (*v146)(v122, v144);
  sub_24B2BF3E8(v148, type metadata accessor for ItemsProvider.Subscription);

  v74(v123, v75);
  v49 = v140;
  v64 = v138;
  v42 = v139;
LABEL_36:
  sub_24B2BF3E8(v64, type metadata accessor for ItemsProvider.Subscription);
  v76 = sub_24B2BF3E8(v137, type metadata accessor for ItemsProvider.Subscription);
  v77 = *(v154 + 32);
  v123 = ((1 << v77) + 63) >> 6;
  v43 = 8 * v123;
  v4 = v143;
  a1 = v141;
  v45 = v129;
  if ((v77 & 0x3Fu) > 0xD)
  {
    goto LABEL_80;
  }

  while (2)
  {
    v130 = &v117;
    MEMORY[0x28223BE20](v76);
    v79 = &v117 - ((v78 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v79, v150, v78);
    v80 = *&v79[8 * v132] & ~v131;
    v138 = v79;
    *&v79[8 * v132] = v80;
    v81 = *(v154 + 16) - 1;
    v41 = v144;
    v82 = v125;
    v83 = v128;
LABEL_38:
    v137 = v81;
    while (2)
    {
      if (a1)
      {
        v84 = v49;
LABEL_50:
        v87 = __clz(__rbit64(a1));
        v88 = (a1 - 1) & a1;
        sub_24B2BF490(*(v45 + 48) + (v87 | (v84 << 6)) * v151, v82, type metadata accessor for ItemsProvider.Subscription);
        v89 = 0;
LABEL_51:
        v90 = v136;
        v127(v82, v89, 1, v136);
        v160 = v45;
        v161 = v83;
        v162 = v135;
        v163 = v49;
        v164 = v88;
        if (v126(v82, 1, v90) == 1)
        {
          sub_24AFF8258(v82, &qword_27EFC85E0, &qword_24B2F5800);
          v154 = sub_24B2A29B4(v138, v123, v137, v154);
          goto LABEL_74;
        }

        v91 = v82;
        v92 = v152;
        sub_24B2BF380(v91, v152, type metadata accessor for ItemsProvider.Subscription);
        sub_24B2D60E4();
        v93 = v124;
        sub_24B2BF490(v92, v124, type metadata accessor for ItemsProvider.Subscription);
        v94 = v149(v93, 1, v41);
        v140 = v49;
        v141 = v88;
        if (v94 == 1)
        {
          MEMORY[0x24C23C8D0](0);
        }

        else
        {
          v95 = v121;
          (*v142)(v121, v93, v41);
          MEMORY[0x24C23C8D0](1);
          sub_24B2BF448(&qword_27EFCC630, MEMORY[0x277D08E20], MEMORY[0x277D08E28]);
          sub_24B2D5254();
          (*v146)(v95, v41);
        }

        v96 = sub_24B2D6124();
        v97 = -1 << *(v154 + 32);
        v98 = v96 & ~v97;
        v99 = v98 >> 6;
        v100 = 1 << v98;
        if (((1 << v98) & v150[v98 >> 6]) == 0)
        {
LABEL_39:
          sub_24B2BF3E8(v152, type metadata accessor for ItemsProvider.Subscription);
          v45 = v129;
          v82 = v125;
          v83 = v128;
          v42 = v139;
          v49 = v140;
          a1 = v141;
          continue;
        }

        v148 = ~v97;
LABEL_60:
        v101 = v155;
        sub_24B2BF490(*(v154 + 48) + v98 * v151, v155, type metadata accessor for ItemsProvider.Subscription);
        v102 = *(v4 + 48);
        sub_24B2BF490(v101, v6, type metadata accessor for ItemsProvider.Subscription);
        sub_24B2BF490(v152, &v6[v102], type metadata accessor for ItemsProvider.Subscription);
        v103 = v149;
        if (v149(v6, 1, v41) == 1)
        {
          sub_24B2BF3E8(v101, type metadata accessor for ItemsProvider.Subscription);
          if (v103(&v6[v102], 1, v41) == 1)
          {
            goto LABEL_69;
          }

LABEL_58:
          sub_24AFF8258(v6, &qword_27EFCC6E0, &unk_24B2F0100);
        }

        else
        {
          v104 = v147;
          sub_24B2BF490(v6, v147, type metadata accessor for ItemsProvider.Subscription);
          if (v103(&v6[v102], 1, v41) == 1)
          {
            sub_24B2BF3E8(v155, type metadata accessor for ItemsProvider.Subscription);
            (*v146)(v104, v41);
            goto LABEL_58;
          }

          (*v142)(v145, &v6[v102], v41);
          sub_24B2BF448(&qword_27EFCC6E8, MEMORY[0x277D08E20], MEMORY[0x277D08E40]);
          sub_24B2D54E4();
          sub_24B2D54E4();
          if (v158 == v156 && v159 == v157)
          {
            v107 = *v146;
            v41 = v144;
            (*v146)(v145, v144);
            sub_24B2BF3E8(v155, type metadata accessor for ItemsProvider.Subscription);

            v107(v147, v41);
LABEL_69:
            sub_24B2BF3E8(v6, type metadata accessor for ItemsProvider.Subscription);
            sub_24B2BF3E8(v152, type metadata accessor for ItemsProvider.Subscription);
            v108 = v138[v99];
            v138[v99] = v108 & ~v100;
            v63 = (v108 & v100) == 0;
            v45 = v129;
            v82 = v125;
            v83 = v128;
            v42 = v139;
            v49 = v140;
            a1 = v141;
            if (!v63)
            {
              v81 = v137 - 1;
              if (__OFSUB__(v137, 1))
              {
                __break(1u);
              }

              if (v137 == 1)
              {

                v154 = MEMORY[0x277D84FA0];
                goto LABEL_74;
              }

              goto LABEL_38;
            }

            continue;
          }

          v105 = sub_24B2D6004();
          v106 = *v146;
          v41 = v144;
          (*v146)(v145, v144);
          sub_24B2BF3E8(v155, type metadata accessor for ItemsProvider.Subscription);

          v106(v147, v41);
          v4 = v143;
          if (v105)
          {
            goto LABEL_69;
          }

          sub_24B2BF3E8(v6, type metadata accessor for ItemsProvider.Subscription);
        }

        v98 = (v98 + 1) & v148;
        v99 = v98 >> 6;
        v100 = 1 << v98;
        if ((v150[v98 >> 6] & (1 << v98)) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_60;
      }

      break;
    }

    if (v42 <= v49 + 1)
    {
      v85 = v49 + 1;
    }

    else
    {
      v85 = v42;
    }

    v86 = v85 - 1;
    while (1)
    {
      v84 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v84 >= v42)
      {
        v88 = 0;
        v89 = 1;
        v49 = v86;
        goto LABEL_51;
      }

      a1 = *(v83 + 8 * v84);
      ++v49;
      if (a1)
      {
        v49 = v84;
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    v111 = v43;

    v112 = v111;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v113 = swift_slowAlloc();
  memcpy(v113, v150, v112);
  v114 = v117;
  sub_24B2B5F64(v113, v123, v154, v41, &v160);
  v116 = v115;

  if (v114)
  {

    result = MEMORY[0x24C23D530](v113, -1, -1);
    __break(1u);
  }

  else
  {

    MEMORY[0x24C23D530](v113, -1, -1);
    v154 = v116;
LABEL_74:
    v109 = v160;
LABEL_75:
    sub_24B0363BC(v109);
    return v154;
  }

  return result;
}

uint64_t sub_24B2AECDC(unint64_t a1, uint64_t a2)
{
  v173 = *MEMORY[0x277D85DE8];
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBC8, &qword_24B2EF018);
  MEMORY[0x28223BE20](v162);
  v5 = &v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v131 - v7;
  v159 = sub_24B2D1704();
  v9 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v155 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v135 = &v131 - v12;
  MEMORY[0x28223BE20](v13);
  v137 = &v131 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85B8, &qword_24B2F15B0);
  MEMORY[0x28223BE20](v15 - 8);
  v142 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v133 = &v131 - v18;
  v19 = type metadata accessor for SettingsContactsProvider.Subscription(0);
  MEMORY[0x28223BE20](v19);
  v157 = (&v131 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v166 = &v131 - v22;
  MEMORY[0x28223BE20](v23);
  v160 = &v131 - v24;
  MEMORY[0x28223BE20](v25);
  v141 = &v131 - v26;
  MEMORY[0x28223BE20](v27);
  v163 = &v131 - v28;
  MEMORY[0x28223BE20](v29);
  v140 = (&v131 - v30);
  MEMORY[0x28223BE20](v31);
  MEMORY[0x28223BE20](v32);
  v161 = &v131 - v33;
  MEMORY[0x28223BE20](v34);
  v132 = &v131 - v35;
  MEMORY[0x28223BE20](v36);
  v136 = &v131 - v39;
  v167 = a2;
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v139 = v38;
  v131 = 0;
  v41 = a1 + 56;
  v40 = *(a1 + 56);
  v42 = -1 << *(a1 + 32);
  v151 = ~v42;
  if (-v42 < 64)
  {
    v43 = ~(-1 << -v42);
  }

  else
  {
    v43 = -1;
  }

  v44 = v43 & v40;
  v143 = (63 - v42) >> 6;
  v150 = (v37 + 56);
  v134 = v37;
  v149 = (v37 + 48);
  v156 = (v9 + 32);
  v158 = (v9 + 8);
  v164 = (v167 + 56);

  v46 = 0;
  v146 = a1 + 56;
  for (i = a1; ; a1 = i)
  {
    v47 = v44;
    v48 = v46;
    v165 = v44;
    if (v44)
    {
LABEL_15:
      v52 = (v47 - 1) & v47;
      v53 = v133;
      sub_24B2BF490(*(a1 + 48) + *(v134 + 72) * (__clz(__rbit64(v47)) | (v48 << 6)), v133, type metadata accessor for SettingsContactsProvider.Subscription);
      v54 = 0;
      v50 = v48;
    }

    else
    {
      v49 = v143 <= (v46 + 1) ? v46 + 1 : v143;
      v50 = v49 - 1;
      v51 = v46;
      while (1)
      {
        v48 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          goto LABEL_88;
        }

        if (v48 >= v143)
        {
          break;
        }

        v47 = *(v41 + 8 * v48);
        ++v51;
        if (v47)
        {
          goto LABEL_15;
        }
      }

      v52 = 0;
      v54 = 1;
      v53 = v133;
    }

    v145 = *v150;
    v145(v53, v54, 1, v19);
    v168 = a1;
    v169 = v41;
    v170 = v151;
    v171 = v50;
    v172 = v52;
    v144 = *v149;
    if (v144(v53, 1, v19) == 1)
    {
      sub_24AFF8258(v53, &qword_27EFC85B8, &qword_24B2F15B0);
      v123 = a1;
      goto LABEL_84;
    }

    v55 = v53;
    v9 = v136;
    sub_24B2BF380(v55, v136, type metadata accessor for SettingsContactsProvider.Subscription);
    sub_24B2D60E4();
    v56 = v132;
    sub_24B2BF490(v9, v132, type metadata accessor for SettingsContactsProvider.Subscription);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v154 = v50;
    v153 = v52;
    if (EnumCaseMultiPayload == 1)
    {
      MEMORY[0x24C23C8D0](1);
      sub_24B2D5404();
    }

    else
    {
      v58 = v137;
      v59 = v159;
      (*v156)(v137, v56, v159);
      MEMORY[0x24C23C8D0](0);
      sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
      sub_24B2D5254();
      (*v158)(v58, v59);
    }

    v60 = sub_24B2D6124();
    v61 = -1 << *(v167 + 32);
    v46 = v60 & ~v61;
    v62 = v46 >> 6;
    a1 = 1 << v46;
    if (((1 << v46) & v164[v46 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_24B2BF3E8(v9, type metadata accessor for SettingsContactsProvider.Subscription);
    v46 = v154;
    v44 = v153;
    v41 = v146;
  }

  v152 = ~v61;
  v165 = *(v134 + 72);
  while (1)
  {
    v63 = v161;
    sub_24B2BF490(*(v167 + 48) + v165 * v46, v161, type metadata accessor for SettingsContactsProvider.Subscription);
    v64 = &v8[*(v162 + 48)];
    sub_24B2BF490(v63, v8, type metadata accessor for SettingsContactsProvider.Subscription);
    sub_24B2BF490(v9, v64, type metadata accessor for SettingsContactsProvider.Subscription);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    v72 = v139;
    sub_24B2BF490(v8, v139, type metadata accessor for SettingsContactsProvider.Subscription);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v148 = v62;
      v73 = v135;
      v74 = v159;
      (*v156)(v135, v64, v159);
      MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 = _s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0();
      v75 = v72;
      v76 = *v158;
      v77 = v73;
      v9 = v136;
      (*v158)(v77, v74);
      sub_24B2BF3E8(v161, type metadata accessor for SettingsContactsProvider.Subscription);
      v76(v75, v74);
      if (MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0)
      {
        goto LABEL_40;
      }

      goto LABEL_35;
    }

    sub_24B2BF3E8(v161, type metadata accessor for SettingsContactsProvider.Subscription);
    (*v158)(v72, v159);
LABEL_23:
    sub_24AFF8258(v8, &qword_27EFCDBC8, &qword_24B2EF018);
LABEL_24:
    v46 = (v46 + 1) & v152;
    v62 = v46 >> 6;
    a1 = 1 << v46;
    if ((v164[v46 >> 6] & (1 << v46)) == 0)
    {
      goto LABEL_6;
    }
  }

  v148 = v62;
  v65 = v140;
  sub_24B2BF490(v8, v140, type metadata accessor for SettingsContactsProvider.Subscription);
  v66 = *v65;
  v67 = v65[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24B2BF3E8(v161, type metadata accessor for SettingsContactsProvider.Subscription);

    goto LABEL_23;
  }

  v68 = *v64;
  v69 = *(v64 + 1);
  if (v66 != v68 || v67 != v69)
  {
    v71 = sub_24B2D6004();

    sub_24B2BF3E8(v161, type metadata accessor for SettingsContactsProvider.Subscription);
    if (v71)
    {
      goto LABEL_40;
    }

LABEL_35:
    sub_24B2BF3E8(v8, type metadata accessor for SettingsContactsProvider.Subscription);
    goto LABEL_24;
  }

  sub_24B2BF3E8(v161, type metadata accessor for SettingsContactsProvider.Subscription);
LABEL_40:
  sub_24B2BF3E8(v8, type metadata accessor for SettingsContactsProvider.Subscription);
  v78 = sub_24B2BF3E8(v9, type metadata accessor for SettingsContactsProvider.Subscription);
  v79 = *(v167 + 32);
  v50 = ((1 << v79) + 63) >> 6;
  v45 = 8 * v50;
  v9 = v148;
  if ((v79 & 0x3Fu) > 0xD)
  {
    goto LABEL_89;
  }

  while (2)
  {
    v139 = v50;
    v140 = &v131;
    MEMORY[0x28223BE20](v78);
    v81 = &v131 - ((v80 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v81, v164, v80);
    v82 = *&v81[8 * v9] & ~a1;
    v152 = v81;
    *&v81[8 * v9] = v82;
    v83 = *(v167 + 16) - 1;
    v9 = 1;
    v84 = i;
    v85 = v142;
    v46 = v146;
    v86 = v143;
    v87 = v154;
    v50 = v153;
LABEL_42:
    v148 = v83;
    while (2)
    {
      if (v50)
      {
        v88 = v87;
LABEL_54:
        v91 = __clz(__rbit64(v50));
        v92 = (v50 - 1) & v50;
        sub_24B2BF490(*(v84 + 48) + (v91 | (v88 << 6)) * v165, v85, type metadata accessor for SettingsContactsProvider.Subscription);
        v93 = 0;
LABEL_55:
        v145(v85, v93, 1, v19);
        v168 = v84;
        v169 = v46;
        v170 = v151;
        v171 = v87;
        v172 = v92;
        if (v144(v85, 1, v19) == 1)
        {
          sub_24AFF8258(v85, &qword_27EFC85B8, &qword_24B2F15B0);
          v167 = sub_24B2A2E2C(v152, v139, v148, v167);
          goto LABEL_83;
        }

        v94 = v85;
        v95 = v163;
        sub_24B2BF380(v94, v163, type metadata accessor for SettingsContactsProvider.Subscription);
        sub_24B2D60E4();
        v96 = v95;
        v97 = v141;
        sub_24B2BF490(v96, v141, type metadata accessor for SettingsContactsProvider.Subscription);
        v98 = swift_getEnumCaseMultiPayload();
        v154 = v87;
        v153 = v92;
        if (v98 == 1)
        {
          MEMORY[0x24C23C8D0](1);
          sub_24B2D5404();
        }

        else
        {
          v99 = v137;
          v100 = v97;
          v101 = v159;
          (*v156)(v137, v100, v159);
          MEMORY[0x24C23C8D0](0);
          sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
          sub_24B2D5254();
          (*v158)(v99, v101);
        }

        v102 = v160;
        v103 = sub_24B2D6124();
        v104 = -1 << *(v167 + 32);
        a1 = v103 & ~v104;
        v105 = a1 >> 6;
        v106 = 1 << a1;
        if (((1 << a1) & v164[a1 >> 6]) == 0)
        {
LABEL_43:
          sub_24B2BF3E8(v163, type metadata accessor for SettingsContactsProvider.Subscription);
          v84 = i;
          v85 = v142;
          v46 = v146;
          v86 = v143;
          v87 = v154;
          v50 = v153;
          continue;
        }

        v161 = ~v104;
LABEL_64:
        sub_24B2BF490(*(v167 + 48) + a1 * v165, v102, type metadata accessor for SettingsContactsProvider.Subscription);
        v107 = &v5[*(v162 + 48)];
        sub_24B2BF490(v102, v5, type metadata accessor for SettingsContactsProvider.Subscription);
        sub_24B2BF490(v163, v107, type metadata accessor for SettingsContactsProvider.Subscription);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v108 = v157;
          sub_24B2BF490(v5, v157, type metadata accessor for SettingsContactsProvider.Subscription);
          v109 = *v108;
          v110 = v108[1];
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v111 = *v107;
            v112 = *(v107 + 1);
            v113 = v109 == v111 && v110 == v112;
            v102 = v160;
            if (v113)
            {

              sub_24B2BF3E8(v102, type metadata accessor for SettingsContactsProvider.Subscription);
LABEL_78:
              sub_24B2BF3E8(v5, type metadata accessor for SettingsContactsProvider.Subscription);
              sub_24B2BF3E8(v163, type metadata accessor for SettingsContactsProvider.Subscription);
              v122 = *(v152 + 8 * v105);
              *(v152 + 8 * v105) = v122 & ~v106;
              v84 = i;
              v85 = v142;
              v46 = v146;
              v86 = v143;
              v87 = v154;
              v50 = v153;
              if ((v122 & v106) != 0)
              {
                v83 = v148 - 1;
                if (__OFSUB__(v148, 1))
                {
                  __break(1u);
                }

                if (v148 == 1)
                {

                  v167 = MEMORY[0x277D84FA0];
                  goto LABEL_83;
                }

                goto LABEL_42;
              }

              continue;
            }

            v114 = sub_24B2D6004();

            sub_24B2BF3E8(v102, type metadata accessor for SettingsContactsProvider.Subscription);
            if (v114)
            {
              goto LABEL_78;
            }

LABEL_74:
            sub_24B2BF3E8(v5, type metadata accessor for SettingsContactsProvider.Subscription);
LABEL_63:
            a1 = (a1 + 1) & v161;
            v105 = a1 >> 6;
            v106 = 1 << a1;
            if ((v164[a1 >> 6] & (1 << a1)) == 0)
            {
              goto LABEL_43;
            }

            goto LABEL_64;
          }

          v102 = v160;
          sub_24B2BF3E8(v160, type metadata accessor for SettingsContactsProvider.Subscription);
        }

        else
        {
          sub_24B2BF490(v5, v166, type metadata accessor for SettingsContactsProvider.Subscription);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v115 = v5;
            v116 = v19;
            v117 = v155;
            v118 = v159;
            (*v156)(v155, v107, v159);
            v119 = _s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0();
            v120 = *v158;
            v121 = v117;
            v19 = v116;
            v5 = v115;
            v102 = v160;
            (*v158)(v121, v118);
            sub_24B2BF3E8(v102, type metadata accessor for SettingsContactsProvider.Subscription);
            v120(v166, v118);
            v9 = 1;
            if (v119)
            {
              goto LABEL_78;
            }

            goto LABEL_74;
          }

          sub_24B2BF3E8(v102, type metadata accessor for SettingsContactsProvider.Subscription);
          (*v158)(v166, v159);
        }

        sub_24AFF8258(v5, &qword_27EFCDBC8, &qword_24B2EF018);
        goto LABEL_63;
      }

      break;
    }

    if (v86 <= (v87 + 1))
    {
      v89 = v87 + 1;
    }

    else
    {
      v89 = v86;
    }

    v90 = v89 - 1;
    while (1)
    {
      v88 = v87 + 1;
      if (__OFADD__(v87, 1))
      {
        break;
      }

      if (v88 >= v86)
      {
        v92 = 0;
        v93 = 1;
        v87 = v90;
        goto LABEL_55;
      }

      v50 = *(v46 + 8 * v88);
      ++v87;
      if (v50)
      {
        v87 = v88;
        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    v125 = v45;

    v126 = v125;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v127 = swift_slowAlloc();
  memcpy(v127, v164, v126);
  v128 = v131;
  sub_24B2B69A4(v127, v50, v167, v46, &v168);
  v130 = v129;

  if (v128)
  {

    result = MEMORY[0x24C23D530](v127, -1, -1);
    __break(1u);
  }

  else
  {

    MEMORY[0x24C23D530](v127, -1, -1);
    v167 = v130;
LABEL_83:
    v123 = v168;
LABEL_84:
    sub_24B0363BC(v123);
    return v167;
  }

  return result;
}

uint64_t sub_24B2B00F8(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v54 = *MEMORY[0x277D85DE8];
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
        v5 = *(*(v15 + 48) + (v18 | (v48 << 6)));
        sub_24B2D60E4();
        MEMORY[0x24C23C8D0](0);
        sub_24B2D6104();
        v19 = sub_24B2D6124();
        v20 = -1 << *(v6 + 32);
        v2 = v19 & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
      }

      while (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0);
      v21 = *(v6 + 48);
      if (v5 == *(v21 + v2))
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

        if (v5 == *(v21 + v2))
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

    if (v14 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v40 = swift_slowAlloc();
      memcpy(v40, (v6 + 56), v5);
      v41 = sub_24B2B7340(v40, v14, v6, v2, v50);

      MEMORY[0x24C23D530](v40, -1, -1);
      v4 = v50[0];
      v46 = v51;
      v48 = v52;
      v6 = v41;
      goto LABEL_41;
    }

LABEL_18:
    v43 = v14;
    v44 = &v42;
    MEMORY[0x28223BE20](v22);
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
      v5 = *(*(v4 + 48) + (v29 | (v48 << 6)));
      sub_24B2D60E4();
      v2 = v49;
      MEMORY[0x24C23C8D0](0);
      sub_24B2D6104();
      v30 = sub_24B2D6124();
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = 1 << v32;
      if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) != 0)
      {
        v35 = *(v6 + 48);
        if (v5 == *(v35 + v32))
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

              v6 = MEMORY[0x277D84FA0];
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

            if (v5 == *(v35 + v32))
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
    v6 = sub_24B2A2FF4(v14, v43, v45, v6);
LABEL_41:
    v38 = v4;
LABEL_43:
    sub_24B0363BC(v38);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v6;
}

uint64_t sub_24B2B0588(uint64_t a1, uint64_t a2)
{
  v167 = *MEMORY[0x277D85DE8];
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7A8, &unk_24B2F2FF0);
  MEMORY[0x28223BE20](v154);
  v5 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v127 - v7;
  v161 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v9 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v152 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v132 = &v127 - v12;
  MEMORY[0x28223BE20](v13);
  v133 = &v127 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85C0, &unk_24B2F5790);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v130 = &v127 - v19;
  v146 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
  v20 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v153 = &v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v127 - v23;
  MEMORY[0x28223BE20](v25);
  v136 = &v127 - v26;
  MEMORY[0x28223BE20](v27);
  v155 = &v127 - v28;
  MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  v135 = (&v127 - v31);
  MEMORY[0x28223BE20](v32);
  MEMORY[0x28223BE20](v33);
  v150 = &v127 - v36;
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v129 = v35;
  v134 = v34;
  v137 = v17;
  v128 = 0;
  v37 = a1;
  v39 = a1 + 56;
  v38 = *(a1 + 56);
  v40 = -1 << *(a1 + 32);
  v144 = ~v40;
  if (-v40 < 64)
  {
    v41 = ~(-1 << -v40);
  }

  else
  {
    v41 = -1;
  }

  v42 = (v41 & v38);
  v138 = (63 - v40) >> 6;
  v143 = (v20 + 56);
  v142 = (v20 + 48);
  v43 = v9 + 48;
  v156 = (a2 + 56);
  v145 = v37;

  v45 = 0;
  v141 = v39;
  v160 = (v9 + 48);
  v46 = a2;
  v131 = v20;
  v158 = a2;
  while (1)
  {
    v47 = v42;
    v48 = v45;
    v159 = v42;
    v157 = v45;
    if (v42)
    {
LABEL_16:
      v52 = (v47 - 1) & v47;
      v53 = v145;
      v54 = v130;
      sub_24B2BF490(*(v145 + 48) + *(v20 + 72) * (__clz(__rbit64(v47)) | (v48 << 6)), v130, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      v55 = 0;
      v50 = v48;
    }

    else
    {
      v49 = v138 <= v45 + 1 ? v45 + 1 : v138;
      v50 = v49 - 1;
      v51 = v45;
      while (1)
      {
        v48 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          goto LABEL_73;
        }

        if (v48 >= v138)
        {
          break;
        }

        v47 = *(v39 + 8 * v48);
        ++v51;
        if (v47)
        {
          v20 = v131;
          goto LABEL_16;
        }
      }

      v52 = 0;
      v55 = 1;
      v53 = v145;
      v54 = v130;
    }

    v56 = v146;
    v140 = *v143;
    v140(v54, v55, 1, v146);
    v162 = v53;
    v163 = v39;
    v164 = v144;
    v165 = v50;
    v151 = v52;
    v166 = v52;
    v139 = *v142;
    v57 = v139(v54, 1, v56);
    v58 = v161;
    if (v57 == 1)
    {
      sub_24AFF8258(v54, &qword_27EFC85C0, &unk_24B2F5790);
      sub_24B0363BC(v145);
      return v46;
    }

    v59 = v54;
    v60 = v150;
    sub_24B2BF380(v59, v150, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    sub_24B2D60E4();
    v61 = v60;
    v62 = v129;
    sub_24B2BF490(v61, v129, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    v159 = *v160;
    if (v159(v62, 1, v58) == 1)
    {
      MEMORY[0x24C23C8D0](0);
    }

    else
    {
      v63 = v133;
      sub_24B2BF380(v62, v133, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
      MEMORY[0x24C23C8D0](1);
      sub_24B2D1704();
      sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
      sub_24B2D5254();
      sub_24B2BF3E8(v63, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    }

    v64 = v135;
    v65 = sub_24B2D6124();
    v66 = -1 << *(v46 + 32);
    v43 = v65 & ~v66;
    v67 = v43 >> 6;
    v68 = 1 << v43;
    if (((1 << v43) & v156[v43 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_24B2BF3E8(v150, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    v45 = v50;
    v42 = v151;
    v39 = v141;
    v20 = v131;
  }

  v149 = ~v66;
  v157 = *(v131 + 72);
  while (1)
  {
    v147 = v68;
    v148 = v67;
    sub_24B2BF490(*(v46 + 48) + v157 * v43, v64, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    v70 = *(v154 + 48);
    sub_24B2BF490(v64, v8, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    sub_24B2BF490(v150, &v8[v70], type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    v71 = v8;
    v72 = v161;
    v73 = v8;
    v74 = v159;
    if (v159(v71, 1, v161) == 1)
    {
      sub_24B2BF3E8(v64, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      v69 = v74(v73 + v70, 1, v72);
      v8 = v73;
      if (v69 == 1)
      {
        goto LABEL_32;
      }

      goto LABEL_24;
    }

    v75 = v134;
    sub_24B2BF490(v73, v134, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    if (v74(v73 + v70, 1, v72) != 1)
    {
      break;
    }

    v76 = v135;
    sub_24B2BF3E8(v135, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    v77 = v75;
    v64 = v76;
    sub_24B2BF3E8(v77, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    v8 = v73;
LABEL_24:
    sub_24AFF8258(v8, &qword_27EFCC7A8, &unk_24B2F2FF0);
LABEL_25:
    v46 = v158;
    v43 = (v43 + 1) & v149;
    v67 = v43 >> 6;
    v68 = 1 << v43;
    if ((v156[v43 >> 6] & (1 << v43)) == 0)
    {
      goto LABEL_6;
    }
  }

  v78 = v132;
  sub_24B2BF380(v73 + v70, v132, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
  MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 = _s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0();
  sub_24B2BF3E8(v78, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
  v80 = v135;
  sub_24B2BF3E8(v135, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  v81 = v75;
  v64 = v80;
  sub_24B2BF3E8(v81, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
  v8 = v73;
  if ((MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 & 1) == 0)
  {
    sub_24B2BF3E8(v73, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    goto LABEL_25;
  }

LABEL_32:
  sub_24B2BF3E8(v8, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  v82 = sub_24B2BF3E8(v150, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  v46 = v158;
  v83 = *(v158 + 32);
  v134 = ((1 << v83) + 63) >> 6;
  v44 = 8 * v134;
  v84 = v145;
  if ((v83 & 0x3Fu) > 0xD)
  {
    goto LABEL_74;
  }

  while (2)
  {
    v135 = &v127;
    MEMORY[0x28223BE20](v82);
    v86 = &v127 - ((v85 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v86, v156, v85);
    v87 = *&v86[8 * v148] & ~v147;
    v149 = v86;
    *&v86[8 * v148] = v87;
    v88 = *(v46 + 16) - 1;
    v43 = v137;
    v89 = v141;
    v90 = v138;
    v91 = v151;
LABEL_34:
    v148 = v88;
    while (2)
    {
      if (v91)
      {
        v92 = v46;
        v93 = v50;
        v94 = v161;
LABEL_46:
        v97 = (v91 - 1) & v91;
        sub_24B2BF490(*(v84 + 48) + (__clz(__rbit64(v91)) | (v93 << 6)) * v157, v43, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        v98 = 0;
LABEL_47:
        v99 = v146;
        v140(v43, v98, 1, v146);
        v162 = v84;
        v163 = v89;
        v164 = v144;
        v165 = v50;
        v151 = v97;
        v166 = v97;
        if (v139(v43, 1, v99) == 1)
        {
          sub_24AFF8258(v43, &qword_27EFC85C0, &unk_24B2F5790);
          v46 = sub_24B2A3208(v149, v134, v148, v92);
          goto LABEL_68;
        }

        v100 = v43;
        v101 = v155;
        sub_24B2BF380(v100, v155, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        sub_24B2D60E4();
        v102 = v101;
        v103 = v136;
        sub_24B2BF490(v102, v136, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        if (v159(v103, 1, v94) == 1)
        {
          MEMORY[0x24C23C8D0](0);
        }

        else
        {
          v104 = v133;
          sub_24B2BF380(v103, v133, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
          MEMORY[0x24C23C8D0](1);
          sub_24B2D1704();
          sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
          sub_24B2D5254();
          sub_24B2BF3E8(v104, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
        }

        v150 = v50;
        v105 = sub_24B2D6124();
        v106 = -1 << *(v92 + 32);
        v107 = v105 & ~v106;
        v108 = v107 >> 6;
        v109 = 1 << v107;
        if (((1 << v107) & v156[v107 >> 6]) == 0)
        {
LABEL_35:
          sub_24B2BF3E8(v155, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
          v46 = v158;
          v84 = v145;
          v43 = v137;
          v89 = v141;
          v90 = v138;
          v50 = v150;
          v91 = v151;
          continue;
        }

        v110 = ~v106;
LABEL_56:
        sub_24B2BF490(*(v158 + 48) + v107 * v157, v24, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        v111 = *(v154 + 48);
        sub_24B2BF490(v24, v5, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        sub_24B2BF490(v155, &v5[v111], type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        v112 = v161;
        v113 = v159;
        if (v159(v5, 1, v161) == 1)
        {
          sub_24B2BF3E8(v24, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
          if (v113(&v5[v111], 1, v112) == 1)
          {
            goto LABEL_61;
          }

LABEL_54:
          sub_24AFF8258(v5, &qword_27EFCC7A8, &unk_24B2F2FF0);
        }

        else
        {
          sub_24B2BF490(v5, v153, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
          if (v113(&v5[v111], 1, v112) == 1)
          {
            sub_24B2BF3E8(v24, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
            sub_24B2BF3E8(v153, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
            goto LABEL_54;
          }

          v114 = v24;
          v115 = v153;
          v116 = v152;
          sub_24B2BF380(&v5[v111], v152, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
          v117 = _s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0();
          v118 = v116;
          v119 = v115;
          v24 = v114;
          sub_24B2BF3E8(v118, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
          sub_24B2BF3E8(v114, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
          sub_24B2BF3E8(v119, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
          if (v117)
          {
LABEL_61:
            sub_24B2BF3E8(v5, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
            sub_24B2BF3E8(v155, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
            v120 = *(v149 + 8 * v108);
            *(v149 + 8 * v108) = v120 & ~v109;
            v46 = v158;
            v84 = v145;
            v43 = v137;
            v89 = v141;
            v90 = v138;
            v50 = v150;
            v91 = v151;
            if ((v120 & v109) != 0)
            {
              v88 = v148 - 1;
              if (__OFSUB__(v148, 1))
              {
                __break(1u);
              }

              if (v148 == 1)
              {

                v46 = MEMORY[0x277D84FA0];
                goto LABEL_68;
              }

              goto LABEL_34;
            }

            continue;
          }

          sub_24B2BF3E8(v5, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        }

        v107 = (v107 + 1) & v110;
        v108 = v107 >> 6;
        v109 = 1 << v107;
        if ((v156[v107 >> 6] & (1 << v107)) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_56;
      }

      break;
    }

    if (v90 <= v50 + 1)
    {
      v95 = v50 + 1;
    }

    else
    {
      v95 = v90;
    }

    v96 = v95 - 1;
    while (1)
    {
      v93 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v93 >= v90)
      {
        v92 = v46;
        v97 = 0;
        v98 = 1;
        v50 = v96;
        v94 = v161;
        goto LABEL_47;
      }

      v91 = *(v89 + 8 * v93);
      ++v50;
      if (v91)
      {
        v92 = v46;
        v50 = v93;
        v94 = v161;
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    v122 = v44;

    if (swift_stdlib_isStackAllocationSafe())
    {

      v84 = v145;
      continue;
    }

    break;
  }

  v123 = swift_slowAlloc();
  memcpy(v123, v156, v122);
  v124 = v128;
  sub_24B2B7520(v123, v134, v46, v43, &v162);
  v126 = v125;

  if (v124)
  {

    result = MEMORY[0x24C23D530](v123, -1, -1);
    __break(1u);
  }

  else
  {

    MEMORY[0x24C23D530](v123, -1, -1);
    v46 = v126;
LABEL_68:
    sub_24B0363BC(v162);
    return v46;
  }

  return result;
}

uint64_t sub_24B2B1810(uint64_t a1, uint64_t a2, __n128 a3)
{

  return sub_24B2B18E0(a1, a2, &qword_27EFCC790, &qword_24B2EC000);
}

uint64_t sub_24B2B1878(uint64_t a1, uint64_t a2, __n128 a3)
{

  return sub_24B2B18E0(a1, a2, &qword_27EFCC798, &qword_24B2EC008);
}

uint64_t sub_24B2B18E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = a2;
  v51 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v41 = a3;
    v42 = a4;
    v40 = 0;
    v8 = 0;
    v10 = a1 + 56;
    v9 = *(a1 + 56);
    v11 = -1 << *(a1 + 32);
    v43 = a1;
    v44 = ~v11;
    if (-v11 < 64)
    {
      v12 = ~(-1 << -v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & v9;
    v14 = (63 - v11) >> 6;
    v45 = (a2 + 56);
    v15 = 1;
    do
    {
      if (!v13)
      {
        v18 = v8;
        while (1)
        {
          v19 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            goto LABEL_33;
          }

          if (v19 >= v14)
          {
            break;
          }

          v13 = *(v10 + 8 * v19);
          ++v18;
          if (v13)
          {
            v8 = v19;
            goto LABEL_6;
          }
        }

        goto LABEL_14;
      }

LABEL_6:
      v13 &= v13 - 1;
      sub_24B2D60E4();
      MEMORY[0x24C23C8D0](0);
      v16 = sub_24B2D6124();
      v17 = -1 << *(v7 + 32);
      v5 = v16 & ~v17;
      v4 = v5 >> 6;
      v6 = 1 << v5;
    }

    while (((1 << v5) & v45[v5 >> 6]) == 0);
    v47[0] = v43;
    v47[1] = v10;
    v48 = v44;
    v49 = v8;
    v50 = v13;
    v22 = (63 - v17) >> 6;
    v15 = 8 * v22;

    v38 = v22;
    if (v22 >= 0x81)
    {
      goto LABEL_34;
    }

    while (1)
    {
      v39 = &v37;
      MEMORY[0x28223BE20](v23);
      v5 = &v37 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v5, v45, v15);
      v24 = *(v7 + 16);
      *(v5 + 8 * v4) &= ~v6;
      v6 = v24 - 1;
      v25 = v8;
      v8 = -1;
      while (v13)
      {
LABEL_25:
        v13 &= v13 - 1;
        sub_24B2D60E4();
        v4 = v46;
        MEMORY[0x24C23C8D0](0);
        v28 = sub_24B2D6124() & ~(-1 << *(v7 + 32));
        v29 = v28 >> 6;
        v30 = v45[v28 >> 6];
        v31 = 1 << v28;
        if ((v31 & v30) != 0)
        {
          v32 = *(v5 + 8 * v29);
          *(v5 + 8 * v29) = v32 & ~v31;
          if ((v32 & v31) != 0)
          {
            if (__OFSUB__(v6--, 1))
            {
              __break(1u);
            }

            if (!v6)
            {

              v7 = MEMORY[0x277D84FA0];
LABEL_31:
              v20 = v43;
              goto LABEL_14;
            }
          }
        }
      }

      v26 = v25;
      while (1)
      {
        v27 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v27 >= v14)
        {
          v7 = sub_24B2A366C((&v37 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0)), v38, v6, v7, v41, v42);
          goto LABEL_31;
        }

        v13 = *(v10 + 8 * v27);
        ++v26;
        if (v13)
        {
          v25 = v27;
          goto LABEL_25;
        }
      }

LABEL_33:
      __break(1u);
LABEL_34:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }
    }

    v34 = swift_slowAlloc();
    memcpy(v34, v45, v15);
    v35 = v40;
    v36 = sub_24B2B7DF8(v34, v38, v7, v5, v47, v41, v42);

    if (!v35)
    {

      MEMORY[0x24C23D530](v34, -1, -1);
      v20 = v47[0];
      v44 = v48;
      v7 = v36;
LABEL_14:
      sub_24B0363BC(v20);
      return v7;
    }

    result = MEMORY[0x24C23D530](v34, -1, -1);
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_24B2B1CCC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v73 = a2;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC8650, &qword_24B2EC1D0);
  MEMORY[0x28223BE20](v91);
  v10 = &v72 - v9;
  v79 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  MEMORY[0x28223BE20](v79);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v76 = &v72 - v14;
  v15 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa(0);
  MEMORY[0x28223BE20](v15 - 8);
  v86 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v75 = &v72 - v18;
  v19 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa(0);
  MEMORY[0x28223BE20](v19 - 8);
  v80 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v74 = &v72 - v22;
  v23 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v83 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v89 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v90 = &v72 - v26;
  MEMORY[0x28223BE20](v27);
  v88 = &v72 - v28;
  MEMORY[0x28223BE20](v29);
  v97 = &v72 - v30;
  MEMORY[0x28223BE20](v31);
  v87 = &v72 - v32;
  MEMORY[0x28223BE20](v33);
  v82 = &v72 - v34;
  MEMORY[0x28223BE20](v35);
  v96 = &v72 - v36;
  v37 = *(a3 + 16);
  v38 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v39 = *(a1 + v38) & ((-1 << a4) - 1);
  v77 = a1;
  *(a1 + v38) = v39;
  v78 = v37 - 1;
  v40 = *a5;
  v41 = a5[1];
  v42 = *(*a5 + 16);
  if (v41 == v42)
  {
LABEL_2:

    sub_24B2A0C50(v77, v73, v78, a3);
    return;
  }

  v93 = a3 + 56;
  v81 = a5;
  v85 = v12;
  v95 = a3;
  v84 = v23;
  while (2)
  {
    if (v41 >= v42)
    {
      __break(1u);
LABEL_53:
      __break(1u);
      return;
    }

    v43 = v40 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
    v94 = *(v83 + 72);
    v44 = v82;
    sub_24B2BF490(v43 + v94 * v41, v82, _s14descr285E46659O16SubscriptionDataOMa);
    a5[1] = v41 + 1;
    v45 = v96;
    sub_24B2BF380(v44, v96, _s14descr285E46659O16SubscriptionDataOMa);
    sub_24B2D60E4();
    sub_24B2BF490(v45, v87, _s14descr285E46659O16SubscriptionDataOMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v47 = v75;
        sub_24B2BF380(v87, v75, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
        MEMORY[0x24C23C8D0](3);
        sub_24B2D1704();
        sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
        sub_24B2D5254();
        v48 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa;
      }

      else
      {
        v47 = v74;
        sub_24B2BF380(v87, v74, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
        MEMORY[0x24C23C8D0](2);
        sub_24B2D1704();
        sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
        sub_24B2D5254();
        v48 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          MEMORY[0x24C23C8D0](0);
        }

        else
        {
          MEMORY[0x24C23C8D0](1);
        }

        goto LABEL_17;
      }

      v47 = v76;
      sub_24B2BF380(v87, v76, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      MEMORY[0x24C23C8D0](4);
      sub_24B2D1704();
      sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
      sub_24B2D5254();
      sub_24B2D6104();
      v48 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa;
    }

    sub_24B2BF3E8(v47, v48);
LABEL_17:
    v49 = sub_24B2D6124();
    v50 = -1 << *(a3 + 32);
    v51 = v49 & ~v50;
    v52 = v51 >> 6;
    v53 = 1 << v51;
    if (((1 << v51) & *(v93 + 8 * (v51 >> 6))) == 0)
    {
LABEL_4:
      sub_24B2BF3E8(v96, _s14descr285E46659O16SubscriptionDataOMa);
      a3 = v95;
      goto LABEL_5;
    }

    v92 = ~v50;
    while (1)
    {
      v54 = v97;
      sub_24B2BF490(*(v95 + 48) + v51 * v94, v97, _s14descr285E46659O16SubscriptionDataOMa);
      v55 = *(v91 + 48);
      sub_24B2BF490(v54, v10, _s14descr285E46659O16SubscriptionDataOMa);
      sub_24B2BF490(v96, &v10[v55], _s14descr285E46659O16SubscriptionDataOMa);
      v56 = swift_getEnumCaseMultiPayload();
      if (v56 > 1)
      {
        break;
      }

      v58 = v90;
      if (v56)
      {
        sub_24B2BF490(v10, v90, _s14descr285E46659O16SubscriptionDataOMa);
        v57 = v23;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v66 = v86;
          sub_24B2BF380(&v10[v55], v86, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
          sub_24B2D1704();
          sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8], MEMORY[0x277D08C10]);
          v67 = sub_24B2D52A4();
          v68 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa;
LABEL_43:
          v69 = v68;
          sub_24B2BF3E8(v66, v68);
          sub_24B2BF3E8(v97, _s14descr285E46659O16SubscriptionDataOMa);
          sub_24B2BF3E8(v58, v69);
          if (v67)
          {
            goto LABEL_47;
          }

          sub_24B2BF3E8(v10, _s14descr285E46659O16SubscriptionDataOMa);
          goto LABEL_39;
        }

        sub_24B2BF3E8(v97, _s14descr285E46659O16SubscriptionDataOMa);
        v59 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa;
      }

      else
      {
        v58 = v88;
        sub_24B2BF490(v10, v88, _s14descr285E46659O16SubscriptionDataOMa);
        v57 = v23;
        if (!swift_getEnumCaseMultiPayload())
        {
          v66 = v80;
          sub_24B2BF380(&v10[v55], v80, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
          sub_24B2D1704();
          sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8], MEMORY[0x277D08C10]);
          v67 = sub_24B2D52A4();
          v68 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
          goto LABEL_43;
        }

        sub_24B2BF3E8(v97, _s14descr285E46659O16SubscriptionDataOMa);
        v59 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
      }

      sub_24B2BF3E8(v58, v59);
LABEL_38:
      sub_24AFF8258(v10, &unk_27EFC8650, &qword_24B2EC1D0);
LABEL_39:
      v23 = v57;
LABEL_40:
      v51 = (v51 + 1) & v92;
      v52 = v51 >> 6;
      v53 = 1 << v51;
      if ((*(v93 + 8 * (v51 >> 6)) & (1 << v51)) == 0)
      {
        goto LABEL_4;
      }
    }

    if (v56 != 2)
    {
      if (v56 == 3)
      {
        sub_24B2BF3E8(v97, _s14descr285E46659O16SubscriptionDataOMa);
        v57 = v23;
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          goto LABEL_47;
        }
      }

      else
      {
        sub_24B2BF3E8(v97, _s14descr285E46659O16SubscriptionDataOMa);
        v57 = v23;
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_38;
    }

    v60 = v89;
    sub_24B2BF490(v10, v89, _s14descr285E46659O16SubscriptionDataOMa);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v57 = v23;
      sub_24B2BF3E8(v97, _s14descr285E46659O16SubscriptionDataOMa);
      sub_24B2BF3E8(v60, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      goto LABEL_38;
    }

    v61 = v85;
    sub_24B2BF380(&v10[v55], v85, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
    sub_24B2D1704();
    sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8], MEMORY[0x277D08C10]);
    v62 = sub_24B2D52A4();
    sub_24B2BF3E8(v97, _s14descr285E46659O16SubscriptionDataOMa);
    if ((v62 & 1) == 0)
    {
      sub_24B2BF3E8(v61, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
LABEL_46:
      sub_24B2BF3E8(v60, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      sub_24B2BF3E8(v10, _s14descr285E46659O16SubscriptionDataOMa);
      v23 = v84;
      goto LABEL_40;
    }

    v63 = *(v79 + 20);
    v64 = *(v60 + v63);
    v65 = *(v61 + v63);
    sub_24B2BF3E8(v61, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
    if (v64 != v65)
    {
      goto LABEL_46;
    }

    sub_24B2BF3E8(v60, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
    v57 = v84;
LABEL_47:
    sub_24B2BF3E8(v10, _s14descr285E46659O16SubscriptionDataOMa);
    sub_24B2BF3E8(v96, _s14descr285E46659O16SubscriptionDataOMa);
    v70 = v77[v52];
    v77[v52] = v70 & ~v53;
    if ((v70 & v53) == 0)
    {
      a3 = v95;
      v23 = v57;
      goto LABEL_5;
    }

    v71 = v78 - 1;
    a3 = v95;
    if (__OFSUB__(v78, 1))
    {
      goto LABEL_53;
    }

    --v78;
    v23 = v57;
    if (v71)
    {
LABEL_5:
      a5 = v81;
      v40 = *v81;
      v41 = v81[1];
      v42 = *(*v81 + 16);
      if (v41 == v42)
      {
        goto LABEL_2;
      }

      continue;
    }

    break;
  }
}

void sub_24B2B2A18(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v100 = a5;
  v85[0] = a2;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC8650, &qword_24B2EC1D0);
  MEMORY[0x28223BE20](v104);
  v9 = v85 - v8;
  v91 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  MEMORY[0x28223BE20](v91);
  v97 = v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v89 = v85 - v12;
  v13 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa(0);
  MEMORY[0x28223BE20](v13 - 8);
  v96 = v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v88 = v85 - v16;
  v17 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa(0);
  MEMORY[0x28223BE20](v17 - 8);
  v92 = v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v87 = v85 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF898, &qword_24B2F5828);
  MEMORY[0x28223BE20](v21 - 8);
  v95 = v85 - v22;
  v23 = _s14descr285E46659O16SubscriptionDataOMa(0);
  MEMORY[0x28223BE20](v23);
  v102 = v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v101 = v85 - v26;
  MEMORY[0x28223BE20](v27);
  v103 = v85 - v28;
  MEMORY[0x28223BE20](v29);
  v110 = v85 - v30;
  MEMORY[0x28223BE20](v31);
  v99 = v85 - v32;
  MEMORY[0x28223BE20](v33);
  v108 = v85 - v34;
  v35 = *(a3 + 16);
  v36 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v37 = *(a1 + v36) & ((-1 << a4) - 1);
  v90 = a1;
  *(a1 + v36) = v37;
  v38 = v35 - 1;
  v94 = (v39 + 56);
  v98 = v39;
  v93 = (v39 + 48);
  v109 = a3;
  v107 = a3 + 56;
  do
  {
    v86 = v38;
    do
    {
      while (1)
      {
        v40 = *v100;
        v41 = v100[1];
        v43 = v100[2];
        v42 = v100[3];
        v44 = v100[4];
        if (!v44)
        {
          v46 = (v43 + 64) >> 6;
          if (v46 <= v42 + 1)
          {
            v47 = v42 + 1;
          }

          else
          {
            v47 = (v43 + 64) >> 6;
          }

          v48 = v47 - 1;
          while (1)
          {
            v45 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
              break;
            }

            if (v45 >= v46)
            {
              v49 = 0;
              v51 = 1;
              v50 = v95;
              goto LABEL_14;
            }

            v44 = *(v41 + 8 * v45);
            ++v42;
            if (v44)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
LABEL_59:
          __break(1u);
          return;
        }

        v45 = v100[3];
LABEL_13:
        v49 = (v44 - 1) & v44;
        v50 = v95;
        sub_24B2BF490(*(v40 + 48) + *(v98 + 72) * (__clz(__rbit64(v44)) | (v45 << 6)), v95, _s14descr285E46659O16SubscriptionDataOMa);
        v51 = 0;
        v48 = v45;
LABEL_14:
        (*v94)(v50, v51, 1, v23);
        v52 = v100;
        *v100 = v40;
        v52[1] = v41;
        v52[2] = v43;
        v52[3] = v48;
        v52[4] = v49;
        if ((*v93)(v50, 1, v23) == 1)
        {
          sub_24AFF8258(v50, &qword_27EFCF898, &qword_24B2F5828);
          v84 = v109;

          sub_24B2A0C50(v90, v85[0], v86, v84);
          return;
        }

        v53 = v108;
        sub_24B2BF380(v50, v108, _s14descr285E46659O16SubscriptionDataOMa);
        sub_24B2D60E4();
        sub_24B2BF490(v53, v99, _s14descr285E46659O16SubscriptionDataOMa);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 1)
        {
          v55 = v102;
          if (EnumCaseMultiPayload)
          {
            v56 = v88;
            sub_24B2BF380(v99, v88, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
            MEMORY[0x24C23C8D0](3);
            sub_24B2D1704();
            sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
            sub_24B2D5254();
            v57 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa;
          }

          else
          {
            v56 = v87;
            sub_24B2BF380(v99, v87, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
            MEMORY[0x24C23C8D0](2);
            sub_24B2D1704();
            sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
            sub_24B2D5254();
            v57 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
          }

          goto LABEL_24;
        }

        v55 = v102;
        if (EnumCaseMultiPayload == 2)
        {
          v56 = v89;
          sub_24B2BF380(v99, v89, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
          MEMORY[0x24C23C8D0](4);
          sub_24B2D1704();
          sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
          sub_24B2D5254();
          sub_24B2D6104();
          v57 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa;
LABEL_24:
          sub_24B2BF3E8(v56, v57);
          goto LABEL_25;
        }

        if (EnumCaseMultiPayload == 3)
        {
          MEMORY[0x24C23C8D0](0);
        }

        else
        {
          MEMORY[0x24C23C8D0](1);
        }

LABEL_25:
        v58 = sub_24B2D6124();
        v59 = -1 << *(v109 + 32);
        v60 = v58 & ~v59;
        v61 = v60 >> 6;
        v62 = 1 << v60;
        if (((1 << v60) & *(v107 + 8 * (v60 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        sub_24B2BF3E8(v108, _s14descr285E46659O16SubscriptionDataOMa);
      }

      v105 = ~v59;
      v106 = *(v98 + 72);
      while (1)
      {
        v63 = v110;
        sub_24B2BF490(*(v109 + 48) + v106 * v60, v110, _s14descr285E46659O16SubscriptionDataOMa);
        v64 = *(v104 + 48);
        sub_24B2BF490(v63, v9, _s14descr285E46659O16SubscriptionDataOMa);
        sub_24B2BF490(v108, &v9[v64], _s14descr285E46659O16SubscriptionDataOMa);
        v65 = swift_getEnumCaseMultiPayload();
        if (v65 > 1)
        {
          break;
        }

        if (v65)
        {
          v73 = v23;
          v74 = v101;
          sub_24B2BF490(v9, v101, _s14descr285E46659O16SubscriptionDataOMa);
          v75 = v73;
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v76 = v96;
            sub_24B2BF380(&v9[v64], v96, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
            sub_24B2D1704();
            sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8], MEMORY[0x277D08C10]);
            v77 = sub_24B2D52A4();
            v78 = v76;
            v55 = v102;
            sub_24B2BF3E8(v78, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
            sub_24B2BF3E8(v110, _s14descr285E46659O16SubscriptionDataOMa);
            sub_24B2BF3E8(v74, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
            v23 = v75;
            if (v77)
            {
              goto LABEL_53;
            }

            goto LABEL_51;
          }

          sub_24B2BF3E8(v110, _s14descr285E46659O16SubscriptionDataOMa);
          sub_24B2BF3E8(v74, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
          v23 = v73;
        }

        else
        {
          sub_24B2BF490(v9, v103, _s14descr285E46659O16SubscriptionDataOMa);
          if (!swift_getEnumCaseMultiPayload())
          {
            v79 = v92;
            sub_24B2BF380(&v9[v64], v92, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
            sub_24B2D1704();
            sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8], MEMORY[0x277D08C10]);
            v80 = v103;
            v81 = sub_24B2D52A4();
            v82 = v79;
            v55 = v102;
            sub_24B2BF3E8(v82, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
            sub_24B2BF3E8(v110, _s14descr285E46659O16SubscriptionDataOMa);
            sub_24B2BF3E8(v80, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
            if (v81)
            {
              goto LABEL_53;
            }

            goto LABEL_51;
          }

          sub_24B2BF3E8(v110, _s14descr285E46659O16SubscriptionDataOMa);
          sub_24B2BF3E8(v103, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
        }

LABEL_28:
        sub_24AFF8258(v9, &unk_27EFC8650, &qword_24B2EC1D0);
LABEL_29:
        v60 = (v60 + 1) & v105;
        v61 = v60 >> 6;
        v62 = 1 << v60;
        if ((*(v107 + 8 * (v60 >> 6)) & (1 << v60)) == 0)
        {
          goto LABEL_3;
        }
      }

      if (v65 != 2)
      {
        if (v65 == 3)
        {
          sub_24B2BF3E8(v110, _s14descr285E46659O16SubscriptionDataOMa);
          if (swift_getEnumCaseMultiPayload() == 3)
          {
            goto LABEL_53;
          }
        }

        else
        {
          sub_24B2BF3E8(v110, _s14descr285E46659O16SubscriptionDataOMa);
          if (swift_getEnumCaseMultiPayload() == 4)
          {
            goto LABEL_53;
          }
        }

        goto LABEL_28;
      }

      sub_24B2BF490(v9, v55, _s14descr285E46659O16SubscriptionDataOMa);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_24B2BF3E8(v110, _s14descr285E46659O16SubscriptionDataOMa);
        sub_24B2BF3E8(v55, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
        goto LABEL_28;
      }

      v66 = &v9[v64];
      v67 = v97;
      sub_24B2BF380(v66, v97, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      sub_24B2D1704();
      sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8], MEMORY[0x277D08C10]);
      v68 = sub_24B2D52A4();
      sub_24B2BF3E8(v110, _s14descr285E46659O16SubscriptionDataOMa);
      if ((v68 & 1) == 0)
      {
        sub_24B2BF3E8(v67, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
LABEL_50:
        sub_24B2BF3E8(v55, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
LABEL_51:
        sub_24B2BF3E8(v9, _s14descr285E46659O16SubscriptionDataOMa);
        goto LABEL_29;
      }

      v69 = *(v91 + 20);
      v70 = *(v55 + v69);
      v71 = v67;
      v72 = *(v67 + v69);
      sub_24B2BF3E8(v71, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      if (v70 != v72)
      {
        goto LABEL_50;
      }

      sub_24B2BF3E8(v55, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
LABEL_53:
      sub_24B2BF3E8(v9, _s14descr285E46659O16SubscriptionDataOMa);
      sub_24B2BF3E8(v108, _s14descr285E46659O16SubscriptionDataOMa);
      v83 = v90[v61];
      v90[v61] = v83 & ~v62;
    }

    while ((v83 & v62) == 0);
    v38 = v86 - 1;
    if (__OFSUB__(v86, 1))
    {
      goto LABEL_59;
    }
  }

  while (v86 != 1);
}

void sub_24B2B387C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v126 = a5;
  v111 = a2;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC800, &unk_24B2F5680);
  MEMORY[0x28223BE20](v128);
  v132 = &v110 - v8;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC808, &unk_24B2EC080);
  MEMORY[0x28223BE20](v142);
  v10 = &v110 - v9;
  v131 = sub_24B2D14C4();
  v11 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v122 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_24B2D15F4();
  v13 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v138 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v137 = &v110 - v16;
  MEMORY[0x28223BE20](v17);
  v117 = &v110 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC810, &qword_24B2F5690);
  MEMORY[0x28223BE20](v19 - 8);
  v124 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v114 = &v110 - v22;
  MEMORY[0x28223BE20](v23);
  v116 = &v110 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC84B0, &qword_24B2E09E8);
  MEMORY[0x28223BE20](v25 - 8);
  v120 = &v110 - v26;
  v146 = type metadata accessor for ContactsProvider.Subscription(0);
  MEMORY[0x28223BE20](v146);
  v136 = (&v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v135 = &v110 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v110 - v31;
  MEMORY[0x28223BE20](v33);
  v115 = &v110 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v110 - v36;
  v38 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v39 = *(a3 + 16);
  v40 = *(a1 + v38) & ((-1 << a4) - 1);
  v113 = a1;
  *(a1 + v38) = v40;
  v41 = v39 - 1;
  v119 = (v42 + 56);
  v123 = v42;
  v118 = (v42 + 48);
  v130 = (v13 + 32);
  v129 = (v11 + 48);
  v121 = (v11 + 32);
  v125 = (v11 + 8);
  v139 = (v13 + 8);
  v140 = v10;
  v147 = a3;
  v145 = a3 + 56;
  v134 = &v110 - v36;
  v133 = v32;
  do
  {
    v112 = v41;
    do
    {
      while (1)
      {
        v43 = *v126;
        v44 = v126[1];
        v46 = v126[2];
        v45 = v126[3];
        v47 = v126[4];
        if (!v47)
        {
          v49 = (v46 + 64) >> 6;
          if (v49 <= v45 + 1)
          {
            v50 = v45 + 1;
          }

          else
          {
            v50 = (v46 + 64) >> 6;
          }

          v51 = v50 - 1;
          while (1)
          {
            v48 = v45 + 1;
            if (__OFADD__(v45, 1))
            {
              break;
            }

            if (v48 >= v49)
            {
              v52 = 0;
              v54 = 1;
              v53 = v120;
              goto LABEL_14;
            }

            v47 = *(v44 + 8 * v48);
            ++v45;
            if (v47)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
LABEL_58:
          __break(1u);
          return;
        }

        v48 = v126[3];
LABEL_13:
        v52 = (v47 - 1) & v47;
        v53 = v120;
        sub_24B2BF490(*(v43 + 48) + *(v123 + 72) * (__clz(__rbit64(v47)) | (v48 << 6)), v120, type metadata accessor for ContactsProvider.Subscription);
        v54 = 0;
        v51 = v48;
LABEL_14:
        v55 = v146;
        (*v119)(v53, v54, 1, v146);
        v56 = v126;
        *v126 = v43;
        v56[1] = v44;
        v56[2] = v46;
        v56[3] = v51;
        v56[4] = v52;
        if ((*v118)(v53, 1, v55) == 1)
        {
          sub_24AFF8258(v53, &qword_27EFC84B0, &qword_24B2E09E8);
          v108 = v147;

          sub_24B2A1260(v113, v111, v112, v108, v109);
          return;
        }

        sub_24B2BF380(v53, v37, type metadata accessor for ContactsProvider.Subscription);
        sub_24B2D60E4();
        v57 = v115;
        sub_24B2BF490(v37, v115, type metadata accessor for ContactsProvider.Subscription);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          MEMORY[0x24C23C8D0](1);
          sub_24B2D5404();

          v58 = v145;
        }

        else
        {
          v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820, &unk_24B2EF120) + 48);
          v60 = v116;
          sub_24B0391CC(v57, v116, &qword_27EFCC810, &qword_24B2F5690);
          (*v130)(v117, v57 + v59, v141);
          MEMORY[0x24C23C8D0](0);
          v61 = v114;
          sub_24B008890(v60, v114, &qword_27EFCC810, &qword_24B2F5690);
          v62 = v131;
          v63 = (*v129)(v61, 1, v131);
          v58 = v145;
          if (v63 == 1)
          {
            sub_24B2D6104();
          }

          else
          {
            v64 = v122;
            (*v121)(v122, v61, v62);
            sub_24B2D6104();
            sub_24B2BF448(&qword_27EFCC830, MEMORY[0x277D08B38], MEMORY[0x277D08B40]);
            sub_24B2D5254();
            (*v125)(v64, v62);
          }

          sub_24B2BF448(&qword_27EFCC740, MEMORY[0x277D08B70], MEMORY[0x277D08B78]);
          v65 = v117;
          v66 = v141;
          sub_24B2D5254();
          (*v139)(v65, v66);
          sub_24AFF8258(v116, &qword_27EFCC810, &qword_24B2F5690);
        }

        v67 = sub_24B2D6124();
        v68 = -1 << *(v147 + 32);
        v69 = v67 & ~v68;
        v70 = v69 >> 6;
        v71 = 1 << v69;
        v72 = v140;
        if (((1 << v69) & *(v58 + 8 * (v69 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        sub_24B2BF3E8(v37, type metadata accessor for ContactsProvider.Subscription);
      }

      v143 = ~v68;
      v144 = *(v123 + 72);
      while (1)
      {
        sub_24B2BF490(*(v147 + 48) + v144 * v69, v32, type metadata accessor for ContactsProvider.Subscription);
        v76 = (v72 + *(v142 + 48));
        sub_24B2BF490(v32, v72, type metadata accessor for ContactsProvider.Subscription);
        sub_24B2BF490(v37, v76, type metadata accessor for ContactsProvider.Subscription);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        v84 = v135;
        sub_24B2BF490(v72, v135, type metadata accessor for ContactsProvider.Subscription);
        v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820, &unk_24B2EF120) + 48);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v73 = v133;
          sub_24B2BF3E8(v133, type metadata accessor for ContactsProvider.Subscription);
          (*v139)((v84 + v85), v141);
          v74 = v84;
          v32 = v73;
          sub_24AFF8258(v74, &qword_27EFCC810, &qword_24B2F5690);
          v37 = v134;
          goto LABEL_24;
        }

        v86 = *v130;
        v87 = v141;
        (*v130)(v137, v84 + v85, v141);
        v86(v138, v76 + v85, v87);
        v88 = *(v128 + 48);
        v89 = v132;
        sub_24B0391CC(v84, v132, &qword_27EFCC810, &qword_24B2F5690);
        sub_24B0391CC(v76, v89 + v88, &qword_27EFCC810, &qword_24B2F5690);
        v90 = *v129;
        v91 = v131;
        if ((*v129)(v89, 1, v131) == 1)
        {
          if (v90(v89 + v88, 1, v91) != 1)
          {
            v98 = *v139;
            v99 = v141;
            (*v139)(v138, v141);
            v98(v137, v99);
            v32 = v133;
            sub_24B2BF3E8(v133, type metadata accessor for ContactsProvider.Subscription);
            goto LABEL_43;
          }

          sub_24AFF8258(v89, &qword_27EFCC810, &qword_24B2F5690);
          v92 = v141;
          v32 = v133;
        }

        else
        {
          v93 = v124;
          sub_24B008890(v89, v124, &qword_27EFCC810, &qword_24B2F5690);
          if (v90(v89 + v88, 1, v91) == 1)
          {
            v94 = *v139;
            v95 = v141;
            (*v139)(v138, v141);
            v94(v137, v95);
            v96 = v133;
            sub_24B2BF3E8(v133, type metadata accessor for ContactsProvider.Subscription);
            v97 = v91;
            v32 = v96;
            (*v125)(v93, v97);
LABEL_43:
            sub_24AFF8258(v132, &qword_27EFCC800, &unk_24B2F5680);
LABEL_44:
            v72 = v140;
            v37 = v134;
            v75 = v145;
            sub_24B2BF3E8(v140, type metadata accessor for ContactsProvider.Subscription);
            goto LABEL_26;
          }

          v100 = v89 + v88;
          v101 = v122;
          (*v121)(v122, v100, v91);
          sub_24B2BF448(&qword_27EFCC828, MEMORY[0x277D08B38], MEMORY[0x277D08B48]);
          v127 = sub_24B2D52A4();
          v102 = *v125;
          (*v125)(v101, v91);
          v102(v93, v91);
          sub_24AFF8258(v89, &qword_27EFCC810, &qword_24B2F5690);
          v92 = v141;
          v32 = v133;
          if ((v127 & 1) == 0)
          {
            v106 = *v139;
            (*v139)(v138, v141);
            v106(v137, v92);
            sub_24B2BF3E8(v32, type metadata accessor for ContactsProvider.Subscription);
            goto LABEL_44;
          }
        }

        v103 = v137;
        v104 = v138;
        v127 = MEMORY[0x24C237DB0](v137, v138);
        v105 = *v139;
        (*v139)(v104, v92);
        v105(v103, v92);
        sub_24B2BF3E8(v32, type metadata accessor for ContactsProvider.Subscription);
        v72 = v140;
        sub_24B2BF3E8(v140, type metadata accessor for ContactsProvider.Subscription);
        v37 = v134;
        v75 = v145;
        if (v127)
        {
          goto LABEL_52;
        }

LABEL_26:
        v69 = (v69 + 1) & v143;
        v70 = v69 >> 6;
        v71 = 1 << v69;
        if ((*(v75 + 8 * (v69 >> 6)) & (1 << v69)) == 0)
        {
          goto LABEL_3;
        }
      }

      v77 = v136;
      sub_24B2BF490(v72, v136, type metadata accessor for ContactsProvider.Subscription);
      v79 = *v77;
      v78 = v77[1];
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_24B2BF3E8(v32, type metadata accessor for ContactsProvider.Subscription);

        v72 = v140;
LABEL_24:
        sub_24AFF8258(v72, &qword_27EFCC808, &unk_24B2EC080);
LABEL_25:
        v75 = v145;
        goto LABEL_26;
      }

      v80 = *v76;
      v81 = v76[1];
      if (v79 != v80 || v78 != v81)
      {
        v83 = sub_24B2D6004();

        sub_24B2BF3E8(v32, type metadata accessor for ContactsProvider.Subscription);
        if (v83)
        {
          goto LABEL_51;
        }

        v72 = v140;
        sub_24B2BF3E8(v140, type metadata accessor for ContactsProvider.Subscription);
        goto LABEL_25;
      }

      sub_24B2BF3E8(v32, type metadata accessor for ContactsProvider.Subscription);
LABEL_51:
      sub_24B2BF3E8(v140, type metadata accessor for ContactsProvider.Subscription);
LABEL_52:
      sub_24B2BF3E8(v37, type metadata accessor for ContactsProvider.Subscription);
      v107 = v113[v70];
      v113[v70] = v107 & ~v71;
    }

    while ((v107 & v71) == 0);
    v41 = v112 - 1;
    if (__OFSUB__(v112, 1))
    {
      goto LABEL_58;
    }
  }

  while (v112 != 1);
}

void sub_24B2B494C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50[0] = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC84A8, &unk_24B2F5660);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v50 - v10;
  v59 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  MEMORY[0x28223BE20](v59);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v67 = v50 - v15;
  v16 = *(a3 + 16);
  v17 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v18 = *(a1 + v17) & ((-1 << a4) - 1);
  v52 = a1;
  *(a1 + v17) = v18;
  v19 = v16 - 1;
  v56 = (v20 + 56);
  v57 = v20;
  v54 = a5;
  v55 = (v20 + 48);
  v61 = a3 + 56;
  v62 = a3;
  v53 = v11;
  do
  {
    v51 = v19;
    do
    {
      while (1)
      {
        v21 = *a5;
        v22 = a5[1];
        v24 = a5[2];
        v23 = a5[3];
        v25 = a5[4];
        if (!v25)
        {
          v27 = (v24 + 64) >> 6;
          if (v27 <= v23 + 1)
          {
            v28 = v23 + 1;
          }

          else
          {
            v28 = (v24 + 64) >> 6;
          }

          v29 = v28 - 1;
          while (1)
          {
            v26 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              break;
            }

            if (v26 >= v27)
            {
              v30 = 0;
              v31 = 1;
              goto LABEL_14;
            }

            v25 = *(v22 + 8 * v26);
            ++v23;
            if (v25)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
LABEL_52:
          __break(1u);
          return;
        }

        v26 = a5[3];
LABEL_13:
        v30 = (v25 - 1) & v25;
        sub_24B2BF490(*(v21 + 48) + *(v57 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11, type metadata accessor for PeopleLocationsProvider.Subscription);
        v31 = 0;
        v29 = v26;
LABEL_14:
        v32 = v59;
        (*v56)(v11, v31, 1, v59);
        *a5 = v21;
        a5[1] = v22;
        a5[2] = v24;
        a5[3] = v29;
        a5[4] = v30;
        if ((*v55)(v11, 1, v32) == 1)
        {
          sub_24AFF8258(v11, &qword_27EFC84A8, &unk_24B2F5660);
          v49 = v62;

          sub_24B2A196C(v52, v50[0], v51, v49);
          return;
        }

        sub_24B2BF380(v11, v67, type metadata accessor for PeopleLocationsProvider.Subscription);
        v33 = v62;
        sub_24B2D60E4();
        sub_24B2D1574();
        sub_24B2BF448(&qword_27EFCC6C0, MEMORY[0x277D08B50], MEMORY[0x277D08B58]);
        sub_24B2D5254();
        v58 = *(v32 + 20);
        sub_24B2D5404();

        v34 = sub_24B2D6124();
        v35 = -1 << *(v33 + 32);
        v36 = v34 & ~v35;
        v37 = v36 >> 6;
        v38 = 1 << v36;
        if (((1 << v36) & *(v61 + 8 * (v36 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        sub_24B2BF3E8(v67, type metadata accessor for PeopleLocationsProvider.Subscription);
        v11 = v53;
        a5 = v54;
      }

      v60 = ~v35;
      v39 = *(v57 + 72);
      while (1)
      {
        sub_24B2BF490(*(v62 + 48) + v39 * v36, v13, type metadata accessor for PeopleLocationsProvider.Subscription);
        sub_24B2BF448(&qword_27EFCC6D8, MEMORY[0x277D08B50], MEMORY[0x277D08B68]);
        sub_24B2D54E4();
        sub_24B2D54E4();
        if (v65 == v63 && v66 == v64)
        {
        }

        else
        {
          v41 = sub_24B2D6004();

          if ((v41 & 1) == 0)
          {
            sub_24B2BF3E8(v13, type metadata accessor for PeopleLocationsProvider.Subscription);
            goto LABEL_18;
          }
        }

        v42 = v13[*(v59 + 20)] ? 0x776F6C6C616873 : 1702259052;
        v43 = v13[*(v59 + 20)] ? 0xE700000000000000 : 0xE400000000000000;
        v44 = *(v67 + v58) ? 0x776F6C6C616873 : 1702259052;
        v45 = *(v67 + v58) ? 0xE700000000000000 : 0xE400000000000000;
        if (v42 == v44 && v43 == v45)
        {
          break;
        }

        v47 = sub_24B2D6004();

        sub_24B2BF3E8(v13, type metadata accessor for PeopleLocationsProvider.Subscription);
        if (v47)
        {
          goto LABEL_46;
        }

LABEL_18:
        v36 = (v36 + 1) & v60;
        v37 = v36 >> 6;
        v38 = 1 << v36;
        if ((*(v61 + 8 * (v36 >> 6)) & (1 << v36)) == 0)
        {
          goto LABEL_3;
        }
      }

      sub_24B2BF3E8(v13, type metadata accessor for PeopleLocationsProvider.Subscription);
LABEL_46:
      sub_24B2BF3E8(v67, type metadata accessor for PeopleLocationsProvider.Subscription);
      v48 = v52[v37];
      v52[v37] = v48 & ~v38;
      v11 = v53;
      a5 = v54;
    }

    while ((v48 & v38) == 0);
    v19 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
      goto LABEL_52;
    }
  }

  while (v51 != 1);
}

void sub_24B2B4FB8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v77 = a5;
  v67 = a2;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC6D0, &qword_24B2EBE70);
  MEMORY[0x28223BE20](v85);
  v9 = &v66 - v8;
  v10 = sub_24B2D1574();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v81 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v70 = &v66 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85C8, &qword_24B2E0A78);
  MEMORY[0x28223BE20](v15 - 8);
  v75 = &v66 - v16;
  v74 = type metadata accessor for PeopleProvider.Subscription(0);
  MEMORY[0x28223BE20](v74);
  v83 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v89 = &v66 - v19;
  MEMORY[0x28223BE20](v20);
  v71 = &v66 - v21;
  MEMORY[0x28223BE20](v22);
  v92 = &v66 - v23;
  v24 = *(a3 + 16);
  v25 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v26 = *(a1 + v25) & ((-1 << a4) - 1);
  v69 = a1;
  *(a1 + v25) = v26;
  v27 = v24 - 1;
  v73 = (v28 + 56);
  v76 = v28;
  v72 = (v28 + 48);
  v91 = (v11 + 48);
  v79 = (v11 + 32);
  v82 = (v11 + 8);
  v97 = a3;
  v29 = a3 + 56;
  v84 = v10;
  v78 = v9;
  v80 = v29;
  do
  {
    v68 = v27;
    do
    {
      while (1)
      {
        v31 = *v77;
        v30 = v77[1];
        v33 = v77[2];
        v32 = v77[3];
        v34 = v77[4];
        v90 = v33;
        if (!v34)
        {
          v36 = (v33 + 64) >> 6;
          if (v36 <= v32 + 1)
          {
            v37 = v32 + 1;
          }

          else
          {
            v37 = (v33 + 64) >> 6;
          }

          v38 = v37 - 1;
          while (1)
          {
            v35 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
              break;
            }

            if (v35 >= v36)
            {
              v39 = 0;
              v41 = 1;
              v40 = v75;
              goto LABEL_14;
            }

            v34 = *(v30 + 8 * v35);
            ++v32;
            if (v34)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
LABEL_38:
          __break(1u);
          return;
        }

        v35 = v32;
LABEL_13:
        v39 = (v34 - 1) & v34;
        v40 = v75;
        sub_24B2BF490(*(v31 + 48) + *(v76 + 72) * (__clz(__rbit64(v34)) | (v35 << 6)), v75, type metadata accessor for PeopleProvider.Subscription);
        v41 = 0;
        v38 = v35;
LABEL_14:
        v42 = v74;
        (*v73)(v40, v41, 1, v74);
        v43 = v77;
        *v77 = v31;
        v43[1] = v30;
        v43[2] = v90;
        v43[3] = v38;
        v43[4] = v39;
        if ((*v72)(v40, 1, v42) == 1)
        {
          sub_24AFF8258(v40, &qword_27EFC85C8, &qword_24B2E0A78);
          v65 = v97;

          sub_24B2A1CDC(v69, v67, v68, v65);
          return;
        }

        v44 = v92;
        sub_24B2BF380(v40, v92, type metadata accessor for PeopleProvider.Subscription);
        sub_24B2D60E4();
        v45 = v44;
        v46 = v71;
        sub_24B2BF490(v45, v71, type metadata accessor for PeopleProvider.Subscription);
        v90 = *v91;
        if (v90(v46, 1, v10) == 1)
        {
          MEMORY[0x24C23C8D0](0);
        }

        else
        {
          v47 = v70;
          (*v79)(v70, v46, v10);
          MEMORY[0x24C23C8D0](1);
          sub_24B2BF448(&qword_27EFCC6C0, MEMORY[0x277D08B50], MEMORY[0x277D08B58]);
          sub_24B2D5254();
          (*v82)(v47, v10);
        }

        v48 = v89;
        v49 = sub_24B2D6124();
        v50 = -1 << *(v97 + 32);
        v51 = v49 & ~v50;
        v52 = v51 >> 6;
        v53 = 1 << v51;
        if (((1 << v51) & *(v29 + 8 * (v51 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        sub_24B2BF3E8(v92, type metadata accessor for PeopleProvider.Subscription);
      }

      v86 = ~v50;
      v88 = *(v76 + 72);
      while (1)
      {
        v87 = v52;
        sub_24B2BF490(*(v97 + 48) + v88 * v51, v48, type metadata accessor for PeopleProvider.Subscription);
        v55 = *(v85 + 48);
        sub_24B2BF490(v48, v9, type metadata accessor for PeopleProvider.Subscription);
        sub_24B2BF490(v92, &v9[v55], type metadata accessor for PeopleProvider.Subscription);
        v56 = v9;
        v57 = v9;
        v58 = v90;
        if (v90(v56, 1, v10) == 1)
        {
          sub_24B2BF3E8(v48, type metadata accessor for PeopleProvider.Subscription);
          v54 = v58(v57 + v55, 1, v10);
          v9 = v57;
          if (v54 == 1)
          {
            goto LABEL_32;
          }

          goto LABEL_21;
        }

        v59 = v83;
        sub_24B2BF490(v57, v83, type metadata accessor for PeopleProvider.Subscription);
        if (v58(v57 + v55, 1, v10) == 1)
        {
          sub_24B2BF3E8(v48, type metadata accessor for PeopleProvider.Subscription);
          (*v82)(v59, v10);
          v9 = v57;
          v29 = v80;
LABEL_21:
          sub_24AFF8258(v9, &qword_27EFCC6D0, &qword_24B2EBE70);
          goto LABEL_22;
        }

        (*v79)(v81, v57 + v55, v10);
        sub_24B2BF448(&qword_27EFCC6D8, MEMORY[0x277D08B50], MEMORY[0x277D08B68]);
        sub_24B2D54E4();
        sub_24B2D54E4();
        if (v95 == v93 && v96 == v94)
        {
          break;
        }

        v60 = v48;
        v61 = sub_24B2D6004();
        v62 = *v82;
        (*v82)(v81, v10);
        sub_24B2BF3E8(v60, type metadata accessor for PeopleProvider.Subscription);

        v62(v83, v10);
        v9 = v78;
        v29 = v80;
        if (v61)
        {
          goto LABEL_32;
        }

        sub_24B2BF3E8(v78, type metadata accessor for PeopleProvider.Subscription);
LABEL_22:
        v51 = (v51 + 1) & v86;
        v52 = v51 >> 6;
        v53 = 1 << v51;
        v10 = v84;
        v48 = v89;
        if ((*(v29 + 8 * (v51 >> 6)) & (1 << v51)) == 0)
        {
          goto LABEL_3;
        }
      }

      v63 = *v82;
      (*v82)(v81, v10);
      sub_24B2BF3E8(v48, type metadata accessor for PeopleProvider.Subscription);

      v63(v83, v10);
      v9 = v78;
      v29 = v80;
LABEL_32:
      sub_24B2BF3E8(v9, type metadata accessor for PeopleProvider.Subscription);
      sub_24B2BF3E8(v92, type metadata accessor for PeopleProvider.Subscription);
      v64 = v69[v87];
      v69[v87] = v64 & ~v53;
      v10 = v84;
    }

    while ((v64 & v53) == 0);
    v27 = v68 - 1;
    if (__OFSUB__(v68, 1))
    {
      goto LABEL_38;
    }
  }

  while (v68 != 1);
}

void sub_24B2B59F8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v46 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85D0, &qword_24B2E0A80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v45 - v10;
  v53 = type metadata accessor for ItemsLocationsProvider.Subscription(0);
  MEMORY[0x28223BE20](v53);
  v56 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v62 = &v45 - v14;
  v15 = *(a3 + 16);
  v16 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v17 = *(a1 + v16);
  v48 = a1;
  v49 = v11;
  *(a1 + v16) = v17 & ((-1 << a4) - 1);
  v18 = v15 - 1;
  v51 = (v19 + 48);
  v52 = (v19 + 56);
  v57 = a3;
  v54 = v19;
  v55 = a3 + 56;
  v50 = a5;
  while (2)
  {
    v47 = v18;
    do
    {
      while (1)
      {
        v20 = *a5;
        v21 = a5[1];
        v23 = a5[2];
        v22 = a5[3];
        v24 = a5[4];
        if (!v24)
        {
          v26 = (v23 + 64) >> 6;
          if (v26 <= v22 + 1)
          {
            v27 = v22 + 1;
          }

          else
          {
            v27 = (v23 + 64) >> 6;
          }

          v28 = v27 - 1;
          while (1)
          {
            v25 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              break;
            }

            if (v25 >= v26)
            {
              v29 = 0;
              v30 = 1;
              goto LABEL_14;
            }

            v24 = *(v21 + 8 * v25);
            ++v22;
            if (v24)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
          goto LABEL_33;
        }

        v25 = a5[3];
LABEL_13:
        v29 = (v24 - 1) & v24;
        sub_24B2BF490(*(v20 + 48) + *(v54 + 72) * (__clz(__rbit64(v24)) | (v25 << 6)), v11, type metadata accessor for ItemsLocationsProvider.Subscription);
        v30 = 0;
        v28 = v25;
LABEL_14:
        v31 = v53;
        (*v52)(v11, v30, 1, v53);
        *a5 = v20;
        a5[1] = v21;
        a5[2] = v23;
        a5[3] = v28;
        a5[4] = v29;
        if ((*v51)(v11, 1, v31) == 1)
        {
          sub_24AFF8258(v11, &qword_27EFC85D0, &qword_24B2E0A80);
          v44 = v57;

          sub_24B2A267C(v48, v46, v47, v44);
          return;
        }

        sub_24B2BF380(v11, v62, type metadata accessor for ItemsLocationsProvider.Subscription);
        v32 = v57;
        sub_24B2D60E4();
        sub_24B2D1DA4();
        sub_24B2BF448(&qword_27EFCC630, MEMORY[0x277D08E20], MEMORY[0x277D08E28]);
        sub_24B2D5254();
        sub_24B2D5404();
        v33 = sub_24B2D6124();
        v34 = -1 << *(v32 + 32);
        v35 = v33 & ~v34;
        v36 = v35 >> 6;
        v37 = 1 << v35;
        if (((1 << v35) & *(v55 + 8 * (v35 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        sub_24B2BF3E8(v62, type metadata accessor for ItemsLocationsProvider.Subscription);
        v11 = v49;
        a5 = v50;
      }

      v38 = ~v34;
      v39 = *(v54 + 72);
      v40 = v56;
      while (1)
      {
        sub_24B2BF490(*(v57 + 48) + v39 * v35, v40, type metadata accessor for ItemsLocationsProvider.Subscription);
        sub_24B2BF448(&qword_27EFCC6E8, MEMORY[0x277D08E20], MEMORY[0x277D08E40]);
        sub_24B2D54E4();
        sub_24B2D54E4();
        if (v60 == v58 && v61 == v59)
        {
          break;
        }

        v42 = sub_24B2D6004();

        if (v42)
        {
          goto LABEL_25;
        }

        v40 = v56;
        sub_24B2BF3E8(v56, type metadata accessor for ItemsLocationsProvider.Subscription);
        v35 = (v35 + 1) & v38;
        v36 = v35 >> 6;
        v37 = 1 << v35;
        if ((*(v55 + 8 * (v35 >> 6)) & (1 << v35)) == 0)
        {
          goto LABEL_3;
        }
      }

LABEL_25:
      sub_24B2BF3E8(v56, type metadata accessor for ItemsLocationsProvider.Subscription);
      sub_24B2BF3E8(v62, type metadata accessor for ItemsLocationsProvider.Subscription);
      v11 = v49;
      v43 = v48[v36];
      v48[v36] = v43 & ~v37;
      a5 = v50;
    }

    while ((v43 & v37) == 0);
    v18 = v47 - 1;
    if (__OFSUB__(v47, 1))
    {
LABEL_33:
      __break(1u);
      return;
    }

    if (v47 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_24B2B5F64(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v77 = a5;
  v67 = a2;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC6E0, &unk_24B2F0100);
  MEMORY[0x28223BE20](v85);
  v9 = &v66 - v8;
  v10 = sub_24B2D1DA4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v81 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v70 = &v66 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85E0, &qword_24B2F5800);
  MEMORY[0x28223BE20](v15 - 8);
  v75 = &v66 - v16;
  v74 = type metadata accessor for ItemsProvider.Subscription(0);
  MEMORY[0x28223BE20](v74);
  v83 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v89 = &v66 - v19;
  MEMORY[0x28223BE20](v20);
  v71 = &v66 - v21;
  MEMORY[0x28223BE20](v22);
  v92 = &v66 - v23;
  v24 = *(a3 + 16);
  v25 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v26 = *(a1 + v25) & ((-1 << a4) - 1);
  v69 = a1;
  *(a1 + v25) = v26;
  v27 = v24 - 1;
  v73 = (v28 + 56);
  v76 = v28;
  v72 = (v28 + 48);
  v91 = (v11 + 48);
  v79 = (v11 + 32);
  v82 = (v11 + 8);
  v97 = a3;
  v29 = a3 + 56;
  v84 = v10;
  v78 = v9;
  v80 = v29;
  do
  {
    v68 = v27;
    do
    {
      while (1)
      {
        v31 = *v77;
        v30 = v77[1];
        v33 = v77[2];
        v32 = v77[3];
        v34 = v77[4];
        v90 = v33;
        if (!v34)
        {
          v36 = (v33 + 64) >> 6;
          if (v36 <= v32 + 1)
          {
            v37 = v32 + 1;
          }

          else
          {
            v37 = (v33 + 64) >> 6;
          }

          v38 = v37 - 1;
          while (1)
          {
            v35 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
              break;
            }

            if (v35 >= v36)
            {
              v39 = 0;
              v41 = 1;
              v40 = v75;
              goto LABEL_14;
            }

            v34 = *(v30 + 8 * v35);
            ++v32;
            if (v34)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
LABEL_38:
          __break(1u);
          return;
        }

        v35 = v32;
LABEL_13:
        v39 = (v34 - 1) & v34;
        v40 = v75;
        sub_24B2BF490(*(v31 + 48) + *(v76 + 72) * (__clz(__rbit64(v34)) | (v35 << 6)), v75, type metadata accessor for ItemsProvider.Subscription);
        v41 = 0;
        v38 = v35;
LABEL_14:
        v42 = v74;
        (*v73)(v40, v41, 1, v74);
        v43 = v77;
        *v77 = v31;
        v43[1] = v30;
        v43[2] = v90;
        v43[3] = v38;
        v43[4] = v39;
        if ((*v72)(v40, 1, v42) == 1)
        {
          sub_24AFF8258(v40, &qword_27EFC85E0, &qword_24B2F5800);
          v65 = v97;

          sub_24B2A29B4(v69, v67, v68, v65);
          return;
        }

        v44 = v92;
        sub_24B2BF380(v40, v92, type metadata accessor for ItemsProvider.Subscription);
        sub_24B2D60E4();
        v45 = v44;
        v46 = v71;
        sub_24B2BF490(v45, v71, type metadata accessor for ItemsProvider.Subscription);
        v90 = *v91;
        if (v90(v46, 1, v10) == 1)
        {
          MEMORY[0x24C23C8D0](0);
        }

        else
        {
          v47 = v70;
          (*v79)(v70, v46, v10);
          MEMORY[0x24C23C8D0](1);
          sub_24B2BF448(&qword_27EFCC630, MEMORY[0x277D08E20], MEMORY[0x277D08E28]);
          sub_24B2D5254();
          (*v82)(v47, v10);
        }

        v48 = v89;
        v49 = sub_24B2D6124();
        v50 = -1 << *(v97 + 32);
        v51 = v49 & ~v50;
        v52 = v51 >> 6;
        v53 = 1 << v51;
        if (((1 << v51) & *(v29 + 8 * (v51 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        sub_24B2BF3E8(v92, type metadata accessor for ItemsProvider.Subscription);
      }

      v86 = ~v50;
      v88 = *(v76 + 72);
      while (1)
      {
        v87 = v52;
        sub_24B2BF490(*(v97 + 48) + v88 * v51, v48, type metadata accessor for ItemsProvider.Subscription);
        v55 = *(v85 + 48);
        sub_24B2BF490(v48, v9, type metadata accessor for ItemsProvider.Subscription);
        sub_24B2BF490(v92, &v9[v55], type metadata accessor for ItemsProvider.Subscription);
        v56 = v9;
        v57 = v9;
        v58 = v90;
        if (v90(v56, 1, v10) == 1)
        {
          sub_24B2BF3E8(v48, type metadata accessor for ItemsProvider.Subscription);
          v54 = v58(v57 + v55, 1, v10);
          v9 = v57;
          if (v54 == 1)
          {
            goto LABEL_32;
          }

          goto LABEL_21;
        }

        v59 = v83;
        sub_24B2BF490(v57, v83, type metadata accessor for ItemsProvider.Subscription);
        if (v58(v57 + v55, 1, v10) == 1)
        {
          sub_24B2BF3E8(v48, type metadata accessor for ItemsProvider.Subscription);
          (*v82)(v59, v10);
          v9 = v57;
          v29 = v80;
LABEL_21:
          sub_24AFF8258(v9, &qword_27EFCC6E0, &unk_24B2F0100);
          goto LABEL_22;
        }

        (*v79)(v81, v57 + v55, v10);
        sub_24B2BF448(&qword_27EFCC6E8, MEMORY[0x277D08E20], MEMORY[0x277D08E40]);
        sub_24B2D54E4();
        sub_24B2D54E4();
        if (v95 == v93 && v96 == v94)
        {
          break;
        }

        v60 = v48;
        v61 = sub_24B2D6004();
        v62 = *v82;
        (*v82)(v81, v10);
        sub_24B2BF3E8(v60, type metadata accessor for ItemsProvider.Subscription);

        v62(v83, v10);
        v9 = v78;
        v29 = v80;
        if (v61)
        {
          goto LABEL_32;
        }

        sub_24B2BF3E8(v78, type metadata accessor for ItemsProvider.Subscription);
LABEL_22:
        v51 = (v51 + 1) & v86;
        v52 = v51 >> 6;
        v53 = 1 << v51;
        v10 = v84;
        v48 = v89;
        if ((*(v29 + 8 * (v51 >> 6)) & (1 << v51)) == 0)
        {
          goto LABEL_3;
        }
      }

      v63 = *v82;
      (*v82)(v81, v10);
      sub_24B2BF3E8(v48, type metadata accessor for ItemsProvider.Subscription);

      v63(v83, v10);
      v9 = v78;
      v29 = v80;
LABEL_32:
      sub_24B2BF3E8(v9, type metadata accessor for ItemsProvider.Subscription);
      sub_24B2BF3E8(v92, type metadata accessor for ItemsProvider.Subscription);
      v64 = v69[v87];
      v69[v87] = v64 & ~v53;
      v10 = v84;
    }

    while ((v64 & v53) == 0);
    v27 = v68 - 1;
    if (__OFSUB__(v68, 1))
    {
      goto LABEL_38;
    }
  }

  while (v68 != 1);
}

void sub_24B2B69A4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v74 = a2;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBC8, &qword_24B2EF018);
  MEMORY[0x28223BE20](v93);
  v10 = &v73 - v9;
  v92 = sub_24B2D1704();
  v11 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v85 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v77 = &v73 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85B8, &qword_24B2F15B0);
  MEMORY[0x28223BE20](v15 - 8);
  v82 = &v73 - v16;
  v17 = type metadata accessor for SettingsContactsProvider.Subscription(0);
  MEMORY[0x28223BE20](v17);
  v90 = (&v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v89 = &v73 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v73 - v22;
  MEMORY[0x28223BE20](v24);
  v78 = &v73 - v25;
  MEMORY[0x28223BE20](v26);
  v97 = &v73 - v27;
  v28 = *(a3 + 16);
  v29 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v30 = *(a1 + v29) & ((-1 << a4) - 1);
  v76 = a1;
  *(a1 + v29) = v30;
  v31 = v28 - 1;
  v81 = (v32 + 56);
  v83 = v32;
  v80 = (v32 + 48);
  v86 = (v11 + 32);
  v91 = (v11 + 8);
  v98 = a3;
  v96 = a3 + 56;
  v79 = a5;
  v87 = v33;
  v84 = v10;
  do
  {
    v75 = v31;
    do
    {
      while (1)
      {
        v35 = *a5;
        v34 = a5[1];
        v37 = a5[2];
        v36 = a5[3];
        v38 = a5[4];
        v95 = v37;
        if (!v38)
        {
          v40 = (v37 + 64) >> 6;
          if (v40 <= v36 + 1)
          {
            v41 = v36 + 1;
          }

          else
          {
            v41 = (v37 + 64) >> 6;
          }

          v42 = v41 - 1;
          while (1)
          {
            v39 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              break;
            }

            if (v39 >= v40)
            {
              v43 = 0;
              v45 = 1;
              v44 = v82;
              goto LABEL_14;
            }

            v38 = *(v34 + 8 * v39);
            ++v36;
            if (v38)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
LABEL_43:
          __break(1u);
          return;
        }

        v39 = v36;
LABEL_13:
        v43 = (v38 - 1) & v38;
        v44 = v82;
        sub_24B2BF490(*(v35 + 48) + *(v83 + 72) * (__clz(__rbit64(v38)) | (v39 << 6)), v82, type metadata accessor for SettingsContactsProvider.Subscription);
        v45 = 0;
        v42 = v39;
LABEL_14:
        v46 = v87;
        (*v81)(v44, v45, 1, v87);
        *a5 = v35;
        a5[1] = v34;
        a5[2] = v95;
        a5[3] = v42;
        a5[4] = v43;
        if ((*v80)(v44, 1, v46) == 1)
        {
          sub_24AFF8258(v44, &qword_27EFC85B8, &qword_24B2F15B0);
          v72 = v98;

          sub_24B2A2E2C(v76, v74, v75, v72);
          return;
        }

        v47 = v97;
        sub_24B2BF380(v44, v97, type metadata accessor for SettingsContactsProvider.Subscription);
        sub_24B2D60E4();
        v48 = v47;
        v49 = v78;
        sub_24B2BF490(v48, v78, type metadata accessor for SettingsContactsProvider.Subscription);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          MEMORY[0x24C23C8D0](1);
          sub_24B2D5404();
        }

        else
        {
          v50 = v77;
          v51 = v92;
          (*v86)(v77, v49, v92);
          MEMORY[0x24C23C8D0](0);
          sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
          sub_24B2D5254();
          (*v91)(v50, v51);
        }

        v52 = sub_24B2D6124();
        v53 = -1 << *(v98 + 32);
        v54 = v52 & ~v53;
        v55 = v54 >> 6;
        v56 = 1 << v54;
        if (((1 << v54) & *(v96 + 8 * (v54 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        sub_24B2BF3E8(v97, type metadata accessor for SettingsContactsProvider.Subscription);
        a5 = v79;
      }

      v94 = ~v53;
      v95 = *(v83 + 72);
      while (1)
      {
        sub_24B2BF490(*(v98 + 48) + v95 * v54, v23, type metadata accessor for SettingsContactsProvider.Subscription);
        v57 = &v10[*(v93 + 48)];
        sub_24B2BF490(v23, v10, type metadata accessor for SettingsContactsProvider.Subscription);
        sub_24B2BF490(v97, v57, type metadata accessor for SettingsContactsProvider.Subscription);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        v65 = v89;
        sub_24B2BF490(v10, v89, type metadata accessor for SettingsContactsProvider.Subscription);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v66 = v85;
          v67 = v92;
          (*v86)(v85, v57, v92);
          MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 = _s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0();
          v68 = v65;
          v69 = *v91;
          (*v91)(v66, v67);
          sub_24B2BF3E8(v23, type metadata accessor for SettingsContactsProvider.Subscription);
          v70 = v68;
          v10 = v84;
          v69(v70, v67);
          if (MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0)
          {
            goto LABEL_37;
          }

          goto LABEL_33;
        }

        sub_24B2BF3E8(v23, type metadata accessor for SettingsContactsProvider.Subscription);
        (*v91)(v65, v92);
LABEL_21:
        sub_24AFF8258(v10, &qword_27EFCDBC8, &qword_24B2EF018);
LABEL_22:
        v54 = (v54 + 1) & v94;
        v55 = v54 >> 6;
        v56 = 1 << v54;
        if ((*(v96 + 8 * (v54 >> 6)) & (1 << v54)) == 0)
        {
          goto LABEL_3;
        }
      }

      v58 = v90;
      sub_24B2BF490(v10, v90, type metadata accessor for SettingsContactsProvider.Subscription);
      v60 = *v58;
      v59 = v58[1];
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_24B2BF3E8(v23, type metadata accessor for SettingsContactsProvider.Subscription);

        goto LABEL_21;
      }

      v61 = *v57;
      v62 = *(v57 + 1);
      if (v60 != v61 || v59 != v62)
      {
        v64 = sub_24B2D6004();

        sub_24B2BF3E8(v23, type metadata accessor for SettingsContactsProvider.Subscription);
        if (v64)
        {
          goto LABEL_37;
        }

LABEL_33:
        sub_24B2BF3E8(v10, type metadata accessor for SettingsContactsProvider.Subscription);
        goto LABEL_22;
      }

      sub_24B2BF3E8(v23, type metadata accessor for SettingsContactsProvider.Subscription);
LABEL_37:
      sub_24B2BF3E8(v10, type metadata accessor for SettingsContactsProvider.Subscription);
      sub_24B2BF3E8(v97, type metadata accessor for SettingsContactsProvider.Subscription);
      v71 = v76[v55];
      v76[v55] = v71 & ~v56;
      a5 = v79;
    }

    while ((v71 & v56) == 0);
    v31 = v75 - 1;
    if (__OFSUB__(v75, 1))
    {
      goto LABEL_43;
    }
  }

  while (v75 != 1);
}

uint64_t sub_24B2B7340(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
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
    v17 = *(*(*a5 + 48) + (__clz(__rbit64(v13)) | (v14 << 6)));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    sub_24B2D60E4();
    MEMORY[0x24C23C8D0](0);
    sub_24B2D6104();
    result = sub_24B2D6124();
    v18 = -1 << *(a3 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) != 0)
    {
      v22 = *(a3 + 48);
      if (v17 == *(v22 + v19))
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
            return MEMORY[0x277D84FA0];
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

          if (v17 == *(v22 + v19))
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

  return sub_24B2A2FF4(v7, a2, v9, a3);
}

void sub_24B2B7520(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v61[0] = a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7A8, &unk_24B2F2FF0);
  MEMORY[0x28223BE20](v75);
  v65 = v61 - v9;
  v82 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v10 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v73 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v64 = v61 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85C0, &unk_24B2F5790);
  MEMORY[0x28223BE20](v14 - 8);
  v71 = v61 - v15;
  v70 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
  MEMORY[0x28223BE20](v70);
  v74 = v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v61 - v18;
  MEMORY[0x28223BE20](v20);
  v66 = v61 - v21;
  MEMORY[0x28223BE20](v22);
  v83 = v61 - v23;
  v24 = *(a3 + 16);
  v25 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v26 = *(a1 + v25) & ((-1 << a4) - 1);
  v63 = a1;
  *(a1 + v25) = v26;
  v27 = v24 - 1;
  v69 = (v28 + 56);
  v72 = v28;
  v68 = (v28 + 48);
  v84 = a3;
  v80 = a3 + 56;
  v81 = (v10 + 48);
  v67 = a5;
  do
  {
    v62 = v27;
    do
    {
      while (1)
      {
        v29 = *a5;
        v30 = a5[1];
        v32 = a5[2];
        v31 = a5[3];
        v33 = a5[4];
        if (!v33)
        {
          v35 = (v32 + 64) >> 6;
          if (v35 <= v31 + 1)
          {
            v36 = v31 + 1;
          }

          else
          {
            v36 = (v32 + 64) >> 6;
          }

          v37 = v36 - 1;
          while (1)
          {
            v34 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              break;
            }

            if (v34 >= v35)
            {
              v38 = 0;
              v40 = 1;
              v39 = v71;
              goto LABEL_14;
            }

            v33 = *(v30 + 8 * v34);
            ++v31;
            if (v33)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v34 = a5[3];
LABEL_13:
        v38 = (v33 - 1) & v33;
        v39 = v71;
        sub_24B2BF490(*(v29 + 48) + *(v72 + 72) * (__clz(__rbit64(v33)) | (v34 << 6)), v71, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        v40 = 0;
        v37 = v34;
LABEL_14:
        v41 = v70;
        (*v69)(v39, v40, 1, v70);
        *a5 = v29;
        a5[1] = v30;
        a5[2] = v32;
        a5[3] = v37;
        a5[4] = v38;
        if ((*v68)(v39, 1, v41) == 1)
        {
          sub_24AFF8258(v39, &qword_27EFC85C0, &unk_24B2F5790);
          v60 = v84;

          sub_24B2A3208(v63, v61[0], v62, v60);
          return;
        }

        v42 = v83;
        sub_24B2BF380(v39, v83, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        sub_24B2D60E4();
        v43 = v42;
        v44 = v66;
        sub_24B2BF490(v43, v66, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        v45 = *v81;
        if ((*v81)(v44, 1, v82) == 1)
        {
          MEMORY[0x24C23C8D0](0);
        }

        else
        {
          v46 = v64;
          sub_24B2BF380(v44, v64, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
          MEMORY[0x24C23C8D0](1);
          sub_24B2D1704();
          sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
          sub_24B2D5254();
          sub_24B2BF3E8(v46, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
        }

        v47 = v74;
        v48 = sub_24B2D6124();
        v49 = -1 << *(v84 + 32);
        v50 = v48 & ~v49;
        v51 = v50 >> 6;
        v52 = 1 << v50;
        if (((1 << v50) & *(v80 + 8 * (v50 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        sub_24B2BF3E8(v83, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        a5 = v67;
      }

      v77 = ~v49;
      v78 = *(v72 + 72);
      v79 = v45;
      v53 = v65;
      while (1)
      {
        v76 = v51;
        sub_24B2BF490(*(v84 + 48) + v78 * v50, v19, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        v54 = *(v75 + 48);
        sub_24B2BF490(v19, v53, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        sub_24B2BF490(v83, v53 + v54, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        v55 = v82;
        v56 = v79;
        if (v79(v53, 1, v82) == 1)
        {
          sub_24B2BF3E8(v19, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
          if (v56(v53 + v54, 1, v55) == 1)
          {
            goto LABEL_28;
          }

          goto LABEL_21;
        }

        sub_24B2BF490(v53, v47, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        if (v56(v53 + v54, 1, v55) != 1)
        {
          break;
        }

        sub_24B2BF3E8(v19, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        sub_24B2BF3E8(v47, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
LABEL_21:
        sub_24AFF8258(v53, &qword_27EFCC7A8, &unk_24B2F2FF0);
LABEL_22:
        v50 = (v50 + 1) & v77;
        v51 = v50 >> 6;
        v52 = 1 << v50;
        if ((*(v80 + 8 * (v50 >> 6)) & (1 << v50)) == 0)
        {
          goto LABEL_3;
        }
      }

      v57 = v73;
      sub_24B2BF380(v53 + v54, v73, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
      MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 = _s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0();
      v47 = v74;
      sub_24B2BF3E8(v57, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
      sub_24B2BF3E8(v19, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      sub_24B2BF3E8(v47, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
      if ((MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 & 1) == 0)
      {
        sub_24B2BF3E8(v53, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        goto LABEL_22;
      }

LABEL_28:
      sub_24B2BF3E8(v53, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      sub_24B2BF3E8(v83, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      v59 = v63[v76];
      v63[v76] = v59 & ~v52;
      a5 = v67;
    }

    while ((v59 & v52) == 0);
    v27 = v62 - 1;
    if (__OFSUB__(v62, 1))
    {
      goto LABEL_36;
    }
  }

  while (v62 != 1);
}

uint64_t sub_24B2B7DF8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  v9 = result;
  v10 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v11 = v10 - 1;
  v12 = a3 + 56;
  v13 = MEMORY[0x277D84FA0];
  while (1)
  {
    while (1)
    {
      v14 = a5[3];
      v15 = a5[4];
      if (!v15)
      {
        v17 = (a5[2] + 64) >> 6;
        v18 = a5[3];
        while (1)
        {
          v16 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            goto LABEL_19;
          }

          if (v16 >= v17)
          {
            break;
          }

          v15 = *(a5[1] + 8 * v16);
          ++v18;
          if (v15)
          {
            goto LABEL_8;
          }
        }

        if (v17 <= v14 + 1)
        {
          v25 = v14 + 1;
        }

        else
        {
          v25 = (a5[2] + 64) >> 6;
        }

        a5[3] = v25 - 1;
        a5[4] = 0;

        return sub_24B2A366C(v9, a2, v11, a3, a6, a7);
      }

      v16 = a5[3];
LABEL_8:
      a5[3] = v16;
      a5[4] = (v15 - 1) & v15;
      sub_24B2D60E4();
      MEMORY[0x24C23C8D0](0);
      result = sub_24B2D6124();
      v19 = result & ~(-1 << *(a3 + 32));
      v20 = v19 >> 6;
      v21 = *(v12 + 8 * (v19 >> 6));
      v22 = 1 << v19;
      if ((v22 & v21) != 0)
      {
        v23 = v9[v20];
        v9[v20] = v23 & ~v22;
        if ((v23 & v22) != 0)
        {
          break;
        }
      }
    }

    if (__OFSUB__(v11--, 1))
    {
      break;
    }

    if (!v11)
    {
      return v13;
    }
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_24B2B7F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24B2D1704();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
  v32 = a1;
  v10 = sub_24B2D5244();
  v11 = v9 + 56;
  v30 = v9 + 56;
  v31 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v27 = v2;
    v28 = v6;
    v29 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v31 + 48) + v18 * v13, v5);
      sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8], MEMORY[0x277D08C10]);
      v19 = sub_24B2D52A4();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v30 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v28;
        a2 = v29;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v21;
    v33 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24B1BAF00(v23);
      v24 = v33;
    }

    v6 = v28;
    a2 = v29;
    (*(v28 + 32))(v29, *(v24 + 48) + v18 * v13, v5);
    sub_24B2BAE94(v13);
    v20 = 0;
    *v21 = v33;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_24B2B8228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v2;
  v7 = *v2;
  sub_24B2D60E4();
  sub_24B2D1704();
  sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
  sub_24B2D5254();
  v23 = v4;
  v22 = *(a1 + *(v4 + 20));
  sub_24B2D6104();
  v8 = sub_24B2D6124();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return (*(v21 + 56))(v20, 1, 1, v23);
  }

  v11 = ~v9;
  v12 = *(v21 + 72);
  while (1)
  {
    sub_24B2BF490(*(v7 + 48) + v12 * v10, v6, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
    sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8], MEMORY[0x277D08C10]);
    if (sub_24B2D52A4())
    {
      break;
    }

    sub_24B2BF3E8(v6, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
LABEL_4:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return (*(v21 + 56))(v20, 1, 1, v23);
    }
  }

  v13 = v6[*(v23 + 20)];
  sub_24B2BF3E8(v6, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
  if (v22 != v13)
  {
    goto LABEL_4;
  }

  v14 = v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v14;
  v24 = *v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24B1BAF28();
    v16 = v24;
  }

  v17 = v20;
  sub_24B2BF380(*(v16 + 48) + v12 * v10, v20, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
  sub_24B2BB19C(v10);
  *v14 = v24;
  return (*(v21 + 56))(v17, 0, 1, v23);
}

uint64_t sub_24B2B8524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_24B2D60E4();
  sub_24B03ABC8(v24);
  v10 = sub_24B2D6124();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v21 = v2;
    v22 = v5;
    v23 = a2;
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_24B2BF490(*(v9 + 48) + v14 * v12, v8, _s14descr285E46659O16SubscriptionDataOMa);
      v15 = sub_24B0401A4(v8, a1);
      sub_24B2BF3E8(v8, _s14descr285E46659O16SubscriptionDataOMa);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v16 = 1;
        a2 = v23;
        goto LABEL_10;
      }
    }

    v17 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v17;
    v24[0] = *v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24B1BACF4();
      v19 = v24[0];
    }

    a2 = v23;
    sub_24B2BF380(*(v19 + 48) + v14 * v12, v23, _s14descr285E46659O16SubscriptionDataOMa);
    sub_24B2BB4BC(v12);
    v16 = 0;
    *v17 = v24[0];
LABEL_10:
    v5 = v22;
  }

  else
  {
    v16 = 1;
  }

  return (*(v6 + 56))(a2, v16, 1, v5);
}

uint64_t sub_24B2B8758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ContactsProvider.Subscription(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_24B2D60E4();
  ContactsProvider.Subscription.hash(into:)(v27, v10);
  v11 = sub_24B2D6124();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v24 = v2;
    v25 = v5;
    v26 = a2;
    v14 = ~v12;
    v15 = *(v6 + 72);
    while (1)
    {
      sub_24B2BF490(*(v9 + 48) + v15 * v13, v8, type metadata accessor for ContactsProvider.Subscription);
      MyUICore16ContactsProviderC12SubscriptionO2eeoiySbAE_AEtFZ_0 = _s12FindMyUICore16ContactsProviderC12SubscriptionO2eeoiySbAE_AEtFZ_0(v8, a1, v16);
      sub_24B2BF3E8(v8, type metadata accessor for ContactsProvider.Subscription);
      if (MyUICore16ContactsProviderC12SubscriptionO2eeoiySbAE_AEtFZ_0)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v18 = 1;
        a2 = v26;
        goto LABEL_10;
      }
    }

    v19 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v19;
    v27[0] = *v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24B1BB6A0();
      v21 = v27[0];
    }

    a2 = v26;
    sub_24B2BF380(*(v21 + 48) + v15 * v13, v26, type metadata accessor for ContactsProvider.Subscription);
    sub_24B2BBAB0(v13, v22);
    v18 = 0;
    *v19 = v27[0];
LABEL_10:
    v5 = v25;
  }

  else
  {
    v18 = 1;
  }

  return (*(v6 + 56))(a2, v18, 1, v5);
}

uint64_t sub_24B2B898C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v2;
  v7 = *v2;
  sub_24B2D60E4();
  sub_24B2D1574();
  sub_24B2BF448(&qword_27EFCC6C0, MEMORY[0x277D08B50], MEMORY[0x277D08B58]);
  sub_24B2D5254();
  v29 = *(v4 + 20);
  v30 = v4;
  sub_24B2D5404();

  v8 = sub_24B2D6124();
  v9 = v7 + 56;
  v32 = v7;
  v10 = -1 << *(v7 + 32);
  v11 = v8 & ~v10;
  if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return (*(v28 + 56))(v27, 1, 1, v30);
  }

  v31 = ~v10;
  v12 = *(v28 + 72);
  while (1)
  {
    sub_24B2BF490(*(v32 + 48) + v12 * v11, v6, type metadata accessor for PeopleLocationsProvider.Subscription);
    sub_24B2BF448(&qword_27EFCC6D8, MEMORY[0x277D08B50], MEMORY[0x277D08B68]);
    sub_24B2D54E4();
    sub_24B2D54E4();
    if (v35 == v33 && v36 == v34)
    {
    }

    else
    {
      v14 = sub_24B2D6004();

      if ((v14 & 1) == 0)
      {
        sub_24B2BF3E8(v6, type metadata accessor for PeopleLocationsProvider.Subscription);
        goto LABEL_4;
      }
    }

    v15 = v6[*(v30 + 20)] ? 0x776F6C6C616873 : 1702259052;
    v16 = v6[*(v30 + 20)] ? 0xE700000000000000 : 0xE400000000000000;
    v17 = *(a1 + v29) ? 0x776F6C6C616873 : 1702259052;
    v18 = *(a1 + v29) ? 0xE700000000000000 : 0xE400000000000000;
    if (v15 == v17 && v16 == v18)
    {
      break;
    }

    v20 = sub_24B2D6004();

    sub_24B2BF3E8(v6, type metadata accessor for PeopleLocationsProvider.Subscription);
    if (v20)
    {
      goto LABEL_32;
    }

LABEL_4:
    v11 = (v11 + 1) & v31;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return (*(v28 + 56))(v27, 1, 1, v30);
    }
  }

  sub_24B2BF3E8(v6, type metadata accessor for PeopleLocationsProvider.Subscription);
LABEL_32:
  v22 = v26;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v22;
  v35 = *v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24B1BB8AC();
    v24 = v35;
  }

  v25 = v27;
  sub_24B2BF380(*(v24 + 48) + v12 * v11, v27, type metadata accessor for PeopleLocationsProvider.Subscription);
  sub_24B2BC1A0(v11);
  *v22 = v35;
  return (*(v28 + 56))(v25, 0, 1, v30);
}

uint64_t sub_24B2B8DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC6D0, &qword_24B2EBE70);
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  v9 = sub_24B2D1574();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v44 = type metadata accessor for PeopleProvider.Subscription(0);
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v48 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v41 - v20;
  v58 = *v3;
  sub_24B2D60E4();
  sub_24B2BF490(a1, v21, type metadata accessor for PeopleProvider.Subscription);
  v56 = *(v10 + 48);
  v57 = v10 + 48;
  if (v56(v21, 1, v9) == 1)
  {
    MEMORY[0x24C23C8D0](0);
  }

  else
  {
    (*(v10 + 32))(v14, v21, v9);
    MEMORY[0x24C23C8D0](1);
    sub_24B2BF448(&qword_27EFCC6C0, MEMORY[0x277D08B50], MEMORY[0x277D08B58]);
    sub_24B2D5254();
    (*(v10 + 8))(v14, v9);
  }

  v22 = sub_24B2D6124();
  v23 = -1 << *(v58 + 32);
  v24 = v22 & ~v23;
  v55 = v58 + 56;
  if (((*(v58 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
  {
    v35 = 1;
    return (*(v45 + 56))(a2, v35, 1, v44);
  }

  v42 = v3;
  v43 = a2;
  v52 = ~v23;
  v54 = *(v45 + 72);
  v46 = (v10 + 32);
  v50 = (v10 + 8);
  v25 = v48;
  v47 = v18;
  while (1)
  {
    v26 = *(v58 + 48);
    v53 = v54 * v24;
    sub_24B2BF490(v26 + v54 * v24, v18, type metadata accessor for PeopleProvider.Subscription);
    v27 = *(v6 + 48);
    sub_24B2BF490(v18, v8, type metadata accessor for PeopleProvider.Subscription);
    sub_24B2BF490(a1, &v8[v27], type metadata accessor for PeopleProvider.Subscription);
    v28 = v56;
    if (v56(v8, 1, v9) == 1)
    {
      sub_24B2BF3E8(v18, type metadata accessor for PeopleProvider.Subscription);
      if (v28(&v8[v27], 1, v9) == 1)
      {
        goto LABEL_19;
      }

      goto LABEL_7;
    }

    sub_24B2BF490(v8, v25, type metadata accessor for PeopleProvider.Subscription);
    if (v28(&v8[v27], 1, v9) == 1)
    {
      sub_24B2BF3E8(v18, type metadata accessor for PeopleProvider.Subscription);
      (*v50)(v25, v9);
LABEL_7:
      sub_24AFF8258(v8, &qword_27EFCC6D0, &qword_24B2EBE70);
      goto LABEL_8;
    }

    (*v46)(v51, &v8[v27], v9);
    sub_24B2BF448(&qword_27EFCC6D8, MEMORY[0x277D08B50], MEMORY[0x277D08B68]);
    sub_24B2D54E4();
    sub_24B2D54E4();
    if (v61 == v59 && v62 == v60)
    {
      break;
    }

    v49 = sub_24B2D6004();
    v29 = v6;
    v30 = a1;
    v31 = *v50;
    (*v50)(v51, v9);
    v32 = v9;
    v33 = v47;
    sub_24B2BF3E8(v47, type metadata accessor for PeopleProvider.Subscription);

    v34 = v48;
    v31(v48, v32);
    if (v49)
    {
      goto LABEL_19;
    }

    v18 = v33;
    v9 = v32;
    a1 = v30;
    v6 = v29;
    v25 = v34;
    sub_24B2BF3E8(v8, type metadata accessor for PeopleProvider.Subscription);
LABEL_8:
    v24 = (v24 + 1) & v52;
    if (((*(v55 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
      v35 = 1;
      a2 = v43;
      return (*(v45 + 56))(a2, v35, 1, v44);
    }
  }

  v36 = *v50;
  (*v50)(v51, v9);
  sub_24B2BF3E8(v47, type metadata accessor for PeopleProvider.Subscription);

  v36(v48, v9);
LABEL_19:
  sub_24B2BF3E8(v8, type metadata accessor for PeopleProvider.Subscription);
  v37 = v42;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v37;
  v61 = *v37;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24B1BBAB8();
    v39 = v61;
  }

  a2 = v43;
  sub_24B2BF380(*(v39 + 48) + v53, v43, type metadata accessor for PeopleProvider.Subscription);
  sub_24B2BC4F0(v24);
  v35 = 0;
  *v37 = v61;
  return (*(v45 + 56))(a2, v35, 1, v44);
}

uint64_t sub_24B2B9564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for ItemsLocationsProvider.Subscription(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  sub_24B2D60E4();
  sub_24B2D1DA4();
  sub_24B2BF448(&qword_27EFCC630, MEMORY[0x277D08E20], MEMORY[0x277D08E28]);
  v28 = a1;
  sub_24B2D5254();
  sub_24B2D5404();
  v11 = sub_24B2D6124();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v23 = v3;
    v24 = v7;
    v25 = v6;
    v26 = a2;
    v27 = ~v12;
    v14 = *(v7 + 72);
    while (1)
    {
      sub_24B2BF490(*(v10 + 48) + v14 * v13, v9, type metadata accessor for ItemsLocationsProvider.Subscription);
      sub_24B2BF448(&qword_27EFCC6E8, MEMORY[0x277D08E20], MEMORY[0x277D08E40]);
      sub_24B2D54E4();
      sub_24B2D54E4();
      if (v31 == v29 && v32 == v30)
      {
        break;
      }

      v16 = sub_24B2D6004();

      if (v16)
      {
        goto LABEL_12;
      }

      sub_24B2BF3E8(v9, type metadata accessor for ItemsLocationsProvider.Subscription);
      v13 = (v13 + 1) & v27;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v17 = 1;
        a2 = v26;
        goto LABEL_15;
      }
    }

LABEL_12:
    sub_24B2BF3E8(v9, type metadata accessor for ItemsLocationsProvider.Subscription);
    v18 = v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v18;
    v31 = *v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24B1BBED0();
      v20 = v31;
    }

    a2 = v26;
    sub_24B2BF380(*(v20 + 48) + v14 * v13, v26, type metadata accessor for ItemsLocationsProvider.Subscription);
    sub_24B2BC950(v13);
    v17 = 0;
    *v18 = v31;
LABEL_15:
    v7 = v24;
    v6 = v25;
  }

  else
  {
    v17 = 1;
  }

  return (*(v7 + 56))(a2, v17, 1, v6);
}

uint64_t sub_24B2B98B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC6E0, &unk_24B2F0100);
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  v9 = sub_24B2D1DA4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v44 = type metadata accessor for ItemsProvider.Subscription(0);
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v48 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v41 - v20;
  v58 = *v3;
  sub_24B2D60E4();
  sub_24B2BF490(a1, v21, type metadata accessor for ItemsProvider.Subscription);
  v56 = *(v10 + 48);
  v57 = v10 + 48;
  if (v56(v21, 1, v9) == 1)
  {
    MEMORY[0x24C23C8D0](0);
  }

  else
  {
    (*(v10 + 32))(v14, v21, v9);
    MEMORY[0x24C23C8D0](1);
    sub_24B2BF448(&qword_27EFCC630, MEMORY[0x277D08E20], MEMORY[0x277D08E28]);
    sub_24B2D5254();
    (*(v10 + 8))(v14, v9);
  }

  v22 = sub_24B2D6124();
  v23 = -1 << *(v58 + 32);
  v24 = v22 & ~v23;
  v55 = v58 + 56;
  if (((*(v58 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
  {
    v35 = 1;
    return (*(v45 + 56))(a2, v35, 1, v44);
  }

  v42 = v3;
  v43 = a2;
  v52 = ~v23;
  v54 = *(v45 + 72);
  v46 = (v10 + 32);
  v50 = (v10 + 8);
  v25 = v48;
  v47 = v18;
  while (1)
  {
    v26 = *(v58 + 48);
    v53 = v54 * v24;
    sub_24B2BF490(v26 + v54 * v24, v18, type metadata accessor for ItemsProvider.Subscription);
    v27 = *(v6 + 48);
    sub_24B2BF490(v18, v8, type metadata accessor for ItemsProvider.Subscription);
    sub_24B2BF490(a1, &v8[v27], type metadata accessor for ItemsProvider.Subscription);
    v28 = v56;
    if (v56(v8, 1, v9) == 1)
    {
      sub_24B2BF3E8(v18, type metadata accessor for ItemsProvider.Subscription);
      if (v28(&v8[v27], 1, v9) == 1)
      {
        goto LABEL_19;
      }

      goto LABEL_7;
    }

    sub_24B2BF490(v8, v25, type metadata accessor for ItemsProvider.Subscription);
    if (v28(&v8[v27], 1, v9) == 1)
    {
      sub_24B2BF3E8(v18, type metadata accessor for ItemsProvider.Subscription);
      (*v50)(v25, v9);
LABEL_7:
      sub_24AFF8258(v8, &qword_27EFCC6E0, &unk_24B2F0100);
      goto LABEL_8;
    }

    (*v46)(v51, &v8[v27], v9);
    sub_24B2BF448(&qword_27EFCC6E8, MEMORY[0x277D08E20], MEMORY[0x277D08E40]);
    sub_24B2D54E4();
    sub_24B2D54E4();
    if (v61 == v59 && v62 == v60)
    {
      break;
    }

    v49 = sub_24B2D6004();
    v29 = v6;
    v30 = a1;
    v31 = *v50;
    (*v50)(v51, v9);
    v32 = v9;
    v33 = v47;
    sub_24B2BF3E8(v47, type metadata accessor for ItemsProvider.Subscription);

    v34 = v48;
    v31(v48, v32);
    if (v49)
    {
      goto LABEL_19;
    }

    v18 = v33;
    v9 = v32;
    a1 = v30;
    v6 = v29;
    v25 = v34;
    sub_24B2BF3E8(v8, type metadata accessor for ItemsProvider.Subscription);
LABEL_8:
    v24 = (v24 + 1) & v52;
    if (((*(v55 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
      v35 = 1;
      a2 = v43;
      return (*(v45 + 56))(a2, v35, 1, v44);
    }
  }

  v36 = *v50;
  (*v50)(v51, v9);
  sub_24B2BF3E8(v47, type metadata accessor for ItemsProvider.Subscription);

  v36(v48, v9);
LABEL_19:
  sub_24B2BF3E8(v8, type metadata accessor for ItemsProvider.Subscription);
  v37 = v42;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v37;
  v61 = *v37;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24B1BC0DC();
    v39 = v61;
  }

  a2 = v43;
  sub_24B2BF380(*(v39 + 48) + v53, v43, type metadata accessor for ItemsProvider.Subscription);
  sub_24B2BCC80(v24);
  v35 = 0;
  *v37 = v61;
  return (*(v45 + 56))(a2, v35, 1, v44);
}

uint64_t sub_24B2BA054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBC8, &qword_24B2EF018);
  MEMORY[0x28223BE20](v59);
  v6 = &v48 - v5;
  v7 = sub_24B2D1704();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v52 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - v11;
  v13 = type metadata accessor for SettingsContactsProvider.Subscription(0);
  v50 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v53 = (&v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v55 = &v48 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v48 - v21;
  v61 = *v2;
  sub_24B2D60E4();
  v60 = a1;
  sub_24B2BF490(a1, v22, type metadata accessor for SettingsContactsProvider.Subscription);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v54 = v7;
  v49 = v2;
  if (EnumCaseMultiPayload == 1)
  {
    MEMORY[0x24C23C8D0](1);
    sub_24B2D5404();
  }

  else
  {
    (*(v8 + 32))(v12, v22, v7);
    MEMORY[0x24C23C8D0](0);
    sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
    sub_24B2D5254();
    (*(v8 + 8))(v12, v7);
  }

  v24 = sub_24B2D6124();
  v25 = -1 << *(v61 + 32);
  v26 = v24 & ~v25;
  v58 = v61 + 56;
  v27 = v55;
  if (((*(v61 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
  {
    v43 = 1;
    return (*(v50 + 56))(a2, v43, 1, v13);
  }

  v48 = a2;
  v56 = ~v25;
  v57 = *(v50 + 72);
  v51 = (v8 + 32);
  v28 = (v8 + 8);
  while (1)
  {
    v29 = v57 * v26;
    sub_24B2BF490(*(v61 + 48) + v57 * v26, v19, type metadata accessor for SettingsContactsProvider.Subscription);
    v30 = &v6[*(v59 + 48)];
    sub_24B2BF490(v19, v6, type metadata accessor for SettingsContactsProvider.Subscription);
    sub_24B2BF490(v60, v30, type metadata accessor for SettingsContactsProvider.Subscription);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_24B2BF490(v6, v27, type metadata accessor for SettingsContactsProvider.Subscription);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v38 = v52;
      v39 = v54;
      (*v51)(v52, v30, v54);
      MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 = _s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0();
      v41 = *v28;
      v42 = v38;
      v27 = v55;
      (*v28)(v42, v39);
      sub_24B2BF3E8(v19, type metadata accessor for SettingsContactsProvider.Subscription);
      v41(v27, v39);
      if (MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0)
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }

    sub_24B2BF3E8(v19, type metadata accessor for SettingsContactsProvider.Subscription);
    (*v28)(v27, v54);
LABEL_7:
    sub_24AFF8258(v6, &qword_27EFCDBC8, &qword_24B2EF018);
LABEL_8:
    v26 = (v26 + 1) & v56;
    if (((*(v58 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      v43 = 1;
      a2 = v48;
      return (*(v50 + 56))(a2, v43, 1, v13);
    }
  }

  v31 = v53;
  sub_24B2BF490(v6, v53, type metadata accessor for SettingsContactsProvider.Subscription);
  v33 = *v31;
  v32 = v31[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24B2BF3E8(v19, type metadata accessor for SettingsContactsProvider.Subscription);

    goto LABEL_7;
  }

  v34 = *v30;
  v35 = *(v30 + 1);
  if (v33 != v34 || v32 != v35)
  {
    v37 = sub_24B2D6004();

    sub_24B2BF3E8(v19, type metadata accessor for SettingsContactsProvider.Subscription);
    if (v37)
    {
      goto LABEL_24;
    }

LABEL_19:
    sub_24B2BF3E8(v6, type metadata accessor for SettingsContactsProvider.Subscription);
    goto LABEL_8;
  }

  sub_24B2BF3E8(v19, type metadata accessor for SettingsContactsProvider.Subscription);
LABEL_24:
  sub_24B2BF3E8(v6, type metadata accessor for SettingsContactsProvider.Subscription);
  v44 = v49;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v44;
  v62 = *v44;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24B1BC2E8();
    v46 = v62;
  }

  a2 = v48;
  sub_24B2BF380(*(v46 + 48) + v29, v48, type metadata accessor for SettingsContactsProvider.Subscription);
  sub_24B2BD0E0(v26);
  v43 = 0;
  *v44 = v62;
  return (*(v50 + 56))(a2, v43, 1, v13);
}

void sub_24B2BA758(char a1@<W0>, _BYTE *a2@<X8>)
{
  v5 = *v2;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](0);
  v6 = a1 & 1;
  sub_24B2D6104();
  v7 = sub_24B2D6124();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != v6)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    v13 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24B1BC4F4();
      v12 = v13;
    }

    *a2 = *(*(v12 + 48) + v9);
    sub_24B2BD53C(v9);
    *v2 = v13;
  }

  else
  {
LABEL_5:
    *a2 = 2;
  }
}

uint64_t sub_24B2BA874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7A8, &unk_24B2F2FF0);
  MEMORY[0x28223BE20](v48);
  v7 = &v39 - v6;
  v8 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v43 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v14 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
  v15 = *(v14 - 8);
  v41 = v14;
  v42 = v15;
  MEMORY[0x28223BE20](v14);
  v44 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v39 - v21;
  v50 = *v3;
  sub_24B2D60E4();
  v49 = a1;
  sub_24B2BF490(a1, v22, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  v23 = *(v9 + 48);
  if (v23(v22, 1, v8) == 1)
  {
    MEMORY[0x24C23C8D0](0);
  }

  else
  {
    sub_24B2BF380(v22, v13, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    MEMORY[0x24C23C8D0](1);
    sub_24B2D1704();
    sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
    sub_24B2D5254();
    sub_24B2BF3E8(v13, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
  }

  v24 = sub_24B2D6124();
  v25 = -1 << *(v50 + 32);
  v26 = v24 & ~v25;
  v47 = v50 + 56;
  if (((*(v50 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
  {
    v33 = 1;
    return (*(v42 + 56))(a2, v33, 1, v41);
  }

  v39 = v3;
  v40 = a2;
  v45 = ~v25;
  v46 = *(v42 + 72);
  v27 = v44;
  while (1)
  {
    v28 = v46 * v26;
    sub_24B2BF490(*(v50 + 48) + v46 * v26, v19, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    v29 = *(v48 + 48);
    sub_24B2BF490(v19, v7, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    sub_24B2BF490(v49, &v7[v29], type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    if (v23(v7, 1, v8) == 1)
    {
      sub_24B2BF3E8(v19, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      if (v23(&v7[v29], 1, v8) == 1)
      {
        goto LABEL_16;
      }

      goto LABEL_7;
    }

    sub_24B2BF490(v7, v27, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    if (v23(&v7[v29], 1, v8) != 1)
    {
      break;
    }

    sub_24B2BF3E8(v19, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    sub_24B2BF3E8(v27, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
LABEL_7:
    sub_24AFF8258(v7, &qword_27EFCC7A8, &unk_24B2F2FF0);
LABEL_8:
    v26 = (v26 + 1) & v45;
    if (((*(v47 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      v33 = 1;
      a2 = v40;
      return (*(v42 + 56))(a2, v33, 1, v41);
    }
  }

  v30 = v43;
  sub_24B2BF380(&v7[v29], v43, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
  MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 = _s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0();
  v32 = v30;
  v27 = v44;
  sub_24B2BF3E8(v32, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
  sub_24B2BF3E8(v19, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  sub_24B2BF3E8(v27, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
  if ((MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 & 1) == 0)
  {
    sub_24B2BF3E8(v7, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    goto LABEL_8;
  }

LABEL_16:
  sub_24B2BF3E8(v7, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  v34 = v39;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v34;
  v51 = *v34;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24B1BC634();
    v36 = v51;
  }

  v37 = *(v36 + 48) + v28;
  a2 = v40;
  sub_24B2BF380(v37, v40, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  sub_24B2BD6F0(v26);
  v33 = 0;
  *v34 = v51;
  return (*(v42 + 56))(a2, v33, 1, v41);
}

void sub_24B2BAE94(int64_t a1)
{
  v3 = sub_24B2D1704();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_24B2D5B64();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
        v23 = sub_24B2D5244();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

void sub_24B2BB19C(int64_t a1)
{
  v26 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  v3 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *v1 + 56;
  v8 = -1 << *(*v1 + 32);
  v9 = (a1 + 1) & ~v8;
  if (((1 << v9) & *(v7 + 8 * (v9 >> 6))) != 0)
  {
    v10 = ~v8;

    v11 = sub_24B2D5B64();
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) != 0)
    {
      v25 = (v11 + 1) & v10;
      v12 = *(v3 + 72);
      v13 = v10;
      do
      {
        v14 = v7;
        v15 = v12;
        v16 = v12 * v9;
        sub_24B2BF490(*(v6 + 48) + v12 * v9, v5, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
        sub_24B2D60E4();
        sub_24B2D1704();
        sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
        v17 = v13;
        sub_24B2D5254();
        sub_24B2D6104();
        v18 = sub_24B2D6124();
        sub_24B2BF3E8(v5, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
        v19 = v18 & v17;
        v13 = v17;
        if (a1 >= v25)
        {
          if (v19 < v25)
          {
            v12 = v15;
            goto LABEL_5;
          }

          v12 = v15;
          if (a1 < v19)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v12 = v15;
          if (v19 < v25 && a1 < v19)
          {
            goto LABEL_5;
          }
        }

        v20 = v12 * a1;
        if (v12 * a1 < v16 || *(v6 + 48) + v12 * a1 >= (*(v6 + 48) + v16 + v12))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_17;
        }

        a1 = v9;
        if (v20 != v16)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_17:
          a1 = v9;
        }

LABEL_5:
        v9 = (v9 + 1) & v13;
        v7 = v14;
      }

      while (((*(v14 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
    }

    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v21 = *(v6 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v23;
    ++*(v6 + 36);
  }
}

void sub_24B2BB4BC(int64_t a1)
{
  v39 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  MEMORY[0x28223BE20](v39);
  v38 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa(0);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa(0);
  MEMORY[0x28223BE20](v6 - 8);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v8 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  v14 = *v1;
  v15 = *v1 + 56;
  v16 = -1 << *(*v1 + 32);
  v17 = (a1 + 1) & ~v16;
  if (((1 << v17) & *(v15 + 8 * (v17 >> 6))) != 0)
  {
    v18 = ~v16;

    v19 = sub_24B2D5B64();
    if ((*(v15 + 8 * (v17 >> 6)) & (1 << v17)) != 0)
    {
      v41 = v15;
      v42 = (v19 + 1) & v18;
      v20 = *(v8 + 72);
      v21 = v18;
      v40 = v18;
      while (1)
      {
        v22 = v20;
        v23 = v20 * v17;
        sub_24B2BF490(*(v14 + 48) + v20 * v17, v13, _s14descr285E46659O16SubscriptionDataOMa);
        sub_24B2D60E4();
        sub_24B2BF490(v13, v10, _s14descr285E46659O16SubscriptionDataOMa);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 1)
        {
          if (EnumCaseMultiPayload)
          {
            v25 = v37;
            sub_24B2BF380(v10, v37, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
            MEMORY[0x24C23C8D0](3);
            sub_24B2D1704();
            sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
            sub_24B2D5254();
            v26 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa;
          }

          else
          {
            v25 = v36;
            sub_24B2BF380(v10, v36, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
            MEMORY[0x24C23C8D0](2);
            sub_24B2D1704();
            sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
            sub_24B2D5254();
            v26 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
          }

          sub_24B2BF3E8(v25, v26);
          v21 = v40;
          v15 = v41;
        }

        else if (EnumCaseMultiPayload == 2)
        {
          v27 = v38;
          sub_24B2BF380(v10, v38, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
          MEMORY[0x24C23C8D0](4);
          sub_24B2D1704();
          sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
          v21 = v40;
          sub_24B2D5254();
          sub_24B2D6104();
          v28 = v27;
          v15 = v41;
          sub_24B2BF3E8(v28, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
        }

        else if (EnumCaseMultiPayload == 3)
        {
          MEMORY[0x24C23C8D0](0);
        }

        else
        {
          MEMORY[0x24C23C8D0](1);
        }

        v29 = sub_24B2D6124();
        sub_24B2BF3E8(v13, _s14descr285E46659O16SubscriptionDataOMa);
        v30 = v29 & v21;
        if (a1 >= v42)
        {
          break;
        }

        v20 = v22;
        if (v30 < v42)
        {
          goto LABEL_21;
        }

LABEL_22:
        v31 = v20 * a1;
        if (v20 * a1 < v23 || *(v14 + 48) + v20 * a1 >= (*(v14 + 48) + v23 + v20))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v17;
          if (v31 == v23)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v17;
LABEL_6:
        v17 = (v17 + 1) & v21;
        if (((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      v20 = v22;
      if (v30 < v42)
      {
        goto LABEL_6;
      }

LABEL_21:
      if (a1 < v30)
      {
        goto LABEL_6;
      }

      goto LABEL_22;
    }

LABEL_26:

    *(v15 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v15 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v32 = *(v14 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v34;
    ++*(v14 + 36);
  }
}

void sub_24B2BBAB0(unint64_t a1, __n128 a2)
{
  v55 = sub_24B2D14C4();
  v4 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v50 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_24B2D15F4();
  v6 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC810, &qword_24B2F5690);
  MEMORY[0x28223BE20](v9 - 8);
  v54 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - v12;
  v63 = type metadata accessor for ContactsProvider.Subscription(0);
  v14 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v60 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v56 = &v47 - v17;
  v18 = *v2;
  v19 = *v2 + 56;
  v20 = -1 << *(*v2 + 32);
  v21 = (a1 + 1) & ~v20;
  v22 = v21 >> 6;
  v23 = *(v19 + 8 * (v21 >> 6));
  v64 = v21;
  v24 = 1 << v21;
  if (((1 << v21) & v23) != 0)
  {
    v51 = v6;
    v58 = v4;
    v25 = ~v20;

    v26 = sub_24B2D5B64();
    if ((*(v19 + 8 * v22) & v24) != 0)
    {
      v57 = (v26 + 1) & v25;
      v27 = *(v14 + 72);
      v53 = (v51 + 4);
      v52 = (v58 + 48);
      v49 = (v58 + 32);
      v48 = (v58 + 8);
      ++v51;
      v58 = v19;
      v28 = v56;
      v29 = v64;
      v61 = v27;
      v62 = v25;
      while (1)
      {
        v31 = *(v18 + 48);
        v64 = v29;
        v32 = v27 * v29;
        sub_24B2BF490(v31 + v27 * v29, v28, type metadata accessor for ContactsProvider.Subscription);
        sub_24B2D60E4();
        v33 = v60;
        sub_24B2BF490(v28, v60, type metadata accessor for ContactsProvider.Subscription);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          MEMORY[0x24C23C8D0](1);
          v28 = v56;
          sub_24B2D5404();
        }

        else
        {
          v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820, &unk_24B2EF120) + 48);
          sub_24B0391CC(v33, v13, &qword_27EFCC810, &qword_24B2F5690);
          (*v53)(v8, v33 + v34, v59);
          MEMORY[0x24C23C8D0](0);
          v35 = v54;
          sub_24B008890(v13, v54, &qword_27EFCC810, &qword_24B2F5690);
          if ((*v52)(v35, 1, v55) == 1)
          {
            sub_24B2D6104();
          }

          else
          {
            v36 = v50;
            v37 = v55;
            (*v49)(v50, v54, v55);
            sub_24B2D6104();
            sub_24B2BF448(&qword_27EFCC830, MEMORY[0x277D08B38], MEMORY[0x277D08B40]);
            sub_24B2D5254();
            v38 = v36;
            v28 = v56;
            (*v48)(v38, v37);
          }

          sub_24B2BF448(&qword_27EFCC740, MEMORY[0x277D08B70], MEMORY[0x277D08B78]);
          v39 = v59;
          sub_24B2D5254();
          (*v51)(v8, v39);
          sub_24AFF8258(v13, &qword_27EFCC810, &qword_24B2F5690);
        }

        v40 = sub_24B2D6124();
        sub_24B2BF3E8(v28, type metadata accessor for ContactsProvider.Subscription);
        v30 = v62;
        v41 = v40 & v62;
        if (a1 >= v57)
        {
          break;
        }

        v19 = v58;
        v42 = v64;
        v27 = v61;
        if (v41 < v57)
        {
          goto LABEL_17;
        }

LABEL_18:
        v43 = v27 * a1;
        if ((v27 * a1) < v32 || *(v18 + 48) + v27 * a1 >= *(v18 + 48) + v32 + v27)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v42;
          if (v43 == v32)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        v27 = v61;
        v30 = v62;
        a1 = v42;
LABEL_6:
        v29 = (v42 + 1) & v30;
        if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v19 = v58;
      v42 = v64;
      v27 = v61;
      if (v41 < v57)
      {
        goto LABEL_6;
      }

LABEL_17:
      if (a1 < v41)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }

LABEL_22:

    *(v19 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v19 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v44 = *(v18 + 16);
  v45 = __OFSUB__(v44, 1);
  v46 = v44 - 1;
  if (v45)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v46;
    ++*(v18 + 36);
  }
}

void sub_24B2BC1A0(int64_t a1)
{
  v24 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *v1 + 56;
  v8 = -1 << *(*v1 + 32);
  v9 = (a1 + 1) & ~v8;
  if (((1 << v9) & *(v7 + 8 * (v9 >> 6))) != 0)
  {
    v10 = ~v8;

    v11 = sub_24B2D5B64();
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) != 0)
    {
      v23 = (v11 + 1) & v10;
      v12 = *(v3 + 72);
      do
      {
        v13 = v7;
        v14 = v12;
        v15 = v12 * v9;
        sub_24B2BF490(*(v6 + 48) + v12 * v9, v5, type metadata accessor for PeopleLocationsProvider.Subscription);
        sub_24B2D60E4();
        sub_24B2D1574();
        sub_24B2BF448(&qword_27EFCC6C0, MEMORY[0x277D08B50], MEMORY[0x277D08B58]);
        sub_24B2D5254();
        sub_24B2D5404();

        v16 = sub_24B2D6124();
        sub_24B2BF3E8(v5, type metadata accessor for PeopleLocationsProvider.Subscription);
        v17 = v16 & v10;
        if (a1 >= v23)
        {
          if (v17 < v23)
          {
            v12 = v14;
            goto LABEL_5;
          }

          v12 = v14;
          if (a1 < v17)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v12 = v14;
          if (v17 < v23 && a1 < v17)
          {
            goto LABEL_5;
          }
        }

        v18 = v12 * a1;
        if (v12 * a1 < v15 || *(v6 + 48) + v12 * a1 >= (*(v6 + 48) + v15 + v12))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_17;
        }

        a1 = v9;
        if (v18 != v15)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_17:
          a1 = v9;
        }

LABEL_5:
        v9 = (v9 + 1) & v10;
        v7 = v13;
      }

      while (((*(v13 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
    }

    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v19 = *(v6 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v21;
    ++*(v6 + 36);
  }
}

void sub_24B2BC4F0(int64_t a1)
{
  v3 = sub_24B2D1574();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for PeopleProvider.Subscription(0);
  MEMORY[0x28223BE20](v37);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  v12 = *v1;
  v13 = *v1 + 56;
  v14 = -1 << *(*v1 + 32);
  v15 = (a1 + 1) & ~v14;
  if (((1 << v15) & *(v13 + 8 * (v15 >> 6))) != 0)
  {
    v43 = v9;
    v38 = v4;
    v16 = ~v14;

    v17 = sub_24B2D5B64();
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) != 0)
    {
      v18 = (v17 + 1) & v16;
      v19 = *(v43 + 72);
      v20 = v38;
      v42 = (v38 + 6);
      v43 = v19;
      ++v38;
      v39 = (v20 + 4);
      v21 = v16;
      v22 = v19;
      v40 = v11;
      v44 = v18;
      v45 = v3;
      while (1)
      {
        v23 = v22 * v15;
        sub_24B2BF490(*(v12 + 48) + v22 * v15, v11, type metadata accessor for PeopleProvider.Subscription);
        sub_24B2D60E4();
        sub_24B2BF490(v11, v7, type metadata accessor for PeopleProvider.Subscription);
        v24 = v45;
        if ((*v42)(v7, 1, v45) == 1)
        {
          MEMORY[0x24C23C8D0](0);
        }

        else
        {
          v25 = a1;
          v26 = v12;
          v27 = v21;
          v28 = v13;
          v29 = v41;
          (*v39)(v41, v7, v24);
          MEMORY[0x24C23C8D0](1);
          sub_24B2BF448(&qword_27EFCC6C0, MEMORY[0x277D08B50], MEMORY[0x277D08B58]);
          sub_24B2D5254();
          v30 = v29;
          v13 = v28;
          v21 = v27;
          v12 = v26;
          a1 = v25;
          v11 = v40;
          (*v38)(v30, v24);
        }

        v31 = sub_24B2D6124();
        sub_24B2BF3E8(v11, type metadata accessor for PeopleProvider.Subscription);
        v32 = v31 & v21;
        v22 = v43;
        if (a1 >= v44)
        {
          break;
        }

        if (v32 < v44)
        {
          goto LABEL_14;
        }

LABEL_15:
        v33 = v43 * a1;
        if (v43 * a1 < v23 || *(v12 + 48) + v43 * a1 >= (*(v12 + 48) + v23 + v43))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v15;
          if (v33 == v23)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v15;
LABEL_6:
        v15 = (v15 + 1) & v21;
        if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      if (v32 < v44)
      {
        goto LABEL_6;
      }

LABEL_14:
      if (a1 < v32)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

LABEL_19:

    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v34 = *(v12 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v36;
    ++*(v12 + 36);
  }
}

void sub_24B2BC950(int64_t a1)
{
  v24 = type metadata accessor for ItemsLocationsProvider.Subscription(0);
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *v1 + 56;
  v8 = -1 << *(*v1 + 32);
  v9 = (a1 + 1) & ~v8;
  if (((1 << v9) & *(v7 + 8 * (v9 >> 6))) != 0)
  {
    v10 = ~v8;

    v11 = sub_24B2D5B64();
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) != 0)
    {
      v25 = (v11 + 1) & v10;
      v12 = *(v3 + 72);
      v13 = v10;
      do
      {
        v14 = v12;
        v15 = v12 * v9;
        sub_24B2BF490(*(v6 + 48) + v12 * v9, v5, type metadata accessor for ItemsLocationsProvider.Subscription);
        sub_24B2D60E4();
        sub_24B2D1DA4();
        sub_24B2BF448(&qword_27EFCC630, MEMORY[0x277D08E20], MEMORY[0x277D08E28]);
        v16 = v13;
        sub_24B2D5254();
        sub_24B2D5404();
        v17 = sub_24B2D6124();
        sub_24B2BF3E8(v5, type metadata accessor for ItemsLocationsProvider.Subscription);
        v18 = v17 & v16;
        v13 = v16;
        if (a1 >= v25)
        {
          if (v18 < v25)
          {
            v12 = v14;
            goto LABEL_5;
          }

          v12 = v14;
          if (a1 < v18)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v12 = v14;
          if (v18 < v25 && a1 < v18)
          {
            goto LABEL_5;
          }
        }

        v19 = v12 * a1;
        if (v12 * a1 < v15 || *(v6 + 48) + v12 * a1 >= (*(v6 + 48) + v15 + v12))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_17;
        }

        a1 = v9;
        if (v19 != v15)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_17:
          a1 = v9;
        }

LABEL_5:
        v9 = (v9 + 1) & v13;
      }

      while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
    }

    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v20 = *(v6 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v22;
    ++*(v6 + 36);
  }
}

void sub_24B2BCC80(int64_t a1)
{
  v3 = sub_24B2D1DA4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for ItemsProvider.Subscription(0);
  MEMORY[0x28223BE20](v37);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  v12 = *v1;
  v13 = *v1 + 56;
  v14 = -1 << *(*v1 + 32);
  v15 = (a1 + 1) & ~v14;
  if (((1 << v15) & *(v13 + 8 * (v15 >> 6))) != 0)
  {
    v43 = v9;
    v38 = v4;
    v16 = ~v14;

    v17 = sub_24B2D5B64();
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) != 0)
    {
      v18 = (v17 + 1) & v16;
      v19 = *(v43 + 72);
      v20 = v38;
      v42 = (v38 + 6);
      v43 = v19;
      ++v38;
      v39 = (v20 + 4);
      v21 = v16;
      v22 = v19;
      v40 = v11;
      v44 = v18;
      v45 = v3;
      while (1)
      {
        v23 = v22 * v15;
        sub_24B2BF490(*(v12 + 48) + v22 * v15, v11, type metadata accessor for ItemsProvider.Subscription);
        sub_24B2D60E4();
        sub_24B2BF490(v11, v7, type metadata accessor for ItemsProvider.Subscription);
        v24 = v45;
        if ((*v42)(v7, 1, v45) == 1)
        {
          MEMORY[0x24C23C8D0](0);
        }

        else
        {
          v25 = a1;
          v26 = v12;
          v27 = v21;
          v28 = v13;
          v29 = v41;
          (*v39)(v41, v7, v24);
          MEMORY[0x24C23C8D0](1);
          sub_24B2BF448(&qword_27EFCC630, MEMORY[0x277D08E20], MEMORY[0x277D08E28]);
          sub_24B2D5254();
          v30 = v29;
          v13 = v28;
          v21 = v27;
          v12 = v26;
          a1 = v25;
          v11 = v40;
          (*v38)(v30, v24);
        }

        v31 = sub_24B2D6124();
        sub_24B2BF3E8(v11, type metadata accessor for ItemsProvider.Subscription);
        v32 = v31 & v21;
        v22 = v43;
        if (a1 >= v44)
        {
          break;
        }

        if (v32 < v44)
        {
          goto LABEL_14;
        }

LABEL_15:
        v33 = v43 * a1;
        if (v43 * a1 < v23 || *(v12 + 48) + v43 * a1 >= (*(v12 + 48) + v23 + v43))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v15;
          if (v33 == v23)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v15;
LABEL_6:
        v15 = (v15 + 1) & v21;
        if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      if (v32 < v44)
      {
        goto LABEL_6;
      }

LABEL_14:
      if (a1 < v32)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

LABEL_19:

    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v34 = *(v12 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v36;
    ++*(v12 + 36);
  }
}

void sub_24B2BD0E0(unint64_t a1)
{
  v37 = sub_24B2D1704();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for SettingsContactsProvider.Subscription(0);
  v5 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v41 = &v33 - v8;
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) == 0)
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    goto LABEL_22;
  }

  v13 = ~v11;

  v14 = a1;
  v15 = sub_24B2D5B64();
  if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
  {
    goto LABEL_20;
  }

  v40 = v9;
  v16 = (v15 + 1) & v13;
  v17 = *(v5 + 72);
  v34 = (v3 + 8);
  v35 = (v3 + 32);
  do
  {
    v18 = v13;
    v19 = v10;
    v20 = v41;
    v21 = v17;
    v22 = v17 * v12;
    sub_24B2BF490(*(v40 + 48) + v17 * v12, v41, type metadata accessor for SettingsContactsProvider.Subscription);
    sub_24B2D60E4();
    v23 = v38;
    sub_24B2BF490(v20, v38, type metadata accessor for SettingsContactsProvider.Subscription);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      MEMORY[0x24C23C8D0](1);
      sub_24B2D5404();
    }

    else
    {
      v24 = v36;
      v25 = v23;
      v26 = v37;
      (*v35)(v36, v25, v37);
      MEMORY[0x24C23C8D0](0);
      sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
      sub_24B2D5254();
      (*v34)(v24, v26);
    }

    v27 = sub_24B2D6124();
    sub_24B2BF3E8(v41, type metadata accessor for SettingsContactsProvider.Subscription);
    v13 = v18;
    v28 = v27 & v18;
    if (v14 >= v16)
    {
      v10 = v19;
      v17 = v21;
      if (v28 < v16)
      {
        goto LABEL_6;
      }

LABEL_14:
      if (v14 < v28)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

    v10 = v19;
    v17 = v21;
    if (v28 < v16)
    {
      goto LABEL_14;
    }

LABEL_15:
    v29 = v17 * v14;
    if (v17 * v14 < v22 || *(v40 + 48) + v17 * v14 >= (*(v40 + 48) + v22 + v17))
    {
      swift_arrayInitWithTakeFrontToBack();
LABEL_5:
      v14 = v12;
      goto LABEL_6;
    }

    v14 = v12;
    if (v29 != v22)
    {
      swift_arrayInitWithTakeBackToFront();
      goto LABEL_5;
    }

LABEL_6:
    v12 = (v12 + 1) & v18;
  }

  while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  v9 = v40;
LABEL_20:

  *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v14) - 1;
LABEL_22:
  v30 = *(v9 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v32;
    ++*(v9 + 36);
  }
}

void sub_24B2BD53C(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_24B2D5B64();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_24B2D60E4();
        MEMORY[0x24C23C8D0](0);
        sub_24B2D6104();
        v10 = sub_24B2D6124() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }
}

void sub_24B2BD6F0(int64_t a1)
{
  v3 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v32 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
  MEMORY[0x28223BE20](v29);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - v10;
  v12 = *v1;
  v13 = *v1 + 56;
  v14 = -1 << *(*v1 + 32);
  v15 = (a1 + 1) & ~v14;
  if (((1 << v15) & *(v13 + 8 * (v15 >> 6))) != 0)
  {
    v34 = v9;
    v35 = v4;
    v16 = ~v14;

    v17 = sub_24B2D5B64();
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) != 0)
    {
      v18 = (v17 + 1) & v16;
      v19 = *(v34 + 72);
      v33 = (v35 + 48);
      v34 = v19;
      v30 = v18;
      v31 = v16;
      while (1)
      {
        v20 = *(v12 + 48);
        v35 = v19 * v15;
        sub_24B2BF490(v20 + v19 * v15, v11, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        sub_24B2D60E4();
        sub_24B2BF490(v11, v7, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        if ((*v33)(v7, 1, v3) == 1)
        {
          MEMORY[0x24C23C8D0](0);
        }

        else
        {
          v21 = v32;
          sub_24B2BF380(v7, v32, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
          MEMORY[0x24C23C8D0](1);
          sub_24B2D1704();
          sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
          v16 = v31;
          sub_24B2D5254();
          v22 = v21;
          v18 = v30;
          sub_24B2BF3E8(v22, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
        }

        v23 = sub_24B2D6124();
        sub_24B2BF3E8(v11, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        v24 = v23 & v16;
        if (a1 >= v18)
        {
          break;
        }

        v19 = v34;
        if (v24 < v18)
        {
          goto LABEL_14;
        }

LABEL_15:
        v25 = v19 * a1;
        if (v19 * a1 < v35 || *(v12 + 48) + v19 * a1 >= (*(v12 + 48) + v35 + v19))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v15;
          if (v25 == v35)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v15;
LABEL_6:
        v15 = (v15 + 1) & v16;
        if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v19 = v34;
      if (v24 < v18)
      {
        goto LABEL_6;
      }

LABEL_14:
      if (a1 < v24)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

LABEL_19:

    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v26 = *(v12 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v28;
    ++*(v12 + 36);
  }
}

void sub_24B2BDB5C(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_24B2D5B64();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_24B2D60E4();
        MEMORY[0x24C23C8D0](0);
        v10 = sub_24B2D6124() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }
}

uint64_t sub_24B2BDD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_24B2BDD24, 0, 0);
}

uint64_t sub_24B2BDD24()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24B2BDDE8, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_24B2BDDE8()
{
  sub_24B28C36C(*(v0 + 56));

  return MEMORY[0x2822009F8](sub_24B2BF7FC, 0, 0);
}

uint64_t sub_24B2BDE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_24B2BDE7C, 0, 0);
}

uint64_t sub_24B2BDE7C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24B2BDF40, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_24B2BDF40()
{
  sub_24B28C634(*(v0 + 56), &OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_dataStorage);

  return MEMORY[0x2822009F8](sub_24B2BF7FC, 0, 0);
}

uint64_t sub_24B2BDFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_24B2BDFDC, 0, 0);
}

uint64_t sub_24B2BDFDC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24B2BE0A0, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_24B2BE0A0()
{
  sub_24B28C634(*(v0 + 56), &OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_dataStorage);

  return MEMORY[0x2822009F8](sub_24B2BF7FC, 0, 0);
}

uint64_t sub_24B2BE118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_24B2BE13C, 0, 0);
}

uint64_t sub_24B2BE13C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24B2BE200, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_24B2BE200()
{
  sub_24B28C634(*(v0 + 56), &OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_dataStorage);

  return MEMORY[0x2822009F8](sub_24B2BF7FC, 0, 0);
}

uint64_t sub_24B2BE278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_24B2BE29C, 0, 0);
}

uint64_t sub_24B2BE29C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24B2BE360, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_24B2BE360()
{
  sub_24B28C634(*(v0 + 56), &OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_dataStorage);

  return MEMORY[0x2822009F8](sub_24B2BF7FC, 0, 0);
}

uint64_t sub_24B2BE3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_24B2BE3FC, 0, 0);
}

uint64_t sub_24B2BE3FC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24B2BE4C0, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_24B2BE4C0()
{
  sub_24B28C634(*(v0 + 56), &OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_dataStorage);

  return MEMORY[0x2822009F8](sub_24B2BE538, 0, 0);
}

uint64_t sub_24B2BE560(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24AFFDE44;

  return sub_24B283A18(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24B2BE73C(uint64_t a1)
{
  v4 = *(sub_24B2D2504() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AFFDE44;

  return sub_24B2BDD00(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_24B2BE870(uint64_t a1)
{
  v4 = *(sub_24B2D2504() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AFFDE44;

  return sub_24B2BDE58(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_24B2BE9A4(uint64_t a1)
{
  v4 = *(sub_24B2D2504() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AFFDE44;

  return sub_24B2BDFB8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_24B2BEAD8(uint64_t a1)
{
  v4 = *(sub_24B2D2504() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AFFDE44;

  return sub_24B2BE118(a1, v6, v7, v8, v1 + v5);
}

void sub_24B2BEBE4()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__fullScreenInteractiveMap) = *(v0 + 24);
}

uint64_t sub_24B2BEC28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AFFDE44;

  return sub_24B29FB44(a1, v4, v5, v6);
}

uint64_t sub_24B2BECDC(uint64_t a1)
{
  v4 = *(sub_24B2D15F4() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AFFDE44;

  return sub_24B29FF04(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_24B2BEDDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AFFDE44;

  return sub_24B29EB10(a1, v4, v5, v7, v6);
}

uint64_t sub_24B2BEF18(uint64_t a1)
{
  v4 = *(sub_24B2D2504() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AFFDE44;

  return sub_24B2BE278(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_75Tm()
{
  v1 = sub_24B2D2504();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_79Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v3 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_24B2BF274(uint64_t a1)
{
  v4 = *(sub_24B2D2504() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AFFD370;

  return sub_24B2BE3D8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_24B2BF380(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B2BF3E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B2BF448(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B2BF490(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24B2BF51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCF8A8;
  if (!qword_27EFCF8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF8A8);
  }

  return result;
}

uint64_t objectdestroyTm_30(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, 40, 7);
}

uint64_t sub_24B2BF5C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AFFDE44;

  return sub_24B132B8C(v2, v3, v5, v4);
}

uint64_t objectdestroy_43Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24B2BF6D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24AFFDE44;

  return sub_24B285594(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24B2BF820@<X0>(void *a1@<X8>)
{
  v66 = a1;
  v1 = sub_24B2D2674();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_24B2D3184();
  v5 = *(v57 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v57);
  v63 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v62 = &v57 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v57 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v57 - v13;
  v70 = &v57 - v13;
  sub_24B2D3174();
  v67 = sub_24B2D2AE4();
  LODWORD(v69) = *MEMORY[0x277D09048];
  v64 = *(v2 + 104);
  v58 = v1;
  v64(v4);
  v15 = sub_24B2D2954();
  v16 = *(v2 + 8);
  v59 = (v2 + 8);
  v60 = v16;
  (v16)(v4, v1);
  v71 = v5;
  v17 = v5 + 32;
  v18 = *(v5 + 32);
  v68 = v11;
  v19 = v14;
  v20 = v57;
  v18(v11, v19, v57);
  v72 = *(v5 + 80);
  v21 = (v72 + 24) & ~v72;
  v22 = swift_allocObject();
  *(v22 + 16) = v15;
  v23 = v11;
  v24 = v20;
  v18((v22 + v21), v23, v20);
  v25 = swift_allocObject();
  *(v25 + 16) = &unk_24B2F09A0;
  *(v25 + 24) = v15;
  *&v74 = &unk_24B2F0990;
  *(&v74 + 1) = v22;
  *&v75 = &unk_24B2F09B0;
  *(&v75 + 1) = v25;
  v76 = sub_24B1F0DA0;
  v77 = 0;
  type metadata accessor for PeopleProvider(0);
  swift_allocObject();

  v65 = PeopleProvider.init(dependencies:)(&v74);
  v26 = v70;
  sub_24B2D3174();
  v27 = v58;
  (v64)(v4, v69, v58);
  v28 = sub_24B2D2954();
  v60(v4, v27);
  v29 = v68;
  v30 = v26;
  v61 = v17;
  v18(v68, v26, v24);
  v31 = swift_allocObject();
  *(v31 + 16) = v28;
  v18((v31 + v21), v29, v24);
  v32 = swift_allocObject();
  *(v32 + 16) = &unk_24B2F0F08;
  *(v32 + 24) = v28;
  *&v74 = &unk_24B2F0EF8;
  *(&v74 + 1) = v31;
  *&v75 = &unk_24B2F0F38;
  *(&v75 + 1) = v32;
  v76 = &unk_24B2F0F18;
  v77 = v28;
  v78 = &unk_24B2F0F28;
  v79 = v28;
  v80 = sub_24B1FEF20;
  v81 = 0;
  v82 = sub_24B1FEF34;
  v83 = 0;
  type metadata accessor for PeopleLocationsProvider(0);
  swift_allocObject();
  swift_retain_n();
  v64 = PeopleLocationsProvider.init(dependencies:)(&v74);
  sub_24B2D3174();
  v59 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v33 = *(v71++ + 2);
  v33(v29, v30, v24);
  v34 = (v72 + 16) & ~v72;
  v35 = v34 + v6;
  v60 = swift_allocObject();
  v18(v60 + v34, v29, v24);
  v36 = v62;
  v37 = v70;
  v33(v62, v70, v24);
  v67 = v35;
  v38 = swift_allocObject();
  v69 = v34;
  v18((v38 + v34), v36, v24);
  *(v38 + ((v35 + 7) & 0xFFFFFFFFFFFFFFF8)) = v59;
  v39 = v63;
  v18(v63, v37, v24);
  v40 = swift_allocObject();
  v18((v40 + v34), v39, v24);
  v41 = swift_allocObject();
  *(v41 + 16) = &unk_24B2EF0B0;
  *(v41 + 24) = v40;
  *&v74 = sub_24B183EAC;
  *(&v74 + 1) = v60;
  *&v75 = &unk_24B2EF0A0;
  *(&v75 + 1) = v38;
  v76 = &unk_24B2EF0C0;
  v77 = v41;
  type metadata accessor for ContactsProvider(0);
  swift_allocObject();
  v71 = ContactsProvider.init(dependencies:)(&v74);
  static UserLocationProvider.Dependencies.live(customEffectiveBundleIdentifier:)(0, 0, &v74);
  v73[0] = v74;
  v73[1] = v75;
  type metadata accessor for UserLocationProvider(0);
  swift_allocObject();
  v63 = UserLocationProvider.init(dependencies:)(v73);
  v42 = v37;
  sub_24B2D3174();
  v43 = v68;
  v18(v68, v42, v24);
  v44 = swift_allocObject();
  v18((v44 + v69), v43, v24);
  type metadata accessor for ETAProvider(0);
  v45 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_24B2D3174();
  v46 = v45 + OBJC_IVAR____TtC12FindMyUICore11ETAProvider_dataStorage;
  v47 = MEMORY[0x277D84F90];
  *(v46 + 24) = sub_24B193CA8(MEMORY[0x277D84F90]);
  *(v46 + 16) = 0;
  *(v46 + 32) = sub_24B1933E8(v47);
  *v46 = 0x69766F7250415445;
  *(v46 + 8) = 0xEB00000000726564;
  v48 = OBJC_IVAR____TtC12FindMyUICore11ETAProvider_etaQueryTaskByIdentifier;
  *(v45 + v48) = sub_24B193E9C(v47);
  *(v45 + 112) = &unk_24B2EF440;
  *(v45 + 120) = v44;
  v49 = v70;
  sub_24B2D3174();
  v18(v43, v49, v24);
  v62 = swift_allocObject();
  v50 = v69;
  v18(&v62[v69], v43, v24);
  sub_24B2D3174();
  v18(v43, v49, v24);
  v51 = swift_allocObject();
  v18((v51 + v50), v43, v24);
  sub_24B2D3174();
  v18(v43, v49, v24);
  v52 = swift_allocObject();
  result = (v18)(v52 + v50, v43, v24);
  v54 = v66;
  v55 = v64;
  *v66 = v65;
  v54[1] = v55;
  v56 = v63;
  v54[2] = v71;
  v54[3] = v56;
  v54[4] = v45;
  v54[5] = &unk_24B2F4BE0;
  v54[6] = v62;
  v54[7] = &unk_24B2F4BE8;
  v54[8] = v51;
  v54[9] = sub_24B1246F4;
  v54[10] = v52;
  return result;
}

uint64_t sub_24B2C0340@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v79 = a2;
  v76 = a1;
  v81 = a3;
  v4 = sub_24B2D1744();
  v70 = *(v4 - 8);
  v71 = v4;
  MEMORY[0x28223BE20](v4);
  v69 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B2D1544();
  v67 = *(v6 - 8);
  v68 = v6;
  MEMORY[0x28223BE20](v6);
  v66 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24B2D1844();
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x28223BE20](v8);
  v63 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24B2D18D4();
  v61 = *(v10 - 8);
  v62 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288, &unk_24B2EBD20);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v59 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A80, &qword_24B2E8E00);
  MEMORY[0x28223BE20](v19 - 8);
  v60 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v72 = &v59 - v22;
  MEMORY[0x28223BE20](v23);
  v80 = &v59 - v24;
  MEMORY[0x28223BE20](v25);
  v78 = &v59 - v26;
  MEMORY[0x28223BE20](v27);
  v77 = &v59 - v28;
  MEMORY[0x28223BE20](v29);
  v75 = &v59 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v59 - v32;
  v34 = *(type metadata accessor for ListPersonInfo(0) + 28);
  v74 = v3;
  sub_24B008890(v3 + v34, v18, &qword_27EFCB288, &unk_24B2EBD20);
  v35 = sub_24B2D1944();
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);
  v38 = v37(v18, 1, v35);
  v73 = v33;
  if (v38 == 1)
  {
    sub_24AFF8258(v18, &qword_27EFCB288, &unk_24B2EBD20);
    v39 = sub_24B2D1BB4();
    (*(*(v39 - 8) + 56))(v33, 1, 1, v39);
  }

  else
  {
    sub_24B2D18E4();
    (*(v36 + 8))(v18, v35);
    sub_24B2D18C4();
    (*(v61 + 8))(v12, v62);
  }

  sub_24B008890(v74 + v34, v15, &qword_27EFCB288, &unk_24B2EBD20);
  if (v37(v15, 1, v35) == 1)
  {
    sub_24AFF8258(v15, &qword_27EFCB288, &unk_24B2EBD20);
    v40 = sub_24B2D1BB4();
    v41 = v75;
    (*(*(v40 - 8) + 56))(v75, 1, 1, v40);
  }

  else
  {
    v42 = v63;
    sub_24B2D1854();
    (*(v36 + 8))(v15, v35);
    v41 = v75;
    sub_24B2D1834();
    (*(v64 + 8))(v42, v65);
  }

  v43 = v80;
  v45 = v77;
  v44 = v78;
  if (v76)
  {
    v46 = v66;
    sub_24B2D1554();
    sub_24B2D1504();
    (*(v67 + 8))(v46, v68);
    if ((v79 & 1) == 0)
    {
LABEL_9:
      v47 = sub_24B2D1BB4();
      (*(*(v47 - 8) + 56))(v44, 1, 1, v47);
      goto LABEL_12;
    }
  }

  else
  {
    v48 = sub_24B2D1BB4();
    (*(*(v48 - 8) + 56))(v45, 1, 1, v48);
    if ((v79 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v49 = v69;
  sub_24B2D1774();
  sub_24B2D1734();
  (*(v70 + 8))(v49, v71);
LABEL_12:
  sub_24B0391CC(v73, v43, &qword_27EFC8A80, &qword_24B2E8E00);
  v50 = sub_24B2D1BB4();
  v51 = *(v50 - 8);
  v52 = *(v51 + 48);
  if (v52(v43, 1, v50) == 1)
  {
    v53 = v72;
    sub_24B0391CC(v41, v72, &qword_27EFC8A80, &qword_24B2E8E00);
    if (v52(v53, 1, v50) == 1)
    {
      v54 = v60;
      sub_24B0391CC(v45, v60, &qword_27EFC8A80, &qword_24B2E8E00);
      if (v52(v54, 1, v50) == 1)
      {
        sub_24B0391CC(v44, v81, &qword_27EFC8A80, &qword_24B2E8E00);
        if (v52(v54, 1, v50) != 1)
        {
          sub_24AFF8258(v54, &qword_27EFC8A80, &qword_24B2E8E00);
        }
      }

      else
      {
        sub_24AFF8258(v44, &qword_27EFC8A80, &qword_24B2E8E00);
        v58 = v81;
        (*(v51 + 32))(v81, v54, v50);
        (*(v51 + 56))(v58, 0, 1, v50);
      }

      if (v52(v53, 1, v50) != 1)
      {
        sub_24AFF8258(v53, &qword_27EFC8A80, &qword_24B2E8E00);
      }
    }

    else
    {
      sub_24AFF8258(v44, &qword_27EFC8A80, &qword_24B2E8E00);
      sub_24AFF8258(v45, &qword_27EFC8A80, &qword_24B2E8E00);
      v57 = v81;
      (*(v51 + 32))(v81, v53, v50);
      (*(v51 + 56))(v57, 0, 1, v50);
    }

    result = (v52)(v43, 1, v50);
    if (result != 1)
    {
      return sub_24AFF8258(v43, &qword_27EFC8A80, &qword_24B2E8E00);
    }
  }

  else
  {
    sub_24AFF8258(v44, &qword_27EFC8A80, &qword_24B2E8E00);
    sub_24AFF8258(v45, &qword_27EFC8A80, &qword_24B2E8E00);
    sub_24AFF8258(v41, &qword_27EFC8A80, &qword_24B2E8E00);
    v55 = v81;
    (*(v51 + 32))(v81, v43, v50);
    return (*(v51 + 56))(v55, 0, 1, v50);
  }

  return result;
}

uint64_t sub_24B2C0D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24B2D1C44();
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v36 = a2;
    v40 = MEMORY[0x277D84F90];
    v37 = v5;
    sub_24B0079DC(0, v9, 0);
    v10 = v40;
    v11 = *(v37 + 16);
    v12 = a1 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
    v38 = *(v37 + 72);
    v39 = v11;
    v13 = (v37 + 8);
    do
    {
      v39(v8, v12, v4);
      v14 = sub_24B2D1BD4();
      [v14 coordinate];
      v16 = v15;
      v18 = v17;

      v42.latitude = v16;
      v42.longitude = v18;
      v19 = MKMapPointForCoordinate(v42);
      v20 = v4;
      (*v13)(v8, v4);
      v40 = v10;
      v22 = *(v10 + 16);
      v21 = *(v10 + 24);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        sub_24B0079DC((v21 > 1), v22 + 1, 1);
        v10 = v40;
      }

      *(v10 + 16) = v23;
      *(v10 + 16 * v22 + 32) = v19;
      v12 += v38;
      --v9;
      v4 = v20;
    }

    while (v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_24B006AD8(0, v23, 0, v10);
    }

    v24 = v36;
    MKMapRectBoundingMapPoints();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v43.origin.x = v26;
    v43.origin.y = v28;
    v43.size.width = v30;
    v43.size.height = v32;
    v44 = MKCoordinateRegionForMapRect(v43);
    [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v44.center.latitude longitude:v44.center.longitude];
    sub_24B2D1BC4();
    return (*(v37 + 56))(v24, 0, 1, v20);
  }

  else
  {
    v34 = *(v5 + 56);

    return v34(a2, 1, 1, v4, v6);
  }
}

void *sub_24B2C1058@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, void (*a3)(void)@<X1>, uint64_t a4@<X2>)
{
  result = sub_24B2C1080(a2, a3, a4);
  *a1 = result;
  a1[1] = v6;
  return result;
}

void *sub_24B2C1080(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v167 = a3;
  v196 = a2;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDCC8, &qword_24B2EF430);
  v195 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v144 = &v137 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v143 = &v137 - v5;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7FE8, &unk_24B2F4C80);
  v166 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v142 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v162 = &v137 - v8;
  MEMORY[0x28223BE20](v9);
  v190 = &v137 - v10;
  MEMORY[0x28223BE20](v11);
  v192 = &v137 - v12;
  MEMORY[0x28223BE20](v13);
  v191 = &v137 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE590, &unk_24B2EC160);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v137 - v16;
  v18 = sub_24B2D1C44();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v138 = &v137 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v141 = &v137 - v22;
  MEMORY[0x28223BE20](v23);
  v140 = &v137 - v24;
  MEMORY[0x28223BE20](v25);
  v188 = &v137 - v26;
  MEMORY[0x28223BE20](v27);
  v147 = &v137 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A80, &qword_24B2E8E00);
  MEMORY[0x28223BE20](v29 - 8);
  v161 = &v137 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450, &qword_24B2DE7A0);
  MEMORY[0x28223BE20](v31 - 8);
  v160 = &v137 - v32;
  v159 = sub_24B2D14C4();
  v33 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v158 = &v137 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for AnnotationV2(0);
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v175 = &v137 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v174 = &v137 - v37;
  v38 = sub_24B2D1974();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v137 = &v137 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v179 = &v137 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288, &unk_24B2EBD20);
  MEMORY[0x28223BE20](v43 - 8);
  v165 = &v137 - v44;
  v164 = sub_24B2D1944();
  v45 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v47 = &v137 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for ListPersonInfo(0);
  v48 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v180 = &v137 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);

  result = v167;
  v51 = *(v167 + 16);
  v52 = MEMORY[0x277D84F90];
  v186 = v19;
  v176 = v39;
  v173 = v51;
  if (v51)
  {
    v182 = v47;
    v53 = 0;
    v54 = v48;
    v171 = v167 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
    v170 = (v45 + 48);
    v154 = (v45 + 32);
    v153 = *MEMORY[0x277D08CF0];
    v152 = (v39 + 104);
    v169 = (v39 + 16);
    v151 = (v33 + 8);
    v178 = (v19 + 32);
    v184 = (v19 + 16);
    v185 = (v39 + 32);
    v150 = (v19 + 48);
    v146 = (v19 + 8);
    v139 = (v195 + 8);
    v149 = (v39 + 8);
    v148 = (v45 + 8);
    v177 = MEMORY[0x277D84F90];
    v55 = MEMORY[0x277D84F90];
    v155 = v17;
    v56 = v165;
    v57 = v164;
    v58 = v163;
    v59 = v54;
    v60 = v167;
    v189 = v38;
    v172 = v54;
    while (1)
    {
      if (v53 >= *(v60 + 16))
      {
        __break(1u);
        return result;
      }

      v61 = v60;
      v62 = *(v59 + 72);
      v183 = v53;
      v63 = v180;
      sub_24B279348(v171 + v62 * v53, v180, type metadata accessor for ListPersonInfo);
      sub_24B008890(v63 + *(v58 + 28), v56, &qword_27EFCB288, &unk_24B2EBD20);
      if ((*v170)(v56, 1, v57) != 1)
      {
        break;
      }

      sub_24B279484(v63, type metadata accessor for ListPersonInfo);
      result = sub_24AFF8258(v56, &qword_27EFCB288, &unk_24B2EBD20);
      v60 = v61;
LABEL_4:
      v53 = v183 + 1;
      v59 = v172;
      if (v183 + 1 == v173)
      {

        v52 = MEMORY[0x277D84F90];
        v122 = v177;
        goto LABEL_35;
      }
    }

    v181 = v55;
    (*v154)(v182, v56, v57);
    v64 = v179;
    _s12FindMyUICore17DetailsPersonInfoV2id0aB4Core0E5ModelV16UniqueIdentifierVvg_0();
    (*v152)(v64, v153, v38);
    v65 = v174;
    v168 = *v169;
    v168(v174, v64, v38);
    v66 = v158;
    sub_24B2D14D4();
    v196 = sub_24B2D14B4();
    v68 = v67;
    (*v151)(v66, v159);
    v69 = v157;
    v70 = *(v157 + 24);
    v71 = *(v58 + 20);
    v72 = sub_24B2D1494();
    v73 = *(v72 - 8);
    (*(v73 + 16))(v65 + v70, v63 + v71, v72);
    (*(v73 + 56))(v65 + v70, 0, 1, v72);
    type metadata accessor for Icon(0);
    swift_storeEnumTagMultiPayload();
    sub_24B2D18B4();
    v74 = v160;
    sub_24B2D1864();
    v75 = v161;
    sub_24B2C0340(0, 0, v161);
    v76 = v69[8];
    v77 = sub_24B2D24A4();
    (*(*(v77 - 8) + 56))(v65 + v76, 1, 1, v77);
    v78 = v69[9];
    v79 = sub_24B2D1BB4();
    (*(*(v79 - 8) + 56))(v65 + v78, 1, 1, v79);
    v80 = (v65 + v69[5]);
    *v80 = v196;
    v80[1] = v68;
    sub_24B068E10(v74, v65 + v76, &qword_27EFC8450, &qword_24B2DE7A0);
    v81 = v177;
    sub_24B068E10(v75, v65 + v78, &qword_27EFC8A80, &qword_24B2E8E00);
    sub_24B279348(v65, v175, type metadata accessor for AnnotationV2);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v81 = sub_24B007360(0, v81[2] + 1, 1, v81);
    }

    v82 = v178;
    v84 = v81[2];
    v83 = v81[3];
    v38 = v189;
    v55 = v181;
    v85 = v182;
    if (v84 >= v83 >> 1)
    {
      v81 = sub_24B007360((v83 > 1), v84 + 1, 1, v81);
    }

    v81[2] = v84 + 1;
    v86 = (*(v156 + 80) + 32) & ~*(v156 + 80);
    v177 = v81;
    sub_24B2793B0(v175, v81 + v86 + *(v156 + 72) * v84);
    v87 = v55[2];
    if (v87)
    {
      v197 = MEMORY[0x277D84F90];
      sub_24B007C34(0, v87, 0);
      v88 = v197;
      v89 = v55 + ((*(v166 + 80) + 32) & ~*(v166 + 80));
      v187 = *(v166 + 72);
      v90 = v188;
      do
      {
        v195 = v87;
        v196 = v88;
        v91 = v18;
        v92 = v191;
        sub_24B008890(v89, v191, &qword_27EFC7FE8, &unk_24B2F4C80);
        v93 = v192;
        sub_24B008890(v92, v192, &qword_27EFC7FE8, &unk_24B2F4C80);
        v94 = *(v193 + 48);
        v95 = v190;
        (*v185)(v190, v93, v189);
        v194 = *v82;
        (v194)(v95 + v94, v93 + v94, v91);
        (*v184)(v90, v95 + v94, v91);
        sub_24AFF8258(v95, &qword_27EFC7FE8, &unk_24B2F4C80);
        v88 = v196;
        sub_24AFF8258(v92, &qword_27EFC7FE8, &unk_24B2F4C80);
        v197 = v88;
        v97 = *(v88 + 16);
        v96 = *(v88 + 24);
        if (v97 >= v96 >> 1)
        {
          sub_24B007C34((v96 > 1), v97 + 1, 1);
          v88 = v197;
        }

        *(v88 + 16) = v97 + 1;
        v90 = v188;
        (v194)(v88 + ((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 72) * v97, v188, v91);
        v89 += v187;
        v87 = (v195 - 1);
        v18 = v91;
      }

      while (v195 != 1);
      v60 = v167;
      v38 = v189;
      v98 = v155;
      v55 = v181;
      v85 = v182;
    }

    else
    {
      v88 = MEMORY[0x277D84F90];
      v60 = v167;
      v98 = v155;
    }

    sub_24B2C0D5C(v88, v98);

    if ((*v150)(v98, 1, v18) == 1)
    {
      sub_24AFF8258(v98, &qword_27EFCE590, &unk_24B2EC160);
      v99 = v140;
      sub_24B2D18B4();
      v100 = *(v193 + 48);
      v101 = v162;
      v168(v162, v179, v38);
      (*v178)(&v101[v100], v99, v18);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = sub_24B007154(0, v55[2] + 1, 1, v55);
      }

      v57 = v164;
      v103 = v55[2];
      v102 = v55[3];
      if (v103 >= v102 >> 1)
      {
        v55 = sub_24B007154((v102 > 1), v103 + 1, 1, v55);
      }

      (*v149)(v179, v38);
      (*v148)(v85, v57);
      sub_24B279484(v180, type metadata accessor for ListPersonInfo);
      v55[2] = v103 + 1;
      v104 = v55 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v103;
      v105 = &v194;
    }

    else
    {
      v106 = v147;
      v195 = *v82;
      (v195)(v147, v98, v18);
      v107 = v141;
      sub_24B2D18B4();
      v108 = v143;
      sub_24B2D1C34();
      v196 = *v146;
      (v196)(v107, v18);
      v109 = [objc_opt_self() kilometers];
      sub_24B2794E4();
      v110 = v144;
      sub_24B2D1FE4();
      sub_24B279530();
      v111 = v145;
      v112 = sub_24B2D5284();
      v113 = *v139;
      (*v139)(v110, v111);
      v113(v108, v111);
      if ((v112 & 1) == 0)
      {
        (v196)(v106, v18);
        (*v149)(v179, v38);
        v57 = v164;
        (*v148)(v182, v164);
        sub_24B279484(v180, type metadata accessor for ListPersonInfo);
        result = sub_24B279484(v174, type metadata accessor for AnnotationV2);
        v60 = v167;
        v55 = v181;
        goto LABEL_32;
      }

      v114 = v196;
      v115 = v138;
      sub_24B2D18B4();
      v116 = *(v193 + 48);
      v117 = v142;
      v168(v142, v179, v38);
      (v195)(&v117[v116], v115, v18);
      v55 = v181;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v164;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v55 = sub_24B007154(0, v55[2] + 1, 1, v55);
      }

      v60 = v167;
      v119 = v114;
      v121 = v55[2];
      v120 = v55[3];
      if (v121 >= v120 >> 1)
      {
        v55 = sub_24B007154((v120 > 1), v121 + 1, 1, v55);
      }

      v119();
      (*v149)(v179, v38);
      (*v148)(v182, v57);
      sub_24B279484(v180, type metadata accessor for ListPersonInfo);
      v55[2] = v121 + 1;
      v104 = v55 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v121;
      v105 = &v174;
    }

    sub_24B0391CC(*(v105 - 32), v104, &qword_27EFC7FE8, &unk_24B2F4C80);
    result = sub_24B279484(v174, type metadata accessor for AnnotationV2);
LABEL_32:
    v56 = v165;
    v58 = v163;
    goto LABEL_4;
  }

  v122 = MEMORY[0x277D84F90];
  v55 = MEMORY[0x277D84F90];
LABEL_35:
  v123 = v55[2];
  v124 = v186;
  if (v123)
  {
    v188 = v18;
    v197 = v52;
    v177 = v122;

    sub_24B007BF0(0, v123, 0);
    v125 = v197;
    v126 = (*(v166 + 80) + 32) & ~*(v166 + 80);
    v181 = v55;
    v127 = v55 + v126;
    v187 = *(v166 + 72);
    v128 = (v176 + 32);
    v185 = (v176 + 16);
    v186 = v124 + 32;
    v129 = v137;
    do
    {
      v195 = v123;
      v196 = v125;
      v130 = v191;
      sub_24B008890(v127, v191, &qword_27EFC7FE8, &unk_24B2F4C80);
      v131 = v192;
      sub_24B008890(v130, v192, &qword_27EFC7FE8, &unk_24B2F4C80);
      v132 = *(v193 + 48);
      v133 = v190;
      v194 = *v128;
      (v194)(v190, v131, v38);
      (*v186)(v133 + v132, v131 + v132, v188);
      (*v185)(v129, v133, v38);
      sub_24AFF8258(v133, &qword_27EFC7FE8, &unk_24B2F4C80);
      v134 = v130;
      v125 = v196;
      sub_24AFF8258(v134, &qword_27EFC7FE8, &unk_24B2F4C80);
      v197 = v125;
      v136 = *(v125 + 16);
      v135 = *(v125 + 24);
      if (v136 >= v135 >> 1)
      {
        sub_24B007BF0((v135 > 1), v136 + 1, 1);
        v125 = v197;
      }

      *(v125 + 16) = v136 + 1;
      (v194)(v125 + ((*(v176 + 80) + 32) & ~*(v176 + 80)) + *(v176 + 72) * v136, v129, v38);
      v127 += v187;
      v123 = (v195 - 1);
    }

    while (v195 != 1);
    v122 = v177;
  }

  else
  {

    v125 = MEMORY[0x277D84F90];
  }

  sub_24B1D1980(v125);

  return v122;
}

uint64_t type metadata accessor for NonInteractiveMapView(uint64_t a1)
{
  result = qword_27EFCF8B8;
  if (!qword_27EFCF8B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B2C277C(uint64_t a1)
{
  sub_24B2C2818(319);
  if (v1 <= 0x3F)
  {
    sub_24B178270(319);
    if (v2 <= 0x3F)
    {
      sub_24B2C2870(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24B2C2818(uint64_t a1)
{
  if (!qword_27EFCD9D8)
  {
    type metadata accessor for AnnotationV2(255);
    v1 = sub_24B2D55E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27EFCD9D8);
    }
  }
}

void sub_24B2C2870(uint64_t a1)
{
  if (!qword_27EFCF8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD8B0, &unk_24B2F42D0);
    v1 = sub_24B2D4D04();
    if (!v2)
    {
      atomic_store(v1, &qword_27EFCF8C8);
    }
  }
}

uint64_t sub_24B2C28F0@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v2 = sub_24B2D2DE4();
  v58 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v70 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v58 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v58 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8A8, &unk_24B2EE8E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v58 - v11;
  v13 = type metadata accessor for InteractiveMapV2(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF8D0, &qword_24B2F5AE8);
  v67 = *(v16 - 8);
  v68 = v16;
  MEMORY[0x28223BE20](v16);
  v65 = &v58 - v17;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF8D8, &qword_24B2F5AF0);
  MEMORY[0x28223BE20](v64);
  v63 = &v58 - v18;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF8E0, &unk_24B2F5AF8);
  MEMORY[0x28223BE20](v62);
  v61 = &v58 - v19;
  v21 = *v1;
  v20 = v1[1];
  type metadata accessor for NonInteractiveMapView(0);
  v60 = v21;
  v22 = v58;

  v59 = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF8B0, &unk_24B2F5A60);
  v66 = v12;
  sub_24B2D4CF4();
  v69 = v9;
  sub_24B2D2DD4();
  *v15 = 0;
  v23 = v15 + v13[8];
  sub_24B2D2DD4();
  (*(v22 + 16))(v70, v6, v2);
  sub_24B2D4CC4();
  v24 = *(v22 + 8);
  v70 = v2;
  v24(v6, v2);
  v25 = v15 + v13[9];
  v72 = 0uLL;
  LOBYTE(v73) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8A0, &qword_24B2EE830);
  sub_24B2D4CC4();
  v26 = v75;
  v27 = *(&v75 + 1);
  *v25 = v74;
  v25[16] = v26;
  *(v25 + 3) = v27;
  type metadata accessor for CustomMapStyleLoader(0);
  v28 = swift_allocObject();
  v29 = objc_opt_self();
  v30 = [v29 standardUserDefaults];
  v31 = sub_24B166FFC();

  if (v31 == 2)
  {
    v32 = [v29 standardUserDefaults];
    v31 = sub_24B166D7C(0);

    v33 = (v31 >> 8) & 1;
    v34 = HIWORD(v31) & 1;
  }

  else
  {
    v33 = ((v31 & 0xFFFFFF) >> 8) & 1;
    v34 = ((v31 & 0xFFFFFF) >> 16) & 1;
  }

  v35 = (v15 + v13[10]);
  v28[16] = v31 & 1;
  v28[17] = v33;
  v28[18] = v34;
  sub_24B2D25B4();
  *&v72 = v28;
  sub_24B2D4CC4();
  v36 = *(&v74 + 1);
  *v35 = v74;
  v35[1] = v36;
  v37 = v15 + v13[11];
  v38 = *(MEMORY[0x277CD4BB0] + 16);
  v72 = *MEMORY[0x277CD4BB0];
  v73 = v38;
  type metadata accessor for MKMapRect(0);
  sub_24B2D4CC4();
  v39 = v76;
  v40 = v75;
  *v37 = v74;
  *(v37 + 1) = v40;
  *(v37 + 4) = v39;
  v41 = v15 + v13[12];
  LOBYTE(v72) = 1;
  sub_24B2D4CC4();
  v42 = *(&v74 + 1);
  *v41 = v74;
  *(v41 + 1) = v42;
  v43 = v15 + v13[13];
  LOBYTE(v72) = 0;
  sub_24B2D4CC4();
  v44 = *(&v74 + 1);
  *v43 = v74;
  *(v43 + 1) = v44;
  v45 = v15 + v13[14];
  *v45 = swift_getKeyPath();
  *(v45 + 4) = 0;
  v46 = v15 + v13[15];
  *v46 = swift_getKeyPath();
  *(v46 + 4) = 0;
  v47 = v15 + v13[16];
  *v47 = swift_getKeyPath();
  v47[8] = 0;
  v48 = v15 + v13[17];
  *v48 = swift_getKeyPath();
  v48[8] = 0;
  sub_24B2C303C(v23);
  *(v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA028, &qword_24B2E3D70) + 28)) = 0;
  (*(v22 + 32))(v23, v69, v70);
  v49 = v59;
  v15[1] = v60;
  v15[2] = v49;
  sub_24B2C30A4(v66, v15 + v13[7]);
  sub_24B2C3114(&qword_27EFCEFF8, type metadata accessor for InteractiveMapV2, &protocol conformance descriptor for InteractiveMapV2);
  v50 = v65;
  sub_24B2D4644();
  sub_24B2C315C(v15);
  KeyPath = swift_getKeyPath();
  v52 = v63;
  (*(v67 + 32))(v63, v50, v68);
  v53 = v52 + *(v64 + 36);
  *v53 = KeyPath;
  *(v53 + 8) = 2;
  v54 = v61;
  sub_24B0391CC(v52, v61, &qword_27EFCF8D8, &qword_24B2F5AF0);
  *(v54 + *(v62 + 36)) = 0;
  v55 = v54;
  v56 = v71;
  sub_24B0391CC(v55, v71, &qword_27EFCF8E0, &unk_24B2F5AF8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF8E8, &qword_24B2F5BB0);
  *(v56 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_24B2C303C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA028, &qword_24B2E3D70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B2C30A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8A8, &unk_24B2EE8E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B2C3114(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B2C315C(uint64_t a1)
{
  v2 = type metadata accessor for InteractiveMapV2(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24B2C31B8()
{
  result = qword_27EFCF8F0;
  if (!qword_27EFCF8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF8E8, &qword_24B2F5BB0);
    sub_24B2C3270();
    sub_24B039184(&qword_27EFC9868, &qword_27EFC9870, &qword_24B2E30E0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF8F0);
  }

  return result;
}

unint64_t sub_24B2C3270()
{
  result = qword_27EFCF8F8;
  if (!qword_27EFCF8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF8E0, &unk_24B2F5AF8);
    sub_24B2C32FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF8F8);
  }

  return result;
}

unint64_t sub_24B2C32FC()
{
  result = qword_27EFCF900;
  if (!qword_27EFCF900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF8D8, &qword_24B2F5AF0);
    type metadata accessor for InteractiveMapV2(255);
    sub_24B2C3114(&qword_27EFCEFF8, type metadata accessor for InteractiveMapV2, &protocol conformance descriptor for InteractiveMapV2);
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFCF908, &qword_27EFCF910, &qword_24B2F5BB8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF900);
  }

  return result;
}

FindMyUICore::TnLDeviceType_optional __swiftcall TnLDeviceType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if ((rawValue + 1) < 6)
  {
    v2 = rawValue + 1;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_24B2C3468()
{
  v1 = *v0;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](v1 - 1);
  return sub_24B2D6124();
}

uint64_t sub_24B2C34E0(uint64_t a1)
{
  v2 = *v1;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](v2 - 1);
  return sub_24B2D6124();
}

unint64_t sub_24B2C3594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCF918;
  if (!qword_27EFCF918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF918);
  }

  return result;
}

unint64_t sub_24B2C35EC()
{
  result = qword_27EFCF920;
  if (!qword_27EFCF920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF928, &qword_24B2F5C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF920);
  }

  return result;
}

unint64_t sub_24B2C3654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCF930;
  if (!qword_27EFCF930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF930);
  }

  return result;
}

unint64_t sub_24B2C36AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCF938;
  if (!qword_27EFCF938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF938);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceUseCase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceUseCase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for FlyingUnicornDisclaimerView(uint64_t a1)
{
  result = qword_27EFCF940;
  if (!qword_27EFCF940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B2C38F0(uint64_t a1)
{
  sub_24B2C39D4(319, &qword_27EFCF950, type metadata accessor for FlyingUnicornDisclaimerViewModel, MEMORY[0x277CE10B8]);
  if (v1 <= 0x3F)
  {
    sub_24B2C39D4(319, &qword_27EFC9B78, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B2C39D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_24B2C3A54@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = type metadata accessor for FlyingUnicornDisclaimerView(0);
  v42 = *(v3 - 8);
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68, &qword_24B2E36B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v35 - v6;
  v8 = v1[1];
  *&v50[0] = *v1;
  *(&v50[0] + 1) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF958, &qword_24B2F5F18);
  sub_24B2D4CD4();
  v9 = *(v44 + 16);

  v10 = [v9 title];

  v41 = sub_24B2D5394();
  v40 = v11;

  type metadata accessor for TheftAndLossModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v14 = sub_24B2D5374();
  v39 = [objc_opt_self() imageNamed:v14 inBundle:v13];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF960, &unk_24B2F5F20);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_24B2DEAD0;
  if (qword_27EFC7740 != -1)
  {
    swift_once();
  }

  v16 = sub_24B2D1454();
  v38 = __swift_project_value_buffer(v16, qword_27EFE4648);
  v17 = *(v16 - 8);
  v37 = *(v17 + 16);
  v37(v7, v38, v16);
  v36 = *(v17 + 56);
  v36(v7, 0, 1, v16);
  v18 = sub_24B2D52D4();
  v35[0] = v19;
  sub_24B0C6490(v7);
  sub_24B2C4308(v2, v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v42 + 80);
  v42 = v2;
  v22 = (v21 + 16) & ~v21;
  v23 = swift_allocObject();
  v35[1] = v4;
  v24 = v23;
  sub_24B2C436C(v20, v23 + v22);
  v25 = v35[0];
  *(v15 + 32) = v18;
  *(v15 + 40) = v25;
  *(v15 + 48) = 0;
  *(v15 + 56) = sub_24B2C43D0;
  *(v15 + 64) = v24;
  v37(v7, v38, v16);
  v36(v7, 0, 1, v16);
  v26 = sub_24B2D52D4();
  v28 = v27;
  sub_24B0C6490(v7);
  v29 = v42;
  sub_24B2C4308(v42, v20);
  v30 = swift_allocObject();
  sub_24B2C436C(v20, v30 + v22);
  *(v15 + 72) = v26;
  *(v15 + 80) = v28;
  *(v15 + 88) = 256;
  *(v15 + 96) = sub_24B2C450C;
  *(v15 + 104) = v30;
  v31 = sub_24B2C3FB0(v29);
  *&v44 = v41;
  *(&v44 + 1) = v40;
  v45 = 0uLL;
  v46 = v39;
  v47 = v31;
  v48 = 0uLL;
  *&v49 = MEMORY[0x277D84F90];
  *(&v49 + 1) = v15;
  sub_24B2C45A8(v31, v32, v33);
  sub_24B2D4894();
  v50[2] = v46;
  v50[3] = v47;
  v50[4] = v48;
  v50[5] = v49;
  v50[0] = v44;
  v50[1] = v45;
  return sub_24B2C45FC(v50);
}

uint64_t sub_24B2C3FB0(uint64_t *a1)
{
  v12 = *a1;
  v13 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF958, &qword_24B2F5F18);
  sub_24B2D4CD4();
  v1 = *(v14 + 16);

  v2 = [v1 message];

  sub_24B2D5394();
  sub_24AFFE0A4(v3, v4, v5);
  v6 = sub_24B2D4604();
  v8 = v7;
  v10 = v9;
  sub_24B2D43A4();
  sub_24B2D45C4();

  sub_24B083C34(v6, v8, v10 & 1);

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8B20, &qword_24B2E1D60);
  sub_24B076708();
  return sub_24B2D4E24();
}

void sub_24B2C4130()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF958, &qword_24B2F5F18);
  sub_24B2D4CD4();
  v0 = *(v3 + 24);
  v1 = *(v3 + 32);
  sub_24AFD5880(v0, v1);

  if (v0)
  {
    v0(v2);
    sub_24AFD5890(v0, v1);
  }
}

uint64_t sub_24B2C41B8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_24B2D34F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = a2[1];
  v14 = *a2;
  v15 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF958, &qword_24B2F5F18);
  sub_24B2D4CD4();
  v9 = *(v13 + 40);
  v8 = *(v13 + 48);
  sub_24AFD5880(v9, v8);

  if (v9)
  {
    v9(v10);
    sub_24AFD5890(v9, v8);
  }

  type metadata accessor for FlyingUnicornDisclaimerView(0);
  sub_24B163AA0(v6);
  sub_24B2D34E4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24B2C4308(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlyingUnicornDisclaimerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B2C436C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlyingUnicornDisclaimerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_31()
{
  v1 = (type metadata accessor for FlyingUnicornDisclaimerView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC97E0, &qword_24B2E2F90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24B2D34F4();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B2C4524(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for FlyingUnicornDisclaimerView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_24B2C45A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCF968;
  if (!qword_27EFCF968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF968);
  }

  return result;
}

uint64_t sub_24B2C4650()
{
  sub_24AFD5890(*(v0 + 24), *(v0 + 32));
  sub_24AFD5890(*(v0 + 40), *(v0 + 48));
  v1 = OBJC_IVAR____TtC12FindMyUICore32FlyingUnicornDisclaimerViewModel___observationRegistrar;
  v2 = sub_24B2D25C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FlyingUnicornDisclaimerViewModel(uint64_t a1)
{
  result = qword_27EFCF978;
  if (!qword_27EFCF978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B2C4758(uint64_t a1)
{
  result = sub_24B2D25C4();
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

uint64_t sub_24B2C4828()
{
  v0 = sub_24B2D1454();
  __swift_allocate_value_buffer(v0, qword_27EFE4648);
  __swift_project_value_buffer(v0, qword_27EFE4648);
  type metadata accessor for TnLModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  return sub_24B2D1434();
}

_BYTE *TheftAndLossDisclaimerContext.init(useCase:serialNumber:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t TheftAndLossDisclaimerContext.serialNumber.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_24B2C4918(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t sub_24B2C4974(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TheftAndLossDisclaimerContext.UseCase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_20;
  }

  v2 = a2 + 24;
  if (a2 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 24;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 24;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 0x15)
  {
    v8 = v7 - 20;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 5)
  {
    return v8 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TheftAndLossDisclaimerContext.UseCase(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 24;
  if (a3 + 24 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xE8)
  {
    v5 = 0;
  }

  if (a2 > 0xE7)
  {
    v6 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_24B2C4B30(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0x15)
  {
    return v1 - 20;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_24B2C4B44(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 20;
  }

  return result;
}

double FindMyTheftAndLossDisclaimerViewController.disclaimerViewController(context:confirmActionHandler:cancelActionHandler:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a6;
  ObjectType = swift_getObjectType();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v24 - v15;
  v17 = sub_24B2D56D4();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_24B2D5694();
  v18 = a1;

  sub_24AFD5880(a4, a5);

  v19 = sub_24B2D5684();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v18;
  v20[5] = a2;
  v20[6] = a3;
  v20[7] = a4;
  v22 = v25;
  v20[8] = a5;
  v20[9] = v22;
  v20[10] = a7;
  v20[11] = ObjectType;
  sub_24B00A9A4(0, 0, v16, &unk_24B2F6068, v20);

  return result;
}

uint64_t sub_24B2C4CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v14;
  *(v8 + 80) = v13;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 40) = a4;
  sub_24B2D5694();
  *(v8 + 104) = sub_24B2D5684();
  v10 = sub_24B2D5604();
  *(v8 + 112) = v10;
  *(v8 + 120) = v9;

  return MEMORY[0x2822009F8](sub_24B2C4DB0, v10, v9);
}

uint64_t sub_24B2C4DB0()
{
  v13 = v0;
  sub_24B2C525C(*(v0 + 40), v10);
  v1 = v10[0];
  v2 = v11;
  v3 = v12;
  *(v0 + 128) = v12;
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v4[1] = sub_24B2C4EFC;
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);

  return sub_24B2C98A4((v0 + 16), v7, v8, v5, v6);
}

uint64_t sub_24B2C4EFC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_24B2C50B8;
  }

  else
  {
    v4[19] = a1;

    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_24B2C5028;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24B2C5028()
{
  v1 = v0[19];
  v2 = v0[10];

  v3 = v1;
  v2(v1, 0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24B2C50B8()
{

  v1 = v0[18];
  v2 = v0[10];
  v3 = v1;
  v2(0, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24B2C515C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24AFFDE44;

  return sub_24B2C4CFC(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_24B2C525C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 useCase];
  v5 = sub_24B2D5394();
  v7 = v6;
  if (v5 == sub_24B2D5394() && v7 == v8)
  {

    goto LABEL_8;
  }

  v10 = sub_24B2D6004();

  if (v10)
  {

LABEL_8:
    v11 = [a1 serialNumber];
    if (v11)
    {
      v12 = v11;
      v13 = sub_24B2D5394();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v16 = 21;
LABEL_12:
    *a2 = v16;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
    return;
  }

  v17 = sub_24B2D5394();
  v19 = v18;
  if (v17 == sub_24B2D5394() && v19 == v20)
  {

    goto LABEL_20;
  }

  v22 = sub_24B2D6004();

  if (v22)
  {

LABEL_20:
    v23 = [a1 serialNumber];
    if (v23)
    {
      v24 = v23;
      v13 = sub_24B2D5394();
      v15 = v25;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v16 = 22;
    goto LABEL_12;
  }

  v26 = sub_24B2D5394();
  v28 = v27;
  if (v26 == sub_24B2D5394() && v28 == v29)
  {

LABEL_29:
    v31 = [a1 serialNumber];
    if (v31)
    {
      v32 = v31;
      v13 = sub_24B2D5394();
      v15 = v33;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v16 = 23;
    goto LABEL_12;
  }

  v30 = sub_24B2D6004();

  if (v30)
  {

    goto LABEL_29;
  }

  v34 = sub_24B2D5394();
  v36 = v35;
  if (v34 == sub_24B2D5394() && v36 == v37)
  {

LABEL_37:
    v39 = [a1 serialNumber];
    if (v39)
    {
      v40 = v39;
      v13 = sub_24B2D5394();
      v15 = v41;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v16 = 24;
    goto LABEL_12;
  }

  v38 = sub_24B2D6004();

  if (v38)
  {
    goto LABEL_37;
  }

  if (qword_27EFC7748 != -1)
  {
    swift_once();
  }

  v42 = sub_24B2D3184();
  __swift_project_value_buffer(v42, qword_27EFCF988);
  v43 = a1;
  v44 = sub_24B2D3164();
  v45 = sub_24B2D5914();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v57 = v47;
    *v46 = 136315138;
    v48 = [v43 useCase];
    v49 = sub_24B2D5394();
    v51 = v50;

    v52 = sub_24AFF321C(v49, v51, &v57);

    *(v46 + 4) = v52;
    _os_log_impl(&dword_24AFD2000, v44, v45, "Unrecognized useCase: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x24C23D530](v47, -1, -1);
    MEMORY[0x24C23D530](v46, -1, -1);
  }

  sub_24B2C6570(v53, v54, v55);
  swift_allocError();
  *v56 = 0;
  swift_willThrow();
}

double FindMyTheftAndLossDisclaimerViewController.disclaimerLabel(context:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_24B2D56D4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_24B2D5694();
  v11 = a1;

  v12 = sub_24B2D5684();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  v13[5] = a2;
  v13[6] = a3;
  v13[7] = ObjectType;
  sub_24B00A9A4(0, 0, v9, &unk_24B2F6078, v13);

  return result;
}

uint64_t sub_24B2C5B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  sub_24B2D5694();
  v7[9] = sub_24B2D5684();
  v9 = sub_24B2D5604();
  v7[10] = v9;
  v7[11] = v8;

  return MEMORY[0x2822009F8](sub_24B2C5B9C, v9, v8);
}

uint64_t sub_24B2C5B9C()
{
  v9 = v0;
  sub_24B2C525C(*(v0 + 40), v6);
  v1 = v6[0];
  v2 = v7;
  v3 = v8;
  *(v0 + 96) = v8;
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_24B2C5CE4;

  return sub_24B2C9F14(v0 + 16);
}

uint64_t sub_24B2C5CE4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 112) = v2;

  if (v2)
  {
    v7 = v6[10];
    v8 = v6[11];
    v9 = sub_24B2C5EA0;
  }

  else
  {
    v6[15] = a2;
    v6[16] = a1;

    v7 = v6[10];
    v8 = v6[11];
    v9 = sub_24B2C5E14;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_24B2C5E14()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[6];

  v3(v2, v1, 0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24B2C5EA0()
{

  v1 = v0[14];
  v2 = v0[6];
  v3 = v1;
  v2(0, 0, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24B2C5F48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24AFFDE44;

  return sub_24B2C5B00(a1, v4, v5, v6, v7, v9, v8);
}

void sub_24B2C61AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_24B2D5374();
    if (a3)
    {
LABEL_3:
      v7 = sub_24B2D21D4();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

FindMyTheftAndLossDisclaimerViewController __swiftcall FindMyTheftAndLossDisclaimerViewController.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for FindMyTheftAndLossDisclaimerViewController()
{
  result = qword_27EFCF9A0;
  if (!qword_27EFCF9A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EFCF9A0);
  }

  return result;
}

uint64_t objectdestroy_3Tm_1()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroyTm_32()
{
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_24B2C63F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24AFFD370;

  return sub_24B2C4CFC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24B2C64F8()
{
  v0 = sub_24B2D3184();
  __swift_allocate_value_buffer(v0, qword_27EFCF988);
  __swift_project_value_buffer(v0, qword_27EFCF988);
  return sub_24B2D3174();
}

unint64_t sub_24B2C6570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCF9A8;
  if (!qword_27EFCF9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF9A8);
  }

  return result;
}

uint64_t static TheftAndLossModalBuilder.disclaimerViewController(context:confirmActionHandler:cancelActionHandler:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_24B0C9468;

  return sub_24B2C98A4(a1, a2, a3, a4, a5);
}

uint64_t static TheftAndLossModalBuilder.disclaimerLabel(context:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24B0E66F4;

  return sub_24B2C9F14(a1);
}

uint64_t TheftAndLossModalBuilderError.hashValue.getter()
{
  v1 = *v0;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](v1);
  return sub_24B2D6124();
}

uint64_t static TheftAndLossModalBuilder.createTnLDisclaimerViewController(deviceClass:confirmActionHandler:cancelActionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24B2C6570(a1, a2, a3);
  swift_allocError();
  *v3 = 0;
  return swift_willThrow();
}

uint64_t sub_24B2C6834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v5 = sub_24B2D5654();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B2C6930, 0, 0);
}

uint64_t sub_24B2C6930()
{
  v1 = v0[9];
  v3 = v0[4];
  v2 = v0[5];
  v4 = sub_24B2D56D4();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  v6[5] = v2;
  sub_24B2CAB0C(v1, &unk_24B2F6210, v6);
  sub_24AFF8258(v1, &qword_27EFC8580, &qword_24B2E0010);
  v5(v1, 1, 1, v4);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_24B2CAB0C(v1, &unk_24B2F6220, v7);
  sub_24AFF8258(v1, &qword_27EFC8580, &qword_24B2E0010);
  v8 = swift_task_alloc();
  v0[10] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF9E8, &qword_24B2F6228);
  *v8 = v0;
  v8[1] = sub_24B2C6B14;

  return MEMORY[0x2822004D0](v0 + 12, 0, 0, v9);
}

uint64_t sub_24B2C6B14()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_24B2C6C94;
  }

  else
  {
    v2 = sub_24B2C6C28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B2C6C28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B2C6C94()
{
  v1 = *(v0 + 88);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0, &unk_24B2E5410);
  if (swift_dynamicCast())
  {

    if (qword_27EFC77F8 != -1)
    {
      swift_once();
    }

    v3 = sub_24B2D3184();
    __swift_project_value_buffer(v3, qword_27EFCF9B0);
    v4 = sub_24B2D3164();
    v5 = sub_24B2D5914();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24AFD2000, v4, v5, "Download timed out", v6, 2u);
      MEMORY[0x24C23D530](v6, -1, -1);
    }

    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v9 = *(v0 + 48);

    (*(v8 + 8))(v7, v9);
    v10 = *(v0 + 16);
  }

  else
  {

    if (qword_27EFC77F8 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 88);
    v12 = sub_24B2D3184();
    __swift_project_value_buffer(v12, qword_27EFCF9B0);
    v13 = v11;
    v14 = sub_24B2D3164();
    v15 = sub_24B2D5914();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 88);
    if (v16)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v17;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_24AFD2000, v14, v15, "Download failed: %@", v18, 0xCu);
      sub_24AFF8258(v19, &qword_27EFC7BB8, &unk_24B2DEAF0);
      MEMORY[0x24C23D530](v19, -1, -1);
      MEMORY[0x24C23D530](v18, -1, -1);

      goto LABEL_13;
    }

    v10 = v17;
  }

LABEL_13:

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_24B2C6F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_24B2D5D64();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B2C7040, 0, 0);
}

uint64_t sub_24B2C7040(uint64_t a1)
{
  sub_24B2D6084();
  v2 = swift_task_alloc();
  v1[7] = v2;
  *v2 = v1;
  v2[1] = sub_24B2C7100;
  v4 = v1[2];
  v3 = v1[3];

  return sub_24B09A030(v4, v3, 0, 0, 1);
}

uint64_t sub_24B2C7100()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_24B2C7310;
  }

  else
  {
    v5 = sub_24B2C7270;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24B2C7270()
{
  sub_24B2D5654();
  sub_24B2CA7E4();
  swift_allocError();
  sub_24B2D51C4();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B2C7310()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B2C7374()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8138, &unk_24B2F6370);
  v0[18] = v1;
  v0[19] = *(v1 - 8);
  v0[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B2C743C, 0, 0);
}

uint64_t sub_24B2C743C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v7 = [objc_opt_self() sharedInstance];
  v1[21] = v7;
  v1[2] = v1;
  v1[3] = sub_24B2C7610;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0, &unk_24B2E5410);
  sub_24B2D5614();
  (*(v5 + 32))(boxed_opaque_existential_0, v4, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_24B2CACEC;
  v1[13] = &block_descriptor_30;
  [v7 downloadWithReply_];
  (*(v5 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_24B2C7610()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_24B2C778C;
  }

  else
  {
    v2 = sub_24B2C7720;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B2C7720()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B2C778C(uint64_t a1)
{
  v2 = *(v1 + 168);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_24B2C7808()
{
  result = sub_24B2D5374();
  qword_27EFE4660 = result;
  return result;
}

uint64_t sub_24B2C783C()
{
  result = sub_24B2D5374();
  qword_27EFE4668 = result;
  return result;
}

uint64_t sub_24B2C787C()
{
  result = sub_24B2D5374();
  qword_27EFE4670 = result;
  return result;
}

uint64_t sub_24B2C78BC()
{
  result = sub_24B2D5374();
  qword_27EFE4678 = result;
  return result;
}

uint64_t sub_24B2C78FC()
{
  result = sub_24B2D5374();
  qword_27EFE4680 = result;
  return result;
}

uint64_t sub_24B2C7938()
{
  result = sub_24B2D5374();
  qword_27EFE4688 = result;
  return result;
}

uint64_t sub_24B2C7964()
{
  result = sub_24B2D5374();
  qword_27EFE4690 = result;
  return result;
}

uint64_t sub_24B2C79A0()
{
  result = sub_24B2D5374();
  qword_27EFE4698 = result;
  return result;
}

uint64_t sub_24B2C79D8()
{
  result = sub_24B2D5374();
  qword_27EFE46A0 = result;
  return result;
}

uint64_t sub_24B2C7A14()
{
  result = sub_24B2D5374();
  qword_27EFE46A8 = result;
  return result;
}

uint64_t sub_24B2C7A44()
{
  result = sub_24B2D5374();
  qword_27EFE46B0 = result;
  return result;
}

uint64_t sub_24B2C7A84()
{
  result = sub_24B2D5374();
  qword_27EFE46B8 = result;
  return result;
}

uint64_t sub_24B2C7AC0()
{
  result = sub_24B2D5374();
  qword_27EFE46C0 = result;
  return result;
}

uint64_t sub_24B2C7B00()
{
  result = sub_24B2D5374();
  qword_27EFE46C8 = result;
  return result;
}

uint64_t sub_24B2C7B2C()
{
  result = sub_24B2D5374();
  qword_27EFE46D0 = result;
  return result;
}

uint64_t sub_24B2C7B64()
{
  result = sub_24B2D5374();
  qword_27EFE46D8 = result;
  return result;
}

uint64_t sub_24B2C7B98()
{
  result = sub_24B2D5374();
  qword_27EFE46E0 = result;
  return result;
}

uint64_t sub_24B2C7BD4()
{
  result = sub_24B2D5374();
  qword_27EFE46E8 = result;
  return result;
}

uint64_t sub_24B2C7C0C()
{
  result = sub_24B2D5374();
  qword_27EFE46F0 = result;
  return result;
}

uint64_t sub_24B2C7C48()
{
  result = sub_24B2D5374();
  qword_27EFE46F8 = result;
  return result;
}

uint64_t sub_24B2C7C78()
{
  result = sub_24B2D5374();
  qword_27EFE4700 = result;
  return result;
}

uint64_t sub_24B2C7CAC()
{
  v0 = sub_24B2D3184();
  __swift_allocate_value_buffer(v0, qword_27EFCF9B0);
  __swift_project_value_buffer(v0, qword_27EFCF9B0);
  return sub_24B2D3174();
}

uint64_t sub_24B2C7D24(uint64_t result)
{
  if (result > 2)
  {
    switch(result)
    {
      case 3:
        v4 = [objc_opt_self() currentDevice];
        v5 = [v4 userInterfaceIdiom];

        result = 0;
        if (v5 <= 1)
        {
          if (v5)
          {
            if (v5 != 1)
            {
              return result;
            }

            if (qword_27EFC7788 != -1)
            {
              swift_once();
            }

            v1 = qword_27EFE4698;
          }

          else
          {
            if (qword_27EFC77A8 != -1)
            {
              swift_once();
            }

            v1 = qword_27EFE46B8;
          }

          goto LABEL_37;
        }

        if (v5 == 2)
        {
          if (qword_27EFC7758 != -1)
          {
            swift_once();
          }

          v1 = qword_27EFE4668;
          goto LABEL_37;
        }

        if (v5 == 5)
        {
          if (qword_27EFC77D8 != -1)
          {
            swift_once();
          }

          v1 = qword_27EFE46E8;
          goto LABEL_37;
        }

        break;
      case 4:
        if (qword_27EFC77F0 != -1)
        {
          swift_once();
        }

        v1 = qword_27EFE4700;
        goto LABEL_37;
      case 5:
        v2 = [objc_opt_self() currentDevice];
        v3 = [v2 userInterfaceIdiom];

        result = 0;
        if (v3 <= 1)
        {
          if (v3)
          {
            if (v3 != 1)
            {
              return result;
            }

            if (qword_27EFC7790 != -1)
            {
              swift_once();
            }

            v1 = qword_27EFE46A0;
          }

          else
          {
            if (qword_27EFC77B0 != -1)
            {
              swift_once();
            }

            v1 = qword_27EFE46C0;
          }

          goto LABEL_37;
        }

        if (v3 == 2)
        {
          if (qword_27EFC7760 != -1)
          {
            swift_once();
          }

          v1 = qword_27EFE4670;
          goto LABEL_37;
        }

        if (v3 == 5)
        {
          if (qword_27EFC77E0 != -1)
          {
            swift_once();
          }

          v1 = qword_27EFE46F0;
          goto LABEL_37;
        }

        break;
      default:
LABEL_23:
        v6 = result;
        if (qword_27EFC77F8 != -1)
        {
          swift_once();
        }

        v7 = sub_24B2D3184();
        __swift_project_value_buffer(v7, qword_27EFCF9B0);
        v8 = sub_24B2D3164();
        v9 = sub_24B2D5914();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 134349056;
          *(v10 + 4) = v6;
          _os_log_impl(&dword_24AFD2000, v8, v9, "Unhandled coverage: %{public}lu", v10, 0xCu);
          MEMORY[0x24C23D530](v10, -1, -1);
        }

        return 0;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    if (result != 1)
    {
      if (result == 2)
      {
        if (qword_27EFC77E8 != -1)
        {
          swift_once();
        }

        v1 = qword_27EFE46F8;
LABEL_37:
        v13 = v1;
        return v1;
      }

      goto LABEL_23;
    }

    v11 = [objc_opt_self() currentDevice];
    v12 = [v11 userInterfaceIdiom];

    result = 0;
    if (v12 <= 1)
    {
      if (v12)
      {
        if (v12 != 1)
        {
          return result;
        }

        if (qword_27EFC7778 != -1)
        {
          swift_once();
        }

        v1 = qword_27EFE4688;
      }

      else
      {
        if (qword_27EFC7798 != -1)
        {
          swift_once();
        }

        v1 = qword_27EFE46A8;
      }

      goto LABEL_37;
    }

    if (v12 == 2)
    {
      if (qword_27EFC7750 != -1)
      {
        swift_once();
      }

      v1 = qword_27EFE4660;
      goto LABEL_37;
    }

    if (v12 == 5)
    {
      if (qword_27EFC77B8 != -1)
      {
        swift_once();
      }

      v1 = qword_27EFE46C8;
      goto LABEL_37;
    }
  }

  return result;
}

id sub_24B2C82B4(_BYTE *a1)
{
  switch(*a1)
  {
    case 1:
      if (qword_27EFC7778 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE4688;
      break;
    case 2:
      if (qword_27EFC77E8 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE46F8;
      break;
    case 3:
      if (qword_27EFC77F0 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE4700;
      break;
    case 4:
      if (qword_27EFC77B8 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE46C8;
      break;
    case 5:
      if (qword_27EFC77A8 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE46B8;
      break;
    case 6:
      if (qword_27EFC77B0 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE46C0;
      break;
    case 7:
      if (qword_27EFC7750 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE4660;
      break;
    case 8:
      if (qword_27EFC7758 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE4668;
      break;
    case 9:
      if (qword_27EFC7760 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE4670;
      break;
    case 0xA:
      if (qword_27EFC7768 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE4678;
      break;
    case 0xB:
      if (qword_27EFC7770 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE4680;
      break;
    case 0xC:
      if (qword_27EFC7788 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE4698;
      break;
    case 0xD:
      if (qword_27EFC7780 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE4690;
      break;
    case 0xE:
      if (qword_27EFC7790 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE46A0;
      break;
    case 0xF:
      if (qword_27EFC77A0 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE46B0;
      break;
    case 0x10:
      if (qword_27EFC77C0 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE46D0;
      break;
    case 0x11:
      if (qword_27EFC77C8 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE46D8;
      break;
    case 0x12:
      if (qword_27EFC77D0 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE46E0;
      break;
    case 0x13:
      if (qword_27EFC77D8 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE46E8;
      break;
    case 0x14:
      if (qword_27EFC77E0 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE46F0;
      break;
    default:
      if (qword_27EFC7798 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE46A8;
      break;
  }

  v2 = *v1;

  return v2;
}

uint64_t sub_24B2C87E8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF9E0, &unk_24B2F6320);
  *(v1 + 288) = v3;
  *(v1 + 296) = *(v3 - 8);
  *(v1 + 304) = swift_task_alloc();
  *(v1 + 440) = *a1;
  *(v1 + 312) = *(a1 + 8);

  return MEMORY[0x2822009F8](sub_24B2C88C8, 0, 0);
}

uint64_t sub_24B2C88C8()
{
  v23 = v0;
  v1 = *(v0 + 440);
  if ((v1 - 21) < 3)
  {
    v2 = *(v0 + 320);
    v21 = [objc_opt_self() sharedInstance];
    *(v0 + 328) = v21;
    if (v2)
    {
      v3 = sub_24B2D5374();
    }

    else
    {
      v3 = 0;
    }

    v6 = v0 + 208;
    v7 = v0 + 80;
    *(v0 + 336) = v3;
    v9 = *(v0 + 296);
    v8 = *(v0 + 304);
    v10 = *(v0 + 288);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 280;
    *(v0 + 88) = sub_24B2C8D14;
    swift_continuation_init();
    *(v0 + 264) = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 240));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0, &unk_24B2E5410);
    sub_24B2D5614();
    (*(v9 + 32))(boxed_opaque_existential_0, v8, v10);
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_24B2CAA68;
    *(v0 + 232) = &block_descriptor_18;
LABEL_15:
    [v21 getTheftAndLossCoverageWithSerialNumber:v3 reply:{v6, v21}];
    (*(v9 + 8))(boxed_opaque_existential_0, v10);

    return MEMORY[0x282200938](v7);
  }

  if (v1 == 24)
  {
    v4 = *(v0 + 320);
    v5 = [objc_opt_self() sharedInstance];
    *(v0 + 392) = v5;
    v21 = v5;
    if (v4)
    {
      v3 = sub_24B2D5374();
    }

    else
    {
      v3 = 0;
    }

    v7 = v0 + 16;
    v6 = v0 + 144;
    *(v0 + 400) = v3;
    v9 = *(v0 + 296);
    v18 = *(v0 + 304);
    v10 = *(v0 + 288);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 272;
    *(v0 + 24) = sub_24B2C92BC;
    swift_continuation_init();
    *(v0 + 200) = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 176));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0, &unk_24B2E5410);
    sub_24B2D5614();
    (*(v9 + 32))(boxed_opaque_existential_0, v18, v10);
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_24B2CAA68;
    *(v0 + 168) = &block_descriptor_10;
    goto LABEL_15;
  }

  v22[0] = *(v0 + 440);
  v12 = sub_24B2C82B4(v22);
  if (v12)
  {
    v15 = v12;

    v16 = *(v0 + 8);

    return v16(v15);
  }

  else
  {
    sub_24B2CA4A4(0, v13, v14);
    swift_allocError();
    *v19 = 2;
    swift_willThrow();

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_24B2C8D14()
{
  v1 = *(*v0 + 112);
  *(*v0 + 344) = v1;
  if (v1)
  {
    v2 = sub_24B2C9824;
  }

  else
  {
    v2 = sub_24B2C8E24;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B2C8E24()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[35];
  v0[44] = v3;

  if (v3)
  {
    v4 = swift_task_alloc();
    v0[45] = v4;
    *(v4 + 16) = xmmword_24B2F60A0;
    v5 = swift_task_alloc();
    v0[46] = v5;
    *v5 = v0;
    v5[1] = sub_24B2C8F90;

    return MEMORY[0x282200740]();
  }

  else
  {
    sub_24B2D5694();
    v0[47] = sub_24B2D5684();
    v7 = sub_24B2D5604();

    return MEMORY[0x2822009F8](sub_24B2C90CC, v7, v6);
  }
}

void sub_24B2C8F90()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_24B2C9228, 0, 0);
  }
}

uint64_t sub_24B2C90CC()
{
  v1 = *(v0 + 352);

  *(v0 + 384) = sub_24B2C7D24(v1);

  return MEMORY[0x2822009F8](sub_24B2C9144, 0, 0);
}

uint64_t sub_24B2C9144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 384);
  if (v4)
  {

    v5 = *(v3 + 8);

    return v5(v4);
  }

  else
  {
    sub_24B2CA4A4(a1, a2, a3);
    swift_allocError();
    *v7 = 2;
    swift_willThrow();

    v8 = *(v3 + 8);

    return v8();
  }
}

uint64_t sub_24B2C9228()
{
  sub_24B2D5694();
  *(v0 + 376) = sub_24B2D5684();
  v2 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B2C90CC, v2, v1);
}

uint64_t sub_24B2C92BC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 408) = v1;
  if (v1)
  {
    v2 = sub_24B2C97A4;
  }

  else
  {
    v2 = sub_24B2C93CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B2C93CC()
{
  v1 = v0[49];
  v2 = v0[50];
  v3 = v0[34];
  v0[52] = v3;

  if (v3)
  {
    v7 = swift_task_alloc();
    v0[53] = v7;
    *(v7 + 16) = xmmword_24B2F60A0;
    v8 = swift_task_alloc();
    v0[54] = v8;
    *v8 = v0;
    v8[1] = sub_24B2C9540;

    return MEMORY[0x282200740]();
  }

  else
  {
    sub_24B2CA4A4(v4, v5, v6);
    swift_allocError();
    *v9 = 1;
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }
}

void sub_24B2C9540()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_24B2C967C, 0, 0);
  }
}

uint64_t sub_24B2C967C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 416))
  {
    if (qword_27EFC77E8 != -1)
    {
      swift_once();
    }

    v7 = qword_27EFE46F8;

    v8 = *(v3 + 8);

    return v8(v7);
  }

  else
  {
    sub_24B2CA4A4(a1, a2, a3);
    swift_allocError();
    *v4 = 1;
    swift_willThrow();

    v5 = *(v3 + 8);

    return v5();
  }
}

uint64_t sub_24B2C97A4(uint64_t a1)
{
  v2 = v1[50];
  v3 = v1[49];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_24B2C9824(uint64_t a1)
{
  v2 = v1[42];
  v3 = v1[41];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_24B2C98A4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 208) = a4;
  *(v5 + 216) = a5;
  *(v5 + 192) = a2;
  *(v5 + 200) = a3;
  *(v5 + 224) = type metadata accessor for FlyingUnicornDisclaimerView(0);
  *(v5 + 232) = swift_task_alloc();
  *(v5 + 240) = swift_task_alloc();
  v7 = *a1;
  v8 = *(a1 + 1);
  v9 = *(a1 + 2);
  *(v5 + 248) = sub_24B2D5694();
  *(v5 + 256) = sub_24B2D5684();
  *(v5 + 120) = v7;
  *(v5 + 128) = v8;
  *(v5 + 136) = v9;
  v10 = swift_task_alloc();
  *(v5 + 264) = v10;
  *v10 = v5;
  v10[1] = sub_24B2C99B0;

  return sub_24B2C87E8(v5 + 120);
}

uint64_t sub_24B2C99B0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = v1;

  v5 = sub_24B2D5604();
  if (v1)
  {
    v6 = sub_24B2C9EA0;
  }

  else
  {
    v6 = sub_24B2C9AF4;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

void sub_24B2C9AF4()
{
  v1 = *(v0 + 272);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 entryForConfiguration:*MEMORY[0x277D08F68] deviceClasses:v1];

  v4 = sub_24B2D51E4();
  *(v0 + 144) = sub_24B2D5394();
  *(v0 + 152) = v5;

  sub_24B2D5BC4();
  if (!*(v4 + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = sub_24B181B58(v0 + 16);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return;
  }

  sub_24AFF3FA0(*(v4 + 56) + 32 * v6, v0 + 88);

  sub_24B1830A8(v0 + 16);
  sub_24B0E4E94((v0 + 88), (v0 + 56));
  sub_24B2CA458();
  swift_dynamicCast();
  v9 = *(v0 + 176);
  v10 = [v9 isEnabled];
  if (v10)
  {
    v13 = *(v0 + 240);
    v29 = *(v0 + 232);
    v30 = *(v0 + 272);
    v14 = *(v0 + 216);
    v28 = *(v0 + 224);
    v16 = *(v0 + 200);
    v15 = *(v0 + 208);
    v17 = *(v0 + 192);
    type metadata accessor for FlyingUnicornDisclaimerViewModel(0);
    v18 = swift_allocObject();
    v19 = v9;

    sub_24B2D25B4();
    v18[5] = v15;
    v18[6] = v14;
    v18[3] = v17;
    v18[4] = v16;
    v18[2] = v19;
    v20 = *(v28 + 20);
    *(v13 + v20) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC97E0, &qword_24B2E2F90);
    swift_storeEnumTagMultiPayload();
    *(v0 + 184) = v18;
    sub_24AFD5880(v15, v14);

    sub_24B2D4CC4();
    v21 = *(v0 + 168);
    *v13 = *(v0 + 160);
    v13[1] = v21;
    sub_24B2C4308(v13, v29);
    v22 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF9F8, &qword_24B2F6268));
    v23 = sub_24B2D3EA4();

    sub_24B2CA83C(v13);

    v24 = *(v0 + 8);

    v24(v23);
  }

  else
  {
    v25 = *(v0 + 272);
    sub_24B2CA4A4(v10, v11, v12);
    swift_allocError();
    *v26 = 1;
    swift_willThrow();

    v27 = *(v0 + 8);

    v27();
  }
}

uint64_t sub_24B2C9EA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B2C9F14(uint64_t a1)
{
  *(v1 + 120) = *a1;
  *(v1 + 128) = *(a1 + 8);
  v2 = swift_task_alloc();
  *(v1 + 168) = v2;
  *v2 = v1;
  v2[1] = sub_24B2C9FB8;

  return sub_24B2C87E8(v1 + 120);
}

uint64_t sub_24B2C9FB8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = sub_24B2CA39C;
  }

  else
  {
    v4 = sub_24B2CA0CC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24B2CA0CC()
{
  v1 = *(v0 + 176);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 entryForConfiguration:*MEMORY[0x277D08F68] deviceClasses:v1];

  v4 = sub_24B2D51E4();
  *(v0 + 144) = sub_24B2D5394();
  *(v0 + 152) = v5;

  result = sub_24B2D5BC4();
  if (!*(v4 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = sub_24B181B58(v0 + 16);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_24AFF3FA0(*(v4 + 56) + 32 * v7, v0 + 88);

  sub_24B1830A8(v0 + 16);
  sub_24B0E4E94((v0 + 88), (v0 + 56));
  sub_24B2CA458();
  swift_dynamicCast();
  v10 = *(v0 + 160);
  v11 = [v10 isEnabled];
  if (v11)
  {
    v14 = [v10 disclaimer];
    v15 = sub_24B2D5394();
    v17 = v16;

    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v15 & 0xFFFFFFFFFFFFLL;
    }

    v19 = *(v0 + 176);
    if (v18)
    {
      v20 = [v10 disclaimer];
      v21 = sub_24B2D5394();
      v23 = v22;

      v24 = *(v0 + 8);

      return v24(v21, v23);
    }
  }

  else
  {
    v19 = *(v0 + 176);
  }

  sub_24B2CA4A4(v11, v12, v13);
  swift_allocError();
  *v25 = 1;
  swift_willThrow();

  v26 = *(v0 + 8);

  return v26();
}

unint64_t sub_24B2CA3B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCF9C8;
  if (!qword_27EFCF9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF9C8);
  }

  return result;
}

unint64_t sub_24B2CA458()
{
  result = qword_27EFCF9D0;
  if (!qword_27EFCF9D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EFCF9D0);
  }

  return result;
}

unint64_t sub_24B2CA4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCF9D8;
  if (!qword_27EFCF9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF9D8);
  }

  return result;
}

uint64_t sub_24B2CA510(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AFFDE44;

  return sub_24B2C6834(a1, a2, v7, v6);
}

uint64_t sub_24B2CA5C4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AFFD370;

  return sub_24B2C6834(a1, a2, v7, v6);
}

uint64_t sub_24B2CA678(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AFFDE44;

  return sub_24B2C6F80(a1, v4, v5, v7, v6);
}

uint64_t sub_24B2CA738()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AFFDE44;

  return sub_24B2C7374();
}

unint64_t sub_24B2CA7E4()
{
  result = qword_27EFCF9F0;
  if (!qword_27EFCF9F0)
  {
    sub_24B2D5654();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF9F0);
  }

  return result;
}

uint64_t sub_24B2CA83C(uint64_t a1)
{
  v2 = type metadata accessor for FlyingUnicornDisclaimerView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *TheftAndLossReminderContext.init(useCase:serialNumber:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t TheftAndLossReminderContext.serialNumber.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t getEnumTagSinglePayload for TheftAndLossReminderContext.UseCase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 21;
  if (a2 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 21;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 21;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 21;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 0x15;
  v9 = v7 - 21;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TheftAndLossReminderContext.UseCase(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 21;
  if (a3 + 21 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xEB)
  {
    v5 = 0;
  }

  if (a2 > 0xEA)
  {
    v6 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

void sub_24B2CAA68(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF9E0, &unk_24B2F6320);
    sub_24B2D5624();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF9E0, &unk_24B2F6320);
    sub_24B2D5634();
  }
}

double sub_24B2CAB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - v8;
  sub_24AFFDC5C(a1, v18 - v8);
  v10 = sub_24B2D56D4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_24AFF8258(v9, &qword_27EFC8580, &qword_24B2E0010);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_24B2D5604();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_24B2D56C4();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();

  return result;
}

void sub_24B2CACEC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8138, &unk_24B2F6370);
    sub_24B2D5624();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8138, &unk_24B2F6370);
    sub_24B2D5634();
  }
}

uint64_t sub_24B2CAD7C()
{
  v0 = sub_24B2D3184();
  __swift_allocate_value_buffer(v0, qword_27EFCFA00);
  __swift_project_value_buffer(v0, qword_27EFCFA00);
  return sub_24B2D3174();
}

uint64_t static TheftAndLossReminderModalBuilder.reminderViewController(context:actionHandler:)(char *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24B0C9468;

  return sub_24B2CC9F0(a1, a2, a3);
}

BOOL sub_24B2CAEB4()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 enableFMIPInContext_];

  if (v1)
  {
    if (qword_27EFC7800 != -1)
    {
      swift_once();
    }

    v2 = sub_24B2D3184();
    __swift_project_value_buffer(v2, qword_27EFCFA00);
    v3 = v1;
    v4 = sub_24B2D3164();
    v5 = sub_24B2D5914();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = v3;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_24AFD2000, v4, v5, "Failed to enable FMIP, error: %@", v6, 0xCu);
      sub_24AFF8258(v7, &qword_27EFC7BB8, &unk_24B2DEAF0);
      MEMORY[0x24C23D530](v7, -1, -1);
      MEMORY[0x24C23D530](v6, -1, -1);

      v4 = v8;
    }

    else
    {
    }
  }

  else
  {
    if (qword_27EFC7800 != -1)
    {
      swift_once();
    }

    v10 = sub_24B2D3184();
    __swift_project_value_buffer(v10, qword_27EFCFA00);
    v4 = sub_24B2D3164();
    v11 = sub_24B2D5934();
    if (os_log_type_enabled(v4, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24AFD2000, v4, v11, "FMIP enabled", v12, 2u);
      MEMORY[0x24C23D530](v12, -1, -1);
    }
  }

  return v1 == 0;
}

uint64_t sub_24B2CB100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v5 = sub_24B2D5654();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B2CB1FC, 0, 0);
}

uint64_t sub_24B2CB1FC()
{
  v1 = v0[9];
  v3 = v0[4];
  v2 = v0[5];
  v4 = sub_24B2D56D4();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  v6[5] = v2;
  sub_24B2CAB0C(v1, &unk_24B2F6350, v6);
  sub_24AFF8258(v1, &qword_27EFC8580, &qword_24B2E0010);
  v5(v1, 1, 1, v4);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_24B2CAB0C(v1, &unk_24B2F6360, v7);
  sub_24AFF8258(v1, &qword_27EFC8580, &qword_24B2E0010);
  v8 = swift_task_alloc();
  v0[10] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF9E8, &qword_24B2F6228);
  *v8 = v0;
  v8[1] = sub_24B2CB3E0;

  return MEMORY[0x2822004D0](v0 + 12, 0, 0, v9);
}

uint64_t sub_24B2CB3E0()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_24B2CB4F4;
  }

  else
  {
    v2 = sub_24B2C6C28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B2CB4F4()
{
  v1 = *(v0 + 88);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0, &unk_24B2E5410);
  if (swift_dynamicCast())
  {

    if (qword_27EFC7800 != -1)
    {
      swift_once();
    }

    v3 = sub_24B2D3184();
    __swift_project_value_buffer(v3, qword_27EFCFA00);
    v4 = sub_24B2D3164();
    v5 = sub_24B2D5914();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24AFD2000, v4, v5, "Download timed out", v6, 2u);
      MEMORY[0x24C23D530](v6, -1, -1);
    }

    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v9 = *(v0 + 48);

    (*(v8 + 8))(v7, v9);
    v10 = *(v0 + 16);
  }

  else
  {

    if (qword_27EFC7800 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 88);
    v12 = sub_24B2D3184();
    __swift_project_value_buffer(v12, qword_27EFCFA00);
    v13 = v11;
    v14 = sub_24B2D3164();
    v15 = sub_24B2D5914();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 88);
    if (v16)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v17;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_24AFD2000, v14, v15, "Download failed: %@", v18, 0xCu);
      sub_24AFF8258(v19, &qword_27EFC7BB8, &unk_24B2DEAF0);
      MEMORY[0x24C23D530](v19, -1, -1);
      MEMORY[0x24C23D530](v18, -1, -1);

      goto LABEL_13;
    }

    v10 = v17;
  }

LABEL_13:

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_24B2CB7E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8138, &unk_24B2F6370);
  v0[18] = v1;
  v0[19] = *(v1 - 8);
  v0[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B2CB8A8, 0, 0);
}

uint64_t sub_24B2CB8A8()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v7 = [objc_opt_self() sharedInstance];
  v1[21] = v7;
  v1[2] = v1;
  v1[3] = sub_24B2C7610;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0, &unk_24B2E5410);
  sub_24B2D5614();
  (*(v5 + 32))(boxed_opaque_existential_0, v4, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_24B2CACEC;
  v1[13] = &block_descriptor_20;
  [v7 downloadWithReply_];
  (*(v5 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_24B2CBA7C(uint64_t result)
{
  if (result > 2)
  {
    switch(result)
    {
      case 3:
        v4 = [objc_opt_self() currentDevice];
        v5 = [v4 userInterfaceIdiom];

        result = 0;
        if (v5 <= 1)
        {
          if (v5)
          {
            if (v5 != 1)
            {
              return result;
            }

            if (qword_27EFC7788 != -1)
            {
              swift_once();
            }

            v1 = qword_27EFE4698;
          }

          else
          {
            if (qword_27EFC77A8 != -1)
            {
              swift_once();
            }

            v1 = qword_27EFE46B8;
          }

          goto LABEL_37;
        }

        if (v5 == 2)
        {
          if (qword_27EFC7758 != -1)
          {
            swift_once();
          }

          v1 = qword_27EFE4668;
          goto LABEL_37;
        }

        if (v5 == 5)
        {
          if (qword_27EFC77D8 != -1)
          {
            swift_once();
          }

          v1 = qword_27EFE46E8;
          goto LABEL_37;
        }

        break;
      case 4:
        if (qword_27EFC77F0 != -1)
        {
          swift_once();
        }

        v1 = qword_27EFE4700;
        goto LABEL_37;
      case 5:
        v2 = [objc_opt_self() currentDevice];
        v3 = [v2 userInterfaceIdiom];

        result = 0;
        if (v3 <= 1)
        {
          if (v3)
          {
            if (v3 != 1)
            {
              return result;
            }

            if (qword_27EFC7790 != -1)
            {
              swift_once();
            }

            v1 = qword_27EFE46A0;
          }

          else
          {
            if (qword_27EFC77B0 != -1)
            {
              swift_once();
            }

            v1 = qword_27EFE46C0;
          }

          goto LABEL_37;
        }

        if (v3 == 2)
        {
          if (qword_27EFC7760 != -1)
          {
            swift_once();
          }

          v1 = qword_27EFE4670;
          goto LABEL_37;
        }

        if (v3 == 5)
        {
          if (qword_27EFC77E0 != -1)
          {
            swift_once();
          }

          v1 = qword_27EFE46F0;
          goto LABEL_37;
        }

        break;
      default:
LABEL_23:
        v6 = result;
        if (qword_27EFC7800 != -1)
        {
          swift_once();
        }

        v7 = sub_24B2D3184();
        __swift_project_value_buffer(v7, qword_27EFCFA00);
        v8 = sub_24B2D3164();
        v9 = sub_24B2D5914();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 134349056;
          *(v10 + 4) = v6;
          _os_log_impl(&dword_24AFD2000, v8, v9, "Unhandled coverage: %{public}lu", v10, 0xCu);
          MEMORY[0x24C23D530](v10, -1, -1);
        }

        return 0;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    if (result != 1)
    {
      if (result == 2)
      {
        if (qword_27EFC77E8 != -1)
        {
          swift_once();
        }

        v1 = qword_27EFE46F8;
LABEL_37:
        v13 = v1;
        return v1;
      }

      goto LABEL_23;
    }

    v11 = [objc_opt_self() currentDevice];
    v12 = [v11 userInterfaceIdiom];

    result = 0;
    if (v12 <= 1)
    {
      if (v12)
      {
        if (v12 != 1)
        {
          return result;
        }

        if (qword_27EFC7778 != -1)
        {
          swift_once();
        }

        v1 = qword_27EFE4688;
      }

      else
      {
        if (qword_27EFC7798 != -1)
        {
          swift_once();
        }

        v1 = qword_27EFE46A8;
      }

      goto LABEL_37;
    }

    if (v12 == 2)
    {
      if (qword_27EFC7750 != -1)
      {
        swift_once();
      }

      v1 = qword_27EFE4660;
      goto LABEL_37;
    }

    if (v12 == 5)
    {
      if (qword_27EFC77B8 != -1)
      {
        swift_once();
      }

      v1 = qword_27EFE46C8;
      goto LABEL_37;
    }
  }

  return result;
}

uint64_t sub_24B2CC00C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF9E0, &unk_24B2F6320);
  *(v1 + 152) = v3;
  *(v1 + 160) = *(v3 - 8);
  *(v1 + 168) = swift_task_alloc();
  *(v1 + 256) = *a1;
  *(v1 + 176) = *(a1 + 8);

  return MEMORY[0x2822009F8](sub_24B2CC0E8, 0, 0);
}

uint64_t sub_24B2CC0E8()
{
  v17 = v0;
  if (*(v0 + 256) == 21)
  {
    v1 = *(v0 + 184);
    v15 = [objc_opt_self() sharedInstance];
    *(v0 + 192) = v15;
    if (v1)
    {
      v2 = sub_24B2D5374();
    }

    else
    {
      v2 = 0;
    }

    *(v0 + 200) = v2;
    v10 = *(v0 + 160);
    v9 = *(v0 + 168);
    v11 = *(v0 + 152);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_24B2CC3C8;
    swift_continuation_init();
    *(v0 + 136) = v11;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0, &unk_24B2E5410);
    sub_24B2D5614();
    (*(v10 + 32))(boxed_opaque_existential_0, v9, v11);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_24B2CAA68;
    *(v0 + 104) = &block_descriptor_11;
    [v15 getTheftAndLossCoverageWithSerialNumber:v2 reply:v0 + 80];
    (*(v10 + 8))(boxed_opaque_existential_0, v11);

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v16[0] = *(v0 + 256);
    v3 = sub_24B2C82B4(v16);
    if (v3)
    {
      v6 = v3;

      v7 = *(v0 + 8);

      return v7(v6);
    }

    else
    {
      sub_24B2CA4A4(0, v4, v5);
      swift_allocError();
      *v13 = 2;
      swift_willThrow();

      v14 = *(v0 + 8);

      return v14();
    }
  }
}

uint64_t sub_24B2CC3C8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_24B2CC970;
  }

  else
  {
    v2 = sub_24B2CC4D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B2CC4D8()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[18];
  v0[27] = v3;

  if (v3)
  {
    v4 = swift_task_alloc();
    v0[28] = v4;
    *(v4 + 16) = xmmword_24B2F60A0;
    v5 = swift_task_alloc();
    v0[29] = v5;
    *v5 = v0;
    v5[1] = sub_24B2CC644;

    return MEMORY[0x282200740]();
  }

  else
  {
    sub_24B2D5694();
    v0[30] = sub_24B2D5684();
    v7 = sub_24B2D5604();

    return MEMORY[0x2822009F8](sub_24B2CC780, v7, v6);
  }
}

void sub_24B2CC644()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_24B2CC8DC, 0, 0);
  }
}

uint64_t sub_24B2CC780()
{
  v1 = *(v0 + 216);

  *(v0 + 248) = sub_24B2CBA7C(v1);

  return MEMORY[0x2822009F8](sub_24B2CC7F8, 0, 0);
}

uint64_t sub_24B2CC7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 248);
  if (v4)
  {

    v5 = *(v3 + 8);

    return v5(v4);
  }

  else
  {
    sub_24B2CA4A4(a1, a2, a3);
    swift_allocError();
    *v7 = 2;
    swift_willThrow();

    v8 = *(v3 + 8);

    return v8();
  }
}

uint64_t sub_24B2CC8DC()
{
  sub_24B2D5694();
  *(v0 + 240) = sub_24B2D5684();
  v2 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B2CC780, v2, v1);
}

uint64_t sub_24B2CC970(uint64_t a1)
{
  v2 = v1[25];
  v3 = v1[24];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_24B2CC9F0(char *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 176) = a2;
  *(v3 + 184) = a3;
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  *(v3 + 192) = sub_24B2D5694();
  *(v3 + 200) = sub_24B2D5684();
  *(v3 + 88) = v4;
  *(v3 + 96) = v5;
  *(v3 + 104) = v6;
  v7 = swift_task_alloc();
  *(v3 + 208) = v7;
  *v7 = v3;
  v7[1] = sub_24B2CCAB8;

  return sub_24B2CC00C(v3 + 88);
}

uint64_t sub_24B2CCAB8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  v5 = sub_24B2D5604();
  if (v1)
  {
    v6 = sub_24B2CCF30;
  }

  else
  {
    v6 = sub_24B2CCBFC;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_24B2CCBFC()
{
  v1 = v0[27];

  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 entryForConfiguration:*MEMORY[0x277D08F68] deviceClasses:v1];

  v4 = sub_24B2D51E4();
  v0[14] = sub_24B2D5394();
  v0[15] = v5;
  sub_24B2D5BC4();
  if (*(v4 + 16) && (v6 = sub_24B181B58((v0 + 2)), (v7 & 1) != 0))
  {
    sub_24AFF3FA0(*(v4 + 56) + 32 * v6, (v0 + 7));
    sub_24B1830A8((v0 + 2));

    sub_24B2CCFA4();
    v8 = swift_dynamicCast();
    if (v8)
    {
      v11 = v0[27];
      v13 = v0[22];
      v12 = v0[23];
      v14 = v0[20];
      type metadata accessor for TheftAndLossReminderViewModel(0);
      v15 = swift_allocObject();
      *(v15 + 32) = 0u;
      *(v15 + 48) = 0u;
      *(v15 + 64) = 0;
      v16 = v14;
      sub_24B2D25B4();
      *(v15 + 16) = v16;
      *(v15 + 24) = 0;
      sub_24B258AB4(*(v15 + 32), *(v15 + 40));
      *(v15 + 32) = 0u;
      *(v15 + 48) = 0u;
      *(v15 + 64) = 0;
      *(v15 + 72) = sub_24B2CAEB4;
      *(v15 + 80) = 0;
      *(v15 + 88) = v13;
      *(v15 + 96) = v12;
      v0[21] = v15;

      sub_24B2D4CC4();
      v17 = v0[17];
      v0[18] = v0[16];
      v0[19] = v17;
      v18 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCFA20, &unk_24B2F6310));

      v19 = sub_24B2D3EA4();

      v20 = v0[1];

      return v20(v19);
    }
  }

  else
  {

    v8 = sub_24B1830A8((v0 + 2));
  }

  v22 = v0[27];
  sub_24B2C6570(v8, v9, v10);
  swift_allocError();
  *v23 = 1;
  swift_willThrow();

  v24 = v0[1];

  return v24();
}

uint64_t sub_24B2CCF30()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_24B2CCFA4()
{
  result = qword_27EFCFA18;
  if (!qword_27EFCFA18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EFCFA18);
  }

  return result;
}

uint64_t sub_24B2CD008(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AFFD370;

  return sub_24B2CB100(a1, a2, v7, v6);
}

uint64_t sub_24B2CD0BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AFFDE44;

  return sub_24B2C6F80(a1, v4, v5, v7, v6);
}

uint64_t sub_24B2CD17C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AFFDE44;

  return sub_24B2CB7E0();
}

unint64_t sub_24B2CD244()
{
  result = qword_27EFCFA28;
  if (!qword_27EFCFA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCFA30, qword_24B2F63A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCFA28);
  }

  return result;
}

void *sub_24B2CD2A8@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_24B2CD2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCFA38;
  if (!qword_27EFCFA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCFA38);
  }

  return result;
}

uint64_t TheftAndLossReminderView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68, &qword_24B2E36B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v63 - v3;
  v5 = *v1;
  v6 = v1[1];
  *&v82 = *v1;
  *(&v82 + 1) = v6;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCFA40, &unk_24B2F6488);
  sub_24B2D4CD4();
  v7 = *(*&v81[0] + 16);

  v8 = [v7 title];

  v9 = sub_24B2D5394();
  v71 = v10;
  v72 = v9;

  type metadata accessor for TheftAndLossModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  v13 = sub_24B2D5374();
  v70 = [objc_opt_self() imageNamed:v13 inBundle:v12];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF960, &unk_24B2F5F20);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_24B2DEAD0;
  if (qword_27EFC7740 != -1)
  {
    swift_once();
  }

  v15 = sub_24B2D1454();
  v16 = __swift_project_value_buffer(v15, qword_27EFE4648);
  v17 = *(v15 - 8);
  v18 = *(v17 + 16);
  v67 = v17 + 16;
  v68 = v16;
  v69 = v18;
  v18(v4, v16, v15);
  v66 = *(v17 + 56);
  v66(v4, 0, 1, v15);
  v19 = sub_24B2D52D4();
  v64 = v20;
  v65 = v19;
  sub_24B0C6490(v4);
  *&v82 = v5;
  *(&v82 + 1) = v6;
  sub_24B2D4CD4();
  v21 = *&v81[0];
  swift_getKeyPath();
  *&v82 = v21;
  v74 = sub_24B2CEEEC();
  sub_24B2D2584();

  v22 = *(v21 + 24);

  if (v22)
  {
    v23 = 2;
  }

  else
  {
    v23 = 0;
  }

  v24 = swift_allocObject();
  *(v24 + 16) = v5;
  *(v24 + 24) = v6;
  v25 = v64;
  *(v14 + 32) = v65;
  *(v14 + 40) = v25;
  *(v14 + 48) = v23;
  *(v14 + 49) = 0;
  *(v14 + 56) = sub_24B2CEF44;
  *(v14 + 64) = v24;
  v69(v4, v68, v15);
  v66(v4, 0, 1, v15);

  v26 = sub_24B2D52D4();
  v28 = v27;
  sub_24B0C6490(v4);
  v29 = swift_allocObject();
  *(v29 + 16) = v5;
  *(v29 + 24) = v6;
  *(v14 + 72) = v26;
  *(v14 + 80) = v28;
  *(v14 + 88) = 256;
  *(v14 + 96) = sub_24B2CEF4C;
  *(v14 + 104) = v29;

  v30 = v70;
  v31 = v70;
  v32 = sub_24B2CDB14(v5, v6);

  *&v82 = v72;
  *(&v82 + 1) = v71;
  v83 = 0uLL;
  v84 = v30;
  v85 = v32;
  v86 = 0uLL;
  *&v87 = MEMORY[0x277D84F90];
  *(&v87 + 1) = v14;
  *&v81[0] = v5;
  *(&v81[0] + 1) = v6;
  v72 = v6;
  sub_24B2D4CD4();
  v33 = v76;
  swift_getKeyPath();
  *&v81[0] = v33;
  sub_24B2D2584();

  v34 = v33[4];
  v35 = v33[5];
  sub_24B258A64(v34, v35, v33[6], v33[7], v33[8]);

  if (v35)
  {

    v36 = v34;
    v37 = v35;
  }

  else
  {
    v36 = 0;
    v37 = 0xE000000000000000;
  }

  v38 = sub_24B258AB4(v34, v35);
  *&v81[0] = v36;
  *(&v81[0] + 1) = v37;
  sub_24AFFE0A4(v38, v39, v40);
  v41 = sub_24B2D4604();
  v70 = v42;
  v71 = v41;
  LODWORD(v68) = v43;
  v69 = v44;
  sub_24B2D5694();

  v45 = v72;

  v46 = sub_24B2D5684();
  v47 = swift_allocObject();
  v48 = MEMORY[0x277D85700];
  v47[2] = v46;
  v47[3] = v48;
  v47[4] = v5;
  v47[5] = v45;

  v49 = sub_24B2D5684();
  v50 = swift_allocObject();
  v50[2] = v49;
  v50[3] = v48;
  v50[4] = v5;
  v50[5] = v45;
  sub_24B2D4E74();
  *&v81[0] = v5;
  *(&v81[0] + 1) = v45;
  sub_24B2D4CD4();
  v51 = v76;
  swift_getKeyPath();
  *&v81[0] = v51;
  sub_24B2D2584();

  v52 = v51[4];
  v53 = v51[5];
  v54 = v51[6];
  v55 = v51[7];
  v56 = v51[8];
  sub_24B258A64(v52, v53, v54, v55, v56);

  v76 = v52;
  v77 = v53;
  v78 = v54;
  v79 = v55;
  v80 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEC60, &qword_24B2F35B0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEC68, &unk_24B2F64F0);
  sub_24B2C45A8(v57, v58, v59);
  sub_24B258D3C();
  LOBYTE(v55) = v68;
  v61 = v70;
  v60 = v71;
  sub_24B2D48E4();

  sub_24B083C34(v60, v61, v55 & 1);

  sub_24B258AB4(v76, v77);
  v81[2] = v84;
  v81[3] = v85;
  v81[4] = v86;
  v81[5] = v87;
  v81[0] = v82;
  v81[1] = v83;
  return sub_24B2C45FC(v81);
}

uint64_t sub_24B2CDB14(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCFA40, &unk_24B2F6488);
  sub_24B2D4CD4();
  v2 = *(v15 + 16);

  v3 = [v2 message];

  sub_24B2D5394();
  sub_24AFFE0A4(v4, v5, v6);
  v7 = sub_24B2D4604();
  v9 = v8;
  v11 = v10;
  sub_24B2D43A4();
  sub_24B2D45C4();

  sub_24B083C34(v7, v9, v11 & 1);

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8B20, &qword_24B2E1D60);
  sub_24B076708();
  return sub_24B2D4E24();
}

void sub_24B2CDC90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68, &qword_24B2E36B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - v6;
  v43 = a2;
  v44 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCFA40, &unk_24B2F6488);
  sub_24B2D4CD4();
  v8 = v42;
  if (*(v42 + 24) == 1)
  {
    *(v42 + 24) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v40 = &v33;
    MEMORY[0x28223BE20](KeyPath);
    *(&v33 - 2) = v8;
    *(&v33 - 8) = 1;
    v43 = v8;
    sub_24B2CEEEC();
    sub_24B2D2574();
  }

  v43 = a2;
  v44 = a3;
  sub_24B2D4CD4();
  v10 = *(v42 + 72);

  v12 = v10(v11);

  if (v12)
  {
    v43 = a2;
    v44 = a3;
    sub_24B2D4CD4();
    v13 = *(v42 + 88);

    v13(0);
  }

  else
  {
    v43 = a2;
    v44 = a3;
    sub_24B2D4CD4();
    v14 = v42;
    v15 = *(v42 + 24);
    v41 = a2;
    if (v15)
    {
      v16 = swift_getKeyPath();
      MEMORY[0x28223BE20](v16);
      *(&v33 - 2) = v14;
      *(&v33 - 8) = 0;
      v43 = v14;
      sub_24B2CEEEC();
      sub_24B2D2574();

      a2 = v41;
    }

    else
    {
      *(v42 + 24) = 0;
    }

    v40 = 0;
    v43 = a2;
    v44 = a3;
    sub_24B2D4CD4();
    v39 = v42;
    if (qword_27EFC7740 != -1)
    {
      swift_once();
    }

    v17 = sub_24B2D1454();
    v18 = __swift_project_value_buffer(v17, qword_27EFE4648);
    v19 = *(v17 - 8);
    v20 = *(v19 + 16);
    v20(v7, v18, v17);
    v21 = *(v19 + 56);
    v21(v7, 0, 1, v17);
    v36 = sub_24B2D52D4();
    v38 = v22;
    sub_24B0C6490(v7);
    v35 = v20;
    v20(v7, v18, v17);
    v21(v7, 0, 1, v17);
    v34 = sub_24B2D52D4();
    v37 = v23;
    sub_24B0C6490(v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8078, &qword_24B2DFCD8);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_24B2DE430;
    v25 = swift_allocObject();
    *(v25 + 16) = v41;
    *(v25 + 24) = a3;
    v26 = qword_27EFC7648;

    if (v26 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v17, qword_27EFCB478);
    v35(v7, v27, v17);
    v21(v7, 0, 1, v17);
    v28 = sub_24B2D52D4();
    v30 = v29;
    sub_24B0C6490(v7);
    *(v24 + 56) = sub_24B2CF1F4;
    *(v24 + 64) = v25;
    *(v24 + 32) = v28;
    *(v24 + 40) = v30;
    *(v24 + 48) = 2;
    v43 = v36;
    v44 = v38;
    v45 = v34;
    v46 = v37;
    v47 = v24;
    v31 = swift_getKeyPath();
    MEMORY[0x28223BE20](v31);
    v32 = v39;
    *(&v33 - 2) = v39;
    *(&v33 - 1) = &v43;
    v42 = v32;
    sub_24B2CEEEC();
    sub_24B2D2574();
  }
}

double sub_24B2CE2F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_24B2D56D4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_24B2D5694();

  v8 = sub_24B2D5684();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = a1;
  v9[5] = a2;
  sub_24B00A9A4(0, 0, v6, &unk_24B2F65D0, v9);

  return result;
}

uint64_t sub_24B2CE420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_24B2D5694();
  v5[7] = sub_24B2D5684();
  v7 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B2CE4B8, v7, v6);
}

uint64_t sub_24B2CE4B8()
{
  v1 = v0[6];
  v2 = v0[5];

  v0[2] = v2;
  v0[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCFA40, &unk_24B2F6488);
  sub_24B2D4CD4();
  v3 = *(v0[4] + 88);

  v3(2);

  v4 = v0[1];

  return v4();
}

double sub_24B2CE57C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCFA40, &unk_24B2F6488);
  sub_24B2D4CD4();
  v0 = *(v2 + 88);

  v0(1);

  return result;
}

void sub_24B2CE5F8(BOOL *a2@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCFA40, &unk_24B2F6488);
  sub_24B2D4CD4();
  swift_getKeyPath();
  sub_24B2CEEEC();
  sub_24B2D2584();

  v4 = v5[4];
  v3 = v5[5];
  sub_24B258A64(v4, v3, v5[6], v5[7], v5[8]);

  if (v3)
  {
    sub_24B258AB4(v4, v3);
  }

  *a2 = v3 != 0;
}

double sub_24B2CE75C()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCFA40, &unk_24B2F6488);
  sub_24B2D4CD4();
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24B2CEEEC();
  sub_24B2D2574();

  return result;
}

double sub_24B2CE8D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = v1;
  KeyPath = swift_getKeyPath();

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEE60, &qword_24B2F3AE0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9318, &qword_24B2E2990);
  v5 = sub_24B039184(&qword_27EFCEE68, &qword_27EFCEE60, &qword_24B2F3AE0, MEMORY[0x277D83980]);
  v6 = sub_24B039184(&qword_27EFC9C08, &qword_27EFC9318, &qword_24B2E2990, MEMORY[0x277CDF028]);
  sub_24B2D4ED4(&v8, KeyPath, sub_24B2CEA70, 0, v3, v4, v5, MEMORY[0x277D837E0], v6);

  return result;
}

double sub_24B2CEA70(__int128 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9310, &qword_24B2E2190);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v5);
  v7 = &v19[-v6 - 8];
  v8 = a1[1];
  v21 = *a1;
  v22 = v8;
  v23 = *(a1 + 4);
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = v21;
  v9 = v22;
  if (v22 == 2)
  {
    v10 = sub_24B2D32E4();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  }

  else
  {

    if (v9)
    {
      sub_24B2D32B4();
    }

    else
    {
      sub_24B2D32D4();
    }

    v11 = sub_24B2D32E4();
    (*(*(v11 - 8) + 56))(v4, 0, 1, v11);
    sub_24B2CF148(v4, v7);
  }

  v12 = swift_allocObject();
  v13 = v22;
  *(v12 + 16) = v21;
  *(v12 + 32) = v13;
  *(v12 + 48) = v23;
  v14 = sub_24B2CF0D8(&v21, v19);
  sub_24AFFE0A4(v14, v15, v16);
  sub_24B2D4D64();

  return result;
}

double sub_24B2CECC0(uint64_t a1)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*(a1 + 24))(isCurrentExecutor);

  return result;
}

void sub_24B2CED64(uint64_t a2@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  sub_24AFFE0A4(isCurrentExecutor, v4, v5);

  v6 = sub_24B2D4604();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v12;
}

void sub_24B2CEE4C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B2CEEEC();
  sub_24B2D2584();

  *a2 = *(v3 + 24);
}

unint64_t sub_24B2CEEEC()
{
  result = qword_27EFCFA48;
  if (!qword_27EFCFA48)
  {
    type metadata accessor for TheftAndLossReminderViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCFA48);
  }

  return result;
}

double sub_24B2CEF54@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B2CEEEC();
  sub_24B2D2584();

  v4 = v3[4];
  v5 = v3[5];
  v6 = v3[6];
  v7 = v3[7];
  v8 = v3[8];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  return sub_24B258A64(v4, v5, v6, v7, v8);
}

double sub_24B2CEFE0(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_24B2CEEEC();
  sub_24B2D2574();

  return result;
}

uint64_t sub_24B2CF0D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8080, &qword_24B2DFCE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B2CF148(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9310, &qword_24B2E2190);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B2CF1FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AFFD370;

  return sub_24B2CE420(a1, v4, v5, v7, v6);
}

void sub_24B2CF2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_24B2D21D4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

double static FindMyTheftAndLossReminderFactory.reminderViewController(context:actionHandler:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21 - v13;
  v15 = sub_24B2D56D4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_24B2D5694();
  v16 = a1;

  v17 = sub_24B2D5684();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v16;
  v18[5] = a2;
  v18[6] = a3;
  v18[7] = a4;
  v18[8] = a5;
  v18[9] = v6;
  sub_24B00A9A4(0, 0, v14, &unk_24B2F6610, v18);

  return result;
}

uint64_t sub_24B2CF4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v13;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  sub_24B2D5694();
  v8[11] = sub_24B2D5684();
  v10 = sub_24B2D5604();
  v8[12] = v10;
  v8[13] = v9;

  return MEMORY[0x2822009F8](sub_24B2CF570, v10, v9);
}

uint64_t sub_24B2CF570()
{
  v11 = v0;
  sub_24B2CFA04(*(v0 + 40), v8);
  v1 = v8[0];
  v2 = v9;
  v3 = v10;
  *(v0 + 112) = v10;
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = sub_24B2CF6B8;
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);

  return sub_24B2CC9F0((v0 + 16), v5, v6);
}

uint64_t sub_24B2CF6B8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_24B2CF874;
  }

  else
  {
    v4[17] = a1;

    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_24B2CF7E4;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24B2CF7E4()
{
  v1 = v0[17];
  v2 = v0[8];

  v3 = v1;
  v2(v1, 0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24B2CF874()
{

  v1 = v0[16];
  v2 = v0[8];
  v3 = v1;
  v2(0, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24B2CF918(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24AFFD370;

  return sub_24B2CF4C8(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_24B2CFA04(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 useCase];
  v5 = sub_24B2D5394();
  v7 = v6;
  if (v5 == sub_24B2D5394() && v7 == v8)
  {

    goto LABEL_12;
  }

  v10 = sub_24B2D6004();

  if (v10)
  {
LABEL_12:
    v26 = [a1 serialNumber];
    if (v26)
    {
      v27 = v26;
      v28 = sub_24B2D5394();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    *a2 = 21;
    *(a2 + 8) = v28;
    *(a2 + 16) = v30;
    return;
  }

  if (qword_27EFC7808 != -1)
  {
    swift_once();
  }

  v11 = sub_24B2D3184();
  __swift_project_value_buffer(v11, qword_27EFCFA50);
  v12 = a1;
  v13 = sub_24B2D3164();
  v14 = sub_24B2D5914();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v31 = v16;
    *v15 = 136315138;
    v17 = [v12 useCase];
    v18 = sub_24B2D5394();
    v20 = v19;

    v21 = sub_24AFF321C(v18, v20, &v31);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_24AFD2000, v13, v14, "Unrecognized useCase: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C23D530](v16, -1, -1);
    MEMORY[0x24C23D530](v15, -1, -1);
  }

  sub_24B2C6570(v22, v23, v24);
  swift_allocError();
  *v25 = 0;
  swift_willThrow();
}

FindMyTheftAndLossReminderFactory __swiftcall FindMyTheftAndLossReminderFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for FindMyTheftAndLossReminderFactory()
{
  result = qword_27EFCFA68;
  if (!qword_27EFCFA68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EFCFA68);
  }

  return result;
}

uint64_t sub_24B2CFEFC()
{
  v0 = sub_24B2D3184();
  __swift_allocate_value_buffer(v0, qword_27EFCFA50);
  __swift_project_value_buffer(v0, qword_27EFCFA50);
  return sub_24B2D3174();
}

void sub_24B2CFF74(char a1)
{
  if (*(v1 + 24) == (a1 & 1))
  {
    *(v1 + 24) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B2CEEEC();
    sub_24B2D2574();
  }
}

double sub_24B2D0054@<D0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_24B2CEEEC();
  sub_24B2D2584();

  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  return sub_24B258A64(v3, v4, v5, v6, v7);
}

uint64_t sub_24B2D00E0()
{
  swift_getKeyPath();
  sub_24B2CEEEC();
  sub_24B2D2584();

  return *(v0 + 24);
}

uint64_t sub_24B2D015C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a2 + 16);
  *(a1 + 32) = *a2;
  *(a1 + 48) = v4;
  *(a1 + 64) = *(a2 + 32);
  sub_24B2D03B8(a2, v6);
  return sub_24B258AB4(v2, v3);
}

uint64_t sub_24B2D01DC()
{
  sub_24B258AB4(*(v0 + 32), *(v0 + 40));

  v1 = OBJC_IVAR____TtC12FindMyUICore29TheftAndLossReminderViewModel___observationRegistrar;
  v2 = sub_24B2D25C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TheftAndLossReminderViewModel(uint64_t a1)
{
  result = qword_27EFCFA78;
  if (!qword_27EFCFA78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B2D02F4(uint64_t a1)
{
  result = sub_24B2D25C4();
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

uint64_t sub_24B2D03B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEF58, &qword_24B2F3DD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_24B2D045C()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27EFCFA88 = result;
  return result;
}

uint64_t sub_24B2D04B4()
{
  v0 = sub_24B2D3084();
  __swift_allocate_value_buffer(v0, qword_27EFE4708);
  __swift_project_value_buffer(v0, qword_27EFE4708);
  if (qword_27EFC7810 != -1)
  {
    swift_once();
  }

  v1 = qword_27EFCFA88;
  return sub_24B2D3074();
}

uint64_t sub_24B2D055C()
{
  v0 = sub_24B2D3084();
  __swift_allocate_value_buffer(v0, qword_27EFE4720);
  __swift_project_value_buffer(v0, qword_27EFE4720);
  if (qword_27EFC7810 != -1)
  {
    swift_once();
  }

  v1 = qword_27EFCFA88;
  return sub_24B2D3074();
}

uint64_t sub_24B2D060C()
{
  v0 = sub_24B2D3084();
  __swift_allocate_value_buffer(v0, qword_27EFE4738);
  __swift_project_value_buffer(v0, qword_27EFE4738);
  if (qword_27EFC7810 != -1)
  {
    swift_once();
  }

  v1 = qword_27EFCFA88;
  return sub_24B2D3074();
}

uint64_t sub_24B2D06B4()
{
  v0 = sub_24B2D3084();
  __swift_allocate_value_buffer(v0, qword_27EFE4750);
  __swift_project_value_buffer(v0, qword_27EFE4750);
  if (qword_27EFC7810 != -1)
  {
    swift_once();
  }

  v1 = qword_27EFCFA88;
  return sub_24B2D3074();
}

uint64_t sub_24B2D075C()
{
  v0 = sub_24B2D3084();
  __swift_allocate_value_buffer(v0, qword_27EFE4768);
  __swift_project_value_buffer(v0, qword_27EFE4768);
  if (qword_27EFC7810 != -1)
  {
    swift_once();
  }

  v1 = qword_27EFCFA88;
  return sub_24B2D3074();
}

uint64_t sub_24B2D0804()
{
  v0 = sub_24B2D3084();
  __swift_allocate_value_buffer(v0, qword_27EFE4780);
  __swift_project_value_buffer(v0, qword_27EFE4780);
  if (qword_27EFC7810 != -1)
  {
    swift_once();
  }

  v1 = qword_27EFCFA88;
  return sub_24B2D3074();
}

uint64_t sub_24B2D08AC()
{
  v0 = sub_24B2D3084();
  __swift_allocate_value_buffer(v0, qword_27EFE4798);
  __swift_project_value_buffer(v0, qword_27EFE4798);
  if (qword_27EFC7810 != -1)
  {
    swift_once();
  }

  v1 = qword_27EFCFA88;
  return sub_24B2D3074();
}

uint64_t sub_24B2D0954()
{
  v0 = sub_24B2D3084();
  __swift_allocate_value_buffer(v0, qword_27EFE47B0);
  __swift_project_value_buffer(v0, qword_27EFE47B0);
  if (qword_27EFC7810 != -1)
  {
    swift_once();
  }

  v1 = qword_27EFCFA88;
  return sub_24B2D3074();
}

uint64_t sub_24B2D09FC()
{
  v0 = sub_24B2D3084();
  __swift_allocate_value_buffer(v0, qword_27EFE47C8);
  __swift_project_value_buffer(v0, qword_27EFE47C8);
  if (qword_27EFC7810 != -1)
  {
    swift_once();
  }

  v1 = qword_27EFCFA88;
  return sub_24B2D3074();
}

uint64_t sub_24B2D0AA4()
{
  v0 = sub_24B2D3084();
  __swift_allocate_value_buffer(v0, qword_27EFE47E0);
  __swift_project_value_buffer(v0, qword_27EFE47E0);
  if (qword_27EFC7810 != -1)
  {
    swift_once();
  }

  v1 = qword_27EFCFA88;
  return sub_24B2D3074();
}

uint64_t sub_24B2D0B4C()
{
  v0 = sub_24B2D3084();
  __swift_allocate_value_buffer(v0, qword_27EFE47F8);
  __swift_project_value_buffer(v0, qword_27EFE47F8);
  if (qword_27EFC7810 != -1)
  {
    swift_once();
  }

  v1 = qword_27EFCFA88;
  return sub_24B2D3074();
}

uint64_t sub_24B2D0BF4()
{
  v0 = sub_24B2D3084();
  __swift_allocate_value_buffer(v0, qword_27EFE4810);
  __swift_project_value_buffer(v0, qword_27EFE4810);
  if (qword_27EFC7810 != -1)
  {
    swift_once();
  }

  v1 = qword_27EFCFA88;
  return sub_24B2D3074();
}

uint64_t sub_24B2D0C9C()
{
  v0 = sub_24B2D3084();
  __swift_allocate_value_buffer(v0, qword_27EFE4828);
  __swift_project_value_buffer(v0, qword_27EFE4828);
  if (qword_27EFC7810 != -1)
  {
    swift_once();
  }

  v1 = qword_27EFCFA88;
  return sub_24B2D3074();
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_27EFE43F8 == -1)
  {
    if (qword_27EFE4400)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_27EFE4400)
    {
      return _availability_version_check();
    }
  }

  if (qword_27EFE43F0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_27EFE43E4 > a3)
      {
        return 1;
      }

      if (dword_27EFE43E4 >= a3)
      {
        return dword_27EFE43E8 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_27EFE4400;
  if (qword_27EFE4400)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27EFE4400 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x24C23CD60](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_27EFE43E4, &dword_27EFE43E8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

MKCoordinateRegion MKCoordinateRegionForMapRect(MKMapRect rect)
{
  MEMORY[0x282123640](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.span.longitudeDelta = v4;
  result.span.latitudeDelta = v3;
  result.center.longitude = v2;
  result.center.latitude = v1;
  return result;
}

MKMapPoint MKMapPointForCoordinate(CLLocationCoordinate2D coordinate)
{
  MEMORY[0x282123658](coordinate, *&coordinate.longitude);
  result.y = v2;
  result.x = v1;
  return result;
}

MKMapRect MKMapRectUnion(MKMapRect rect1, MKMapRect rect2)
{
  MEMORY[0x2821236C0](rect1.origin, *&rect1.origin.y, rect1.size, *&rect1.size.height, rect2.origin, *&rect2.origin.y, rect2.size, *&rect2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}