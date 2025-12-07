uint64_t sub_252BC6DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[308] = v3;
  v4[307] = a3;
  v4[306] = a2;
  v4[305] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540570, &unk_252E50EE0);
  v4[309] = swift_task_alloc();
  v5 = sub_252E36AD4();
  v4[310] = v5;
  v4[311] = *(v5 - 8);
  v4[312] = swift_task_alloc();
  sub_252E33944();
  v4[313] = swift_task_alloc();
  v6 = sub_252E34014();
  v4[314] = v6;
  v4[315] = *(v6 - 8);
  v4[316] = swift_task_alloc();
  v4[317] = swift_task_alloc();
  v4[318] = swift_task_alloc();
  v4[319] = swift_task_alloc();
  v4[320] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v4[321] = swift_task_alloc();
  v4[322] = swift_task_alloc();
  v7 = sub_252E36324();
  v4[323] = v7;
  v4[324] = *(v7 - 8);
  v4[325] = swift_task_alloc();
  v4[326] = swift_task_alloc();
  v4[327] = swift_task_alloc();
  v4[328] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BC7048, 0, 0);
}

uint64_t sub_252BC7048()
{
  v177 = v0;
  v1 = MEMORY[0x277D84F90];
  v155 = *(v0 + 2456);
  if (!v155)
  {
    v156 = 0;
    v158 = 1;
    goto LABEL_17;
  }

  v156 = sub_252C2ECE0();
  v158 = v2;
  v3 = sub_252C285F0();
  v4 = v3;
  __dst[0] = v1;
  v0 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    v6 = 0;
    while (i != v6)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530ADF00](v6, v4);
      }

      else
      {
        if (v6 >= *(v0 + 16))
        {
          goto LABEL_35;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v10 = sub_252DA124C(0);

      ++v6;
      if (v10)
      {
        MEMORY[0x2530AD700]();
        if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v1 = __dst[0];
        v6 = v9;
      }
    }

    v0 = v175;
LABEL_17:
    v157 = v1;
    *(v0 + 2632) = v1;
    v11 = [*(v0 + 2448) filters];
    if (!v11)
    {
      goto LABEL_43;
    }

    v12 = v11;
    type metadata accessor for HomeFilter();
    v13 = sub_252E37264();

    if (v13 >> 62)
    {
      break;
    }

    v4 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_40;
    }

LABEL_20:
    v14 = 0;
    v165 = v13 & 0xFFFFFFFFFFFFFF8;
    v167 = v13 & 0xC000000000000001;
    v159 = *(v0 + 2592);
    v171 = (v159 + 32);
    v1 = MEMORY[0x277D84F90];
    v161 = v4;
    v163 = v13;
    while (1)
    {
      if (v167)
      {
        v15 = MEMORY[0x2530ADF00](v14, v13);
      }

      else
      {
        if (v14 >= *(v165 + 16))
        {
          goto LABEL_37;
        }

        v15 = *(v13 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v18 = [v15 homeEntityName];
      if (v18)
      {
        v19 = v18;
        v20 = v1;
        v21 = *(v0 + 2624);
        v22 = *(v0 + 2616);
        v23 = *(v0 + 2584);
        sub_252E36F34();

        sub_252E37024();

        v24 = *v171;
        v25 = v21;
        v1 = v20;
        (*v171)(v25, v22, v23);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_2529F7F74(0, v20[2] + 1, 1, v20);
        }

        v27 = v1[2];
        v26 = v1[3];
        v0 = v175;
        v4 = v161;
        v13 = v163;
        if (v27 >= v26 >> 1)
        {
          v1 = sub_2529F7F74((v26 > 1), v27 + 1, 1, v1);
        }

        v28 = *(v175 + 2624);
        v29 = *(v175 + 2584);
        v1[2] = v27 + 1;
        v24(v1 + ((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v27, v28, v29);
      }

      else
      {
      }

      ++v14;
      if (v17 == v4)
      {
        goto LABEL_41;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  v4 = sub_252E378C4();
  if (v4)
  {
    goto LABEL_20;
  }

LABEL_40:
  v1 = MEMORY[0x277D84F90];
LABEL_41:

  if (!v1[2])
  {

LABEL_43:
    v30 = [*(v0 + 2448) filters];
    if (v30)
    {
      v31 = v30;
      type metadata accessor for HomeFilter();
      v32 = sub_252E37264();

      if (v32 >> 62)
      {
        goto LABEL_63;
      }

      for (j = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_252E378C4())
      {
        v34 = 0;
        v166 = v32 & 0xFFFFFFFFFFFFFF8;
        v168 = v32 & 0xC000000000000001;
        v160 = *(v0 + 2592);
        v35 = (v160 + 32);
        v1 = MEMORY[0x277D84F90];
        v162 = j;
        v164 = v32;
        while (1)
        {
          if (v168)
          {
            v36 = MEMORY[0x2530ADF00](v34, v32);
          }

          else
          {
            if (v34 >= *(v166 + 16))
            {
              goto LABEL_62;
            }

            v36 = *(v32 + 8 * v34 + 32);
          }

          v37 = v36;
          v38 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            break;
          }

          v39 = [v36 outerDeviceName];
          if (v39)
          {
            v40 = *(v0 + 2608);
            v41 = *(v0 + 2600);
            v172 = *(v0 + 2584);
            v42 = v39;
            sub_252E36F34();

            sub_252E37024();

            v43 = *v35;
            (*v35)(v40, v41, v172);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v1 = sub_2529F7F74(0, v1[2] + 1, 1, v1);
            }

            v45 = v1[2];
            v44 = v1[3];
            v0 = v175;
            j = v162;
            if (v45 >= v44 >> 1)
            {
              v1 = sub_2529F7F74((v44 > 1), v45 + 1, 1, v1);
            }

            v46 = *(v175 + 2608);
            v47 = *(v175 + 2584);
            v1[2] = v45 + 1;
            v43(v1 + ((*(v160 + 80) + 32) & ~*(v160 + 80)) + *(v160 + 72) * v45, v46, v47);
            v32 = v164;
          }

          else
          {
          }

          ++v34;
          if (v38 == j)
          {
            goto LABEL_65;
          }
        }

        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        ;
      }

      v1 = MEMORY[0x277D84F90];
LABEL_65:
    }

    else
    {
      v1 = MEMORY[0x277D84F90];
    }
  }

  v48 = *(v0 + 2464);
  v49 = *(*(v0 + 2592) + 56);
  v49(*(v0 + 2576), 1, 1, *(v0 + 2584));
  memcpy((v0 + 520), (v48 + 112), 0x1F8uLL);
  memcpy((v0 + 16), (v48 + 112), 0x1F8uLL);
  if (sub_252956B94((v0 + 16)) != 1)
  {
    v50 = v175;
    v51 = *(v175 + 2576);
    v52 = *(v175 + 2568);
    v53 = *(v175 + 2448);
    type metadata accessor for HomeAutomationIntentContext(0);
    memcpy(__dst, (v175 + 16), 0x1F8uLL);
    memcpy((v50 + 1024), (v50 + 520), 0x1F8uLL);
    sub_2529353AC(v50 + 1024, v50 + 1528);
    sub_2529532C8(__dst, v53, v52);
    sub_25293847C(v51, &qword_27F540298, &unk_252E3C270);
    sub_25293847C(v175 + 520, &qword_27F5404C8, &unk_252E3FD60);
    sub_2529439A0(v52, v51);
  }

  if (v158)
  {
LABEL_69:

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v54 = *(v175 + 2496);
    v55 = *(v175 + 2488);
    v56 = *(v175 + 2480);
    v57 = __swift_project_value_buffer(v56, qword_27F544D18);
    (*(v55 + 16))(v54, v57, v56);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();

    v58 = 0;
    v59 = 0;
    __dst[0] = 0xD00000000000002ELL;
    __dst[1] = 0x8000000252E86CA0;
    if ((v158 & 1) == 0)
    {
      v58 = HomeDeviceType.description.getter(v156);
    }

    v60 = *(v175 + 2496);
    v61 = *(v175 + 2488);
    v62 = *(v175 + 2480);
    v63 = *(v175 + 2472);
    v64 = *(v175 + 2464);
    *(v175 + 2392) = v58;
    *(v175 + 2400) = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v65 = sub_252E36F94();
    MEMORY[0x2530AD570](v65);

    sub_252CC4050(__dst[0], __dst[1], 0xD00000000000008ELL, 0x8000000252E86CD0, 0xD00000000000001FLL, 0x8000000252E84990, 170);

    (*(v61 + 8))(v60, v62);
    sub_2529515FC(0, 0, 0x4F6E776F6E6B6E75, 0xEE00656D6F637475);
    type metadata accessor for ErrorFilingHelper();
    v66 = swift_allocObject();
    sub_252E36884();
    swift_allocObject();
    *(v66 + 16) = sub_252E36874();
    v67 = sub_252E36834();
    (*(*(v67 - 8) + 56))(v63, 1, 1, v67);
    sub_25295ADB4(0xD000000000000060, 0x8000000252E86D60, 0x4F6E776F6E6B6E55, 0xEE00656D6F637475, 0xD000000000000016, 0x8000000252E50E30, v63);

    swift_setDeallocating();
    swift_deallocClassInstance();
    sub_25293847C(v63, &qword_27F540570, &unk_252E50EE0);
    v68 = v64[12];
    v69 = v64[13];
    __swift_project_boxed_opaque_existential_1(v64 + 9, v68);

    sub_252943BD0(sub_252B99F14, v64, 1, v68, v69);
    sub_25293847C(*(v175 + 2576), &qword_27F540298, &unk_252E3C270);

    v70 = *(v175 + 8);
    goto LABEL_106;
  }

  if (v156 > 18)
  {
    if ((v156 - 27) >= 2 && v156 != 23)
    {
      if (v156 != 19)
      {
        goto LABEL_69;
      }

      v86 = *(v175 + 2584);
      v87 = *(v175 + 2576);
      type metadata accessor for HomeAutomationEntityResponses.Builder();
      *(swift_allocObject() + 16) = MEMORY[0x277D84F90];
      v169 = type metadata accessor for HomeAutomationPolledEntityResponses();
      v88 = swift_allocObject();
      *(v175 + 2640) = v88;
      *(v88 + 16) = 0;
      swift_setDeallocating();
      swift_deallocClassInstance();
      v173 = v88;
      *(v88 + 24) = v157;
      type metadata accessor for HomeAutomationIntentContext.Builder(0);
      swift_allocObject();
      v89 = sub_2529930C0();
      v90 = v1;
      v91 = v89;
      *(v89 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_entityNames) = v90;

      type metadata accessor for HomeAutomationHomeLocation.Builder(0);
      v92 = swift_allocObject();
      v93 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
      v49(v92 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v86);
      swift_beginAccess();
      sub_252956BAC(v87, v92 + v93);
      swift_endAccess();
      type metadata accessor for HomeAutomationHomeLocation(0);
      v94 = swift_allocObject();
      *(v94 + 16) = 0;
      sub_252956C1C(v92 + v93, v94 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
      swift_setDeallocating();
      sub_25293847C(v92 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, &qword_27F540298, &unk_252E3C270);
      swift_deallocClassInstance();
      *(v91 + 24) = v94;

      type metadata accessor for HomeAutomationIntentContext(0);
      swift_allocObject();
      v95 = sub_252996D9C(v91);
      *(v175 + 2648) = v95;

      v97 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v96);
      sub_252929E74((v97 + 288), v175 + 2112);

      v98 = *(v175 + 2136);
      v99 = *(v175 + 2144);
      __swift_project_boxed_opaque_existential_1((v175 + 2112), v98);
      LOBYTE(v92) = (*(v99 + 120))(v98, v99);
      __swift_destroy_boxed_opaque_existential_1((v175 + 2112));
      if (v92)
      {
        v100 = *(v175 + 2464);
        v101 = *(v175 + 2448);
        v102 = swift_task_alloc();
        *(v175 + 2656) = v102;
        v102[2] = v101;
        v102[3] = v157;
        v102[4] = v95;
        sub_252E33924();
        sub_252E33F54();
        *(v175 + 2664) = *(v100 + 64);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
        v103 = swift_allocObject();
        *(v103 + 32) = 0x65736E6F70736572;
        *(v103 + 40) = 0xE900000000000073;
        *(v103 + 72) = v169;
        v170 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
        *(v175 + 2672) = v103;
        *(v103 + 16) = xmmword_252E3C290;
        *(v103 + 48) = v173;

        v104 = swift_task_alloc();
        *(v175 + 2680) = v104;
        *v104 = v175;
        v104[1] = sub_252BC8DA0;

        return v170(0xD000000000000025, 0x8000000252E86E20, v103);
      }

      else
      {
        v152 = *(v175 + 2464);

        v153 = *__swift_project_boxed_opaque_existential_1((v152 + 24), *(v152 + 48));

        v154 = swift_task_alloc();
        *(v175 + 2768) = v154;
        *v154 = v175;
        v154[1] = sub_252BC9C14;

        return sub_252C0F114(0, v153, v173);
      }
    }

    v74 = v175;
    v106 = v1;
    v107 = *(v175 + 2584);
    v108 = *(v175 + 2576);
    v109 = sub_252BCF744(*(v175 + 2448), *(v175 + 2456));
    type metadata accessor for HomeAutomationIntentContext.Builder(0);
    swift_allocObject();
    v110 = sub_2529930C0();
    *(v110 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isOpenRequest) = v109 & 1;
    *(v110 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isCloseRequest) = (v109 & 1) == 0;
    *(v110 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_entityNames) = v106;

    type metadata accessor for HomeAutomationHomeLocation.Builder(0);
    v111 = swift_allocObject();
    v112 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
    v49(v111 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v107);
    swift_beginAccess();
    sub_252956BAC(v108, v111 + v112);
    swift_endAccess();
    type metadata accessor for HomeAutomationHomeLocation(0);
    v113 = swift_allocObject();
    *(v113 + 16) = 0;
    sub_252956C1C(v111 + v112, v113 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
    swift_setDeallocating();
    sub_25293847C(v111 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, &qword_27F540298, &unk_252E3C270);
    swift_deallocClassInstance();
    *(v110 + 24) = v113;

    type metadata accessor for HomeAutomationIntentContext(0);
    swift_allocObject();
    v83 = sub_252996D9C(v110);
    *(v175 + 2912) = v83;

    v84 = swift_task_alloc();
    *(v175 + 2920) = v84;
    *v84 = v175;
    v85 = sub_252BCB400;
LABEL_89:
    v84[1] = v85;
    v114 = v74[307];
    v115 = v74[306];
    v116 = v74[305];

    return sub_252BCD190(v116, v157, v83, v115, v114);
  }

  if (!v156)
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v117 = *(v175 + 2584);
    v118 = *(v175 + 2576);
    v174 = *(v175 + 2464);
    __swift_project_value_buffer(*(v175 + 2480), qword_27F544D18);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();

    __dst[0] = 0xD000000000000014;
    __dst[1] = 0x8000000252E86DD0;
    *(v175 + 2408) = HomeDeviceType.description.getter(0);
    *(v175 + 2416) = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v120 = sub_252E36F94();
    MEMORY[0x2530AD570](v120);

    sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000008ELL, 0x8000000252E86CD0);

    type metadata accessor for HomeAutomationIntentContext.Builder(0);
    swift_allocObject();
    v121 = sub_2529930C0();
    *(v121 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_entityNames) = v1;

    type metadata accessor for HomeAutomationHomeLocation.Builder(0);
    v122 = swift_allocObject();
    v123 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
    v49(v122 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v117);
    swift_beginAccess();
    sub_252956BAC(v118, v122 + v123);
    swift_endAccess();
    type metadata accessor for HomeAutomationHomeLocation(0);
    v124 = swift_allocObject();
    *(v124 + 16) = 0;
    sub_252956C1C(v122 + v123, v124 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
    swift_setDeallocating();
    sub_25293847C(v122 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, &qword_27F540298, &unk_252E3C270);
    swift_deallocClassInstance();
    *(v121 + 24) = v124;

    type metadata accessor for HomeAutomationIntentContext(0);
    swift_allocObject();
    v125 = sub_252996D9C(v121);
    *(v175 + 2936) = v125;

    v126 = swift_allocObject();
    *(v175 + 2944) = v126;
    v126[2] = v174;
    v126[3] = v157;
    v126[4] = v125;

    if (v155)
    {
      v127 = *(v175 + 2464);
      v128 = *(v127 + 48);
      v129 = *(v175 + 2456);
      v130 = *__swift_project_boxed_opaque_existential_1((v127 + 24), v128);

      v131 = swift_task_alloc();
      *(v175 + 2952) = v131;
      *v131 = v175;
      v131[1] = sub_252BCB680;

      return sub_252C0F96C(0, v130, v157, v125);
    }

    else
    {
      v147 = *(v175 + 2464);

      sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
      v149 = v147[12];
      v148 = v147[13];
      __swift_project_boxed_opaque_existential_1(v147 + 9, v149);
      sub_252AD7CC4();
      v150 = swift_task_alloc();
      *(v175 + 3000) = v150;
      *v150 = v175;
      v150[1] = sub_252BCBADC;
      v151 = *(v175 + 2536);
      v179 = v148;

      return sub_252BDB88C(v175 + 2032, &unk_252E50EF8, v126, v151, 0, 0, 0, v149);
    }
  }

  if (v156 == 4)
  {
    v132 = [*(v175 + 2448) userTask];
    if (!v132 || (v133 = v132, v134 = [v132 value], v133, !v134))
    {

      v143 = qword_27F53F4D0;
      v144 = 115;
      goto LABEL_103;
    }

    v74 = v175;
    v135 = v1;
    v136 = *(v175 + 2584);
    v137 = *(v175 + 2576);
    v138 = [v134 BOOLValue];

    type metadata accessor for HomeAutomationIntentContext.Builder(0);
    swift_allocObject();
    v139 = sub_2529930C0();
    *(v139 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isGarageDoorRequest) = 1;
    *(v139 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isOpenRequest) = v138;
    *(v139 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isCloseRequest) = v138 ^ 1;
    *(v139 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_entityNames) = v135;

    type metadata accessor for HomeAutomationHomeLocation.Builder(0);
    v140 = swift_allocObject();
    v141 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
    v49(v140 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v136);
    swift_beginAccess();
    sub_252956BAC(v137, v140 + v141);
    swift_endAccess();
    type metadata accessor for HomeAutomationHomeLocation(0);
    v142 = swift_allocObject();
    *(v142 + 16) = 0;
    sub_252956C1C(v140 + v141, v142 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
    swift_setDeallocating();
    sub_25293847C(v140 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, &qword_27F540298, &unk_252E3C270);
    swift_deallocClassInstance();
    *(v139 + 24) = v142;

    type metadata accessor for HomeAutomationIntentContext(0);
    swift_allocObject();
    v83 = sub_252996D9C(v139);
    *(v175 + 2888) = v83;

    v84 = swift_task_alloc();
    *(v175 + 2896) = v84;
    *v84 = v175;
    v85 = sub_252BCB180;
    goto LABEL_89;
  }

  if (v156 != 7)
  {
    goto LABEL_69;
  }

  v71 = [*(v175 + 2448) userTask];
  if (v71)
  {
    v72 = v71;
    v73 = [v71 value];

    if (v73)
    {
      v74 = v175;
      v75 = v1;
      v76 = *(v175 + 2584);
      v77 = *(v175 + 2576);
      v78 = [v73 BOOLValue];

      type metadata accessor for HomeAutomationIntentContext.Builder(0);
      swift_allocObject();
      v79 = sub_2529930C0();
      *(v79 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isLockRequest) = v78;
      *(v79 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isUnlockRequest) = v78 ^ 1;
      *(v79 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_entityNames) = v75;

      type metadata accessor for HomeAutomationHomeLocation.Builder(0);
      v80 = swift_allocObject();
      v81 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
      v49(v80 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v76);
      swift_beginAccess();
      sub_252956BAC(v77, v80 + v81);
      swift_endAccess();
      type metadata accessor for HomeAutomationHomeLocation(0);
      v82 = swift_allocObject();
      *(v82 + 16) = 0;
      sub_252956C1C(v80 + v81, v82 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
      swift_setDeallocating();
      sub_25293847C(v80 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, &qword_27F540298, &unk_252E3C270);
      swift_deallocClassInstance();
      *(v79 + 24) = v82;

      type metadata accessor for HomeAutomationIntentContext(0);
      swift_allocObject();
      v83 = sub_252996D9C(v79);
      *(v175 + 2864) = v83;

      v84 = swift_task_alloc();
      *(v175 + 2872) = v84;
      *v84 = v175;
      v85 = sub_252BCAF00;
      goto LABEL_89;
    }
  }

  v143 = qword_27F53F4D0;
  v144 = 100;
LABEL_103:
  if (v143 != -1)
  {
    swift_once();
  }

  v145 = *(v175 + 2576);
  __swift_project_value_buffer(*(v175 + 2480), qword_27F544D18);
  sub_252CC4050(0xD000000000000023, 0x8000000252E86DF0, 0xD00000000000008ELL, 0x8000000252E86CD0, 0xD00000000000001FLL, 0x8000000252E84990, v144);
  sub_2529318DC();
  swift_allocError();
  *v146 = 8;
  swift_willThrow();
  sub_25293847C(v145, &qword_27F540298, &unk_252E3C270);

  v70 = *(v175 + 8);
LABEL_106:

  return v70();
}

uint64_t sub_252BC8DA0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2688) = a1;
  *(v3 + 2696) = v1;

  if (v1)
  {
    v4 = sub_252BC91D0;
  }

  else
  {

    v4 = sub_252BC8ECC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252BC8ECC()
{
  v1 = v0[307];
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[338] = v3;
    *v3 = v0;
    v3[1] = sub_252BC90B8;

    return sub_252DC810C(v2);
  }

  else
  {
    v5 = v0[336];
    v0[341] = v5;
    v6 = v0[332];
    __swift_project_boxed_opaque_existential_1((v0[308] + 72), *(v0[308] + 96));
    v7 = swift_task_alloc();
    v0[342] = v7;
    *(v7 + 16) = v5;
    v8 = swift_task_alloc();
    v0[343] = v8;
    *(v8 + 16) = &unk_252E50F28;
    *(v8 + 24) = v6;
    v9 = v5;
    v10 = swift_task_alloc();
    v0[344] = v10;
    *v10 = v0;
    v10[1] = sub_252BC9380;
    v11 = v0[320];

    return sub_252A199A8((v0 + 279), &unk_252E50F38, v7, &unk_252E50F40, v8, v11, 0, 0);
  }
}

uint64_t sub_252BC90B8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2712) = a1;
  *(v3 + 2720) = v1;

  if (v1)
  {
    v4 = sub_252BC9A6C;
  }

  else
  {
    v4 = sub_252BC98E0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252BC91D0()
{
  v1 = v0[320];
  v2 = v0[315];
  v3 = v0[314];

  (*(v2 + 8))(v1, v3);
  v4 = v0[322];

  sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);

  v5 = v0[1];

  return v5();
}

uint64_t sub_252BC9380()
{
  v2 = *v1;
  *(*v1 + 2760) = v0;

  if (v0)
  {

    v3 = sub_252BC9738;
  }

  else
  {

    v3 = sub_252BC94F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252BC94F4()
{
  v1 = v0[308];
  v2 = v0[306];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v0[341];
  v14 = v0[322];
  v9 = v0[320];
  v10 = v0[315];
  v11 = v0[314];
  (*(v4 + 112))(v7, v0 + 279, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 279);
  (*(v10 + 8))(v9, v11);

  sub_25293847C(v14, &qword_27F540298, &unk_252E3C270);

  v12 = v0[1];

  return v12();
}

uint64_t sub_252BC9738()
{
  v1 = v0[341];
  v2 = v0[320];
  v3 = v0[315];
  v4 = v0[314];

  (*(v3 + 8))(v2, v4);
  v5 = v0[322];

  sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);

  v6 = v0[1];

  return v6();
}

uint64_t sub_252BC98E0()
{
  v1 = *(v0 + 2712);
  v2 = *(v0 + 2688);
  if (v1)
  {
    v3 = sub_252BE92A0(*(v0 + 2712));

    v2 = v3;
  }

  *(v0 + 2728) = v2;
  v4 = *(v0 + 2656);
  __swift_project_boxed_opaque_existential_1((*(v0 + 2464) + 72), *(*(v0 + 2464) + 96));
  v5 = swift_task_alloc();
  *(v0 + 2736) = v5;
  *(v5 + 16) = v2;
  v6 = swift_task_alloc();
  *(v0 + 2744) = v6;
  *(v6 + 16) = &unk_252E50F28;
  *(v6 + 24) = v4;
  v7 = v2;
  v8 = swift_task_alloc();
  *(v0 + 2752) = v8;
  *v8 = v0;
  v8[1] = sub_252BC9380;
  v9 = *(v0 + 2560);

  return sub_252A199A8(v0 + 2232, &unk_252E50F38, v5, &unk_252E50F40, v6, v9, 0, 0);
}

uint64_t sub_252BC9A6C()
{
  v1 = v0[336];
  v2 = v0[320];
  v3 = v0[315];
  v4 = v0[314];
  v5 = v0[307];

  (*(v3 + 8))(v2, v4);
  v6 = v0[322];

  sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);

  v7 = v0[1];

  return v7();
}

uint64_t sub_252BC9C14(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2776) = a1;
  *(v3 + 2784) = v1;

  if (v1)
  {
    v4 = sub_252BCA0C0;
  }

  else
  {
    v4 = sub_252BC9D54;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252BC9D54()
{
  v1 = v0[347];
  v2 = v0[307];
  v3 = swift_allocObject();
  v0[349] = v3;
  *(v3 + 16) = v1;
  v4 = v1;
  if (v2)
  {
    v5 = v4;
    v6 = v2;
    v7 = v5;
    v8 = swift_task_alloc();
    v0[350] = v8;
    *v8 = v0;
    v8[1] = sub_252BC9FA8;

    return sub_252E174F4(v6);
  }

  else
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v10 = v0[308];
    __swift_project_value_buffer(v0[310], qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v11 = *(v10 + 96);
    __swift_project_boxed_opaque_existential_1((v10 + 72), v11);
    sub_252AD7CC4();
    v12 = swift_task_alloc();
    v0[353] = v12;
    *v12 = v0;
    v12[1] = sub_252BCA220;
    v13 = v0[319];

    return sub_252BDB88C((v0 + 269), &unk_252E50F10, v3, v13, 0, 0, 0, v11);
  }
}

uint64_t sub_252BC9FA8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2808) = a1;
  *(v3 + 2816) = v1;

  if (v1)
  {
    v4 = sub_252BCA4E4;
  }

  else
  {
    v4 = sub_252BCA388;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252BCA0C0()
{
  v1 = *(v0 + 2576);

  sub_25293847C(v1, &qword_27F540298, &unk_252E3C270);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252BCA220()
{
  v2 = *v1;
  *(*v1 + 2832) = v0;

  (*(v2[315] + 8))(v2[319], v2[314]);
  if (v0)
  {
    v3 = sub_252BCAD90;
  }

  else
  {
    v3 = sub_252BCAB88;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252BCA388()
{
  v1 = v0 + 304;
  v2 = v0[351];
  v3 = v0[347];
  v0[304] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[308];
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  v0[355] = v10;
  *(v10 + 16) = v1;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  v0[356] = v11;
  *v11 = v0;
  v11[1] = sub_252BCA668;
  v12 = v0[318];

  return sub_252BDB88C((v0 + 274), &unk_252E4EFD0, v10, v12, 0, 0, 0, v9);
}

uint64_t sub_252BCA4E4()
{
  v1 = *(v0 + 2456);

  v2 = *(v0 + 2776);
  v3 = *(v0 + 2576);

  sub_25293847C(v3, &qword_27F540298, &unk_252E3C270);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252BCA668()
{
  v2 = *v1;
  *(*v1 + 2856) = v0;

  (*(v2[315] + 8))(v2[318], v2[314]);
  if (v0)
  {
    v3 = sub_252BCA9E8;
  }

  else
  {

    v3 = sub_252BCA7C0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252BCA7C0()
{
  v1 = *(v0 + 2464);
  v2 = *(v0 + 2448);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 2808);
  v9 = *(v0 + 2776);
  v10 = *(v0 + 2456);
  (*(v4 + 112))(v7, v0 + 2192, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 2192));

  v11 = *(v0 + 2776);
  v12 = *(v0 + 2576);

  sub_25293847C(v12, &qword_27F540298, &unk_252E3C270);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_252BCA9E8()
{
  v1 = *(v0 + 2808);
  v2 = *(v0 + 2456);

  v3 = *(v0 + 2776);
  v4 = *(v0 + 2576);

  sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_252BCAB88()
{
  v1 = v0[308];
  v2 = v0[306];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  (*(v4 + 112))(v7, v0 + 269, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 269);

  v8 = v0[347];
  v9 = v0[322];

  sub_25293847C(v9, &qword_27F540298, &unk_252E3C270);

  v10 = v0[1];

  return v10();
}

uint64_t sub_252BCAD90()
{

  v1 = v0[347];
  v2 = v0[322];

  sub_25293847C(v2, &qword_27F540298, &unk_252E3C270);

  v3 = v0[1];

  return v3();
}

uint64_t sub_252BCAF00()
{
  *(*v1 + 2880) = v0;

  if (v0)
  {
    v2 = sub_252BCC758;
  }

  else
  {
    v2 = sub_252BCB034;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252BCB034()
{
  v1 = *(v0 + 2576);

  sub_25293847C(v1, &qword_27F540298, &unk_252E3C270);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252BCB180()
{
  *(*v1 + 2904) = v0;

  if (v0)
  {
    v2 = sub_252BCC8AC;
  }

  else
  {
    v2 = sub_252BCB2B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252BCB2B4()
{
  v1 = *(v0 + 2576);

  sub_25293847C(v1, &qword_27F540298, &unk_252E3C270);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252BCB400()
{
  *(*v1 + 2928) = v0;

  if (v0)
  {
    v2 = sub_252BCCA00;
  }

  else
  {
    v2 = sub_252BCB534;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252BCB534()
{
  v1 = *(v0 + 2576);

  sub_25293847C(v1, &qword_27F540298, &unk_252E3C270);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252BCB680(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[370] = a1;
  v3[371] = v1;

  if (v1)
  {

    swift_bridgeObjectRelease_n();

    return MEMORY[0x2822009F8](sub_252BCB978, 0, 0);
  }

  else
  {
    v5 = v3[307];

    swift_bridgeObjectRelease_n();
    v6 = swift_task_alloc();
    v3[372] = v6;
    *v6 = v4;
    v6[1] = sub_252BCB860;

    return sub_252E174F4(v5);
  }
}

uint64_t sub_252BCB860(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2984) = a1;
  *(v3 + 2992) = v1;

  if (v1)
  {
    v4 = sub_252BCBDA0;
  }

  else
  {
    v4 = sub_252BCBC44;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252BCB978()
{
  v1 = v0[307];

  v2 = v0[322];

  sub_25293847C(v2, &qword_27F540298, &unk_252E3C270);

  v3 = v0[1];

  return v3();
}

uint64_t sub_252BCBADC()
{
  v2 = *v1;
  *(*v1 + 3008) = v0;

  (*(v2[315] + 8))(v2[317], v2[314]);
  if (v0)
  {
    v3 = sub_252BCC5FC;
  }

  else
  {
    v3 = sub_252BCC408;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252BCBC44()
{
  v1 = v0 + 303;
  v2 = v0[373];
  v3 = v0[370];
  v0[303] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[308];
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  v0[377] = v10;
  *(v10 + 16) = v1;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  v0[378] = v11;
  *v11 = v0;
  v11[1] = sub_252BCBF10;
  v12 = v0[316];

  return sub_252BDB88C((v0 + 259), &unk_252E50F00, v10, v12, 0, 0, 0, v9);
}

uint64_t sub_252BCBDA0()
{
  v1 = *(v0 + 2456);

  v2 = *(v0 + 2576);

  sub_25293847C(v2, &qword_27F540298, &unk_252E3C270);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252BCBF10()
{
  v2 = *v1;
  *(*v1 + 3032) = v0;

  (*(v2[315] + 8))(v2[316], v2[314]);
  if (v0)
  {
    v3 = sub_252BCC27C;
  }

  else
  {

    v3 = sub_252BCC068;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252BCC068()
{
  v1 = *(v0 + 2464);
  v2 = *(v0 + 2448);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 2984);
  v9 = *(v0 + 2960);
  v10 = *(v0 + 2456);
  (*(v4 + 112))(v7, v0 + 2072, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 2072));

  v11 = *(v0 + 2576);

  sub_25293847C(v11, &qword_27F540298, &unk_252E3C270);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_252BCC27C()
{
  v1 = *(v0 + 2984);
  v2 = *(v0 + 2456);

  v3 = *(v0 + 2576);

  sub_25293847C(v3, &qword_27F540298, &unk_252E3C270);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252BCC408()
{
  v1 = v0[308];
  v2 = v0[306];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  (*(v4 + 112))(v7, v0 + 254, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 254);

  v8 = v0[322];

  sub_25293847C(v8, &qword_27F540298, &unk_252E3C270);

  v9 = v0[1];

  return v9();
}

uint64_t sub_252BCC5FC()
{

  v1 = *(v0 + 2576);

  sub_25293847C(v1, &qword_27F540298, &unk_252E3C270);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252BCC758()
{
  v1 = *(v0 + 2576);

  sub_25293847C(v1, &qword_27F540298, &unk_252E3C270);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252BCC8AC()
{
  v1 = *(v0 + 2576);

  sub_25293847C(v1, &qword_27F540298, &unk_252E3C270);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252BCCA00()
{
  v1 = *(v0 + 2576);

  sub_25293847C(v1, &qword_27F540298, &unk_252E3C270);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252BCCB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  type metadata accessor for CompletionSnippetModel(0);
  v8 = swift_task_alloc();
  v4[3] = v8;
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = sub_25296359C;

  return sub_252A28180(v8, a2, a3, a4);
}

uint64_t sub_252BCCC3C(uint64_t a1, uint64_t a2)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v27[-v8];
  v10 = type metadata accessor for HomeAutomationSetSecuritySystemStateParameters(0);
  v11 = v10[7];
  swift_retain_n();

  *(a1 + v11) = a2;
  v12 = v10[8];

  *(a1 + v12) = a2;
  v13 = sub_25294833C(1u, 0, 0);
  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = v13;
  v15 = [v13 dictionary];
  if (!v15)
  {

LABEL_7:
    v23 = sub_252E36324();
    (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
    goto LABEL_8;
  }

  v16 = v15;
  v17 = objc_opt_self();
  v28[0] = 0;
  v18 = [v17 dataWithPropertyList:v16 format:200 options:0 error:v28];
  v19 = v28[0];
  if (!v18)
  {
    v24 = v19;
    v25 = sub_252E32C54();

    swift_willThrow();
    goto LABEL_7;
  }

  v20 = sub_252E32D34();
  v22 = v21;

  sub_252E32D24();
  sub_252E362F4();

  sub_25296464C(v20, v22);
  v23 = sub_252E36324();
  (*(*(v23 - 8) + 56))(v9, 0, 1, v23);
LABEL_8:
  sub_252956C98(v9, a1 + v10[9]);
  sub_252E37024();
  sub_252E36324();
  (*(*(v23 - 8) + 56))(v7, 0, 1, v23);
  return sub_252956C98(v7, a1);
}

uint64_t sub_252BCCF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_252BCCF6C, 0, 0);
}

uint64_t sub_252BCCF6C()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_252BCD050;
  v3 = v0[3];
  v4 = v0[4];

  return sub_252C0F96C(0, v1, v3, v4);
}

uint64_t sub_252BCD050(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_252BCD190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[27] = a5;
  v6[28] = v5;
  v6[25] = a3;
  v6[26] = a4;
  v6[23] = a1;
  v6[24] = a2;
  sub_252E33944();
  v6[29] = swift_task_alloc();
  v7 = sub_252E34014();
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BCD29C, 0, 0);
}

uint64_t sub_252BCD29C(uint64_t a1)
{
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v2 + 288), (v1 + 2));

  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  LOBYTE(v4) = (*(v4 + 120))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  v5 = v1[28];
  v6 = v1[24];
  v7 = v1[25];
  if (v4)
  {
    v1[35] = v5[8];
    type metadata accessor for HomeAutomationPolledEntityResponses();
    v8 = swift_allocObject();
    v1[36] = v8;
    *(v8 + 16) = 0;
    *(v8 + 24) = v6;

    v9 = swift_task_alloc();
    v1[37] = v9;
    *v9 = v1;
    v9[1] = sub_252BCD494;

    return sub_252D2A970(v8, v7);
  }

  else
  {
    v11 = *__swift_project_boxed_opaque_existential_1(v5 + 3, v5[6]);

    v12 = swift_task_alloc();
    v1[49] = v12;
    *v12 = v1;
    v12[1] = sub_252BCDF24;
    v13 = v1[24];
    v14 = v1[25];

    return sub_252C0F5C0(0, v11, v13, v14);
  }
}

uint64_t sub_252BCD494(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 304) = a1;
  *(v3 + 312) = v1;

  if (v1)
  {
    v4 = sub_252BCED44;
  }

  else
  {

    v4 = sub_252BCD5B8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252BCD5B8()
{
  v1 = *(v0 + 304);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = swift_task_alloc();
  *(v0 + 320) = v4;
  v5 = *(v0 + 192);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  sub_252E33924();
  sub_252E33F54();
  v6 = v1;
  if (v2)
  {
    v7 = *(v0 + 216);
    v8 = swift_task_alloc();
    *(v0 + 328) = v8;
    *v8 = v0;
    v8[1] = sub_252BCD7FC;

    return sub_252DC810C(v7);
  }

  else
  {
    v10 = *(v0 + 304);
    *(v0 + 352) = v10;
    v11 = *(v0 + 320);
    __swift_project_boxed_opaque_existential_1((*(v0 + 224) + 72), *(*(v0 + 224) + 96));
    v12 = swift_task_alloc();
    *(v0 + 360) = v12;
    *(v12 + 16) = v10;
    v13 = swift_task_alloc();
    *(v0 + 368) = v13;
    *(v13 + 16) = &unk_252E50ED0;
    *(v13 + 24) = v11;
    v14 = v10;
    v15 = swift_task_alloc();
    *(v0 + 376) = v15;
    *v15 = v0;
    v15[1] = sub_252BCD910;
    v16 = *(v0 + 272);

    return sub_252A199A8(v0 + 136, &unk_252E400A0, v12, &unk_252E3D1A0, v13, v16, 0, 0);
  }
}

uint64_t sub_252BCD7FC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 336) = a1;
  *(v3 + 344) = v1;

  if (v1)
  {
    v4 = sub_252BCDE58;
  }

  else
  {
    v4 = sub_252BCDCCC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252BCD910()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {

    v3 = sub_252BCDC04;
  }

  else
  {

    v3 = sub_252BCDA84;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252BCDA84()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 352);
  v9 = *(v0 + 272);
  v10 = *(v0 + 240);
  v11 = *(v0 + 248);
  (*(v4 + 112))(v7, v0 + 136, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  (*(v11 + 8))(v9, v10);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_252BCDC04()
{
  v1 = v0[44];
  v2 = v0[34];
  v3 = v0[30];
  v4 = v0[31];

  (*(v4 + 8))(v2, v3);
  v5 = v0[38];

  v6 = v0[1];

  return v6();
}

uint64_t sub_252BCDCCC()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 304);
  if (v1)
  {
    v3 = sub_252BE92A0(*(v0 + 336));

    v2 = v3;
  }

  *(v0 + 352) = v2;
  v4 = *(v0 + 320);
  __swift_project_boxed_opaque_existential_1((*(v0 + 224) + 72), *(*(v0 + 224) + 96));
  v5 = swift_task_alloc();
  *(v0 + 360) = v5;
  *(v5 + 16) = v2;
  v6 = swift_task_alloc();
  *(v0 + 368) = v6;
  *(v6 + 16) = &unk_252E50ED0;
  *(v6 + 24) = v4;
  v7 = v2;
  v8 = swift_task_alloc();
  *(v0 + 376) = v8;
  *v8 = v0;
  v8[1] = sub_252BCD910;
  v9 = *(v0 + 272);

  return sub_252A199A8(v0 + 136, &unk_252E400A0, v5, &unk_252E3D1A0, v6, v9, 0, 0);
}

uint64_t sub_252BCDE58()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 216);

  (*(v3 + 8))(v1, v2);
  v5 = *(v0 + 304);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_252BCDF24(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 400) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_252BCE0C8, 0, 0);
  }
}

uint64_t sub_252BCE0C8()
{
  v1 = v0[50];
  v2 = v0[27];
  v3 = swift_allocObject();
  v0[51] = v3;
  *(v3 + 16) = v1;
  v4 = v1;
  if (v2)
  {
    v5 = v4;
    v6 = v2;
    v7 = v5;
    v8 = swift_task_alloc();
    v0[52] = v8;
    *v8 = v0;
    v8[1] = sub_252BCE320;

    return sub_252E174F4(v6);
  }

  else
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v10 = v0[28];
    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v12 = *(v10 + 96);
    __swift_project_boxed_opaque_existential_1((v10 + 72), v12);
    sub_252AD7CC4();
    v13 = swift_task_alloc();
    v0[55] = v13;
    *v13 = v0;
    v13[1] = sub_252BCE434;
    v14 = v0[33];

    return sub_252BDB88C((v0 + 7), &unk_252E50EB8, v3, v14, 0, 0, 0, v12);
  }
}

uint64_t sub_252BCE320(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 424) = a1;
  *(v3 + 432) = v1;

  if (v1)
  {
    v4 = sub_252BCE700;
  }

  else
  {
    v4 = sub_252BCE5A4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252BCE434()
{
  v2 = *(*v1 + 264);
  v3 = *(*v1 + 248);
  v4 = *(*v1 + 240);
  *(*v1 + 448) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252BCECA8;
  }

  else
  {
    v5 = sub_252BCEB60;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252BCE5A4()
{
  v1 = v0[50];
  v0[22] = v1;
  v2 = v0 + 22;
  v3 = v0[53];
  if (v3)
  {
    v4 = v1;
    v5 = v3;
    v6 = sub_252BE8A5C(v5);

    *v2 = v6;
  }

  else
  {
    v7 = v1;
  }

  v8 = v0[28];
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  v0[57] = v10;
  *(v10 + 16) = v2;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  v0[58] = v11;
  *v11 = v0;
  v11[1] = sub_252BCE7AC;
  v12 = v0[32];

  return sub_252BDB88C((v0 + 12), &unk_252E3F140, v10, v12, 0, 0, 0, v9);
}

uint64_t sub_252BCE700()
{
  v1 = *(v0 + 216);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252BCE7AC()
{
  v2 = *(*v1 + 256);
  v3 = *(*v1 + 248);
  v4 = *(*v1 + 240);
  *(*v1 + 472) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252BCEA98;
  }

  else
  {

    v5 = sub_252BCE92C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252BCE92C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 424);
  v9 = *(v0 + 400);
  v10 = *(v0 + 216);
  (*(v4 + 112))(v7, v0 + 96, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252BCEA98()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 216);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252BCEB60()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  (*(v4 + 112))(v7, v0 + 56, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_252BCECA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252BCED44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252BCEDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  type metadata accessor for CompletionSnippetModel(0);
  v8 = swift_task_alloc();
  v4[3] = v8;
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = sub_252BCEEC8;

  return sub_252A28180(v8, a2, a3, a4);
}

uint64_t sub_252BCEEC8()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_252BCFC54;
  }

  else
  {
    v2 = sub_252BCFC4C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252BCEFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v32[-v10];
  type metadata accessor for HomeAutomationPolledEntityResponses();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = a2;
  v13 = type metadata accessor for HomeAutomationSetPolledStateParameters(0);
  v14 = v13[7];

  *(a1 + v14) = v12;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = a2;
  v16 = v13[8];

  *(a1 + v16) = v15;
  v17 = v13[6];

  *(a1 + v17) = a3;
  v18 = sub_25294833C(1u, 0, 0);
  if (!v18)
  {
    goto LABEL_7;
  }

  v19 = v18;
  v20 = [v18 dictionary];
  if (!v20)
  {

LABEL_7:
    v28 = sub_252E36324();
    (*(*(v28 - 8) + 56))(v11, 1, 1, v28);
    goto LABEL_8;
  }

  v21 = v20;
  v22 = objc_opt_self();
  v33[0] = 0;
  v23 = [v22 dataWithPropertyList:v21 format:200 options:0 error:v33];
  v24 = v33[0];
  if (!v23)
  {
    v29 = v24;
    v30 = sub_252E32C54();

    swift_willThrow();
    goto LABEL_7;
  }

  v25 = sub_252E32D34();
  v27 = v26;

  sub_252E32D24();
  sub_252E362F4();

  sub_25296464C(v25, v27);
  v28 = sub_252E36324();
  (*(*(v28 - 8) + 56))(v11, 0, 1, v28);
LABEL_8:
  sub_252956C98(v11, a1 + v13[9]);
  sub_252E37024();
  sub_252E36324();
  (*(*(v28 - 8) + 56))(v9, 0, 1, v28);
  return sub_252956C98(v9, a1);
}

unint64_t sub_252BCF348(int a1, id a2)
{
  result = sub_252DA0F40([a2 attribute], objc_msgSend(a2, sel_taskType));
  v3 = result >> 62;
  if (result >> 62)
  {
    v16 = result;
    v17 = sub_252E378C4();
    result = v16;
    if (!v17)
    {
      goto LABEL_14;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

  v4 = result & 0xC000000000000001;
  if ((result & 0xC000000000000001) != 0)
  {
    v5 = result;
    v6 = MEMORY[0x2530ADF00](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_27;
    }

    v5 = result;
    v6 = *(result + 32);
  }

  v7 = v6;
  v8 = [v6 userTask];

  if (!v8 || (v9 = [v8 value], v8, !v9) || (v10 = objc_msgSend(v9, sel_integerValue), v9, !v10))
  {
LABEL_14:

    return 0;
  }

  if (v10 == 100)
  {
LABEL_12:

    return 1;
  }

  if (v3)
  {
    result = sub_252E378C4();
    if (result < 2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < 2)
    {
      goto LABEL_12;
    }
  }

  if (v4)
  {
    v11 = MEMORY[0x2530ADF00](1, v5);
    goto LABEL_20;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v11 = *(v5 + 40);
LABEL_20:
  v12 = v11;

  v13 = [v12 userTask];

  if (!v13)
  {
    return 1;
  }

  v14 = [v13 value];

  if (!v14)
  {
    return 1;
  }

  v15 = [v14 integerValue];

  return v10 >= v15;
}

BOOL sub_252BCF5B4(void *a1, uint64_t a2)
{
  v3 = sub_252B61720(a1);
  result = 0;
  if ((v3 & 1) != 0 && a2)
  {
    v5 = sub_252C285F0();
    if (v5 >> 62)
    {
      v6 = sub_252E378C4();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v6 != 0;
  }

  return result;
}

uint64_t sub_252BCF62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252BC6DC8(a1, a2, a3);
}

void *sub_252BCF6E0@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for PollingResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252BCF744(void *a1, void *a2)
{
  v4 = [a1 userTask];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 taskType];

    if (v6 == 2)
    {
      return 1;
    }
  }

  v8 = [a1 userTask];
  if (!v8 || (v9 = v8, v10 = [v8 taskType], v9, v10 != 3))
  {
    result = [a1 userTask];
    if (!result)
    {
      return result;
    }

    v11 = result;
    if (a2)
    {
      v12 = a2;
      v13 = sub_252C285F0();
      v14 = v13;
      v21 = v12;
      if (v13 >> 62)
      {
        goto LABEL_22;
      }

      for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
      {
        v16 = 0;
        while (1)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x2530ADF00](v16, v14);
          }

          else
          {
            if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v17 = *(v14 + 8 * v16 + 32);
          }

          v18 = v17;
          v19 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          v22 = v17;
          v20 = sub_252BCF348(&v22, v11);

          if (v20)
          {

            return 1;
          }

          ++v16;
          if (v19 == i)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        ;
      }

LABEL_23:
    }
  }

  return 0;
}

uint64_t sub_252BCF914()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252927C20(v2);
}

uint64_t sub_252BCF9A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25294B954;

  return sub_252BCEDE0(a1, v4, v5, v6);
}

uint64_t sub_252BCFA5C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B7BC;

  return sub_252BCCF48(v2, v3, v4);
}

uint64_t sub_252BCFB04()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252927C20(v2);
}

uint64_t sub_252BCFB98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25294B954;

  return sub_252BCCB54(a1, v4, v5, v6);
}

uint64_t sub_252BCFC58(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_252921BF8(a1, a2, a3);
}

uint64_t sub_252BCFCF4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ModifyClimateModeHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

id sub_252BCFD28(void *a1, uint64_t a2)
{
  v63 = *(a2 + 192);
  result = [a1 filters];
  if (!result)
  {
    return result;
  }

  v4 = result;
  type metadata accessor for HomeFilter();
  v5 = sub_252E37264();

  v6 = type metadata accessor for HomeStore(0);
  v7 = static HomeStore.shared.getter(v6);
  v8 = HomeStore.accessories(matching:supporting:)(v5, 0);
  v10 = v9;

  if (v10)
  {
    v11 = v8;
    v12 = 1;
LABEL_4:
    sub_252929F10(v11, v12);
    return 0;
  }

  v13 = v8 & 0xFFFFFFFFFFFFFF8;
  if (v8 >> 62)
  {
LABEL_75:
    v14 = sub_252E378C4();
  }

  else
  {
    v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = 0;
  v16 = v8 & 0xC000000000000001;
  v17 = v8 + 32;
  v60 = v8 & 0xC000000000000001;
  v61 = v14;
  v62 = v13;
  v59 = v8 + 32;
  while (1)
  {
    if (v15 == v14)
    {
      v11 = v8;
      v12 = 0;
      goto LABEL_4;
    }

    if (v16)
    {
      v18 = MEMORY[0x2530ADF00](v15, v8);
      v19 = __OFADD__(v15++, 1);
      if (v19)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }

    else
    {
      if (v15 >= *(v13 + 16))
      {
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v18 = *(v17 + 8 * v15);

      v19 = __OFADD__(v15++, 1);
      if (v19)
      {
        goto LABEL_49;
      }
    }

    v20 = (*v18 + 256);
    v21 = *v20;
    if ((*v20)() == 3)
    {
      break;
    }

    v22 = (*v18 + 272);
    v23 = *v22;
    v24 = (*v22)();
    if (*(v24 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](3);
      v25 = sub_252E37F14();
      v26 = -1 << *(v24 + 32);
      v27 = v25 & ~v26;
      if ((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
      {
        v28 = ~v26;
        while (*(*(v24 + 48) + 8 * v27) != 3)
        {
          v27 = (v27 + 1) & v28;
          if (((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
          {
            goto LABEL_18;
          }
        }

LABEL_50:

        sub_252929F10(v8, 0);
        goto LABEL_52;
      }
    }

LABEL_18:

    v30 = (v21)(v29);
    if (v30 == 38)
    {
      v32 = &unk_2864ADFB0;
      goto LABEL_22;
    }

    v31 = MEMORY[0x277D84FA0];
    if (v30 == 41)
    {
      v32 = &unk_2864ADFD8;
LABEL_22:
      v31 = sub_2529FC004(v32);
    }

    if (*(v31 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](3);
      v33 = sub_252E37F14();
      v34 = -1 << *(v31 + 32);
      v35 = v33 & ~v34;
      if ((*(v31 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
      {
        v36 = ~v34;
        while (*(*(v31 + 48) + 8 * v35) != 3)
        {
          v35 = (v35 + 1) & v36;
          if (((*(v31 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        goto LABEL_50;
      }
    }

LABEL_28:

    if (sub_252D4FE78(3))
    {
      break;
    }

    if (v21() == 29)
    {
      sub_252929F10(v8, 0);

      goto LABEL_53;
    }

    v37 = v23();
    if (*(v37 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](29);
      v38 = sub_252E37F14();
      v39 = -1 << *(v37 + 32);
      v40 = v38 & ~v39;
      if ((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
      {
        v41 = ~v39;
        while (*(*(v37 + 48) + 8 * v40) != 29)
        {
          v40 = (v40 + 1) & v41;
          if (((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
          {
            goto LABEL_35;
          }
        }

LABEL_51:
        sub_252929F10(v8, 0);

LABEL_52:

        goto LABEL_53;
      }
    }

LABEL_35:

    v43 = (v21)(v42);
    if (v43 == 38)
    {
      v45 = &unk_2864AE000;
      goto LABEL_39;
    }

    v44 = MEMORY[0x277D84FA0];
    if (v43 == 41)
    {
      v45 = &unk_2864AE028;
LABEL_39:
      v44 = sub_2529FC004(v45);
    }

    if (*(v44 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](29);
      v46 = sub_252E37F14();
      v47 = -1 << *(v44 + 32);
      v48 = v46 & ~v47;
      if ((*(v44 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48))
      {
        v49 = ~v47;
        while (*(*(v44 + 48) + 8 * v48) != 29)
        {
          v48 = (v48 + 1) & v49;
          if (((*(v44 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
          {
            goto LABEL_45;
          }
        }

        goto LABEL_51;
      }
    }

LABEL_45:

    v50 = sub_252D4FE78(29);

    v14 = v61;
    v13 = v62;
    v17 = v8 + 32;
    v16 = v8 & 0xC000000000000001;
    if (v50)
    {
      goto LABEL_70;
    }
  }

LABEL_70:
  sub_252929F10(v8, 0);
LABEL_53:
  if ((sub_252AABAA0() & 1) == 0)
  {
    v51 = 0;
    v52 = *(v63 + 16);
    v13 = v63 + 32;
    while (v52 != v51)
    {
      if (v51 >= *(v63 + 16))
      {
        __break(1u);
        goto LABEL_74;
      }

      if (StateSemantic.rawValue.getter() == 28271 && v53 == 0xE200000000000000)
      {
        goto LABEL_63;
      }

      v54 = sub_252E37DB4();

      if (v54)
      {
        goto LABEL_64;
      }

      if (StateSemantic.rawValue.getter() == 6710895 && v55 == 0xE300000000000000)
      {
LABEL_63:

LABEL_64:
        v56 = [a1 userTask];
        if (v56)
        {
          v57 = v56;
          v58 = [v56 attribute];

          return (v58 == 6);
        }

        sub_252C515AC();
        return 0;
      }

      v8 = sub_252E37DB4();

      ++v51;
      if (v8)
      {
        goto LABEL_64;
      }
    }
  }

  return 0;
}

id sub_252BD039C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HomeAttributeValue();
  v25 = HomeAttributeValue.__allocating_init(stringValue:unit:)(1330926913, 0xE400000000000000, 0);
  v4 = *(a1 + 16);
  v5 = (a1 + 32);
  v6 = v4;
  v7 = (a1 + 32);
  while (v6)
  {
    if (sub_252A9AD58(*v7) == 0xD000000000000015 && 0x8000000252E648D0 == v8)
    {
      v11 = 1413563720;
LABEL_16:

      goto LABEL_25;
    }

    v10 = sub_252E37DB4();

    ++v7;
    --v6;
    if (v10)
    {
      v11 = 1413563720;
LABEL_25:
      v21 = HomeAttributeValue.__allocating_init(stringValue:unit:)(v11, 0xE400000000000000, 0);

      return v21;
    }
  }

  v12 = *(a2 + 16);
  v13 = a2 + 32;
  v14 = v12;
  v15 = a2 + 32;
  while (v14)
  {
    if (AccessoryTypeSemantic.rawValue.getter() == 0x726574616568 && v17 == 0xE600000000000000)
    {
      v11 = 1413563720;

      goto LABEL_25;
    }

    v16 = sub_252E37DB4();

    ++v15;
    --v14;
    if (v16)
    {
      v11 = 1413563720;
      goto LABEL_25;
    }
  }

  while (v4)
  {
    if (sub_252A9AD58(*v5) == 0xD000000000000015 && 0x8000000252E64760 == v18)
    {
      v11 = 1280266051;
      goto LABEL_16;
    }

    v20 = sub_252E37DB4();

    ++v5;
    --v4;
    if (v20)
    {
LABEL_23:
      v11 = 1280266051;
      goto LABEL_25;
    }
  }

  while (v12)
  {
    if (AccessoryTypeSemantic.rawValue.getter() == 0x72656C6F6F63 && v24 == 0xE600000000000000)
    {
      v11 = 1280266051;
      goto LABEL_16;
    }

    v23 = sub_252E37DB4();

    ++v13;
    --v12;
    if (v23)
    {
      goto LABEL_23;
    }
  }

  return v25;
}

void *sub_252BD0660(void *a1, const void *a2)
{
  memcpy(__dst, a2, 0x1F8uLL);
  v3 = [a1 filters];
  if (!v3)
  {
    sub_2529318DC();
    result = swift_allocError();
    *v13 = 1;
    return result;
  }

  v4 = v3;
  type metadata accessor for HomeFilter();
  v5 = sub_252E37264();

  v6 = type metadata accessor for HomeStore(0);
  v7 = static HomeStore.shared.getter(v6);
  v8 = HomeStore.services(matching:supporting:)(v5, 0);
  v10 = v9;

  if (v10)
  {
    sub_252929F10(v8, 1);

    sub_2529318DC();
    result = swift_allocError();
    *v12 = 15;
    return result;
  }

  v89 = v5;
  if (v8 >> 62)
  {
LABEL_44:
    v14 = sub_252E378C4();
    if (v14)
    {
LABEL_7:
      v87 = a1;
      v15 = 0;
      a1 = (v8 & 0xC000000000000001);
      do
      {
        if (a1)
        {
          v16 = MEMORY[0x2530ADF00](v15, v8);
          v17 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_40;
          }
        }

        else
        {
          if (v15 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_41;
          }

          v16 = *(v8 + 8 * v15 + 32);

          v17 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }
        }

        v18 = [*(v16 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
        v19 = sub_252E36F34();
        v21 = v20;

        if (qword_27F53F8B8 != -1)
        {
          swift_once();
        }

        v22 = off_27F546230;
        if (*(off_27F546230 + 2) && (v23 = sub_252A44A10(v19, v21), (v24 & 1) != 0))
        {
          v25 = *(v22[7] + 8 * v23);

          if (v25 == 3)
          {
            v86 = 1;
            goto LABEL_23;
          }
        }

        else
        {
        }

        ++v15;
      }

      while (v17 != v14);
      v86 = 0;
LABEL_23:
      v26 = 0;
      do
      {
        if (a1)
        {
          v27 = MEMORY[0x2530ADF00](v26, v8);
          v28 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (v26 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_43;
          }

          v27 = *(v8 + 8 * v26 + 32);

          v28 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_42;
          }
        }

        v29 = [*(v27 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
        v30 = sub_252E36F34();
        v32 = v31;

        if (qword_27F53F8B8 != -1)
        {
          swift_once();
        }

        v33 = off_27F546230;
        if (*(off_27F546230 + 2) && (v34 = sub_252A44A10(v30, v32), (v35 & 1) != 0))
        {
          v36 = *(v33[7] + 8 * v34);

          if (v36 == 29)
          {
            v37 = 0;
            goto LABEL_39;
          }
        }

        else
        {
        }

        ++v26;
      }

      while (v28 != v14);
      v37 = 1;
LABEL_39:
      a1 = v87;
      v38 = v86;
      goto LABEL_46;
    }
  }

  else
  {
    v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_7;
    }
  }

  v38 = 0;
  v37 = 1;
LABEL_46:
  sub_252929F10(v8, 0);
  v39 = [a1 userTask];
  if (!v39)
  {
    goto LABEL_50;
  }

  v40 = v39;
  v41 = [v39 taskType];

  if (v41 != 4)
  {
    goto LABEL_50;
  }

  if (!v38)
  {
    if (v37)
    {
      v42 = 14;
    }

    else
    {
      v42 = 15;
    }

    goto LABEL_51;
  }

  if (v37)
  {
LABEL_50:
    v42 = 14;
LABEL_51:
    v43 = [a1 userTask];
    if (!v43)
    {
      goto LABEL_55;
    }

    v44 = v43;
    v45 = [v43 taskType];

    if (v45 != 1)
    {
      goto LABEL_55;
    }

    if ((v38 | v37))
    {
      memcpy(__src, __dst, sizeof(__src));
      if (sub_252956B94(__src) != 1)
      {
        v88 = a1;
        v58 = __src[24];
        v59 = *(__src[24] + 16);
        sub_2529D291C(__dst, v90);

        a1 = 0;
        while (v59 != a1)
        {
          if (a1 >= *(v58 + 16))
          {
            __break(1u);
            goto LABEL_107;
          }

          v90[0] = *(a1 + v58 + 32);
          if (StateSemantic.rawValue.getter() == 28271 && v61 == 0xE200000000000000)
          {

LABEL_96:

            memcpy(v90, __src, sizeof(v90));
            sub_252A15750();
            v46 = sub_252BD039C(v74, __src[17]);

            goto LABEL_101;
          }

          a1 = (a1 + 1);
          v60 = sub_252E37DB4();

          if (v60)
          {
            goto LABEL_96;
          }
        }

        sub_25299F5D4(__dst);
        v66 = __dst[24];
        a1 = *(__dst[24] + 16);
        sub_2529D291C(__dst, v90);

        v67 = 0;
        while (1)
        {
          if (a1 == v67)
          {

            sub_25299F5D4(__dst);
            v46 = 0;
            goto LABEL_102;
          }

          if (v67 >= *(v66 + 16))
          {
            goto LABEL_108;
          }

          v90[0] = *(v67 + v66 + 32);
          if (StateSemantic.rawValue.getter() == 6710895 && v69 == 0xE300000000000000)
          {
            break;
          }

          v67 = (v67 + 1);
          v68 = sub_252E37DB4();

          if (v68)
          {
            goto LABEL_100;
          }
        }

LABEL_100:

        type metadata accessor for HomeAttributeValue();
        v46 = HomeAttributeValue.__allocating_init(stringValue:unit:)(4605519, 0xE300000000000000, 0);
LABEL_101:
        sub_25299F5D4(__dst);
LABEL_102:
        a1 = v88;
        goto LABEL_56;
      }

LABEL_55:
      v46 = 0;
LABEL_56:
      type metadata accessor for ControlHomeIntent.Builder();
      swift_allocObject();
      v47 = ControlHomeIntent.Builder.init()();
      v48 = [a1 userTask];
      if (v48)
      {
        v49 = v48;
        v50 = [v48 taskType];
      }

      else
      {
        v50 = 4;
      }

      v51 = (*(*v47 + 192))(v50, v42, v46);

      v52 = sub_252B4EEFC(v89);

      v53 = (*(*v51 + 208))(v52);

      v55 = (*(*v53 + 224))(v54);

      return v55;
    }

    memcpy(__src, __dst, sizeof(__src));
    if (sub_252956B94(__src) == 1)
    {
      v56 = 0;
LABEL_105:
      type metadata accessor for ControlHomeIntent.Builder();
      swift_allocObject();
      v81 = ControlHomeIntent.Builder.init()();
      v82 = (*(*v81 + 192))(1, 27, v56);

      v83 = sub_252B4EEFC(v89);

      v84 = (*(*v82 + 208))(v83);

      v55 = (*(*v84 + 224))(v85);

      return v55;
    }

    a1 = __src[24];
    v62 = *(__src[24] + 16);
    sub_2529D291C(__dst, v90);

    v63 = 0;
    while (1)
    {
      if (v62 == v63)
      {

        sub_25299F5D4(__dst);
        a1 = __dst[24];
        v70 = *(__dst[24] + 16);
        sub_2529D291C(__dst, v90);

        v71 = 0;
        while (1)
        {
          if (v70 == v71)
          {

            sub_25299F5D4(__dst);
            v56 = 0;
            goto LABEL_105;
          }

          if (v71 >= a1[2])
          {
            goto LABEL_109;
          }

          v90[0] = *(a1 + v71 + 32);
          if (StateSemantic.rawValue.getter() == 6710895 && v73 == 0xE300000000000000)
          {
            break;
          }

          ++v71;
          v72 = sub_252E37DB4();

          if (v72)
          {
            goto LABEL_103;
          }
        }

LABEL_103:

        v78 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
        v79 = sub_252E36F04();
        v80 = [v78 initWithIdentifier:0 displayString:v79];

        v56 = v80;
        [v56 setBoolValue_];
        goto LABEL_104;
      }

      if (v63 >= a1[2])
      {
        break;
      }

      v90[0] = *(a1 + v63 + 32);
      if (StateSemantic.rawValue.getter() == 28271 && v65 == 0xE200000000000000)
      {

LABEL_97:

        v75 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
        v76 = sub_252E36F04();
        v77 = [v75 initWithIdentifier:0 displayString:v76];

        v56 = v77;
        [v56 setBoolValue_];
LABEL_104:
        [v56 setType_];

        sub_25299F5D4(__dst);
        goto LABEL_105;
      }

      ++v63;
      v64 = sub_252E37DB4();

      if (v64)
      {
        goto LABEL_97;
      }
    }

LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  if (qword_27F53F500 != -1)
  {
LABEL_110:
    swift_once();
  }

  v57 = sub_252E36AD4();
  __swift_project_value_buffer(v57, qword_27F544DA8);
  sub_252CC3D90(0xD00000000000005ALL, 0x8000000252E86E90, 0xD000000000000091, 0x8000000252E86EF0);
  return a1;
}

uint64_t sub_252BD11F8(uint64_t a1)
{
  v2[192] = v1;
  v2[191] = a1;
  sub_252E34104();
  v2[193] = swift_task_alloc();
  v3 = sub_252E339C4();
  v2[194] = v3;
  v2[195] = *(v3 - 8);
  v2[196] = swift_task_alloc();
  v4 = sub_252E34164();
  v2[197] = v4;
  v2[198] = *(v4 - 8);
  v2[199] = swift_task_alloc();
  v2[200] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BD1350, 0, 0);
}

uint64_t sub_252BD1350()
{
  v15 = v0;
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v1 = v0[200];
  v2 = v0[199];
  v3 = v0[198];
  v4 = v0[197];
  v12 = v0[195];
  v13 = v0[194];
  v11 = v0[196];
  v5 = v0[192];
  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544DA8);
  sub_252CC4050(0xD000000000000025, 0x8000000252E86F90, 0xD000000000000085, 0x8000000252E86FC0, 0x2865747563657865, 0xE900000000000029, 40);
  memcpy(v0 + 65, (v5 + 16), 0x1F8uLL);
  memcpy(__dst, (v5 + 16), 0x1F8uLL);
  v7 = *(v3 + 16);
  v7(v2, v5 + OBJC_IVAR____TtC22HomeAutomationInternal30ControlHomeLockReformationFlow_parse, v4);
  sub_2529353AC((v0 + 65), (v0 + 128));
  sub_25294D744(__dst, v2, v1);
  v8 = *(v3 + 8);
  v8(v2, v4);
  memcpy(v0 + 2, __dst, 0x1F8uLL);
  sub_252935408((v0 + 2));
  v7(v2, v1, v4);

  sub_252E340F4();
  sub_252E339B4();
  sub_252E33B34();
  (*(v12 + 8))(v11, v13);
  v8(v1, v4);

  v9 = v0[1];

  return v9();
}

uint64_t ControlHomeLockReformationFlow.deinit()
{
  memcpy(v4, (v0 + 16), 0x1F8uLL);
  sub_252935408(v4);
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal30ControlHomeLockReformationFlow_parse;
  v2 = sub_252E34164();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ControlHomeLockReformationFlow.__deallocating_deinit()
{
  memcpy(v4, (v0 + 16), 0x1F8uLL);
  sub_252935408(v4);
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal30ControlHomeLockReformationFlow_parse;
  v2 = sub_252E34164();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_252BD173C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25293B808;

  return sub_252BD11F8(a1);
}

uint64_t sub_252BD17D8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ControlHomeLockReformationFlow(0);

  return sub_252E33644();
}

uint64_t sub_252BD1814@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ControlHomeLockReformationFlow(0);
  v6 = swift_allocObject();
  v7 = (v6 + OBJC_IVAR____TtC22HomeAutomationInternal30ControlHomeLockReformationFlow_systemCommandsPluginBundleID);
  *v7 = 0xD00000000000002FLL;
  v7[1] = 0x8000000252E870F0;
  memcpy((v6 + 16), a1, 0x1F8uLL);
  v8 = OBJC_IVAR____TtC22HomeAutomationInternal30ControlHomeLockReformationFlow_parse;
  v9 = sub_252E34164();
  result = (*(*(v9 - 8) + 32))(v6 + v8, a2, v9);
  *a3 = v6;
  return result;
}

uint64_t type metadata accessor for ControlHomeLockReformationFlow(uint64_t a1)
{
  result = qword_27F543C20;
  if (!qword_27F543C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252BD1934(uint64_t a1)
{
  result = sub_252E34164();
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

uint64_t dispatch thunk of ControlHomeLockReformationFlow.execute()(uint64_t a1)
{
  v6 = (*(*v1 + 176) + **(*v1 + 176));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25293B808;

  return v6(a1);
}

uint64_t sub_252BD1B5C(void (**a1)(char *, uint64_t))
{
  v64 = a1;
  v68 = sub_252E34494();
  v65 = *(v68 - 8);
  v1 = MEMORY[0x28223BE20](v68);
  v66 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v67 = &v51 - v3;
  v4 = sub_252E343C4();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x28223BE20](v4);
  v56 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_252E34244();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v61 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252E34284();
  v62 = *(v7 - 8);
  v63 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540320, &qword_252E3C1A0);
  MEMORY[0x28223BE20](v10 - 8);
  v60 = &v51 - v11;
  v12 = sub_252E34354();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v59 = &v51 - v17;
  v18 = sub_252E341A4();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_252E34164();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v25, v64, v22);
  if ((*(v23 + 88))(v25, v22) != *MEMORY[0x277D5C160])
  {
    (*(v23 + 8))(v25, v22);
    return 0;
  }

  (*(v23 + 96))(v25, v22);
  v53 = v19;
  v26 = v19[4];
  v51 = v18;
  (v26)(v21, v25, v18);
  v52 = v21;
  sub_252E34184();
  v27 = sub_252E34254();
  (*(v62 + 8))(v9, v63);
  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = 0;
    while (v29 < *(v27 + 16))
    {
      (*(v13 + 16))(v16, v27 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v29, v12);
      if (sub_252E342C4())
      {

        v31 = v60;
        (*(v13 + 32))(v60, v16, v12);
        v30 = 0;
        goto LABEL_10;
      }

      ++v29;
      (*(v13 + 8))(v16, v12);
      if (v28 == v29)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_7:

  v30 = 1;
  v31 = v60;
LABEL_10:
  (*(v13 + 56))(v31, v30, 1, v12);
  if ((*(v13 + 48))(v31, 1, v12) == 1)
  {
    sub_25293847C(v31, &qword_27F540320, &qword_252E3C1A0);
    v27 = v51;
    v28 = v52;
    if (qword_27F53F4F8 == -1)
    {
LABEL_12:
      v32 = sub_252E36AD4();
      __swift_project_value_buffer(v32, qword_27F544D90);
      sub_252CC4050(0xD000000000000012, 0x8000000252E870B0, 0xD000000000000085, 0x8000000252E86FC0, 0xD000000000000013, 0x8000000252E870D0, 67);
      v53[1](v28, v27);
      return 0;
    }

LABEL_42:
    swift_once();
    goto LABEL_12;
  }

  (*(v13 + 32))(v59, v31, v12);
  v33 = v56;
  sub_252E34314();
  sub_252E34394();
  (*(v57 + 8))(v33, v58);
  sub_252E342D4();
  sub_252E34DA4();

  sub_252AEA788(v71, v69);
  v34 = v52;
  if (v70)
  {
    sub_252E34F84();
    v35 = swift_dynamicCast();
    v28 = v53;
    if (v35)
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_25293847C(v69, &qword_27F541E80, &qword_252E3DFA0);
    v28 = v53;
  }

  sub_252AEA788(v71, v69);
  if (!v70)
  {
    sub_25293847C(v71, &qword_27F541E80, &qword_252E3DFA0);
    (*(v54 + 8))(v61, v55);
    (*(v13 + 8))(v59, v12);
    (*(v28 + 1))(v34, v51);
    sub_25293847C(v69, &qword_27F541E80, &qword_252E3DFA0);
    return 0;
  }

  sub_252E35034();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_25293847C(v71, &qword_27F541E80, &qword_252E3DFA0);
    (*(v54 + 8))(v61, v55);
    (*(v13 + 8))(v59, v12);
    (*(v28 + 1))(v34, v51);
    return 0;
  }

LABEL_19:

  v27 = sub_252E34234();
  v36 = 0;
  v62 = *(v27 + 16);
  v63 = v65 + 16;
  v64 = (v65 + 8);
  while (v62 != v36)
  {
    if (v36 >= *(v27 + 16))
    {
      goto LABEL_40;
    }

    v39 = (*(v65 + 80) + 32) & ~*(v65 + 80);
    v40 = *(v65 + 72);
    v28 = *(v65 + 16);
    (v28)(v67, v27 + v39 + v40 * v36, v68);
    if (sub_252E34484() == 1852141679 && v41 == 0xE400000000000000)
    {

      v38 = *v64;
      (*v64)(v67, v68);
LABEL_26:
      v42 = v27 + v39;
      v67 = -v62;
      v43 = -1;
      while (&v67[v43] != -1)
      {
        if (++v43 >= *(v27 + 16))
        {
          goto LABEL_41;
        }

        (v28)(v66, v42, v68);
        if (sub_252E34484() == 0x6B636F4C726F6F64 && v45 == 0xE800000000000000)
        {

          v38(v66, v68);
LABEL_33:

          v46 = 1;
          goto LABEL_35;
        }

        v42 += v40;
        v44 = sub_252E37DB4();

        v38(v66, v68);
        if (v44)
        {
          goto LABEL_33;
        }
      }

      break;
    }

    ++v36;
    v37 = sub_252E37DB4();

    v38 = *v64;
    (*v64)(v67, v68);
    if (v37)
    {
      goto LABEL_26;
    }
  }

  v46 = 0;
LABEL_35:
  v47 = v53;
  v48 = v55;
  v49 = v52;
  sub_25293847C(v71, &qword_27F541E80, &qword_252E3DFA0);
  (*(v54 + 8))(v61, v48);
  (*(v13 + 8))(v59, v12);
  v47[1](v49, v51);
  return v46;
}

uint64_t sub_252BD2734(uint64_t a1, void (**a2)(char *, uint64_t))
{
  v3 = sub_252E33D64();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v24[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v5);
  sub_252929E74((v8 + 16), v24);

  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_252E33D44();
  v9 = sub_252E33864();
  (*(v4 + 8))(v7, v3);
  __swift_destroy_boxed_opaque_existential_1(v24);
  v10 = type metadata accessor for HomeStore(0);
  v11 = static HomeStore.shared.getter(v10);
  v12 = v11[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];

  if (v12 == 2 || (v12 & 1) == 0 || ((v14 = static HomeStore.shared.getter(v13), v15 = sub_2529D8DC0(), v14, v15 >> 62) ? (v16 = sub_252E378C4()) : (v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10)), (v17 = , v16) && ((v18 = static HomeStore.shared.getter(v17), v19 = sub_2529D9D50(), v18, v19 >> 62) ? (v20 = sub_252E378C4()) : (v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v20)) || (sub_252BD1B5C(a2) & 1) == 0)
  {
    v21 = 0;
  }

  else
  {
    v21 = v9 ^ 1;
  }

  return v21 & 1;
}

uint64_t CallToActionSnippetModel.init(callToActionButtonLabel:callToActionDirectInvocation:shouldDisplay:)@<X0>(char a4@<W3>, uint64_t a5@<X8>)
{
  *(a5 + *(type metadata accessor for CallToActionSnippetModel(0) + 24)) = a4;
  sub_252E330C4();
  sub_252A75B60();
  return sub_252E33054();
}

uint64_t type metadata accessor for CallToActionSnippetModel(uint64_t a1)
{
  result = qword_27F543C48;
  if (!qword_27F543C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t CallToActionSnippetModel.description.getter()
{
  v1 = v0;
  sub_252E379F4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  MEMORY[0x2530AD570]();

  MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E87140);

  sub_252E379F4();

  v2 = type metadata accessor for CallToActionSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  v3 = sub_252E33074();
  v4 = [v3 description];
  v5 = sub_252E36F34();
  v7 = v6;

  MEMORY[0x2530AD570](v5, v7);

  MEMORY[0x2530AD570](0xD00000000000001ELL, 0x8000000252E87160);

  sub_252E379F4();

  if (*(v1 + *(v2 + 24)))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(v1 + *(v2 + 24)))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v8, v9);

  MEMORY[0x2530AD570](0x6944646C756F6873, 0xEF203A79616C7073);

  MEMORY[0x2530AD570](41, 0xE100000000000000);
  return 0xD000000000000019;
}

uint64_t CallToActionSnippetModel.callToActionButtonLabel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  return v1;
}

void (*CallToActionSnippetModel.callToActionButtonLabel.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  *(v3 + 32) = sub_252E330D4();
  return sub_25292DC78;
}

uint64_t CallToActionSnippetModel.callToActionDirectInvocation.getter()
{
  type metadata accessor for CallToActionSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  return sub_252E33074();
}

uint64_t sub_252BD2DB8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CallToActionSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  result = sub_252E33074();
  *a1 = result;
  return result;
}

uint64_t sub_252BD2E10(void **a1)
{
  v1 = *a1;
  type metadata accessor for CallToActionSnippetModel(0);
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  return sub_252E33084();
}

uint64_t CallToActionSnippetModel.callToActionDirectInvocation.setter(uint64_t a1)
{
  type metadata accessor for CallToActionSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  return sub_252E33084();
}

void (*CallToActionSnippetModel.callToActionDirectInvocation.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for CallToActionSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  *(v3 + 32) = sub_252E33064();
  return sub_252AA9630;
}

uint64_t CallToActionSnippetModel.shouldDisplay.setter(char a1)
{
  result = type metadata accessor for CallToActionSnippetModel(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_252BD3004(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xED000079616C7073;
  v3 = 0x6944646C756F6873;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0xD00000000000001CLL;
  }

  else
  {
    v5 = 0x6944646C756F6873;
  }

  if (v4 == 1)
  {
    v6 = 0x8000000252E680C0;
  }

  else
  {
    v6 = 0xED000079616C7073;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000017;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x8000000252E680A0;
  }

  if (*a2 == 1)
  {
    v3 = 0xD00000000000001CLL;
    v2 = 0x8000000252E680C0;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000017;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x8000000252E680A0;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252BD30EC()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BD31A0(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252BD3240(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252BD32F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252BD3F04(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_252BD3320(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED000079616C7073;
  v4 = 0x6944646C756F6873;
  if (v2 == 1)
  {
    v4 = 0xD00000000000001CLL;
    v3 = 0x8000000252E680C0;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000017;
  }

  if (v5)
  {
    v3 = 0x8000000252E680A0;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_252BD3390()
{
  v1 = 0x6944646C756F6873;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000017;
  }
}

unint64_t sub_252BD33FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252BD3F04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252BD3424(uint64_t a1)
{
  v2 = sub_252BD38C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252BD3460(uint64_t a1)
{
  v2 = sub_252BD38C8();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::String __swiftcall CallToActionSnippetModel.responseViewId()()
{
  v0 = 0x8000000252E72000;
  v1 = 0xD00000000000001BLL;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t CallToActionSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - v4;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543C30, &qword_252E51080);
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v7 = &v18 - v6;
  v8 = type metadata accessor for CallToActionSnippetModel(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252BD38C8();
  v22 = v7;
  v11 = v26;
  sub_252E37F74();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v8;
  v12 = v10;
  v13 = v20;
  LOBYTE(v24) = 0;
  v24 = sub_252E37C04();
  v25 = v14;
  sub_252E330C4();
  LOBYTE(v24) = 1;
  sub_252AA8EEC(&qword_27F542A30, MEMORY[0x277D63230]);
  sub_252E37C64();
  sub_252E33074();
  (*(v13 + 8))(v5, v3);
  v15 = v26;
  sub_252A75B60();
  sub_252E33054();
  LOBYTE(v24) = 2;
  v16 = sub_252E37C14();
  (*(v21 + 8))(v22, v23);
  *(v12 + *(v15 + 24)) = v16 & 1;
  sub_252A75AFC(v12, v19);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_252A73C58(v12);
}

unint64_t sub_252BD38C8()
{
  result = qword_27F543C38;
  if (!qword_27F543C38)
  {
    result = swift_getWitnessTable(byte_252E51234, &type metadata for CallToActionSnippetModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543C38);
  }

  return result;
}

uint64_t CallToActionSnippetModel.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  v12 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543C40, &qword_252E51088);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252BD38C8();
  sub_252E37F84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  LOBYTE(v13) = 0;
  v9 = v14;
  sub_252E37CF4();
  if (v9)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    type metadata accessor for CallToActionSnippetModel(0);
    sub_252E33074();
    sub_252A75B60();
    sub_252E33054();
    LOBYTE(v13) = 1;
    sub_252AA8EEC(&qword_27F542A58, MEMORY[0x277D63228]);
    sub_252E37D54();
    (*(v12 + 8))(v4, v2);
    LOBYTE(v13) = 2;
    sub_252E37D04();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_252BD3C6C(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for CallToActionSnippetModel(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_252BD3D08(uint64_t a1)
{
  sub_252ACF134();
  if (v1 <= 0x3F)
  {
    sub_252BD3D94(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_252BD3D94(uint64_t a1)
{
  if (!qword_27F542A88)
  {
    sub_252A75B60();
    v1 = sub_252E33094();
    if (!v2)
    {
      atomic_store(v1, &qword_27F542A88);
    }
  }
}

unint64_t sub_252BD3E00()
{
  result = qword_27F543C58;
  if (!qword_27F543C58)
  {
    result = swift_getWitnessTable(byte_252E5120C, &type metadata for CallToActionSnippetModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543C58);
  }

  return result;
}

unint64_t sub_252BD3E58()
{
  result = qword_27F543C60;
  if (!qword_27F543C60)
  {
    result = swift_getWitnessTable(asc_252E51144, &type metadata for CallToActionSnippetModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543C60);
  }

  return result;
}

unint64_t sub_252BD3EB0()
{
  result = qword_27F543C68;
  if (!qword_27F543C68)
  {
    result = swift_getWitnessTable(aM_9, &type metadata for CallToActionSnippetModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543C68);
  }

  return result;
}

unint64_t sub_252BD3F04(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_252BD3F94@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RemoveHomeIfNoMatchingEntities();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_252BD3FC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 376);
  if ((sub_252C513DC() & 1) == 0)
  {
    return 0;
  }

  v3 = type metadata accessor for HomeStore(0);
  v4 = static HomeStore.shared.getter(v3);
  v5 = sub_2529D8DC0();

  v6 = v5 >> 62 ? sub_252E378C4() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v6 < 2)
  {
    return 0;
  }

  v7 = *(v2 + 16);
  v8 = (v2 + 32);

  v9 = (v2 + 32);
  while (2)
  {
    if (v7)
    {
      switch(*v9)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
          v11 = sub_252E37DB4();

          ++v9;
          --v7;
          if ((v11 & 1) == 0)
          {
            continue;
          }

          break;
        default:

          break;
      }

      v13 = *(v2 + 16);

      while (2)
      {
        v15 = v13-- != 0;
        v10 = v15;
        if (v15)
        {
          switch(*v8)
          {
            case 5:

              v10 = 1;
              break;
            default:
              v14 = sub_252E37DB4();

              ++v8;
              if ((v14 & 1) == 0)
              {
                continue;
              }

              break;
          }
        }

        break;
      }
    }

    else
    {
      v10 = 0;
    }

    break;
  }

  return v10;
}

id sub_252BD444C(void *a1)
{
  v2 = [a1 filters];
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    v11 = 0;
    goto LABEL_31;
  }

  v4 = v2;
  type metadata accessor for HomeFilter();
  v5 = sub_252E37264();

  v29 = v3;
  if (v5 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    v7 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v8 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2530ADF00](v8, v5);
      }

      else
      {
        if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v9 = *(v5 + 8 * v8 + 32);
      }

      v3 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      MEMORY[0x2530AD700](v9);
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v27 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v8;
      if (v3 == i)
      {
        v10 = v29;
        v3 = MEMORY[0x277D84F90];
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_17:

  if (v10 >> 62)
  {
    v12 = sub_252E378C4();
    if (v12)
    {
      goto LABEL_19;
    }

LABEL_30:

    v11 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_30;
  }

LABEL_19:
  v30 = v7;
  result = sub_252E37AB4();
  if (v12 < 0)
  {
    __break(1u);
    return result;
  }

  v14 = 0;
  do
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x2530ADF00](v14, v10);
    }

    else
    {
      v15 = *(v10 + 8 * v14 + 32);
    }

    v16 = v15;
    ++v14;
    type metadata accessor for MutableMatterHomeFilter();
    swift_allocObject();
    v17 = sub_2529D0A90(v16);

    *(v17 + 80) = 0;
    *(v17 + 88) = 0;

    sub_252E37A94();
    sub_252E37AC4();
    sub_252E37AD4();
    sub_252E37AA4();
  }

  while (v12 != v14);

  v11 = v30;
LABEL_31:
  v18 = [a1 userTask];
  if (v11)
  {
    if (v11 >> 62)
    {
      goto LABEL_48;
    }

    for (j = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_252E378C4())
    {
      v20 = 0;
      while ((v11 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v20, v11);
        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_46;
        }

LABEL_38:
        sub_2529D0538();

        MEMORY[0x2530AD700](v22);
        if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v28 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        ++v20;
        if (v21 == j)
        {
          v23 = v3;
          goto LABEL_50;
        }
      }

      if (v20 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v21 = v20 + 1;
      if (!__OFADD__(v20, 1))
      {
        goto LABEL_38;
      }

LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      ;
    }

    v23 = MEMORY[0x277D84F90];
LABEL_50:
  }

  else
  {
    v23 = 0;
  }

  v24 = [a1 time];
  v25 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  [v25 setUserTask_];
  if (v23)
  {
    type metadata accessor for HomeFilter();
    v26 = sub_252E37254();
  }

  else
  {
    v26 = 0;
  }

  [v25 setFilters_];

  [v25 setTime_];
  return v25;
}

uint64_t sub_252BD48D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_252E34014();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  v6 = sub_252E36324();
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BD49FC, 0, 0);
}

uint64_t sub_252BD49FC()
{
  v1 = v0;
  if (*(v0 + 120))
  {
    v74 = *(v0 + 120);
    v2 = sub_252C2F3B0(5);
    v3 = v2;
    if (v2 >> 62)
    {
      goto LABEL_72;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v5 = 0;
      v78 = v3 & 0xFFFFFFFFFFFFFF8;
      v79 = v3 & 0xC000000000000001;
      v77 = (v3 + 32);
      v84 = v1[21];
      v85 = (v84 + 32);
      v6 = MEMORY[0x277D84F90];
      v7 = &off_279711000;
      v75 = i;
      v76 = v3;
      while (1)
      {
        if (v79)
        {
          v8 = MEMORY[0x2530ADF00](v5, v3);
        }

        else
        {
          if (v5 >= *(v78 + 16))
          {
            goto LABEL_67;
          }

          v8 = *&v77[8 * v5];
        }

        v9 = v8;
        v10 = __OFADD__(v5++, 1);
        if (v10)
        {
          break;
        }

        v11 = [v8 taskResponses];
        if (v11)
        {
          v12 = v11;
          v80 = v9;
          type metadata accessor for HomeUserTaskResponse();
          v13 = sub_252E37264();

          if (v13 >> 62)
          {
            v14 = sub_252E378C4();
          }

          else
          {
            v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v81 = v5;
          v82 = v6;
          v83 = v13;
          if (v14)
          {
            v3 = 0;
            v87 = v13 & 0xC000000000000001;
            v15 = v13 & 0xFFFFFFFFFFFFFF8;
            v16 = v13 + 32;
            v86 = MEMORY[0x277D84F90];
            v17 = &off_279711000;
            while (1)
            {
              if (v87)
              {
                v18 = MEMORY[0x2530ADF00](v3, v83);
              }

              else
              {
                if (v3 >= *(v15 + 16))
                {
                  goto LABEL_65;
                }

                v18 = *(v16 + 8 * v3);
              }

              v19 = v18;
              v10 = __OFADD__(v3++, 1);
              if (v10)
              {
                break;
              }

              v20 = [v18 v7[214]];
              if (v20 && (v21 = v20, v22 = [v20 v17[206]], v21, v22) && (v23 = objc_msgSend(v22, sel_stringValue), v22, v23))
              {
                v24 = sub_252E36F34();
                v26 = v25;

                v27 = COERCE_DOUBLE(sub_252C5C088(v24, v26));
                if (v30)
                {

                  v17 = &off_279711000;
                }

                else
                {
                  if (qword_27F53F428 != -1)
                  {
                    v53 = v27;
                    v54 = v1;
                    v55 = v28;
                    v56 = v29;
                    swift_once();
                    v29 = v56;
                    v28 = v55;
                    v1 = v54;
                    v27 = v53;
                  }

                  v31 = *(qword_27F575A90 + 16);
                  if (v31)
                  {
                    v32 = (qword_27F575A90 + 56);
                    v33 = -1.0;
                    do
                    {
                      v34 = *(v32 - 2);
                      v35 = *(v32 - 1);
                      v36 = *v32;
                      v32 += 4;
                      v37 = v34 + 360.0;
                      v38 = (v35 - v28) * (v35 - v28);
                      v39 = (v36 - v29) * (v36 - v29);
                      v40 = sqrt((v34 - v27) * (v34 - v27) + v38 + v39);
                      v41 = sqrt((v37 - v27) * (v37 - v27) + v38 + v39);
                      if (v41 < v40)
                      {
                        v40 = v41;
                      }

                      v42 = v33 == -1.0;
                      if (v40 < v33)
                      {
                        v42 = 1;
                      }

                      if (v42)
                      {
                        v33 = v40;
                      }

                      --v31;
                    }

                    while (v31);
                  }

                  v44 = v1[22];
                  v43 = v1[23];
                  v45 = v1;
                  v46 = v1[20];
                  HueSemantic.rawValue.getter();
                  sub_252E362F4();

                  v47 = *v85;
                  (*v85)(v43, v44, v46);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v86 = sub_2529F7F74(0, v86[2] + 1, 1, v86);
                  }

                  v17 = &off_279711000;
                  v49 = v86[2];
                  v48 = v86[3];
                  if (v49 >= v48 >> 1)
                  {
                    v86 = sub_2529F7F74((v48 > 1), v49 + 1, 1, v86);
                  }

                  v50 = v45[23];
                  v51 = v45[20];
                  v86[2] = v49 + 1;
                  v52 = v86 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v49;
                  v1 = v45;
                  v47(v52, v50, v51);
                  v7 = &off_279711000;
                }
              }

              else
              {
              }

              if (v3 == v14)
              {
                goto LABEL_46;
              }
            }

            __break(1u);
LABEL_65:
            __break(1u);
            break;
          }

          v86 = MEMORY[0x277D84F90];
LABEL_46:

          i = v75;
          v3 = v76;
          v5 = v81;
          v6 = v82;
          v9 = v80;
          v57 = v86;
        }

        else
        {
          v57 = MEMORY[0x277D84F90];
        }

        v58 = v57[2];
        v59 = v6[2];
        v60 = v59 + v58;
        if (__OFADD__(v59, v58))
        {
          goto LABEL_68;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v60 > v6[3] >> 1)
        {
          if (v59 <= v60)
          {
            v62 = v59 + v58;
          }

          else
          {
            v62 = v59;
          }

          v6 = sub_2529F7F74(isUniquelyReferenced_nonNull_native, v62, 1, v6);
        }

        v7 = &off_279711000;
        if (v57[2])
        {
          if ((v6[3] >> 1) - v6[2] < v58)
          {
            goto LABEL_70;
          }

          swift_arrayInitWithCopy();

          if (v58)
          {
            v63 = v6[2];
            v10 = __OFADD__(v63, v58);
            v64 = v63 + v58;
            if (v10)
            {
              goto LABEL_71;
            }

            v6[2] = v64;
          }
        }

        else
        {

          if (v58)
          {
            goto LABEL_69;
          }
        }

        if (v5 == i)
        {
          goto LABEL_74;
        }
      }

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
      __break(1u);
LABEL_72:
      ;
    }

    v6 = MEMORY[0x277D84F90];
LABEL_74:
    v1[24] = v6;
    v68 = v1[16];

    v69 = v74;
    sub_252929E74(v68 + 24, (v1 + 2));
    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    v70 = sub_252DF8B58(v6);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
    v71 = swift_allocObject();
    v1[25] = v71;
    *(v71 + 16) = xmmword_252E3C3C0;
    *(v71 + 32) = 0x73726F6C6F63;
    *(v71 + 40) = 0xE600000000000000;
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
    *(v71 + 48) = v70;
    *(v71 + 72) = v72;
    *(v71 + 80) = 0xD000000000000017;
    *(v71 + 88) = 0x8000000252E6FE70;
    *(v71 + 120) = MEMORY[0x277D839B0];
    v88 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
    *(v71 + 96) = 0;
    v73 = swift_task_alloc();
    v1[26] = v73;
    *v73 = v1;
    v73[1] = sub_252BD51A8;

    return v88(0xD000000000000017, 0x8000000252E87200, v71);
  }

  else
  {
    sub_2529318DC();
    swift_allocError();
    *v65 = 6;
    swift_willThrow();

    v66 = *(v0 + 8);

    return v66();
  }
}

uint64_t sub_252BD51A8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v4 = sub_252BD5478;
  }

  else
  {

    v4 = sub_252BD52C4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252BD52C4()
{
  v1 = v0[15];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_252BD5364;

  return sub_252E174F4(v1);
}

uint64_t sub_252BD5364(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {
    v4 = sub_252BD567C;
  }

  else
  {
    v4 = sub_252BD5520;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252BD5478()
{
  v1 = v0[15];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_252BD5520()
{
  v1 = v0[27];
  v0[12] = v1;
  v2 = v0 + 12;
  v3 = v0[30];
  if (v3)
  {
    v4 = v1;
    v5 = v3;
    v6 = sub_252BE8A5C(v5);

    *v2 = v6;
  }

  else
  {
    v7 = v1;
  }

  v8 = v0[16];
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  v0[32] = v10;
  *(v10 + 16) = v2;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  v0[33] = v11;
  *v11 = v0;
  v11[1] = sub_252BD5720;
  v12 = v0[19];

  return sub_252BDB88C((v0 + 7), &unk_252E3F140, v10, v12, 0, 0, 0, v9);
}

uint64_t sub_252BD567C()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252BD5720()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  (*(v2[18] + 8))(v2[19], v2[17]);
  if (v0)
  {
    v3 = sub_252BD59E4;
  }

  else
  {

    v3 = sub_252BD5870;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252BD5870()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 240);
  v9 = *(v0 + 216);
  v10 = *(v0 + 120);
  (*(v4 + 112))(v7, v0 + 56, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252BD59E4()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 120);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252BD5AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252BD48D0(a1, a2, a3);
}

void *sub_252BD5B88@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for GetColorResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

BOOL sub_252BD5BEC(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
LABEL_7:
    sub_252C515AC();
    return 0;
  }

  v3 = v2;
  if ([v2 taskType] == 4)
  {

    goto LABEL_5;
  }

  v4 = [v3 taskType];

  if (v4 == 5)
  {
LABEL_5:
    v5 = [a1 userTask];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 attribute];

      return v7 == 5;
    }

    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_252BD5CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_252E32BA4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_252E35B54();
  if (a1)
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      v11 = *(v5 + 16);
      v10 = v5 + 16;
      v12 = *(v10 + 64);
      v41[1] = a1;
      v42 = v7;
      v13 = a1 + ((v12 + 32) & ~v12);
      v55 = *(v10 + 56);
      v56 = v11;
      v54 = (v10 - 8);
      v44 = v4;
      v45 = a2;
      v43 = v10;
      while (1)
      {
        v59 = v9;
        v57 = v13;
        v56(v7);
        v15 = sub_252E35BA4();
        v58 = v41;
        v16 = *(v15 - 8);
        v17 = *(v16 + 64);
        MEMORY[0x28223BE20](v15);
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543C70, &qword_252E51318);
        v60 = v41;
        MEMORY[0x28223BE20](v18 - 8);
        v20 = v41 - v19;
        v21 = sub_252E32B84();
        if ((v22 & 1) == 0)
        {
          if (v21 <= 3)
          {
            switch(v21)
            {
              case 1:
                sub_252E35B34();
                goto LABEL_22;
              case 2:
                sub_252E35B24();
                goto LABEL_22;
              case 3:
                sub_252E35B44();
                goto LABEL_22;
            }
          }

          else
          {
            if (v21 <= 5)
            {
              if (v21 == 4)
              {
                sub_252E35B94();
              }

              else
              {
                sub_252E35B84();
              }

LABEL_22:
              (*(v16 + 56))(v20, 0, 1, v15);
              v49 = *(v16 + 32);
              v50 = v16 + 32;
              v23 = v49(v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v15);
              v60 = v41;
              v24 = MEMORY[0x28223BE20](v23);
              v25 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
              MEMORY[0x28223BE20](v24);
              v47 = *(v16 + 16);
              v48 = v26;
              v47(v41 - v26, a2, v15);
              v46 = sub_252BD63B8(&qword_27F543C78, MEMORY[0x28221D458]);
              sub_252E37804();
              sub_252BD63B8(&qword_27F543C80, MEMORY[0x28221D450]);
              v27 = sub_252E36EF4();
              v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543C88, &qword_252E51320);
              v53 = v41;
              v29 = *(*(v28 - 8) + 64);
              v30 = MEMORY[0x28223BE20](v28);
              v32 = v41 - v31;
              v51 = *(v30 + 48);
              v52 = v30;
              *(v41 - v31) = (v27 & 1) == 0;
              v33 = *(v16 + 8);
              if (v27)
              {
                v34 = *(v16 + 8);
                v33(v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
                v35 = v42;
                v4 = v44;
                (*v54)(v42, v44);
                v36 = v25;
                v7 = v35;
                v37 = v49(&v51[v32], v36, v15);
              }

              else
              {
                v38 = *(v16 + 8);
                v33(v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
                v39 = v47;
                v40 = (v47)(&v51[v32], v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
                v51 = v41;
                MEMORY[0x28223BE20](v40);
                v39(v41 - v48, v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
                sub_252E37814();
                v34 = v38;
                v38(v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
                v7 = v42;
                v4 = v44;
                v37 = (*v54)(v42, v44);
              }

              v14 = v59;
              MEMORY[0x28223BE20](v37);
              sub_252BD63FC(v32, v41 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
              v34(v41 + *(v52 + 48) - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
              a2 = v45;
              goto LABEL_5;
            }

            if (v21 == 6)
            {
              sub_252E35B14();
              goto LABEL_22;
            }

            if (v21 == 7)
            {
              sub_252E35B74();
              goto LABEL_22;
            }
          }
        }

        (*(v16 + 56))(v20, 1, 1, v15);
        (*v54)(v7, v4);
        sub_252BD6350(v20);
        v14 = v59;
LABEL_5:
        v13 = v57 + v55;
        v9 = v14 - 1;
        if (!v9)
        {
        }
      }
    }
  }

  return result;
}

uint64_t sub_252BD6350(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543C70, &qword_252E51318);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252BD63B8(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_252E35BA4();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252BD63FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543C88, &qword_252E51320);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_252BD646C@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_252E36324();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252956C1C(v1 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_252938BBC(v5);
    if (*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue))
    {

      sub_25296EBC4(a1);
    }

    sub_252E37024();
  }

  else
  {
    v11 = *(v7 + 32);
    v11(v9, v5, v6);
    v11(a1, v9, v6);
  }

  return (*(v7 + 56))(a1, 0, 1, v6);
}

uint64_t HomeAutomationEntityStateValue.hash(into:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_252E36324();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252956C1C(v1 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_252938BBC(v5);
    if (*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue))
    {

      HomeAutomationAbstractMeasurement.hash(into:)(a1);
    }

    else
    {
      return sub_252E37EE4();
    }
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    sub_252E36304();
    sub_252E37044();

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t HomeAutomationEntityStateValue.hashValue.getter()
{
  sub_252E37EC4();
  HomeAutomationEntityStateValue.hash(into:)(v1);
  return sub_252E37F14();
}

uint64_t sub_252BD68C4()
{
  sub_252E37EC4();
  HomeAutomationEntityStateValue.hash(into:)(v1);
  return sub_252E37F14();
}

uint64_t sub_252BD692C(uint64_t a1)
{
  sub_252E37EC4();
  HomeAutomationEntityStateValue.hash(into:)(v2);
  return sub_252E37F14();
}

uint64_t _s22HomeAutomationInternal0aB16EntityStateValueC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v43 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v40 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  v14 = sub_252E36324();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v41 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v42 = &v40 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v40 - v23;
  v25 = OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue;
  v44 = a1;
  sub_252956C1C(a1 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v13);
  v26 = v15[6];
  if (v26(v13, 1, v14) != 1)
  {
    v31 = v15[4];
    v31(v24, v13, v14);
    sub_252956C1C(v45 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v11);
    if (v26(v11, 1, v14) != 1)
    {
      v31(v22, v11, v14);
      v30 = sub_252E362E4();
      v36 = v15[1];
      v36(v22, v14);
      v36(v24, v14);
      return v30 & 1;
    }

    (v15[1])(v24, v14);
    v32 = v11;
    goto LABEL_10;
  }

  sub_252938BBC(v13);
  v27 = v45;
  sub_252956C1C(v45 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v8);
  if (v26(v8, 1, v14) != 1)
  {
    v33 = v15[4];
    v34 = v42;
    v33(v42, v8, v14);
    v35 = v43;
    sub_252956C1C(v44 + v25, v43);
    if (v26(v35, 1, v14) != 1)
    {
      v37 = v41;
      v33(v41, v35, v14);
      v30 = sub_252E362E4();
      v38 = v15[1];
      v38(v37, v14);
      v38(v34, v14);
      return v30 & 1;
    }

    (v15[1])(v34, v14);
    v32 = v35;
LABEL_10:
    sub_252938BBC(v32);
    v30 = 0;
    return v30 & 1;
  }

  sub_252938BBC(v8);
  v28 = *(v44 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
  v29 = *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
  if (!v28)
  {
    if (!v29)
    {
      v30 = *(v44 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue) ^ *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue) ^ 1;
      return v30 & 1;
    }

    goto LABEL_14;
  }

  if (!v29)
  {
LABEL_14:
    v30 = 0;
    return v30 & 1;
  }

  v30 = _s22HomeAutomationInternal0aB19AbstractMeasurementC2eeoiySbAC_ACtFZ_0(v28, v29);

  return v30 & 1;
}

unint64_t sub_252BD6E18()
{
  result = qword_27F543C90;
  if (!qword_27F543C90)
  {
    v3 = type metadata accessor for HomeAutomationEntityStateValue(255);
    result = swift_getWitnessTable(protocol conformance descriptor for HomeAutomationEntityStateValue, v3, v0, v1);
    atomic_store(result, &qword_27F543C90);
  }

  return result;
}

HomeAutomationInternal::SnippetHomeDeviceType __swiftcall HomeDeviceType.toSnippetHomeDeviceType()()
{
  if (v0 >= 0x30)
  {
    LOBYTE(v0) = sub_252E37DF4();
    __break(1u);
  }

  else
  {
    *v1 = byte_252E51394[v0];
  }

  return v0;
}

uint64_t sub_252BD6EC0(_BYTE *a1)
{
  type metadata accessor for AutomateHomeIntent();
  type metadata accessor for AutomateHomeIntentResponse();
  sub_252E335C4();
  v2 = 0;
  if (a1[384] != 22)
  {
    LOBYTE(__dst[0]) = a1[384];
    v2 = sub_252AB54DC();
  }

  type metadata accessor for AutomateHomeUnsupportedValueFlowStrategy();
  v3 = swift_allocObject();
  v4 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v3);
  swift_beginAccess();
  v5 = *(v4 + 22);

  v3[2] = v5;
  v7 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v6);
  sub_252929E74((v7 + 136), (v3 + 3));

  v9 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v8) + 29);

  v10 = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  v3[11] = v10;
  v3[12] = &off_2864BA730;
  v3[8] = v9;
  __dst[0] = v3;
  sub_252BDB394(&qword_27F543D48, type metadata accessor for AutomateHomeUnsupportedValueFlowStrategy, aI_15);
  sub_252E33544();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543D18, &qword_252E51670);
  sub_252E33594();
  if (qword_27F53F720 != -1)
  {
    swift_once();
  }

  sub_252E33504();
  sub_252E33574();
  memcpy(__dst, a1, sizeof(__dst));
  type metadata accessor for AutomateHomeHandleIntentStrategy();
  swift_allocObject();
  sub_2529353AC(a1, &v22);
  __dst[0] = sub_252CB1138(__dst);
  sub_252BDB394(&qword_27F543D50, type metadata accessor for AutomateHomeHandleIntentStrategy, aY_13);
  sub_252E334F4();

  sub_252E33564();
  type metadata accessor for AutomateHomeNeedsDisambiguationStrategy();
  swift_allocObject();

  __dst[0] = sub_252A9CA80(v11);
  sub_252BDB394(&qword_27F5429C0, type metadata accessor for AutomateHomeNeedsDisambiguationStrategy, aQj);
  sub_252E33524();

  sub_252E335B4();
  type metadata accessor for AutomateHomeNeedsConfirmationStrategy();
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  __dst[0] = v12;
  sub_252BDB394(&qword_27F540E90, type metadata accessor for AutomateHomeNeedsConfirmationStrategy, byte_252E3F490);

  sub_252E33514();

  sub_252E335A4();
  type metadata accessor for AutomateHomeNeedsValueStrategy();
  v13 = swift_allocObject();

  v15 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v14);
  swift_beginAccess();
  v16 = *(v15 + 22);

  v13[2] = v16;
  v18 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v17);
  sub_252929E74((v18 + 136), (v13 + 3));

  v20 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v19) + 29);

  v13[11] = v10;
  v13[12] = &off_2864BA730;
  v13[8] = v20;
  v13[13] = v2;
  v22 = v13;
  sub_252BDB394(&qword_27F541028, type metadata accessor for AutomateHomeNeedsValueStrategy, asc_252E3FE28);
  sub_252E334E4();

  sub_252E33554();
}

uint64_t sub_252BD73C8()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BD74A8(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252BD7574(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252BD7650@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252BDAC80(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_252BD7680(unint64_t *a1@<X8>)
{
  v2 = 0xEF6E6F697463656CLL;
  v3 = 0x6553746E65746E69;
  v4 = 0xEE00657475636578;
  v5 = 0x456F547964616572;
  if (*v1 != 2)
  {
    v5 = 0x6574656C706D6F63;
    v4 = 0xE800000000000000;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x8000000252E67F20;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_252BD771C()
{
  sub_25293DEE0(__src);
  memcpy((v0 + 16), __src, 0x1F8uLL);
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_input;
  v2 = sub_252E34104();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v21 = type metadata accessor for LocationService(0);
  v22 = &protocol witness table for LocationService;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v20);
  if (qword_27F53F348 != -1)
  {
    swift_once();
  }

  v4 = sub_252E36C84();
  v5 = __swift_project_value_buffer(v4, qword_27F5432C0);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0, v5, v4);
  v6 = sub_252927BEC(&v20, v0 + OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_locationService);
  v7 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v6);
  sub_252929E74((v7 + 16), &v20);

  v8 = sub_252927BEC(&v20, v0 + OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_deviceState);
  v9 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v8);
  swift_beginAccess();
  v10 = *(v9 + 22);

  *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_catProvider) = v10;
  v12 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v11);
  sub_252929E74((v12 + 96), &v20);

  v13 = sub_252927BEC(&v20, v0 + OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_outputPublisher);
  v14 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v13);
  sub_252929E74((v14 + 136), &v20);

  v15 = sub_252927BEC(&v20, v0 + OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_outputGenerator);
  *(v0 + 520) = 0;
  v16 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v15) + 29);

  v17 = (v0 + OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_patternProvider);
  v17[3] = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  v17[4] = &off_2864BA730;
  *v17 = v16;
  v18 = (v0 + OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_guardFlowSupplier);
  *v18 = sub_252BD798C;
  v18[1] = 0;
  return v0;
}

uint64_t sub_252BD79B0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543798, &unk_252E4E410);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v32 - v5;
  v7 = sub_252E34164();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 520) > 1u || *(v1 + 520))
  {
    v11 = sub_252E37DB4();

    if ((v11 & 1) == 0)
    {
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v17 = sub_252E36AD4();
      __swift_project_value_buffer(v17, qword_27F544DA8);
      sub_252CC7784(0xD000000000000060, 0x8000000252E82850, 0, 0xD000000000000078, 0x8000000252E872F0);
      return 0;
    }
  }

  else
  {
  }

  v32[0] = a1;
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v12 = sub_252E36804();
  v14 = v13;

  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_252E3C290;
    *(v15 + 32) = 25705;
    v16 = v15 + 32;
    *(v15 + 72) = MEMORY[0x277D837D0];
    *(v15 + 40) = 0xE200000000000000;
    *(v15 + 48) = v12;
    *(v15 + 56) = v14;
    sub_252CC630C(v15);
    swift_setDeallocating();
    sub_25293847C(v16, &unk_27F541F10, &unk_252E42870);
    swift_deallocClassInstance();
  }

  v18 = [objc_opt_self() sharedAnalytics];
  if (v18)
  {
    v19 = v18;

    sub_252CC1408(v20);

    v21 = sub_252E36E24();

    [v19 logEventWithType:6503 context:v21];
  }

  else
  {
  }

  v22 = v32[0];
  sub_252E340E4();
  sub_252AB3FEC(v10, 0, v37);
  v23 = *(v8 + 8);
  v23(v10, v7);
  memcpy(v38, v37, sizeof(v38));
  memcpy(v39, v37, 0x1F8uLL);
  if (sub_252956B94(v39) == 1)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v24 = sub_252E36AD4();
    __swift_project_value_buffer(v24, qword_27F544DA8);
    v37[0] = 0;
    v37[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E82970);
    sub_252E340E4();
    sub_252E37AE4();
    v23(v10, v7);
    sub_252CC3D90(v37[0], v37[1], 0xD000000000000078, 0x8000000252E872F0);

    sub_2529515FC(3, 4, 0xD00000000000001BLL, 0x8000000252E87470);
    return 0;
  }

  memcpy(v35, (v2 + 16), sizeof(v35));
  memcpy((v2 + 16), v38, 0x1F8uLL);
  memcpy(v36, v38, sizeof(v36));
  sub_2529353AC(v36, &v33);
  sub_25293847C(v35, &qword_27F5404C8, &unk_252E3FD60);
  v26 = sub_252E34104();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v6, v22, v26);
  (*(v27 + 56))(v6, 0, 1, v26);
  v28 = OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_input;
  swift_beginAccess();
  sub_252B7B518(v6, v2 + v28);
  swift_endAccess();
  sub_252E340E4();
  sub_252937C40(v10);
  v23(v10, v7);
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v29 = sub_252E36AD4();
  __swift_project_value_buffer(v29, qword_27F544DA8);
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_252E379F4();

  v33 = 0xD000000000000014;
  v34 = 0x8000000252E87490;
  v32[1] = v39[33];
  v32[2] = v39[34];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v30 = sub_252E36F94();
  MEMORY[0x2530AD570](v30);

  sub_252CC3D90(v33, v34, 0xD000000000000078, 0x8000000252E872F0);

  sub_252B680FC(v31);
  sub_252B6796C();
  sub_25293847C(v38, &qword_27F5404C8, &unk_252E3FD60);
  swift_unknownObjectRelease();

  return 1;
}

uint64_t sub_252BD8174(uint64_t a1)
{
  v2[1021] = v1;
  v2[1020] = a1;
  v2[1022] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543798, &unk_252E4E410);
  v2[1023] = swift_task_alloc();
  v2[1024] = swift_task_alloc();
  v3 = sub_252E34104();
  v2[1025] = v3;
  v2[1026] = *(v3 - 8);
  v2[1027] = swift_task_alloc();
  v2[1028] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BD828C, 0, 0);
}

uint64_t sub_252BD828C()
{
  v47 = v0;
  v1 = v0[1021];
  memcpy(v0 + 65, (v1 + 16), 0x1F8uLL);
  memcpy(v0 + 2, (v1 + 16), 0x1F8uLL);
  if (sub_252956B94(v0 + 2) == 1)
  {
    goto LABEL_4;
  }

  v2 = v0[1026];
  v3 = v0[1025];
  v4 = v0[1024];
  v5 = v0[1021];
  v6 = OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_input;
  swift_beginAccess();
  sub_252938414(v5 + v6, v4, &qword_27F543798, &unk_252E4E410);
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    sub_25293847C(v0[1024], &qword_27F543798, &unk_252E4E410);
LABEL_4:
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v7 = v0[1023];
    v8 = v0[1021];
    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544DA8);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E87370);
    memcpy(v0 + 128, (v1 + 16), 0x1F8uLL);
    memcpy(v0 + 191, (v1 + 16), 0x1F8uLL);
    sub_252938414((v0 + 128), (v0 + 254), &qword_27F5404C8, &unk_252E3FD60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404C8, &unk_252E3FD60);
    v10 = sub_252E36F94();
    MEMORY[0x2530AD570](v10);

    MEMORY[0x2530AD570](0x202020200A726F20, 0xEF203A7475706E49);
    v11 = OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_input;
    swift_beginAccess();
    sub_252938414(v8 + v11, v7, &qword_27F543798, &unk_252E4E410);
    v12 = sub_252E36F94();
    MEMORY[0x2530AD570](v12);

    MEMORY[0x2530AD570](7499552, 0xE300000000000000);
    sub_252CC4050(0, 0xE000000000000000, 0xD000000000000078, 0x8000000252E872F0, 0x2865747563657865, 0xE900000000000029, 142);

    sub_252E33B24();
LABEL_7:

    v13 = v0[1];

    return v13();
  }

  v15 = v0[1021];
  (*(v0[1026] + 32))(v0[1028], v0[1024], v0[1025]);
  if (*(v15 + 520) <= 1u)
  {
    if (*(v15 + 520))
    {
      memcpy(v0 + 695, v0 + 65, 0x1F8uLL);
      sub_2529353AC((v0 + 695), (v0 + 758));
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v26 = v0[1028];
      v27 = v0[1027];
      v28 = v0[1026];
      v29 = v0[1025];
      v30 = sub_252E36AD4();
      __swift_project_value_buffer(v30, qword_27F544DA8);
      sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E82DD0, 0xD000000000000078, 0x8000000252E872F0);
      memcpy(__dst, v0 + 2, 0x1F8uLL);
      (*(v28 + 16))(v27, v26, v29);
      memcpy(v0 + 632, v0 + 65, 0x1F8uLL);
      sub_2529353AC((v0 + 632), (v0 + 821));
      if (qword_27F53F430 != -1)
      {
        swift_once();
      }

      v31 = qword_27F575A98;
      v32 = qword_27F53F218;

      if (v32 != -1)
      {
        swift_once();
      }

      v33 = qword_27F5753E0;
      v34 = qword_27F53F8A0;

      if (v34 != -1)
      {
        swift_once();
      }

      v35 = qword_27F575DC0;
      v36 = qword_27F53F880;

      if (v36 != -1)
      {
        swift_once();
      }

      v37 = v0[1027];
      v38 = v0[1026];
      v44 = v0[1025];
      v45 = v0[1028];
      v39 = qword_27F575DA0;
      type metadata accessor for IntentSelectionFlow();
      swift_allocObject();

      v0[1018] = sub_252D3FCBC(__dst, v37, v31, v33, v35, v39);
      sub_252BDB394(&qword_27F543808, type metadata accessor for IntentSelectionFlow, protocol conformance descriptor for IntentSelectionFlow);

      sub_252E33AC4();

      sub_25293847C((v0 + 65), &qword_27F5404C8, &unk_252E3FD60);

      (*(v38 + 8))(v45, v44);
    }

    else
    {
      memcpy(v0 + 884, v0 + 65, 0x1F8uLL);
      sub_2529353AC((v0 + 884), (v0 + 947));
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v16 = v0[1028];
      v17 = v0[1026];
      v18 = v0[1025];
      v19 = v0[1021];
      v20 = sub_252E36AD4();
      __swift_project_value_buffer(v20, qword_27F544DA8);
      sub_252CC3D90(0xD000000000000022, 0x8000000252E87440, 0xD000000000000078, 0x8000000252E872F0);
      v21 = (*(v19 + OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_guardFlowSupplier))(v19);
      v22 = type metadata accessor for HomeStore(0);
      v23 = static HomeStore.shared.getter(v22);
      sub_2529E0898();

      v0[1019] = v21;
      v24 = swift_allocObject();
      *(v24 + 16) = sub_252BDB2BC;
      *(v24 + 24) = v19;
      sub_252E33454();

      sub_252E33AC4();

      sub_25293847C((v0 + 65), &qword_27F5404C8, &unk_252E3FD60);
      (*(v17 + 8))(v16, v18);
    }

    goto LABEL_7;
  }

  if (*(v15 + 520) != 2)
  {
    memcpy(v0 + 317, v0 + 65, 0x1F8uLL);
    sub_2529353AC((v0 + 317), (v0 + 380));
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v40 = v0[1028];
    v41 = v0[1026];
    v42 = v0[1025];
    v43 = sub_252E36AD4();
    __swift_project_value_buffer(v43, qword_27F544DA8);
    sub_252CC7784(0xD000000000000054, 0x8000000252E82AE0, 0, 0xD000000000000078, 0x8000000252E872F0);
    sub_252E33B24();
    sub_25293847C((v0 + 65), &qword_27F5404C8, &unk_252E3FD60);
    (*(v41 + 8))(v40, v42);
    goto LABEL_7;
  }

  memcpy(v0 + 506, v0 + 2, 0x1F8uLL);
  memcpy(v0 + 443, v0 + 65, 0x1F8uLL);
  sub_2529353AC((v0 + 443), (v0 + 569));
  v25 = swift_task_alloc();
  v0[1029] = v25;
  *v25 = v0;
  v25[1] = sub_252BD8C78;

  return sub_252B5D2B0();
}

uint64_t sub_252BD8C78(uint64_t a1)
{
  *(*v1 + 8240) = a1;

  return MEMORY[0x2822009F8](sub_252BD8D78, 0, 0);
}

uint64_t sub_252BD8D78()
{
  v23 = v0;
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v1 = v0[1030];
  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544DA8);
  sub_252CC3D90(0xD00000000000004DLL, 0x8000000252E87390, 0xD000000000000078, 0x8000000252E872F0);
  sub_252B79558();
  v3 = sub_252BDACCC(v1);
  v4 = v0[1030];
  v5 = v0[1028];
  v6 = v0[1026];
  v21 = v0[1025];
  if (v3)
  {
    v7 = v3;
    sub_252E379F4();

    __dst[0] = 0xD000000000000023;
    __dst[1] = 0x8000000252E87410;
    v8 = [v7 description];
    v9 = sub_252E36F34();
    v11 = v10;

    MEMORY[0x2530AD570](v9, v11);

    sub_252CC3D90(0xD000000000000023, 0x8000000252E87410, 0xD000000000000078, 0x8000000252E872F0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543D00, &qword_252E51668);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_252E3C290;
    *(v12 + 56) = &type metadata for UserIsAdmin;
    *(v12 + 64) = sub_252BDAF00();
    memcpy(__dst, v0 + 2, 0x1F8uLL);
    v13 = v7;
    v14 = sub_252BDAF54(v5, __dst, v4);
    v0[1017] = sub_252D9BDBC(v13, v12, v14, 0);
    type metadata accessor for HomeAccessControlValidatingFlow();
    sub_252BDB394(&qword_27F543D10, type metadata accessor for HomeAccessControlValidatingFlow, asc_252E5FCA0);
    sub_252E33AF4();

    sub_25293847C((v0 + 65), &qword_27F5404C8, &unk_252E3FD60);
  }

  else
  {
    sub_252E379F4();

    __dst[0] = 0xD000000000000027;
    __dst[1] = 0x8000000252E873E0;
    v15 = type metadata accessor for HomeStore(0);
    v16 = static HomeStore.shared.getter(v15);
    v17 = sub_2529D9114();

    v0[1016] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542190, "p%\a");
    v18 = sub_252E36F94();
    MEMORY[0x2530AD570](v18);

    sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000078, 0x8000000252E872F0);

    sub_252E33B24();

    sub_25293847C((v0 + 65), &qword_27F5404C8, &unk_252E3FD60);
  }

  (*(v6 + 8))(v5, v21);

  v19 = v0[1];

  return v19();
}

uint64_t sub_252BD9178(char a1)
{
  if (a1)
  {
    *(v1 + 520) = 3;
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_27F544DA8);
    sub_252E379F4();
    v3 = "pdating the flowState to ";
    v4 = 0xD000000000000035;
  }

  else
  {
    *(v1 + 520) = 1;
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_27F544DA8);
    sub_252E379F4();
    v3 = "l. Flow state set to: ";
    v4 = 0xD000000000000039;
  }

  MEMORY[0x2530AD570](v4, v3 | 0x8000000000000000);
  sub_252E37AE4();
  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000078, 0x8000000252E872F0);
}

uint64_t sub_252BD9318()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543CF0, &qword_252E51660);
  MEMORY[0x28223BE20](v0 - 8);
  v66 = &v60 - v1;
  v2 = sub_252E332F4();
  v67 = *(v2 - 8);
  v68 = v2;
  MEMORY[0x28223BE20](v2);
  v70 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_252E332E4();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_252E34084();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252E34164();
  v74 = *(v7 - 8);
  v75 = v7;
  MEMORY[0x28223BE20](v7);
  v73 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_252E34104();
  v76 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v72 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543798, &unk_252E4E410);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v60 - v12;
  v14 = sub_252E334A4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v78 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v65 = &v60 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v60 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v60 - v24;
  v26 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v23);
  sub_252929E74((v26 + 288), v79);

  v28 = v80;
  v27 = v81;
  __swift_project_boxed_opaque_existential_1(v79, v80);
  v29 = (*(v27 + 176))(v28, v27);
  __swift_destroy_boxed_opaque_existential_1(v79);
  if (v29)
  {
    v61 = v5;
    sub_252E33464();
    (*(v15 + 16))(v22, v25, v14);
    v30 = sub_2529F90D4(0, 1, 1, MEMORY[0x277D84F90]);
    v32 = v30[2];
    v31 = v30[3];
    if (v32 >= v31 >> 1)
    {
      v30 = sub_2529F90D4((v31 > 1), v32 + 1, 1, v30);
    }

    (*(v15 + 8))(v25, v14);
    v30[2] = v32 + 1;
    (*(v15 + 32))(v30 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v32, v22, v14);
    v5 = v61;
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  v33 = OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_input;
  v34 = v77;
  swift_beginAccess();
  sub_252938414(v34 + v33, v13, &qword_27F543798, &unk_252E4E410);
  v35 = v76;
  v36 = (*(v76 + 48))(v13, 1, v9);
  v37 = v78;
  if (v36)
  {
    sub_25293847C(v13, &qword_27F543798, &unk_252E4E410);
    goto LABEL_8;
  }

  v42 = v72;
  (*(v35 + 16))(v72, v13, v9);
  sub_25293847C(v13, &qword_27F543798, &unk_252E4E410);
  v43 = v73;
  sub_252E340E4();
  (*(v35 + 8))(v42, v9);
  v44 = sub_252D2CDB4();
  v46 = v45;
  (*(v74 + 8))(v43, v75);
  if (v44 == 5198677 && v46 == 0xE300000000000000)
  {
  }

  else
  {
    v47 = sub_252E37DB4();

    if ((v47 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (AFDeviceSupportsSiriMUX())
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v48 = sub_252E36AD4();
    __swift_project_value_buffer(v48, qword_27F544DA8);
    sub_252CC3D90(0xD00000000000003FLL, 0x8000000252E872B0, 0xD000000000000078, 0x8000000252E872F0);
    sub_252E33424();
    v49 = v63;
    v50 = v62;
    v51 = v64;
    (*(v63 + 104))(v62, *MEMORY[0x277D5C088], v64);
    sub_252E33414();
    (*(v49 + 8))(v50, v51);
    v52 = type metadata accessor for SimpleHandoffStrategy();
    v53 = swift_allocObject();
    v80 = v52;
    v81 = sub_252BDB394(&qword_27F543CF8, type metadata accessor for SimpleHandoffStrategy, byte_252E51518);
    v79[0] = v53;

    sub_252E332D4();
    v54 = v69;
    v55 = v66;
    v56 = v71;
    (*(v69 + 16))(v66, v5, v71);
    (*(v54 + 56))(v55, 0, 1, v56);
    sub_252E332C4();
    v57 = v65;
    sub_252E33474();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_2529F90D4(0, v30[2] + 1, 1, v30);
    }

    v59 = v30[2];
    v58 = v30[3];
    if (v59 >= v58 >> 1)
    {
      v30 = sub_2529F90D4((v58 > 1), v59 + 1, 1, v30);
    }

    (*(v67 + 8))(v70, v68);
    (*(v69 + 8))(v5, v71);
    v30[2] = v59 + 1;
    (*(v15 + 32))(v30 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v59, v57, v14);
  }

LABEL_8:
  sub_252E33484();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v30 = sub_2529F90D4(0, v30[2] + 1, 1, v30);
  }

  v39 = v30[2];
  v38 = v30[3];
  if (v39 >= v38 >> 1)
  {
    v30 = sub_2529F90D4((v38 > 1), v39 + 1, 1, v30);
  }

  v30[2] = v39 + 1;
  (*(v15 + 32))(v30 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v39, v37, v14);
  v40 = sub_252E33144();

  return v40;
}

uint64_t sub_252BD9D80(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  *(v1 + 520) = 2;
  memcpy(__srca, __src, sizeof(__srca));
  GEOLocationCoordinate2DMake();
  memcpy(v13, (v1 + 16), sizeof(v13));
  memcpy((v1 + 16), __srca, 0x1F8uLL);
  sub_2529353AC(__dst, v10);
  v3 = sub_25293847C(v13, &qword_27F5404C8, &unk_252E3FD60);
  v4 = sub_252B680FC(v3);
  swift_beginAccess();
  v5 = *(v4 + 16);
  sub_2529353AC(__dst, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 16) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_2529F7FB0(0, *(v5 + 2) + 1, 1, v5);
    *(v4 + 16) = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_2529F7FB0((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  memcpy(&v5[504 * v8 + 32], __dst, 0x1F8uLL);
  *(v4 + 16) = v5;
  swift_endAccess();
}

uint64_t sub_252BD9EEC()
{
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
  sub_25293847C(v0 + OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_input, &qword_27F543798, &unk_252E4E410);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_locationService));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_deviceState));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_outputPublisher));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_outputGenerator));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22HomeAutomationInternal16AutomateHomeFlow_patternProvider));
  return v0;
}

uint64_t sub_252BD9FD0()
{
  sub_252BD9EEC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AutomateHomeFlow(uint64_t a1)
{
  result = qword_27F543CC0;
  if (!qword_27F543CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_252BDA07C(uint64_t a1)
{
  sub_252B7D9D8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void (*sub_252BDA14C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_252E35F94();
  return sub_252A6999C;
}

uint64_t sub_252BDA200(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25293B808;

  return sub_252BD8174(a1);
}

uint64_t sub_252BDA29C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AutomateHomeFlow(0);

  return sub_252E33644();
}

unint64_t sub_252BDA310()
{
  result = qword_27F543CD0;
  if (!qword_27F543CD0)
  {
    result = swift_getWitnessTable(byte_252E514E4, &type metadata for AutomateHomeFlow.State, v0, v1);
    atomic_store(result, &qword_27F543CD0);
  }

  return result;
}

uint64_t sub_252BDA364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return MEMORY[0x2821BA0B8](a1, a2, a3);
}

uint64_t sub_252BDA4A8(uint64_t a1)
{
  result = sub_252BDB394(&qword_27F543CE0, type metadata accessor for AutomateHomeFlow, byte_252E515E0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252BDA500(uint64_t a1)
{
  result = sub_252BDB394(&qword_27F543CE8, type metadata accessor for AutomateHomeFlow, byte_252E51610);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252BDA558(__int128 *a1)
{
  v2 = sub_252E36AB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[1];
  v68 = *a1;
  v69 = v6;
  v70 = *(a1 + 4);
  v7 = *(a1 + 40);
  memcpy(v67, a1 + 41, sizeof(v67));
  if (qword_27F53F5D0 != -1)
  {
    swift_once();
  }

  v60 = v3;
  v61 = v2;
  v8 = qword_27F544F58;
  sub_252E36A94();
  sub_252E375D4();
  v58 = v8;
  v59 = v5;
  sub_252E36A84();
  v9 = a1[1];
  v62 = *a1;
  v63 = v9;
  v64 = *(a1 + 4);
  v65 = v7;
  memcpy(v66, a1 + 41, sizeof(v66));
  v10 = sub_252A0E1E8();
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v11 = sub_252E36AD4();
  __swift_project_value_buffer(v11, qword_27F544D60);
  *&v62 = 0;
  *(&v62 + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v62 = 0x2073614820202020;
  *(&v62 + 1) = 0xEF203A746E657665;
  v12 = v7 != 4;
  if (v7 == 4)
  {
    v13 = 0x65736C6166;
  }

  else
  {
    v13 = 1702195828;
  }

  LODWORD(v57) = v7;
  if (v7 == 4)
  {
    v14 = 0xE500000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v13, v14);

  MEMORY[0x2530AD570](0x736148202020200ALL, 0xEF203A6574616420);
  if (v10)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v10)
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v15, v16);

  sub_252CC3D90(v62, *(&v62 + 1), 0xD000000000000078, 0x8000000252E872F0);

  if (((v12 | v10) & 1) == 0)
  {
    goto LABEL_23;
  }

  v17 = type metadata accessor for HomeStore(0);
  v18 = static HomeStore.shared.getter(v17);
  v62 = v68;
  v63 = v69;
  v64 = v70;
  v65 = v57;
  memcpy(v66, v67, sizeof(v66));
  v19 = sub_252AEFEB0();
  v20 = v19;
  v21 = v18[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v21 != 2 && (v21 & 1) == 0)
  {

    v22 = 0;
    goto LABEL_24;
  }

  v22 = [v19 filters];
  if (!v22)
  {

    goto LABEL_24;
  }

  type metadata accessor for HomeFilter();
  v23 = sub_252E37264();

  v24 = [v20 userTask];
  v25 = HomeStore.accessories(matching:supporting:)(v23, v24);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
    v34 = v25 & 0xFFFFFFFFFFFFFF8;
    if (v25 >> 62)
    {
      goto LABEL_57;
    }

    v35 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v35)
    {
LABEL_58:
      sub_252929F10(v25, 0);
      v22 = 1;
      goto LABEL_24;
    }

LABEL_29:
    v36 = 0;
    v56 = v34;
    v57 = v25 + 32;
    while (1)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x2530ADF00](v36, v25);
        v39 = __OFADD__(v36++, 1);
        if (v39)
        {
LABEL_53:
          __break(1u);
LABEL_54:
          sub_252929F10(v25, 0);

          v22 = 0;
          goto LABEL_24;
        }
      }

      else
      {
        if (v36 >= *(v34 + 16))
        {
          __break(1u);
LABEL_57:
          v35 = sub_252E378C4();
          if (!v35)
          {
            goto LABEL_58;
          }

          goto LABEL_29;
        }

        v38 = *(v57 + 8 * v36);

        v39 = __OFADD__(v36++, 1);
        if (v39)
        {
          goto LABEL_53;
        }
      }

      v40 = (*v38 + 256);
      v41 = *v40;
      if ((*v40)() == 32)
      {
        sub_252929F10(v25, 0);

        v22 = 0;
        goto LABEL_24;
      }

      v42 = v35;
      v43 = (*(*v38 + 272))();
      if (*(v43 + 16))
      {
        sub_252E37EC4();
        MEMORY[0x2530AE390](32);
        v44 = sub_252E37F14();
        v45 = -1 << *(v43 + 32);
        v46 = v44 & ~v45;
        if ((*(v43 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
        {
          v47 = ~v45;
          while (*(*(v43 + 48) + 8 * v46) != 32)
          {
            v46 = (v46 + 1) & v47;
            if (((*(v43 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          goto LABEL_54;
        }
      }

LABEL_40:

      v49 = (v41)(v48);
      if (v49 == 38)
      {
        break;
      }

      v50 = MEMORY[0x277D84FA0];
      if (v49 == 41)
      {
        v51 = &unk_2864A9080;
LABEL_44:
        v50 = sub_2529FC004(v51);
      }

      if (*(v50 + 16))
      {
        sub_252E37EC4();
        MEMORY[0x2530AE390](32);
        v52 = sub_252E37F14();
        v53 = -1 << *(v50 + 32);
        v54 = v52 & ~v53;
        if ((*(v50 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54))
        {
          v55 = ~v53;
          while (*(*(v50 + 48) + 8 * v54) != 32)
          {
            v54 = (v54 + 1) & v55;
            if (((*(v50 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
            {
              goto LABEL_30;
            }
          }

          goto LABEL_54;
        }
      }

LABEL_30:

      v35 = v42;
      v37 = v36 == v42;
      v34 = v56;
      if (v37)
      {
        goto LABEL_58;
      }
    }

    v51 = &unk_2864A9058;
    goto LABEL_44;
  }

  sub_252929F10(v25, 1);
LABEL_23:
  v22 = 0;
LABEL_24:
  v29 = v60;
  v28 = v61;
  v31 = v58;
  v30 = v59;
  v32 = sub_252E375C4();
  sub_252E36A74(v32, &dword_252917000, v31, "ShouldHandleAutomateHomeIntent", 30, 2, v30, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  (*(v29 + 8))(v30, v28);
  return v22;
}

unint64_t sub_252BDAC80(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

id sub_252BDACCC(void *a1)
{
  v1 = [a1 automatableTask];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for ControlAutomateHomeIntent();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
      v5 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
      v6 = v4;

      v7 = [v5 init];
      [v7 setUserTask_];
      type metadata accessor for HomeFilter();
      v8 = sub_252E37254();

      [v7 setFilters_];

      [v7 setTime_];
      v9 = [v7 filters];
      if (v9)
      {
        v10 = v9;
        v11 = sub_252E37264();

        v12 = sub_252DD5A58(v11);
      }

      else
      {
        v12 = MEMORY[0x277D84F90];
      }

      v13 = sub_252C758E0(v12);

      v14 = sub_252DD6238(v13);

      if (v14)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v15 = type metadata accessor for HomeStore(0);
  v16 = static HomeStore.shared.getter(v15);
  v14 = sub_2529D9114();

  if (!v14)
  {
    v18 = static HomeStore.shared.getter(v17);
    v14 = sub_2529F1BFC();

    if (!v14)
    {
      return 0;
    }
  }

LABEL_10:
  v19 = *(v14 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);

  return v19;
}

unint64_t sub_252BDAF00()
{
  result = qword_27F543D08;
  if (!qword_27F543D08)
  {
    result = swift_getWitnessTable(byte_252E5FDC4, &type metadata for UserIsAdmin, v0, v1);
    atomic_store(result, &qword_27F543D08);
  }

  return result;
}

uint64_t sub_252BDAF54(uint64_t a1, const void *a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543D18, &qword_252E51670);
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for LocationService(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543D20, &qword_252E51678);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  memcpy(v21, a2, 0x1F8uLL);
  if (qword_27F53F348 != -1)
  {
    swift_once();
  }

  v12 = sub_252E36C84();
  v13 = __swift_project_value_buffer(v12, qword_27F5432C0);
  (*(*(v12 - 8) + 16))(v7, v13, v12);
  type metadata accessor for AutomateHomeRCHStrategy();
  v14 = swift_allocObject();
  v14[5] = v5;
  v14[6] = &protocol witness table for LocationService;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14 + 2);
  sub_252BDB2CC(v7, boxed_opaque_existential_0);
  v20 = v14;
  sub_252BD6EC0(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543D28, &qword_252E51680);
  swift_allocObject();
  sub_252E335D4();
  sub_252BDB394(&qword_27F543D30, type metadata accessor for AutomateHomeRCHStrategy, protocol conformance descriptor for AutomateHomeRCHStrategy);
  sub_252E33A44();
  if (qword_27F53F720 != -1)
  {
    swift_once();
  }

  v16 = sub_252E33A34();
  (*(v9 + 8))(v11, v8);
  v20 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543D38, &qword_252E51688);
  sub_252BDB330();
  v17 = sub_252E33604();

  return v17;
}

uint64_t sub_252BDB2CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationService(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_252BDB330()
{
  result = qword_27F543D40;
  if (!qword_27F543D40)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F543D38, &qword_252E51688);
    result = swift_getWitnessTable(MEMORY[0x277D5B820], v3, v0, v1);
    atomic_store(result, &qword_27F543D40);
  }

  return result;
}

uint64_t sub_252BDB394(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252BDB3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  sub_252E33944();
  v7[9] = swift_task_alloc();
  v8 = sub_252E34014();
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BDB4D4, 0, 0);
}

uint64_t sub_252BDB4D4()
{
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544D18);
  sub_252CC3D90(0xD000000000000026, 0x8000000252E87730, 0xD000000000000077, 0x8000000252E875B0);
  sub_252E33934();
  *(swift_task_alloc() + 16) = v1;
  sub_252E33F54();

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_252BDB668;
  v4 = v0[12];
  v5 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return sub_252BDB88C(v8, v6, v7, v4, 0, 0, 0, v5);
}

uint64_t sub_252BDB668()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_252BDB804;
  }

  else
  {
    v2 = sub_252BDB77C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252BDB77C()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_252BDB804()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_252BDB88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 144) = v13;
  *(v9 + 152) = v8;
  *(v9 + 128) = a6;
  *(v9 + 136) = a8;
  *(v9 + 240) = a7;
  *(v9 + 112) = a4;
  *(v9 + 120) = a5;
  *(v9 + 96) = a2;
  *(v9 + 104) = a3;
  *(v9 + 88) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  *(v9 + 160) = swift_task_alloc();
  *(v9 + 168) = swift_task_alloc();
  v10 = sub_252E34014();
  *(v9 + 176) = v10;
  *(v9 + 184) = *(v10 - 8);
  *(v9 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BDB9AC, 0, 0);
}

uint64_t sub_252BDB9AC()
{
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 240);
  v2 = sub_252E36AD4();
  *(v0 + 200) = __swift_project_value_buffer(v2, qword_27F544D18);
  sub_252CC3D90(0xD00000000000001BLL, 0x8000000252E87590, 0xD000000000000077, 0x8000000252E875B0);
  if (v1)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(sub_252B680FC(v3) + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_supressSnippet);
  }

  *(v0 + 241) = v4;
  v7 = (*(v0 + 96) + **(v0 + 96));
  v5 = swift_task_alloc();
  *(v0 + 208) = v5;
  *v5 = v0;
  v5[1] = sub_252BDBB4C;

  return v7();
}

uint64_t sub_252BDBB4C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 216) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_252BDBCA8, 0, 0);
  }
}

uint64_t sub_252BDBCA8()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 241);
  sub_252CC3D90(0xD000000000000021, 0x8000000252E87630, 0xD000000000000077, 0x8000000252E875B0);
  v3 = [v1 description];
  v4 = sub_252E36F34();
  v6 = v5;

  sub_252CC3D90(v4, v6, 0xD000000000000077, 0x8000000252E875B0);

  if (v2 == 1)
  {
    v7 = *(v0 + 216);
    sub_252CC3D90(0xD000000000000025, 0x8000000252E876B0, 0xD000000000000077, 0x8000000252E875B0);
    [v7 setVisual_];
  }

  v8 = *(v0 + 128);
  (*(*(v0 + 184) + 16))(*(v0 + 192), *(v0 + 112), *(v0 + 176));
  if (v8)
  {
    sub_252CC3D90(0xD000000000000021, 0x8000000252E87680, 0xD000000000000077, 0x8000000252E875B0);
    if (sub_252E33FE4())
    {

      v10 = sub_252E33FD4();
      if (*v9)
      {
        v11 = v9;
        v12 = *(v0 + 168);
        v13 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
        sub_252E32CA4();
        v14 = sub_252E32CB4();
        v15 = *(v14 - 8);
        v16 = (*(v15 + 48))(v12, 1, v14);
        v17 = 0;
        if (v16 != 1)
        {
          v18 = *(v0 + 168);
          v17 = sub_252E32C74();
          (*(v15 + 8))(v18, v14);
        }

        [v13 setPunchOutUri_];

        MEMORY[0x2530AD700]();
        if (*((*v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
      }

      v10(v0 + 56, 0);
    }

    else
    {
      v19 = *(v0 + 160);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_252E3C130;
      v21 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
      sub_252E32CA4();
      v22 = sub_252E32CB4();
      v23 = *(v22 - 8);
      v24 = 0;
      if ((*(v23 + 48))(v19, 1, v22) != 1)
      {
        v25 = *(v0 + 160);
        v24 = sub_252E32C74();
        (*(v23 + 8))(v25, v22);
      }

      [v21 setPunchOutUri_];

      *(v20 + 32) = v21;
      sub_252E33FF4();
    }
  }

  (*(*(v0 + 144) + 8))(*(v0 + 136));
  v26 = *(v0 + 40);
  v27 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v26);
  v28 = swift_task_alloc();
  *(v0 + 224) = v28;
  *v28 = v0;
  v28[1] = sub_252BDC148;
  v29 = *(v0 + 216);
  v30 = *(v0 + 192);
  v31 = *(v0 + 88);

  return MEMORY[0x2821BB480](v31, v29, v30, v26, v27);
}

uint64_t sub_252BDC148()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_252BDC354;
  }

  else
  {
    v2 = sub_252BDC25C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252BDC25C()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[22];
  v4 = v0[23];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_252CC3D90(0xD00000000000001BLL, 0x8000000252E87660, 0xD000000000000077, 0x8000000252E875B0);

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_252BDC354()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252BDC404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  sub_252E33944();
  v5[17] = swift_task_alloc();
  v6 = sub_252E34014();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BDC4F8, 0, 0);
}

uint64_t sub_252BDC4F8()
{
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v1 = sub_252E36AD4();
  __swift_project_value_buffer(v1, qword_27F544D18);
  sub_252CC3D90(0xD000000000000026, 0x8000000252E876E0, 0xD000000000000077, 0x8000000252E875B0);
  sub_252E33924();
  v2 = sub_252E33F54();
  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v2);
  sub_252929E74((v3 + 96), v0 + 16);

  v4 = *(v0 + 40);
  *(v0 + 168) = v4;
  *(v0 + 184) = __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
  v5 = swift_task_alloc();
  *(v0 + 192) = v5;
  *v5 = v0;
  v5[1] = sub_252BDC6A4;
  v6 = *(v0 + 160);
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);
  v9 = *(v0 + 96);

  return sub_252BDB88C(v0 + 56, v9, v7, v6, 0, 0, 0, v8);
}

uint64_t sub_252BDC6A4()
{
  v2 = *v1;
  v2[25] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_252BDC9CC, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[26] = v3;
    *v3 = v2;
    v3[1] = sub_252BDC820;
    v4 = v2[22];
    v5 = v2[21];

    return MEMORY[0x2821BB5D0](v2 + 7, v5, v4);
  }
}

uint64_t sub_252BDC820()
{
  v2 = *v1;
  *(v2 + 216) = v0;

  __swift_destroy_boxed_opaque_existential_1((v2 + 56));
  if (v0)
  {
    v3 = sub_252BDCA64;
  }

  else
  {
    v3 = sub_252BDC93C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252BDC93C()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_252BDC9CC()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_252BDCA64()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_252BDCAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  sub_252E33944();
  v7[9] = swift_task_alloc();
  v8 = sub_252E34014();
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BDCBF4, 0, 0);
}

uint64_t sub_252BDCBF4()
{
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544D18);
  sub_252CC3D90(0xD000000000000026, 0x8000000252E87730, 0xD000000000000077, 0x8000000252E875B0);
  sub_252E33934();
  *(swift_task_alloc() + 16) = v1;
  sub_252E33F54();

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_252BDCD88;
  v4 = v0[12];
  v5 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return sub_252BDB88C(v8, v6, v7, v4, 0, 0, 0, v5);
}

uint64_t sub_252BDCD88()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_252BDE258;
  }

  else
  {
    v2 = sub_252BDE25C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252BDCE9C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540390, &qword_252E3C448);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  sub_252E33FB4();
  sub_252E34004();
  v6 = sub_252E33C44();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a2, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  return sub_252E33FC4();
}

uint64_t sub_252BDCFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[13] = a6;
  v7[14] = v6;
  v7[11] = a4;
  v7[12] = a5;
  v7[9] = a2;
  v7[10] = a3;
  v7[8] = a1;
  return MEMORY[0x2822009F8](sub_252BDCFD8, 0, 0);
}

uint64_t sub_252BDCFD8()
{
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_252E36AD4();
  v0[15] = __swift_project_value_buffer(v2, qword_27F544D18);
  sub_252CC3D90(0xD00000000000001BLL, 0x8000000252E87590, 0xD000000000000077, 0x8000000252E875B0);
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_252BDD14C;

  return v5();
}

uint64_t sub_252BDD14C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 136) = a1;

    return MEMORY[0x2822009F8](sub_252BDD298, 0, 0);
  }
}

uint64_t sub_252BDD298()
{
  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];
  sub_252CC3D90(0xD000000000000021, 0x8000000252E87630, 0xD000000000000077, 0x8000000252E875B0);
  v4 = [v1 description];
  v5 = sub_252E36F34();
  v7 = v6;

  sub_252CC3D90(v5, v7, 0xD000000000000077, 0x8000000252E875B0);

  (*(v2 + 32))(v3, v2);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v8 = sub_252E334D4();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E87710, 0xD000000000000077, 0x8000000252E875B0);
  v0[7] = v8;
  sub_252E33444();
  sub_252E33604();
  sub_252E33B04();

  v9 = v0[1];

  return v9();
}

uint64_t PatternExecutionResult.description.getter()
{
  v1 = v0;
  sub_252E379F4();
  MEMORY[0x2530AD570](540689481, 0xE400000000000000);
  v2 = [v0 patternId];
  v3 = sub_252E36F34();
  v5 = v4;

  MEMORY[0x2530AD570](v3, v5);

  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E874D0);
  v6 = [v1 responseMode];
  v7 = sub_252E36F34();
  v9 = v8;

  MEMORY[0x2530AD570](v7, v9);

  MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E874F0);
  v10 = [v1 printSupportingDialog];
  v11 = [v10 description];
  v12 = sub_252E36F34();
  v14 = v13;

  MEMORY[0x2530AD570](v12, v14);

  MEMORY[0x2530AD570](0x676F6C616944202CLL, 0xEA0000000000203ALL);
  v15 = [v1 dialog];
  v16 = sub_25293F638(0, &qword_27F543D58, 0x277D052C8);
  v17 = sub_252E37264();

  v18 = MEMORY[0x2530AD730](v17, v16);
  v20 = v19;

  MEMORY[0x2530AD570](v18, v20);

  return 0;
}

uint64_t PatternExecutionDialog.description.getter()
{
  v1 = v0;
  sub_252E379F4();
  MEMORY[0x2530AD570](540689481, 0xE400000000000000);
  v2 = [v0 dialogId];
  v3 = sub_252E36F34();
  v5 = v4;

  MEMORY[0x2530AD570](v3, v5);

  MEMORY[0x2530AD570](0x3A70756F7247202CLL, 0xE900000000000020);
  v6 = [v1 groupName];
  v7 = sub_252E36F34();
  v9 = v8;

  MEMORY[0x2530AD570](v7, v9);

  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E87510);
  v10 = [v1 fullPrint];
  v11 = sub_252E36F34();
  v13 = v12;

  MEMORY[0x2530AD570](v11, v13);

  MEMORY[0x2530AD570](0x726F70707553202CLL, 0xEE00203A676E6974);
  v14 = [v1 supportingPrint];
  v15 = sub_252E36F34();
  v17 = v16;

  MEMORY[0x2530AD570](v15, v17);

  MEMORY[0x2530AD570](0x203A796C6E4F202CLL, 0xE800000000000000);
  v18 = [v1 printOnly];
  v19 = [v18 description];
  v20 = sub_252E36F34();
  v22 = v21;

  MEMORY[0x2530AD570](v20, v22);

  MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E87530);
  v23 = [v1 fullSpeak];
  v24 = sub_252E36F34();
  v26 = v25;

  MEMORY[0x2530AD570](v24, v26);

  MEMORY[0x2530AD570](0x726F70707553202CLL, 0xEE00203A676E6974);
  v27 = [v1 supportingSpeak];
  v28 = sub_252E36F34();
  v30 = v29;

  MEMORY[0x2530AD570](v28, v30);

  MEMORY[0x2530AD570](0x203A796C6E4F202CLL, 0xE800000000000000);
  v31 = [v1 spokenOnly];
  v32 = [v31 description];
  v33 = sub_252E36F34();
  v35 = v34;

  MEMORY[0x2530AD570](v33, v35);

  MEMORY[0x2530AD570](32032, 0xE200000000000000);
  return 0;
}

char *DialogExecutionResult.description.getter()
{
  v1 = v0;
  sub_252E379F4();

  v2 = [v0 catId];
  v3 = sub_252E36F34();
  v5 = v4;

  MEMORY[0x2530AD570](v3, v5);

  MEMORY[0x2530AD570](0x676F6C616944202CLL, 0xEA0000000000203ALL);
  v6 = [v1 dialog];
  sub_25293F638(0, &qword_27F542128, 0x277D052B0);
  v7 = sub_252E37264();

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_13:

    v11 = MEMORY[0x277D84F90];
LABEL_14:
    v21 = MEMORY[0x2530AD730](v11, MEMORY[0x277D837D0]);
    v23 = v22;

    MEMORY[0x2530AD570](v21, v23);

    return 540689481;
  }

  v8 = sub_252E378C4();
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_3:
  v24 = MEMORY[0x277D84F90];
  result = sub_2529AA3A0(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = v24;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x2530ADF00](v10, v7);
      }

      else
      {
        v12 = *(v7 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = [v12 description];
      v15 = sub_252E36F34();
      v17 = v16;

      v19 = *(v24 + 16);
      v18 = *(v24 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_2529AA3A0((v18 > 1), v19 + 1, 1);
      }

      ++v10;
      *(v24 + 16) = v19 + 1;
      v20 = v24 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
    }

    while (v8 != v10);

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_252BDDD40(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_252E36F04();

  return v5;
}

uint64_t DialogElement.description.getter()
{
  v1 = v0;
  sub_252E379F4();
  MEMORY[0x2530AD570](540689481, 0xE400000000000000);
  v2 = [v0 id];
  v3 = sub_252E36F34();
  v5 = v4;

  MEMORY[0x2530AD570](v3, v5);

  MEMORY[0x2530AD570](0x72506C6C7566202CLL, 0xED0000203A746E69);
  v6 = [v1 fullPrint];
  v7 = sub_252E36F34();
  v9 = v8;

  MEMORY[0x2530AD570](v7, v9);

  MEMORY[0x2530AD570](0x70536C6C7566202CLL, 0xED0000203A6B6165);
  v10 = [v1 fullSpeak];
  v11 = sub_252E36F34();
  v13 = v12;

  MEMORY[0x2530AD570](v11, v13);

  MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E87550);
  v14 = [v1 supportingPrint];
  v15 = sub_252E36F34();
  v17 = v16;

  MEMORY[0x2530AD570](v15, v17);

  MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E87570);
  v18 = [v1 supportingSpeak];
  v19 = sub_252E36F34();
  v21 = v20;

  MEMORY[0x2530AD570](v19, v21);

  MEMORY[0x2530AD570](0x4F746E697270202CLL, 0xED0000203A796C6ELL);
  v22 = [v1 printOnly];
  v23 = v22 == 0;
  if (v22)
  {
    v24 = 1702195828;
  }

  else
  {
    v24 = 0x65736C6166;
  }

  if (v23)
  {
    v25 = 0xE500000000000000;
  }

  else
  {
    v25 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v24, v25);

  MEMORY[0x2530AD570](0x6E656B6F7073202CLL, 0xEE00203A796C6E4FLL);
  v26 = [v1 spokenOnly];
  v27 = v26 == 0;
  if (v26)
  {
    v28 = 1702195828;
  }

  else
  {
    v28 = 0x65736C6166;
  }

  if (v27)
  {
    v29 = 0xE500000000000000;
  }

  else
  {
    v29 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v28, v29);

  MEMORY[0x2530AD570](32, 0xE100000000000000);
  return 0;
}

void sub_252BDE100()
{
  v1 = [v0 dialog];
  sub_25293F638(0, &qword_27F542128, 0x277D052B0);
  v2 = sub_252E37264();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  v3 = sub_252E378C4();
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x2530ADF00](v4, v2);
      }

      else
      {
        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      ++v4;
      v7 = sub_252E36F04();
      [v6 setSupportingPrint_];

      v8 = sub_252E36F04();
      [v6 setFullPrint_];
    }

    while (v3 != v4);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t dispatch thunk of DiscoverHomeHandleDelegate.handle(intent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25296BC70;

  return v9(a1, a2, a3);
}

uint64_t sub_252BDE3F8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TargetModeHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_252BDE42C(void *a1, const void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  v4 = [a1 userTask];
  if (!v4)
  {
    sub_252C515AC();
    goto LABEL_8;
  }

  v5 = v4;
  if ([v4 taskType] == 4)
  {

    goto LABEL_6;
  }

  v6 = [v5 taskType];

  if (v6 != 5)
  {
LABEL_8:
    v7 = 0;
    return v7 & 1;
  }

LABEL_6:
  memcpy(v18, a2, sizeof(v18));
  sub_252A10E18(&v19);
  if (v19 != 77)
  {
    v18[0] = v19;
    v9 = StateSemantic.rawValue.getter();
    v11 = v10;
    if (v9 == StateSemantic.rawValue.getter() && v11 == v12)
    {

      v7 = 1;
      return v7 & 1;
    }

    v17 = sub_252E37DB4();

    if (v17)
    {
      v7 = 1;
      return v7 & 1;
    }
  }

  memcpy(v18, __dst, sizeof(v18));
  sub_252A10E18(&v19);
  if (v19 == 77)
  {
    goto LABEL_8;
  }

  v18[0] = v19;
  v13 = StateSemantic.rawValue.getter();
  v15 = v14;
  if (v13 == StateSemantic.rawValue.getter() && v15 == v16)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_252E37DB4();
  }

  return v7 & 1;
}

id sub_252BDE620(void *a1)
{
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 userTask];
  if (v6)
  {
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    v6 = sub_252D6CA80(v6);
    v6[2] = 5;
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_27F544DA8);
  (*(v3 + 16))(v5, v7, v2);
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E87790);
  if (v6)
  {
    v8 = v6[2];
  }

  else
  {
    v8 = 0;
  }

  v18 = v8;
  v19 = v6 == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F80, &unk_252E4E1F0);
  v9 = sub_252E36F94();
  MEMORY[0x2530AD570](v9);

  sub_252CC3D90(v20, v21, 0xD00000000000008ALL, 0x8000000252E877D0);

  (*(v3 + 8))(v5, v2);
  if (v6)
  {

    v10 = sub_252D6CB58();
  }

  else
  {
    v10 = 0;
  }

  v11 = [a1 filters];
  if (v11)
  {
    v12 = v11;
    type metadata accessor for HomeFilter();
    v13 = sub_252E37264();
  }

  else
  {
    v13 = 0;
  }

  v14 = [a1 time];
  v15 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  [v15 setUserTask_];
  if (v13)
  {
    type metadata accessor for HomeFilter();
    v16 = sub_252E37254();
  }

  else
  {
    v16 = 0;
  }

  [v15 setFilters_];

  [v15 setTime_];

  return v15;
}

uint64_t CorrectionState.hashValue.getter()
{
  v1 = *v0;
  sub_252E37EC4();
  MEMORY[0x2530AE390](v1);
  return sub_252E37F14();
}

uint64_t sub_252BDEA88(void *__src, uint64_t a2)
{
  v3 = v2;
  memcpy(__dst, __src, sizeof(__dst));
  *(v2 + 16) = 0;
  v5 = v2 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_correctionsExitValue;
  strcpy(v5, "Initial value");
  *(v5 + 14) = -4864;
  v6 = *MEMORY[0x277D5BF08];
  v7 = sub_252E33E14();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  v8 = OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_undoRequests;
  *(v3 + v8) = sub_252CC6468(MEMORY[0x277D84F90]);
  v9 = OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_previousHomeAutomationIntent;
  sub_25293DEE0(__srca);
  memcpy((v3 + v9), __srca, 0x1F8uLL);
  v10 = OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_currentInput;
  v11 = sub_252E34104();
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  memcpy((v3 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_currentHomeAutomationIntent), __srca, 0x1F8uLL);
  *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_shouldCorrect) = 0;
  memcpy(v41, __dst, sizeof(v41));
  GEOLocationCoordinate2DMake();
  memcpy(v42, (v3 + v9), 0x1F8uLL);
  memcpy((v3 + v9), v41, 0x1F8uLL);
  sub_2529353AC(__dst, v38);
  sub_25293847C(v42, &qword_27F5404C8, &unk_252E3FD60);
  *(v3 + v8) = a2;

  if (qword_27F53F540 != -1)
  {
    swift_once();
  }

  v12 = sub_252E36AD4();
  __swift_project_value_buffer(v12, qword_27F544E68);
  sub_2529353AC(__dst, v38);
  v13 = sub_252E36AC4();
  v14 = sub_252E374C4();
  sub_252935408(__dst);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v37[0] = v16;
    *v15 = 136315138;
    memcpy(v38, __dst, sizeof(v38));
    v17 = HomeAutomationIntent.description.getter();
    v19 = v18;
    sub_252935408(__dst);
    v20 = sub_252BE2CE0(v17, v19, v37);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_252917000, v13, v14, "CorrectionFlow - init stored prevHomeAutomationIntent %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x2530AED00](v16, -1, -1);
    MEMORY[0x2530AED00](v15, -1, -1);
  }

  else
  {

    sub_252935408(__dst);
  }

  v21 = sub_252E36AC4();
  v22 = sub_252E374C4();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v38 = v24;
    *v23 = 136315138;
    type metadata accessor for Service(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EA8, qword_252E51A90);
    sub_252BE3234(&qword_27F541EB0, type metadata accessor for Service, protocol conformance descriptor for Entity);
    v25 = sub_252E36E54();
    v27 = v26;

    v28 = sub_252BE2CE0(v25, v27, v38);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_252917000, v21, v22, "CorrectionFlow - init stored undoIntents %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x2530AED00](v24, -1, -1);
    MEMORY[0x2530AED00](v23, -1, -1);
  }

  else
  {
  }

  v30 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v29);
  sub_252929E74((v30 + 96), v38);

  v31 = sub_252927BEC(v38, v3 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_outputPublisher);
  v32 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v31);
  swift_beginAccess();
  v33 = *(v32 + 22);

  *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_catProvider) = v33;
  v35 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v34);
  sub_252929E74((v35 + 136), v38);

  sub_252927BEC(v38, v3 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_outputGenerator);
  return v3;
}

uint64_t ControlHomeCorrectionFlow.on(correction:)(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543798, &unk_252E4E410);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - v4;
  v6 = sub_252E34164();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v38, (v1 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_previousHomeAutomationIntent), sizeof(v38));
  memcpy(v39, (v1 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_previousHomeAutomationIntent), 0x1F8uLL);
  if (sub_252956B94(v39) == 1)
  {
    goto LABEL_58;
  }

  v10 = LOBYTE(v39[26]);
  if (LOBYTE(v39[26]) == 9)
  {
    goto LABEL_58;
  }

  v30 = v2;
  memcpy(v37, v38, sizeof(v37));
  sub_2529353AC(v37, v36);
  if (byte_2864AE158 <= 3u)
  {
    v13 = 7628147;
    v14 = 0xE600000000000000;
    v15 = 0x656C67676F74;
    if (byte_2864AE158 != 2)
    {
      v15 = 2003789939;
      v14 = 0xE400000000000000;
    }

    if (byte_2864AE158)
    {
      v13 = 7628135;
    }

    if (byte_2864AE158 <= 1u)
    {
      v12 = v13;
    }

    else
    {
      v12 = v15;
    }

    if (byte_2864AE158 <= 1u)
    {
      v11 = 0xE300000000000000;
    }

    else
    {
      v11 = v14;
    }
  }

  else if (byte_2864AE158 <= 5u)
  {
    if (byte_2864AE158 == 4)
    {
      v11 = 0xE500000000000000;
      v12 = 0x746E756F63;
    }

    else
    {
      v11 = 0x8000000252E678A0;
      v12 = 0xD000000000000011;
    }
  }

  else if (byte_2864AE158 == 6)
  {
    v11 = 0x8000000252E678C0;
    v12 = 0xD000000000000010;
  }

  else if (byte_2864AE158 == 7)
  {
    v11 = 0x8000000252E678E0;
    v12 = 0xD000000000000012;
  }

  else
  {
    v12 = 0x656E4F6863696877;
    v11 = 0xEF64656C69614673;
  }

  v16 = v30;
  if (v10 <= 3)
  {
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v17 = 0xE600000000000000;
        if (v12 != 0x656C67676F74)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v17 = 0xE400000000000000;
        if (v12 != 2003789939)
        {
          goto LABEL_50;
        }
      }
    }

    else
    {
      if (v10)
      {
        v18 = 7628135;
      }

      else
      {
        v18 = 7628147;
      }

      v17 = 0xE300000000000000;
      if (v12 != v18)
      {
        goto LABEL_50;
      }
    }
  }

  else if (v10 <= 5)
  {
    if (v10 == 4)
    {
      v17 = 0xE500000000000000;
      if (v12 != 0x746E756F63)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v17 = 0x8000000252E678A0;
      if (v12 != 0xD000000000000011)
      {
        goto LABEL_50;
      }
    }
  }

  else if (v10 == 6)
  {
    v17 = 0x8000000252E678C0;
    if (v12 != 0xD000000000000010)
    {
      goto LABEL_50;
    }
  }

  else if (v10 == 7)
  {
    v17 = 0x8000000252E678E0;
    if (v12 != 0xD000000000000012)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v17 = 0xEF64656C69614673;
    if (v12 != 0x656E4F6863696877)
    {
      goto LABEL_50;
    }
  }

  if (v11 == v17)
  {

    sub_25293847C(v38, &qword_27F5404C8, &unk_252E3FD60);
    goto LABEL_51;
  }

LABEL_50:
  v19 = sub_252E37DB4();

  sub_25293847C(v38, &qword_27F5404C8, &unk_252E3FD60);
  if ((v19 & 1) == 0)
  {
LABEL_58:
    if (qword_27F53F540 != -1)
    {
      swift_once();
    }

    v28 = sub_252E36AD4();
    __swift_project_value_buffer(v28, qword_27F544E68);
    sub_252CC4050(0xD000000000000031, 0x8000000252E87860, 0xD000000000000074, 0x8000000252E878A0, 0x6572726F63286E6FLL, 0xEF293A6E6F697463, 110);
    return 0;
  }

LABEL_51:
  v20 = v1;
  sub_252E340E4();
  sub_252AB3FEC(v9, 1, v34);
  (*(v7 + 8))(v9, v6);
  memcpy(v35, v34, sizeof(v35));
  memcpy(v36, v34, sizeof(v36));
  if (sub_252956B94(v36) == 1)
  {
    if (qword_27F53F540 != -1)
    {
      swift_once();
    }

    v21 = sub_252E36AD4();
    __swift_project_value_buffer(v21, qword_27F544E68);
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_252E379F4();

    v34[0] = 0xD000000000000028;
    v34[1] = 0x8000000252E87920;
    v22 = sub_252E340C4();
    MEMORY[0x2530AD570](v22);

    sub_252CC4050(v34[0], v34[1], 0xD000000000000074, 0x8000000252E878A0, 0x6572726F63286E6FLL, 0xEF293A6E6F697463, 116);

    return 0;
  }

  memcpy(v32, (v1 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_currentHomeAutomationIntent), sizeof(v32));
  memcpy((v1 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_currentHomeAutomationIntent), v35, 0x1F8uLL);
  memcpy(v33, v35, sizeof(v33));
  sub_2529353AC(v33, &v31);
  sub_25293847C(v32, &qword_27F5404C8, &unk_252E3FD60);
  v23 = sub_252E34104();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v5, v16, v23);
  (*(v24 + 56))(v5, 0, 1, v23);
  v25 = OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_currentInput;
  swift_beginAccess();
  sub_252B7B518(v5, v20 + v25);
  swift_endAccess();
  *(v20 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_shouldCorrect) = 1;
  if (qword_27F53F540 != -1)
  {
    swift_once();
  }

  v26 = sub_252E36AD4();
  __swift_project_value_buffer(v26, qword_27F544E68);
  sub_252CC3D90(0xD00000000000004CLL, 0x8000000252E87950, 0xD000000000000074, 0x8000000252E878A0);
  sub_25293847C(v35, &qword_27F5404C8, &unk_252E3FD60);
  return 1;
}

uint64_t ControlHomeCorrectionFlow.execute()(uint64_t a1)
{
  v2[857] = v1;
  v2[856] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437A8, &qword_252E4E438);
  v2[858] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437B0, &qword_252E4E440);
  v2[859] = v3;
  v2[860] = *(v3 - 8);
  v2[861] = swift_task_alloc();
  v4 = sub_252E33E14();
  v2[862] = v4;
  v2[863] = *(v4 - 8);
  v2[864] = swift_task_alloc();
  v5 = sub_252E34164();
  v2[865] = v5;
  v2[866] = *(v5 - 8);
  v2[867] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543798, &unk_252E4E410);
  v2[868] = swift_task_alloc();
  v6 = sub_252E34104();
  v2[869] = v6;
  v2[870] = *(v6 - 8);
  v2[871] = swift_task_alloc();
  v2[872] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BDFA88, 0, 0);
}

uint64_t sub_252BDFA88()
{
  v76 = v0;
  if (qword_27F53F540 != -1)
  {
    swift_once();
  }

  v1 = sub_252E36AD4();
  __swift_project_value_buffer(v1, qword_27F544E68);
  v2 = sub_252E36AC4();
  v3 = sub_252E374C4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_252917000, v2, v3, "CorrectionFlow executing...", v4, 2u);
    MEMORY[0x2530AED00](v4, -1, -1);
  }

  v5 = *(v0 + 6856);

  if (!*(v5 + 16))
  {
    v14 = *(*(v0 + 6856) + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_undoRequests);
    if (MEMORY[0x277D84F90] >> 62 && sub_252E378C4())
    {

      v15 = sub_2529FF6A8(MEMORY[0x277D84F90]);
    }

    else
    {

      v15 = MEMORY[0x277D84FA0];
    }

    v16 = *(v0 + 6856);
    v17 = sub_252A565B8(v14, v15, 0, 1, 0, 0, 0, 0);

    if (*(v16 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_shouldCorrect) != 1)
    {
      v28 = *(v0 + 6912);
      v29 = *(v0 + 6904);
      v30 = *(v0 + 6896);
      v31 = *(v0 + 6856);
      v32 = *(v31 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_outputGenerator + 24);
      v33 = *(v31 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_outputGenerator + 32);
      __swift_project_boxed_opaque_existential_1((v31 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_outputGenerator), v32);

      sub_252943C10(sub_252BE327C, v31, v32, v33, v0 + 6568);

      (*(v29 + 104))(v28, *MEMORY[0x277D5BF10], v30);
      v34 = OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_correctionsExitValue;
      swift_beginAccess();
      (*(v29 + 40))(v31 + v34, v28, v30);
      swift_endAccess();
      sub_252929E74(v31 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_outputPublisher, v0 + 6664);
      sub_252938414(v0 + 6568, v0 + 6616, &qword_27F542198, &qword_252E53790);
      v35 = swift_allocObject();
      v36 = *(v0 + 6632);
      v35[1] = *(v0 + 6616);
      v35[2] = v36;
      *(v35 + 41) = *(v0 + 6641);
      sub_252E331C4();
      swift_allocObject();
      *(v0 + 6824) = sub_252E331B4();
      sub_252E33AF4();

      sub_25293847C(v0 + 6568, &qword_27F542198, &qword_252E53790);
      goto LABEL_19;
    }

    v18 = *(v0 + 6856);
    v19 = OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_currentHomeAutomationIntent;
    memcpy((v0 + 6064), (v18 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_currentHomeAutomationIntent), 0x1F8uLL);
    memcpy((v0 + 16), (v18 + v19), 0x1F8uLL);
    if (sub_252956B94((v0 + 16)) == 1)
    {
LABEL_16:
      v8 = *(v0 + 6912);
      v9 = *(v0 + 6904);
      v10 = *(v0 + 6896);
      v11 = *(v0 + 6856);
      v12 = 0x8000000252E879E0;
      v13 = 0xD00000000000002CLL;
      goto LABEL_17;
    }

    v20 = *(v0 + 6960);
    v21 = *(v0 + 6952);
    v22 = *(v0 + 6944);
    v23 = *(v0 + 6856);
    v24 = OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_currentInput;
    swift_beginAccess();
    sub_252938414(v23 + v24, v22, &qword_27F543798, &unk_252E4E410);
    if ((*(v20 + 48))(v22, 1, v21) == 1)
    {
      sub_25293847C(*(v0 + 6944), &qword_27F543798, &unk_252E4E410);
      goto LABEL_16;
    }

    (*(*(v0 + 6960) + 32))(*(v0 + 6976), *(v0 + 6944), *(v0 + 6952));
    memcpy((v0 + 5056), (v0 + 6064), 0x1F8uLL);
    v53 = sub_2529353AC(v0 + 5056, v0 + 4552);
    if (_s22HomeAutomationInternal20IntentSelectionCacheC6sharedACSgvgZ_0(v53))
    {
      v54 = *(v0 + 6936);
      v55 = *(v0 + 6928);
      v56 = *(v0 + 6920);
      sub_252E340E4();
      sub_252D73864(v54);

      (*(v55 + 8))(v54, v56);
    }

    v57 = *(v0 + 6976);
    v58 = *(v0 + 6968);
    v59 = *(v0 + 6960);
    v60 = *(v0 + 6952);
    memcpy(v75, (v0 + 16), 0x1F8uLL);
    (*(v59 + 16))(v58, v57, v60);
    memcpy((v0 + 4048), (v0 + 6064), 0x1F8uLL);
    sub_2529353AC(v0 + 4048, v0 + 1528);
    if (qword_27F53F880 != -1)
    {
      swift_once();
    }

    v61 = qword_27F575DA0;
    v62 = *(qword_27F575DA0 + 16);
    if (v62 < 0xB)
    {
      __break(1u);
    }

    else
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __dst[0] = v61;
      if (!isUniquelyReferenced_nonNull_native || v62 >= *(v61 + 3) >> 1)
      {
        v61 = sub_2529F8F68(isUniquelyReferenced_nonNull_native, v62 + 1, 1, v61);
        __dst[0] = v61;
      }

      sub_252B7DA94();
      if (qword_27F53F430 == -1)
      {
        goto LABEL_37;
      }
    }

    swift_once();
LABEL_37:
    v64 = qword_27F575A98;
    v65 = qword_27F53F218;

    if (v65 != -1)
    {
      swift_once();
    }

    v66 = qword_27F5753E0;
    v67 = qword_27F53F8A0;

    if (v67 != -1)
    {
      swift_once();
    }

    v68 = *(v0 + 6968);
    v69 = *(v0 + 6960);
    v72 = *(v0 + 6952);
    v73 = *(v0 + 6976);
    v70 = qword_27F575DC0;
    type metadata accessor for IntentSelectionFlow();
    swift_allocObject();

    *(v0 + 6840) = sub_252D3FCBC(v75, v68, v64, v66, v70, v61);
    sub_252BE3234(&qword_27F543808, type metadata accessor for IntentSelectionFlow, protocol conformance descriptor for IntentSelectionFlow);

    sub_252E33AC4();

    sub_25293847C(v0 + 6064, &qword_27F5404C8, &unk_252E3FD60);
    (*(v69 + 8))(v73, v72);

    goto LABEL_19;
  }

  if (*(v5 + 16) != 1)
  {
LABEL_18:
    sub_252E33B24();
    goto LABEL_19;
  }

  v6 = *(v0 + 6856);
  v7 = OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_currentHomeAutomationIntent;
  memcpy((v0 + 1024), (v6 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_currentHomeAutomationIntent), 0x1F8uLL);
  memcpy((v0 + 520), (v6 + v7), 0x1F8uLL);
  if (sub_252956B94((v0 + 520)) == 1 || (memcpy((v0 + 2032), (*(v0 + 6856) + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_previousHomeAutomationIntent), 0x1F8uLL), sub_252956B94((v0 + 2032)) == 1))
  {
    v8 = *(v0 + 6912);
    v9 = *(v0 + 6904);
    v10 = *(v0 + 6896);
    v11 = *(v0 + 6856);
    v12 = 0x8000000252E879A0;
    v13 = 0xD00000000000003BLL;
LABEL_17:
    *v8 = v13;
    v8[1] = v12;
    (*(v9 + 104))(v8, *MEMORY[0x277D5BF08], v10);
    v25 = OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_correctionsExitValue;
    swift_beginAccess();
    (*(v9 + 40))(v11 + v25, v8, v10);
    swift_endAccess();
    goto LABEL_18;
  }

  memcpy(__dst, (v0 + 2032), sizeof(__dst));
  memcpy(v75, (v0 + 520), 0x1F8uLL);
  memcpy((v0 + 2536), (v0 + 1024), 0x1F8uLL);
  sub_2529353AC(v0 + 2536, v0 + 3040);
  sub_252A18750(v75, v0 + 5560);
  sub_2529353AC(v0 + 5560, v0 + 3544);
  v37 = sub_252E36AC4();
  v38 = sub_252E374C4();
  sub_252935408(v0 + 5560);
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    __dst[0] = v40;
    *v39 = 136315138;
    memcpy(v75, (v0 + 5560), 0x1F8uLL);
    v41 = HomeAutomationIntent.description.getter();
    v43 = sub_252BE2CE0(v41, v42, __dst);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_252917000, v37, v38, "CorrectionFlow - created correction command, will send to RCH flow! \n%s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x2530AED00](v40, -1, -1);
    MEMORY[0x2530AED00](v39, -1, -1);
  }

  v44 = *(v0 + 6864);
  type metadata accessor for ControlHomeRCHStrategyAsync();
  *(v0 + 6832) = swift_allocObject();
  sub_252B79980((v0 + 5560), v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437D0, &qword_252E4E458);
  swift_allocObject();
  sub_252E335D4();
  sub_252BE3234(&qword_27F5437D8, type metadata accessor for ControlHomeRCHStrategyAsync, protocol conformance descriptor for ControlHomeRCHStrategyAsync);
  sub_252E33A44();
  if (qword_27F53F720 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 6904);
  v46 = *(v0 + 6896);
  v47 = *(v0 + 6888);
  v48 = *(v0 + 6880);
  v49 = *(v0 + 6872);
  v50 = *(v0 + 6856);
  v71 = *(v0 + 6912);
  memcpy(v75, (v0 + 5560), 0x1F8uLL);
  v51 = sub_252AEFEB0();
  sub_252E33A34();

  (*(v48 + 8))(v47, v49);
  (*(v45 + 104))(v71, *MEMORY[0x277D5BF10], v46);
  v52 = OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_correctionsExitValue;
  swift_beginAccess();
  (*(v45 + 40))(v50 + v52, v71, v46);
  swift_endAccess();
  sub_252E33B14();

  sub_252935408(v0 + 5560);
  sub_25293847C(v0 + 1024, &qword_27F5404C8, &unk_252E3FD60);
LABEL_19:

  v26 = *(v0 + 8);

  return v26();
}

void sub_252BE0764(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  *(v1 + 16) = 1;
  memcpy(__srca, __src, sizeof(__srca));
  GEOLocationCoordinate2DMake();
  memcpy(v15, (v1 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_currentHomeAutomationIntent), sizeof(v15));
  memcpy((v1 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_currentHomeAutomationIntent), __srca, 0x1F8uLL);
  sub_2529353AC(__dst, v12);
  sub_25293847C(v15, &qword_27F5404C8, &unk_252E3FD60);
  if (qword_27F53F540 != -1)
  {
    swift_once();
  }

  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_27F544E68);
  sub_2529353AC(__dst, v12);
  v4 = sub_252E36AC4();
  v5 = sub_252E374C4();
  sub_252935408(__dst);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    memcpy(v12, __dst, sizeof(v12));
    v8 = HomeAutomationIntent.description.getter();
    v10 = sub_252BE2CE0(v8, v9, &v11);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_252917000, v4, v5, "CorrectionFlow - Best HomeIntent for new request: \n%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2530AED00](v7, -1, -1);
    MEMORY[0x2530AED00](v6, -1, -1);
  }
}

uint64_t sub_252BE0950(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return MEMORY[0x2822009F8](sub_252BE0970, 0, 0);
}

uint64_t sub_252BE0970()
{
  sub_252938414(*(v0 + 96), v0 + 16, &qword_27F542198, &qword_252E53790);
  if (*(v0 + 56) == 1)
  {
    v1 = *(v0 + 16);
    if (qword_27F53F540 != -1)
    {
      swift_once();
    }

    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_27F544E68);
    sub_252E379F4();
    *(v0 + 64) = 0;
    *(v0 + 72) = 0xE000000000000000;
    MEMORY[0x2530AD570](0xD000000000000030, 0x8000000252E87BE0);
    *(v0 + 80) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    sub_252CC4050(*(v0 + 64), *(v0 + 72), 0xD000000000000074, 0x8000000252E878A0, 0x2865747563657865, 0xE900000000000029, 181);

    sub_252E33964();
    sub_252E33954();
  }

  else
  {
    sub_252927BEC((v0 + 16), *(v0 + 88));
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t ControlHomeCorrectionFlow.deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_correctionsExitValue;
  v2 = sub_252E33E14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  memcpy(v4, (v0 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_previousHomeAutomationIntent), sizeof(v4));
  sub_25293847C(v4, &qword_27F5404C8, &unk_252E3FD60);
  sub_25293847C(v0 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_currentInput, &qword_27F543798, &unk_252E4E410);
  memcpy(__dst, (v0 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_currentHomeAutomationIntent), sizeof(__dst));
  sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_outputPublisher));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_outputGenerator));
  return v0;
}

uint64_t ControlHomeCorrectionFlow.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_correctionsExitValue;
  v2 = sub_252E33E14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  memcpy(v4, (v0 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_previousHomeAutomationIntent), sizeof(v4));
  sub_25293847C(v4, &qword_27F5404C8, &unk_252E3FD60);
  sub_25293847C(v0 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_currentInput, &qword_27F543798, &unk_252E4E410);
  memcpy(__dst, (v0 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_currentHomeAutomationIntent), sizeof(__dst));
  sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_outputPublisher));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_outputGenerator));
  return swift_deallocClassInstance();
}

uint64_t sub_252BE0E14(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25293B808;

  return ControlHomeCorrectionFlow.execute()(a1);
}

uint64_t sub_252BE0EBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = sub_252E33E14();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t sub_252BE0F4C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = sub_252E33E14();
  (*(*(v5 - 8) + 40))(v2 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t sub_252BE1038(const void *a1, char *a2, char *a3)
{
  v4 = v3;
  v8 = sub_252E32E84();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v61 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v60 = &v59 - v12;
  memcpy(v68, a1, sizeof(v68));
  *(v4 + 16) = 0;
  v13 = v4 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_correctionsExitValue;
  strcpy((v4 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_correctionsExitValue), "Initial value");
  *(v13 + 14) = -4864;
  v14 = *MEMORY[0x277D5BF08];
  v15 = sub_252E33E14();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  v16 = OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_previousHomeAutomationIntent;
  sub_25293DEE0(v69);
  memcpy((v4 + v16), v69, 0x1F8uLL);
  v17 = OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_currentInput;
  v18 = sub_252E34104();
  (*(*(v18 - 8) + 56))(v4 + v17, 1, 1, v18);
  memcpy((v4 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_currentHomeAutomationIntent), v69, 0x1F8uLL);
  *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_shouldCorrect) = 0;
  memcpy(v70, v68, sizeof(v70));
  GEOLocationCoordinate2DMake();
  memcpy(v71, (v4 + v16), 0x1F8uLL);
  memcpy((v4 + v16), v70, 0x1F8uLL);
  sub_2529353AC(v68, v67);
  sub_25293847C(v71, &qword_27F5404C8, &unk_252E3FD60);
  v62 = v9;
  v19 = *(v9 + 16);
  v20 = a2;
  v19(v4 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_undoTriggerID, a2, v8);
  v64 = a3;
  v65 = v8;
  v19(v4 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_undoHomeID, a3, v8);
  if (qword_27F53F540 != -1)
  {
    swift_once();
  }

  v21 = sub_252E36AD4();
  __swift_project_value_buffer(v21, qword_27F544E68);
  sub_2529353AC(v68, v67);
  v22 = sub_252E36AC4();
  v23 = sub_252E374C4();
  sub_252935408(v68);
  v24 = os_log_type_enabled(v22, v23);
  v63 = v20;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v66[0] = v26;
    *v25 = 136315138;
    memcpy(v67, v68, sizeof(v67));
    v27 = HomeAutomationIntent.description.getter();
    v59 = v19;
    v29 = v28;
    sub_252935408(v68);
    v30 = sub_252BE2CE0(v27, v29, v66);
    v19 = v59;

    *(v25 + 4) = v30;
    _os_log_impl(&dword_252917000, v22, v23, "CorrectionFlow - init stored prevHomeAutomationIntent %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x2530AED00](v26, -1, -1);
    v20 = v63;
    MEMORY[0x2530AED00](v25, -1, -1);
  }

  else
  {

    sub_252935408(v68);
  }

  v32 = v60;
  v31 = v61;
  v33 = v65;
  v19(v60, v20, v65);
  v19(v31, v64, v33);
  v34 = sub_252E36AC4();
  v35 = sub_252E374C4();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v67 = v61;
    *v36 = 136315394;
    LODWORD(v60) = v35;
    v37 = MEMORY[0x2530A92F0]();
    v39 = v38;
    v40 = *(v62 + 8);
    v40(v32, v65);
    v41 = sub_252BE2CE0(v37, v39, v67);

    *(v36 + 4) = v41;
    *(v36 + 12) = 2080;
    v43 = MEMORY[0x2530A92F0](v42);
    v45 = v44;
    v40(v31, v65);
    v46 = sub_252BE2CE0(v43, v45, v67);

    *(v36 + 14) = v46;
    _os_log_impl(&dword_252917000, v34, v60, "CorrectionFlow - init stored \n undoTrigger %s\n undoHomeID %s", v36, 0x16u);
    v47 = v61;
    swift_arrayDestroy();
    v20 = v63;
    MEMORY[0x2530AED00](v47, -1, -1);
    v48 = v36;
    v33 = v65;
    MEMORY[0x2530AED00](v48, -1, -1);
  }

  else
  {

    v40 = *(v62 + 8);
    v40(v31, v33);
    v49 = (v40)(v32, v33);
  }

  v50 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v49);
  sub_252929E74((v50 + 96), v67);

  v51 = sub_252927BEC(v67, v4 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_outputPublisher);
  v52 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v51);
  swift_beginAccess();
  v53 = *(v52 + 22);

  *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_catProvider) = v53;
  v55 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v54);
  sub_252929E74((v55 + 136), v67);

  v56 = sub_252927BEC(v67, v4 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_outputGenerator);
  v57 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v56) + 29);

  *&v67[24] = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  *&v67[32] = &off_2864BA730;
  *v67 = v57;
  v40(v64, v33);
  v40(v20, v33);
  sub_252927BEC(v67, v4 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_patternProvider);
  return v4;
}

uint64_t AutomateHomeCorrectionFlow.on(correction:)()
{
  if (qword_27F53F540 != -1)
  {
    swift_once();
  }

  v0 = sub_252E36AD4();
  __swift_project_value_buffer(v0, qword_27F544E68);
  sub_252CC4050(0xD000000000000031, 0x8000000252E87860, 0xD000000000000074, 0x8000000252E878A0, 0x6572726F63286E6FLL, 0xEF293A6E6F697463, 279);
  return 0;
}

uint64_t AutomateHomeCorrectionFlow.execute()(uint64_t a1)
{
  v2[39] = a1;
  v2[40] = v1;
  v3 = sub_252E32E84();
  v2[41] = v3;
  v2[42] = *(v3 - 8);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BE19B4, 0, 0);
}

uint64_t sub_252BE19B4(uint64_t a1)
{
  if (!*(*(v1 + 40) + 16))
  {
    v2 = type metadata accessor for HomeStore(0);
    v3 = static HomeStore.shared.getter(v2);
    v4 = sub_2529D8DC0();

    if (v4 >> 62)
    {
      goto LABEL_42;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v6 = 0;
      v52 = OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_undoHomeID;
      v54 = *(v1 + 40);
      v7 = *(v1 + 42);
      v56 = v4 & 0xFFFFFFFFFFFFFF8;
      v58 = v4 & 0xC000000000000001;
      v61 = (v7 + 16);
      v62 = v1;
      v63 = (v7 + 8);
      while (!v58)
      {
        if (v6 >= *(v56 + 16))
        {
          __break(1u);
          goto LABEL_40;
        }

        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_17;
        }

LABEL_8:
        v64 = v9;
        v10 = v4;
        v11 = *(v1 + 46);
        v12 = *(v1 + 41);
        v67 = v8;
        v13 = MEMORY[0x2530A92F0]();
        v15 = v14;
        v60 = *v61;
        v16 = (*v61)(v11, v54 + v52, v12);
        v17 = MEMORY[0x2530A92F0](v16);
        v19 = v18;
        v1 = *v63;
        (*v63)(v11, v12);
        if (v13 == v17 && v15 == v19)
        {
          goto LABEL_18;
        }

        v21 = sub_252E37DB4();

        v4 = v10;
        if (v21)
        {
          v22 = v1;
          goto LABEL_20;
        }

        ++v6;
        v1 = v62;
        if (v64 == i)
        {
          goto LABEL_46;
        }
      }

      v8 = MEMORY[0x2530ADF00](v6, v4);
      v9 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_8;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      v22 = v1;

LABEL_20:
      v1 = v62;

      v23 = *&v67[OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate];
      *(v62 + 47) = v23;
      v24 = v23;

      v50 = v24;
      v25 = [v24 triggers];
      sub_252BE3388();
      v4 = sub_252E37264();

      if (v4 >> 62)
      {
        v26 = sub_252E378C4();
        if (v26)
        {
          goto LABEL_22;
        }

LABEL_45:

        break;
      }

      v26 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v26)
      {
        goto LABEL_45;
      }

LABEL_22:
      v27 = 0;
      v53 = OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_undoTriggerID;
      v55 = *(v62 + 40);
      v65 = v4 & 0xC000000000000001;
      v57 = v4;
      v59 = v4 & 0xFFFFFFFFFFFFFF8;
      v51 = v26;
      while (1)
      {
        if (v65)
        {
          v28 = MEMORY[0x2530ADF00](v27, v4);
        }

        else
        {
          if (v27 >= *(v59 + 16))
          {
            goto LABEL_41;
          }

          v28 = *(v4 + 8 * v27 + 32);
        }

        *(v1 + 48) = v28;
        v29 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        v31 = *(v1 + 44);
        v30 = *(v1 + 45);
        v32 = *(v1 + 41);
        v67 = v28;
        v33 = [v28 uniqueIdentifier];
        sub_252E32E64();

        v34 = MEMORY[0x2530A92F0]();
        v36 = v35;
        v22(v30, v32);
        v37 = v60(v31, v55 + v53, v32);
        v38 = MEMORY[0x2530A92F0](v37);
        v40 = v39;
        v22(v31, v32);
        if (v34 == v38 && v36 == v40)
        {

LABEL_34:
          v66 = v22;

          if (qword_27F53F540 != -1)
          {
            swift_once();
          }

          v42 = *(v62 + 43);
          v43 = *(v62 + 41);
          v44 = sub_252E36AD4();
          *(v62 + 49) = __swift_project_value_buffer(v44, qword_27F544E68);
          sub_252E379F4();

          v45 = [v67 uniqueIdentifier];
          sub_252E32E64();

          sub_252BE3234(&qword_27F5404A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v46 = sub_252E37D94();
          MEMORY[0x2530AD570](v46);

          v66(v42, v43);
          MEMORY[0x2530AD570](41, 0xE100000000000000);
          sub_252CC3D90(0xD000000000000024, 0x8000000252E87A10, 0xD000000000000074, 0x8000000252E878A0);

          *(v62 + 2) = v62;
          *(v62 + 3) = sub_252BE20D4;
          v47 = swift_continuation_init();
          *(v62 + 17) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543D70, &unk_252E51750);
          *(v62 + 10) = MEMORY[0x277D85DD0];
          *(v62 + 11) = 1107296256;
          *(v62 + 12) = sub_252BE25A0;
          *(v62 + 13) = &block_descriptor_16;
          *(v62 + 14) = v47;
          [v50 removeTrigger:v67 completionHandler:v62 + 80];

          return MEMORY[0x282200938](v62 + 16);
        }

        v41 = sub_252E37DB4();

        v4 = v57;
        if (v41)
        {
          goto LABEL_34;
        }

        ++v27;
        v1 = v62;
        if (v29 == v51)
        {
          goto LABEL_45;
        }
      }

LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      ;
    }

LABEL_46:
  }

  sub_252E33B24();

  v48 = *(v1 + 1);

  return v48();
}

uint64_t sub_252BE20D4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 400) = v1;
  if (v1)
  {
    v2 = sub_252BE23F4;
  }

  else
  {
    v2 = sub_252BE21E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252BE21E4()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 376);
  v3 = *(v0 + 320);
  sub_252CC3D90(0xD000000000000016, 0x8000000252E87A90, 0xD000000000000074, 0x8000000252E878A0);
  v4 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_outputGenerator + 24);
  v5 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_outputGenerator + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_outputGenerator), v4);

  sub_252943C10(sub_252BE3400, v3, v4, v5, v0 + 144);

  sub_252929E74(v3 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_outputPublisher, v0 + 240);
  sub_252938414(v0 + 144, v0 + 192, &qword_27F542198, &qword_252E53790);
  v6 = swift_allocObject();
  v7 = *(v0 + 208);
  v6[1] = *(v0 + 192);
  v6[2] = v7;
  *(v6 + 41) = *(v0 + 217);
  sub_252E331C4();
  swift_allocObject();
  *(v0 + 304) = sub_252E331B4();
  sub_252E33AF4();

  sub_25293847C(v0 + 144, &qword_27F542198, &qword_252E53790);

  v8 = *(v0 + 8);

  return v8();
}