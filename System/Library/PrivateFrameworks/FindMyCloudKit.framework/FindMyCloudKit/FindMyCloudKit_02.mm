uint64_t sub_24AD2B42C()
{
  v2 = *(v0 + 488);
  v1 = *(v0 + 496);

  v3 = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  *(v0 + 504) = v5;
  *v5 = v0;
  v5[1] = sub_24AD2B4E8;
  v6 = *(v0 + 488);
  v7 = *(v0 + 496);
  v8 = *(v0 + 392);
  v9 = *(v0 + 550);

  return sub_24AD55D74(v8, v8, v6, v7, v9);
}

uint64_t sub_24AD2B4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[64] = a1;
  v6[65] = a2;
  v6[66] = a3;
  v6[67] = v3;

  v7 = v5[62];
  v8 = v5[61];
  v9 = v5[49];

  if (v3)
  {
    v10 = sub_24AD2CAC0;
  }

  else
  {
    v10 = sub_24AD2B664;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_24AD2B664()
{
  v1 = *(v0 + 224);

  return MEMORY[0x2822009F8](sub_24AD2B6D0, v1, 0);
}

uint64_t sub_24AD2B6D0()
{
  v184 = v0;
  v182 = v0;
  if ((sub_24AD5E0C4() & 1) == 0)
  {
    goto LABEL_6;
  }

  if (qword_281064D48 != -1)
  {
    goto LABEL_121;
  }

  while (1)
  {
    v2 = *(v0 + 320);
    v1 = *(v0 + 328);
    v3 = *(v0 + 312);
    v4 = __swift_project_value_buffer(v3, qword_281064950);
    swift_beginAccess();
    (*(v2 + 16))(v1, v4, v3);
    sub_24AD5E124();
    (*(v2 + 8))(v1, v3);
    v5 = *(v0 + 548);
    if (v5 != 2 && (v5 & 1) != 0)
    {
      v6 = *(v0 + 528);
      *(v182 + 549) = 2;
      swift_beginAccess();
      sub_24AD5E134();
      swift_endAccess();
      type metadata accessor for CKError(0);
      *(v182 + 176) = 6;
      sub_24AD52E18(MEMORY[0x277D84F90]);
      sub_24AD34F14(&qword_281064A28, type metadata accessor for CKError, &unk_24AD5FAF0);
      sub_24AD5E314();
      v7 = *(v182 + 168);
      swift_willThrow();
      v8 = v182;

      v9 = *(v182 + 472);
      v10 = *(v182 + 448);
LABEL_32:
      *(v8 + 88) = v7;
      v52 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
      type metadata accessor for CKError(0);
      if (swift_dynamicCast())
      {
        v53 = *(v8 + 96);
        *(v8 + 104) = v53;
        sub_24AD34F14(&qword_281064A28, type metadata accessor for CKError, &unk_24AD5FAF0);
        sub_24AD5E2E4();
        if (*(v8 + 112) == 26)
        {

          if (qword_281064D90 != -1)
          {
            swift_once();
          }

          v54 = *(v8 + 488);
          v55 = sub_24AD5E7A4();
          __swift_project_value_buffer(v55, qword_281065448);
          v56 = v54;
          v57 = sub_24AD5E784();
          v58 = sub_24AD5EB44();

          if (os_log_type_enabled(v57, v58))
          {
            v173 = v9;
            v166 = v10;
            v59 = *(v8 + 550);
            v60 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            v62 = v8;
            v63 = swift_slowAlloc();
            *(v62 + 144) = v63;
            *v60 = 136315394;
            v64 = 0x646572616853;
            if (v59 != 1)
            {
              v64 = 0x63696C627550;
            }

            if (v59)
            {
              v65 = v64;
            }

            else
            {
              v65 = 0x65746176697250;
            }

            if (v59)
            {
              v66 = 0xE600000000000000;
            }

            else
            {
              v66 = 0xE700000000000000;
            }

            v67 = *(v62 + 488);
            v68 = sub_24AD2EDAC(v65, v66, (v62 + 144));

            *(v60 + 4) = v68;
            *(v60 + 12) = 2112;
            *(v60 + 14) = v67;
            *v61 = v67;
            v69 = v67;
            _os_log_impl(&dword_24ACF2000, v57, v58, "Got .zoneNotFound error while fetching zone changes for %s/%@", v60, 0x16u);
            sub_24AD06518(v61, &qword_27EFA61C8, &unk_24AD60C30);
            MEMORY[0x24C22F400](v61, -1, -1);
            __swift_destroy_boxed_opaque_existential_1Tm(v63);
            MEMORY[0x24C22F400](v63, -1, -1);
            MEMORY[0x24C22F400](v60, -1, -1);

            v8 = v62;
            v10 = v166;
            v9 = v173;
          }

          else
          {
            v162 = *(v8 + 488);
          }

          v72 = *(v8 + 480);
          v7 = *(v8 + 464);
          goto LABEL_48;
        }

        *(v8 + 120) = v53;
        sub_24AD5E2E4();
        if (*(v8 + 128) == 112 && (*(v8 + 551) & 1) != 0)
        {
          v119 = *(v8 + 488);

          MEMORY[0x24C22E590](v119);
          if (*((*(v8 + 80) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v8 + 80) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24AD5E8E4();
          }

          sub_24AD5E904();
          v7 = *(v8 + 80);
          if (qword_281064D90 != -1)
          {
            swift_once();
          }

          v120 = *(v8 + 488);
          v121 = sub_24AD5E7A4();
          __swift_project_value_buffer(v121, qword_281065448);
          v122 = v120;
          v123 = sub_24AD5E784();
          v124 = sub_24AD5EB44();

          if (os_log_type_enabled(v123, v124))
          {
            v175 = v9;
            v168 = v10;
            v125 = *(v8 + 550);
            v126 = swift_slowAlloc();
            v127 = swift_slowAlloc();
            v180 = swift_slowAlloc();
            *(v8 + 136) = v180;
            *v126 = 136315394;
            v128 = 0x646572616853;
            if (v125 != 1)
            {
              v128 = 0x63696C627550;
            }

            if (v125)
            {
              v129 = v128;
            }

            else
            {
              v129 = 0x65746176697250;
            }

            if (v125)
            {
              v130 = 0xE600000000000000;
            }

            else
            {
              v130 = 0xE700000000000000;
            }

            v131 = *(v8 + 488);
            v132 = sub_24AD2EDAC(v129, v130, (v8 + 136));

            *(v126 + 4) = v132;
            *(v126 + 12) = 2112;
            *(v126 + 14) = v131;
            *v127 = v131;
            v133 = v131;
            _os_log_impl(&dword_24ACF2000, v123, v124, "Got .manateeIdentityLost error while fetching zone changes for %s/%@", v126, 0x16u);
            sub_24AD06518(v127, &qword_27EFA61C8, &unk_24AD60C30);
            MEMORY[0x24C22F400](v127, -1, -1);
            __swift_destroy_boxed_opaque_existential_1Tm(v180);
            MEMORY[0x24C22F400](v180, -1, -1);
            MEMORY[0x24C22F400](v126, -1, -1);

            v10 = v168;
            v9 = v175;
          }

          else
          {
            v163 = *(v8 + 488);
          }

          v72 = v7;
          goto LABEL_48;
        }
      }

      if (qword_281064D90 == -1)
      {
        goto LABEL_96;
      }

      goto LABEL_123;
    }

LABEL_6:
    v11 = *(v0 + 472);
    v12 = *(v0 + 528);
    v13 = *(v0 + 520);
    v14 = *(v0 + 512);
    v15 = *(v0 + 488);
    if ((v11 & 0xC000000000000001) == 0)
    {
      break;
    }

    if (v11 < 0)
    {
      v16 = *(v0 + 472);
    }

    else
    {
      v16 = v11 & 0xFFFFFFFFFFFFFF8;
    }

    v17 = v15;
    v18 = v12;

    v19 = sub_24AD5EC94();
    if (!__OFADD__(v19, 1))
    {
      v20 = sub_24AD0A25C(v16, v19 + 1);
      v21 = *(v0 + 528);
      v13 = *(v0 + 520);
      v14 = *(v0 + 512);
      v22 = *(v0 + 488);
      goto LABEL_13;
    }

LABEL_120:
    __break(1u);
LABEL_121:
    swift_once();
  }

  v20 = *(v0 + 448);
  v22 = v15;
  v21 = v12;

LABEL_13:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v183 = v20;
  sub_24AD0AC00(v21, v22, isUniquelyReferenced_nonNull_native);

  v10 = v20;
  sub_24AD3AC78(v13);
  v24 = *(v14 + 16);
  v25 = *(v0 + 512);
  v8 = v0;
  if (v24)
  {
    v165 = v20;
    *(v0 + 152) = MEMORY[0x277D84F90];
    sub_24AD5ED94();
    v26 = v25 + 64;
    v27 = sub_24AD5EC54();
    v28 = 0;
    v169 = v25 + 72;
    v0 = v25;
    while ((v27 & 0x8000000000000000) == 0 && v27 < 1 << *(v0 + 32))
    {
      if ((*(v26 + 8 * (v27 >> 6)) & (1 << v27)) == 0)
      {
        goto LABEL_116;
      }

      v179 = v27 >> 6;
      v172 = v28;
      v176 = *(v0 + 36);
      v32 = *(v8 + 296);
      v31 = *(v8 + 304);
      sub_24AD38B48(*(v0 + 56) + *(*(v8 + 288) + 72) * v27, v31, &qword_27EFA5F30, &qword_24AD5FDF8);
      sub_24AD38B48(v31, v32, &qword_27EFA5F30, &qword_24AD5FDF8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v49 = *(v8 + 528);
        v50 = *(v8 + 296);
        v51 = *(v8 + 304);
        v7 = *v50;
        *(v8 + 160) = *v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
        swift_willThrowTypedImpl();

        sub_24AD06518(v51, &qword_27EFA5F30, &qword_24AD5FDF8);

        v10 = v165;
        v9 = v165;
        goto LABEL_32;
      }

      v33 = *(v8 + 296);
      v34 = *(v8 + 304);
      v35 = *(v8 + 272);
      v36 = v8;
      v37 = v0;
      v39 = *(v36 + 256);
      v38 = *(v36 + 264);
      v40 = (*(v38 + 32))(v35, v33, v39);
      MEMORY[0x24C22E780](v40);
      (*(v38 + 8))(v35, v39);
      v0 = v37;
      sub_24AD06518(v34, &qword_27EFA5F30, &qword_24AD5FDF8);
      sub_24AD5ED74();
      sub_24AD5EDA4();
      v8 = v182;
      sub_24AD5EDB4();
      sub_24AD5ED84();
      v29 = 1 << *(v0 + 32);
      if (v27 >= v29)
      {
        goto LABEL_117;
      }

      v41 = *(v26 + 8 * v179);
      if ((v41 & (1 << v27)) == 0)
      {
        goto LABEL_118;
      }

      if (v176 != *(v0 + 36))
      {
        goto LABEL_119;
      }

      v42 = v41 & (-2 << (v27 & 0x3F));
      if (v42)
      {
        v29 = __clz(__rbit64(v42)) | v27 & 0x7FFFFFFFFFFFFFC0;
        v30 = v172;
      }

      else
      {
        v43 = v179 << 6;
        v44 = (v169 + 8 * v179);
        v45 = v179 + 1;
        v30 = v172;
        while (v45 < (v29 + 63) >> 6)
        {
          v47 = *v44++;
          v46 = v47;
          v43 += 64;
          ++v45;
          if (v47)
          {
            sub_24ACF3B64(v27, v176, 0);
            v29 = __clz(__rbit64(v46)) + v43;
            goto LABEL_16;
          }
        }

        sub_24ACF3B64(v27, v176, 0);
      }

LABEL_16:
      v28 = v30 + 1;
      v27 = v29;
      if (v28 == v24)
      {

        v48 = *(v182 + 152);
        v10 = v165;
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v48 = MEMORY[0x277D84F90];
LABEL_47:
  v70 = *(v8 + 528);
  v71 = *(v8 + 488);
  sub_24AD3ACA4(v48);

  v72 = *(v8 + 480);
  v7 = *(v8 + 464);
  v9 = v10;
LABEL_48:
  v73 = *(v8 + 456) + 1;
  if (v73 == *(v8 + 440))
  {
    v74 = *(v8 + 208);
    if (v74)
    {
      sub_24AD06578(0, &qword_281064970, 0x277D82BB8);
      v75 = v74;
      if (sub_24AD5EC04())
      {

        if (qword_281064D90 != -1)
        {
          swift_once();
        }

        v76 = sub_24AD5E7A4();
        __swift_project_value_buffer(v76, qword_281065448);
        v77 = sub_24AD5E784();
        v78 = sub_24AD5EB24();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          *v79 = 0;
          _os_log_impl(&dword_24ACF2000, v77, v78, "databaseChangeToken unchanged", v79, 2u);
          MEMORY[0x24C22F400](v79, -1, -1);
        }

        v80 = *(v8 + 424);
        v81 = *(v8 + 208);
        v82 = *(v182 + 200);

        *(v82 + 64) = 0;
        *(v82 + 32) = 0u;
        *(v82 + 48) = 0u;
        *v82 = 0u;
        *(v82 + 16) = 0u;
        v83 = v182;
        goto LABEL_89;
      }
    }

    v96 = [*(*(v8 + 392) + 112) containerID];
    v98 = *(v8 + 64);
    v97 = *(v8 + 72);
    v99 = v8;
    v100 = *(v98 + 16);
    if (v100)
    {
      v167 = v96;
      v170 = v97;
      v171 = v72;
      v174 = v9;
      v101 = *(v99 + 424);
      v102 = *(v99 + 240);
      v183 = MEMORY[0x277D84F90];
      v103 = v101;
      sub_24AD33620(0, v100, 0);
      v104 = v183;
      v105 = *(v102 + 16);
      v102 += 16;
      v106 = v98 + ((*(v102 + 64) + 32) & ~*(v102 + 64));
      v177 = *(v102 + 56);
      v178 = v105;
      v107 = (v102 - 8);
      do
      {
        v108 = *(v182 + 248);
        v109 = *(v182 + 232);
        v178(v108, v106, v109);
        v110 = sub_24AD5EAB4();
        v112 = v111;
        v113 = MEMORY[0x24C22E7B0]();
        (*v107)(v108, v109);
        v183 = v104;
        v115 = *(v104 + 16);
        v114 = *(v104 + 24);
        if (v115 >= v114 >> 1)
        {
          sub_24AD33620((v114 > 1), v115 + 1, 1);
          v104 = v183;
        }

        *(v104 + 16) = v115 + 1;
        v116 = (v104 + 24 * v115);
        v116[4] = v110;
        v116[5] = v112;
        v116[6] = v113;
        v106 += v177;
        --v100;
      }

      while (v100);
      v83 = v182;
      v117 = *(v182 + 424);

      v72 = v171;
      v9 = v174;
      v118 = v167;
      v97 = v170;
    }

    else
    {
      v134 = v96;

      v118 = v134;
      v104 = MEMORY[0x277D84F90];
      v83 = v99;
    }

    v135 = *(v83 + 424);
    v136 = *(v83 + 416);
    v137 = *(v83 + 550);
    v138 = *(v83 + 200);
    *v138 = v118;
    *(v138 + 8) = v137;
    *(v138 + 16) = v135;
    *(v138 + 32) = v136;
    *(v138 + 40) = v97;
    *(v138 + 48) = v104;
    *(v138 + 56) = v9;
    *(v138 + 64) = v72;
LABEL_89:

    v139 = *(v83 + 8);
LABEL_108:

    return v139();
  }

  *(v8 + 472) = v9;
  *(v8 + 480) = v72;
  *(v8 + 456) = v73;
  *(v8 + 464) = v7;
  *(v8 + 448) = v10;
  v84 = *(v8 + 432);
  if (v73 >= *(v84 + 16))
  {
    __break(1u);
LABEL_123:
    swift_once();
LABEL_96:
    v141 = *(v8 + 488);
    v142 = sub_24AD5E7A4();
    __swift_project_value_buffer(v142, qword_281065448);
    v143 = v141;
    v144 = v7;
    v145 = sub_24AD5E784();
    v146 = sub_24AD5EB44();

    v181 = v7;
    if (os_log_type_enabled(v145, v146))
    {
      v147 = *(v8 + 550);
      v148 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v150 = v8;
      v151 = swift_slowAlloc();
      v183 = v151;
      *v148 = 136315650;
      v152 = 0x646572616853;
      if (v147 != 1)
      {
        v152 = 0x63696C627550;
      }

      if (v147)
      {
        v153 = v152;
      }

      else
      {
        v153 = 0x65746176697250;
      }

      if (v147)
      {
        v154 = 0xE600000000000000;
      }

      else
      {
        v154 = 0xE700000000000000;
      }

      v155 = *(v150 + 488);
      v156 = sub_24AD2EDAC(v153, v154, &v183);

      *(v148 + 4) = v156;
      *(v148 + 12) = 2112;
      *(v148 + 14) = v155;
      *v149 = v155;
      *(v148 + 22) = 2112;
      v157 = v155;
      v158 = v181;
      v159 = _swift_stdlib_bridgeErrorToNSError();
      *(v148 + 24) = v159;
      v149[1] = v159;
      _os_log_impl(&dword_24ACF2000, v145, v146, "Error from fetchZoneChanges for %s/%@: %@", v148, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61C8, &unk_24AD60C30);
      swift_arrayDestroy();
      MEMORY[0x24C22F400](v149, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v151);
      MEMORY[0x24C22F400](v151, -1, -1);
      MEMORY[0x24C22F400](v148, -1, -1);

      v8 = v150;
    }

    else
    {
    }

    v160 = *(v8 + 488);
    v161 = *(v8 + 424);
    swift_willThrow();

    v139 = *(v8 + 8);
    goto LABEL_108;
  }

  v86 = *(v8 + 344);
  v85 = *(v8 + 352);
  v87 = *(v8 + 336);
  v88 = *(v8 + 216) & 0xC000000000000001;
  v89 = (*(v86 + 16))(v85, v84 + ((*(v8 + 544) + 32) & ~*(v8 + 544)) + *(v86 + 72) * v73, v87);
  v90 = MEMORY[0x24C22E740](v89);
  *(v8 + 488) = v90;
  (*(v86 + 8))(v85, v87);
  if (v88)
  {
    v91 = v90;
    v92 = sub_24AD5EE94();

    if (v92)
    {
      *(v8 + 192) = v92;
      sub_24AD06578(0, &qword_281064980, 0x277CBC670);
      swift_dynamicCast();
      v92 = *(v8 + 184);
    }
  }

  else if (*(*(v8 + 216) + 16) && (v93 = sub_24AD095D0(v90), (v94 & 1) != 0))
  {
    v92 = *(*(*(v8 + 216) + 56) + 8 * v93);
    v95 = v92;
  }

  else
  {
    v92 = 0;
  }

  *(v8 + 496) = v92;
  v140 = *(v8 + 392);

  return MEMORY[0x2822009F8](sub_24AD2B42C, v140, 0);
}

uint64_t sub_24AD2CAC0()
{
  v1 = *(v0 + 224);

  return MEMORY[0x2822009F8](sub_24AD2CB2C, v1, 0);
}

uint64_t sub_24AD2CB2C()
{
  v127 = v0;
  v1 = v0;
  v2 = *(v0 + 536);
  *(v0 + 88) = v2;
  v3 = v0 + 88;
  v4 = *(v0 + 472);
  v121 = *(v0 + 448);
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 96);
    *(v0 + 104) = v6;
    sub_24AD34F14(&qword_281064A28, type metadata accessor for CKError, &unk_24AD5FAF0);
    sub_24AD5E2E4();
    if (*(v0 + 112) == 26)
    {

      if (qword_281064D90 != -1)
      {
        swift_once();
      }

      v7 = *(v0 + 488);
      v8 = sub_24AD5E7A4();
      __swift_project_value_buffer(v8, qword_281065448);
      v9 = v7;
      v10 = sub_24AD5E784();
      v11 = sub_24AD5EB44();

      if (os_log_type_enabled(v10, v11))
      {
        v123 = v6;
        v115 = v4;
        v12 = *(v1 + 550);
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v1[18] = v15;
        *v13 = 136315394;
        v16 = 0x646572616853;
        if (v12 != 1)
        {
          v16 = 0x63696C627550;
        }

        if (v12)
        {
          v17 = v16;
        }

        else
        {
          v17 = 0x65746176697250;
        }

        if (v12)
        {
          v18 = 0xE600000000000000;
        }

        else
        {
          v18 = 0xE700000000000000;
        }

        v19 = v1[61];
        v6 = v1;
        v20 = sub_24AD2EDAC(v17, v18, (v3 + 56));

        *(v13 + 4) = v20;
        v1 = v6;
        *(v13 + 12) = 2112;
        *(v13 + 14) = v19;
        *v14 = v19;
        v21 = v19;
        _os_log_impl(&dword_24ACF2000, v10, v11, "Got .zoneNotFound error while fetching zone changes for %s/%@", v13, 0x16u);
        sub_24AD06518(v14, &qword_27EFA61C8, &unk_24AD60C30);
        MEMORY[0x24C22F400](v14, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v15);
        MEMORY[0x24C22F400](v15, -1, -1);
        MEMORY[0x24C22F400](v13, -1, -1);

        v4 = v115;
      }

      else
      {
        v60 = v1[61];
      }

      v61 = v1[60];
      for (i = v1[58]; ; v61 = i)
      {
        v62 = v1[57] + 1;
        if (v62 == v1[55])
        {
          break;
        }

        v1[59] = v4;
        v1[60] = v61;
        v1[57] = v62;
        v1[58] = i;
        v1[56] = v121;
        v72 = v1[54];
        if (v62 < *(v72 + 16))
        {
          v74 = v1[43];
          v73 = v1[44];
          v75 = v1[42];
          v76 = v1[27] & 0xC000000000000001;
          v77 = (*(v74 + 16))(v73, v72 + ((*(v1 + 544) + 32) & ~*(v1 + 544)) + *(v74 + 72) * v62, v75);
          v78 = MEMORY[0x24C22E740](v77);
          v1[61] = v78;
          (*(v74 + 8))(v73, v75);
          if (v76)
          {
            v79 = v78;
            v80 = sub_24AD5EE94();

            if (v80)
            {
              *(v3 + 104) = v80;
              sub_24AD06578(0, &qword_281064980, 0x277CBC670);
              swift_dynamicCast();
              v80 = *(v3 + 96);
            }
          }

          else if (*(v1[27] + 16) && (v81 = sub_24AD095D0(v78), (v82 & 1) != 0))
          {
            v80 = *(*(v1[27] + 56) + 8 * v81);
            v83 = v80;
          }

          else
          {
            v80 = 0;
          }

          v1[62] = v80;
          v110 = v1[49];

          return MEMORY[0x2822009F8](sub_24AD2B42C, v110, 0);
        }

        __break(1u);
LABEL_82:
        sub_24AD5E8E4();
LABEL_19:
        sub_24AD5E904();
        i = v1[10];
        if (qword_281064D90 != -1)
        {
          swift_once();
        }

        v24 = v1[61];
        v25 = sub_24AD5E7A4();
        __swift_project_value_buffer(v25, qword_281065448);
        v26 = v24;
        v27 = sub_24AD5E784();
        v28 = sub_24AD5EB44();

        if (os_log_type_enabled(v27, v28))
        {
          v124 = v6;
          v116 = v4;
          v29 = *(v1 + 550);
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          v1[17] = v119;
          *v30 = 136315394;
          v32 = 0x646572616853;
          if (v29 != 1)
          {
            v32 = 0x63696C627550;
          }

          if (v29)
          {
            v33 = v32;
          }

          else
          {
            v33 = 0x65746176697250;
          }

          v6 = v1;
          if (v29)
          {
            v34 = 0xE600000000000000;
          }

          else
          {
            v34 = 0xE700000000000000;
          }

          v35 = v6[61];
          v36 = sub_24AD2EDAC(v33, v34, (v3 + 48));

          *(v30 + 4) = v36;
          *(v30 + 12) = 2112;
          *(v30 + 14) = v35;
          *v31 = v35;
          v37 = v35;
          _os_log_impl(&dword_24ACF2000, v27, v28, "Got .manateeIdentityLost error while fetching zone changes for %s/%@", v30, 0x16u);
          sub_24AD06518(v31, &qword_27EFA61C8, &unk_24AD60C30);
          MEMORY[0x24C22F400](v31, -1, -1);
          __swift_destroy_boxed_opaque_existential_1Tm(v119);
          MEMORY[0x24C22F400](v119, -1, -1);
          MEMORY[0x24C22F400](v30, -1, -1);

          v1 = v6;
          v4 = v116;
        }

        else
        {
          v111 = v1[61];
        }
      }

      v63 = v1[26];
      if (v63)
      {
        sub_24AD06578(0, &qword_281064970, 0x277D82BB8);
        v64 = v63;
        if (sub_24AD5EC04())
        {

          if (qword_281064D90 != -1)
          {
            swift_once();
          }

          v65 = sub_24AD5E7A4();
          __swift_project_value_buffer(v65, qword_281065448);
          v66 = sub_24AD5E784();
          v67 = sub_24AD5EB24();
          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            *v68 = 0;
            _os_log_impl(&dword_24ACF2000, v66, v67, "databaseChangeToken unchanged", v68, 2u);
            MEMORY[0x24C22F400](v68, -1, -1);
          }

          v69 = v1[53];
          v71 = v1[25];
          v70 = v1[26];

          *(v71 + 64) = 0;
          *(v71 + 32) = 0u;
          *(v71 + 48) = 0u;
          *v71 = 0u;
          *(v71 + 16) = 0u;
LABEL_74:

          v58 = v1[1];
          goto LABEL_45;
        }
      }

      v84 = [*(v1[49] + 112) containerID];
      v85 = v84;
      v87 = v1[8];
      v86 = v1[9];
      v88 = *(v87 + 16);
      if (v88)
      {
        v112 = v84;
        v113 = v1[9];
        v114 = v61;
        v117 = v4;
        v89 = v1[53];
        v90 = v1[30];
        v126 = MEMORY[0x277D84F90];
        v91 = v89;
        sub_24AD33620(0, v88, 0);
        v92 = v126;
        v93 = *(v90 + 16);
        v90 += 16;
        v94 = v87 + ((*(v90 + 64) + 32) & ~*(v90 + 64));
        v120 = *(v90 + 56);
        v122 = v93;
        v118 = (v90 - 8);
        do
        {
          v95 = v1[31];
          v96 = v1;
          v97 = v1[29];
          v122(v95, v94, v97);
          v98 = sub_24AD5EAB4();
          v100 = v99;
          v101 = MEMORY[0x24C22E7B0]();
          (*v118)(v95, v97);
          v126 = v92;
          v103 = *(v92 + 16);
          v102 = *(v92 + 24);
          if (v103 >= v102 >> 1)
          {
            sub_24AD33620((v102 > 1), v103 + 1, 1);
            v92 = v126;
          }

          *(v92 + 16) = v103 + 1;
          v104 = (v92 + 24 * v103);
          v104[4] = v98;
          v104[5] = v100;
          v104[6] = v101;
          v94 += v120;
          --v88;
          v1 = v96;
        }

        while (v88);
        v105 = v96[53];

        v61 = v114;
        v4 = v117;
        v85 = v112;
        v86 = v113;
      }

      else
      {

        v92 = MEMORY[0x277D84F90];
      }

      v106 = *(v1 + 53);
      v107 = v1[52];
      v108 = *(v1 + 550);
      v109 = v1[25];
      *v109 = v85;
      *(v109 + 8) = v108;
      *(v109 + 16) = v106;
      *(v109 + 32) = v107;
      *(v109 + 40) = v86;
      *(v109 + 48) = v92;
      *(v109 + 56) = v4;
      *(v109 + 64) = v61;
      goto LABEL_74;
    }

    *(v0 + 120) = v6;
    sub_24AD5E2E4();
    if (*(v0 + 128) == 112 && (*(v0 + 551) & 1) != 0)
    {
      v22 = *(v0 + 488);

      MEMORY[0x24C22E590](v22);
      if (*((v1[10] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v1[10] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_19;
      }

      goto LABEL_82;
    }
  }

  if (qword_281064D90 != -1)
  {
    swift_once();
  }

  v38 = *(v0 + 488);
  v39 = sub_24AD5E7A4();
  __swift_project_value_buffer(v39, qword_281065448);
  v40 = v38;
  v41 = v2;
  v42 = sub_24AD5E784();
  v43 = sub_24AD5EB44();

  v125 = v2;
  if (os_log_type_enabled(v42, v43))
  {
    v44 = *(v1 + 550);
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v126 = v47;
    *v45 = 136315650;
    v48 = 0x646572616853;
    if (v44 != 1)
    {
      v48 = 0x63696C627550;
    }

    if (v44)
    {
      v49 = v48;
    }

    else
    {
      v49 = 0x65746176697250;
    }

    if (v44)
    {
      v50 = 0xE600000000000000;
    }

    else
    {
      v50 = 0xE700000000000000;
    }

    v51 = v1[61];
    v52 = sub_24AD2EDAC(v49, v50, &v126);

    *(v45 + 4) = v52;
    *(v45 + 12) = 2112;
    *(v45 + 14) = v51;
    *v46 = v51;
    *(v45 + 22) = 2112;
    v53 = v51;
    v54 = v125;
    v55 = _swift_stdlib_bridgeErrorToNSError();
    *(v45 + 24) = v55;
    v46[1] = v55;
    _os_log_impl(&dword_24ACF2000, v42, v43, "Error from fetchZoneChanges for %s/%@: %@", v45, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61C8, &unk_24AD60C30);
    swift_arrayDestroy();
    MEMORY[0x24C22F400](v46, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x24C22F400](v47, -1, -1);
    MEMORY[0x24C22F400](v45, -1, -1);
  }

  v56 = v1[61];
  v57 = v1[53];
  swift_willThrow();

  v58 = v1[1];
LABEL_45:

  return v58();
}

uint64_t sub_24AD2D918(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AD5EA64();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v25 - v10;
  result = MEMORY[0x28223BE20](v9);
  v14 = v25 - v13;
  v15 = 0;
  v26 = a1;
  v27 = a2;
  v18 = *(a1 + 56);
  v17 = a1 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v26 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4);
      (*(v5 + 32))(v8, v14, v4);
      sub_24AD2F964(v11, v8);
      result = (*(v5 + 8))(v11, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_24AD2DB34(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_24AD5EC84();
    sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
    sub_24AD384B8(&qword_281064990, MEMORY[0x277D85378]);
    sub_24AD5EA24();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_24ACF40D8(v1);
      return;
    }

    while (1)
    {
      sub_24AD2F72C(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_24AD5ECB4())
      {
        sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_24AD2DD30()
{
  v0 = sub_24AD5E164();
  __swift_allocate_value_buffer(v0, qword_281064D30);
  v1 = __swift_project_value_buffer(v0, qword_281064D30);
  if (qword_281064DC0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_281064DC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_24AD2DDF8()
{
  v0 = sub_24AD5E164();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60B8, &qword_24AD603A8);
  __swift_allocate_value_buffer(v4, qword_281064D78);
  __swift_project_value_buffer(v4, qword_281064D78);
  if (qword_281064D28 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_281064D30);
  (*(v1 + 16))(v3, v5, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6250, &qword_24AD609C8);
  sub_24AD38ACC();
  return sub_24AD5E144();
}

uint64_t sub_24AD2DF84()
{
  v0 = sub_24AD5E164();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C0, &qword_24AD60400);
  __swift_allocate_value_buffer(v4, qword_27EFA6070);
  __swift_project_value_buffer(v4, qword_27EFA6070);
  if (qword_281064D28 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_281064D30);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24AD5E144();
}

uint64_t sub_24AD2E0F4()
{
  v0 = sub_24AD5E164();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C0, &qword_24AD60400);
  __swift_allocate_value_buffer(v4, qword_281064950);
  __swift_project_value_buffer(v4, qword_281064950);
  if (qword_281064D28 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_281064D30);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24AD5E144();
}

uint64_t sub_24AD2E264()
{
  v0 = sub_24AD5E164();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61D0, &qword_24AD608D0);
  __swift_allocate_value_buffer(v4, qword_281064D58);
  __swift_project_value_buffer(v4, qword_281064D58);
  if (qword_281064D28 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_281064D30);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24AD5E144();
}

uint64_t sub_24AD2E3DC()
{
  v0 = sub_24AD5E7A4();
  __swift_allocate_value_buffer(v0, qword_281065400);
  __swift_project_value_buffer(v0, qword_281065400);
  return sub_24AD5E794();
}

uint64_t sub_24AD2E470(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

void *sub_24AD2E548(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6148, &qword_24AD60850);
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
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6150, &qword_24AD60858);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24AD2E67C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6180, &qword_24AD60880);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24AD2E7B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6130, &unk_24AD60540);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24AD2E948(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_24AD2EB24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6160, &qword_24AD60868);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_24AD2EC28(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6120, &qword_24AD60CA0);
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

void *sub_24AD2ECB0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6198, &qword_24AD60898);
  v4 = *(sub_24AD5EA64() - 8);
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

unint64_t sub_24AD2EDAC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24AD2EE78(v11, 0, 0, 1, a1, a2);
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
    sub_24AD351B0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_24AD2EE78(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24AD2EF84(a5, a6);
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
    result = sub_24AD5ED64();
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

void *sub_24AD2EF84(uint64_t a1, unint64_t a2)
{
  v3 = sub_24AD2EFD0(a1, a2);
  sub_24AD2F100(&unk_285E2AAC0);
  return v3;
}

void *sub_24AD2EFD0(uint64_t a1, unint64_t a2)
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

  v6 = sub_24AD2F1EC(v5, 0);
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

  result = sub_24AD5ED64();
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
        v10 = sub_24AD5E894();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24AD2F1EC(v10, 0);
        result = sub_24AD5ED24();
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

uint64_t sub_24AD2F100(uint64_t result)
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

  result = sub_24AD2F260(result, v11, 1, v3);
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

void *sub_24AD2F1EC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6200, &qword_24AD60918);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24AD2F260(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6200, &qword_24AD60918);
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

uint64_t sub_24AD2F354(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_24AD5F074();
  MEMORY[0x24C22ED70](a2);
  v6 = sub_24AD5F094();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_24AD30D98(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_24AD2F44C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24AD5E404();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_24AD34F14(&qword_2810653F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = sub_24AD5E7F4();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_24AD34F14(&qword_2810653F0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_24AD5E824();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_24AD30EE4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_24AD2F72C(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_24AD5ECA4();

    if (v9)
    {

      sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_24AD5EC94();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_24AD2FD94(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_24AD30530(v20 + 1);
    }

    v18 = v8;
    sub_24AD30D14(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
  v11 = sub_24AD5EBF4();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_24AD311AC(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_24AD5EC04();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_24AD2F964(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24AD5EA64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_24AD34F14(&qword_2810649D0, MEMORY[0x277CBBE40], MEMORY[0x277CBBE48]);
  v33 = a2;
  v11 = sub_24AD5E7F4();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_24AD34F14(qword_2810648B0, MEMORY[0x277CBBE40], MEMORY[0x277CBBE50]);
      v21 = sub_24AD5E824();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_24AD3131C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_24AD2FC44(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_24AD5F074();
  sub_24AD5E874();
  v8 = sub_24AD5F094();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_24AD5EF84() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_24AD315E4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24AD2FD94(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61E0, &qword_24AD608E0);
    v2 = sub_24AD5ED04();
    v15 = v2;
    sub_24AD5EC84();
    if (sub_24AD5ECB4())
    {
      sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_24AD30530(v9 + 1);
        }

        v2 = v15;
        result = sub_24AD5EBF4();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_24AD5ECB4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_24AD2FF84(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6240, &qword_24AD609B0);
  result = sub_24AD5ECF4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_24AD5F074();
      MEMORY[0x24C22ED70](v17);
      result = sub_24AD5F094();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24AD301D4(uint64_t a1)
{
  v2 = v1;
  v36 = sub_24AD5E404();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61F8, &qword_24AD60910);
  result = sub_24AD5ECF4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_24AD34F14(&qword_2810653F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_24AD5E7F4();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_24AD30530(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61E0, &qword_24AD608E0);
  result = sub_24AD5ECF4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_24AD5EBF4();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24AD30758(uint64_t a1)
{
  v2 = v1;
  v36 = sub_24AD5EA64();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61E8, &qword_24AD608E8);
  result = sub_24AD5ECF4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_24AD34F14(&qword_2810649D0, MEMORY[0x277CBBE40], MEMORY[0x277CBBE48]);
      result = sub_24AD5E7F4();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_24AD30AB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6168, &qword_24AD60870);
  result = sub_24AD5ECF4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_24AD5F074();
      sub_24AD5E874();
      result = sub_24AD5F094();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_24AD30D14(uint64_t a1, uint64_t a2)
{
  sub_24AD5EBF4();
  result = sub_24AD5EC74();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_24AD30D98(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24AD2FF84(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_24AD31764();
      a2 = v7;
      goto LABEL_12;
    }

    sub_24AD31D88(v5 + 1);
  }

  v8 = *v3;
  sub_24AD5F074();
  MEMORY[0x24C22ED70](v4);
  result = sub_24AD5F094();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24AD5EFB4();
  __break(1u);
  return result;
}

uint64_t sub_24AD30EE4(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_24AD5E404();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24AD301D4(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_24AD319F4(MEMORY[0x277CC95F0], &qword_27EFA61F8, &qword_24AD60910);
      goto LABEL_12;
    }

    sub_24AD31FA8(v10 + 1);
  }

  v12 = *v3;
  sub_24AD34F14(&qword_2810653F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v13 = sub_24AD5E7F4();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_24AD34F14(&qword_2810653F0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_24AD5E824();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24AD5EFB4();
  __break(1u);
  return result;
}

void sub_24AD311AC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24AD30530(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_24AD318A4();
      goto LABEL_12;
    }

    sub_24AD322C4(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_24AD5EBF4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_24AD5EC04();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_24AD5EFB4();
  __break(1u);
}

uint64_t sub_24AD3131C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_24AD5EA64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24AD30758(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_24AD319F4(MEMORY[0x277CBBE40], &qword_27EFA61E8, &qword_24AD608E8);
      goto LABEL_12;
    }

    sub_24AD324D8(v10 + 1);
  }

  v12 = *v3;
  sub_24AD34F14(&qword_2810649D0, MEMORY[0x277CBBE40], MEMORY[0x277CBBE48]);
  v13 = sub_24AD5E7F4();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_24AD34F14(qword_2810648B0, MEMORY[0x277CBBE40], MEMORY[0x277CBBE50]);
      v21 = sub_24AD5E824();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24AD5EFB4();
  __break(1u);
  return result;
}

uint64_t sub_24AD315E4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_24AD30AB4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_24AD31C2C();
      goto LABEL_16;
    }

    sub_24AD327F4(v8 + 1);
  }

  v10 = *v4;
  sub_24AD5F074();
  sub_24AD5E874();
  result = sub_24AD5F094();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_24AD5EF84();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_24AD5EFB4();
  __break(1u);
  return result;
}

void *sub_24AD31764()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6240, &qword_24AD609B0);
  v2 = *v0;
  v3 = sub_24AD5ECE4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_24AD318A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61E0, &qword_24AD608E0);
  v2 = *v0;
  v3 = sub_24AD5ECE4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_24AD319F4(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_24AD5ECE4();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

void *sub_24AD31C2C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6168, &qword_24AD60870);
  v2 = *v0;
  v3 = sub_24AD5ECE4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_24AD31D88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6240, &qword_24AD609B0);
  result = sub_24AD5ECF4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_24AD5F074();
      MEMORY[0x24C22ED70](v16);
      result = sub_24AD5F094();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_24AD31FA8(uint64_t a1)
{
  v2 = v1;
  v33 = sub_24AD5E404();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61F8, &qword_24AD60910);
  v7 = sub_24AD5ECF4();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_24AD34F14(&qword_2810653F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_24AD5E7F4();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_24AD322C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61E0, &qword_24AD608E0);
  result = sub_24AD5ECF4();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_24AD5EBF4();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v24;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_24AD324D8(uint64_t a1)
{
  v2 = v1;
  v33 = sub_24AD5EA64();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61E8, &qword_24AD608E8);
  v7 = sub_24AD5ECF4();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_24AD34F14(&qword_2810649D0, MEMORY[0x277CBBE40], MEMORY[0x277CBBE48]);
      result = sub_24AD5E7F4();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_24AD327F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6168, &qword_24AD60870);
  result = sub_24AD5ECF4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_24AD5F074();

      sub_24AD5E874();
      result = sub_24AD5F094();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

void *sub_24AD32A2C(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_24AD5EC94();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_24AD2EC28(v2, 0);

    v1 = sub_24AD33AEC(&v5, v3 + 4, v2, v1);
    sub_24ACF40D8(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void *sub_24AD32ADC(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_24AD5EC94();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_24AD2EC28(v2, 0);

    v1 = sub_24AD33CF0(&v5, v3 + 4, v2, v1);
    sub_24ACF40D8(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

uint64_t sub_24AD32B8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24AD5E404();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_24AD34F14(&qword_2810653F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v31 = a1;
  v10 = sub_24AD5E7F4();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_24AD34F14(&qword_2810653F0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v19 = sub_24AD5E824();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24AD319F4(MEMORY[0x277CC95F0], &qword_27EFA61F8, &qword_24AD60910);
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_24AD33158(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_24AD32E58(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_24AD5ECC4();

    if (v6)
    {
      v7 = sub_24AD32FF0(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
  v10 = sub_24AD5EBF4();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_24AD5EC04();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24AD318A4();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_24AD33460(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_24AD32FF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_24AD5EC94();
  v5 = swift_unknownObjectRetain();
  v6 = sub_24AD2FD94(v5, v4);
  v15 = v6;

  v7 = sub_24AD5EBF4();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_24AD5EC04();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_24AD33460(v9);
  result = sub_24AD5EC04();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24AD33158(int64_t a1)
{
  v3 = sub_24AD5E404();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_24AD5EC64();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_24AD34F14(&qword_2810653F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v24 = sub_24AD5E7F4();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

unint64_t sub_24AD33460(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_24AD5EC64();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_24AD5EBF4();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

char *sub_24AD33600(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24AD33660(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24AD33620(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24AD3376C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24AD33640(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24AD3388C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24AD33660(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6158, &qword_24AD60860);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_24AD3376C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6130, &unk_24AD60540);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24AD3388C(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6198, &qword_24AD60898);
  v10 = *(sub_24AD5EA64() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_24AD5EA64() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void (*sub_24AD33A64(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C22EA30](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_24AD33AE4;
  }

  __break(1u);
  return result;
}

uint64_t sub_24AD33AEC(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 64;
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

    v10 = v20 & *(v4 + 64);
    v22 = v9;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v15 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = sub_24AD5EE74();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = result | 0x8000000000000000;
  v22 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v15 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v23 = a3;
  a3 = 0;
  v11 = 0;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!sub_24AD5EEA4())
      {
        goto LABEL_31;
      }

      swift_unknownObjectRelease();
      sub_24AD06578(0, &qword_27EFA5F18, 0x277CBC5A0);
      swift_dynamicCast();
      result = v24;
      v15 = v11;
      if (!v24)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v14 = v11;
    if (!v10)
    {
      break;
    }

    v15 = v11;
LABEL_13:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    result = *(*(v4 + 56) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v23;
    if (v13 == v23)
    {
LABEL_31:
      v15 = v11;
      goto LABEL_32;
    }

    ++a2;
    a3 = v13;
    if (__OFADD__(v13++, 1))
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
      goto LABEL_34;
    }

    if (v15 >= v12)
    {
      break;
    }

    v10 = *(v8 + 8 * v15);
    ++v14;
    if (v10)
    {
      v11 = v15;
      goto LABEL_13;
    }
  }

  v10 = 0;
  if (v12 <= v11 + 1)
  {
    v21 = v11 + 1;
  }

  else
  {
    v21 = v12;
  }

  v15 = v21 - 1;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v22;
  v7[3] = v15;
  v7[4] = v10;
  return a3;
}

void *sub_24AD33CF0(void *result, void *a2, uint64_t a3, uint64_t a4)
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

  sub_24AD5EC84();
  sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
  sub_24AD384B8(&qword_281064990, MEMORY[0x277D85378]);
  result = sub_24AD5EA24();
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
      if (!sub_24AD5ECB4())
      {
        goto LABEL_30;
      }

      sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
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

uint64_t sub_24AD33F28(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_24AD5EA64();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
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
    v37 = a4 + 56;
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
      v23 = *(a4 + 48);
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

unint64_t sub_24AD341CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EF8, &qword_24AD5FDD8);
    v3 = sub_24AD5EF14();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_24AD095D0(v6);
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

unint64_t sub_24AD342C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6170, &qword_24AD61280);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6178, &qword_24AD60878);
    v7 = sub_24AD5EF14();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24AD38B48(v9, v5, &qword_27EFA6170, &qword_24AD61280);
      v11 = *v5;
      result = sub_24AD09670(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_24AD5E654();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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

unint64_t sub_24AD344AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61A8, &qword_24AD608A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61B0, &qword_24AD608B0);
    v7 = sub_24AD5EF14();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24AD38B48(v9, v5, &qword_27EFA61A8, &qword_24AD608A8);
      result = sub_24AD0981C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_24AD5E364();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
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

unint64_t sub_24AD34694(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61A0, &qword_24AD608A0);
    v3 = sub_24AD5EF14();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);
      sub_24ACF40BC(v5);
      result = sub_24AD09620(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = v3[7] + 16 * result;
      *v10 = v5;
      *(v10 + 8) = v6;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24AD3479C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F48, &qword_24AD5FE10);
    v3 = sub_24AD5EF14();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;

      v10 = v8;
      sub_24AD063F0(v7, v9);
      result = sub_24AD096B4(v5, v6, v10);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 24 * result);
      *v13 = v5;
      v13[1] = v6;
      v13[2] = v10;
      v14 = v3[7] + 16 * result;
      *v14 = v7;
      *(v14 + 8) = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

uint64_t sub_24AD348CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24AD38BB0();
  result = MEMORY[0x24C22E700](v2, &type metadata for CloudKitCoordinator.Database, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_24AD2F354(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t type metadata accessor for CloudKitStorage(uint64_t a1)
{
  result = qword_281064D00;
  if (!qword_281064D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AD3498C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AD0C594;

  return sub_24AD0E6A8();
}

uint64_t sub_24AD34A40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AD0C594;

  return sub_24AD0FC08();
}

uint64_t sub_24AD34AD0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AD0C594;

  return sub_24AD1161C(a1, v4);
}

uint64_t sub_24AD34B88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AD0C594;

  return sub_24AD117FC();
}

uint64_t sub_24AD34C18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AD0C594;

  return sub_24AD129F0();
}

uint64_t sub_24AD34CA8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AD0BDA0;

  return sub_24AD0F9C8(v0);
}

unint64_t sub_24AD34D38()
{
  result = qword_2810653A8;
  if (!qword_2810653A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFA60C8, &qword_24AD61260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810653A8);
  }

  return result;
}

uint64_t sub_24AD34D9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudKitChangeSet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AD34E00()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AD0C594;

  return sub_24AD13D1C(v2, v3, v4);
}

uint64_t sub_24AD34EB0(uint64_t a1)
{
  v2 = type metadata accessor for CloudKitChangeSet(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AD34F14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24AD34F5C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AD0C594;

  return sub_24AD26A3C(v2, v3);
}

uint64_t sub_24AD35004()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AD38C10;

  return sub_24AD1BC8C(v0);
}

uint64_t sub_24AD35094(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AD0C594;

  return sub_24AD1BE48(a1, v4);
}

unint64_t sub_24AD3514C()
{
  result = qword_27EFA60F8;
  if (!qword_27EFA60F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA60F8);
  }

  return result;
}

uint64_t sub_24AD351B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_24AD35224()
{
  result = qword_27EFA6138;
  if (!qword_27EFA6138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA6138);
  }

  return result;
}

unint64_t sub_24AD3527C()
{
  result = qword_27EFA6140;
  if (!qword_27EFA6140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA6140);
  }

  return result;
}

void sub_24AD352D8(uint64_t a1)
{
  sub_24AD5E364();
  if (v1 <= 0x3F)
  {
    sub_24AD37164(319, &qword_2810649F0, &type metadata for CloudKitCoordinator.AccountState);
    if (v2 <= 0x3F)
    {
      sub_24AD37164(319, &qword_2810649E8, &type metadata for CloudKitCoordinator.PushEvent);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of CloudKitStorage.__allocating_init(containerURL:containerIdentifier:bundleIdentifier:dataStore:databases:containerEnvironment:mode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = (*(v10 + 320) + **(v10 + 320));
  v18 = swift_task_alloc();
  *(v11 + 16) = v18;
  *v18 = v11;
  v18[1] = sub_24AD35664;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_24AD35664(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of CloudKitStorage.startup()()
{
  v4 = (*(*v0 + 328) + **(*v0 + 328));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AD0C594;

  return v4();
}

uint64_t dispatch thunk of CloudKitStorage.run()()
{
  v4 = (*(*v0 + 336) + **(*v0 + 336));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AD0C594;

  return v4();
}

uint64_t dispatch thunk of CloudKitStorage.changeSet(block:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 344) + **(*v3 + 344));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_24AD0C594;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of CloudKitStorage.apply(changeSet:database:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 352) + **(*v2 + 352));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AD0C594;

  return v8(a1, a2);
}

uint64_t dispatch thunk of CloudKitStorage.await(state:)(uint64_t a1)
{
  v6 = (*(*v1 + 368) + **(*v1 + 368));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AD0C594;

  return v6(a1);
}

uint64_t dispatch thunk of CloudKitStorage.isManateeAvailable()()
{
  v4 = (*(*v0 + 376) + **(*v0 + 376));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AD0BDA0;

  return v4();
}

uint64_t dispatch thunk of CloudKitStorage.create(zoneName:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 416) + **(*v2 + 416));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AD0C594;

  return v8(a1, a2);
}

uint64_t dispatch thunk of CloudKitStorage.delete(zoneName:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 424) + **(*v2 + 424));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AD0C594;

  return v8(a1, a2);
}

uint64_t dispatch thunk of CloudKitStorage.reset()()
{
  v4 = (*(*v0 + 432) + **(*v0 + 432));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AD0C594;

  return v4();
}

uint64_t dispatch thunk of CloudKitStorage.resetDataStore()()
{
  v4 = (*(*v0 + 440) + **(*v0 + 440));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AD0C594;

  return v4();
}

uint64_t dispatch thunk of CloudKitStorage.lostZones()()
{
  v4 = (*(*v0 + 448) + **(*v0 + 448));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AD38C10;

  return v4();
}

uint64_t dispatch thunk of CloudKitStorage.shareParticipant(forEmailAddress:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 456) + **(*v2 + 456));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AD38C10;

  return v8(a1, a2);
}

uint64_t dispatch thunk of CloudKitStorage.shareParticipant(forPhoneNumber:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 464) + **(*v2 + 464));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AD38C10;

  return v8(a1, a2);
}

uint64_t dispatch thunk of CloudKitStorage.shareParticipants(zoneName:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 472) + **(*v2 + 472));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AD38C10;

  return v8(a1, a2);
}

uint64_t dispatch thunk of CloudKitStorage.shareMetadata(for:token:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 480) + **(*v2 + 480));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AD38C10;

  return v8(a1, a2);
}

uint64_t dispatch thunk of CloudKitStorage.accept(metadata:)(uint64_t a1)
{
  v6 = (*(*v1 + 488) + **(*v1 + 488));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AD0C594;

  return v6(a1);
}

uint64_t dispatch thunk of CloudKitStorage.add(shareParticipant:zoneName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 496) + **(*v4 + 496));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_24AD38C10;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CloudKitStorage.remove(shareParticipant:zoneName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 504) + **(*v3 + 504));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_24AD0C594;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of CloudKitStorage.isShared(zoneName:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 512) + **(*v2 + 512));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AD35664;

  return v8(a1, a2);
}

uint64_t dispatch thunk of CloudKitStorage.share(zoneName:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 520) + **(*v2 + 520));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AD0C594;

  return v8(a1, a2);
}

uint64_t dispatch thunk of CloudKitStorage.unshare(zoneName:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 528) + **(*v2 + 528));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AD0C594;

  return v8(a1, a2);
}

uint64_t dispatch thunk of CloudKitStorage.leaveZone(zoneName:ownerName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 536) + **(*v4 + 536));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_24AD0C594;

  return v12(a1, a2, a3, a4);
}

void sub_24AD37164(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_24AD5E9B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CloudKitStorage.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudKitStorage.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudKitStorage.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudKitStorage.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24AD37454(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24AD5EC94())
  {
    v4 = sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
    v5 = sub_24AD384B8(&qword_281064990, MEMORY[0x277D85378]);
    result = MEMORY[0x24C22E700](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C22EA30](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_24AD2F72C(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_24AD5EC94();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_24AD375B0(uint64_t a1)
{
  v2 = sub_24AD5EA64();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24AD34F14(&qword_2810649D0, MEMORY[0x277CBBE40], MEMORY[0x277CBBE48]);
  result = MEMORY[0x24C22E700](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_24AD2F964(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_24AD3774C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x24C22E700](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_24AD2FC44(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_24AD37828(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6240, &qword_24AD609B0);
    v3 = sub_24AD5ED14();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_24AD5F074();
      MEMORY[0x24C22ED70](v10);
      result = sub_24AD5F094();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_24AD37964(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61D0, &qword_24AD608D0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - v4;
  if (qword_281064D50 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_281064D58);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  sub_24AD5E124();
  (*(v3 + 8))(v5, v2);
  v7 = v16;
  if (v16 >> 60 == 15)
  {
    v14 = MEMORY[0x277D84FA0];
  }

  else
  {
    v8 = v15;
    sub_24AD5E264();
    swift_allocObject();
    sub_24AD5E254();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61D8, &qword_24AD608D8);
    sub_24AD3850C(&qword_2810649D8, &qword_2810649A0, MEMORY[0x277CBBEC8], MEMORY[0x277D83B70]);
    sub_24AD5E244();
    sub_24AD38594(v8, v7);

    v14 = v15;
  }

  v19 = v14;
  v9 = sub_24AD37454(a1);

  sub_24AD2DB34(v9);
  sub_24AD5E294();
  swift_allocObject();
  sub_24AD5E284();
  v15 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61D8, &qword_24AD608D8);
  sub_24AD3850C(&qword_2810649E0, &qword_2810649A8, MEMORY[0x277CBBEC0], MEMORY[0x277D83B50]);
  v10 = sub_24AD5E274();
  v12 = v11;

  v17 = v10;
  v18 = v12;
  swift_beginAccess();
  sub_24AD0615C(v10, v12);
  sub_24AD5E134();
  swift_endAccess();
  return sub_24AD06204(v10, v12);
}

void *sub_24AD37CDC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61D0, &qword_24AD608D0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - v2;
  if (qword_281064D50 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_281064D58);
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  sub_24AD5E124();
  (*(v1 + 8))(v3, v0);
  v5 = v11;
  if (v11 >> 60 == 15)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = v10;
  sub_24AD5E264();
  swift_allocObject();
  sub_24AD5E254();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61D8, &qword_24AD608D8);
  sub_24AD3850C(&qword_2810649D8, &qword_2810649A0, MEMORY[0x277CBBEC8], MEMORY[0x277D83B70]);
  sub_24AD5E244();

  v7 = sub_24AD32ADC(v10);
  sub_24AD38594(v6, v5);

  return v7;
}

uint64_t sub_24AD37F24(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61D0, &qword_24AD608D0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - v4;
  if (qword_281064D90 != -1)
  {
    swift_once();
  }

  v6 = sub_24AD5E7A4();
  __swift_project_value_buffer(v6, qword_281065448);
  v7 = a1;
  v8 = sub_24AD5E784();
  v9 = sub_24AD5EB64();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v37[0] = v11;
    *v10 = 136446466;
    v12 = [v7 ownerName];
    v33 = v2;
    v13 = v7;
    v14 = v12;
    v15 = sub_24AD5E844();
    v17 = v16;

    v18 = sub_24AD2EDAC(v15, v17, v37);

    *(v10 + 4) = v18;
    *(v10 + 12) = 2082;
    v19 = [v13 zoneName];
    v20 = sub_24AD5E844();
    v22 = v21;

    v23 = sub_24AD2EDAC(v20, v22, v37);

    *(v10 + 14) = v23;
    v7 = v13;
    v2 = v33;
    _os_log_impl(&dword_24ACF2000, v8, v9, "mark CKRecordZone clean: %{public}s/%{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C22F400](v11, -1, -1);
    MEMORY[0x24C22F400](v10, -1, -1);
  }

  if (qword_281064D50 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v2, qword_281064D58);
  swift_beginAccess();
  (*(v3 + 16))(v5, v24, v2);
  sub_24AD5E124();
  (*(v3 + 8))(v5, v2);
  v25 = v35;
  if (v35 >> 60 == 15)
  {
    v32 = MEMORY[0x277D84FA0];
  }

  else
  {
    v26 = v34;
    sub_24AD5E264();
    swift_allocObject();
    sub_24AD5E254();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61D8, &qword_24AD608D8);
    sub_24AD3850C(&qword_2810649D8, &qword_2810649A0, MEMORY[0x277CBBEC8], MEMORY[0x277D83B70]);
    sub_24AD5E244();
    sub_24AD38594(v26, v25);

    v32 = v34;
  }

  v38 = v32;

  v27 = v38;
  if ((v38 & 0xC000000000000001) != 0)
  {
    if (sub_24AD5EC94())
    {
LABEL_12:
      sub_24AD5E294();
      swift_allocObject();
      sub_24AD5E284();
      v34 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61D8, &qword_24AD608D8);
      sub_24AD3850C(&qword_2810649E0, &qword_2810649A8, MEMORY[0x277CBBEC0], MEMORY[0x277D83B50]);
      v28 = sub_24AD5E274();
      v30 = v29;

      *&v36 = v28;
      *(&v36 + 1) = v30;
      swift_beginAccess();
      sub_24AD0615C(v28, v30);
      sub_24AD5E134();
      swift_endAccess();
      return sub_24AD06204(v28, v30);
    }
  }

  else if (*(v38 + 16))
  {
    goto LABEL_12;
  }

  v36 = xmmword_24AD60340;
  swift_beginAccess();
  sub_24AD5E134();
  return swift_endAccess();
}

uint64_t sub_24AD384B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_24AD06578(255, &qword_281064998, 0x277CBC5F8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24AD3850C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFA61D8, &qword_24AD608D8);
    sub_24AD384B8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24AD38594(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24AD06204(result, a2);
  }

  return result;
}

uint64_t sub_24AD385A8(uint64_t a1)
{
  v3 = *(sub_24AD5E404() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_24AD162F0(a1, v4, v5);
}

uint64_t sub_24AD3861C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FA0, &qword_24AD5FE50) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_24AD5E404() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24AD0C594;

  return sub_24AD168EC(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_24AD38788(uint64_t a1)
{
  v4 = *(sub_24AD5E404() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AD0C360;

  return sub_24AD164D0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_24AD38880(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudKitChangeSet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24AD388E4()
{
  result = qword_281064A48;
  if (!qword_281064A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281064A48);
  }

  return result;
}

uint64_t sub_24AD38938(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AD0C594;

  return sub_24AD514E8(a1, a2, v7, v6);
}

uint64_t sub_24AD389EC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AD0C360;

  return sub_24AD514E8(a1, a2, v7, v6);
}

unint64_t sub_24AD38AA0(unint64_t result, void *a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    return a2;
  }

  return result;
}

unint64_t sub_24AD38AAC(unint64_t result)
{
  if (result >> 2 != 0xFFFFFFFF)
  {
    return sub_24AD38AC0(result);
  }

  return result;
}

uint64_t sub_24AD38AC0(uint64_t result)
{
  if (result < 0)
  {
    return MEMORY[0x2821F96F8]();
  }

  return result;
}

unint64_t sub_24AD38ACC()
{
  result = qword_2810649F8;
  if (!qword_2810649F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFA6250, &qword_24AD609C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810649F8);
  }

  return result;
}

uint64_t sub_24AD38B48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_24AD38BB0()
{
  result = qword_281065398;
  if (!qword_281065398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281065398);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudKitAnalytics.Events(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudKitAnalytics.Events(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24AD38DBC()
{
  result = qword_281064A80;
  if (!qword_281064A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281064A80);
  }

  return result;
}

unint64_t sub_24AD38E14()
{
  result = qword_281064A70;
  if (!qword_281064A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281064A70);
  }

  return result;
}

uint64_t sub_24AD38E68(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000036;
  v3 = &unk_24AD61530;
  v4 = a1;
  v5 = 0xD000000000000039;
  if (a1 == 4)
  {
    v5 = 0xD000000000000037;
    v6 = "yCloudKit.fetchZoneChanges";
  }

  else
  {
    v6 = "yCloudKit.cloudKitError";
  }

  if (a1 == 3)
  {
    v7 = 0xD00000000000003ALL;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v6 = "yCloudKit.fetchDatabaseChanges";
  }

  v8 = 0xD00000000000003ELL;
  if (a1 == 1)
  {
    v8 = 0xD000000000000036;
    v9 = "yCloudKit.pushReceived";
  }

  else
  {
    v9 = "yCloudKit.accountState";
  }

  if (v4)
  {
    v10 = v9;
  }

  else
  {
    v8 = 0xD000000000000036;
    v10 = &unk_24AD61530;
  }

  if (v4 <= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD00000000000003ALL;
      v3 = "yCloudKit.fetchDatabaseChanges";
    }

    else if (a2 == 4)
    {
      v2 = 0xD000000000000037;
      v3 = "yCloudKit.fetchZoneChanges";
    }

    else
    {
      v2 = 0xD000000000000039;
      v3 = "yCloudKit.cloudKitError";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v3 = "yCloudKit.pushReceived";
    }

    else
    {
      v2 = 0xD00000000000003ELL;
      v3 = "yCloudKit.accountState";
    }
  }

  if (v11 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_24AD5EF84();
  }

  return v13 & 1;
}

uint64_t sub_24AD38FCC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000444972;
  v3 = 0x656E6961746E6F63;
  v4 = a1;
  v5 = 0xD000000000000011;
  if (a1 == 5)
  {
    v6 = 0x800000024AD616F0;
  }

  else
  {
    v5 = 0x6E6F6974656C6564;
    v6 = 0xED0000746E756F43;
  }

  v7 = 0xD000000000000010;
  v8 = 0x800000024AD616D0;
  if (a1 != 3)
  {
    v7 = 0x53746E756F636361;
    v8 = 0xEC00000065746174;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0xE700000000000000;
  v10 = 0x444965706F6373;
  if (a1 != 1)
  {
    v10 = 0x4449656E6F7ALL;
    v9 = 0xE600000000000000;
  }

  if (!a1)
  {
    v10 = 0x656E6961746E6F63;
    v9 = 0xEB00000000444972;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x444965706F6373)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xE600000000000000;
        if (v11 != 0x4449656E6F7ALL)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0x800000024AD616F0;
        if (v11 != 0xD000000000000011)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xED0000746E756F43;
        if (v11 != 0x6E6F6974656C6564)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v2 = 0x800000024AD616D0;
      if (v11 != 0xD000000000000010)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v3 = 0x53746E756F636361;
    v2 = 0xEC00000065746174;
  }

  if (v11 != v3)
  {
LABEL_37:
    v13 = sub_24AD5EF84();
    goto LABEL_38;
  }

LABEL_34:
  if (v12 != v2)
  {
    goto LABEL_37;
  }

  v13 = 1;
LABEL_38:

  return v13 & 1;
}

uint64_t sub_24AD39224(unsigned __int8 a1)
{
  sub_24AD5F074();
  sub_24AD5E874();

  return sub_24AD5F094();
}

uint64_t sub_24AD39310(uint64_t a1)
{
  sub_24AD5E874();
}

uint64_t sub_24AD393EC(uint64_t a1, unsigned __int8 a2)
{
  sub_24AD5F074();
  sub_24AD5E874();

  return sub_24AD5F094();
}

uint64_t sub_24AD39534(uint64_t a1, unsigned __int8 a2)
{
  sub_24AD5F074();
  sub_24AD5E874();

  return sub_24AD5F094();
}

unint64_t sub_24AD3961C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24AD39ADC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24AD3964C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000036;
  v3 = *v1;
  v4 = &unk_24AD61530;
  v5 = "yCloudKit.fetchDatabaseChanges";
  v6 = 0xD00000000000003ALL;
  v7 = "yCloudKit.fetchZoneChanges";
  v8 = 0xD000000000000039;
  if (v3 == 4)
  {
    v8 = 0xD000000000000037;
  }

  else
  {
    v7 = "yCloudKit.cloudKitError";
  }

  if (v3 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = "yCloudKit.pushReceived";
  v10 = 0xD00000000000003ELL;
  if (v3 == 1)
  {
    v10 = 0xD000000000000036;
  }

  else
  {
    v9 = "yCloudKit.accountState";
  }

  if (*v1)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v2 = v6;
    v11 = v5;
  }

  *a1 = v2;
  a1[1] = v11 | 0x8000000000000000;
}

unint64_t sub_24AD396F8()
{
  result = qword_281064A78;
  if (!qword_281064A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281064A78);
  }

  return result;
}

unint64_t sub_24AD39750()
{
  result = qword_281064A98[0];
  if (!qword_281064A98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281064A98);
  }

  return result;
}

unint64_t sub_24AD397A8()
{
  result = qword_281064A88;
  if (!qword_281064A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281064A88);
  }

  return result;
}

uint64_t sub_24AD39814(uint64_t a1)
{
  sub_24AD5E874();
}

unint64_t sub_24AD39950@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24AD39B28(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24AD39980(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000444972;
  v4 = 0x656E6961746E6F63;
  v5 = 0x800000024AD616F0;
  v6 = 0xD000000000000011;
  if (v2 != 5)
  {
    v6 = 0x6E6F6974656C6564;
    v5 = 0xED0000746E756F43;
  }

  v7 = 0xD000000000000010;
  v8 = 0x800000024AD616D0;
  if (v2 != 3)
  {
    v7 = 0x53746E756F636361;
    v8 = 0xEC00000065746174;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE700000000000000;
  v10 = 0x444965706F6373;
  if (v2 != 1)
  {
    v10 = 0x4449656E6F7ALL;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_24AD39A88()
{
  result = qword_281064A90;
  if (!qword_281064A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281064A90);
  }

  return result;
}

unint64_t sub_24AD39ADC(uint64_t a1, uint64_t a2)
{
  v2 = sub_24AD5EF34();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24AD39B28(uint64_t a1, uint64_t a2)
{
  v2 = sub_24AD5EF34();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t CloudKitCoordinator.__allocating_init(containerIdentifier:bundleIdentifier:containerEnvironment:mode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  swift_allocObject();
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_24AD0BDA0;

  return CloudKitCoordinator.init(containerIdentifier:bundleIdentifier:containerEnvironment:mode:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_24AD39C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60A8, &qword_24AD60380);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24AD38B48(a3, v25 - v10, &qword_27EFA60A8, &qword_24AD60380);
  v12 = sub_24AD5E964();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24AD06518(v11, &qword_27EFA60A8, &qword_24AD60380);
  }

  else
  {
    sub_24AD5E954();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24AD5E924();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24AD5E864() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_24AD06518(a3, &qword_27EFA60A8, &qword_24AD60380);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24AD06518(a3, &qword_27EFA60A8, &qword_24AD60380);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

FindMyCloudKit::CloudKitCoordinator::Deletion __swiftcall CloudKitCoordinator.Deletion.init(recordType:recordID:)(Swift::String recordType, CKRecordID recordID)
{
  *v2 = recordType;
  *(v2 + 16) = recordID;
  result.recordType = recordType;
  result.recordID = recordID;
  return result;
}

uint64_t sub_24AD39F84(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return MEMORY[0x2822009F8](sub_24AD39FA8, v2, 0);
}

uint64_t sub_24AD39FA8()
{
  v1 = *(v0[21] + 112);
  v2 = sub_24AD5E834();
  v0[22] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24AD3A0E4;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6340, &qword_24AD61450);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24AD2E470;
  v0[13] = &block_descriptor_227;
  v0[14] = v3;
  [v1 fetchShareParticipantWithEmailAddress:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24AD3A0E4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  v3 = *(v1 + 168);
  if (v2)
  {
    v4 = sub_24AD5AC8C;
  }

  else
  {
    v4 = sub_24AD5AC84;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AD3A204(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return MEMORY[0x2822009F8](sub_24AD3A228, v2, 0);
}

uint64_t sub_24AD3A228()
{
  v1 = *(v0[21] + 112);
  v2 = sub_24AD5E834();
  v0[22] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24AD3A364;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6340, &qword_24AD61450);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24AD2E470;
  v0[13] = &block_descriptor_223;
  v0[14] = v3;
  [v1 fetchShareParticipantWithPhoneNumber:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24AD3A364()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  v3 = *(v1 + 168);
  if (v2)
  {
    v4 = sub_24AD3A4F0;
  }

  else
  {
    v4 = sub_24AD3A484;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AD3A484()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24AD3A4F0(uint64_t a1)
{
  v2 = *(v1 + 176);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_24AD3A560(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_24AD3A584, v2, 0);
}

uint64_t sub_24AD3A584()
{
  v1 = v0[4];
  v24 = v0[5];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6320, &qword_24AD61428);
  v3 = sub_24AD5E364();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24AD5F820;
  v7 = *(v4 + 16);
  v7(v6 + v5, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6328, &unk_24AD61430);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61A8, &qword_24AD608A8) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24AD5F820;
  v11 = v10 + v9;
  v12 = v8[14];
  v7(v11, v2, v3);
  *(v11 + v12) = v1;
  v13 = v1;
  sub_24AD344AC(v10);
  swift_setDeallocating();
  sub_24AD06518(v11, &qword_27EFA61A8, &qword_24AD608A8);
  swift_deallocClassInstance();
  v14 = objc_allocWithZone(MEMORY[0x277CBC3F8]);
  v15 = sub_24AD5E8B4();

  sub_24AD06578(0, &qword_27EFA5F80, 0x277CBC2C0);
  sub_24AD5A540(&qword_27EFA6048, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v16 = sub_24AD5E7C4();

  v17 = [v14 initWithShareURLs:v15 invitationTokensByShareURL:v16];
  v0[6] = v17;

  v19 = sub_24AD5A540(&qword_281065388, v18, type metadata accessor for CloudKitCoordinator, &protocol conformance descriptor for CloudKitCoordinator);
  v20 = swift_task_alloc();
  v0[7] = v20;
  *(v20 + 16) = v17;
  *(v20 + 24) = v24;
  v21 = swift_task_alloc();
  v0[8] = v21;
  v22 = sub_24AD06578(0, &qword_27EFA6330, 0x277CBC698);
  *v21 = v0;
  v21[1] = sub_24AD3A960;

  return MEMORY[0x2822008A0](v0 + 2, v24, v19, 0xD000000000000019, 0x800000024AD61F20, sub_24AD5A268, v20, v22);
}

uint64_t sub_24AD3A960()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_24AD3AAF0;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_24AD3AA88;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AD3AA88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24AD3AAF0()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_24AD3AB74(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_24AD2E67C(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24AD3ACA4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_24AD5EC94();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_24AD5EC94();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_24AD52214(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_24AD52354(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_24AD3AD94(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t IdentityLossResolutionMode.hashValue.getter()
{
  v1 = *v0;
  sub_24AD5F074();
  MEMORY[0x24C22ED70](v1);
  return sub_24AD5F094();
}

uint64_t sub_24AD3AF64()
{
  v0 = sub_24AD5E7A4();
  __swift_allocate_value_buffer(v0, qword_2810654A0);
  v1 = __swift_project_value_buffer(v0, qword_2810654A0);
  if (qword_281064A68 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_281065430);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_24AD3B02C()
{
  v1 = [*(v0 + 112) containerID];

  return v1;
}

uint64_t sub_24AD3B064@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 160);
  return result;
}

uint64_t sub_24AD3B0A8(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 160) = v2;
  return result;
}

uint64_t sub_24AD3B138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v35 = *a3;
  v37 = MEMORY[0x277D84F90];
  v39 = MEMORY[0x277D84F90];
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v34 = v4;
  while (1)
  {
    v13 = v12;
    if (!v9)
    {
      break;
    }

LABEL_8:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = *(a1 + 56) + ((v12 << 10) | (16 * v14));
    if (*(v15 + 8) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
      result = swift_willThrowTypedImpl();
    }

    else
    {
      v16 = *v15;
      MEMORY[0x24C22E590]();
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24AD5E8E4();
      }

      result = sub_24AD5E904();
      v37 = v39;
    }
  }

  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a2 + 64);
  v20 = (v17 + 63) >> 6;

  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  if (v19)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v20)
    {

      v32 = [*(v34 + 112) containerID];
      v33 = MEMORY[0x277D84F90];
      result = sub_24AD341CC(MEMORY[0x277D84F90]);
      *a4 = v32;
      *(a4 + 8) = v35;
      *(a4 + 16) = 0;
      *(a4 + 24) = v33;
      *(a4 + 32) = v33;
      *(a4 + 40) = v37;
      *(a4 + 48) = v22;
      *(a4 + 56) = result;
      *(a4 + 64) = v33;
      return result;
    }

    v19 = *(a2 + 64 + 8 * v23);
    ++v21;
    if (v19)
    {
      v21 = v23;
      do
      {
LABEL_20:
        v24 = (*(a2 + 48) + 24 * (__clz(__rbit64(v19)) | (v21 << 6)));
        v25 = *v24;
        v26 = v24[1];
        v27 = v24[2];

        v28 = v27;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_24AD2E7B0(0, *(v22 + 16) + 1, 1, v22);
          v22 = result;
        }

        v30 = *(v22 + 16);
        v29 = *(v22 + 24);
        if (v30 >= v29 >> 1)
        {
          result = sub_24AD2E7B0((v29 > 1), v30 + 1, 1, v22);
          v22 = result;
        }

        v19 &= v19 - 1;
        *(v22 + 16) = v30 + 1;
        v31 = (v22 + 24 * v30);
        v31[4] = v25;
        v31[5] = v26;
        v31[6] = v28;
      }

      while (v19);
    }
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t CloudKitCoordinator.init(containerIdentifier:bundleIdentifier:containerEnvironment:mode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v8 = v6;
  *(v7 + 144) = a5;
  *(v7 + 152) = v8;
  *(v7 + 128) = a3;
  *(v7 + 136) = a4;
  *(v7 + 112) = a1;
  *(v7 + 120) = a2;
  *(v7 + 160) = *v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60A8, &qword_24AD60380);
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 272) = *a6;

  return MEMORY[0x2822009F8](sub_24AD3B53C, 0, 0);
}

uint64_t sub_24AD3B53C()
{
  v31 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  swift_defaultActor_initialize();
  v3 = MEMORY[0x277D84F98];
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = v3;
  *(v2 + 152) = v3;
  *(v2 + 160) = 0;
  v4 = objc_allocWithZone(MEMORY[0x277CBC220]);
  v5 = sub_24AD5E834();
  v6 = [v4 initWithContainerIdentifier:v5 environment:v1];
  *(v0 + 176) = v6;

  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v7 = sub_24AD5E7A4();
  __swift_project_value_buffer(v7, qword_2810654A0);
  v8 = v6;
  v9 = sub_24AD5E784();
  v10 = sub_24AD5EB64();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&dword_24ACF2000, v9, v10, "Created CloudKit container named: %{public}@", v11, 0xCu);
    sub_24AD06518(v12, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v12, -1, -1);
    MEMORY[0x24C22F400](v11, -1, -1);
  }

  v14 = *(v0 + 144);

  if (v14 == 2)
  {
    v15 = sub_24AD5E784();
    v16 = sub_24AD5EB44();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_24ACF2000, v15, v16, "*** USING CLOUDKIT SANDBOX ENVIRONMENT ***", v17, 2u);
      MEMORY[0x24C22F400](v17, -1, -1);
    }
  }

  v18 = *(v0 + 272);
  v19 = *(v0 + 152);
  v21 = *(v0 + 128);
  v20 = *(v0 + 136);
  v23 = *(v0 + 112);
  v22 = *(v0 + 120);
  *(v19 + 112) = [objc_allocWithZone(MEMORY[0x277CBC218]) initWithContainerID_];
  *(v19 + 161) = v18;
  sub_24AD5ED34();

  MEMORY[0x24C22E570](v23, v22);

  sub_24AD5ED34();

  v30[0] = 0xD00000000000001BLL;
  v30[1] = 0x800000024AD61D30;
  MEMORY[0x24C22E570](v21, v20);

  *(v0 + 184) = 0xD00000000000001BLL;
  *(v0 + 192) = 0x800000024AD61D30;
  v24 = sub_24AD5E784();
  v25 = sub_24AD5EB64();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v30[0] = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_24AD2EDAC(0x69746375646F7270, 0xEA00000000006E6FLL, v30);
    _os_log_impl(&dword_24ACF2000, v24, v25, "pushEnvironment: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x24C22F400](v27, -1, -1);
    MEMORY[0x24C22F400](v26, -1, -1);
  }

  else
  {
  }

  *(v0 + 200) = sub_24AD5E774();
  v28 = swift_task_alloc();
  *(v0 + 208) = v28;
  *v28 = v0;
  v28[1] = sub_24AD3B9C0;

  return MEMORY[0x28215F5A0](0x69746375646F7270, 0xEA00000000006E6FLL, 0xD000000000000016, 0x800000024AD61D10);
}

uint64_t sub_24AD3B9C0(uint64_t a1)
{
  *(*v1 + 216) = a1;

  return MEMORY[0x2822009F8](sub_24AD3BAC0, 0, 0);
}

uint64_t sub_24AD3BAC0()
{
  v1 = *(v0 + 152);
  *(v1 + 120) = *(v0 + 216);
  return MEMORY[0x2822009F8](sub_24AD3BAE4, v1, 0);
}

uint64_t sub_24AD3BAE4()
{
  v0[28] = *(v0[19] + 120);
  v0[29] = sub_24AD5A540(&qword_281064A50, 255, MEMORY[0x277D08F50], MEMORY[0x277D08F58]);

  v2 = sub_24AD5E924();

  return MEMORY[0x2822009F8](sub_24AD3BBC4, v2, v1);
}

uint64_t sub_24AD3BBC4()
{
  sub_24AD5E704();

  *(v0 + 240) = sub_24AD5A540(&qword_281065388, v1, type metadata accessor for CloudKitCoordinator, &protocol conformance descriptor for CloudKitCoordinator);
  swift_getObjectType();
  v3 = sub_24AD5E924();

  return MEMORY[0x2822009F8](sub_24AD3BCB8, v3, v2);
}

uint64_t sub_24AD3BCB8()
{
  *(v0 + 248) = *(*(v0 + 152) + 120);

  v2 = sub_24AD5E924();

  return MEMORY[0x2822009F8](sub_24AD3BD50, v2, v1);
}

uint64_t sub_24AD3BD50()
{
  sub_24AD5E754();

  swift_getObjectType();
  v1 = sub_24AD5E924();

  return MEMORY[0x2822009F8](sub_24AD3BE00, v1, v0);
}

uint64_t sub_24AD3BE00()
{
  v1 = v0[24];
  v2 = v0[23];
  v0[32] = *(v0[19] + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6158, &qword_24AD60860);
  v3 = swift_allocObject();
  v0[33] = v3;
  *(v3 + 16) = xmmword_24AD5F820;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  v5 = sub_24AD5E924();

  return MEMORY[0x2822009F8](sub_24AD3BED8, v5, v4);
}

uint64_t sub_24AD3BED8()
{
  sub_24AD5E764();

  swift_getObjectType();
  v1 = sub_24AD5E924();

  return MEMORY[0x2822009F8](sub_24AD3BF80, v1, v0);
}

uint64_t sub_24AD3BF80()
{
  v1 = v0[21];
  v21 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = sub_24AD5E964();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  sub_24AD39C64(0, 0, v1, &unk_24AD60C28, v6);

  v7 = objc_opt_self();
  v8 = [v7 defaultCenter];
  v9 = *MEMORY[0x277CBBF00];
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = v3;
  v0[6] = sub_24AD52D90;
  v0[7] = v10;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24AD3FDB8;
  v0[5] = &block_descriptor_0;
  v11 = _Block_copy(v0 + 2);

  v12 = [v8 addObserverForName:v9 object:0 queue:0 usingBlock:v11];
  _Block_release(v11);

  *(v2 + 128) = v12;
  swift_unknownObjectRelease();
  v13 = [v7 defaultCenter];
  v14 = *MEMORY[0x277CBBF90];
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = v3;
  v0[12] = sub_24AD52DE0;
  v0[13] = v15;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_24AD3FDB8;
  v0[11] = &block_descriptor_15;
  v16 = _Block_copy(v0 + 8);

  v17 = [v13 addObserverForName:v14 object:0 queue:0 usingBlock:v16];

  _Block_release(v16);
  *(v2 + 136) = v17;
  swift_unknownObjectRelease();

  v18 = v0[1];
  v19 = v0[19];

  return v18(v19);
}

uint64_t sub_24AD3C2C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AD0C360;

  return sub_24AD3C35C(a1);
}

uint64_t sub_24AD3C35C(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_24AD5E624();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6300, &unk_24AD613D8);
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FC0, &unk_24AD60280);
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v6 = sub_24AD5E724();
  v2[24] = v6;
  v2[25] = *(v6 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD3C560, v1, 0);
}

uint64_t sub_24AD3C560()
{
  v107 = v0;
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = *(v0 + 96);
  v5 = sub_24AD5E7A4();
  *(v0 + 224) = __swift_project_value_buffer(v5, qword_2810654A0);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_24AD5E784();
  v8 = sub_24AD5EB64();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 216);
  v12 = *(v0 + 192);
  v11 = *(v0 + 200);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v106[0] = v97;
    *v13 = 136315138;
    sub_24AD5A540(&qword_27EFA6310, 255, MEMORY[0x277D08F38], MEMORY[0x277D08F40]);
    v14 = v6;
    v15 = sub_24AD5EF74();
    v17 = v16;
    v104 = *(v11 + 8);
    v104(v10, v12);
    v18 = v15;
    v6 = v14;
    v19 = sub_24AD2EDAC(v18, v17, v106);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_24ACF2000, v7, v8, "Received APNS push: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v97);
    MEMORY[0x24C22F400](v97, -1, -1);
    MEMORY[0x24C22F400](v13, -1, -1);
  }

  else
  {

    v104 = *(v11 + 8);
    v104(v10, v12);
  }

  v20 = sub_24AD5E714();
  sub_24AD4D340(v20);

  v21 = sub_24AD5E7C4();

  v22 = [objc_opt_self() notificationFromRemoteNotificationDictionary_];
  *(v0 + 232) = v22;

  if (!v22)
  {
    v6(*(v0 + 208), *(v0 + 96), *(v0 + 192));
    v32 = sub_24AD5E784();
    v33 = sub_24AD5EB44();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 208);
    v36 = *(v0 + 192);
    if (v34)
    {
      v37 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v106[0] = v101;
      *v37 = 136315138;
      sub_24AD5E714();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6308, &qword_24AD613E8);
      v38 = sub_24AD5E7D4();
      v40 = v39;

      v104(v35, v36);
      v41 = sub_24AD2EDAC(v38, v40, v106);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_24ACF2000, v32, v33, "Unable to construct CKNotification from %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v101);
      MEMORY[0x24C22F400](v101, -1, -1);
      MEMORY[0x24C22F400](v37, -1, -1);
    }

    else
    {

      v104(v35, v36);
    }

    goto LABEL_22;
  }

  v23 = *(v0 + 104);
  sub_24AD06578(0, &qword_281064970, 0x277D82BB8);
  v24 = [v22 containerID];
  v25 = [*(v23 + 112) containerID];
  v26 = sub_24AD5EC04();

  if ((v26 & 1) == 0)
  {
    v42 = sub_24AD5E784();
    v43 = sub_24AD5EB64();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      v45 = "Notification is not for this container!";
LABEL_18:
      v46 = v43;
      v47 = v42;
      v48 = v44;
      v49 = 2;
LABEL_19:
      _os_log_impl(&dword_24ACF2000, v47, v46, v45, v48, v49);
      MEMORY[0x24C22F400](v44, -1, -1);
    }

LABEL_20:

    goto LABEL_22;
  }

  v27 = [v22 notificationType];
  if (v27 <= 2)
  {
    if (v27 == 1)
    {
      v42 = sub_24AD5E784();
      v43 = sub_24AD5EB44();
      if (!os_log_type_enabled(v42, v43))
      {
        goto LABEL_20;
      }

      v44 = swift_slowAlloc();
      *v44 = 0;
      v45 = "Query notifications are not handled.";
      goto LABEL_18;
    }

    if (v27 == 2)
    {
      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (v28)
      {
        v29 = v28;
        v30 = [v28 recordZoneID];
        *(v0 + 240) = v30;
        if (v30)
        {
          v31 = v30;
          sub_24AD4D63C([v29 databaseScope], v106);
          v92 = v29;
          v74 = v0;
          v75 = *(v0 + 168);
          v76 = *(v0 + 144);
          v77 = *(v0 + 104);
          v98 = LOBYTE(v106[0]) | 0x8000000000000000;
          v105 = v74;
          swift_beginAccess();
          v78 = *(v77 + 152);
          v79 = -1;
          v80 = -1 << *(v78 + 32);
          if (-v80 < 64)
          {
            v79 = ~(-1 << -v80);
          }

          v81 = v79 & *(v78 + 64);
          v82 = (63 - v80) >> 6;
          v95 = (v76 + 8);
          v100 = v31;
          v93 = v31;

          for (i = 0; v81; result = (*(v75 + 8))(v85, v86))
          {
            v84 = i;
LABEL_60:
            v85 = *(v105 + 184);
            v87 = *(v105 + 152);
            v86 = *(v105 + 160);
            v88 = *(v105 + 136);
            v89 = __clz(__rbit64(v81));
            v81 &= v81 - 1;
            (*(v75 + 16))(v85, *(v78 + 56) + *(v75 + 72) * (v89 | (v84 << 6)), v86);
            *(v105 + 80) = v98;
            *(v105 + 88) = v100;
            v90 = v93;
            sub_24AD5E984();
            (*v95)(v87, v88);
          }

          while (1)
          {
            v84 = i + 1;
            if (__OFADD__(i, 1))
            {
              break;
            }

            if (v84 >= v82)
            {

              *(v105 + 248) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
              *(v105 + 329) = 0;
              *(v105 + 256) = sub_24AD5E604();
              v71 = swift_task_alloc();
              *(v105 + 264) = v71;
              *(v71 + 16) = v92;
              v103 = (*MEMORY[0x277D08A88] + MEMORY[0x277D08A88]);
              v91 = swift_task_alloc();
              *(v105 + 272) = v91;
              *v91 = v105;
              v91[1] = sub_24AD3D3C8;
              v73 = &unk_24AD61408;
              goto LABEL_63;
            }

            v81 = *(v78 + 64 + 8 * v84);
            ++i;
            if (v81)
            {
              i = v84;
              goto LABEL_60;
            }
          }

LABEL_67:
          __break(1u);
          return result;
        }

LABEL_22:

        v50 = *(v0 + 8);

        return v50();
      }

      v42 = sub_24AD5E784();
      v43 = sub_24AD5EB44();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        v45 = "Unable to cast .recordZone notification to CKRecordZoneNotification";
        goto LABEL_18;
      }

      goto LABEL_20;
    }

LABEL_29:
    v22 = v22;
    v42 = sub_24AD5E784();
    v54 = sub_24AD5EB44();
    if (!os_log_type_enabled(v42, v54))
    {

      goto LABEL_20;
    }

    v44 = swift_slowAlloc();
    *v44 = 134217984;
    *(v44 + 4) = [v22 notificationType];

    v45 = "Unhandled notificationType: %ld";
    v46 = v54;
    v47 = v42;
    v48 = v44;
    v49 = 12;
    goto LABEL_19;
  }

  if (v27 == 3)
  {
    v42 = sub_24AD5E784();
    v43 = sub_24AD5EB44();
    if (!os_log_type_enabled(v42, v43))
    {
      goto LABEL_20;
    }

    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = "Read notifications are not handled.";
    goto LABEL_18;
  }

  if (v27 != 4)
  {
    goto LABEL_29;
  }

  objc_opt_self();
  v52 = swift_dynamicCastObjCClass();
  if (!v52)
  {
    v42 = sub_24AD5E784();
    v43 = sub_24AD5EB44();
    if (!os_log_type_enabled(v42, v43))
    {
      goto LABEL_20;
    }

    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = "Unable to cast .database notification to CKDatabaseNotification";
    goto LABEL_18;
  }

  v53 = v52;
  sub_24AD4D63C([v52 databaseScope], v106);
  v94 = v53;
  v55 = *(v0 + 168);
  v56 = *(v0 + 144);
  v57 = *(v0 + 104);
  v99 = LOBYTE(v106[0]);
  swift_beginAccess();
  v58 = *(v57 + 152);
  v59 = v58 + 64;
  v60 = -1;
  v61 = -1 << *(v58 + 32);
  if (-v61 < 64)
  {
    v60 = ~(-1 << -v61);
  }

  v62 = v60 & *(v58 + 64);
  v63 = (63 - v61) >> 6;
  v96 = (v56 + 8);
  v102 = v58;

  v64 = 0;
  if (v62)
  {
    while (1)
    {
      v65 = v64;
LABEL_49:
      v66 = *(v0 + 176);
      v68 = *(v0 + 152);
      v67 = *(v0 + 160);
      v69 = *(v0 + 136);
      v70 = __clz(__rbit64(v62));
      v62 &= v62 - 1;
      (*(v55 + 16))(v66, *(v102 + 56) + *(v55 + 72) * (v70 | (v65 << 6)), v67);
      *(v0 + 64) = v99;
      *(v0 + 72) = 0;
      sub_24AD5E984();
      (*v96)(v68, v69);
      result = (*(v55 + 8))(v66, v67);
      if (!v62)
      {
        goto LABEL_45;
      }
    }
  }

  while (1)
  {
LABEL_45:
    v65 = v64 + 1;
    if (__OFADD__(v64, 1))
    {
      __break(1u);
      goto LABEL_67;
    }

    if (v65 >= v63)
    {
      break;
    }

    v62 = *(v59 + 8 * v65);
    ++v64;
    if (v62)
    {
      v64 = v65;
      goto LABEL_49;
    }
  }

  *(v0 + 288) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
  *(v0 + 328) = 0;
  *(v0 + 296) = sub_24AD5E604();
  v71 = swift_task_alloc();
  *(v0 + 304) = v71;
  *(v71 + 16) = v94;
  v103 = (*MEMORY[0x277D08A88] + MEMORY[0x277D08A88]);
  v72 = swift_task_alloc();
  *(v0 + 312) = v72;
  *v72 = v0;
  v72[1] = sub_24AD3D690;
  v73 = &unk_24AD613F8;
LABEL_63:

  return v103(v73, v71);
}

uint64_t sub_24AD3D3C8()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = sub_24AD3D950;
    v5 = 0;
  }

  else
  {

    sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260, MEMORY[0x277D08A90]);
    v6 = sub_24AD5E924();
    v8 = v7;
    v4 = sub_24AD3D538;
    v3 = v6;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v4, v3, v5);
}

uint64_t sub_24AD3D538()
{
  v1 = *(v0 + 104);
  sub_24AD5E5D4();

  return MEMORY[0x2822009F8](sub_24AD3D5A8, v1, 0);
}

uint64_t sub_24AD3D5A8()
{
  v2 = v0[29];
  v1 = v0[30];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  sub_24AD5E634();

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_24AD3D690()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = sub_24AD3DB14;
    v5 = 0;
  }

  else
  {

    sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260, MEMORY[0x277D08A90]);
    v6 = sub_24AD5E924();
    v8 = v7;
    v4 = sub_24AD3D800;
    v3 = v6;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v4, v3, v5);
}

uint64_t sub_24AD3D800()
{
  v1 = *(v0 + 104);
  sub_24AD5E5D4();

  return MEMORY[0x2822009F8](sub_24AD3D870, v1, 0);
}

uint64_t sub_24AD3D870()
{
  v1 = v0[29];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  sub_24AD5E634();

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24AD3D950()
{
  v1 = v0[30];

  v2 = v0[35];
  v3 = v2;
  v4 = sub_24AD5E784();
  v5 = sub_24AD5EB44();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[29];
  v8 = v0[30];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = sub_24AD5E324();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_24ACF2000, v4, v5, "Error processing CKRecordZoneNotification: %{public}@", v9, 0xCu);
    sub_24AD06518(v10, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v10, -1, -1);
    MEMORY[0x24C22F400](v9, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}