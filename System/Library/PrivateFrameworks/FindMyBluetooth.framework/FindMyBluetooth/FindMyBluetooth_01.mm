uint64_t sub_24AC34118()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = sub_24AC46D0C(&unk_2814AE1A8, type metadata accessor for Peripheral, "ayV7܏");
  v5 = swift_task_alloc();
  v0[38] = v5;
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;
  v6 = swift_task_alloc();
  v0[39] = v6;
  *v6 = v0;
  v6[1] = sub_24AC34254;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, v3, v4, 0xD00000000000001DLL, 0x800000024ACD9A70, sub_24AC46D54, v5, v7);
}

uint64_t sub_24AC34254()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = sub_24AC26694;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_24AC3437C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC3437C()
{
  v177 = v0;
  v1 = [*(v0[18] + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject) services];
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = v1;
    v4 = v0[28];
    v6 = v0[18];
    v5 = v0[19];
    sub_24AC2B8F8(0, &qword_27EF9E0F8, 0x277CBE098);
    v7 = sub_24ACD0700();
    v0[41] = v7;

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = v2;
    }

    v0[42] = sub_24AC653D0(v8);

    v9 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_services;
    v0[43] = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_services;
    swift_beginAccess();
    v10 = *(v6 + v9);
    v11 = v2;
    v12 = -1;
    v13 = -1 << *(v10 + 32);
    if (-v13 < 64)
    {
      v12 = ~(-1 << -v13);
    }

    v14 = v12 & *(v10 + 64);
    v15 = (63 - v13) >> 6;
    v16 = (v4 + 16);
    v171 = (v4 + 32);
    swift_bridgeObjectRetain_n();
    v17 = 0;
    if (!v14)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_8:
      while (1)
      {
        v18 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        if (*(*(v10 + 56) + ((v17 << 9) | (8 * v18))))
        {
          break;
        }

        if (!v14)
        {
          goto LABEL_10;
        }
      }

      v165 = v0[36];
      v167 = v0[37];
      v20 = v16;
      v21 = v0[27];
      v169 = v20;
      (*v20)();
      v22 = v167;
      v168 = *v171;
      (*v171)(v22, v165, v21);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_24AC1D2F8(0, v11[2] + 1, 1, v11);
      }

      v24 = v11[2];
      v23 = v11[3];
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v28 = sub_24AC1D2F8((v23 > 1), v24 + 1, 1, v11);
        v25 = v24 + 1;
        v11 = v28;
      }

      v26 = v0[37];
      v27 = v0[27];
      v11[2] = v25;
      v168(v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v24, v26, v27);
      v16 = v169;
    }

    while (v14);
    while (1)
    {
LABEL_10:
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_104;
      }

      if (v19 >= v15)
      {
        break;
      }

      v14 = *(v10 + 64 + 8 * v19);
      ++v17;
      if (v14)
      {
        v17 = v19;
        goto LABEL_8;
      }
    }

    v0[44] = sub_24AC653D0(v11);

    if (v7 >> 62)
    {
      goto LABEL_109;
    }

    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  else
  {
LABEL_84:
    v143 = v0[18];
    v144 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_services;
    swift_beginAccess();
    v145 = *(v143 + v144);
    v146 = *(v145 + 64);
    v176 = v2;
    v147 = -1;
    v148 = -1 << *(v145 + 32);
    if (-v148 < 64)
    {
      v147 = ~(-1 << -v148);
    }

    v149 = v147 & v146;
    v150 = (63 - v148) >> 6;
    swift_bridgeObjectRetain_n();
    v151 = 0;
    if (!v149)
    {
      goto LABEL_89;
    }

    do
    {
LABEL_87:
      while (1)
      {
        v152 = __clz(__rbit64(v149));
        v149 &= v149 - 1;
        if (*(*(v145 + 56) + ((v151 << 9) | (8 * v152))))
        {
          break;
        }

        if (!v149)
        {
          goto LABEL_89;
        }
      }

      MEMORY[0x24C22CE30](v154);
      if (*((v176 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v176 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24ACD0720();
      }

      sub_24ACD0730();
      v2 = v176;
    }

    while (v149);
LABEL_89:
    while (1)
    {
      v153 = v151 + 1;
      if (__OFADD__(v151, 1))
      {
        break;
      }

      if (v153 >= v150)
      {
        v155 = v0[17];

        *v155 = v2;

        v156 = v0[1];

        return v156();
      }

      v149 = *(v145 + 64 + 8 * v153);
      ++v151;
      if (v149)
      {
        v151 = v153;
        goto LABEL_87;
      }
    }

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
    result = sub_24ACD0B30();
  }

  v0[45] = result;
  if (!result)
  {
LABEL_40:

    v63 = v0[43];
    v64 = v0[18];

    v65 = *(v64 + v63);
    v66 = -1;
    v67 = -1 << *(v65 + 32);
    if (-v67 < 64)
    {
      v66 = ~(-1 << -v67);
    }

    v68 = v66 & *(v65 + 64);
    v69 = (63 - v67) >> 6;
    swift_bridgeObjectRetain_n();
    v70 = 0;
    v71 = MEMORY[0x277D84F90];
    if (!v68)
    {
      goto LABEL_45;
    }

    do
    {
LABEL_43:
      while (1)
      {
        v72 = __clz(__rbit64(v68));
        v68 &= v68 - 1;
        v73 = *(*(v65 + 56) + ((v70 << 9) | (8 * v72)));
        if (v73)
        {
          break;
        }

        if (!v68)
        {
          goto LABEL_45;
        }
      }

      v75 = v0[32];
      v173 = v0[33];
      v77 = v0[27];
      v76 = v0[28];
      (*(v76 + 16))(v75, v73 + OBJC_IVAR____TtC15FindMyBluetooth7Service_id, v77);
      v78 = v173;
      v174 = *(v76 + 32);
      v174(v78, v75, v77);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v71 = sub_24AC1D2F8(0, v71[2] + 1, 1, v71);
      }

      v80 = v71[2];
      v79 = v71[3];
      if (v80 >= v79 >> 1)
      {
        v71 = sub_24AC1D2F8((v79 > 1), v80 + 1, 1, v71);
      }

      v81 = v0[33];
      v82 = v0[27];
      v83 = v0[28];
      v71[2] = v80 + 1;
      v174(v71 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v80, v81, v82);
    }

    while (v68);
    while (1)
    {
LABEL_45:
      v74 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        goto LABEL_105;
      }

      if (v74 >= v69)
      {
        break;
      }

      v68 = *(v65 + 64 + 8 * v74);
      ++v70;
      if (v68)
      {
        v70 = v74;
        goto LABEL_43;
      }
    }

    v84 = v0[42];

    v85 = sub_24AC653D0(v71);

    if (*(v85 + 16) <= *(v84 + 16) >> 3)
    {
      v176 = v0[42];
      sub_24AC5A844(v85);

      v87 = v176;
    }

    else
    {
      v86 = sub_24AC5B4D0(v85, v0[42]);

      v87 = v86;
    }

    v88 = 0;
    v89 = v87 + 56;
    v90 = -1;
    v91 = -1 << *(v87 + 32);
    if (-v91 < 64)
    {
      v90 = ~(-1 << -v91);
    }

    v92 = v90 & *(v87 + 56);
    v158 = v0[18];
    v159 = v0[21];
    v157 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath;
    v93 = (63 - v91) >> 6;
    v170 = (v0[28] + 8);
    v162 = v93;
    v163 = v87 + 56;
    v164 = v87;
    while (1)
    {
      if (!v92)
      {
        while (1)
        {
          v98 = v88 + 1;
          if (__OFADD__(v88, 1))
          {
            goto LABEL_106;
          }

          if (v98 >= v93)
          {

            v2 = MEMORY[0x277D84F90];
            goto LABEL_84;
          }

          v92 = *(v89 + 8 * v98);
          ++v88;
          if (v92)
          {
            v88 = v98;
            break;
          }
        }
      }

      v100 = v0[30];
      v99 = v0[31];
      v102 = v0[27];
      v101 = v0[28];
      v166 = *(v101 + 72);
      v175 = *(v101 + 16);
      v175(v99, *(v87 + 48) + v166 * (__clz(__rbit64(v92)) | (v88 << 6)), v102);
      (*(v101 + 32))(v100, v99, v102);
      if (qword_27EF9DC38 != -1)
      {
        swift_once();
      }

      v104 = v0[29];
      v103 = v0[30];
      v105 = v0[27];
      v106 = sub_24ACD0490();
      __swift_project_value_buffer(v106, qword_27EF9E010);
      v175(v104, v103, v105);

      v107 = sub_24ACD0470();
      v108 = sub_24ACD0930();

      v109 = os_log_type_enabled(v107, v108);
      v110 = v0[29];
      v111 = v0[27];
      if (v109)
      {
        v112 = v0[22];
        v113 = swift_slowAlloc();
        v161 = swift_slowAlloc();
        v176 = v161;
        *v113 = 136446466;
        sub_24AC2A3DC(v158 + v157, v112);
        v114 = (v112 + *(v159 + 32));
        v160 = v108;
        v116 = *v114;
        v115 = v114[1];

        sub_24AC47AEC(v112, type metadata accessor for PeerPath);
        v117 = sub_24AC29E20(v116, v115, &v176);

        *(v113 + 4) = v117;
        *(v113 + 12) = 2082;
        sub_24AC2B6A8(&qword_27EF9E0D0, &unk_27EF9E090, &qword_24ACD37C0, MEMORY[0x277D088C8]);
        v118 = sub_24ACD0C20();
        v120 = v119;
        v121 = *v170;
        (*v170)(v110, v111);
        v122 = sub_24AC29E20(v118, v120, &v176);

        *(v113 + 14) = v122;
        _os_log_impl(&dword_24AC18000, v107, v160, "%{public}s: No service discovered for %{public}s", v113, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C22DC60](v161, -1, -1);
        MEMORY[0x24C22DC60](v113, -1, -1);
      }

      else
      {

        v121 = *v170;
        (*v170)(v110, v111);
      }

      v123 = v0[43];
      v124 = v0[30];
      v125 = v0[18];
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v127 = *(v125 + v123);
      v176 = v127;
      v128 = sub_24AC2ACC8(v124);
      v130 = v127[2];
      v131 = (v129 & 1) == 0;
      v132 = __OFADD__(v130, v131);
      v133 = v130 + v131;
      if (v132)
      {
        goto LABEL_107;
      }

      v134 = v129;
      if (v127[3] < v133)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_78;
      }

      v142 = v128;
      sub_24AC5E828();
      v128 = v142;
      v127 = v176;
      if (v134)
      {
LABEL_61:
        v94 = v127[7];
        v95 = *(v94 + 8 * v128);
        *(v94 + 8 * v128) = 0;
        goto LABEL_62;
      }

LABEL_79:
      v137 = v0[30];
      v138 = v0[27];
      v127[(v128 >> 6) + 8] |= 1 << v128;
      v139 = v128;
      result = (v175)(v127[6] + v128 * v166, v137, v138);
      *(v127[7] + 8 * v139) = 0;
      v140 = v127[2];
      v132 = __OFADD__(v140, 1);
      v141 = v140 + 1;
      if (v132)
      {
        __break(1u);
        goto LABEL_111;
      }

      v127[2] = v141;
      v95 = 1;
LABEL_62:
      v92 &= v92 - 1;
      v96 = v0[30];
      v97 = v0[27];
      *(v0[18] + v0[43]) = v127;
      sub_24AC2B7BC(v95);
      swift_endAccess();
      v121(v96, v97);
      v89 = v163;
      v87 = v164;
      v93 = v162;
    }

    v135 = v0[30];
    sub_24AC5C5E0(v133, isUniquelyReferenced_nonNull_native);
    v127 = v176;
    v128 = sub_24AC2ACC8(v135);
    if ((v134 & 1) != (v136 & 1))
    {

      return sub_24ACD0C80();
    }

LABEL_78:
    if (v134)
    {
      goto LABEL_61;
    }

    goto LABEL_79;
  }

  v30 = 0;
  v0[46] = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath;
  v31 = 0x278FFC000uLL;
  while (1)
  {
    v32 = v0[41];
    if ((v32 & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x24C22D1B0](v30);
    }

    else
    {
      if (v30 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_111:
        __break(1u);
        return result;
      }

      v33 = *(v32 + 8 * v30 + 32);
    }

    v0[47] = v33;
    v0[48] = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      goto LABEL_108;
    }

    v34 = v0[44];
    v36 = v0[25];
    v35 = v0[26];
    v37 = v0[23];
    v38 = v0[24];
    v172 = v33;
    v39 = [v33 *(v31 + 3992)];
    CBUUID.uuidValue.getter(v35);

    (*(v38 + 16))(v36, v35, v37);
    type metadata accessor for Service(0);
    sub_24ACD0000();
    if (!*(v34 + 16))
    {
      break;
    }

    v40 = v0[44];
    sub_24AC2B6A8(&qword_27EF9DFD8, &unk_27EF9E090, &qword_24ACD37C0, MEMORY[0x277D088B8]);
    v41 = sub_24ACD0520();
    v42 = -1 << *(v40 + 32);
    v43 = v41 & ~v42;
    if (((*(v40 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v43) & 1) == 0)
    {
      break;
    }

    v44 = ~v42;
    v45 = v0[28];
    v46 = *(v45 + 72);
    v47 = *(v45 + 16);
    v48 = v0[44];
    while (1)
    {
      v49 = v0[34];
      v51 = v0[27];
      v50 = v0[28];
      v47(v49, *(v48 + 48) + v43 * v46, v51);
      sub_24AC2B6A8(&qword_27EF9E140, &unk_27EF9E090, &qword_24ACD37C0, MEMORY[0x277D088C0]);
      v52 = sub_24ACD0550();
      v53 = *(v50 + 8);
      v53(v49, v51);
      if (v52)
      {
        break;
      }

      v48 = v0[44];
      v43 = (v43 + 1) & v44;
      if (((*(v48 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v43) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    v54 = v0[35];
    v56 = v0[26];
    v55 = v0[27];
    v58 = v0[23];
    v57 = v0[24];

    v53(v54, v55);
    result = (*(v57 + 8))(v56, v58);
    v30 = v0[48];
    v31 = 0x278FFC000;
    if (v30 == v0[45])
    {
      goto LABEL_40;
    }
  }

LABEL_37:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E148, &qword_24ACD4598);
  inited = swift_initStackObject();
  v0[49] = inited;
  *(inited + 16) = v172;
  swift_allocObject();
  v60 = v172;

  v61 = swift_task_alloc();
  v0[50] = v61;
  *v61 = v0;
  v61[1] = sub_24AC352F0;
  v62 = v0[18];

  return sub_24AC224E8(v62, inited);
}

uint64_t sub_24AC352F0(uint64_t a1)
{
  v3 = *v2;
  v3[51] = a1;
  v3[52] = v1;

  if (v1)
  {
    v4 = v3[18];

    v5 = sub_24AC2654C;
    v6 = v4;
  }

  else
  {
    v6 = v3[18];
    v5 = sub_24AC35454;
  }

  return MEMORY[0x2822009F8](v5, v6, 0);
}

uint64_t sub_24AC35454()
{
  v1 = v0[51];
  v2 = v0[43];
  v3 = v0[35];
  v4 = v0[18];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v4 + v2);
  *(v4 + v2) = 0x8000000000000000;
  sub_24AC635B4(v1, v3, isUniquelyReferenced_nonNull_native);
  *(v4 + v2) = v8;
  swift_endAccess();
  v6 = swift_task_alloc();
  v0[53] = v6;
  *v6 = v0;
  v6[1] = sub_24AC35570;

  return sub_24AC56488();
}

uint64_t sub_24AC35570(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  *(v3 + 432) = a1;
  *(v3 + 440) = a2;

  return MEMORY[0x2822009F8](sub_24AC35688, v4, 0);
}

id sub_24AC35688()
{
  v173 = v0;
  if (qword_27EF9DC38 != -1)
  {
    goto LABEL_89;
  }

  while (1)
  {
    v160 = sub_24ACD0490();
    __swift_project_value_buffer(v160, qword_27EF9E010);

    v1 = sub_24ACD0470();
    v2 = sub_24ACD0930();

    v3 = os_log_type_enabled(v1, v2);
    v4 = v0[55];
    if (v3)
    {
      v152 = v0[54];
      v150 = v0[46];
      v161 = v0[35];
      v155 = v0[28];
      v157 = v0[47];
      v158 = v0[27];
      v163 = v0[24];
      v164 = v0[23];
      v166 = v0[26];
      v6 = v0[21];
      v5 = v0[22];
      v7 = v0[18];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v172 = v9;
      *v8 = 136446466;
      sub_24AC2A3DC(v7 + v150, v5);
      v10 = (v5 + *(v6 + 32));
      v11 = *v10;
      v12 = v10[1];

      sub_24AC47AEC(v5, type metadata accessor for PeerPath);
      v13 = sub_24AC29E20(v11, v12, &v172);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2082;
      v14 = sub_24AC29E20(v152, v4, &v172);

      *(v8 + 14) = v14;
      _os_log_impl(&dword_24AC18000, v1, v2, "%{public}s: Discovered service: %{public}s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C22DC60](v9, -1, -1);
      MEMORY[0x24C22DC60](v8, -1, -1);

      (*(v155 + 8))(v161, v158);
      result = (*(v163 + 8))(v166, v164);
    }

    else
    {
      v16 = v0[47];
      v17 = v0[35];
      v18 = v0[27];
      v19 = v0[28];
      v167 = v0[26];
      v21 = v0[23];
      v20 = v0[24];

      (*(v19 + 8))(v17, v18);
      result = (*(v20 + 8))(v167, v21);
    }

    v22 = v0[48];
    if (v22 != v0[45])
    {
      break;
    }

LABEL_6:

    v23 = v0[43];
    v24 = v0[18];

    v25 = *(v24 + v23);
    v26 = -1;
    v27 = -1 << *(v25 + 32);
    if (-v27 < 64)
    {
      v26 = ~(-1 << -v27);
    }

    v28 = v26 & *(v25 + 64);
    v29 = (63 - v27) >> 6;
    swift_bridgeObjectRetain_n();
    v30 = 0;
    v31 = MEMORY[0x277D84F90];
    v147 = MEMORY[0x277D84F90];
    if (!v28)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      while (1)
      {
        v32 = __clz(__rbit64(v28));
        v28 &= v28 - 1;
        v33 = *(*(v25 + 56) + ((v30 << 9) | (8 * v32)));
        if (v33)
        {
          break;
        }

        if (!v28)
        {
          goto LABEL_11;
        }
      }

      v35 = v0[32];
      v168 = v0[33];
      v37 = v0[27];
      v36 = v0[28];
      (*(v36 + 16))(v35, v33 + OBJC_IVAR____TtC15FindMyBluetooth7Service_id, v37);
      v38 = v168;
      v169 = *(v36 + 32);
      v169(v38, v35, v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_24AC1D2F8(0, v31[2] + 1, 1, v31);
      }

      v40 = v31[2];
      v39 = v31[3];
      if (v40 >= v39 >> 1)
      {
        v31 = sub_24AC1D2F8((v39 > 1), v40 + 1, 1, v31);
      }

      v41 = v0[33];
      v42 = v0[27];
      v43 = v0[28];
      v31[2] = v40 + 1;
      v169(v31 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v40, v41, v42);
    }

    while (v28);
LABEL_11:
    while (1)
    {
      v34 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v34 >= v29)
      {
        v44 = v0[42];

        v45 = sub_24AC653D0(v31);

        if (*(v45 + 16) <= *(v44 + 16) >> 3)
        {
          v172 = v0[42];
          sub_24AC5A844(v45);

          v162 = v172;
        }

        else
        {
          v162 = sub_24AC5B4D0(v45, v0[42]);
        }

        v77 = 0;
        v78 = v162 + 56;
        v79 = -1;
        v80 = -1 << *(v162 + 32);
        if (-v80 < 64)
        {
          v79 = ~(-1 << -v80);
        }

        v81 = v79 & *(v162 + 56);
        v149 = v0[18];
        v151 = v0[21];
        v148 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath;
        v82 = (63 - v80) >> 6;
        v165 = (v0[28] + 8);
        v156 = v82;
        while (2)
        {
          if (!v81)
          {
            while (1)
            {
              v87 = v77 + 1;
              if (__OFADD__(v77, 1))
              {
                goto LABEL_86;
              }

              if (v87 >= v82)
              {

                v133 = v0[18];
                v134 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_services;
                swift_beginAccess();
                v135 = *(v133 + v134);
                v136 = *(v135 + 64);
                v172 = MEMORY[0x277D84F90];
                v137 = -1;
                v138 = -1 << *(v135 + 32);
                if (-v138 < 64)
                {
                  v137 = ~(-1 << -v138);
                }

                v139 = v137 & v136;
                v140 = (63 - v138) >> 6;
                swift_bridgeObjectRetain_n();
                v141 = 0;
                if (!v139)
                {
                  goto LABEL_71;
                }

                do
                {
LABEL_69:
                  while (1)
                  {
                    v142 = __clz(__rbit64(v139));
                    v139 &= v139 - 1;
                    if (*(*(v135 + 56) + ((v141 << 9) | (8 * v142))))
                    {
                      break;
                    }

                    if (!v139)
                    {
                      goto LABEL_71;
                    }
                  }

                  MEMORY[0x24C22CE30](v144);
                  if (*((v172 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v172 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_24ACD0720();
                  }

                  sub_24ACD0730();
                  v147 = v172;
                }

                while (v139);
LABEL_71:
                while (1)
                {
                  v143 = v141 + 1;
                  if (__OFADD__(v141, 1))
                  {
                    goto LABEL_87;
                  }

                  if (v143 >= v140)
                  {
                    v145 = v0[17];

                    *v145 = v147;

                    v146 = v0[1];

                    return v146();
                  }

                  v139 = *(v135 + 64 + 8 * v143);
                  ++v141;
                  if (v139)
                  {
                    v141 = v143;
                    goto LABEL_69;
                  }
                }
              }

              v81 = *(v78 + 8 * v87);
              ++v77;
              if (v81)
              {
                v77 = v87;
                break;
              }
            }
          }

          v88 = v0[30];
          v89 = v0[31];
          v91 = v0[27];
          v90 = v0[28];
          v159 = *(v90 + 72);
          v171 = *(v90 + 16);
          v171(v89, *(v162 + 48) + v159 * (__clz(__rbit64(v81)) | (v77 << 6)), v91);
          (*(v90 + 32))(v88, v89, v91);
          if (qword_27EF9DC38 != -1)
          {
            swift_once();
          }

          v92 = v0[29];
          v93 = v0[30];
          v94 = v0[27];
          __swift_project_value_buffer(v160, qword_27EF9E010);
          v171(v92, v93, v94);

          v95 = sub_24ACD0470();
          v96 = sub_24ACD0930();

          v97 = os_log_type_enabled(v95, v96);
          v98 = v0[29];
          v99 = v0[27];
          if (v97)
          {
            v100 = v95;
            v101 = v0[22];
            v102 = swift_slowAlloc();
            v154 = swift_slowAlloc();
            v172 = v154;
            *v102 = 136446466;
            sub_24AC2A3DC(v149 + v148, v101);
            v103 = (v101 + *(v151 + 32));
            v153 = v96;
            v105 = *v103;
            v104 = v103[1];

            sub_24AC47AEC(v101, type metadata accessor for PeerPath);
            v106 = sub_24AC29E20(v105, v104, &v172);

            *(v102 + 4) = v106;
            *(v102 + 12) = 2082;
            sub_24AC2B6A8(&qword_27EF9E0D0, &unk_27EF9E090, &qword_24ACD37C0, MEMORY[0x277D088C8]);
            v107 = sub_24ACD0C20();
            v109 = v108;
            v110 = *v165;
            (*v165)(v98, v99);
            v111 = sub_24AC29E20(v107, v109, &v172);
            v112 = v171;

            *(v102 + 14) = v111;
            _os_log_impl(&dword_24AC18000, v100, v153, "%{public}s: No service discovered for %{public}s", v102, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x24C22DC60](v154, -1, -1);
            MEMORY[0x24C22DC60](v102, -1, -1);
          }

          else
          {
            v112 = v171;

            v110 = *v165;
            (*v165)(v98, v99);
          }

          v113 = v0[43];
          v114 = v0[30];
          v115 = v0[18];
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v117 = *(v115 + v113);
          v172 = v117;
          v118 = sub_24AC2ACC8(v114);
          v120 = v117[2];
          v121 = (v119 & 1) == 0;
          v122 = __OFADD__(v120, v121);
          v123 = v120 + v121;
          if (v122)
          {
            goto LABEL_88;
          }

          v124 = v119;
          if (v117[3] >= v123)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_61;
            }

            v132 = v118;
            sub_24AC5E828();
            v118 = v132;
            v117 = v172;
            if (v124)
            {
              goto LABEL_44;
            }

LABEL_62:
            v127 = v0[30];
            v128 = v0[27];
            v117[(v118 >> 6) + 8] |= 1 << v118;
            v129 = v118;
            result = v112(v117[6] + v118 * v159, v127, v128);
            *(v117[7] + 8 * v129) = 0;
            v130 = v117[2];
            v122 = __OFADD__(v130, 1);
            v131 = v130 + 1;
            if (v122)
            {
              __break(1u);
              goto LABEL_91;
            }

            v117[2] = v131;
            v84 = 1;
          }

          else
          {
            v125 = v0[30];
            sub_24AC5C5E0(v123, isUniquelyReferenced_nonNull_native);
            v117 = v172;
            v118 = sub_24AC2ACC8(v125);
            if ((v124 & 1) != (v126 & 1))
            {

              return sub_24ACD0C80();
            }

LABEL_61:
            if ((v124 & 1) == 0)
            {
              goto LABEL_62;
            }

LABEL_44:
            v83 = v117[7];
            v84 = *(v83 + 8 * v118);
            *(v83 + 8 * v118) = 0;
          }

          v81 &= v81 - 1;
          v85 = v0[30];
          v86 = v0[27];
          *(v0[18] + v0[43]) = v117;
          sub_24AC2B7BC(v84);
          swift_endAccess();
          v110(v85, v86);
          v82 = v156;
          v78 = v162 + 56;
          continue;
        }
      }

      v28 = *(v25 + 64 + 8 * v34);
      ++v30;
      if (v28)
      {
        v30 = v34;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    swift_once();
  }

  v46 = 0x278FFC000uLL;
  while (1)
  {
    v47 = v0[41];
    if ((v47 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x24C22D1B0](v22);
    }

    else
    {
      if (v22 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_92;
      }

      result = *(v47 + 8 * v22 + 32);
    }

    v0[47] = result;
    v0[48] = v22 + 1;
    if (__OFADD__(v22, 1))
    {
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
      return result;
    }

    v48 = v0[44];
    v50 = v0[25];
    v49 = v0[26];
    v51 = v0[23];
    v52 = v0[24];
    v170 = result;
    v53 = [result *(v46 + 3992)];
    CBUUID.uuidValue.getter(v49);

    (*(v52 + 16))(v50, v49, v51);
    type metadata accessor for Service(0);
    sub_24ACD0000();
    if (!*(v48 + 16))
    {
      break;
    }

    v54 = v0[44];
    sub_24AC2B6A8(&qword_27EF9DFD8, &unk_27EF9E090, &qword_24ACD37C0, MEMORY[0x277D088B8]);
    v55 = sub_24ACD0520();
    v56 = -1 << *(v54 + 32);
    v57 = v55 & ~v56;
    if (((*(v54 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v57) & 1) == 0)
    {
      break;
    }

    v58 = ~v56;
    v59 = v0[28];
    v60 = *(v59 + 72);
    v61 = *(v59 + 16);
    v62 = v0[44];
    while (1)
    {
      v63 = v0[34];
      v64 = v0[27];
      v65 = v0[28];
      v61(v63, *(v62 + 48) + v57 * v60, v64);
      sub_24AC2B6A8(&qword_27EF9E140, &unk_27EF9E090, &qword_24ACD37C0, MEMORY[0x277D088C0]);
      v66 = sub_24ACD0550();
      v67 = *(v65 + 8);
      v67(v63, v64);
      if (v66)
      {
        break;
      }

      v62 = v0[44];
      v57 = (v57 + 1) & v58;
      if (((*(v62 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v57) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    v68 = v0[35];
    v70 = v0[26];
    v69 = v0[27];
    v71 = v0[23];
    v72 = v0[24];

    v67(v68, v69);
    result = (*(v72 + 8))(v70, v71);
    v22 = v0[48];
    v46 = 0x278FFC000;
    if (v22 == v0[45])
    {
      goto LABEL_6;
    }
  }

LABEL_37:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E148, &qword_24ACD4598);
  inited = swift_initStackObject();
  v0[49] = inited;
  *(inited + 16) = v170;
  swift_allocObject();
  v74 = v170;

  v75 = swift_task_alloc();
  v0[50] = v75;
  *v75 = v0;
  v75[1] = sub_24AC352F0;
  v76 = v0[18];

  return sub_24AC224E8(v76, inited);
}

uint64_t sub_24AC365F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v15 = *(v14 - 8);
  (*(v15 + 16))(v13, a1, v14);
  (*(v15 + 56))(v13, 0, 1, v14);
  v16 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_discoverServicesContinuation;
  swift_beginAccess();
  sub_24AC463C4(v13, a2 + v16, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();
  v17 = sub_24ACD07C0();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  v18 = sub_24AC46D0C(&unk_2814AE1A8, type metadata accessor for Peripheral, "ayV7܏");
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = v18;
  v19[4] = a3;
  v19[5] = a2;
  v19[6] = a4;

  swift_retain_n();
  sub_24AC7EA6C(0, 0, v10, &unk_24ACD45A8, v19);
}

uint64_t sub_24AC36880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[5] = type metadata accessor for PeerPath(0);
  v5[6] = swift_task_alloc();
  v7 = sub_24ACD0420();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC369DC, a5, 0);
}

uint64_t sub_24AC369DC()
{
  v40 = v0;
  v1 = v0[3];
  if (v1)
  {
    v2 = *(v1 + 16);
    v3 = MEMORY[0x277D84F90];
    if (v2)
    {
      v4 = v0[11];
      v5 = v0[8];
      v39 = MEMORY[0x277D84F90];
      sub_24ACD0AB0();
      v6 = objc_opt_self();
      v7 = *(v4 + 16);
      v4 += 16;
      v37 = v7;
      v38 = v6;
      v8 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
      v35 = (v5 + 8);
      v36 = *(v4 + 56);
      v9 = (v4 - 8);
      do
      {
        v10 = v0[12];
        v12 = v0[9];
        v11 = v0[10];
        v13 = v0[7];
        v37(v10, v8, v11);
        sub_24ACCFFE0();
        v14 = sub_24ACD03D0();
        v15 = [v38 UUIDWithNSUUID_];

        (*v35)(v12, v13);
        (*v9)(v10, v11);
        sub_24ACD0A90();
        sub_24ACD0AC0();
        sub_24ACD0AD0();
        sub_24ACD0AA0();
        v8 += v36;
        --v2;
      }

      while (v2);
      v3 = v39;
    }
  }

  else
  {
    v3 = 0;
  }

  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v16 = sub_24ACD0490();
  __swift_project_value_buffer(v16, qword_27EF9E010);

  v17 = sub_24ACD0470();
  v18 = sub_24ACD0930();

  if (os_log_type_enabled(v17, v18))
  {
    v20 = v0[5];
    v19 = v0[6];
    v21 = v0[4];
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v39 = v23;
    *v22 = 136446466;
    sub_24AC2A3DC(v21 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v19);
    v24 = (v19 + *(v20 + 32));
    v25 = *v24;
    v26 = v24[1];

    sub_24AC47AEC(v19, type metadata accessor for PeerPath);
    v27 = sub_24AC29E20(v25, v26, &v39);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2082;
    v0[2] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E158, &qword_24ACD45B0);
    v28 = sub_24ACD05A0();
    v30 = sub_24AC29E20(v28, v29, &v39);

    *(v22 + 14) = v30;
    _os_log_impl(&dword_24AC18000, v17, v18, "%{public}s: Calling discoverServices: %{public}s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v23, -1, -1);
    MEMORY[0x24C22DC60](v22, -1, -1);
  }

  else
  {
  }

  v31 = *(v0[4] + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject);
  if (v3)
  {
    sub_24AC2B8F8(0, &qword_27EF9E150, 0x277CBE0A0);
    v32 = sub_24ACD06F0();
  }

  else
  {
    v32 = 0;
  }

  [v31 discoverServices_];

  v33 = v0[1];

  return v33();
}

uint64_t sub_24AC36E1C(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for PeerPath(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v15 = sub_24ACD0490();
  __swift_project_value_buffer(v15, qword_27EF9E010);

  v16 = sub_24ACD0470();
  v17 = sub_24ACD0930();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31 = a4;
    v32 = v19;
    v20 = v19;
    *v18 = 136446210;
    sub_24AC2A3DC(a1 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v14);
    v21 = &v14[*(v12 + 32)];
    v30 = a3;
    v22 = a5;
    v24 = *v21;
    v23 = v21[1];

    sub_24AC47AEC(v14, type metadata accessor for PeerPath);
    v25 = sub_24AC29E20(v24, v23, &v32);
    a5 = v22;

    *(v18 + 4) = v25;
    _os_log_impl(&dword_24AC18000, v16, v17, v30, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x24C22DC60](v20, -1, -1);
    MEMORY[0x24C22DC60](v18, -1, -1);
  }

  sub_24ACD07A0();
  v26 = sub_24ACD07C0();
  (*(*(v26 - 8) + 56))(v11, 0, 1, v26);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = a1;

  sub_24AC7F080(0, 0, v11, a5, v27);
}

uint64_t sub_24AC37118()
{
  sub_24AC371CC(&OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_discoverServicesContinuation);
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_24AC315CC;

  return sub_24AC318F0((v0 + 16));
}

uint64_t sub_24AC371CC(uint64_t *a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v17 - v12;
  v14 = *a1;
  swift_beginAccess();
  sub_24AC2B5DC(v3 + v14, v13, &qword_27EF9E4F0, &unk_24ACD4130);
  if ((*(v5 + 48))(v13, 1, v4))
  {
    sub_24AC212F4(v13, &qword_27EF9E4F0, &unk_24ACD4130);
  }

  else
  {
    (*(v5 + 16))(v7, v13, v4);
    sub_24AC212F4(v13, &qword_27EF9E4F0, &unk_24ACD4130);
    sub_24ACD0770();
    sub_24AC46D0C(qword_2814AD050, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    v15 = swift_allocError();
    sub_24ACD04E0();
    v17[0] = v15;
    sub_24ACD0750();
    (*(v5 + 8))(v7, v4);
  }

  (*(v5 + 56))(v11, 1, 1, v4);
  swift_beginAccess();
  sub_24AC463C4(v11, v3 + v14, &qword_27EF9E4F0, &unk_24ACD4130);
  return swift_endAccess();
}

uint64_t sub_24AC37498(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_24ACD0420();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = type metadata accessor for PeerPath(0);
  v2[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC375F0, v1, 0);
}

uint64_t sub_24AC375F0()
{
  v49 = v0;
  v1 = v0[6];
  v2 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_services;
  v0[15] = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_services;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v4 = v0[5];

    v5 = sub_24AC2ACC8(v4);
    if (v6)
    {
      v7 = *(*(v3 + 56) + 8 * v5);

      if (v7)
      {

        v8 = v0[1];

        return v8(v7);
      }
    }

    else
    {
    }
  }

  v10 = v0[6];
  v11 = *(v10 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_autoDiscoverCount);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
LABEL_18:
    swift_once();
LABEL_11:
    v15 = v0[13];
    v14 = v0[14];
    v16 = v0[12];
    v17 = v0[5];
    v18 = sub_24ACD0490();
    __swift_project_value_buffer(v18, qword_27EF9E010);
    (*(v15 + 16))(v14, v17, v16);

    v19 = sub_24ACD0470();
    v20 = sub_24ACD0910();

    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[13];
    v23 = v0[14];
    v24 = v0[12];
    if (v21)
    {
      v47 = v20;
      v26 = v0[10];
      v25 = v0[11];
      v27 = v0[9];
      v28 = v0[6];
      v44 = v0[7];
      v45 = v0[8];
      v29 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v48 = v46;
      *v29 = 136446466;
      sub_24AC2A3DC(v28 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v25);
      v30 = (v25 + *(v26 + 32));
      v32 = *v30;
      v31 = v30[1];

      sub_24AC47AEC(v25, type metadata accessor for PeerPath);
      v33 = sub_24AC29E20(v32, v31, &v48);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2082;
      sub_24ACCFFE0();
      sub_24AC46D0C(&qword_27EF9E4E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v34 = sub_24ACD0C20();
      v36 = v35;
      (*(v45 + 8))(v27, v44);
      (*(v22 + 8))(v23, v24);
      v37 = sub_24AC29E20(v34, v36, &v48);

      *(v29 + 14) = v37;
      _os_log_impl(&dword_24AC18000, v19, v47, "%{public}s: Inefficient autoDiscovery for %{public}s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C22DC60](v46, -1, -1);
      MEMORY[0x24C22DC60](v29, -1, -1);
    }

    else
    {

      (*(v22 + 8))(v23, v24);
    }

    goto LABEL_14;
  }

  *(v10 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_autoDiscoverCount) = v13;
  if (v13 >= 2)
  {
    if (qword_27EF9DC38 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_14:
  v38 = v0[12];
  v39 = v0[13];
  v40 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9DDD0, &qword_24ACD37B8);
  v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v42 = swift_allocObject();
  v0[16] = v42;
  *(v42 + 16) = xmmword_24ACD39E0;
  (*(v39 + 16))(v42 + v41, v40, v38);
  v43 = swift_task_alloc();
  v0[17] = v43;
  *v43 = v0;
  v43[1] = sub_24AC37AA4;

  return sub_24AC338AC(v42);
}

uint64_t sub_24AC37AA4(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v4 = *(v3 + 48);
    v5 = sub_24AC280D8;
  }

  else
  {
    v6 = *(v3 + 48);

    v5 = sub_24AC37BEC;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AC37BEC()
{
  v1 = *(v0[6] + v0[15]);
  if (*(v1 + 16))
  {
    v2 = v0[5];

    v3 = sub_24AC2ACC8(v2);
    if (v4)
    {
      v5 = *(*(v1 + 56) + 8 * v3);

      if (v5)
      {

        v6 = v0[1];

        return v6(v5);
      }
    }

    else
    {
    }
  }

  type metadata accessor for CentralManager.Error(0);
  sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

void sub_24AC37DA8(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject);
  v6 = sub_24ACD0560();
  [v5 *a3];
}

id sub_24AC37E08(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject);
  v4 = sub_24ACD0560();
  v5 = [v3 hasTag_];

  return v5;
}

void sub_24AC37E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject);
  v6 = sub_24ACD0560();
  v7 = sub_24ACD0560();
  [v5 setCustomProperty:v6 value:v7];
}

uint64_t sub_24AC37EE0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject);
  v4 = sub_24ACD0560();
  v5 = [v3 customProperty_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_24ACD0590();

  return v6;
}

uint64_t sub_24AC37F88()
{
  v1 = [*(*(v0 + 16) + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject) customPropertyNames];
  if (v1)
  {
    v2 = v1;
    v3 = sub_24ACD0700();
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_24AC3803C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_id;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24AC380C0(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_24AC380E0, v1, 0);
}

uint64_t sub_24AC380E0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_macAddress;
  swift_beginAccess();
  sub_24AC2B5DC(v1 + v3, v2, &qword_27EF9E048, &qword_24ACD5910);
  v4 = v0[1];

  return v4();
}

uint64_t sub_24AC3817C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AC3819C, v1, 0);
}

uint64_t sub_24AC3819C()
{
  sub_24AC2CCF4(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC381FC(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_24AC3821C, v1, 0);
}

uint64_t sub_24AC3821C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_lastSeen;
  swift_beginAccess();
  v4 = sub_24ACD0360();
  (*(*(v4 - 8) + 16))(v2, v1 + v3, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_24AC382E8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AC38308, v1, 0);
}

uint64_t sub_24AC38308()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 32) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24AC38430, Strong, 0);
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_24AC38430()
{
  sub_24AC7FB24(*(v0 + 24), *(v0 + 16));
  *(v0 + 40) = 0;
  v1 = *(v0 + 24);

  return MEMORY[0x2822009F8](sub_24AC47C24, v1, 0);
}

uint64_t sub_24AC384C4()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E068, &qword_24ACD4140);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC38560, v0, 0);
}

uint64_t sub_24AC38560()
{
  v1 = *(v0 + 24);
  *(v0 + 48) = 20;
  v2 = type metadata accessor for Peripheral.Options(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_24AC38644;
  v4 = *(v0 + 24);

  return sub_24AC2F77C((v0 + 48), v4);
}

uint64_t sub_24AC38644()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  v3[5] = v0;

  sub_24AC212F4(v2, &qword_27EF9E068, &qword_24ACD4140);
  if (v0)
  {
    v4 = v3[2];

    return MEMORY[0x2822009F8](sub_24AC47C0C, v4, 0);
  }

  else
  {

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_24AC387B8(_BYTE *a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AC214AC;

  return sub_24AC2F77C(a1, a2);
}

uint64_t sub_24AC3885C()
{
  *(v1 + 32) = v0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v2 = swift_task_alloc();
  *(v1 + 40) = v2;
  *v2 = v1;
  v2[1] = sub_24AC315CC;

  return sub_24AC318F0((v1 + 16));
}

uint64_t sub_24AC38900(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC20274;

  return sub_24AC318F0(a1);
}

uint64_t sub_24AC38994()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC38A20;

  return sub_24AC326A0();
}

uint64_t sub_24AC38A20(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_24AC38B28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC214AC;

  return sub_24AC32978();
}

uint64_t sub_24AC38BB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC214AC;

  return sub_24AC32DD8();
}

uint64_t sub_24AC38C40(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214AC;

  return sub_24AC33170(a1);
}

uint64_t sub_24AC38CD4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC1E290;

  return sub_24AC338AC(a1);
}

uint64_t sub_24AC38D68(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214BC;

  return sub_24AC37498(a1);
}

uint64_t sub_24AC38DFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC283BC;

  return sub_24AC80CDC();
}

uint64_t sub_24AC38EC0()
{
  sub_24ACD0A20();

  v0 = type metadata accessor for MockPeripheral(0);
  v1 = sub_24AC46D0C(&qword_27EF9E100, type metadata accessor for MockPeripheral, &protocol conformance descriptor for MockPeripheral);
  v2 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v2);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v3 = MEMORY[0x24C22D370](v0, v1);
  MEMORY[0x24C22CD50](v3);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  sub_24AC2B6A8(&qword_27EF9E108, &qword_27EF9E040, qword_24ACD4100, MEMORY[0x277D088C8]);
  v4 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v4);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_24AC39074()
{
  sub_24ACD0A20();

  v0 = type metadata accessor for Peripheral(0);
  v1 = sub_24AC46D0C(&qword_2814AE1A0, type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v2 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v2);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v3 = MEMORY[0x24C22D370](v0, v1);
  MEMORY[0x24C22CD50](v3);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  sub_24AC2B6A8(&qword_27EF9E108, &qword_27EF9E040, qword_24ACD4100, MEMORY[0x277D088C8]);
  v4 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v4);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_24AC39224(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v2[34] = v3;
  v2[35] = *(v3 - 8);
  v2[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = type metadata accessor for PeerPath(0);
  v2[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC39388, v1, 0);
}

uint64_t sub_24AC39388()
{
  v95 = v0;
  if (qword_27EF9DC38 != -1)
  {
LABEL_40:
    swift_once();
  }

  v1 = v0[32];
  v2 = sub_24ACD0490();
  __swift_project_value_buffer(v2, qword_27EF9E010);

  v3 = v1;
  v4 = sub_24ACD0470();
  v5 = sub_24ACD0930();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[42];
    v7 = v0[43];
    v8 = v0[33];
    v93 = v0[32];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v94 = v11;
    *v9 = 136446722;
    sub_24AC2A3DC(v8 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v7);
    v12 = (v7 + *(v6 + 32));
    v14 = *v12;
    v13 = v12[1];

    sub_24AC47AEC(v7, type metadata accessor for PeerPath);
    v15 = sub_24AC29E20(v14, v13, &v94);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2082;
    v16 = sub_24AC39074();
    v18 = sub_24AC29E20(v16, v17, &v94);

    *(v9 + 14) = v18;
    *(v9 + 22) = 2114;
    v19 = v93;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v20;
    *v10 = v20;
    _os_log_impl(&dword_24AC18000, v4, v5, "%{public}s: Invalidated peripheral: %{public}s error %{public}@", v9, 0x20u);
    sub_24AC212F4(v10, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v11, -1, -1);
    MEMORY[0x24C22DC60](v9, -1, -1);
  }

  if ((sub_24ACD0840() & 1) == 0)
  {
    v21 = v0[41];
    v22 = v0[34];
    v23 = v0[35];
    v24 = v0[33];
    v25 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_pairingContinuation;
    swift_beginAccess();
    sub_24AC2B5DC(v24 + v25, v21, &qword_27EF9E4F0, &unk_24ACD4130);
    v26 = *(v23 + 48);
    v27 = v26(v21, 1, v22);
    v28 = v0[41];
    if (v27)
    {
      sub_24AC212F4(v0[41], &qword_27EF9E4F0, &unk_24ACD4130);
    }

    else
    {
      v30 = v0[35];
      v29 = v0[36];
      v31 = v0[34];
      v32 = v0[32];
      (*(v30 + 16))(v29, v0[41], v31);
      sub_24AC212F4(v28, &qword_27EF9E4F0, &unk_24ACD4130);
      v0[31] = v32;
      v33 = v32;
      sub_24ACD0750();
      (*(v30 + 8))(v29, v31);
    }

    v34 = v0[40];
    v36 = v0[33];
    v35 = v0[34];
    v37 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_connectContinuation;
    swift_beginAccess();
    sub_24AC2B5DC(v36 + v37, v34, &qword_27EF9E4F0, &unk_24ACD4130);
    v38 = v26(v34, 1, v35);
    v39 = v0[40];
    if (v38)
    {
      sub_24AC212F4(v0[40], &qword_27EF9E4F0, &unk_24ACD4130);
    }

    else
    {
      v41 = v0[35];
      v40 = v0[36];
      v42 = v0[34];
      v43 = v0[32];
      (*(v41 + 16))(v40, v0[40], v42);
      sub_24AC212F4(v39, &qword_27EF9E4F0, &unk_24ACD4130);
      v0[30] = v43;
      v44 = v43;
      sub_24ACD0750();
      (*(v41 + 8))(v40, v42);
    }

    v45 = v0[39];
    v47 = v0[33];
    v46 = v0[34];
    v48 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_cancelConnectContinuation;
    swift_beginAccess();
    sub_24AC2B5DC(v47 + v48, v45, &qword_27EF9E4F0, &unk_24ACD4130);
    v49 = v26(v45, 1, v46);
    v50 = v0[39];
    if (v49)
    {
      sub_24AC212F4(v0[39], &qword_27EF9E4F0, &unk_24ACD4130);
    }

    else
    {
      v52 = v0[35];
      v51 = v0[36];
      v53 = v0[34];
      (*(v52 + 16))(v51, v0[39], v53);
      sub_24AC212F4(v50, &qword_27EF9E4F0, &unk_24ACD4130);
      sub_24ACD0760();
      (*(v52 + 8))(v51, v53);
    }

    v54 = v0[38];
    v56 = v0[33];
    v55 = v0[34];
    v57 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_discoverServicesContinuation;
    swift_beginAccess();
    sub_24AC2B5DC(v56 + v57, v54, &qword_27EF9E4F0, &unk_24ACD4130);
    v58 = v26(v54, 1, v55);
    v59 = v0[38];
    if (v58)
    {
      sub_24AC212F4(v0[38], &qword_27EF9E4F0, &unk_24ACD4130);
    }

    else
    {
      v61 = v0[35];
      v60 = v0[36];
      v62 = v0[34];
      v63 = v0[32];
      (*(v61 + 16))(v60, v0[38], v62);
      sub_24AC212F4(v59, &qword_27EF9E4F0, &unk_24ACD4130);
      v0[29] = v63;
      v64 = v63;
      sub_24ACD0750();
      (*(v61 + 8))(v60, v62);
    }
  }

  v65 = v0[37];
  v66 = v0[34];
  v67 = v0[33];
  v68 = *(v0[35] + 56);
  v68(v65, 1, 1, v66);
  v69 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_pairingContinuation;
  swift_beginAccess();
  sub_24AC463C4(v65, v67 + v69, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();
  v68(v65, 1, 1, v66);
  v70 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_connectContinuation;
  swift_beginAccess();
  sub_24AC463C4(v65, v67 + v70, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();
  v68(v65, 1, 1, v66);
  v71 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_cancelConnectContinuation;
  swift_beginAccess();
  sub_24AC463C4(v65, v67 + v71, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();
  v68(v65, 1, 1, v66);
  v72 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_discoverServicesContinuation;
  swift_beginAccess();
  sub_24AC463C4(v65, v67 + v72, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();
  v73 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_services;
  v0[44] = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_services;
  swift_beginAccess();
  v74 = *(v67 + v73);
  v75 = MEMORY[0x277D84F90];
  v76 = *(v74 + 64);
  v94 = MEMORY[0x277D84F90];
  v77 = -1;
  v78 = -1 << *(v74 + 32);
  if (-v78 < 64)
  {
    v77 = ~(-1 << -v78);
  }

  v79 = v77 & v76;
  v80 = (63 - v78) >> 6;
  swift_bridgeObjectRetain_n();
  v81 = 0;
LABEL_20:
  v0[45] = v75;
  while (v79)
  {
LABEL_21:
    v82 = __clz(__rbit64(v79));
    v79 &= v79 - 1;
    if (*(*(v74 + 56) + ((v81 << 9) | (8 * v82))))
    {

      MEMORY[0x24C22CE30](v84);
      if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24ACD0720();
      }

      sub_24ACD0730();
      v75 = v94;
      goto LABEL_20;
    }
  }

  while (1)
  {
    v83 = v81 + 1;
    if (__OFADD__(v81, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v83 >= v80)
    {
      break;
    }

    v79 = *(v74 + 64 + 8 * v83);
    ++v81;
    if (v79)
    {
      v81 = v83;
      goto LABEL_21;
    }
  }

  if (v75 >> 62)
  {
    result = sub_24ACD0B30();
    v0[46] = result;
    if (result)
    {
LABEL_32:
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        v0[47] = 0;
        v86 = v0[45];
        if ((v86 & 0xC000000000000001) != 0)
        {
          v87 = MEMORY[0x24C22D1B0](0);
        }

        else
        {
          v87 = *(v86 + 32);
        }

        v0[48] = v87;
        v88 = swift_task_alloc();
        v0[49] = v88;
        *v88 = v0;
        v88[1] = sub_24AC39DD0;
        v89 = v0[32];

        return sub_24AC28A50(v89);
      }

      return result;
    }
  }

  else
  {
    result = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[46] = result;
    if (result)
    {
      goto LABEL_32;
    }
  }

  v90 = v0[44];
  v91 = v0[33];

  *(v91 + v90) = MEMORY[0x277D84F98];

  v92 = v0[1];

  return v92();
}

uint64_t sub_24AC39DD0()
{
  v1 = *(*v0 + 264);

  return MEMORY[0x2822009F8](sub_24AC39EE0, v1, 0);
}

uint64_t sub_24AC39EE0()
{
  v1 = v0[47];
  v2 = v0[46];

  if (v1 + 1 == v2)
  {
    v3 = v0[44];
    v4 = v0[33];

    *(v4 + v3) = MEMORY[0x277D84F98];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[47] + 1;
    v0[47] = v7;
    v8 = v0[45];
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x24C22D1B0]();
    }

    else
    {
      v9 = *(v8 + 8 * v7 + 32);
    }

    v0[48] = v9;
    v10 = swift_task_alloc();
    v0[49] = v10;
    *v10 = v0;
    v10[1] = sub_24AC39DD0;
    v11 = v0[32];

    return sub_24AC28A50(v11);
  }
}

uint64_t sub_24AC3A08C()
{
  v1[8] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = type metadata accessor for PeerPath(0);
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC3A1CC, v0, 0);
}

uint64_t sub_24AC3A1CC()
{
  v27 = v0;
  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v1 = sub_24ACD0490();
  __swift_project_value_buffer(v1, qword_27EF9E010);

  v2 = sub_24ACD0470();
  v3 = sub_24ACD0930();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[14];
    v4 = v0[15];
    v6 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136446210;
    sub_24AC2A3DC(v6 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v4);
    v9 = (v4 + *(v5 + 32));
    v10 = *v9;
    v11 = v9[1];

    sub_24AC47AEC(v4, type metadata accessor for PeerPath);
    v12 = sub_24AC29E20(v10, v11, &v26);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_24AC18000, v2, v3, "%{public}s: connected.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C22DC60](v8, -1, -1);
    MEMORY[0x24C22DC60](v7, -1, -1);
  }

  v13 = v0[13];
  v14 = v0[9];
  v15 = v0[10];
  v16 = v0[8];
  v17 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_connectContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v16 + v17, v13, &qword_27EF9E4F0, &unk_24ACD4130);
  v18 = (*(v15 + 48))(v13, 1, v14);
  v19 = v0[13];
  if (v18)
  {
    sub_24AC212F4(v0[13], &qword_27EF9E4F0, &unk_24ACD4130);
  }

  else
  {
    v21 = v0[10];
    v20 = v0[11];
    v22 = v0[9];
    (*(v21 + 16))(v20, v0[13], v22);
    sub_24AC212F4(v19, &qword_27EF9E4F0, &unk_24ACD4130);
    sub_24ACD0760();
    (*(v21 + 8))(v20, v22);
  }

  v23 = v0[12];
  (*(v0[10] + 56))(v23, 1, 1, v0[9]);
  swift_beginAccess();
  sub_24AC463C4(v23, v16 + v17, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();

  v24 = v0[1];

  return v24();
}

uint64_t sub_24AC3A510(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = type metadata accessor for PeerPath(0);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC3A65C, v1, 0);
}

uint64_t sub_24AC3A65C()
{
  v42 = v0;
  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = sub_24ACD0490();
  __swift_project_value_buffer(v2, qword_27EF9E010);

  v3 = v1;
  v4 = sub_24ACD0470();
  v5 = sub_24ACD0910();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[20];
    v6 = v0[21];
    v8 = v0[13];
    v40 = v0[12];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v41 = v11;
    *v9 = 136446466;
    sub_24AC2A3DC(v8 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v6);
    v12 = (v6 + *(v7 + 32));
    v13 = *v12;
    v14 = v12[1];

    sub_24AC47AEC(v6, type metadata accessor for PeerPath);
    v15 = sub_24AC29E20(v13, v14, &v41);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2114;
    v16 = v40;
    if (v40)
    {
      v17 = v1;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      v16 = v18;
    }

    else
    {
      v18 = 0;
    }

    *(v9 + 14) = v18;
    *v10 = v16;
    _os_log_impl(&dword_24AC18000, v4, v5, "%{public}s: failedToConnect: %{public}@", v9, 0x16u);
    sub_24AC212F4(v10, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C22DC60](v11, -1, -1);
    MEMORY[0x24C22DC60](v9, -1, -1);
  }

  v19 = v0[13];
  v20 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_connectContinuation;
  v21 = v0[14];
  v22 = (v0[15] + 48);
  if (v0[12])
  {
    v23 = v0[19];
    swift_beginAccess();
    sub_24AC2B5DC(v19 + v20, v23, &qword_27EF9E4F0, &unk_24ACD4130);
    v24 = (*v22)(v23, 1, v21);
    v25 = v0[19];
    if (!v24)
    {
      v27 = v0[15];
      v26 = v0[16];
      v28 = v0[14];
      (*(v27 + 16))(v26, v0[19], v28);
      v29 = v1;
      sub_24AC212F4(v25, &qword_27EF9E4F0, &unk_24ACD4130);
      v0[11] = v1;
      sub_24ACD0750();
      (*(v27 + 8))(v26, v28);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v30 = v0[18];
  swift_beginAccess();
  sub_24AC2B5DC(v19 + v20, v30, &qword_27EF9E4F0, &unk_24ACD4130);
  v31 = (*v22)(v30, 1, v21);
  v25 = v0[18];
  if (v31)
  {
LABEL_12:
    sub_24AC212F4(v25, &qword_27EF9E4F0, &unk_24ACD4130);
    goto LABEL_13;
  }

  v38 = v0[15];
  v37 = v0[16];
  v39 = v0[14];
  (*(v38 + 16))(v37, v0[18], v39);
  sub_24AC212F4(v25, &qword_27EF9E4F0, &unk_24ACD4130);
  sub_24ACD0760();
  (*(v38 + 8))(v37, v39);
LABEL_13:
  v32 = v0[17];
  v33 = v0[13];
  (*(v0[15] + 56))(v32, 1, 1, v0[14]);
  v34 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_connectContinuation;
  swift_beginAccess();
  sub_24AC463C4(v32, v33 + v34, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();

  v35 = v0[1];

  return v35();
}

uint64_t sub_24AC3AB10(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = type metadata accessor for PeerPath(0);
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC3AC5C, v1, 0);
}

uint64_t sub_24AC3AC5C()
{
  v56 = v0;
  v1 = v0[15];
  if (v1)
  {
    v2 = v1;
    if (qword_27EF9DC38 != -1)
    {
      swift_once();
    }

    v3 = sub_24ACD0490();
    __swift_project_value_buffer(v3, qword_27EF9E010);
    v4 = v1;

    v5 = sub_24ACD0470();
    v6 = sub_24ACD0910();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = v0[23];
      v7 = v0[24];
      v9 = v0[16];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v55 = v12;
      *v10 = 136446466;
      sub_24AC2A3DC(v9 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v7);
      v13 = (v7 + *(v8 + 32));
      v14 = *v13;
      v15 = v13[1];

      sub_24AC47AEC(v7, type metadata accessor for PeerPath);
      v16 = sub_24AC29E20(v14, v15, &v55);

      *(v10 + 4) = v16;
      *(v10 + 12) = 2112;
      v17 = sub_24ACD0210();
      *(v10 + 14) = v17;
      *v11 = v17;
      _os_log_impl(&dword_24AC18000, v5, v6, "%{public}s: disconnected with error: %@", v10, 0x16u);
      sub_24AC212F4(v11, &qword_27EF9E6A0, &qword_24ACD5590);
      MEMORY[0x24C22DC60](v11, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x24C22DC60](v12, -1, -1);
      MEMORY[0x24C22DC60](v10, -1, -1);
    }

    v18 = v0[22];
    v19 = v0[17];
    v20 = v0[18];
    v21 = v0[16];
    v22 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_cancelConnectContinuation;
    swift_beginAccess();
    sub_24AC2B5DC(v21 + v22, v18, &qword_27EF9E4F0, &unk_24ACD4130);
    v23 = (*(v20 + 48))(v18, 1, v19);
    v24 = v0[22];
    if (v23)
    {

LABEL_13:
      sub_24AC212F4(v24, &qword_27EF9E4F0, &unk_24ACD4130);
      goto LABEL_16;
    }

    v44 = v0[18];
    v43 = v0[19];
    v45 = v0[17];
    (*(v44 + 16))(v43, v0[22], v45);
    sub_24AC212F4(v24, &qword_27EF9E4F0, &unk_24ACD4130);
    v0[14] = v1;
    sub_24ACD0750();
    (*(v44 + 8))(v43, v45);
  }

  else
  {
    if (qword_27EF9DC38 != -1)
    {
      swift_once();
    }

    v25 = sub_24ACD0490();
    __swift_project_value_buffer(v25, qword_27EF9E010);

    v26 = sub_24ACD0470();
    v27 = sub_24ACD0930();

    if (os_log_type_enabled(v26, v27))
    {
      v29 = v0[23];
      v28 = v0[24];
      v30 = v0[16];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v55 = v32;
      *v31 = 136446210;
      sub_24AC2A3DC(v30 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v28);
      v33 = (v28 + *(v29 + 32));
      v34 = *v33;
      v35 = v33[1];

      sub_24AC47AEC(v28, type metadata accessor for PeerPath);
      v36 = sub_24AC29E20(v34, v35, &v55);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_24AC18000, v26, v27, "%{public}s: disconnected.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x24C22DC60](v32, -1, -1);
      MEMORY[0x24C22DC60](v31, -1, -1);
    }

    v37 = v0[21];
    v38 = v0[17];
    v39 = v0[18];
    v40 = v0[16];
    v41 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_cancelConnectContinuation;
    swift_beginAccess();
    sub_24AC2B5DC(v40 + v41, v37, &qword_27EF9E4F0, &unk_24ACD4130);
    v42 = (*(v39 + 48))(v37, 1, v38);
    v24 = v0[21];
    if (v42)
    {
      goto LABEL_13;
    }

    v47 = v0[18];
    v46 = v0[19];
    v48 = v0[17];
    (*(v47 + 16))(v46, v0[21], v48);
    sub_24AC212F4(v24, &qword_27EF9E4F0, &unk_24ACD4130);
    sub_24ACD0760();
    (*(v47 + 8))(v46, v48);
  }

LABEL_16:
  v49 = v0[20];
  v50 = v0[16];
  (*(v0[18] + 56))(v49, 1, 1, v0[17]);
  v51 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_cancelConnectContinuation;
  swift_beginAccess();
  sub_24AC463C4(v49, v50 + v51, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();
  v52 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_services;
  swift_beginAccess();
  *(v50 + v52) = MEMORY[0x277D84F98];

  *(v50 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_autoDiscoverCount) = 0;

  v53 = v0[1];

  return v53();
}

uint64_t sub_24AC3B2B0(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = type metadata accessor for PeerPath(0);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC3B3F0, v1, 0);
}

uint64_t sub_24AC3B3F0()
{
  v48 = v0;
  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_24ACD0490();
  __swift_project_value_buffer(v2, qword_27EF9E010);

  v3 = v1;
  v4 = sub_24ACD0470();
  v5 = sub_24ACD0930();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[16];
    v7 = v0[17];
    v8 = v0[10];
    v44 = v0[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v47[0] = v11;
    *v9 = 136446466;
    sub_24AC2A3DC(v8 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v7);
    v12 = (v7 + *(v6 + 32));
    v14 = *v12;
    v13 = v12[1];

    sub_24AC47AEC(v7, type metadata accessor for PeerPath);
    v15 = sub_24AC29E20(v14, v13, v47);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2114;
    v16 = v44;
    if (v44)
    {
      v17 = v1;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      v16 = v18;
    }

    else
    {
      v18 = 0;
    }

    *(v9 + 14) = v18;
    *v10 = v16;
    _os_log_impl(&dword_24AC18000, v4, v5, "%{public}s: didCompletePairing with error %{public}@", v9, 0x16u);
    sub_24AC212F4(v10, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C22DC60](v11, -1, -1);
    MEMORY[0x24C22DC60](v9, -1, -1);
  }

  else
  {
  }

  v19 = v0[13];
  v20 = v0[14];
  v21 = v0[12];
  v22 = v0[10];
  v23 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_pairingContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v22 + v23, v21, &qword_27EF9E4F0, &unk_24ACD4130);
  if ((*(v20 + 48))(v21, 1, v19) == 1)
  {
    sub_24AC212F4(v0[12], &qword_27EF9E4F0, &unk_24ACD4130);
    type metadata accessor for CentralManager.Error(0);
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v24 = v0[1];
  }

  else
  {
    v25 = v0[9];
    (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
    if (v25)
    {
      v0[8] = v1;
      v26 = v1;
      sub_24ACD0750();
    }

    else
    {
      sub_24ACD0760();
    }

    v27 = sub_24ACD0470();
    v28 = sub_24ACD0930();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = v0[16];
      v30 = v0[17];
      v43 = v0[14];
      v45 = v0[13];
      v46 = v0[15];
      v31 = v0[10];
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v47[0] = v33;
      *v32 = 136446210;
      sub_24AC2A3DC(v31 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v30);
      v34 = (v30 + *(v29 + 32));
      v35 = *v34;
      v36 = v34[1];

      sub_24AC47AEC(v30, type metadata accessor for PeerPath);
      v37 = sub_24AC29E20(v35, v36, v47);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_24AC18000, v27, v28, "%{public}s: didCompletePairing - clearing pairingContinuation", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x24C22DC60](v33, -1, -1);
      MEMORY[0x24C22DC60](v32, -1, -1);

      (*(v43 + 8))(v46, v45);
    }

    else
    {
      v39 = v0[14];
      v38 = v0[15];
      v40 = v0[13];

      (*(v39 + 8))(v38, v40);
    }

    v41 = v0[11];
    (*(v0[14] + 56))(v41, 1, 1, v0[13]);
    swift_beginAccess();
    sub_24AC463C4(v41, v22 + v23, &qword_27EF9E4F0, &unk_24ACD4130);
    swift_endAccess();

    v24 = v0[1];
  }

  return v24();
}

uint64_t sub_24AC3B9DC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for PeerPath(0);
  v3[6] = swift_task_alloc();
  v4 = sub_24ACD0420();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC3BADC, v2, 0);
}

uint64_t sub_24AC3BADC()
{
  v31 = v0;
  sub_24ACD0120();
  if ((sub_24ACD0100() & 1) == 0)
  {
    return sub_24ACD0B20();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  sub_24ACCFFE0();
  v6 = [v5 identifier];
  sub_24ACD03F0();

  LOBYTE(v6) = _s15FindMyBluetooth11ServiceUUIDV2eeoiySbAC_ACtFZ_0();
  v7 = *(v4 + 8);
  v7(v2, v3);
  v7(v1, v3);
  if ((v6 & 1) == 0)
  {
    return sub_24ACD0B20();
  }

  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v8 = sub_24ACD0490();
  __swift_project_value_buffer(v8, qword_27EF9E010);

  v9 = sub_24ACD0470();
  v10 = sub_24ACD0930();

  if (os_log_type_enabled(v9, v10))
  {
    v12 = v0[5];
    v11 = v0[6];
    v14 = v0[3];
    v13 = v0[4];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30 = v16;
    *v15 = 136446722;
    sub_24AC2A3DC(v13 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v11);
    v17 = (v11 + *(v12 + 32));
    v18 = *v17;
    v19 = v17[1];

    sub_24AC47AEC(v11, type metadata accessor for PeerPath);
    v20 = sub_24AC29E20(v18, v19, &v30);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v21 = sub_24AC39074();
    v23 = sub_24AC29E20(v21, v22, &v30);

    *(v15 + 14) = v23;
    *(v15 + 22) = 2080;
    v24 = sub_24AC2B8F8(0, &qword_27EF9E0F8, 0x277CBE098);
    v25 = MEMORY[0x24C22CE70](v14, v24);
    v27 = sub_24AC29E20(v25, v26, &v30);

    *(v15 + 24) = v27;
    _os_log_impl(&dword_24AC18000, v9, v10, "%{public}s: NOT IMPLEMENTED -- didModifyServices for %s invalidatedServices: %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v16, -1, -1);
    MEMORY[0x24C22DC60](v15, -1, -1);
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_24AC3BEAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for PeerPath(0);
  v4[7] = swift_task_alloc();
  v5 = sub_24ACD0420();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC3BFAC, v3, 0);
}

uint64_t sub_24AC3BFAC()
{
  v34 = v0;
  sub_24ACD0120();
  if ((sub_24ACD0100() & 1) == 0)
  {
    return sub_24ACD0B20();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  sub_24ACCFFE0();
  v6 = [v5 identifier];
  sub_24ACD03F0();

  LOBYTE(v6) = _s15FindMyBluetooth11ServiceUUIDV2eeoiySbAC_ACtFZ_0();
  v7 = *(v4 + 8);
  v7(v2, v3);
  v7(v1, v3);
  if ((v6 & 1) == 0)
  {
    return sub_24ACD0B20();
  }

  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v8 = v0[4];
  v9 = sub_24ACD0490();
  __swift_project_value_buffer(v9, qword_27EF9E010);

  v10 = v8;
  v11 = sub_24ACD0470();
  v12 = sub_24ACD0930();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[6];
    v14 = v0[7];
    v15 = v0[5];
    v30 = v0[3];
    v31 = v0[4];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v16 = 136446978;
    sub_24AC2A3DC(v15 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v14);
    v18 = (v14 + *(v13 + 32));
    v20 = *v18;
    v19 = v18[1];

    sub_24AC47AEC(v14, type metadata accessor for PeerPath);
    v21 = sub_24AC29E20(v20, v19, &v33);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = sub_24AC39074();
    v24 = sub_24AC29E20(v22, v23, &v33);

    *(v16 + 14) = v24;
    *(v16 + 22) = 2048;
    *(v16 + 24) = v30;
    *(v16 + 32) = 2112;
    v25 = v31;
    if (v31)
    {
      v26 = v8;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      v25 = v27;
    }

    else
    {
      v27 = 0;
    }

    *(v16 + 34) = v27;
    *v17 = v25;
    _os_log_impl(&dword_24AC18000, v11, v12, "%{public}s: NOT IMPLEMENTED -- didReadRSSI for %s rssi: %ld, error: %@", v16, 0x2Au);
    sub_24AC212F4(v17, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v17, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v32, -1, -1);
    MEMORY[0x24C22DC60](v16, -1, -1);
  }

  v29 = v0[1];

  return v29();
}

uint64_t sub_24AC3C3BC(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v5 = sub_24ACD0420();
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC3C538, v2, 0);
}

uint64_t sub_24AC3C538()
{
  v30 = v0;
  sub_24ACD0120();
  if ((sub_24ACD0100() & 1) == 0)
  {
    return sub_24ACD0B20();
  }

  if (sub_24ACD0840())
  {
    if (qword_27EF9DC38 != -1)
    {
      swift_once();
    }

    v1 = sub_24ACD0490();
    __swift_project_value_buffer(v1, qword_27EF9E010);
    v2 = sub_24ACD0470();
    v3 = sub_24ACD0910();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_8;
    }

    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v29 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_24AC29E20(0xD000000000000022, 0x800000024ACD9930, &v29);
    v6 = "%{public}s Not resuming continuation in cancelled task.";
    goto LABEL_7;
  }

  v10 = v0[19];
  v9 = v0[20];
  v11 = v0[17];
  v12 = v0[18];
  v13 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  sub_24ACCFFE0();
  v14 = [v13 identifier];
  sub_24ACD03F0();

  LOBYTE(v14) = _s15FindMyBluetooth11ServiceUUIDV2eeoiySbAC_ACtFZ_0();
  v15 = *(v12 + 8);
  v15(v10, v11);
  v15(v9, v11);
  if ((v14 & 1) == 0)
  {
    return sub_24ACD0B20();
  }

  v16 = v0[14];
  v17 = v0[15];
  v18 = v0[13];
  v19 = v0[11];
  v20 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_discoverServicesContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v19 + v20, v18, &qword_27EF9E4F0, &unk_24ACD4130);
  if ((*(v17 + 48))(v18, 1, v16) != 1)
  {
    v22 = v0[10];
    (*(v0[15] + 32))(v0[16], v0[13], v0[14]);
    v24 = v0[15];
    v23 = v0[16];
    v25 = v0[14];
    if (v22)
    {
      v26 = v0[10];
      v0[8] = v26;
      v27 = v26;
      sub_24ACD0750();
    }

    else
    {
      sub_24ACD0760();
    }

    (*(v24 + 8))(v23, v25);
    v28 = v0[12];
    (*(v0[15] + 56))(v28, 1, 1, v0[14]);
    swift_beginAccess();
    sub_24AC463C4(v28, v19 + v20, &qword_27EF9E4F0, &unk_24ACD4130);
    swift_endAccess();
    goto LABEL_9;
  }

  sub_24AC212F4(v0[13], &qword_27EF9E4F0, &unk_24ACD4130);
  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v21 = sub_24ACD0490();
  __swift_project_value_buffer(v21, qword_27EF9E010);
  v2 = sub_24ACD0470();
  v3 = sub_24ACD0910();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v29 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_24AC29E20(0xD000000000000022, 0x800000024ACD9930, &v29);
    v6 = "%{public}s called with no discoverServicesContinuation";
LABEL_7:
    _os_log_impl(&dword_24AC18000, v2, v3, v6, v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C22DC60](v5, -1, -1);
    MEMORY[0x24C22DC60](v4, -1, -1);
  }

LABEL_8:

LABEL_9:

  v7 = v0[1];

  return v7();
}

uint64_t sub_24AC3CA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();
  v7 = sub_24ACD0420();
  v4[24] = v7;
  v4[25] = *(v7 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC3CC34, v3, 0);
}

uint64_t sub_24AC3CC34()
{
  v26 = v0;
  sub_24ACD0120();
  if ((sub_24ACD0100() & 1) == 0)
  {
    return sub_24ACD0B20();
  }

  if (sub_24ACD0840())
  {
    if (qword_27EF9DC38 != -1)
    {
      swift_once();
    }

    v1 = sub_24ACD0490();
    __swift_project_value_buffer(v1, qword_27EF9E010);
    v2 = sub_24ACD0470();
    v3 = sub_24ACD0910();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v25[0] = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_24AC29E20(0xD000000000000032, 0x800000024ACD98A0, v25);
      _os_log_impl(&dword_24AC18000, v2, v3, "%{public}s Not resuming continuation in cancelled task.", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x24C22DC60](v5, -1, -1);
      MEMORY[0x24C22DC60](v4, -1, -1);
    }

    v6 = *(v0 + 8);

    return v6();
  }

  v9 = *(v0 + 208);
  v8 = *(v0 + 216);
  v10 = *(v0 + 192);
  v11 = *(v0 + 200);
  v12 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  sub_24ACCFFE0();
  v13 = [v12 identifier];
  sub_24ACD03F0();

  LOBYTE(v13) = _s15FindMyBluetooth11ServiceUUIDV2eeoiySbAC_ACtFZ_0();
  v14 = *(v11 + 8);
  v14(v9, v10);
  v14(v8, v10);
  if ((v13 & 1) == 0)
  {
    return sub_24ACD0B20();
  }

  v15 = *(v0 + 216);
  v16 = *(v0 + 120);
  v17 = [*(v0 + 104) UUID];
  CBUUID.uuidValue.getter(v15);

  type metadata accessor for Service(0);
  sub_24ACD0000();
  v18 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_services;
  swift_beginAccess();
  v19 = *(v16 + v18);
  if (!*(v19 + 16))
  {
    goto LABEL_20;
  }

  v20 = *(v0 + 184);

  v21 = sub_24AC2ACC8(v20);
  if ((v22 & 1) == 0)
  {

    goto LABEL_20;
  }

  v23 = *(*(v19 + 56) + 8 * v21);
  *(v0 + 224) = v23;

  if (!v23)
  {
LABEL_20:
    sub_24ACD0A20();

    v25[0] = 0xD000000000000014;
    v25[1] = 0x800000024ACD9850;
    sub_24AC2B6A8(&qword_27EF9E0D0, &unk_27EF9E090, &qword_24ACD37C0, MEMORY[0x277D088C8]);
    v24 = sub_24ACD0C20();
    MEMORY[0x24C22CD50](v24);

    return sub_24ACD0B20();
  }

  return MEMORY[0x2822009F8](sub_24AC3D118, v23, 0);
}

uint64_t sub_24AC3D118()
{
  v1 = v0[28];
  v2 = v0[17];
  v3 = v0[15];
  v4 = OBJC_IVAR____TtC15FindMyBluetooth7Service_discoverCharacteristicsContinuation;
  v0[29] = OBJC_IVAR____TtC15FindMyBluetooth7Service_discoverCharacteristicsContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v1 + v4, v2, &qword_27EF9E4F0, &unk_24ACD4130);

  return MEMORY[0x2822009F8](sub_24AC3D1CC, v3, 0);
}

uint64_t sub_24AC3D1CC()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24AC212F4(v3, &qword_27EF9E4F0, &unk_24ACD4130);
    return sub_24ACD0B20();
  }

  else
  {
    v5 = v0[14];
    (*(v2 + 32))(v0[20], v3, v1);
    if (v5)
    {
      v6 = v0[14];
      v0[11] = v6;
      v7 = v6;
      sub_24ACD0750();
    }

    else
    {
      sub_24ACD0760();
    }

    v8 = v0[28];

    return MEMORY[0x2822009F8](sub_24AC3D334, v8, 0);
  }
}

uint64_t sub_24AC3D334()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[15];
  v4 = v0[16];
  (*(v0[19] + 56))(v4, 1, 1, v0[18]);
  swift_beginAccess();
  sub_24AC463C4(v4, v2 + v1, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_24AC3D3FC, v3, 0);
}

uint64_t sub_24AC3D3FC()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v6 = v0[19];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24AC3D4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[18] = a5;
  v6[19] = v5;
  v6[16] = a3;
  v6[17] = a4;
  v6[14] = a1;
  v6[15] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E0E0, &qword_24ACD44B0);
  v6[20] = v7;
  v6[21] = *(v7 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = type metadata accessor for PeerPath(0);
  v6[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E0E8, &qword_24ACD44B8);
  v6[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E0F0, &qword_24ACD44C0);
  v6[26] = v8;
  v6[27] = *(v8 - 8);
  v6[28] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v6[29] = v9;
  v6[30] = *(v9 - 8);
  v6[31] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v6[32] = v10;
  v6[33] = *(v10 - 8);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v11 = sub_24ACD0420();
  v6[36] = v11;
  v6[37] = *(v11 - 8);
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC3D7CC, v5, 0);
}

uint64_t sub_24AC3D7CC()
{
  v73 = v0;
  sub_24ACD0120();
  if ((sub_24ACD0100() & 1) == 0)
  {
    return sub_24ACD0B20();
  }

  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 288);
  v4 = *(v0 + 296);
  v5 = *(v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  sub_24ACCFFE0();
  v6 = [v5 identifier];
  sub_24ACD03F0();

  LOBYTE(v6) = _s15FindMyBluetooth11ServiceUUIDV2eeoiySbAC_ACtFZ_0();
  v7 = *(v4 + 8);
  v7(v2, v3);
  v7(v1, v3);
  v8 = 0x27EF9D000uLL;
  if ((v6 & 1) != 0 && (v9 = [*(v0 + 120) service], (*(v0 + 320) = v9) != 0))
  {
    v10 = v9;
    v11 = *(v0 + 312);
    v12 = *(v0 + 152);
    v13 = [v9 UUID];
    CBUUID.uuidValue.getter(v11);

    type metadata accessor for Service(0);
    sub_24ACD0000();
    v14 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_services;
    swift_beginAccess();
    v15 = *(v12 + v14);
    if (*(v15 + 16))
    {
      v16 = *(v0 + 280);

      v17 = sub_24AC2ACC8(v16);
      if (v18)
      {
        v19 = *(*(v15 + 56) + 8 * v17);
        *(v0 + 328) = v19;

        if (v19)
        {
          v20 = *(v0 + 312);
          v21 = [*(v0 + 120) UUID];
          CBUUID.uuidValue.getter(v20);

          type metadata accessor for Characteristic(0);
          sub_24ACD0000();
          v22 = swift_task_alloc();
          *(v0 + 336) = v22;
          *v22 = v0;
          v22[1] = sub_24AC3E160;
          v23 = *(v0 + 248);

          return sub_24AC27600(v23);
        }
      }

      else
      {
      }
    }

    if (qword_27EF9DC38 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 272);
    v26 = *(v0 + 280);
    v28 = *(v0 + 256);
    v29 = *(v0 + 264);
    v30 = sub_24ACD0490();
    __swift_project_value_buffer(v30, qword_27EF9E010);
    (*(v29 + 16))(v27, v26, v28);

    v31 = sub_24ACD0470();
    v32 = sub_24ACD0920();

    log = v31;
    v33 = os_log_type_enabled(v31, v32);
    v35 = *(v0 + 264);
    v34 = *(v0 + 272);
    v36 = *(v0 + 256);
    if (v33)
    {
      v70 = v32;
      v37 = *(v0 + 184);
      v38 = *(v0 + 192);
      v39 = *(v0 + 152);
      v40 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v72[0] = v69;
      *v40 = 136446466;
      sub_24AC2A3DC(v39 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v38);
      v41 = (v38 + *(v37 + 32));
      v43 = *v41;
      v42 = v41[1];

      sub_24AC47AEC(v38, type metadata accessor for PeerPath);
      v44 = sub_24AC29E20(v43, v42, v72);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2082;
      sub_24AC2B6A8(&qword_27EF9E0D0, &unk_27EF9E090, &qword_24ACD37C0, MEMORY[0x277D088C8]);
      v45 = sub_24ACD0C20();
      v47 = v46;
      v48 = *(v35 + 8);
      v48(v34, v36);
      v49 = sub_24AC29E20(v45, v47, v72);
      v8 = 0x27EF9D000;

      *(v40 + 14) = v49;
      _os_log_impl(&dword_24AC18000, log, v70, "%{public}s: Missing service for %{public}s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C22DC60](v69, -1, -1);
      MEMORY[0x24C22DC60](v40, -1, -1);
    }

    else
    {

      v48 = *(v35 + 8);
      v48(v34, v36);
    }

    v50 = *(v0 + 280);
    v51 = *(v0 + 256);
    type metadata accessor for CentralManager.Error(0);
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v48(v50, v51);
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  if (*(v8 + 3128) != -1)
  {
    swift_once();
  }

  v52 = sub_24ACD0490();
  __swift_project_value_buffer(v52, qword_27EF9E010);

  v53 = v25;
  v54 = sub_24ACD0470();
  v55 = sub_24ACD0920();

  if (os_log_type_enabled(v54, v55))
  {
    v57 = *(v0 + 184);
    v56 = *(v0 + 192);
    v58 = *(v0 + 152);
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v72[0] = v61;
    *v59 = 136446722;
    sub_24AC2A3DC(v58 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v56);
    v62 = (v56 + *(v57 + 32));
    v63 = *v62;
    v64 = v62[1];

    sub_24AC47AEC(v56, type metadata accessor for PeerPath);
    v65 = sub_24AC29E20(v63, v64, v72);

    *(v59 + 4) = v65;
    *(v59 + 12) = 2080;
    *(v59 + 14) = sub_24AC29E20(0xD00000000000002CLL, 0x800000024ACD97C0, v72);
    *(v59 + 22) = 2114;
    v66 = v25;
    v67 = _swift_stdlib_bridgeErrorToNSError();
    *(v59 + 24) = v67;
    *v60 = v67;
    _os_log_impl(&dword_24AC18000, v54, v55, "%{public}s: Error in Peripheral delegate %s: %{public}@", v59, 0x20u);
    sub_24AC212F4(v60, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v60, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v61, -1, -1);
    MEMORY[0x24C22DC60](v59, -1, -1);
  }

  else
  {
  }

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_24AC3E160(uint64_t a1)
{
  v3 = a1;
  v4 = *v2;
  *(*v2 + 344) = a1;

  if (v1)
  {
    v3 = *(v4 + 152);

    v5 = sub_24AC3EB04;
  }

  else
  {
    v5 = sub_24AC3E290;
  }

  return MEMORY[0x2822009F8](v5, v3, 0);
}

uint64_t sub_24AC3E290()
{
  v1 = v0[43];
  v2 = v0[25];
  v3 = v0[19];
  v4 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_updateValueContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v1 + v4, v2, &qword_27EF9E0E8, &qword_24ACD44B8);

  return MEMORY[0x2822009F8](sub_24AC3E340, v3, 0);
}

uint64_t sub_24AC3E340()
{
  v79 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[40];
    v5 = v0[33];
    v72 = v0[32];
    v75 = v0[35];
    v6 = v0[30];
    v7 = v0[31];
    v8 = v0[29];
    sub_24AC212F4(v3, &qword_27EF9E0E8, &qword_24ACD44B8);
    type metadata accessor for CentralManager.Error(0);
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    v9 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v6 + 8))(v7, v8);
    (*(v5 + 8))(v75, v72);
    if (qword_27EF9DC38 != -1)
    {
      swift_once();
    }

    v10 = sub_24ACD0490();
    __swift_project_value_buffer(v10, qword_27EF9E010);

    v11 = v9;
    v12 = sub_24ACD0470();
    v13 = sub_24ACD0920();

    if (os_log_type_enabled(v12, v13))
    {
      v15 = v0[23];
      v14 = v0[24];
      v16 = v0[19];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v78[0] = v19;
      *v17 = 136446722;
      sub_24AC2A3DC(v16 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v14);
      v20 = (v14 + *(v15 + 32));
      v21 = *v20;
      v22 = v20[1];

      sub_24AC47AEC(v14, type metadata accessor for PeerPath);
      v23 = sub_24AC29E20(v21, v22, v78);

      *(v17 + 4) = v23;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_24AC29E20(0xD00000000000002CLL, 0x800000024ACD97C0, v78);
      *(v17 + 22) = 2114;
      v24 = v9;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 24) = v25;
      *v18 = v25;
      _os_log_impl(&dword_24AC18000, v12, v13, "%{public}s: Error in Peripheral delegate %s: %{public}@", v17, 0x20u);
      sub_24AC212F4(v18, &qword_27EF9E6A0, &qword_24ACD5590);
      MEMORY[0x24C22DC60](v18, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C22DC60](v19, -1, -1);
      MEMORY[0x24C22DC60](v17, -1, -1);
    }

    else
    {
    }

    goto LABEL_12;
  }

  v26 = v0[18];
  (*(v2 + 32))(v0[28], v3, v1);
  if (v26)
  {
    v27 = v0[40];
    v28 = v0[33];
    v73 = v0[32];
    v76 = v0[35];
    v29 = v0[30];
    v70 = v0[31];
    v30 = v0[28];
    v31 = v0[29];
    v33 = v0[26];
    v32 = v0[27];
    v34 = v0[18];
    v0[13] = v34;
    v35 = v34;
LABEL_11:
    sub_24ACD08A0();

    (*(v32 + 8))(v30, v33);
    (*(v29 + 8))(v70, v31);
    (*(v28 + 8))(v76, v73);
    goto LABEL_12;
  }

  v36 = v0[17];
  if (v36 >> 60 == 15)
  {
    v27 = v0[40];
    v28 = v0[33];
    v73 = v0[32];
    v76 = v0[35];
    v29 = v0[30];
    v70 = v0[31];
    v30 = v0[28];
    v31 = v0[29];
    v33 = v0[26];
    v32 = v0[27];
    v0[12] = 0;
    goto LABEL_11;
  }

  sub_24AC46630(v0[16], v36);
  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v40 = v0[16];
  v39 = v0[17];
  v41 = sub_24ACD0490();
  __swift_project_value_buffer(v41, qword_27EF9E010);
  sub_24AC4661C(v40, v39);

  v42 = sub_24ACD0470();
  v43 = sub_24ACD0930();

  sub_24AC46684(v40, v39);
  if (os_log_type_enabled(v42, v43))
  {
    v44 = v0[43];
    v46 = v0[23];
    v45 = v0[24];
    v48 = v0[16];
    v47 = v0[17];
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v78[0] = v50;
    *v49 = 136315394;
    sub_24AC2A3DC(v44 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_peerPath, v45);
    v51 = (v45 + *(v46 + 32));
    v52 = *v51;
    v53 = v51[1];

    sub_24AC47AEC(v45, type metadata accessor for PeerPath);
    v54 = sub_24AC29E20(v52, v53, v78);

    *(v49 + 4) = v54;
    *(v49 + 12) = 2080;
    v0[10] = v48;
    v0[11] = v47;
    sub_24AC467AC();
    v55 = sub_24ACD0180();
    v57 = sub_24AC29E20(v55, v56, v78);

    *(v49 + 14) = v57;
    _os_log_impl(&dword_24AC18000, v42, v43, "%s: didUpdateValue %s", v49, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v50, -1, -1);
    MEMORY[0x24C22DC60](v49, -1, -1);
  }

  v68 = v0[40];
  v58 = v0[33];
  v74 = v0[32];
  v77 = v0[35];
  v59 = v0[30];
  v60 = v0[28];
  v69 = v0[29];
  v71 = v0[31];
  v62 = v0[26];
  v61 = v0[27];
  v63 = v0[21];
  v64 = v0[22];
  v67 = v0[20];
  v66 = v0[16];
  v65 = v0[17];
  v0[8] = v66;
  v0[9] = v65;
  sub_24AC46630(v66, v65);
  sub_24ACD0890();

  sub_24AC46684(v66, v65);

  (*(v63 + 8))(v64, v67);
  (*(v61 + 8))(v60, v62);
  (*(v59 + 8))(v71, v69);
  (*(v58 + 8))(v77, v74);
LABEL_12:

  v37 = v0[1];

  return v37();
}

uint64_t sub_24AC3EB04()
{
  v46 = v0;
  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v43 = sub_24ACD0490();
  __swift_project_value_buffer(v43, qword_27EF9E010);

  v2 = v1;
  v3 = sub_24ACD0470();
  v4 = sub_24ACD0910();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[23];
    v5 = v0[24];
    v7 = v0[19];
    v8 = v0[15];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v45[0] = v11;
    *v9 = 136446466;
    sub_24AC2A3DC(v7 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v5);
    v12 = (v5 + *(v6 + 32));
    v13 = *v12;
    v14 = v12[1];

    sub_24AC47AEC(v5, type metadata accessor for PeerPath);
    v15 = sub_24AC29E20(v13, v14, v45);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v8;
    *v10 = v8;
    v16 = v8;
    _os_log_impl(&dword_24AC18000, v3, v4, "%{public}s: got update for unknown characteristic: %@", v9, 0x16u);
    sub_24AC212F4(v10, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C22DC60](v11, -1, -1);
    MEMORY[0x24C22DC60](v9, -1, -1);
  }

  v17 = v0[40];
  v42 = v0[35];
  v19 = v0[32];
  v18 = v0[33];
  v21 = v0[30];
  v20 = v0[31];
  v22 = v0[29];
  type metadata accessor for CentralManager.Error(0);
  sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
  v23 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  (*(v21 + 8))(v20, v22);
  (*(v18 + 8))(v42, v19);
  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v43, qword_27EF9E010);

  v24 = v23;
  v25 = sub_24ACD0470();
  v26 = sub_24ACD0920();

  v27 = v23;
  if (os_log_type_enabled(v25, v26))
  {
    v28 = v0[23];
    v29 = v0[24];
    v30 = v0[19];
    v44 = v27;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v45[0] = v33;
    *v31 = 136446722;
    sub_24AC2A3DC(v30 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v29);
    v34 = (v29 + *(v28 + 32));
    v35 = *v34;
    v36 = v34[1];

    sub_24AC47AEC(v29, type metadata accessor for PeerPath);
    v37 = sub_24AC29E20(v35, v36, v45);

    *(v31 + 4) = v37;
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_24AC29E20(0xD00000000000002CLL, 0x800000024ACD97C0, v45);
    *(v31 + 22) = 2114;
    v38 = v44;
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 24) = v39;
    *v32 = v39;
    _os_log_impl(&dword_24AC18000, v25, v26, "%{public}s: Error in Peripheral delegate %s: %{public}@", v31, 0x20u);
    sub_24AC212F4(v32, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v32, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v33, -1, -1);
    MEMORY[0x24C22DC60](v31, -1, -1);
  }

  else
  {
  }

  v40 = v0[1];

  return v40();
}

uint64_t sub_24AC3F094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = type metadata accessor for PeerPath(0);
  v4[10] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v7 = sub_24ACD0420();
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC3F270, v3, 0);
}

uint64_t sub_24AC3F270()
{
  v77 = v0;
  sub_24ACD0120();
  if ((sub_24ACD0100() & 1) == 0)
  {
    return sub_24ACD0B20();
  }

  if (sub_24ACD0840())
  {
    if (qword_27EF9DC38 != -1)
    {
      swift_once();
    }

    v1 = sub_24ACD0490();
    __swift_project_value_buffer(v1, qword_27EF9E010);
    v2 = sub_24ACD0470();
    v3 = sub_24ACD0910();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v76[0] = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_24AC29E20(0xD000000000000025, 0x800000024ACD96E0, v76);
      _os_log_impl(&dword_24AC18000, v2, v3, "%{public}s Not resuming continuation in cancelled task.", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x24C22DC60](v5, -1, -1);
      MEMORY[0x24C22DC60](v4, -1, -1);
    }

    goto LABEL_28;
  }

  v8 = *(v0 + 160);
  v7 = *(v0 + 168);
  v9 = *(v0 + 144);
  v10 = *(v0 + 152);
  v11 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  sub_24ACCFFE0();
  v12 = [v11 identifier];
  sub_24ACD03F0();

  LOBYTE(v12) = _s15FindMyBluetooth11ServiceUUIDV2eeoiySbAC_ACtFZ_0();
  v13 = *(v10 + 8);
  v13(v8, v9);
  v13(v7, v9);
  v14 = 0x27EF9D000uLL;
  if ((v12 & 1) == 0 || (v15 = [*(v0 + 48) service], (*(v0 + 176) = v15) == 0))
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    v30 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_24:
    if (*(v14 + 3128) != -1)
    {
      swift_once();
    }

    v57 = sub_24ACD0490();
    __swift_project_value_buffer(v57, qword_27EF9E010);

    v58 = v30;
    v2 = sub_24ACD0470();
    v59 = sub_24ACD0920();

    if (!os_log_type_enabled(v2, v59))
    {

      goto LABEL_30;
    }

    v61 = *(v0 + 72);
    v60 = *(v0 + 80);
    v62 = *(v0 + 64);
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v76[0] = v65;
    *v63 = 136446722;
    sub_24AC2A3DC(v62 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v60);
    v66 = (v60 + *(v61 + 32));
    v67 = *v66;
    v68 = v66[1];

    sub_24AC47AEC(v60, type metadata accessor for PeerPath);
    v69 = sub_24AC29E20(v67, v68, v76);

    *(v63 + 4) = v69;
    *(v63 + 12) = 2082;
    *(v63 + 14) = sub_24AC29E20(0xD000000000000025, 0x800000024ACD96E0, v76);
    *(v63 + 22) = 2114;
    v70 = v30;
    v71 = _swift_stdlib_bridgeErrorToNSError();
    *(v63 + 24) = v71;
    *v64 = v71;
    _os_log_impl(&dword_24AC18000, v2, v59, "%{public}s: Error in Peripheral delegate %{public}s: %{public}@", v63, 0x20u);
    sub_24AC212F4(v64, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v64, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v65, -1, -1);
    MEMORY[0x24C22DC60](v63, -1, -1);

LABEL_28:
LABEL_30:

    v72 = *(v0 + 8);

    return v72();
  }

  v16 = v15;
  v17 = *(v0 + 168);
  v18 = *(v0 + 64);
  v19 = [v15 UUID];
  CBUUID.uuidValue.getter(v17);

  type metadata accessor for Service(0);
  sub_24ACD0000();
  v20 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_services;
  swift_beginAccess();
  v21 = *(v18 + v20);
  if (!*(v21 + 16))
  {
    goto LABEL_18;
  }

  v22 = *(v0 + 136);

  v23 = sub_24AC2ACC8(v22);
  if ((v24 & 1) == 0)
  {

    goto LABEL_18;
  }

  v25 = *(*(v21 + 56) + 8 * v23);
  *(v0 + 184) = v25;

  if (!v25)
  {
LABEL_18:
    if (qword_27EF9DC38 != -1)
    {
      swift_once();
    }

    v32 = *(v0 + 128);
    v31 = *(v0 + 136);
    v33 = *(v0 + 112);
    v34 = *(v0 + 120);
    v35 = sub_24ACD0490();
    __swift_project_value_buffer(v35, qword_27EF9E010);
    (*(v34 + 16))(v32, v31, v33);

    v36 = sub_24ACD0470();
    v37 = sub_24ACD0920();

    log = v36;
    v38 = os_log_type_enabled(v36, v37);
    v40 = *(v0 + 120);
    v39 = *(v0 + 128);
    v41 = *(v0 + 112);
    if (v38)
    {
      v74 = v37;
      v42 = *(v0 + 72);
      v43 = *(v0 + 80);
      v44 = *(v0 + 64);
      v45 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v76[0] = v73;
      *v45 = 136446466;
      sub_24AC2A3DC(v44 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v43);
      v46 = (v43 + *(v42 + 32));
      v48 = *v46;
      v47 = v46[1];

      sub_24AC47AEC(v43, type metadata accessor for PeerPath);
      v49 = sub_24AC29E20(v48, v47, v76);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2082;
      sub_24AC2B6A8(&qword_27EF9E0D0, &unk_27EF9E090, &qword_24ACD37C0, MEMORY[0x277D088C8]);
      v50 = sub_24ACD0C20();
      v52 = v51;
      v53 = *(v40 + 8);
      v53(v39, v41);
      v54 = sub_24AC29E20(v50, v52, v76);
      v14 = 0x27EF9D000;

      *(v45 + 14) = v54;
      _os_log_impl(&dword_24AC18000, log, v74, "%{public}s: Missing service for %{public}s", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C22DC60](v73, -1, -1);
      MEMORY[0x24C22DC60](v45, -1, -1);
    }

    else
    {

      v53 = *(v40 + 8);
      v53(v39, v41);
    }

    v55 = *(v0 + 136);
    v56 = *(v0 + 112);
    type metadata accessor for CentralManager.Error(0);
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    v30 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v53(v55, v56);
    goto LABEL_24;
  }

  v26 = *(v0 + 168);
  v27 = [*(v0 + 48) UUID];
  CBUUID.uuidValue.getter(v26);

  type metadata accessor for Characteristic(0);
  sub_24ACD0000();
  v28 = swift_task_alloc();
  *(v0 + 192) = v28;
  *v28 = v0;
  v28[1] = sub_24AC3FCF8;
  v29 = *(v0 + 104);

  return sub_24AC27600(v29);
}

uint64_t sub_24AC3FCF8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[25] = a1;
  v3[26] = v1;

  if (v1)
  {
    v5 = v3[8];

    return MEMORY[0x2822009F8](sub_24AC400B0, v5, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v3[27] = v6;
    *v6 = v4;
    v6[1] = sub_24AC3FE80;
    v7 = v3[7];

    return sub_24AC48E28(v7);
  }
}

uint64_t sub_24AC3FE80()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_24AC403DC;
  }

  else
  {
    v4 = sub_24AC3FFAC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC3FFAC()
{
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24AC400B0()
{
  v27 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 88);

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v7 = *(v0 + 208);
  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v8 = sub_24ACD0490();
  __swift_project_value_buffer(v8, qword_27EF9E010);

  v9 = v7;
  v10 = sub_24ACD0470();
  v11 = sub_24ACD0920();

  if (os_log_type_enabled(v10, v11))
  {
    v13 = *(v0 + 72);
    v12 = *(v0 + 80);
    v14 = *(v0 + 64);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = v17;
    *v15 = 136446722;
    sub_24AC2A3DC(v14 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v12);
    v18 = (v12 + *(v13 + 32));
    v19 = *v18;
    v20 = v18[1];

    sub_24AC47AEC(v12, type metadata accessor for PeerPath);
    v21 = sub_24AC29E20(v19, v20, &v26);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_24AC29E20(0xD000000000000025, 0x800000024ACD96E0, &v26);
    *(v15 + 22) = 2114;
    v22 = v7;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v23;
    *v16 = v23;
    _os_log_impl(&dword_24AC18000, v10, v11, "%{public}s: Error in Peripheral delegate %{public}s: %{public}@", v15, 0x20u);
    sub_24AC212F4(v16, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v16, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v17, -1, -1);
    MEMORY[0x24C22DC60](v15, -1, -1);
  }

  else
  {
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_24AC403DC()
{
  v28 = v0;
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  v8 = v0[28];
  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v9 = sub_24ACD0490();
  __swift_project_value_buffer(v9, qword_27EF9E010);

  v10 = v8;
  v11 = sub_24ACD0470();
  v12 = sub_24ACD0920();

  if (os_log_type_enabled(v11, v12))
  {
    v14 = v0[9];
    v13 = v0[10];
    v15 = v0[8];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27 = v18;
    *v16 = 136446722;
    sub_24AC2A3DC(v15 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v13);
    v19 = (v13 + *(v14 + 32));
    v20 = *v19;
    v21 = v19[1];

    sub_24AC47AEC(v13, type metadata accessor for PeerPath);
    v22 = sub_24AC29E20(v20, v21, &v27);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_24AC29E20(0xD000000000000025, 0x800000024ACD96E0, &v27);
    *(v16 + 22) = 2114;
    v23 = v8;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 24) = v24;
    *v17 = v24;
    _os_log_impl(&dword_24AC18000, v11, v12, "%{public}s: Error in Peripheral delegate %{public}s: %{public}@", v16, 0x20u);
    sub_24AC212F4(v17, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v17, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v18, -1, -1);
    MEMORY[0x24C22DC60](v16, -1, -1);
  }

  else
  {
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_24AC40710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = type metadata accessor for PeerPath(0);
  v4[10] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v7 = sub_24ACD0420();
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC408EC, v3, 0);
}

uint64_t sub_24AC408EC()
{
  v77 = v0;
  sub_24ACD0120();
  if ((sub_24ACD0100() & 1) == 0)
  {
    return sub_24ACD0B20();
  }

  if (sub_24ACD0840())
  {
    if (qword_27EF9DC38 != -1)
    {
      swift_once();
    }

    v1 = sub_24ACD0490();
    __swift_project_value_buffer(v1, qword_27EF9E010);
    v2 = sub_24ACD0470();
    v3 = sub_24ACD0910();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v76[0] = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_24AC29E20(0xD000000000000032, 0x800000024ACD9640, v76);
      _os_log_impl(&dword_24AC18000, v2, v3, "%{public}s Not resuming continuation in cancelled task.", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x24C22DC60](v5, -1, -1);
      MEMORY[0x24C22DC60](v4, -1, -1);
    }

    goto LABEL_28;
  }

  v8 = *(v0 + 160);
  v7 = *(v0 + 168);
  v9 = *(v0 + 144);
  v10 = *(v0 + 152);
  v11 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  sub_24ACCFFE0();
  v12 = [v11 identifier];
  sub_24ACD03F0();

  LOBYTE(v12) = _s15FindMyBluetooth11ServiceUUIDV2eeoiySbAC_ACtFZ_0();
  v13 = *(v10 + 8);
  v13(v8, v9);
  v13(v7, v9);
  v14 = 0x27EF9D000uLL;
  if ((v12 & 1) == 0 || (v15 = [*(v0 + 48) service], (*(v0 + 176) = v15) == 0))
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    v30 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_24:
    if (*(v14 + 3128) != -1)
    {
      swift_once();
    }

    v57 = sub_24ACD0490();
    __swift_project_value_buffer(v57, qword_27EF9E010);

    v58 = v30;
    v2 = sub_24ACD0470();
    v59 = sub_24ACD0920();

    if (!os_log_type_enabled(v2, v59))
    {

      goto LABEL_30;
    }

    v61 = *(v0 + 72);
    v60 = *(v0 + 80);
    v62 = *(v0 + 64);
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v76[0] = v65;
    *v63 = 136446722;
    sub_24AC2A3DC(v62 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v60);
    v66 = (v60 + *(v61 + 32));
    v67 = *v66;
    v68 = v66[1];

    sub_24AC47AEC(v60, type metadata accessor for PeerPath);
    v69 = sub_24AC29E20(v67, v68, v76);

    *(v63 + 4) = v69;
    *(v63 + 12) = 2082;
    *(v63 + 14) = sub_24AC29E20(0xD000000000000032, 0x800000024ACD9640, v76);
    *(v63 + 22) = 2114;
    v70 = v30;
    v71 = _swift_stdlib_bridgeErrorToNSError();
    *(v63 + 24) = v71;
    *v64 = v71;
    _os_log_impl(&dword_24AC18000, v2, v59, "%{public}s: Error in Peripheral delegate %{public}s: %{public}@", v63, 0x20u);
    sub_24AC212F4(v64, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v64, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v65, -1, -1);
    MEMORY[0x24C22DC60](v63, -1, -1);

LABEL_28:
LABEL_30:

    v72 = *(v0 + 8);

    return v72();
  }

  v16 = v15;
  v17 = *(v0 + 168);
  v18 = *(v0 + 64);
  v19 = [v15 UUID];
  CBUUID.uuidValue.getter(v17);

  type metadata accessor for Service(0);
  sub_24ACD0000();
  v20 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_services;
  swift_beginAccess();
  v21 = *(v18 + v20);
  if (!*(v21 + 16))
  {
    goto LABEL_18;
  }

  v22 = *(v0 + 136);

  v23 = sub_24AC2ACC8(v22);
  if ((v24 & 1) == 0)
  {

    goto LABEL_18;
  }

  v25 = *(*(v21 + 56) + 8 * v23);
  *(v0 + 184) = v25;

  if (!v25)
  {
LABEL_18:
    if (qword_27EF9DC38 != -1)
    {
      swift_once();
    }

    v32 = *(v0 + 128);
    v31 = *(v0 + 136);
    v33 = *(v0 + 112);
    v34 = *(v0 + 120);
    v35 = sub_24ACD0490();
    __swift_project_value_buffer(v35, qword_27EF9E010);
    (*(v34 + 16))(v32, v31, v33);

    v36 = sub_24ACD0470();
    v37 = sub_24ACD0920();

    log = v36;
    v38 = os_log_type_enabled(v36, v37);
    v40 = *(v0 + 120);
    v39 = *(v0 + 128);
    v41 = *(v0 + 112);
    if (v38)
    {
      v74 = v37;
      v42 = *(v0 + 72);
      v43 = *(v0 + 80);
      v44 = *(v0 + 64);
      v45 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v76[0] = v73;
      *v45 = 136446466;
      sub_24AC2A3DC(v44 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v43);
      v46 = (v43 + *(v42 + 32));
      v48 = *v46;
      v47 = v46[1];

      sub_24AC47AEC(v43, type metadata accessor for PeerPath);
      v49 = sub_24AC29E20(v48, v47, v76);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2082;
      sub_24AC2B6A8(&qword_27EF9E0D0, &unk_27EF9E090, &qword_24ACD37C0, MEMORY[0x277D088C8]);
      v50 = sub_24ACD0C20();
      v52 = v51;
      v53 = *(v40 + 8);
      v53(v39, v41);
      v54 = sub_24AC29E20(v50, v52, v76);
      v14 = 0x27EF9D000;

      *(v45 + 14) = v54;
      _os_log_impl(&dword_24AC18000, log, v74, "%{public}s: Missing service for %{public}s", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C22DC60](v73, -1, -1);
      MEMORY[0x24C22DC60](v45, -1, -1);
    }

    else
    {

      v53 = *(v40 + 8);
      v53(v39, v41);
    }

    v55 = *(v0 + 136);
    v56 = *(v0 + 112);
    type metadata accessor for CentralManager.Error(0);
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    v30 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v53(v55, v56);
    goto LABEL_24;
  }

  v26 = *(v0 + 168);
  v27 = [*(v0 + 48) UUID];
  CBUUID.uuidValue.getter(v26);

  type metadata accessor for Characteristic(0);
  sub_24ACD0000();
  v28 = swift_task_alloc();
  *(v0 + 192) = v28;
  *v28 = v0;
  v28[1] = sub_24AC41374;
  v29 = *(v0 + 104);

  return sub_24AC27600(v29);
}

uint64_t sub_24AC41374(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[25] = a1;
  v3[26] = v1;

  if (v1)
  {
    v5 = v3[8];

    return MEMORY[0x2822009F8](sub_24AC41628, v5, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v3[27] = v6;
    *v6 = v4;
    v6[1] = sub_24AC414FC;
    v7 = v3[7];

    return sub_24AC4952C(v7);
  }
}

uint64_t sub_24AC414FC()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_24AC41954;
  }

  else
  {
    v4 = sub_24AC47C1C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC41628()
{
  v27 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 88);

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v7 = *(v0 + 208);
  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v8 = sub_24ACD0490();
  __swift_project_value_buffer(v8, qword_27EF9E010);

  v9 = v7;
  v10 = sub_24ACD0470();
  v11 = sub_24ACD0920();

  if (os_log_type_enabled(v10, v11))
  {
    v13 = *(v0 + 72);
    v12 = *(v0 + 80);
    v14 = *(v0 + 64);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = v17;
    *v15 = 136446722;
    sub_24AC2A3DC(v14 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v12);
    v18 = (v12 + *(v13 + 32));
    v19 = *v18;
    v20 = v18[1];

    sub_24AC47AEC(v12, type metadata accessor for PeerPath);
    v21 = sub_24AC29E20(v19, v20, &v26);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_24AC29E20(0xD000000000000032, 0x800000024ACD9640, &v26);
    *(v15 + 22) = 2114;
    v22 = v7;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v23;
    *v16 = v23;
    _os_log_impl(&dword_24AC18000, v10, v11, "%{public}s: Error in Peripheral delegate %{public}s: %{public}@", v15, 0x20u);
    sub_24AC212F4(v16, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v16, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v17, -1, -1);
    MEMORY[0x24C22DC60](v15, -1, -1);
  }

  else
  {
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_24AC41954()
{
  v28 = v0;
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  v8 = v0[28];
  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v9 = sub_24ACD0490();
  __swift_project_value_buffer(v9, qword_27EF9E010);

  v10 = v8;
  v11 = sub_24ACD0470();
  v12 = sub_24ACD0920();

  if (os_log_type_enabled(v11, v12))
  {
    v14 = v0[9];
    v13 = v0[10];
    v15 = v0[8];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27 = v18;
    *v16 = 136446722;
    sub_24AC2A3DC(v15 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v13);
    v19 = (v13 + *(v14 + 32));
    v20 = *v19;
    v21 = v19[1];

    sub_24AC47AEC(v13, type metadata accessor for PeerPath);
    v22 = sub_24AC29E20(v20, v21, &v27);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_24AC29E20(0xD000000000000032, 0x800000024ACD9640, &v27);
    *(v16 + 22) = 2114;
    v23 = v8;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 24) = v24;
    *v17 = v24;
    _os_log_impl(&dword_24AC18000, v11, v12, "%{public}s: Error in Peripheral delegate %{public}s: %{public}@", v16, 0x20u);
    sub_24AC212F4(v17, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v17, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v18, -1, -1);
    MEMORY[0x24C22DC60](v16, -1, -1);
  }

  else
  {
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_24AC41C88(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for PeerPath(0);
  v2[5] = swift_task_alloc();
  v3 = sub_24ACD0420();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC41D84, v1, 0);
}

uint64_t sub_24AC41D84()
{
  v28 = v0;
  sub_24ACD0120();
  if ((sub_24ACD0100() & 1) == 0)
  {
    return sub_24ACD0B20();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  sub_24ACCFFE0();
  v6 = [v5 identifier];
  sub_24ACD03F0();

  LOBYTE(v6) = _s15FindMyBluetooth11ServiceUUIDV2eeoiySbAC_ACtFZ_0();
  v7 = *(v4 + 8);
  v7(v2, v3);
  v7(v1, v3);
  if ((v6 & 1) == 0)
  {
    return sub_24ACD0B20();
  }

  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v8 = v0[2];
  v9 = sub_24ACD0490();
  __swift_project_value_buffer(v9, qword_27EF9E010);

  v10 = v8;
  v11 = sub_24ACD0470();
  v12 = sub_24ACD0930();

  if (os_log_type_enabled(v11, v12))
  {
    v14 = v0[4];
    v13 = v0[5];
    v16 = v0[2];
    v15 = v0[3];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27 = v19;
    *v17 = 136446466;
    sub_24AC2A3DC(v15 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v13);
    v20 = (v13 + *(v14 + 32));
    v21 = *v20;
    v22 = v20[1];

    sub_24AC47AEC(v13, type metadata accessor for PeerPath);
    v23 = sub_24AC29E20(v21, v22, &v27);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2112;
    *(v17 + 14) = v16;
    *v18 = v16;
    v24 = v16;
    _os_log_impl(&dword_24AC18000, v11, v12, "%{public}s: NOT IMPLEMENTED -- peripheralIsReadyToSendWithoutWriteResponse: %@", v17, 0x16u);
    sub_24AC212F4(v18, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x24C22DC60](v19, -1, -1);
    MEMORY[0x24C22DC60](v17, -1, -1);
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_24AC42148(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_24ACD0490();
  __swift_allocate_value_buffer(v8, a2);
  v9 = __swift_project_value_buffer(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v8, a4);
  v11 = *(*(v8 - 8) + 16);

  return v11(v9, v10, v8);
}

uint64_t sub_24AC42230(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_24ACD0420();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC422FC, 0, 0);
}

uint64_t sub_24AC422FC()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24AC423BC, Strong, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_24AC423BC()
{
  v1 = v0[7];
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  sub_24ACCFFE0();
  v6 = [v5 identifier];
  sub_24ACD03F0();

  LOBYTE(v6) = _s15FindMyBluetooth11ServiceUUIDV2eeoiySbAC_ACtFZ_0();
  v7 = *(v3 + 8);
  v7(v2, v4);
  v7(v1, v4);
  if ((v6 & 1) == 0)
  {
    return sub_24ACD0B20();
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_24AC425B0(void *a1, uint64_t a2)
{
  v5 = sub_24ACD04C0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *&v2[OBJC_IVAR____TtC15FindMyBluetooth46DelegateTrampoline_CBPeripheralPrivateDelegate_delegateQueue];
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);
  v10 = v9;
  LOBYTE(v9) = sub_24ACD04D0();
  result = (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v12 = swift_allocObject();
    v12[2] = v2;
    v12[3] = a1;
    v12[4] = a2;
    v13 = v2;
    v14 = a1;

    sub_24ACD0110();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24AC42738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24AC4275C, 0, 0);
}

uint64_t sub_24AC4275C()
{
  Strong = swift_weakLoadStrong();
  v0[5] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[6] = v2;
    *v2 = v0;
    v2[1] = sub_24AC42840;
    v4 = v0[3];
    v3 = v0[4];

    return sub_24AC3B9DC(v4, v3);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_24AC42840()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24AC42A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_24AC42A28, 0, 0);
}

uint64_t sub_24AC42A28()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v2 = [*(v0 + 32) integerValue];
    v3 = swift_task_alloc();
    *(v0 + 56) = v3;
    *v3 = v0;
    v3[1] = sub_24AC42B28;
    v4 = *(v0 + 40);
    v5 = *(v0 + 24);

    return sub_24AC3BEAC(v5, v2, v4);
  }

  else
  {
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_24AC42B28()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24AC42C54(void *a1, void *a2)
{
  v5 = sub_24ACD04C0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *&v2[OBJC_IVAR____TtC15FindMyBluetooth46DelegateTrampoline_CBPeripheralPrivateDelegate_delegateQueue];
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);
  v10 = v9;
  LOBYTE(v9) = sub_24ACD04D0();
  result = (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v12 = swift_allocObject();
    v12[2] = v2;
    v12[3] = a1;
    v12[4] = a2;
    v13 = v2;
    v14 = a1;
    v15 = a2;
    sub_24ACD0110();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24AC42DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24AC42E00, 0, 0);
}

uint64_t sub_24AC42E00()
{
  Strong = swift_weakLoadStrong();
  v0[5] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[6] = v2;
    *v2 = v0;
    v2[1] = sub_24AC47C04;
    v4 = v0[3];
    v3 = v0[4];

    return sub_24AC3C3BC(v4, v3);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_24AC42F78(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_24ACD04C0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *&v5[OBJC_IVAR____TtC15FindMyBluetooth46DelegateTrampoline_CBPeripheralPrivateDelegate_delegateQueue];
  *v12 = v13;
  (*(v10 + 104))(v12, *MEMORY[0x277D85200], v9);
  v14 = v13;
  LOBYTE(v13) = sub_24ACD04D0();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v16 = swift_allocObject();
    v16[2] = v5;
    v16[3] = a1;
    v16[4] = a2;
    v16[5] = a3;
    v17 = v5;
    v18 = a1;
    v19 = a2;
    v20 = a3;
    sub_24ACD0110();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24AC43104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_24AC43128, 0, 0);
}

uint64_t sub_24AC43128()
{
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_24AC47C08;
    v3 = v0[4];
    v4 = v0[5];
    v5 = v0[3];

    return sub_24AC3CA50(v5, v3, v4);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

void sub_24AC43228(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(id, id, void *))
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = a5;
  a6(v10, v11, a5);
}

uint64_t sub_24AC432C4(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_24ACD0420();
  v58 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24ACD04C0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v4[OBJC_IVAR____TtC15FindMyBluetooth46DelegateTrampoline_CBPeripheralPrivateDelegate_delegateQueue];
  *v14 = v15;
  (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
  v16 = v15;
  LOBYTE(v15) = sub_24ACD04D0();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v17 = [a2 value];
    if (v17)
    {
      v18 = v17;
      v11 = sub_24ACD02D0();
      v14 = v19;
    }

    else
    {
      v11 = 0;
      v14 = 0xF000000000000000;
    }

    v57 = v8;
    if (qword_27EF9DC40 == -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_6:
  v20 = sub_24ACD0490();
  __swift_project_value_buffer(v20, qword_27EF9E028);
  v21 = a1;
  v22 = a2;
  v23 = a3;
  sub_24AC4661C(v11, v14);
  v24 = sub_24ACD0470();
  v25 = sub_24ACD0930();

  sub_24AC46684(v11, v14);
  if (os_log_type_enabled(v24, v25))
  {
    v54 = v25;
    v55 = v24;
    v56 = v4;
    v26 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v61 = v53;
    *v26 = 136446978;
    v27 = [v21 identifier];
    sub_24ACD03F0();

    sub_24AC46D0C(&qword_27EF9E4E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v28 = v57;
    v29 = sub_24ACD0C20();
    v31 = v30;
    v32 = v28;
    v33 = v52;
    (*(v58 + 8))(v10, v32);
    v34 = sub_24AC29E20(v29, v31, &v61);

    *(v26 + 4) = v34;
    *(v26 + 12) = 2114;
    v35 = [v22 UUID];
    *(v26 + 14) = v35;
    *v33 = v35;
    *(v26 + 22) = 2082;
    v59 = a3;
    v36 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E0C0, &qword_24ACD4468);
    v37 = sub_24ACD05A0();
    v39 = sub_24AC29E20(v37, v38, &v61);

    *(v26 + 24) = v39;
    *(v26 + 32) = 2082;
    if (v14 >> 60 == 15)
    {
      v40 = 0;
      v41 = 0xE000000000000000;
    }

    else
    {
      v59 = v11;
      v60 = v14;
      sub_24AC467AC();
      v40 = sub_24ACD0180();
      v41 = v42;
    }

    v43 = sub_24AC29E20(v40, v41, &v61);

    *(v26 + 34) = v43;
    v44 = v55;
    _os_log_impl(&dword_24AC18000, v55, v54, "%{public}s/%{public}@: error: %{public}s didUpdateValue %{public}s", v26, 0x2Au);
    sub_24AC212F4(v33, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v33, -1, -1);
    v45 = v53;
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v45, -1, -1);
    MEMORY[0x24C22DC60](v26, -1, -1);

    v4 = v56;
  }

  else
  {
  }

  v46 = swift_allocObject();
  v46[2] = v4;
  v46[3] = v21;
  v46[4] = v22;
  v46[5] = v11;
  v46[6] = v14;
  v46[7] = a3;
  v47 = v21;
  v48 = v22;
  v49 = a3;
  sub_24AC4661C(v11, v14);
  v50 = v4;
  sub_24ACD0110();

  return sub_24AC46684(v11, v14);
}

uint64_t sub_24AC43850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_24AC43878, 0, 0);
}

uint64_t sub_24AC43878()
{
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_24AC43964;
    v3 = v0[6];
    v4 = v0[7];
    v5 = v0[4];
    v6 = v0[5];
    v7 = v0[3];

    return sub_24AC3D4E4(v7, v5, v6, v3, v4);
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_24AC43964()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24AC43A90(void *a1, void *a2, void *a3)
{
  v7 = sub_24ACD0420();
  v47 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24ACD04C0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *&v3[OBJC_IVAR____TtC15FindMyBluetooth46DelegateTrampoline_CBPeripheralPrivateDelegate_delegateQueue];
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x277D85200], v10);
  v15 = v14;
  LOBYTE(v14) = sub_24ACD04D0();
  v17 = *(v11 + 8);
  v16 = v11 + 8;
  v17(v13, v10);
  if (v14)
  {
    v48 = v3;
    v16 = v7;
    if (qword_27EF9DC40 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v18 = sub_24ACD0490();
  __swift_project_value_buffer(v18, qword_27EF9E028);
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = sub_24ACD0470();
  v23 = sub_24ACD0930();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v50 = v46;
    *v24 = 136315906;
    *(v24 + 4) = sub_24AC29E20(0xD000000000000025, 0x800000024ACD96E0, &v50);
    *(v24 + 12) = 2082;
    v25 = [v19 identifier];
    sub_24ACD03F0();

    sub_24AC46D0C(&qword_27EF9E4E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v26 = v16;
    v27 = sub_24ACD0C20();
    v29 = v28;
    (*(v47 + 8))(v9, v26);
    v30 = sub_24AC29E20(v27, v29, &v50);

    *(v24 + 14) = v30;
    *(v24 + 22) = 2114;
    v31 = [v20 UUID];
    *(v24 + 24) = v31;
    v32 = v45;
    *v45 = v31;
    *(v24 + 32) = 2082;
    v49 = a3;
    v33 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E0C0, &qword_24ACD4468);
    v34 = sub_24ACD05A0();
    v36 = sub_24AC29E20(v34, v35, &v50);

    *(v24 + 34) = v36;
    _os_log_impl(&dword_24AC18000, v22, v23, "%s %{public}s/%{public}@: error: %{public}s", v24, 0x2Au);
    sub_24AC212F4(v32, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v32, -1, -1);
    v37 = v46;
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v37, -1, -1);
    MEMORY[0x24C22DC60](v24, -1, -1);
  }

  v38 = v48;
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = v19;
  v39[4] = v20;
  v39[5] = a3;
  v40 = v19;
  v41 = v20;
  v42 = a3;
  v43 = v38;
  sub_24ACD0110();
}

uint64_t sub_24AC43F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_24AC43F8C, 0, 0);
}

uint64_t sub_24AC43F8C()
{
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_24AC47C08;
    v3 = v0[4];
    v4 = v0[5];
    v5 = v0[3];

    return sub_24AC3F094(v5, v3, v4);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_24AC4408C(void *a1, void *a2, void *a3)
{
  v7 = sub_24ACD0420();
  v47 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24ACD04C0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *&v3[OBJC_IVAR____TtC15FindMyBluetooth46DelegateTrampoline_CBPeripheralPrivateDelegate_delegateQueue];
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x277D85200], v10);
  v15 = v14;
  LOBYTE(v14) = sub_24ACD04D0();
  v17 = *(v11 + 8);
  v16 = v11 + 8;
  v17(v13, v10);
  if (v14)
  {
    v48 = v3;
    v16 = v7;
    if (qword_27EF9DC40 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v18 = sub_24ACD0490();
  __swift_project_value_buffer(v18, qword_27EF9E028);
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = sub_24ACD0470();
  v23 = sub_24ACD0930();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v50 = v46;
    *v24 = 136315906;
    *(v24 + 4) = sub_24AC29E20(0xD000000000000032, 0x800000024ACD9640, &v50);
    *(v24 + 12) = 2082;
    v25 = [v19 identifier];
    sub_24ACD03F0();

    sub_24AC46D0C(&qword_27EF9E4E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v26 = v16;
    v27 = sub_24ACD0C20();
    v29 = v28;
    (*(v47 + 8))(v9, v26);
    v30 = sub_24AC29E20(v27, v29, &v50);

    *(v24 + 14) = v30;
    *(v24 + 22) = 2114;
    v31 = [v20 UUID];
    *(v24 + 24) = v31;
    v32 = v45;
    *v45 = v31;
    *(v24 + 32) = 2082;
    v49 = a3;
    v33 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E0C0, &qword_24ACD4468);
    v34 = sub_24ACD05A0();
    v36 = sub_24AC29E20(v34, v35, &v50);

    *(v24 + 34) = v36;
    _os_log_impl(&dword_24AC18000, v22, v23, "%s %{public}s/%{public}@: error: %{public}s", v24, 0x2Au);
    sub_24AC212F4(v32, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v32, -1, -1);
    v37 = v46;
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v37, -1, -1);
    MEMORY[0x24C22DC60](v24, -1, -1);
  }

  v38 = v48;
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = v19;
  v39[4] = v20;
  v39[5] = a3;
  v40 = v19;
  v41 = v20;
  v42 = a3;
  v43 = v38;
  sub_24ACD0110();
}

uint64_t sub_24AC44564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_24AC44588, 0, 0);
}

uint64_t sub_24AC44588()
{
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_24AC47C08;
    v3 = v0[4];
    v4 = v0[5];
    v5 = v0[3];

    return sub_24AC40710(v5, v3, v4);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_24AC446A8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24ACD04C0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *&v3[OBJC_IVAR____TtC15FindMyBluetooth46DelegateTrampoline_CBPeripheralPrivateDelegate_delegateQueue];
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);
  v10 = v9;
  LOBYTE(v9) = sub_24ACD04D0();
  result = (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v3;
    *(v12 + 24) = a1;
    v13 = v3;
    v14 = a1;
    sub_24ACD0110();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24AC44814(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24AC44834, 0, 0);
}

uint64_t sub_24AC44834()
{
  Strong = swift_weakLoadStrong();
  v0[4] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_24AC44918;
    v3 = v0[3];

    return sub_24AC41C88(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_24AC44918()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_24AC44AC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DelegateTrampoline_CBPeripheralPrivateDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24AC44B54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC214AC;

  return sub_24AC2F094();
}

uint64_t sub_24AC44C08(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AC214AC;

  return sub_24AC3083C(a1, v4, v8, v5, v6, v7);
}

uint64_t type metadata accessor for Peripheral(uint64_t a1)
{
  result = qword_2814AE190;
  if (!qword_2814AE190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AC44D70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AC214AC;

  return sub_24AC33F4C(a1, v4, v5, v6);
}

uint64_t sub_24AC44EAC(uint64_t a1)
{
  *(a1 + 8) = sub_24AC46D0C(&unk_2814AE1B8, type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  result = sub_24AC46D0C(&qword_2814AE1A0, type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  *(a1 + 16) = result;
  return result;
}

void sub_24AC44F80(uint64_t a1)
{
  sub_24AC4633C(319, &qword_2814AE260, type metadata accessor for Peripheral, MEMORY[0x277D088B0]);
  if (v1 <= 0x3F)
  {
    sub_24AC4633C(319, &qword_2814AE218, MEMORY[0x277D088D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24ACD0360();
      if (v3 <= 0x3F)
      {
        type metadata accessor for PeerPath(319);
        if (v4 <= 0x3F)
        {
          sub_24AC2AA7C(319);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t dispatch thunk of Peripheral.pairingInfo.getter(uint64_t a1)
{
  v6 = (*(*v1 + 352) + **(*v1 + 352));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC214AC;

  return v6(a1);
}

uint64_t dispatch thunk of Peripheral.connect()()
{
  v4 = (*(*v0 + 568) + **(*v0 + 568));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AC214AC;

  return v4();
}

uint64_t dispatch thunk of Peripheral.connect(useCase:options:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 576) + **(*v2 + 576));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AC214AC;

  return v8(a1, a2);
}

uint64_t dispatch thunk of Peripheral.cancelConnection()()
{
  v4 = (*(*v0 + 584) + **(*v0 + 584));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AC214AC;

  return v4();
}

uint64_t dispatch thunk of Peripheral.cancelConnection(options:)(uint64_t a1)
{
  v6 = (*(*v1 + 592) + **(*v1 + 592));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC214AC;

  return v6(a1);
}

uint64_t dispatch thunk of Peripheral.isPaired.getter()
{
  v4 = (*(*v0 + 600) + **(*v0 + 600));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AC2A800;

  return v4();
}

uint64_t dispatch thunk of Peripheral.pair()()
{
  v4 = (*(*v0 + 608) + **(*v0 + 608));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AC214AC;

  return v4();
}

uint64_t dispatch thunk of Peripheral.unpair()()
{
  v4 = (*(*v0 + 616) + **(*v0 + 616));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AC214AC;

  return v4();
}

uint64_t dispatch thunk of Peripheral.set(macAddress:)(uint64_t a1)
{
  v6 = (*(*v1 + 624) + **(*v1 + 624));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC214AC;

  return v6(a1);
}

uint64_t dispatch thunk of Peripheral.discover(serviceIdentifiers:)(uint64_t a1)
{
  v6 = (*(*v1 + 632) + **(*v1 + 632));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC2A800;

  return v6(a1);
}

uint64_t dispatch thunk of Peripheral.subscript.getter(uint64_t a1)
{
  v6 = (*(*v1 + 640) + **(*v1 + 640));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC2BA00;

  return v6(a1);
}

uint64_t dispatch thunk of Peripheral.customPropertyNames.getter()
{
  v4 = (*(*v0 + 688) + **(*v0 + 688));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AC1DF38;

  return v4();
}

void sub_24AC4633C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24AC463C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_24AC4642C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AC214AC;

  return sub_24AC44814(v2, v3);
}

uint64_t sub_24AC464C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AC214AC;

  return sub_24AC44564(v2, v3, v5, v4);
}

uint64_t sub_24AC46570()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AC214AC;

  return sub_24AC43F68(v2, v3, v5, v4);
}

uint64_t sub_24AC4661C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24AC46630(result, a2);
  }

  return result;
}

uint64_t sub_24AC46630(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_24AC46684(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24AC46698(result, a2);
  }

  return result;
}

uint64_t sub_24AC46698(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_24AC466EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_24AC214AC;

  return sub_24AC43850(v2, v3, v4, v5, v7, v6);
}

unint64_t sub_24AC467AC()
{
  result = qword_27EF9E0D8;
  if (!qword_27EF9E0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E0D8);
  }

  return result;
}

uint64_t sub_24AC46800()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AC214AC;

  return sub_24AC43104(v2, v3, v5, v4);
}

uint64_t sub_24AC468AC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AC214AC;

  return sub_24AC42DDC(v2, v3, v4);
}

uint64_t objectdestroy_81Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AC469A4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AC20274;

  return sub_24AC42A04(v2, v3, v5, v4);
}

uint64_t objectdestroy_106Tm(void (*a1)(void))
{
  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t sub_24AC46AA8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AC214AC;

  return sub_24AC42738(v2, v3, v4);
}

uint64_t sub_24AC46B50()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AC214AC;

  return sub_24AC42230(v2, v3);
}

uint64_t sub_24AC46BE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AC46C58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AC214AC;

  return sub_24AC370F8(a1, v4, v5, v6);
}

uint64_t sub_24AC46D0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24AC46D60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_24AC2B940((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_24AC46DAC@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_24AC2B940(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_24AC1BFB8(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_24AC212F4(v21, &qword_27EF9E160, &qword_24ACD45C8);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24AC46F0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AC214AC;

  return sub_24AC36880(a1, v4, v5, v6, v7);
}

uint64_t sub_24AC46FD4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24AC20274;

  return sub_24AC3214C(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_24AC470AC(unsigned __int8 *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E170, &qword_24ACD61D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E068, &qword_24ACD4140);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v30[-v11];
  v13 = *a1;
  if (v13 == 20)
  {
    v14 = type metadata accessor for Peripheral.Options(0);
    v15 = 0;
    if ((*(*(v14 - 8) + 48))(a2, 1, v14) == 1)
    {
      return v15;
    }

    v15 = MEMORY[0x277D84F98];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9DCE0, &unk_24ACD4600);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24ACD39E0;
    *(inited + 32) = sub_24ACD0590();
    *(inited + 40) = v17;
    LOBYTE(v31) = v13;
    v18 = sub_24AC70AE4();
    *(inited + 72) = MEMORY[0x277D84CC0];
    *(inited + 48) = v18;
    v19 = sub_24AC9ED64(inited);
    swift_setDeallocating();
    sub_24AC212F4(inited + 32, qword_27EF9E180, &qword_24ACD3790);
    v20 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v20;
    sub_24AC4753C(v19, sub_24AC46D60, 0, isUniquelyReferenced_nonNull_native, &v31);

    v15 = v31;
  }

  sub_24AC2B5DC(a2, v12, &qword_27EF9E068, &qword_24ACD4140);
  v22 = type metadata accessor for Peripheral.Options(0);
  v23 = *(*(v22 - 8) + 48);
  if (v23(v12, 1, v22) == 1)
  {
    sub_24AC212F4(v12, &qword_27EF9E068, &qword_24ACD4140);
  }

  else
  {
    v24 = sub_24ACA7230();
    sub_24AC47AEC(v12, type metadata accessor for Peripheral.Options);
    if (v24)
    {
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v31 = v15;
      sub_24AC4753C(v24, sub_24AC46D60, 0, v25, &v31);

      v15 = v31;
    }
  }

  sub_24AC2B5DC(a2, v10, &qword_27EF9E068, &qword_24ACD4140);
  if (v23(v10, 1, v22) == 1)
  {
    sub_24AC212F4(v10, &qword_27EF9E068, &qword_24ACD4140);
  }

  else
  {
    sub_24AC2B5DC(&v10[*(v22 + 20)], v6, &unk_27EF9E170, &qword_24ACD61D0);
    sub_24AC47AEC(v10, type metadata accessor for Peripheral.Options);
    v26 = type metadata accessor for PeripheralPairingInfo(0);
    if ((*(*(v26 - 8) + 48))(v6, 1, v26) == 1)
    {
      sub_24AC212F4(v6, &unk_27EF9E170, &qword_24ACD61D0);
    }

    else
    {
      v27 = sub_24ACBD398();
      sub_24AC47AEC(v6, type metadata accessor for PeripheralPairingInfo);
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v31 = v15;
      sub_24AC4753C(v27, sub_24AC46D60, 0, v28, &v31);

      return v31;
    }
  }

  return v15;
}

unint64_t sub_24AC4753C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_24AC46DAC(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_24AC1BFB8(v44, v42);
  v14 = *a5;
  result = sub_24AC2AB50(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_24AC5C328(v20, a4 & 1);
    result = sub_24AC2AB50(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_24ACD0C80();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_24AC5E670();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_0(v25);
    sub_24AC1BFB8(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_24AC1BFB8(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_24AC46DAC(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_24AC1BFB8(v44, v42);
        v32 = *a5;
        result = sub_24AC2AB50(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_24AC5C328(v36, 1);
          result = sub_24AC2AB50(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_0(v31);
          sub_24AC1BFB8(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_24AC1BFB8(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_24AC46DAC(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_24AC4784C(v45);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_24AC47854(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AC214AC;

  return sub_24AC314F8(a1, v4, v5, v6);
}

uint64_t sub_24AC4791C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E068, &qword_24ACD4140);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AC4798C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E068, &qword_24ACD4140) - 8);
  v6 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *(v1 + 32);
  v11 = *(v1 + 40);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24AC214AC;

  return sub_24AC30EBC(a1, v7, v8, v10, v11, v1 + v6, v9);
}

uint64_t sub_24AC47AEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24AC47B4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AC214AC;

  return sub_24AC9D730(a1, v4);
}

uint64_t sub_24AC47C2C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24AC47CC0()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_24AC47D84(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v7 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_24AC2B940(*(a1 + 56) + 32 * v11, v33);
    v32[0] = v14;
    v32[1] = v13;
    *&v29 = v14;
    *(&v29 + 1) = v13;
    v15 = v34;
    v16 = __swift_project_boxed_opaque_existential_0(v33, v34);
    *(&v31 + 1) = v15;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v30);
    (*(*(v15 - 8) + 16))(boxed_opaque_existential_0, v16, v15);
    swift_bridgeObjectRetain_n();
    sub_24AC212F4(v32, &qword_27EF9E210, &qword_24ACD4670);
    if (*(&v29 + 1))
    {
      v26 = v29;
      v27 = v30;
      v28 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_24AC1D31C(0, v8[2] + 1, 1, v8);
      }

      v19 = v8[2];
      v18 = v8[3];
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v22 = sub_24AC1D31C((v18 > 1), v19 + 1, 1, v8);
        v20 = v19 + 1;
        v8 = v22;
      }

      v8[2] = v20;
      v21 = &v8[6 * v19];
      v21[3] = v27;
      v21[4] = v28;
      v21[2] = v26;
    }

    else
    {
      sub_24AC212F4(&v29, &qword_27EF9E218, &qword_24ACD4678);
    }
  }

  while (1)
  {
    v7 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v7);
    ++v9;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  if (v8[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E710, &unk_24ACD4680);
    v23 = sub_24ACD0B60();
  }

  else
  {
    v23 = MEMORY[0x277D84F98];
  }

  v32[0] = v23;

  sub_24AC480DC(v24, 1, v32);

  return v32[0];
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_24AC480DC(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  sub_24AC48498(a1 + 32, &v44);
  v8 = v44;
  v7 = v45;
  v42 = v44;
  v43 = v45;
  sub_24AC1BFB8(v46, v41);
  v9 = *a3;
  v10 = sub_24AC2AB50(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_24AC5C328(v15, a2 & 1);
    v10 = sub_24AC2AB50(v8, v7);
    if ((v16 & 1) != (v17 & 1))
    {
LABEL_5:
      sub_24ACD0C80();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_24AC5E670();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v47 = v18;
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC00, &qword_24ACD4690);
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_0(v41);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  sub_24AC1BFB8(v41, (v21[7] + 32 * v10));
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v14)
  {
    v21[2] = v24;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v25 = a1 + 80;
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      sub_24AC48498(v25, &v44);
      v28 = v44;
      v27 = v45;
      v42 = v44;
      v43 = v45;
      sub_24AC1BFB8(v46, v41);
      v29 = *a3;
      v30 = sub_24AC2AB50(v28, v27);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v14 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v14)
      {
        goto LABEL_23;
      }

      v35 = v31;
      if (v29[3] < v34)
      {
        sub_24AC5C328(v34, 1);
        v30 = sub_24AC2AB50(v28, v27);
        if ((v35 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v35)
      {
        goto LABEL_9;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v28;
      v38[1] = v27;
      sub_24AC1BFB8(v41, (v37[7] + 32 * v30));
      v39 = v37[2];
      v14 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v26;
      v37[2] = v40;
      v25 += 48;
      if (v4 == v26)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_24ACD0A20();
  MEMORY[0x24C22CD50](0xD00000000000001BLL, 0x800000024ACD9B00);
  sub_24ACD0B10();
  MEMORY[0x24C22CD50](39, 0xE100000000000000);
  sub_24ACD0B20();
  __break(1u);
}

uint64_t sub_24AC48498(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EF9E180, &qword_24ACD3790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AC48538(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E0F0, &qword_24ACD44C0);
  v2[31] = v4;
  v2[32] = *(v4 - 8);
  v2[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E0E8, &qword_24ACD44B8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = type metadata accessor for PeerPath(0);
  v2[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC48730, v1, 0);
}

uint64_t sub_24AC48730()
{
  v68 = v0;
  if (qword_27EF9DC48 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = sub_24ACD0490();
  __swift_project_value_buffer(v2, qword_27EF9E220);

  v3 = v1;
  v4 = sub_24ACD0470();
  v5 = sub_24ACD0930();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[36];
    v7 = v0[37];
    v8 = v0[24];
    v66 = v0[23];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v67 = v11;
    *v9 = 136446722;
    sub_24AC2A3DC(v8 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_peerPath, v7);
    v12 = (v7 + *(v6 + 32));
    v14 = *v12;
    v13 = v12[1];

    sub_24AC234B4(v7);
    v15 = sub_24AC29E20(v14, v13, &v67);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2082;
    v16 = sub_24AC52ADC();
    v18 = sub_24AC29E20(v16, v17, &v67);

    *(v9 + 14) = v18;
    *(v9 + 22) = 2114;
    v19 = v66;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v20;
    *v10 = v20;
    _os_log_impl(&dword_24AC18000, v4, v5, "%{public}s: Invalidate characteristic: %{public}s error %{public}@", v9, 0x20u);
    sub_24AC212F4(v10, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v11, -1, -1);
    MEMORY[0x24C22DC60](v9, -1, -1);
  }

  v21 = v0[35];
  v22 = v0[31];
  v23 = v0[32];
  v24 = v0[24];
  v25 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_updateValueContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v24 + v25, v21, &qword_27EF9E0E8, &qword_24ACD44B8);
  v26 = (*(v23 + 48))(v21, 1, v22);
  v27 = v0[35];
  if (v26)
  {
    sub_24AC212F4(v0[35], &qword_27EF9E0E8, &qword_24ACD44B8);
  }

  else
  {
    v29 = v0[32];
    v28 = v0[33];
    v30 = v0[31];
    v31 = v0[23];
    (*(v29 + 16))(v28, v0[35], v30);
    sub_24AC212F4(v27, &qword_27EF9E0E8, &qword_24ACD44B8);
    v0[22] = v31;
    v32 = v31;
    sub_24ACD08A0();
    (*(v29 + 8))(v28, v30);
  }

  v33 = v0[34];
  (*(v0[32] + 56))(v33, 1, 1, v0[31]);
  swift_beginAccess();
  sub_24AC463C4(v33, v24 + v25, &qword_27EF9E0E8, &qword_24ACD44B8);
  swift_endAccess();
  if ((sub_24ACD0840() & 1) == 0)
  {
    v34 = v0[30];
    v35 = v0[25];
    v36 = v0[26];
    v37 = v0[24];
    v38 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_writeValueContinuation;
    swift_beginAccess();
    sub_24AC2B5DC(v37 + v38, v34, &qword_27EF9E4F0, &unk_24ACD4130);
    v39 = *(v36 + 48);
    v40 = v39(v34, 1, v35);
    v41 = v0[30];
    if (v40)
    {
      sub_24AC212F4(v0[30], &qword_27EF9E4F0, &unk_24ACD4130);
    }

    else
    {
      v43 = v0[26];
      v42 = v0[27];
      v44 = v0[25];
      v45 = v0[23];
      (*(v43 + 16))(v42, v0[30], v44);
      sub_24AC212F4(v41, &qword_27EF9E4F0, &unk_24ACD4130);
      v0[21] = v45;
      v46 = v45;
      sub_24ACD0750();
      (*(v43 + 8))(v42, v44);
    }

    v47 = v0[29];
    v49 = v0[24];
    v48 = v0[25];
    v50 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_notificationStateContinuation;
    swift_beginAccess();
    sub_24AC2B5DC(v49 + v50, v47, &qword_27EF9E4F0, &unk_24ACD4130);
    v51 = v39(v47, 1, v48);
    v52 = v0[29];
    if (v51)
    {
      sub_24AC212F4(v0[29], &qword_27EF9E4F0, &unk_24ACD4130);
    }

    else
    {
      v54 = v0[26];
      v53 = v0[27];
      v55 = v0[25];
      v56 = v0[23];
      (*(v54 + 16))(v53, v0[29], v55);
      sub_24AC212F4(v52, &qword_27EF9E4F0, &unk_24ACD4130);
      v0[20] = v56;
      v57 = v56;
      sub_24ACD0750();
      (*(v54 + 8))(v53, v55);
    }
  }

  v58 = v0[28];
  v59 = v0[25];
  v60 = v0[24];
  v61 = *(v0[26] + 56);
  v61(v58, 1, 1, v59);
  v62 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_writeValueContinuation;
  swift_beginAccess();
  sub_24AC463C4(v58, v60 + v62, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();
  v61(v58, 1, 1, v59);
  v63 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_notificationStateContinuation;
  swift_beginAccess();
  sub_24AC463C4(v58, v60 + v63, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();
  *(v60 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_updatingState) = 0;

  v64 = v0[1];

  return v64();
}

uint64_t sub_24AC48E28(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = type metadata accessor for PeerPath(0);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC48F68, v1, 0);
}

uint64_t sub_24AC48F68()
{
  v48 = v0;
  if (qword_27EF9DC48 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_24ACD0490();
  __swift_project_value_buffer(v2, qword_27EF9E220);

  v3 = v1;
  v4 = sub_24ACD0470();
  v5 = sub_24ACD0930();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[16];
    v7 = v0[17];
    v8 = v0[10];
    v44 = v0[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v47[0] = v11;
    *v9 = 136446466;
    sub_24AC2A3DC(v8 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_peerPath, v7);
    v12 = (v7 + *(v6 + 32));
    v14 = *v12;
    v13 = v12[1];

    sub_24AC234B4(v7);
    v15 = sub_24AC29E20(v14, v13, v47);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2114;
    v16 = v44;
    if (v44)
    {
      v17 = v1;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      v16 = v18;
    }

    else
    {
      v18 = 0;
    }

    *(v9 + 14) = v18;
    *v10 = v16;
    _os_log_impl(&dword_24AC18000, v4, v5, "%{public}s: writeValueContinuation with error %{public}@", v9, 0x16u);
    sub_24AC212F4(v10, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C22DC60](v11, -1, -1);
    MEMORY[0x24C22DC60](v9, -1, -1);
  }

  else
  {
  }

  v19 = v0[13];
  v20 = v0[14];
  v21 = v0[12];
  v22 = v0[10];
  v23 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_writeValueContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v22 + v23, v21, &qword_27EF9E4F0, &unk_24ACD4130);
  if ((*(v20 + 48))(v21, 1, v19) == 1)
  {
    sub_24AC212F4(v0[12], &qword_27EF9E4F0, &unk_24ACD4130);
    type metadata accessor for CentralManager.Error(0);
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v24 = v0[1];
  }

  else
  {
    v25 = v0[9];
    (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
    if (v25)
    {
      v0[8] = v1;
      v26 = v1;
      sub_24ACD0750();
    }

    else
    {
      sub_24ACD0760();
    }

    v27 = sub_24ACD0470();
    v28 = sub_24ACD0930();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = v0[16];
      v30 = v0[17];
      v43 = v0[14];
      v45 = v0[13];
      v46 = v0[15];
      v31 = v0[10];
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v47[0] = v33;
      *v32 = 136446210;
      sub_24AC2A3DC(v31 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_peerPath, v30);
      v34 = (v30 + *(v29 + 32));
      v35 = *v34;
      v36 = v34[1];

      sub_24AC234B4(v30);
      v37 = sub_24AC29E20(v35, v36, v47);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_24AC18000, v27, v28, "%{public}s: Clearing writeValueContinuation", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x24C22DC60](v33, -1, -1);
      MEMORY[0x24C22DC60](v32, -1, -1);

      (*(v43 + 8))(v46, v45);
    }

    else
    {
      v39 = v0[14];
      v38 = v0[15];
      v40 = v0[13];

      (*(v39 + 8))(v38, v40);
    }

    v41 = v0[11];
    (*(v0[14] + 56))(v41, 1, 1, v0[13]);
    swift_beginAccess();
    sub_24AC463C4(v41, v22 + v23, &qword_27EF9E4F0, &unk_24ACD4130);
    swift_endAccess();

    v24 = v0[1];
  }

  return v24();
}

uint64_t sub_24AC4952C(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = type metadata accessor for PeerPath(0);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC4966C, v1, 0);
}

uint64_t sub_24AC4966C()
{
  v48 = v0;
  if (qword_27EF9DC48 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_24ACD0490();
  __swift_project_value_buffer(v2, qword_27EF9E220);

  v3 = v1;
  v4 = sub_24ACD0470();
  v5 = sub_24ACD0930();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[16];
    v7 = v0[17];
    v8 = v0[10];
    v44 = v0[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v47[0] = v11;
    *v9 = 136446466;
    sub_24AC2A3DC(v8 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_peerPath, v7);
    v12 = (v7 + *(v6 + 32));
    v14 = *v12;
    v13 = v12[1];

    sub_24AC234B4(v7);
    v15 = sub_24AC29E20(v14, v13, v47);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2114;
    v16 = v44;
    if (v44)
    {
      v17 = v1;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      v16 = v18;
    }

    else
    {
      v18 = 0;
    }

    *(v9 + 14) = v18;
    *v10 = v16;
    _os_log_impl(&dword_24AC18000, v4, v5, "%{public}s: updateNotificationState with error %{public}@", v9, 0x16u);
    sub_24AC212F4(v10, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C22DC60](v11, -1, -1);
    MEMORY[0x24C22DC60](v9, -1, -1);
  }

  else
  {
  }

  v19 = v0[13];
  v20 = v0[14];
  v21 = v0[12];
  v22 = v0[10];
  v23 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_notificationStateContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v22 + v23, v21, &qword_27EF9E4F0, &unk_24ACD4130);
  if ((*(v20 + 48))(v21, 1, v19) == 1)
  {
    sub_24AC212F4(v0[12], &qword_27EF9E4F0, &unk_24ACD4130);
    type metadata accessor for CentralManager.Error(0);
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v24 = v0[1];
  }

  else
  {
    v25 = v0[9];
    (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
    if (v25)
    {
      v0[8] = v1;
      v26 = v1;
      sub_24ACD0750();
    }

    else
    {
      sub_24ACD0760();
    }

    v27 = sub_24ACD0470();
    v28 = sub_24ACD0930();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = v0[16];
      v30 = v0[17];
      v43 = v0[14];
      v45 = v0[13];
      v46 = v0[15];
      v31 = v0[10];
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v47[0] = v33;
      *v32 = 136446210;
      sub_24AC2A3DC(v31 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_peerPath, v30);
      v34 = (v30 + *(v29 + 32));
      v35 = *v34;
      v36 = v34[1];

      sub_24AC234B4(v30);
      v37 = sub_24AC29E20(v35, v36, v47);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_24AC18000, v27, v28, "%{public}s: Clearing notificationStateContinuation", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x24C22DC60](v33, -1, -1);
      MEMORY[0x24C22DC60](v32, -1, -1);

      (*(v43 + 8))(v46, v45);
    }

    else
    {
      v39 = v0[14];
      v38 = v0[15];
      v40 = v0[13];

      (*(v39 + 8))(v38, v40);
    }

    v41 = v0[11];
    (*(v0[14] + 56))(v41, 1, 1, v0[13]);
    swift_beginAccess();
    sub_24AC463C4(v41, v22 + v23, &qword_27EF9E4F0, &unk_24ACD4130);
    swift_endAccess();

    v24 = v0[1];
  }

  return v24();
}

uint64_t sub_24AC49C30()
{
  v0 = sub_24ACD0490();
  __swift_allocate_value_buffer(v0, qword_27EF9E220);
  v1 = __swift_project_value_buffer(v0, qword_27EF9E220);
  if (qword_2814AD278 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814AD280);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t Characteristic.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_id;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24AC49D7C@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_underlyingObject) properties];

  return sub_24AC1C24C(v3, a1);
}

uint64_t sub_24AC49DF4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E110, &unk_24ACD4540);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DFE0, &qword_24ACD4098);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = type metadata accessor for PeerPath(0);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v7 = sub_24ACD0420();
  v3[21] = v7;
  v3[22] = *(v7 - 8);
  v3[23] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v3[24] = v8;
  v3[25] = *(v8 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC4A128, 0, 0);
}

uint64_t sub_24AC4A128()
{
  v1 = v0[27];
  v2 = v0[24];
  v58 = v0[25];
  v64 = v0[23];
  v61 = v0[22];
  v62 = v0[21];
  v60 = v0[19];
  v76 = v0[18];
  v3 = v0[17];
  v78 = v0[16];
  v65 = v0[15];
  v66 = v0[14];
  v80 = v0[13];
  v59 = v0[12];
  v63 = v0[10];
  v72 = v0[11];
  v74 = v0[9];
  v68 = v0[6];
  v70 = v0[5];
  v4 = v0[4];
  v56 = v0[3];
  v5 = v0[2];
  swift_defaultActor_initialize();
  *(v4 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_updatingState) = 0;
  v6 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_updateValueContinuation;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E0F0, &qword_24ACD44C0);
  (*(*(v7 - 8) + 56))(v4 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_writeValueContinuation;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v10 = *(*(v9 - 8) + 56);
  v10(v4 + v8, 1, 1, v9);
  v10(v4 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_notificationStateContinuation, 1, 1, v9);
  swift_weakInit();
  v11 = *(v56 + 16);
  *(v4 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_underlyingObject) = v11;
  v12 = [v11 UUID];
  CBUUID.uuidValue.getter(v64);

  type metadata accessor for Characteristic(0);
  sub_24ACD0000();
  v13 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_id;
  v54 = *(v58 + 32);
  v54(v4 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_id, v1, v2);
  swift_weakAssign();
  v14 = v5 + OBJC_IVAR____TtC15FindMyBluetooth7Service_peerPath;
  v57 = *(v78 + 16);
  v57(v3, v5 + OBJC_IVAR____TtC15FindMyBluetooth7Service_peerPath, v65);
  v55 = *(v80 + 16);
  v55(v66, v14 + v76[5], v59);
  (*(v68 + 16))(v72, v5 + OBJC_IVAR____TtC15FindMyBluetooth7Service_id, v70);
  (*(v68 + 56))(v72, 0, 1, v70);
  (*(v58 + 16))(v74, v4 + v13, v2);
  (*(v58 + 56))(v74, 0, 1, v2);
  v57(v60, v3, v65);
  v55(v60 + v76[5], v66, v59);
  sub_24AC2B5DC(v72, v60 + v76[6], &qword_27EF9DFE0, &qword_24ACD4098);
  sub_24AC2B5DC(v74, v60 + v76[7], &unk_27EF9E110, &unk_24ACD4540);
  sub_24ACCFFE0();
  sub_24AC54A58(&qword_27EF9E4E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v15 = sub_24ACD0C20();
  v17 = v16;
  v18 = *(v61 + 8);
  v18(v64, v62);
  MEMORY[0x24C22CD50](47, 0xE100000000000000);
  sub_24ACCFFE0();
  v19 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v19);

  v18(v64, v62);
  v83 = v15;
  v84 = v17;
  sub_24AC2B5DC(v72, v63, &qword_27EF9DFE0, &qword_24ACD4098);
  if ((*(v68 + 48))(v63, 1, v70) == 1)
  {
    sub_24AC212F4(v0[10], &qword_27EF9DFE0, &qword_24ACD4098);
  }

  else
  {
    v20 = v0[23];
    v81 = v18;
    v21 = v0[21];
    v23 = v0[6];
    v22 = v0[7];
    v24 = v0[5];
    (*(v23 + 32))(v22, v0[10], v24);
    sub_24ACCFFE0();
    v25 = shortCBUUIDDescription(uuid:)(v20);
    v27 = v26;
    v28 = v21;
    v18 = v81;
    v81(v20, v28);
    MEMORY[0x24C22CD50](v25, v27);

    MEMORY[0x24C22CD50](47, 0xE100000000000000);

    (*(v23 + 8))(v22, v24);
  }

  v29 = v0[24];
  v30 = v0[25];
  v31 = v0[8];
  sub_24AC2B5DC(v0[9], v31, &unk_27EF9E110, &unk_24ACD4540);
  if ((*(v30 + 48))(v31, 1, v29) == 1)
  {
    v33 = v0[16];
    v32 = v0[17];
    v35 = v0[14];
    v34 = v0[15];
    v36 = v0[12];
    v37 = v0[13];
    v38 = v0[11];
    v39 = v0[8];
    sub_24AC212F4(v0[9], &unk_27EF9E110, &unk_24ACD4540);
    sub_24AC212F4(v38, &qword_27EF9DFE0, &qword_24ACD4098);
    (*(v37 + 8))(v35, v36);
    (*(v33 + 8))(v32, v34);
    sub_24AC212F4(v39, &unk_27EF9E110, &unk_24ACD4540);
  }

  else
  {
    v40 = v0[25];
    v41 = v0[26];
    v42 = v0[23];
    v43 = v0[24];
    v67 = v0[21];
    v77 = v0[16];
    v79 = v0[15];
    v82 = v0[17];
    v44 = v0[13];
    v73 = v0[12];
    v75 = v0[14];
    v69 = v0[9];
    v71 = v0[11];
    v54(v41, v0[8], v43);
    sub_24ACCFFE0();
    v45 = shortCBUUIDDescription(uuid:)(v42);
    v46 = v18;
    v48 = v47;
    v46(v42, v67);
    MEMORY[0x24C22CD50](v45, v48);

    MEMORY[0x24C22CD50](47, 0xE100000000000000);

    (*(v40 + 8))(v41, v43);
    sub_24AC212F4(v69, &unk_27EF9E110, &unk_24ACD4540);
    sub_24AC212F4(v71, &qword_27EF9DFE0, &qword_24ACD4098);
    (*(v44 + 8))(v75, v73);
    (*(v77 + 8))(v82, v79);
  }

  v49 = v0[19];
  v50 = v0[20];
  v51 = v0[4];
  v52 = (v49 + *(v0[18] + 32));
  *v52 = v83;
  v52[1] = v84;
  sub_24AC2B644(v49, v50);
  sub_24AC2B644(v50, v51 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_peerPath);

  return MEMORY[0x2822009F8](sub_24AC4A990, v51, 0);
}

uint64_t sub_24AC4A990()
{
  v13 = v0;
  if (qword_27EF9DC48 != -1)
  {
    swift_once();
  }

  v1 = sub_24ACD0490();
  __swift_project_value_buffer(v1, qword_27EF9E220);

  v2 = sub_24ACD0470();
  v3 = sub_24ACD0900();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    v6 = sub_24ACA2CB0();
    v8 = sub_24AC29E20(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_24AC18000, v2, v3, "%s init", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C22DC60](v5, -1, -1);
    MEMORY[0x24C22DC60](v4, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 8);
  v10 = *(v0 + 32);

  return v9(v10);
}

uint64_t Characteristic.deinit()
{
  v1 = v0;
  if (qword_27EF9DC48 != -1)
  {
    swift_once();
  }

  v2 = sub_24ACD0490();
  __swift_project_value_buffer(v2, qword_27EF9E220);

  v3 = sub_24ACD0470();
  v4 = sub_24ACD0900();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = sub_24AC52ADC();
    v9 = sub_24AC29E20(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_24AC18000, v3, v4, "%s deinit", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C22DC60](v6, -1, -1);
    MEMORY[0x24C22DC60](v5, -1, -1);
  }

  v10 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_id;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  (*(*(v11 - 8) + 8))(v1 + v10, v11);
  sub_24AC234B4(v1 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_peerPath);
  sub_24AC212F4(v1 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_updateValueContinuation, &qword_27EF9E0E8, &qword_24ACD44B8);
  sub_24AC212F4(v1 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_writeValueContinuation, &qword_27EF9E4F0, &unk_24ACD4130);
  sub_24AC212F4(v1 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_notificationStateContinuation, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_weakDestroy();

  swift_defaultActor_destroy();
  return v1;
}

uint64_t Characteristic.__deallocating_deinit()
{
  Characteristic.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AC4AE6C()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 24) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24AC4AF94, Strong, 0);
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_24AC4AF94()
{
  Strong = swift_weakLoadStrong();
  v0[4] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_24AC4B0A4;
  }

  else
  {
    v4 = v0[2];
    type metadata accessor for CentralManager.Error(0);
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    v0[6] = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v3 = sub_24AC32D74;
    v2 = v4;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_24AC4B0A4()
{
  v1 = v0[3];
  v0[5] = [*(v0[4] + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject) maximumWriteValueLengthForType_];

  return MEMORY[0x2822009F8](sub_24AC4B12C, v1, 0);
}

uint64_t sub_24AC4B12C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_24AC4B198, v1, 0);
}

uint64_t sub_24AC4B198()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 40);

  return v1(v2);
}

uint64_t sub_24AC4B200(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = type metadata accessor for PeerPath(0);
  v2[11] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E248, &qword_24ACD46A8);
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E0E8, &qword_24ACD44B8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC4B334, v1, 0);
}

uint64_t sub_24AC4B334()
{
  v31 = v0;
  Strong = swift_weakLoadStrong();
  v0[16] = Strong;
  if (!Strong)
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_9:

    v8 = v0[1];

    return v8();
  }

  v2 = Strong;
  v3 = *(v0[9] + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_underlyingObject);
  v0[17] = v3;
  sub_24AC1C24C([v3 properties], v30);
  if ((v30[0] & 2) == 0)
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    *v4 = 2;
LABEL_8:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_9;
  }

  v5 = v0[9];
  v6 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_updatingState;
  v7 = *(v5 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_updatingState);
  if (v7 == 2 || v7 == 1)
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    goto LABEL_8;
  }

  v10 = v0[15];
  v11 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_updateValueContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v5 + v11, v10, &qword_27EF9E0E8, &qword_24ACD44B8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E0F0, &qword_24ACD44C0);
  LODWORD(v11) = (*(*(v12 - 8) + 48))(v10, 1, v12);
  sub_24AC212F4(v10, &qword_27EF9E0E8, &qword_24ACD44B8);
  if (v11 != 1)
  {
    return sub_24AC4BE00();
  }

  v13 = v0[13];
  v14 = v0[14];
  v15 = v0[12];
  *(v5 + v6) = 1;
  (*(v13 + 104))(v14, *MEMORY[0x277D858A0], v15);
  sub_24ACD08D0();
  if (qword_27EF9DC48 != -1)
  {
    swift_once();
  }

  v16 = sub_24ACD0490();
  __swift_project_value_buffer(v16, qword_27EF9E220);

  v17 = sub_24ACD0470();
  v18 = sub_24ACD0930();

  if (os_log_type_enabled(v17, v18))
  {
    v20 = v0[10];
    v19 = v0[11];
    v21 = v0[9];
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v30[0] = v23;
    *v22 = 136446210;
    sub_24AC2A3DC(v21 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_peerPath, v19);
    v24 = (v19 + *(v20 + 32));
    v25 = *v24;
    v26 = v24[1];

    sub_24AC234B4(v19);
    v27 = sub_24AC29E20(v25, v26, v30);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_24AC18000, v17, v18, "%{public}s: read()", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x24C22DC60](v23, -1, -1);
    MEMORY[0x24C22DC60](v22, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DFF8, &qword_24ACD40B0);
  inited = swift_initStackObject();
  v0[18] = inited;
  *(inited + 16) = v3;
  v29 = v3;

  return MEMORY[0x2822009F8](sub_24AC4B908, v2, 0);
}

uint64_t sub_24AC4B908()
{
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[20] = v2;
    *v2 = v0;
    v2[1] = sub_24AC4BA8C;
    v3 = v0[18];

    return sub_24AC2BA08(v3);
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    v5 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v0[22] = v5;
    v6 = v0[9];

    return MEMORY[0x2822009F8](sub_24AC4BD30, v6, 0);
  }
}

uint64_t sub_24AC4BA8C()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    v4 = sub_24AC4BCB8;
  }

  else
  {
    v4 = sub_24AC4BBB8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC4BBB8()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 72);

  return MEMORY[0x2822009F8](sub_24AC4BC2C, v2, 0);
}

uint64_t sub_24AC4BC2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC4BCB8()
{

  v0[22] = v0[21];
  v1 = v0[9];

  return MEMORY[0x2822009F8](sub_24AC4BD30, v1, 0);
}

uint64_t sub_24AC4BD30()
{
  v1 = *(v0 + 64);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E250, &qword_24ACD46B0);
  (*(*(v2 - 8) + 8))(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AC4BE00()
{
  v1 = type metadata accessor for PeerPath(0);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_updatingState))
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
  }

  else
  {
    v5 = v2;
    if (qword_27EF9DC48 != -1)
    {
      swift_once();
    }

    v6 = sub_24ACD0490();
    __swift_project_value_buffer(v6, qword_27EF9E220);

    v7 = v0;
    v8 = sub_24ACD0470();
    v9 = sub_24ACD0920();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136446210;
      sub_24AC2A3DC(v7 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_peerPath, v4);
      v12 = &v4[*(v5 + 32)];
      v13 = *v12;
      v14 = v12[1];

      sub_24AC234B4(v4);
      v15 = sub_24AC29E20(v13, v14, &v18);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_24AC18000, v8, v9, "%{public}s: Unexpectedly in .idle updateMode while having a continuation!", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x24C22DC60](v11, -1, -1);
      MEMORY[0x24C22DC60](v10, -1, -1);
    }

    type metadata accessor for CentralManager.Error(0);
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
  }

  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_24AC4C130()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC20274;

  return sub_24AC4C1C0();
}

uint64_t sub_24AC4C1C0()
{
  v1[12] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v1[13] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E0F0, &qword_24ACD44C0);
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E0E8, &qword_24ACD44B8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = type metadata accessor for PeerPath(0);
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC4C338, v0, 0);
}

uint64_t sub_24AC4C338()
{
  v53 = v0;
  if (qword_27EF9DC48 != -1)
  {
    swift_once();
  }

  v1 = sub_24ACD0490();
  __swift_project_value_buffer(v1, qword_27EF9E220);

  v2 = sub_24ACD0470();
  v3 = sub_24ACD0930();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[19];
    v4 = v0[20];
    v6 = v0[12];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v52 = v8;
    *v7 = 136446210;
    sub_24AC2A3DC(v6 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_peerPath, v4);
    v9 = (v4 + *(v5 + 32));
    v10 = *v9;
    v11 = v9[1];

    sub_24AC234B4(v4);
    v12 = sub_24AC29E20(v10, v11, &v52);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_24AC18000, v2, v3, "%{public}s: Setting updatingState to .idle", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C22DC60](v8, -1, -1);
    MEMORY[0x24C22DC60](v7, -1, -1);
  }

  *(v0[12] + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_updatingState) = 0;

  v13 = sub_24ACD0470();
  v14 = sub_24ACD0930();

  if (os_log_type_enabled(v13, v14))
  {
    v16 = v0[19];
    v15 = v0[20];
    v17 = v0[12];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v52 = v19;
    *v18 = 136446210;
    sub_24AC2A3DC(v17 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_peerPath, v15);
    v20 = (v15 + *(v16 + 32));
    v21 = *v20;
    v22 = v20[1];

    sub_24AC234B4(v15);
    v23 = sub_24AC29E20(v21, v22, &v52);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_24AC18000, v13, v14, "%{public}s: Clearing updateValueContinuation", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x24C22DC60](v19, -1, -1);
    MEMORY[0x24C22DC60](v18, -1, -1);
  }

  v24 = v0[18];
  v25 = v0[14];
  v26 = v0[15];
  v27 = v0[12];
  v28 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_updateValueContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v27 + v28, v24, &qword_27EF9E0E8, &qword_24ACD44B8);
  v29 = (*(v26 + 48))(v24, 1, v25);
  v30 = v0[18];
  if (v29)
  {
    sub_24AC212F4(v0[18], &qword_27EF9E0E8, &qword_24ACD44B8);
  }

  else
  {
    v32 = v0[15];
    v31 = v0[16];
    v33 = v0[14];
    (*(v32 + 16))(v31, v0[18], v33);
    sub_24AC212F4(v30, &qword_27EF9E0E8, &qword_24ACD44B8);
    v0[11] = 0;
    sub_24ACD08A0();
    (*(v32 + 8))(v31, v33);
  }

  v34 = v0[17];
  (*(v0[15] + 56))(v34, 1, 1, v0[14]);
  swift_beginAccess();
  sub_24AC463C4(v34, v27 + v28, &qword_27EF9E0E8, &qword_24ACD44B8);
  swift_endAccess();

  v35 = sub_24ACD0470();
  v36 = sub_24ACD0930();

  if (os_log_type_enabled(v35, v36))
  {
    v38 = v0[19];
    v37 = v0[20];
    v39 = v0[12];
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v52 = v41;
    *v40 = 136446210;
    sub_24AC2A3DC(v39 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_peerPath, v37);
    v42 = (v37 + *(v38 + 32));
    v43 = *v42;
    v44 = v42[1];

    sub_24AC234B4(v37);
    v45 = sub_24AC29E20(v43, v44, &v52);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_24AC18000, v35, v36, "%{public}s: Clearing notificationStateContinuation", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x24C22DC60](v41, -1, -1);
    MEMORY[0x24C22DC60](v40, -1, -1);
  }

  v47 = v0[12];
  v46 = v0[13];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  (*(*(v48 - 8) + 56))(v46, 1, 1, v48);
  v49 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_notificationStateContinuation;
  swift_beginAccess();
  sub_24AC463C4(v46, v47 + v49, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();

  v50 = v0[1];

  return v50();
}

uint64_t sub_24AC4C950()
{
  v1[5] = v0;
  v1[6] = type metadata accessor for PeerPath(0);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC4C9E4, v0, 0);
}

uint64_t sub_24AC4C9E4()
{
  v22 = v0;
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (!Strong)
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_5;
  }

  v2 = Strong;
  v3 = *(v0[5] + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_underlyingObject);
  v0[9] = v3;
  sub_24AC1C24C([v3 properties], v21);
  if ((v21[0] & 2) == 0)
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    *v4 = 2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

LABEL_5:

    v5 = v0[1];

    return v5();
  }

  if (qword_27EF9DC48 != -1)
  {
    swift_once();
  }

  v7 = sub_24ACD0490();
  __swift_project_value_buffer(v7, qword_27EF9E220);

  v8 = sub_24ACD0470();
  v9 = sub_24ACD0930();

  if (os_log_type_enabled(v8, v9))
  {
    v11 = v0[6];
    v10 = v0[7];
    v12 = v0[5];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21[0] = v14;
    *v13 = 136446210;
    sub_24AC2A3DC(v12 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_peerPath, v10);
    v15 = (v10 + *(v11 + 32));
    v16 = *v15;
    v17 = v15[1];

    sub_24AC234B4(v10);
    v18 = sub_24AC29E20(v16, v17, v21);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_24AC18000, v8, v9, "%{public}s: read()", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C22DC60](v14, -1, -1);
    MEMORY[0x24C22DC60](v13, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DFF8, &qword_24ACD40B0);
  inited = swift_initStackObject();
  v0[10] = inited;
  *(inited + 16) = v3;
  v20 = v3;

  return MEMORY[0x2822009F8](sub_24AC4CD70, v2, 0);
}

uint64_t sub_24AC4CD70()
{
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_24AC4CEDC;
    v3 = v0[10];

    return sub_24AC2BA08(v3);
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    v5 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v0[14] = v5;
    v6 = v0[5];

    return MEMORY[0x2822009F8](sub_24AC4D158, v6, 0);
  }
}

uint64_t sub_24AC4CEDC()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_24AC4D0E8;
  }

  else
  {
    v4 = sub_24AC4D008;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC4D008()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_24AC4D07C, v2, 0);
}

uint64_t sub_24AC4D07C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC4D0E8()
{

  v0[14] = v0[13];
  v1 = v0[5];

  return MEMORY[0x2822009F8](sub_24AC4D158, v1, 0);
}

uint64_t sub_24AC4D158()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AC4D1C8(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v2[13] = type metadata accessor for PeerPath(0);
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC4D2A0, v1, 0);
}

uint64_t sub_24AC4D2A0()
{
  v17 = v0;
  v1 = v0[11];
  v2 = *(v1 + 16);
  v0[17] = v2;
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = (v1 + 40);
  do
  {
    v4 = *(v3 - 1);
    v5 = *v3 >> 62;
    if (v5 > 1)
    {
      if (v5 != 2 || *(v4 + 16) == *(v4 + 24))
      {
        goto LABEL_11;
      }
    }

    else if (v5)
    {
      if (v4 == v4 >> 32)
      {
        goto LABEL_11;
      }
    }

    else if ((*v3 & 0xFF000000000000) == 0)
    {
      goto LABEL_11;
    }

    v3 += 2;
    --v2;
  }

  while (v2);
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (!Strong)
  {
LABEL_11:
    type metadata accessor for CentralManager.Error(0);
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_12:

    v6 = v0[1];

    return v6();
  }

  v9 = v0[16];
  v10 = v0[12];
  v11 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_writeValueContinuation;
  v0[19] = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_writeValueContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v10 + v11, v9, &qword_27EF9E4F0, &unk_24ACD4130);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v0[20] = v12;
  v13 = *(v12 - 8);
  v0[21] = v13;
  LODWORD(v10) = (*(v13 + 48))(v9, 1, v12);
  sub_24AC212F4(v9, &qword_27EF9E4F0, &unk_24ACD4130);
  if (v10 != 1)
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    goto LABEL_21;
  }

  sub_24AC1C24C([*(v0[12] + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_underlyingObject) properties], &v16);
  if ((v16 & 8) == 0)
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    *v14 = 8;
LABEL_21:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_12;
  }

  v15 = swift_task_alloc();
  v0[22] = v15;
  *v15 = v0;
  v15[1] = sub_24AC4D6E0;

  return sub_24AC4AE4C();
}

uint64_t sub_24AC4D6E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 184) = a1;
  *(v4 + 192) = v1;

  v5 = *(v3 + 96);
  if (v1)
  {
    v6 = sub_24AC4E4E8;
  }

  else
  {
    v6 = sub_24AC4D814;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AC4D814()
{
  v64 = v0;
  v1 = 0;
  v2 = v0[23];
  v3 = (v0[11] + 40);
  while (1)
  {
    v4 = *(v3 - 1);
    v5 = *v3 >> 62;
    if (v5 <= 1)
    {
      if (v5)
      {
        v6 = __OFSUB__(HIDWORD(v4), v4);
        LODWORD(v4) = HIDWORD(v4) - v4;
        if (v6)
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          swift_once();
LABEL_18:
          v13 = sub_24ACD0490();
          v0[25] = __swift_project_value_buffer(v13, qword_27EF9E220);

          v14 = sub_24ACD0470();
          v15 = sub_24ACD0930();

          v16 = &unk_27EFA5000;
          if (os_log_type_enabled(v14, v15))
          {
            v17 = v0[17];
            v19 = v0[13];
            v18 = v0[14];
            v20 = v0[12];
            v21 = swift_slowAlloc();
            v22 = swift_slowAlloc();
            v63 = v22;
            *v21 = 136446466;
            sub_24AC2A3DC(v20 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_peerPath, v18);
            v23 = (v18 + *(v19 + 32));
            v24 = *v23;
            v25 = v23[1];

            sub_24AC234B4(v18);
            v26 = sub_24AC29E20(v24, v25, &v63);

            *(v21 + 4) = v26;
            *(v21 + 12) = 2048;
            *(v21 + 14) = v17;

            _os_log_impl(&dword_24AC18000, v14, v15, "%{public}s: Sending %ld packets.", v21, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v22);
            MEMORY[0x24C22DC60](v22, -1, -1);
            v27 = v21;
            v16 = &unk_27EFA5000;
            MEMORY[0x24C22DC60](v27, -1, -1);
          }

          else
          {
          }

          v28 = sub_24AC54A58(&qword_27EF9E258, type metadata accessor for Characteristic, "QtV7Ѝ");
          v36 = v16[426];
          v0[26] = v28;
          v0[27] = v36;
          v0[28] = 0;
          if (v0[17])
          {
            v37 = v0[11];
            v38 = *(v37 + 32);
            v0[29] = v38;
            v39 = *(v37 + 40);
            v0[30] = v39;
            sub_24AC46630(v38, v39);

            sub_24AC46630(v38, v39);
            v40 = sub_24ACD0470();
            v41 = sub_24ACD0930();

            if (!os_log_type_enabled(v40, v41))
            {
              sub_24AC46698(v38, v39);
              goto LABEL_35;
            }

            v42 = v0[27];
            v44 = v0[13];
            v43 = v0[14];
            v45 = v0[12];
            v46 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            v0[10] = v62;
            *v46 = 136446722;
            sub_24AC2A3DC(v45 + v42, v43);
            v47 = (v43 + *(v44 + 32));
            v48 = *v47;
            v49 = v47[1];

            sub_24AC234B4(v43);
            v50 = sub_24AC29E20(v48, v49, v0 + 10);

            *(v46 + 4) = v50;
            *(v46 + 12) = 2048;
            v51 = v39 >> 62;
            if ((v39 >> 62) > 1)
            {
              if (v51 != 2)
              {
                v52 = 0;
                goto LABEL_34;
              }

              v54 = *(v38 + 16);
              v53 = *(v38 + 24);
              v6 = __OFSUB__(v53, v54);
              v52 = v53 - v54;
              if (!v6)
              {
                goto LABEL_34;
              }

              __break(1u);
            }

            else if (!v51)
            {
              v52 = BYTE6(v39);
LABEL_34:
              *(v46 + 14) = v52;
              sub_24AC46698(v38, v39);
              *(v46 + 22) = 2080;
              v0[8] = v38;
              v0[9] = v39;
              sub_24AC467AC();
              v55 = sub_24ACD0180();
              v57 = sub_24AC29E20(v55, v56, v0 + 10);

              *(v46 + 24) = v57;
              _os_log_impl(&dword_24AC18000, v40, v41, "%{public}s: Sending packet [%ld bytes]: %s", v46, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C22DC60](v62, -1, -1);
              MEMORY[0x24C22DC60](v46, -1, -1);
LABEL_35:

              v58 = v0[26];
              v59 = v0[18];
              v60 = v0[12];
              v61 = swift_task_alloc();
              v0[31] = v61;
              v61[2] = v60;
              v61[3] = v59;
              v61[4] = v38;
              v61[5] = v39;
              v28 = swift_task_alloc();
              v0[32] = v28;
              *v28 = v0;
              v28[1] = sub_24AC4DE6C;
              v33 = sub_24AC53714;
              v32 = 0x800000024ACD9B20;
              v35 = MEMORY[0x277D84F78] + 8;
              v29 = v60;
              v30 = v58;
              v31 = 0xD00000000000001BLL;
              v34 = v61;

              return MEMORY[0x2822008A0](v28, v29, v30, v31, v32, v33, v34, v35);
            }

            LODWORD(v52) = HIDWORD(v38) - v38;
            if (!__OFSUB__(HIDWORD(v38), v38))
            {
              v52 = v52;
              goto LABEL_34;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          return MEMORY[0x2822008A0](v28, v29, v30, v31, v32, v33, v34, v35);
        }

        v4 = v4;
      }

      else
      {
        v4 = BYTE6(*v3);
      }

      goto LABEL_3;
    }

    if (v5 == 2)
    {
      v9 = v4 + 16;
      v7 = *(v4 + 16);
      v8 = *(v9 + 8);
      v6 = __OFSUB__(v8, v7);
      v4 = v8 - v7;
      if (v6)
      {
        goto LABEL_39;
      }

LABEL_3:
      if (v2 < v4)
      {
        break;
      }

      goto LABEL_4;
    }

    if (v2 < 0)
    {
      break;
    }

LABEL_4:
    ++v1;
    v3 += 2;
    if (v1 == v0[17])
    {
      if (qword_27EF9DC48 == -1)
      {
        goto LABEL_18;
      }

      goto LABEL_40;
    }
  }

  type metadata accessor for CentralManager.Error(0);
  sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
  swift_allocError();
  *v10 = v2;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_24AC4DE6C()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 96);

  if (v0)
  {
    v4 = sub_24AC4E570;
  }

  else
  {
    v4 = sub_24AC4DFB4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC4DFB4()
{
  v57 = v0;
  v1 = v0[17];
  v2 = v0[28] + 1;
  v3 = sub_24AC46698(v0[29], v0[30]);
  if (v2 != v1)
  {
    v23 = v0[28] + 1;
    v0[28] = v23;
    if (v23 == v0[17])
    {
      __break(1u);
    }

    else
    {
      v24 = v0[11] + 16 * v23;
      v25 = *(v24 + 32);
      v0[29] = v25;
      v26 = *(v24 + 40);
      v0[30] = v26;
      sub_24AC46630(v25, v26);

      sub_24AC46630(v25, v26);
      v27 = sub_24ACD0470();
      v28 = sub_24ACD0930();

      if (!os_log_type_enabled(v27, v28))
      {
        sub_24AC46698(v25, v26);
        goto LABEL_21;
      }

      v29 = v0[27];
      v31 = v0[13];
      v30 = v0[14];
      v32 = v0[12];
      v33 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v0[10] = v55;
      *v33 = 136446722;
      sub_24AC2A3DC(v32 + v29, v30);
      v34 = (v30 + *(v31 + 32));
      v35 = *v34;
      v36 = v34[1];

      sub_24AC234B4(v30);
      v37 = sub_24AC29E20(v35, v36, v0 + 10);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2048;
      v38 = v26 >> 62;
      if ((v26 >> 62) > 1)
      {
        if (v38 != 2)
        {
          v39 = 0;
          goto LABEL_20;
        }

        v46 = *(v25 + 16);
        v45 = *(v25 + 24);
        v47 = __OFSUB__(v45, v46);
        v39 = v45 - v46;
        if (!v47)
        {
          goto LABEL_20;
        }

        __break(1u);
      }

      else if (!v38)
      {
        v39 = BYTE6(v26);
LABEL_20:
        *(v33 + 14) = v39;
        sub_24AC46698(v25, v26);
        *(v33 + 22) = 2080;
        v0[8] = v25;
        v0[9] = v26;
        sub_24AC467AC();
        v48 = sub_24ACD0180();
        v50 = sub_24AC29E20(v48, v49, v0 + 10);

        *(v33 + 24) = v50;
        _os_log_impl(&dword_24AC18000, v27, v28, "%{public}s: Sending packet [%ld bytes]: %s", v33, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C22DC60](v55, -1, -1);
        MEMORY[0x24C22DC60](v33, -1, -1);
LABEL_21:

        v51 = v0[26];
        v52 = v0[18];
        v53 = v0[12];
        v54 = swift_task_alloc();
        v0[31] = v54;
        v54[2] = v53;
        v54[3] = v52;
        v54[4] = v25;
        v54[5] = v26;
        v3 = swift_task_alloc();
        v0[32] = v3;
        *v3 = v0;
        v3[1] = sub_24AC4DE6C;
        v8 = sub_24AC53714;
        v7 = 0x800000024ACD9B20;
        v10 = MEMORY[0x277D84F78] + 8;
        v4 = v53;
        v5 = v51;
        v6 = 0xD00000000000001BLL;
        v9 = v54;

        return MEMORY[0x2822008A0](v3, v4, v5, v6, v7, v8, v9, v10);
      }

      LODWORD(v39) = HIDWORD(v25) - v25;
      if (!__OFSUB__(HIDWORD(v25), v25))
      {
        v39 = v39;
        goto LABEL_20;
      }
    }

    __break(1u);
    return MEMORY[0x2822008A0](v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = sub_24ACD0470();
  v12 = sub_24ACD0930();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[27];
    v15 = v0[13];
    v14 = v0[14];
    v16 = v0[12];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v56 = v18;
    *v17 = 136446210;
    sub_24AC2A3DC(v16 + v13, v14);
    v19 = (v14 + *(v15 + 32));
    v20 = *v19;
    v21 = v19[1];

    sub_24AC234B4(v14);
    v22 = sub_24AC29E20(v20, v21, &v56);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_24AC18000, v11, v12, "%{public}s: Clearing writeValueContinuation", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x24C22DC60](v18, -1, -1);
    MEMORY[0x24C22DC60](v17, -1, -1);
  }

  v40 = v0[19];
  v41 = v0[15];
  v42 = v0[12];
  (*(v0[21] + 56))(v41, 1, 1, v0[20]);
  swift_beginAccess();
  sub_24AC463C4(v41, v42 + v40, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();

  v43 = v0[1];

  return v43();
}

uint64_t sub_24AC4E4E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC4E570()
{
  sub_24AC46698(v0[29], v0[30]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24AC4E604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC4E71C, a7, 0);
}

uint64_t sub_24AC4E71C()
{
  v1 = v0[12];
  v2 = *(v0[15] + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_underlyingObject);
  v0[21] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DFF8, &qword_24ACD40B0);
  inited = swift_initStackObject();
  v0[22] = inited;
  *(inited + 16) = v2;
  v4 = v2;

  return MEMORY[0x2822009F8](sub_24AC4E7C8, v1, 0);
}

uint64_t sub_24AC4E7C8()
{
  Strong = swift_weakLoadStrong();
  v0[23] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[24] = v2;
    *v2 = v0;
    v2[1] = sub_24AC4E93C;
    v3 = v0[22];
    v5 = v0[13];
    v4 = v0[14];

    return sub_24AC2C34C(v5, v4, v3, 0);
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    v7 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v0[26] = v7;
    v8 = v0[15];

    return MEMORY[0x2822009F8](sub_24AC4EB5C, v8, 0);
  }
}

uint64_t sub_24AC4E93C()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 96);
  if (v0)
  {
    v4 = sub_24AC4EAEC;
  }

  else
  {
    v4 = sub_24AC4EA68;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC4EA68()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AC4EAEC()
{

  v0[26] = v0[25];
  v1 = v0[15];

  return MEMORY[0x2822009F8](sub_24AC4EB5C, v1, 0);
}

uint64_t sub_24AC4EB5C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 120);

  v5 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_writeValueContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v4 + v5, v1, &qword_27EF9E4F0, &unk_24ACD4130);
  if ((*(v3 + 48))(v1, 1, v2))
  {
    v6 = *(v0 + 160);

    sub_24AC212F4(v6, &qword_27EF9E4F0, &unk_24ACD4130);
  }

  else
  {
    v7 = *(v0 + 208);
    v8 = *(v0 + 160);
    v10 = *(v0 + 136);
    v9 = *(v0 + 144);
    v11 = *(v0 + 128);
    (*(v10 + 16))(v9, v8, v11);
    sub_24AC212F4(v8, &qword_27EF9E4F0, &unk_24ACD4130);
    *(v0 + 88) = v7;
    sub_24ACD0750();
    (*(v10 + 8))(v9, v11);
  }

  v12 = *(v0 + 152);
  (*(*(v0 + 136) + 56))(v12, 1, 1, *(v0 + 128));
  swift_beginAccess();
  sub_24AC463C4(v12, v4 + v5, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_24AC4ED48(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v3[14] = type metadata accessor for PeerPath(0);
  v3[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC4EE24, v2, 0);
}

uint64_t sub_24AC4EE24()
{
  v17 = v0;
  v1 = v0[12];
  v2 = *(v1 + 16);
  v0[18] = v2;
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = (v1 + 40);
  do
  {
    v4 = *(v3 - 1);
    v5 = *v3 >> 62;
    if (v5 > 1)
    {
      if (v5 != 2 || *(v4 + 16) == *(v4 + 24))
      {
        goto LABEL_11;
      }
    }

    else if (v5)
    {
      if (v4 == v4 >> 32)
      {
        goto LABEL_11;
      }
    }

    else if ((*v3 & 0xFF000000000000) == 0)
    {
      goto LABEL_11;
    }

    v3 += 2;
    --v2;
  }

  while (v2);
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (!Strong)
  {
LABEL_11:
    type metadata accessor for CentralManager.Error(0);
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_12:

    v6 = v0[1];

    return v6();
  }

  v9 = v0[17];
  v10 = v0[13];
  v11 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_writeValueContinuation;
  v0[20] = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_writeValueContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v10 + v11, v9, &qword_27EF9E4F0, &unk_24ACD4130);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v0[21] = v12;
  v13 = *(v12 - 8);
  v0[22] = v13;
  LODWORD(v10) = (*(v13 + 48))(v9, 1, v12);
  sub_24AC212F4(v9, &qword_27EF9E4F0, &unk_24ACD4130);
  if (v10 != 1)
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    goto LABEL_21;
  }

  sub_24AC1C24C([*(v0[13] + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_underlyingObject) properties], &v16);
  if ((v16 & 8) == 0)
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    *v14 = 8;
LABEL_21:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_12;
  }

  v15 = swift_task_alloc();
  v0[23] = v15;
  *v15 = v0;
  v15[1] = sub_24AC4F264;

  return sub_24AC4AE4C();
}

uint64_t sub_24AC4F264(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 192) = a1;
  *(v4 + 200) = v1;

  v5 = *(v3 + 104);
  if (v1)
  {
    v6 = sub_24AC5023C;
  }

  else
  {
    v6 = sub_24AC4F398;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

void sub_24AC4F398()
{
  v1 = 0;
  v2 = v0[24];
  for (i = (v0[12] + 40); ; i += 2)
  {
    v4 = *(i - 1);
    v5 = *i >> 62;
    if (v5 <= 1)
    {
      if (v5)
      {
        v6 = __OFSUB__(HIDWORD(v4), v4);
        LODWORD(v4) = HIDWORD(v4) - v4;
        if (v6)
        {
          __break(1u);
LABEL_21:
          __break(1u);
          return;
        }

        v4 = v4;
      }

      else
      {
        v4 = BYTE6(*i);
      }

      goto LABEL_3;
    }

    if (v5 == 2)
    {
      v9 = v4 + 16;
      v7 = *(v4 + 16);
      v8 = *(v9 + 8);
      v6 = __OFSUB__(v8, v7);
      v4 = v8 - v7;
      if (v6)
      {
        goto LABEL_21;
      }

LABEL_3:
      if (v2 < v4)
      {
        break;
      }

      goto LABEL_4;
    }

    if (v2 < 0)
    {
      break;
    }

LABEL_4:
    if (++v1 == v0[18])
    {
      v12 = swift_task_alloc();
      v0[26] = v12;
      *v12 = v0;
      v12[1] = sub_24AC4F598;
      v13 = v0[11];

      sub_24AC50B8C(v13);
      return;
    }
  }

  type metadata accessor for CentralManager.Error(0);
  sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
  swift_allocError();
  *v10 = v2;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v11 = v0[1];

  v11();
}