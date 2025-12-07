uint64_t sub_24A60FB04(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = type metadata accessor for FMFindingSession.Error(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_storeEnumTagMultiPayload();
    sub_24A60BC20(v5);
    swift_unknownObjectRelease();
    Strong = sub_24A61B070(v5, type metadata accessor for FMFindingSession.Error);
  }

  return a2(Strong);
}

uint64_t sub_24A60FBF0()
{
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v0 = sub_24A62E314();
  sub_24A506EB8(v0, qword_27EF5C118);

  v1 = sub_24A62E2F4();
  v2 = sub_24A62EF64();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v11[0] = v4;
    *v3 = 136446210;
    v5 = FindingExperienceType.description.getter();
    v7 = sub_24A509BA8(v5, v6, v11);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_24A503000, v1, v2, "🧭 FMFindingSession: Starting new session with %{public}s", v3, 0xCu);
    sub_24A508C54(v4);
    MEMORY[0x24C21BBE0](v4, -1, -1);
    MEMORY[0x24C21BBE0](v3, -1, -1);
  }

  sub_24A60F570(v11);
  v8 = v12;
  v9 = v13;
  sub_24A50A204(v11, v12);
  (*(v9 + 56))(v8, v9);
  return sub_24A508C54(v11);
}

uint64_t sub_24A60FDA0()
{
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v0 = sub_24A62E314();
  sub_24A506EB8(v0, qword_27EF5C118);
  v1 = sub_24A62E2F4();
  v2 = sub_24A62EF64();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24A503000, v1, v2, "🧭 FMFindingSession: Stopping finding session", v3, 2u);
    MEMORY[0x24C21BBE0](v3, -1, -1);
  }

  sub_24A60F570(v7);
  v4 = v8;
  v5 = v9;
  sub_24A50A204(v7, v8);
  (*(v5 + 64))(v4, v5);
  return sub_24A508C54(v7);
}

uint64_t sub_24A60FEC8(void *a1)
{
  v2 = type metadata accessor for FMFindingSessionState(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v26[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v26[-v6];
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v8 = sub_24A62E314();
  sub_24A506EB8(v8, qword_27EF5C118);
  sub_24A508AE4(a1, v32);
  v9 = sub_24A62E2F4();
  v10 = sub_24A62EF64();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31 = v12;
    *v11 = 136315138;
    sub_24A508AE4(v32, v30);
    sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
    v13 = sub_24A62EC44();
    v15 = v14;
    sub_24A508C54(v32);
    v16 = sub_24A509BA8(v13, v15, &v31);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_24A503000, v9, v10, "🧭 FMFindingSession: Selecting new part: %s", v11, 0xCu);
    sub_24A508C54(v12);
    MEMORY[0x24C21BBE0](v12, -1, -1);
    MEMORY[0x24C21BBE0](v11, -1, -1);
  }

  else
  {

    sub_24A508C54(v32);
  }

  v17 = v29;
  v28 = *(v29 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_stateUpdateLock);
  os_unfair_lock_lock(v28 + 4);
  v18 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  sub_24A61C0D4(v17 + v18, v4, type metadata accessor for FMFindingSessionState);
  v27 = *v4;
  v19 = *(v4 + 1);
  sub_24A50D63C((v4 + 12), (v7 + 24), &unk_27EF522E0, qword_24A637660);
  v20 = a1[3];
  v21 = a1[4];
  sub_24A50A204(a1, v20);
  v22 = *(v21 + 16);

  v22(v20, v21);
  v23 = *(v4 + 8);
  v24 = *(v4 + 2);

  sub_24A61B070(v4, type metadata accessor for FMFindingSessionState);
  *v7 = v27;
  *(v7 + 8) = v23;
  *(v7 + 1) = v19;
  *(v7 + 2) = v24;
  os_unfair_lock_unlock(v28 + 4);
  sub_24A61C0D4(v7, v4, type metadata accessor for FMFindingSessionState);
  sub_24A60F438(v4);
  return sub_24A61B070(v7, type metadata accessor for FMFindingSessionState);
}

uint64_t sub_24A610228()
{
  v1 = v0;
  v2 = type metadata accessor for FMFindingSessionState(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v8 = sub_24A62E314();
  sub_24A506EB8(v8, qword_27EF5C118);
  v9 = sub_24A62E2F4();
  v10 = sub_24A62EF64();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24A503000, v9, v10, "🧭 FMFindingSession: Reset", v11, 2u);
    MEMORY[0x24C21BBE0](v11, -1, -1);
  }

  v12 = *(v1 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_stateUpdateLock);
  os_unfair_lock_lock(v12 + 4);
  v13 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  sub_24A61C0D4(v1 + v13, v4, type metadata accessor for FMFindingSessionState);
  sub_24A5ACE64(v7);
  sub_24A61B070(v4, type metadata accessor for FMFindingSessionState);
  os_unfair_lock_unlock(v12 + 4);
  sub_24A61C0D4(v7, v4, type metadata accessor for FMFindingSessionState);
  sub_24A60F438(v4);
  sub_24A6104A8();
  return sub_24A61B070(v7, type metadata accessor for FMFindingSessionState);
}

uint64_t sub_24A610434(uint64_t a1)
{
  sub_24A60F570(v5);
  v2 = v6;
  v3 = v7;
  sub_24A50A204(v5, v6);
  (*(v3 + 80))(a1, v2, v3);
  return sub_24A508C54(v5);
}

void sub_24A6104A8()
{
  v1 = sub_24A62E214();
  v214 = *(v1 - 8);
  v215 = v1;
  MEMORY[0x28223BE20](v1);
  v196 = &v190[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v213 = &v190[-v4];
  MEMORY[0x28223BE20](v5);
  v7 = &v190[-v6];
  MEMORY[0x28223BE20](v8);
  v10 = &v190[-v9];
  v11 = type metadata accessor for FMFindingSessionState(0);
  MEMORY[0x28223BE20](v11);
  i = &v190[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v192 = &v190[-v14];
  MEMORY[0x28223BE20](v15);
  v198 = &v190[-v16];
  MEMORY[0x28223BE20](v17);
  v193 = &v190[-v18];
  MEMORY[0x28223BE20](v19);
  v195 = &v190[-v20];
  MEMORY[0x28223BE20](v21);
  v202 = &v190[-v22];
  MEMORY[0x28223BE20](v23);
  v210 = &v190[-v24];
  MEMORY[0x28223BE20](v25);
  v209 = &v190[-v26];
  MEMORY[0x28223BE20](v27);
  v208 = &v190[-v28];
  MEMORY[0x28223BE20](v29);
  v31 = &v190[-v30];
  MEMORY[0x28223BE20](v32);
  v34 = &v190[-v33];
  MEMORY[0x28223BE20](v35);
  v37 = &v190[-v36];
  v204 = v0;
  v38 = v0 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  sub_24A61C0D4(v38, v37, type metadata accessor for FMFindingSessionState);
  v39 = *(v37 + 64);
  if (!*(v39 + 16) || (v40 = sub_24A515AC8(v37 + *(v11 + 36)), (v41 & 1) == 0))
  {
    v189 = 0;
    v187 = 38;
LABEL_132:
    v188 = v187;
    sub_24A62F444();
    __break(1u);
    goto LABEL_133;
  }

  v42 = *(v39 + 56) + 104 * v40;
  v44 = *(v42 + 16);
  v43 = *(v42 + 32);
  v226[0] = *v42;
  v226[1] = v44;
  v226[2] = v43;
  v45 = *(v42 + 48);
  v46 = *(v42 + 64);
  v47 = *(v42 + 80);
  *&v227[13] = *(v42 + 93);
  v226[4] = v46;
  *v227 = v47;
  v226[3] = v45;
  sub_24A508CE4(v226, v223);
  sub_24A61B070(v37, type metadata accessor for FMFindingSessionState);
  v48 = 0x27EF4E000uLL;
  v211 = v7;
  v212 = v31;
  if ((*&v227[16] | 0x2000000u) >> 25 == 3)
  {
    goto LABEL_4;
  }

  if (v227[18] < 3u)
  {
    goto LABEL_6;
  }

  if (v227[18] != 3)
  {
LABEL_4:
    sub_24A517ABC(v226);
LABEL_6:
    v37 = 0;
    goto LABEL_7;
  }

  sub_24A61C0D4(v38, v34, type metadata accessor for FMFindingSessionState);
  v140 = *(v34 + 8);
  v37 = *(v140 + 16);
  if (v37)
  {
    v141 = sub_24A5E4FC4(*(v140 + 16), 0);
    v207 = sub_24A5CE86C(&v216, (v141 + 4), v37, v140);
    v203 = *(&v216 + 1);
    v31 = v216;
    v201 = v217;
    v199 = v218;
    v197 = v219;
    swift_bridgeObjectRetain_n();
    sub_24A55B6D4(v31);
    if (v207 != v37)
    {
      goto LABEL_127;
    }

    v31 = v212;
  }

  else
  {
LABEL_116:

    v141 = MEMORY[0x277D84F90];
  }

  *&v216 = v141;
  v37 = 0;
  sub_24A5CDB08(&v216);

  v179 = v216;
  MEMORY[0x28223BE20](v178);
  v188 = v34;
  sub_24A60DCA0(sub_24A61C1AC, v179, &v220);

  sub_24A61B070(v34, type metadata accessor for FMFindingSessionState);
  if (v221)
  {
    sub_24A508CA0(&v220, v223);
    if (*(v48 + 2464) == -1)
    {
      goto LABEL_119;
    }

    goto LABEL_128;
  }

  sub_24A50D6A4(&v220, &unk_27EF522E0, qword_24A637660);
LABEL_7:
  while (1)
  {
    v205 = v11;
    sub_24A61C0D4(v38, v31, type metadata accessor for FMFindingSessionState);
    v49 = *(v31 + 8);
    v31 = *(v49 + 16);
    v206 = v38;
    if (!v31)
    {
      break;
    }

    v50 = v37;
    v51 = sub_24A5E4FC4(v31, 0);
    v207 = sub_24A5CE86C(v223, (v51 + 4), v31, v49);
    v52 = v223[0];
    v38 = v223[1];
    v37 = v223[2];
    v11 = v224;
    v203 = v225;
    swift_bridgeObjectRetain_n();
    sub_24A55B6D4(v52);
    if (v207 == v31)
    {
      v38 = v206;
      v37 = v50;
      goto LABEL_11;
    }

    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    swift_once();
LABEL_119:
    v180 = sub_24A62E314();
    sub_24A506EB8(v180, qword_27EF5C118);
    v181 = sub_24A62E2F4();
    v182 = sub_24A62EF64();
    if (os_log_type_enabled(v181, v182))
    {
      v183 = v37;
      v184 = v31;
      v185 = swift_slowAlloc();
      *v185 = 0;
      _os_log_impl(&dword_24A503000, v181, v182, "🧭 FMFindingSession: Automatically transitioning to next findable part.", v185, 2u);
      v186 = v185;
      v31 = v184;
      v37 = v183;
      MEMORY[0x24C21BBE0](v186, -1, -1);
    }

    sub_24A60FEC8(v223);
    sub_24A517ABC(v226);
    sub_24A508C54(v223);
  }

  v51 = MEMORY[0x277D84F90];
LABEL_11:
  v223[0] = v51;
  sub_24A5CDB08(v223);
  v11 = v214;
  v31 = v215;
  if (v37)
  {
LABEL_133:

    __break(1u);

    __break(1u);
    return;
  }

  MEMORY[0x28223BE20](v53);
  v54 = v212;
  v188 = v212;
  v56 = sub_24A60E2E4(sub_24A61C2B4, &v190[-32], v55, sub_24A508CA0, sub_24A58D908);
  sub_24A61B070(v54, type metadata accessor for FMFindingSessionState);
  v57 = *(v56 + 2);
  v58 = MEMORY[0x277D84F90];
  v201 = v56;
  if (v57)
  {
    *&v220 = MEMORY[0x277D84F90];
    sub_24A58D8A8(0, v57, 0);
    v58 = v220;
    v59 = v56 + 32;
    do
    {
      sub_24A508AE4(v59, v223);
      v60 = v224;
      v61 = v225;
      sub_24A50A204(v223, v224);
      (*(v61 + 16))(v60, v61);
      sub_24A508C54(v223);
      *&v220 = v58;
      v63 = *(v58 + 16);
      v62 = *(v58 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_24A58D8A8((v62 > 1), v63 + 1, 1);
        v58 = v220;
      }

      *(v58 + 16) = v63 + 1;
      v11 = v214;
      v31 = v215;
      (*(v214 + 32))(v58 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v214 + 72) * v63, v10, v215);
      v59 += 40;
      --v57;
    }

    while (v57);
    v38 = v206;
  }

  v10 = sub_24A61B0D0(v58);

  v48 = v205;
  if (qword_27EF4E9A0 != -1)
  {
    goto LABEL_125;
  }

LABEL_19:
  v64 = sub_24A62E314();
  v65 = sub_24A506EB8(v64, qword_27EF5C118);

  v197 = v65;
  v66 = sub_24A62E2F4();
  v37 = sub_24A62EF34();

  if (os_log_type_enabled(v66, v37))
  {
    v212 = v10;
    v67 = swift_slowAlloc();
    v207 = swift_slowAlloc();
    *&v216 = v207;
    *v67 = 136315394;
    v68 = v208;
    sub_24A61C0D4(v38, v208, type metadata accessor for FMFindingSessionState);
    v69 = *(v68 + 1);
    if (!*(v69 + 16))
    {
      goto LABEL_131;
    }

    v70 = sub_24A515AC8(&v68[*(v48 + 36)]);
    if ((v71 & 1) == 0)
    {
      goto LABEL_131;
    }

    sub_24A508AE4(*(v69 + 56) + 40 * v70, &v220);
    sub_24A508CA0(&v220, v223);
    sub_24A61B070(v68, type metadata accessor for FMFindingSessionState);
    sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
    v72 = sub_24A62EC44();
    v74 = sub_24A509BA8(v72, v73, &v216);

    *(v67 + 4) = v74;
    *(v67 + 12) = 2080;
    v75 = v206;
    v76 = v209;
    sub_24A61C0D4(v206, v209, type metadata accessor for FMFindingSessionState);
    v77 = v48;
    v78 = sub_24A5ABC04();
    v80 = v79;
    sub_24A61B070(v76, type metadata accessor for FMFindingSessionState);
    v81 = v78;
    v48 = v77;
    v82 = sub_24A509BA8(v81, v80, &v216);

    *(v67 + 14) = v82;
    _os_log_impl(&dword_24A503000, v66, v37, "FMFindingSession currentFindable: %s and name: %s", v67, 0x16u);
    v83 = v207;
    swift_arrayDestroy();
    v38 = v75;
    MEMORY[0x24C21BBE0](v83, -1, -1);
    MEMORY[0x24C21BBE0](v67, -1, -1);

    v11 = v214;
    v31 = v215;
    v10 = v212;
  }

  else
  {
  }

  v37 = v210;
  sub_24A61C0D4(v38, v210, type metadata accessor for FMFindingSessionState);
  v84 = *(v37 + 8);
  if (!*(v84 + 16))
  {
    goto LABEL_131;
  }

  v85 = sub_24A515AC8(v37 + *(v48 + 36));
  if ((v86 & 1) == 0)
  {
    goto LABEL_131;
  }

  sub_24A508AE4(*(v84 + 56) + 40 * v85, &v220);
  sub_24A508CA0(&v220, v223);
  sub_24A61B070(v37, type metadata accessor for FMFindingSessionState);
  v87 = v224;
  v88 = v225;
  sub_24A50A204(v223, v224);
  v89 = v211;
  (*(v88 + 16))(v87, v88);
  v90 = sub_24A614790(v89, v10);
  v91 = v10;
  v10 = (v11 + 8);
  v92 = *(v11 + 8);
  v92(v89, v31);
  sub_24A508C54(v223);
  v48 = v206;
  sub_24A50D63C(v206 + 24, &v220, &unk_27EF522E0, qword_24A637660);
  if (!v221)
  {

    sub_24A50D6A4(&v220, &unk_27EF522E0, qword_24A637660);
    if (v90)
    {
      return;
    }

    v116 = sub_24A62E2F4();
    v117 = sub_24A62EF64();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      *v118 = 0;
      _os_log_impl(&dword_24A503000, v116, v117, "🧭 FMFindingSession: Trying to find a findable that ranges and is in the same group as seelected part.", v118, 2u);
      MEMORY[0x24C21BBE0](v118, -1, -1);
    }

    v37 = i;
    sub_24A61C0D4(v206, i, type metadata accessor for FMFindingSessionState);
    v119 = *(v37 + 8);
    if (*(v119 + 16))
    {
      v120 = sub_24A515AC8(v37 + *(v205 + 36));
      if (v121)
      {
        sub_24A508AE4(*(v119 + 56) + 40 * v120, &v220);
        sub_24A508CA0(&v220, v223);
        sub_24A61B070(v37, type metadata accessor for FMFindingSessionState);
        sub_24A611E34(v223);
        goto LABEL_113;
      }
    }

    goto LABEL_131;
  }

  v191 = v90;
  sub_24A508CA0(&v220, v223);
  v212 = v92;
  v93 = v224;
  v94 = v225;
  sub_24A50A204(v223, v224);
  (*(v94 + 16))(v93, v94);
  v194 = sub_24A614790(v89, v91);

  (v212)(v89, v31);
  v95 = *(v48 + 16);
  v96 = (v95 + 56);
  v97 = 1 << *(v95 + 32);
  if (v97 < 64)
  {
    v98 = ~(-1 << v97);
  }

  else
  {
    v98 = -1;
  }

  v99 = v11;
  v11 = v98 & *(v95 + 56);
  v37 = (v97 + 63) >> 6;
  v209 = (v99 + 16);
  v203 = v95;
  swift_bridgeObjectRetain_n();
  v100 = 0;
  v210 = v10;
  v38 = v48;
  v199 = v37;
  for (i = v96; ; v96 = i)
  {
    if (!v11)
    {
      v31 = v205;
      while (1)
      {
        v101 = v100 + 1;
        if (__OFADD__(v100, 1))
        {
          break;
        }

        if (v101 >= v37)
        {

          v122 = 2;
          v123 = v215;
          goto LABEL_55;
        }

        v11 = *&v96[8 * v101];
        ++v100;
        if (v11)
        {
          v100 = v101;
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      swift_once();
      goto LABEL_19;
    }

    v31 = v205;
LABEL_39:
    v102 = v202;
    v10 = *(*(v203 + 48) + ((v100 << 9) | (8 * __clz(__rbit64(v11)))));
    sub_24A61C0D4(v38, v202, type metadata accessor for FMFindingSessionState);
    v103 = *(v102 + 1);
    if (!*(v103 + 16))
    {

      goto LABEL_131;
    }

    v37 = *(v31 + 36);

    v104 = sub_24A515AC8(&v102[v37]);
    if ((v105 & 1) == 0)
    {
      goto LABEL_131;
    }

    sub_24A508AE4(*(v103 + 56) + 40 * v104, &v216);
    sub_24A508CA0(&v216, &v220);
    sub_24A61B070(v102, type metadata accessor for FMFindingSessionState);
    v106 = v221;
    v107 = v222;
    sub_24A50A204(&v220, v221);
    (*(v107 + 16))(v106, v107);
    if (*(v10 + 2))
    {
      sub_24A61BDB4(&qword_27EF52310, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v108 = sub_24A62EBB4();
      v109 = -1 << v10[32];
      v110 = v108 & ~v109;
      v208 = v10 + 56;
      if ((*&v10[((v110 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v110))
      {
        break;
      }
    }

LABEL_31:
    v11 &= v11 - 1;
    (v212)(v213, v215);
    sub_24A508C54(&v220);

    v38 = v206;
    v37 = v199;
  }

  v207 = ~v109;
  v111 = *(v214 + 72);
  v112 = *(v214 + 16);
  while (1)
  {
    v48 = v10;
    v113 = v211;
    v114 = v215;
    v112(v211, *(v10 + 6) + v111 * v110, v215);
    sub_24A61BDB4(&qword_27EF501E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v115 = sub_24A62EBD4();
    (v212)(v113, v114);
    if (v115)
    {
      break;
    }

    v110 = (v110 + 1) & v207;
    v10 = v48;
    if (((*&v208[(v110 >> 3) & 0xFFFFFFFFFFFFFF8] >> v110) & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v124 = v212;
  v123 = v215;
  (v212)(v213, v215);
  sub_24A508C54(&v220);

  v125 = v224;
  v126 = v225;
  sub_24A50A204(v223, v224);
  v127 = v211;
  (*(v126 + 16))(v125, v126);
  v128 = sub_24A614790(v127, v48);

  v124(v127, v123);
  v122 = v128 & 1;
  v31 = v205;
  v38 = v206;
LABEL_55:
  LODWORD(v214) = v122;
  v10 = *(v201 + 2);
  if (!v10)
  {

LABEL_80:
    v37 = v198;
    v139 = v195;
    if ((v194 & 1) == 0)
    {
      if ((v191 & 1) == 0)
      {
        goto LABEL_99;
      }

      v138 = 0;
      goto LABEL_89;
    }

    v138 = 0;
LABEL_82:
    sub_24A61C0D4(v38, v139, type metadata accessor for FMFindingSessionState);
    v142 = *(v139 + 8);
    if (*(v142 + 16))
    {
      v143 = sub_24A515AC8(v139 + *(v31 + 36));
      if (v144)
      {
        sub_24A508AE4(*(v142 + 56) + 40 * v143, &v220);
        sub_24A61B070(v139, type metadata accessor for FMFindingSessionState);
        v145 = v221;
        v146 = v222;
        sub_24A50A204(&v220, v221);
        v147 = v211;
        (*(v146 + 16))(v145, v146);
        v148 = v224;
        v149 = v225;
        sub_24A50A204(v223, v224);
        v150 = v196;
        (*(v149 + 16))(v148, v149);
        sub_24A61BDB4(&qword_27EF501E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v151 = sub_24A62EBD4();
        v152 = v212;
        (v212)(v150, v123);
        v152(v147, v123);
        sub_24A508C54(&v220);
        v37 = v198;
        if ((v151 & 1) == 0)
        {
          v153 = sub_24A62E2F4();
          v154 = sub_24A62EF64();
          if (os_log_type_enabled(v153, v154))
          {
            v155 = swift_slowAlloc();
            *v155 = 0;
            v156 = "🧭 FMFindingSession: Transitioning back to pre-selected part.";
            goto LABEL_105;
          }

          goto LABEL_106;
        }

LABEL_89:
        sub_24A61C0D4(v38, v37, type metadata accessor for FMFindingSessionState);
        v157 = *(v37 + 8);
        if (*(v157 + 16))
        {
          v158 = sub_24A515AC8(v37 + *(v31 + 36));
          if (v159)
          {
            sub_24A508AE4(*(v157 + 56) + 40 * v158, &v220);
            sub_24A61B070(v37, type metadata accessor for FMFindingSessionState);
            v160 = v221;
            v161 = v222;
            sub_24A50A204(&v220, v221);
            v162 = v211;
            (*(v161 + 16))(v160, v161);
            v163 = v224;
            v164 = v225;
            sub_24A50A204(v223, v224);
            v165 = v196;
            (*(v164 + 16))(v163, v164);
            sub_24A61BDB4(&qword_27EF501E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
            v166 = sub_24A62EBD4();
            v167 = v212;
            (v212)(v165, v123);
            v167(v162, v123);
            sub_24A508C54(&v220);
            if (v166 & 1) != 0 || v214 == 2 || (v214)
            {
              if (!v138)
              {
                goto LABEL_113;
              }

              v168 = sub_24A62E2F4();
              v169 = sub_24A62EF64();
              if (os_log_type_enabled(v168, v169))
              {
                v170 = swift_slowAlloc();
                *v170 = 0;
                _os_log_impl(&dword_24A503000, v168, v169, "🧭 FMFindingSession: Trying to find a findable that supports precise finding and is in the same group as primary part.", v170, 2u);
                MEMORY[0x24C21BBE0](v170, -1, -1);
              }

              sub_24A50D63C(v38 + 24, &v216, &unk_27EF522E0, qword_24A637660);
              if (v218)
              {
                goto LABEL_102;
              }

              v171 = v38;
              v37 = v192;
              goto LABEL_108;
            }

            v153 = sub_24A62E2F4();
            v154 = sub_24A62EF64();
            if (os_log_type_enabled(v153, v154))
            {
              v155 = swift_slowAlloc();
              *v155 = 0;
              v156 = "🧭 FMFindingSession: Current findable is not primary part and it's not grouped with primary part any longer. Transitioning back to pre-selected part.";
LABEL_105:
              _os_log_impl(&dword_24A503000, v153, v154, v156, v155, 2u);
              MEMORY[0x24C21BBE0](v155, -1, -1);
            }

LABEL_106:

            sub_24A60FEC8(v223);
            goto LABEL_113;
          }
        }
      }
    }

LABEL_131:
    v189 = 0;
    v187 = 30;
    goto LABEL_132;
  }

  v31 = 0;
  v38 = v201;
  v11 = v201 + 32;
  v48 = 1;
  v34 = -1;
LABEL_58:
  if (v31 >= *(v38 + 16))
  {
    goto LABEL_124;
  }

  sub_24A508AE4(v11 + 40 * v31++, &v220);
  v37 = v221;
  v129 = v222;
  sub_24A50A204(&v220, v221);
  v130 = (*(v129 + 32))(v37, v129);
  v131 = 0;
  v132 = 1 << *(v130 + 32);
  if (v132 < 64)
  {
    v133 = ~(-1 << v132);
  }

  else
  {
    v133 = -1;
  }

  v134 = v133 & *(v130 + 56);
  v135 = (v132 + 63) >> 6;
  do
  {
    if (!v134)
    {
      while (1)
      {
        v136 = v131 + 1;
        if (__OFADD__(v131, 1))
        {
          __break(1u);
          goto LABEL_116;
        }

        if (v136 >= v135)
        {
          break;
        }

        v134 = *(v130 + 56 + 8 * v136);
        ++v131;
        if (v134)
        {
          v131 = v136;
          goto LABEL_69;
        }
      }

      sub_24A508C54(&v220);
      if (v31 != v10)
      {
        goto LABEL_58;
      }

      v31 = v205;
      v38 = v206;
      v123 = v215;
      goto LABEL_80;
    }

    v136 = v131;
LABEL_69:
    v137 = __clz(__rbit64(v134));
    v134 &= v134 - 1;
  }

  while ((*(*(v130 + 48) + ((v136 << 7) | (2 * v137))) & 0x80000000) == 0);

  sub_24A508C54(&v220);
  if (v194)
  {
    v138 = 1;
    v31 = v205;
    v38 = v206;
    v123 = v215;
    v139 = v195;
    goto LABEL_82;
  }

  v31 = v205;
  v38 = v206;
  v123 = v215;
  v37 = v198;
  if (v191)
  {
    v138 = 1;
    goto LABEL_89;
  }

LABEL_99:
  v172 = sub_24A62E2F4();
  v173 = sub_24A62EF64();
  if (os_log_type_enabled(v172, v173))
  {
    v174 = swift_slowAlloc();
    *v174 = 0;
    _os_log_impl(&dword_24A503000, v172, v173, "🧭 FMFindingSession: Trying to find a findable that ranges and is in the same group as primary part.", v174, 2u);
    MEMORY[0x24C21BBE0](v174, -1, -1);
  }

  sub_24A50D63C(v38 + 24, &v216, &unk_27EF522E0, qword_24A637660);
  if (v218)
  {
LABEL_102:
    sub_24A508CA0(&v216, &v220);
    goto LABEL_112;
  }

  v171 = v38;
  v37 = v193;
LABEL_108:
  sub_24A61C0D4(v171, v37, type metadata accessor for FMFindingSessionState);
  v175 = *(v37 + 8);
  if (!*(v175 + 16))
  {
    goto LABEL_131;
  }

  v176 = sub_24A515AC8(v37 + *(v31 + 36));
  if ((v177 & 1) == 0)
  {
    goto LABEL_131;
  }

  sub_24A508AE4(*(v175 + 56) + 40 * v176, &v220);
  sub_24A61B070(v37, type metadata accessor for FMFindingSessionState);
  if (v218)
  {
    sub_24A50D6A4(&v216, &unk_27EF522E0, qword_24A637660);
  }

LABEL_112:
  sub_24A611E34(&v220);
  sub_24A508C54(&v220);
LABEL_113:
  sub_24A508C54(v223);
}

void sub_24A611E34(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A62E214();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_24A508FA4(&unk_27EF52410, &qword_24A633C90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30[-v9];
  v11 = v2 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  v12 = *(v11 + 16);
  v31 = a1;

  sub_24A60DD58(sub_24A61BD94, v30, v12);
  v14 = v13;

  if (v14)
  {
    v15 = sub_24A62EE24();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
    sub_24A508AE4(a1, &v33);
    sub_24A62EE04();

    v16 = sub_24A62EDF4();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v2;
    v17[5] = v14;
    sub_24A508CA0(&v33, (v17 + 6));
    sub_24A51556C(0, 0, v10, &unk_24A63C0D0, v17);
  }

  else
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v19 = sub_24A62E314();
    sub_24A506EB8(v19, qword_27EF5C118);
    sub_24A508AE4(a1, &v33);
    v20 = sub_24A62E2F4();
    v21 = sub_24A62EF44();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32 = v23;
      *v22 = 136315138;
      v24 = v34;
      v25 = v35;
      sub_24A50A204(&v33, v34);
      (*(v25 + 16))(v24, v25);
      sub_24A61BDB4(&qword_27EF4F660, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v26 = sub_24A62F614();
      v28 = v27;
      (*(v5 + 8))(v7, v4);
      sub_24A508C54(&v33);
      v29 = sub_24A509BA8(v26, v28, &v32);

      *(v22 + 4) = v29;
      _os_log_impl(&dword_24A503000, v20, v21, "🧭 FMFindingSession: Findable: %s does not belong to any group.", v22, 0xCu);
      sub_24A508C54(v23);
      MEMORY[0x24C21BBE0](v23, -1, -1);
      MEMORY[0x24C21BBE0](v22, -1, -1);
    }

    else
    {

      sub_24A508C54(&v33);
    }
  }
}

unint64_t FindingExperienceType.description.getter()
{
  v1 = *v0;
  v2 = (v1 >> 13) & 3;
  if (v2)
  {
    if (v2 != 1)
    {
      return 0xD000000000000013;
    }

    sub_24A62F384();
    v3 = 0x696D69786F72702ELL;
    v4 = 0xEB00000000287974;
  }

  else
  {
    sub_24A62F384();
    v3 = 0x697369636572702ELL;
    v4 = 0xEB00000000286E6FLL;
  }

  MEMORY[0x24C21A5D0](v3, v4);
  if (v1)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x74696D69786F7270;
  }

  if (v1)
  {
    v6 = 0x800000024A63CED0;
  }

  else
  {
    v6 = 0xEB00000000495579;
  }

  MEMORY[0x24C21A5D0](v5, v6);

  MEMORY[0x24C21A5D0](8236, 0xE200000000000000);
  sub_24A62F434();
  MEMORY[0x24C21A5D0](41, 0xE100000000000000);
  return 0;
}

void sub_24A6125B0(uint64_t a1)
{
  v2 = sub_24A508FA4(&qword_27EF52420, &qword_24A63C0D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  (*(v3 + 16))(v6, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v6, v2);
  *(v9 + ((v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  v10 = type metadata accessor for FMR1AvailabilityHelper.FMR1AvailabilityHelperTrampoline();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtCC11FMFindingUI22FMR1AvailabilityHelper32FMR1AvailabilityHelperTrampoline_handler];
  *v12 = sub_24A61C01C;
  v12[1] = v9;
  v19.receiver = v11;
  v19.super_class = v10;

  v13 = objc_msgSendSuper2(&v19, sel_init);
  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v14 = v13;
  v15 = sub_24A62F014();
  v16 = [objc_allocWithZone(MEMORY[0x277D43C50]) initWithDelegate:v14 queue:v15];

  swift_beginAccess();
  v17 = *(v7 + 16);
  *(v7 + 16) = v16;
}

void sub_24A6127DC(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = a1;
    sub_24A508FA4(&qword_27EF52420, &qword_24A63C0D8);
    sub_24A62EDD4();
  }

  else
  {
    sub_24A508FA4(&qword_27EF52420, &qword_24A63C0D8);
    sub_24A62EDE4();
  }

  swift_beginAccess();
  v6 = *(a4 + 16);
  swift_beginAccess();
  *(a4 + 16) = 0;
}

void sub_24A612894(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_handler);
  v6 = *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_handler);
  v7 = *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_handler + 8);
  *v5 = a1;
  v5[1] = a2;
  sub_24A5173CC(a1, a2);
  sub_24A50D354(v6, v7);
  v8 = v2 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_result;
  v9 = *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_result + 8);
  if (v9 == 255)
  {

    sub_24A50D354(a1, a2);
  }

  else
  {
    v10 = *v5;
    if (*v5)
    {
      v11 = *v8;
      v12 = v5[1];
      sub_24A61BD58(*v8, v9);
      sub_24A5173CC(v10, v12);
      v10(v11, v9 & 1);
      sub_24A50D354(a1, a2);
      sub_24A61BD7C(v11, v9);
      v13 = v10;
      v14 = v12;
    }

    else
    {
      v13 = a1;
      v14 = a2;
    }

    sub_24A50D354(v13, v14);
    v15 = *v8;
    *v8 = 0;
    v16 = *(v8 + 8);
    *(v8 + 8) = -1;

    sub_24A61BD7C(v15, v16);
  }
}

void sub_24A612AB0(void (*a1)(uint64_t, uint64_t), void (*a2)(uint64_t, uint64_t))
{
  v3 = v2;
  v4 = (v2 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_handler);
  v5 = *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_handler);
  v6 = v4[1];
  *v4 = a1;
  v4[1] = a2;

  sub_24A50D354(v5, v6);
  v7 = v3 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_result;
  v8 = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_result + 8);
  if (v8 != 255)
  {
    v9 = *v7;
    v10 = *v4;
    if (*v4)
    {
      v11 = v4[1];
      v12 = *v7;
      v13 = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_result + 8);
      sub_24A61BD58(v9, v8);
      sub_24A5173CC(v10, v11);
      v10(v12, v13 & 1);
      sub_24A61BD7C(v12, v13);
      sub_24A50D354(v10, v11);
      v9 = *v7;
      LOBYTE(v8) = *(v7 + 8);
    }

    *v7 = 0;
    *(v7 + 8) = -1;
    sub_24A61BD7C(v9, v8);
  }

  v14 = OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_niSession;
  if (!*(v3 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_niSession))
  {
    v15 = [objc_allocWithZone(MEMORY[0x277CD8A68]) init];
    v16 = *(v3 + v14);
    *(v3 + v14) = v15;
    v17 = v15;

    if (v17)
    {
      [v17 setDelegate_];
    }

    v18 = *(v3 + v14);
    if (v18)
    {
      v19 = objc_allocWithZone(MEMORY[0x277CD8A70]);
      v20 = v18;
      v21 = [v19 init];
      [v20 runWithConfiguration_];
    }
  }
}

id sub_24A612CE8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24A612D8C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for FMFindingLocalizerError(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v5 = sub_24A62E214();
      (*(*(v5 - 8) + 32))(a2, a1, v5);
    }

    else
    {
      *a2 = *a1;
    }

LABEL_4:
    type metadata accessor for FMFindingSession.Error(0);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      *a2 = *a1;
    }

    goto LABEL_4;
  }

  v6 = *(a1 + *(sub_24A508FA4(&unk_27EF4FE70, &unk_24A635DC0) + 48));
  v7 = *(sub_24A508FA4(&qword_27EF4F658, &unk_24A633E10) + 48);
  v8 = sub_24A62E214();
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  *(a2 + v7) = v6;
  type metadata accessor for FMFindingSession.Error(0);
LABEL_11:

  return swift_storeEnumTagMultiPayload();
}

uint64_t FMFindingSession.__deallocating_deinit()
{
  FMFindingSession.deinit();

  return swift_deallocClassInstance();
}

void FMFindingSession.__allocating_init(itemGroupFindables:primaryPart:groupName:findingType:arSession:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned __int16 *a5, uint64_t a6)
{
  v83 = a6;
  v86 = a2;
  v100 = sub_24A62E214();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v89 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v92 = &v81 - v12;
  MEMORY[0x28223BE20](v13);
  v88 = &v81 - v14;
  v82 = *a5;
  v15 = *(a1 + 16);
  if (v15)
  {
    v112 = MEMORY[0x277D84F90];
    sub_24A58DA18(0, v15, 0);
    v16 = 0;
    v97 = a1 + 32;
    v17 = v112;
    v95 = a1;
    v94 = v15;
    while (1)
    {
      if (v16 >= *(a1 + 16))
      {
        goto LABEL_88;
      }

      v96 = v17;
      v98 = v16;
      v18 = *(v97 + 8 * v16);
      v19 = *(v18 + 16);

      if (v19)
      {
        break;
      }

      v22 = MEMORY[0x277D84F90];
LABEL_19:

      v17 = v96;
      v112 = v96;
      v28 = *(v96 + 16);
      v27 = *(v96 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_24A58DA18((v27 > 1), v28 + 1, 1);
        v17 = v112;
      }

      v16 = v98 + 1;
      *(v17 + 16) = v28 + 1;
      *(v17 + 8 * v28 + 32) = v22;
      a1 = v95;
      if (v16 == v94)
      {

        goto LABEL_24;
      }
    }

    v20 = 0;
    v21 = v18 + 32;
    v22 = MEMORY[0x277D84F90];
    while (v20 < *(v18 + 16))
    {
      sub_24A508AE4(v21, &v109);
      sub_24A508AE4(&v109, v103);
      sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
      sub_24A508FA4(&unk_27EF52300, &qword_24A636230);
      if (swift_dynamicCast())
      {
        sub_24A508CA0(v101, &v107);
        sub_24A508AE4(&v107, v103);
        v105 = type metadata accessor for FMNIFindableGroupItem(0);
        v106 = &off_285DA7A78;
        v23 = sub_24A5292E8(&v104);

        sub_24A5AE0E8(v103, a3, a4, v23);
        sub_24A508C54(&v107);
      }

      else
      {
        v102 = 0;
        memset(v101, 0, sizeof(v101));
        sub_24A50D6A4(v101, &unk_27EF501C0, &unk_24A636238);
        sub_24A508AE4(&v109, &v107);
        v105 = type metadata accessor for FMFindableGroupItem(0);
        v106 = &off_285DA7AA0;
        v24 = sub_24A5292E8(&v104);

        sub_24A5ADA04(&v107, a3, a4, v24);
      }

      sub_24A508C54(&v109);
      if (v105)
      {
        sub_24A508CA0(&v104, &v107);
        sub_24A508CA0(&v107, &v104);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_24A617B34(0, v22[2] + 1, 1, v22, &qword_27EF51AC8, &qword_24A63B088, &unk_27EF4FF20, &unk_24A635E40);
        }

        v26 = v22[2];
        v25 = v22[3];
        if (v26 >= v25 >> 1)
        {
          v22 = sub_24A617B34((v25 > 1), v26 + 1, 1, v22, &qword_27EF51AC8, &qword_24A63B088, &unk_27EF4FF20, &unk_24A635E40);
        }

        v22[2] = v26 + 1;
        sub_24A508CA0(&v104, &v22[5 * v26 + 4]);
      }

      else
      {
        sub_24A50D6A4(&v104, &unk_27EF50520, &unk_24A633B10);
      }

      ++v20;
      v21 += 40;
      if (v19 == v20)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_56:

    sub_24A508C54(&v109);
    v47 = 1;
LABEL_57:
    sub_24A50D63C(v86, &v107, &unk_27EF522E0, qword_24A637660);
    if (v108)
    {
      v49 = sub_24A508CA0(&v107, &v109);
      v50 = MEMORY[0x277D84F90];
      if (v47)
      {
        MEMORY[0x28223BE20](v49);
        *(&v81 - 2) = &v109;
        v51 = v85;
        v52 = sub_24A60E2E4(sub_24A61B850, (&v81 - 4), a4, sub_24A50D850, sub_24A58D9F8);
        v85 = v51;
        v53 = sub_24A60E1AC(v52);

        sub_24A508C54(&v109);
LABEL_63:
        v54 = *(v96 + 16);
        if (v54)
        {
          v81 = v53;
          *&v107 = v50;
          sub_24A58D9D8(0, v54, 0);
          v55 = v96;
          v56 = 0;
          v57 = v107;
          v90 = v96 + 32;
          v97 = v99 + 32;
          v58 = (v99 + 8);
          v91 = v54;
          v87 = v99 + 16;
          while (v56 < *(v55 + 16))
          {
            v95 = v57;
            v94 = v56;
            v59 = *(v90 + 8 * v56);
            v60 = *(v59 + 16);
            v93 = v59;
            if (v60)
            {
              *&v104 = v50;

              sub_24A58D8A8(0, v60, 0);
              v61 = v104;
              v62 = v59 + 32;
              do
              {
                sub_24A508AE4(v62, &v109);
                v64 = v110;
                v63 = v111;
                sub_24A50A204(&v109, v110);
                (*(*(v63 + 8) + 16))(v64);
                sub_24A508C54(&v109);
                *&v104 = v61;
                v66 = *(v61 + 16);
                v65 = *(v61 + 24);
                if (v66 >= v65 >> 1)
                {
                  sub_24A58D8A8((v65 > 1), v66 + 1, 1);
                  v61 = v104;
                }

                *(v61 + 16) = v66 + 1;
                (*(v99 + 32))(v61 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v66, v21, v100);
                v62 += 40;
                --v60;
              }

              while (v60);
            }

            else
            {

              v61 = v50;
            }

            v67 = *(v61 + 16);
            v68 = sub_24A61BDB4(&qword_27EF52310, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
            v69 = v67;
            v70 = v100;
            v109 = MEMORY[0x24C21A7A0](v69, v100, v68);
            v71 = *(v61 + 16);
            if (v71)
            {
              v72 = v61 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
              v98 = *(v99 + 72);
              v73 = *(v99 + 16);
              v74 = v89;
              v75 = v88;
              do
              {
                v73(v75, v72, v70);
                sub_24A617C9C(v74, v75);
                v70 = v100;
                (*v58)(v74, v100);
                v72 += v98;
                --v71;
              }

              while (v71);

              v21 = v92;
              v50 = MEMORY[0x277D84F90];
            }

            else
            {
            }

            v76 = v109;
            v57 = v95;
            *&v107 = v95;
            v78 = *(v95 + 16);
            v77 = *(v95 + 24);
            v55 = v96;
            if (v78 >= v77 >> 1)
            {
              sub_24A58D9D8((v77 > 1), v78 + 1, 1);
              v55 = v96;
              v57 = v107;
            }

            v56 = v94 + 1;
            *(v57 + 16) = v78 + 1;
            *(v57 + 8 * v78 + 32) = v76;
            if (v56 == v91)
            {

              v53 = v81;
              goto LABEL_83;
            }
          }

          goto LABEL_87;
        }

        v57 = MEMORY[0x277D84F90];
LABEL_83:
        v79 = sub_24A61B408(v57);

        v80 = v86;
        sub_24A50D63C(v86, &v109, &unk_27EF522E0, qword_24A637660);
        LOWORD(v107) = v82;
        (*(v84 + 248))(v53, &v109, &v107, v79, v83);
        sub_24A50D6A4(v80, &unk_27EF522E0, qword_24A637660);
        return;
      }

      sub_24A508C54(&v109);
    }

    else
    {
      sub_24A50D6A4(&v107, &unk_27EF522E0, qword_24A637660);
      v50 = MEMORY[0x277D84F90];
    }

    v53 = sub_24A60E1AC(a4);

    goto LABEL_63;
  }

  v17 = MEMORY[0x277D84F90];
LABEL_24:
  v29 = *(v17 + 16);
  a4 = MEMORY[0x277D84F90];
  v96 = v17;
  if (!v29)
  {
LABEL_42:
    v41 = a4[2];
    if (v41)
    {
      v42 = 0;
      v43 = (a4 + 4);
      v44 = v41 - 1;
      while (v42 < a4[2])
      {
        sub_24A508AE4(v43, &v109);
        v45 = v110;
        v46 = v111;
        sub_24A50A204(&v109, v110);
        (*(v46 + 32))(&v107, v45, v46);
        if (v107 <= 2u && v107)
        {
          v21 = v92;
          if (v107 != 2)
          {
            goto LABEL_56;
          }
        }

        else
        {
          v21 = v92;
        }

        v47 = sub_24A62F634();

        sub_24A508C54(&v109);
        if ((v47 & 1) == 0)
        {
          v43 += 40;
          if (v44 != v42++)
          {
            continue;
          }
        }

        goto LABEL_57;
      }

      goto LABEL_89;
    }

    v47 = 0;
    v21 = v92;
    goto LABEL_57;
  }

  v30 = 0;
  v31 = v17 + 32;
  while (v30 < *(v17 + 16))
  {
    v32 = *(v31 + 8 * v30);
    v33 = *(v32 + 16);
    v34 = a4[2];
    v35 = v34 + v33;
    if (__OFADD__(v34, v33))
    {
      goto LABEL_85;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v35 <= a4[3] >> 1)
    {
      if (*(v32 + 16))
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v34 <= v35)
      {
        v37 = v34 + v33;
      }

      else
      {
        v37 = v34;
      }

      a4 = sub_24A617B34(isUniquelyReferenced_nonNull_native, v37, 1, a4, &qword_27EF51AC8, &qword_24A63B088, &unk_27EF4FF20, &unk_24A635E40);
      if (*(v32 + 16))
      {
LABEL_38:
        if ((a4[3] >> 1) - a4[2] < v33)
        {
          goto LABEL_90;
        }

        sub_24A508FA4(&unk_27EF4FF20, &unk_24A635E40);
        swift_arrayInitWithCopy();

        v17 = v96;
        if (v33)
        {
          v38 = a4[2];
          v39 = __OFADD__(v38, v33);
          v40 = v38 + v33;
          if (v39)
          {
            goto LABEL_91;
          }

          a4[2] = v40;
        }

        goto LABEL_27;
      }
    }

    v17 = v96;
    if (v33)
    {
      goto LABEL_86;
    }

LABEL_27:
    if (v29 == ++v30)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
}

uint64_t sub_24A613CE8(void *a1, void *a2)
{
  v4 = sub_24A62E214();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = a1[3];
  v12 = a1[4];
  sub_24A50A204(a1, v11);
  (*(v12 + 32))(&v22, v11, v12);
  if (v22 <= 1u && v22)
  {

    goto LABEL_6;
  }

  v13 = sub_24A62F634();

  if (v13)
  {
LABEL_6:
    v18 = 1;
    return v18 & 1;
  }

  v15 = a1[3];
  v14 = a1[4];
  sub_24A50A204(a1, v15);
  (*(*(v14 + 8) + 16))(v15);
  v16 = a2[3];
  v17 = a2[4];
  sub_24A50A204(a2, v16);
  (*(v17 + 16))(v16, v17);
  v18 = sub_24A62E1E4();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  return v18 & 1;
}

uint64_t FMFindingSession.__allocating_init(itemGroupFindables:primaryPart:groupName:findingTechnology:arSession:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, __int16 *a5, uint64_t a6)
{
  v11 = *a5;
  sub_24A50D63C(a2, v15, &unk_27EF522E0, qword_24A637660);
  v16 = v11 | 0x4000;
  FMFindingSession.__allocating_init(itemGroupFindables:primaryPart:groupName:findingType:arSession:)(a1, v15, a3, a4, &v16, a6);
  v13 = v12;
  sub_24A50D6A4(a2, &unk_27EF522E0, qword_24A637660);
  return v13;
}

uint64_t FMFindingSession.__allocating_init(findable:findingType:arSession:)(void *a1, __int16 *a2, uint64_t a3)
{
  v6 = *a2;
  sub_24A508FA4(&unk_27EF4FF40, &unk_24A635E60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A633830;
  sub_24A508AE4(a1, inited + 32);
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v11 = v6;
  v8 = _sSh11FMFindingUIShy10Foundation4UUIDVGRszrlE4from9findablesShyAEGSayAA10FMFindable_pG_tFZ_0(inited);
  v9 = (*(v3 + 248))(inited, v12, &v11, v8, a3);
  sub_24A508C54(a1);
  return v9;
}

uint64_t FMFindingSession.__allocating_init(findable:findingTechnology:arSession:)(void *a1, __int16 *a2, uint64_t a3)
{
  v6 = *a2;
  sub_24A508FA4(&unk_27EF4FF40, &unk_24A635E60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A633830;
  sub_24A508AE4(a1, inited + 32);
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v11 = v6 | 0x4000;
  v8 = _sSh11FMFindingUIShy10Foundation4UUIDVGRszrlE4from9findablesShyAEGSayAA10FMFindable_pG_tFZ_0(inited);
  v9 = (*(v3 + 248))(inited, v12, &v11, v8, a3);
  sub_24A508C54(a1);
  return v9;
}

uint64_t sub_24A6141E8(uint64_t a1, uint64_t a2, unsigned __int16 *a3, char *a4, void *a5)
{
  v10 = swift_allocObject();
  sub_24A60E654(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t sub_24A614268(void *a1, uint64_t a2)
{
  v4 = sub_24A62E214();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_24A508FA4(&unk_27EF52480, &unk_24A633B20);
  MEMORY[0x28223BE20](v34);
  v8 = &v31 - v7;
  v9 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
  MEMORY[0x28223BE20](v9 - 8);
  v33 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  v17 = a1[3];
  v18 = a1[4];
  sub_24A50A204(a1, v17);
  (*(v18 + 16))(v17, v18);
  v38 = v5;
  v19 = *(v5 + 56);
  v19(v16, 0, 1, v4);
  sub_24A50D63C(a2, v35, &unk_27EF522E0, qword_24A637660);
  v20 = v36;
  if (v36)
  {
    v21 = v37;
    sub_24A50A204(v35, v36);
    (*(v21 + 16))(v20, v21);
    v19(v13, 0, 1, v4);
    sub_24A508C54(v35);
  }

  else
  {
    sub_24A50D6A4(v35, &unk_27EF522E0, qword_24A637660);
    v19(v13, 1, 1, v4);
  }

  v22 = *(v34 + 48);
  sub_24A50D63C(v16, v8, &unk_27EF4FEE0, &qword_24A6369F0);
  sub_24A50D63C(v13, &v8[v22], &unk_27EF4FEE0, &qword_24A6369F0);
  v23 = *(v38 + 48);
  if (v23(v8, 1, v4) != 1)
  {
    v25 = v33;
    sub_24A50D63C(v8, v33, &unk_27EF4FEE0, &qword_24A6369F0);
    if (v23(&v8[v22], 1, v4) != 1)
    {
      v26 = v38;
      v27 = &v8[v22];
      v28 = v32;
      (*(v38 + 32))(v32, v27, v4);
      sub_24A61BDB4(&qword_27EF501E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      LODWORD(v34) = sub_24A62EBD4();
      v29 = *(v26 + 8);
      v29(v28, v4);
      sub_24A50D6A4(v13, &unk_27EF4FEE0, &qword_24A6369F0);
      sub_24A50D6A4(v16, &unk_27EF4FEE0, &qword_24A6369F0);
      v29(v25, v4);
      sub_24A50D6A4(v8, &unk_27EF4FEE0, &qword_24A6369F0);
      v24 = v34 ^ 1;
      return v24 & 1;
    }

    sub_24A50D6A4(v13, &unk_27EF4FEE0, &qword_24A6369F0);
    sub_24A50D6A4(v16, &unk_27EF4FEE0, &qword_24A6369F0);
    (*(v38 + 8))(v25, v4);
    goto LABEL_9;
  }

  sub_24A50D6A4(v13, &unk_27EF4FEE0, &qword_24A6369F0);
  sub_24A50D6A4(v16, &unk_27EF4FEE0, &qword_24A6369F0);
  if (v23(&v8[v22], 1, v4) != 1)
  {
LABEL_9:
    sub_24A50D6A4(v8, &unk_27EF52480, &unk_24A633B20);
    v24 = 1;
    return v24 & 1;
  }

  sub_24A50D6A4(v8, &unk_27EF4FEE0, &qword_24A6369F0);
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_24A614790(uint64_t a1, uint64_t a2)
{
  v3 = sub_24A62E214();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_24A61BDB4(&qword_27EF52310, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]), v7 = sub_24A62EBB4(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_24A61BDB4(&qword_27EF501E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_24A62EBD4();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_24A6149A8(uint64_t *a1, void *a2)
{
  v4 = sub_24A62E214();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a2[3];
  v10 = a2[4];
  sub_24A50A204(a2, v9);
  (*(v10 + 16))(v9, v10);
  LOBYTE(a2) = sub_24A614790(v7, v8);
  (*(v5 + 8))(v7, v4);
  return a2 & 1;
}

uint64_t sub_24A614ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[36] = a5;
  v6[37] = a6;
  v6[35] = a4;
  v6[38] = type metadata accessor for FMFindingSession.Error(0);
  v6[39] = swift_task_alloc();
  v7 = sub_24A62E214();
  v6[40] = v7;
  v6[41] = *(v7 - 8);
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  type metadata accessor for FMFindingSessionState(0);
  v6[45] = swift_task_alloc();
  sub_24A62EE04();
  v6[46] = sub_24A62EDF4();
  v9 = sub_24A62EDC4();
  v6[47] = v9;
  v6[48] = v8;

  return MEMORY[0x2822009F8](sub_24A614C38, v9, v8);
}

uint64_t sub_24A614C38()
{
  v83 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 280) + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  v80 = v2;
  sub_24A61C0D4(v2, v1, type metadata accessor for FMFindingSessionState);
  v3 = *(v1 + 8);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = sub_24A5E4FC4(*(v3 + 16), 0);
    v6 = sub_24A5CE86C(&v82, (v5 + 4), v4, v3);
    v7 = v82;
    swift_bridgeObjectRetain_n();
    sub_24A55B6D4(v7);
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x277D84F90];
LABEL_5:
  v82 = v5;
  sub_24A5CDB08(&v82);
  v8 = *(v0 + 360);

  v9 = v82;
  v10 = swift_task_alloc();
  *(v10 + 16) = v8;
  v11 = sub_24A60E2E4(sub_24A61BF10, v10, v9, sub_24A508CA0, sub_24A58D908);

  sub_24A61B070(v8, type metadata accessor for FMFindingSessionState);
  v12 = *(v11 + 2);
  if (v12)
  {
    v13 = *(v0 + 328);
    v82 = MEMORY[0x277D84F90];
    sub_24A58D8A8(0, v12, 0);
    v14 = v82;
    v15 = v11 + 32;
    do
    {
      sub_24A508AE4(v15, v0 + 16);
      v16 = *(v0 + 40);
      v17 = *(v0 + 48);
      sub_24A50A204((v0 + 16), v16);
      (*(v17 + 16))(v16, v17);
      sub_24A508C54((v0 + 16));
      v82 = v14;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_24A58D8A8((v18 > 1), v19 + 1, 1);
        v14 = v82;
      }

      v20 = *(v0 + 352);
      v21 = *(v0 + 320);
      *(v14 + 16) = v19 + 1;
      (*(v13 + 32))(v14 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v19, v20, v21);
      v15 += 40;
      --v12;
    }

    while (v12);
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  v22 = *(v0 + 328);
  v23 = *(v0 + 288);
  v24 = sub_24A61B0D0(v14);

  v25 = sub_24A618CC4(v24, v23);

  v26 = v25 + 56;
  v27 = -1;
  v28 = -1 << v25[32];
  if (-v28 < 64)
  {
    v27 = ~(-1 << -v28);
  }

  v29 = v27 & *(v25 + 7);
  v30 = (63 - v28) >> 6;
  v79 = (v22 + 8);

  v31 = 0;
  v32 = MEMORY[0x277D84F90];
  v78 = v25;
  *(v0 + 392) = MEMORY[0x277D84F90];
  if (v29)
  {
    while (1)
    {
LABEL_22:
      v34 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      (*(v22 + 16))(*(v0 + 344), *(v25 + 6) + *(v22 + 72) * (v34 | (v31 << 6)), *(v0 + 320));
      v35 = *(v80 + 8);
      if (!*(v35 + 16))
      {
        goto LABEL_17;
      }

      v36 = *(v0 + 344);

      v37 = sub_24A515AC8(v36);
      if (v38)
      {
        v39 = *(v0 + 344);
        v40 = *(v0 + 320);
        sub_24A508AE4(*(v35 + 56) + 40 * v37, v0 + 96);
        (*v79)(v39, v40);

        sub_24A508CA0((v0 + 96), v0 + 56);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_24A617B34(0, v32[2] + 1, 1, v32, &unk_27EF4FF40, &unk_24A635E60, &unk_27EF501B0, &unk_24A633B00);
        }

        v42 = v32[2];
        v41 = v32[3];
        v25 = v78;
        if (v42 >= v41 >> 1)
        {
          v32 = sub_24A617B34((v41 > 1), v42 + 1, 1, v32, &unk_27EF4FF40, &unk_24A635E60, &unk_27EF501B0, &unk_24A633B00);
        }

        v32[2] = v42 + 1;
        sub_24A508CA0((v0 + 56), &v32[5 * v42 + 4]);
        *(v0 + 392) = v32;
        if (!v29)
        {
          goto LABEL_18;
        }
      }

      else
      {

LABEL_17:
        (*v79)(*(v0 + 344), *(v0 + 320));
        *(v0 + 392) = v32;
        if (!v29)
        {
          goto LABEL_18;
        }
      }
    }
  }

  while (1)
  {
LABEL_18:
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    if (v33 >= v30)
    {
      break;
    }

    v29 = *&v26[8 * v33];
    ++v31;
    if (v29)
    {
      v31 = v33;
      goto LABEL_22;
    }
  }

  v43 = v32[2];
  *(v0 + 400) = v43;
  v44 = (v32 + 4);
  v45 = -v43;
  v46 = -1;
  do
  {
    v47 = v45 + v46;
    if (v45 + v46 == -1)
    {
      break;
    }

    if (++v46 >= v32[2])
    {
      goto LABEL_60;
    }

    v48 = v44 + 40;
    sub_24A508AE4(v44, v0 + 136);
    v49 = *(v0 + 160);
    v50 = *(v0 + 168);
    sub_24A50A204((v0 + 136), v49);
    v51 = (*(v50 + 32))(v49, v50);
    LOBYTE(v49) = sub_24A5E05A8(v51);

    sub_24A508C54((v0 + 136));
    v44 = v48;
  }

  while ((v49 & 1) == 0);
  v52 = *(*(v0 + 280) + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_findingType);
  v53 = (v52 >> 13) & 3;
  if (!v53)
  {
    goto LABEL_43;
  }

  if (v53 == 1)
  {

    if (v47 != -1)
    {
      v54 = *(v0 + 280);

      sub_24A612AB0(sub_24A61BF30, v54);
      goto LABEL_43;
    }

LABEL_44:
    v57 = *(v0 + 392);
    if (*(v0 + 400))
    {
      if (*(v57 + 16))
      {
        sub_24A508AE4(v57 + 32, v0 + 176);

        if (qword_27EF4E9A0 == -1)
        {
          goto LABEL_47;
        }

        goto LABEL_62;
      }

LABEL_61:
      __break(1u);
LABEL_62:
      swift_once();
LABEL_47:
      v58 = sub_24A62E314();
      sub_24A506EB8(v58, qword_27EF5C118);
      v59 = sub_24A62E2F4();
      v60 = sub_24A62EF64();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_24A503000, v59, v60, "🧭 FMFindingSession: Automatically transitioning to ranging part.", v61, 2u);
        MEMORY[0x24C21BBE0](v61, -1, -1);
      }

      sub_24A60FEC8((v0 + 176));
      sub_24A508C54((v0 + 176));
    }

    else
    {

      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v62 = *(v0 + 296);
      v63 = sub_24A62E314();
      sub_24A506EB8(v63, qword_27EF5C118);
      sub_24A508AE4(v62, v0 + 216);
      v64 = sub_24A62E2F4();
      v65 = sub_24A62EF64();
      if (os_log_type_enabled(v64, v65))
      {
        v67 = *(v0 + 328);
        v66 = *(v0 + 336);
        v81 = *(v0 + 320);
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v82 = v69;
        *v68 = 136315138;
        v70 = *(v0 + 240);
        v71 = *(v0 + 248);
        sub_24A50A204((v0 + 216), v70);
        (*(v71 + 16))(v70, v71);
        sub_24A61BDB4(&qword_27EF4F660, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v72 = sub_24A62F614();
        v74 = v73;
        (*(v67 + 8))(v66, v81);
        sub_24A508C54((v0 + 216));
        v75 = sub_24A509BA8(v72, v74, &v82);

        *(v68 + 4) = v75;
        _os_log_impl(&dword_24A503000, v64, v65, "🧭 FMFindingSession: No ranging parts in the group for findable: %s.", v68, 0xCu);
        sub_24A508C54(v69);
        MEMORY[0x24C21BBE0](v69, -1, -1);
        MEMORY[0x24C21BBE0](v68, -1, -1);
      }

      else
      {

        sub_24A508C54((v0 + 216));
      }

      sub_24A60FEC8(*(v0 + 296));
    }

    v76 = *(v0 + 8);

    return v76();
  }

  if ((v52 & 0x80000000) != 0 || v47 == -1)
  {
LABEL_43:

    goto LABEL_44;
  }

  v55 = swift_task_alloc();
  *(v0 + 408) = v55;
  *v55 = v0;
  v55[1] = sub_24A6156D4;
  v56 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 416, 0, 0, 0x6961764131527369, 0xEF2928656C62616CLL, sub_24A6125B0, 0, v56);
}

uint64_t sub_24A6156D4()
{

  if (v0)
  {

    v1 = sub_24A615C04;
  }

  else
  {
    v1 = sub_24A6157EC;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_24A61580C()
{
  v26 = v0;
  v1 = *(v0 + 417);

  if (v1 == 1 && swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v0 + 312);
    swift_storeEnumTagMultiPayload();
    sub_24A60BC20(v2);
    swift_unknownObjectRelease();
    sub_24A61B070(v2, type metadata accessor for FMFindingSession.Error);
  }

  v3 = *(v0 + 392);
  if (*(v0 + 400))
  {
    if (*(v3 + 16))
    {
      sub_24A508AE4(v3 + 32, v0 + 176);

      if (qword_27EF4E9A0 == -1)
      {
LABEL_7:
        v4 = sub_24A62E314();
        sub_24A506EB8(v4, qword_27EF5C118);
        v5 = sub_24A62E2F4();
        v6 = sub_24A62EF64();
        if (os_log_type_enabled(v5, v6))
        {
          v7 = swift_slowAlloc();
          *v7 = 0;
          _os_log_impl(&dword_24A503000, v5, v6, "🧭 FMFindingSession: Automatically transitioning to ranging part.", v7, 2u);
          MEMORY[0x24C21BBE0](v7, -1, -1);
        }

        sub_24A60FEC8((v0 + 176));
        sub_24A508C54((v0 + 176));
        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_7;
  }

  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 296);
  v9 = sub_24A62E314();
  sub_24A506EB8(v9, qword_27EF5C118);
  sub_24A508AE4(v8, v0 + 216);
  v10 = sub_24A62E2F4();
  v11 = sub_24A62EF64();
  if (os_log_type_enabled(v10, v11))
  {
    v13 = *(v0 + 328);
    v12 = *(v0 + 336);
    v24 = *(v0 + 320);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136315138;
    v16 = *(v0 + 240);
    v17 = *(v0 + 248);
    sub_24A50A204((v0 + 216), v16);
    (*(v17 + 16))(v16, v17);
    sub_24A61BDB4(&qword_27EF4F660, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v18 = sub_24A62F614();
    v20 = v19;
    (*(v13 + 8))(v12, v24);
    sub_24A508C54((v0 + 216));
    v21 = sub_24A509BA8(v18, v20, &v25);

    *(v14 + 4) = v21;
    _os_log_impl(&dword_24A503000, v10, v11, "🧭 FMFindingSession: No ranging parts in the group for findable: %s.", v14, 0xCu);
    sub_24A508C54(v15);
    MEMORY[0x24C21BBE0](v15, -1, -1);
    MEMORY[0x24C21BBE0](v14, -1, -1);
  }

  else
  {

    sub_24A508C54((v0 + 216));
  }

  sub_24A60FEC8(*(v0 + 296));
LABEL_16:

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_24A615C1C()
{
  v24 = v0;

  v1 = v0[49];
  if (v0[50])
  {
    if (*(v1 + 16))
    {
      sub_24A508AE4(v1 + 32, (v0 + 22));

      if (qword_27EF4E9A0 == -1)
      {
LABEL_4:
        v2 = sub_24A62E314();
        sub_24A506EB8(v2, qword_27EF5C118);
        v3 = sub_24A62E2F4();
        v4 = sub_24A62EF64();
        if (os_log_type_enabled(v3, v4))
        {
          v5 = swift_slowAlloc();
          *v5 = 0;
          _os_log_impl(&dword_24A503000, v3, v4, "🧭 FMFindingSession: Automatically transitioning to ranging part.", v5, 2u);
          MEMORY[0x24C21BBE0](v5, -1, -1);
        }

        sub_24A60FEC8(v0 + 22);
        sub_24A508C54(v0 + 22);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_4;
  }

  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v6 = v0[37];
  v7 = sub_24A62E314();
  sub_24A506EB8(v7, qword_27EF5C118);
  sub_24A508AE4(v6, (v0 + 27));
  v8 = sub_24A62E2F4();
  v9 = sub_24A62EF64();
  if (os_log_type_enabled(v8, v9))
  {
    v11 = v0[41];
    v10 = v0[42];
    v22 = v0[40];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    v14 = v0[30];
    v15 = v0[31];
    sub_24A50A204(v0 + 27, v14);
    (*(v15 + 16))(v14, v15);
    sub_24A61BDB4(&qword_27EF4F660, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v16 = sub_24A62F614();
    v18 = v17;
    (*(v11 + 8))(v10, v22);
    sub_24A508C54(v0 + 27);
    v19 = sub_24A509BA8(v16, v18, &v23);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_24A503000, v8, v9, "🧭 FMFindingSession: No ranging parts in the group for findable: %s.", v12, 0xCu);
    sub_24A508C54(v13);
    MEMORY[0x24C21BBE0](v13, -1, -1);
    MEMORY[0x24C21BBE0](v12, -1, -1);
  }

  else
  {

    sub_24A508C54(v0 + 27);
  }

  sub_24A60FEC8(v0[37]);
LABEL_13:

  v20 = v0[1];

  return v20();
}

void sub_24A615FB0(char a1, char a2, uint64_t a3)
{
  v5 = type metadata accessor for FMFindingSession.Error(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 & 1) == 0 && (a1)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_storeEnumTagMultiPayload();
      sub_24A60BC20(v7);
      swift_unknownObjectRelease();
      sub_24A61B070(v7, type metadata accessor for FMFindingSession.Error);
    }
  }
}

uint64_t sub_24A616098(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = result + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(v4, a2, ObjectType, v6);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A616150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for FMFindingSessionState(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v13 = sub_24A62E314();
  sub_24A506EB8(v13, qword_27EF5C118);
  sub_24A508CE4(a2, v38);
  v14 = sub_24A62E2F4();
  v15 = sub_24A62EF34();
  sub_24A517ABC(a2);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38[0] = v37;
    *v16 = 136315138;
    v17 = sub_24A576980();
    v19 = sub_24A509BA8(v17, v18, v38);
    v36 = a2;
    v20 = v7;
    v21 = v19;

    *(v16 + 4) = v21;
    v7 = v20;
    v4 = v3;
    v22 = v15;
    v23 = v36;
    _os_log_impl(&dword_24A503000, v14, v22, "🧭 FMFindingSession: Received new state from FMFindingLocalizer: %s", v16, 0xCu);
    v24 = v37;
    sub_24A508C54(v37);
    MEMORY[0x24C21BBE0](v24, -1, -1);
    MEMORY[0x24C21BBE0](v16, -1, -1);
  }

  else
  {

    v23 = a2;
  }

  v25 = *(v4 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_stateUpdateLock);
  os_unfair_lock_lock(v25 + 4);
  v26 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  sub_24A61C0D4(v4 + v26, v9, type metadata accessor for FMFindingSessionState);
  v27 = *(v9 + 8);
  sub_24A508CE4(v23, v38);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38[0] = v27;
  sub_24A5578E0(v23, a3, isUniquelyReferenced_nonNull_native);
  v29 = v38[0];
  v30 = *v9;
  v31 = *(v9 + 1);
  sub_24A50D63C((v9 + 24), (v12 + 24), &unk_27EF522E0, qword_24A637660);
  v32 = *(v7 + 36);
  v33 = sub_24A62E214();
  (*(*(v33 - 8) + 16))(&v12[v32], &v9[v32], v33);
  v34 = *(v9 + 2);
  *v12 = v30;
  *(v12 + 8) = v29;
  *(v12 + 1) = v31;
  *(v12 + 2) = v34;

  sub_24A61B070(v9, type metadata accessor for FMFindingSessionState);
  os_unfair_lock_unlock(v25 + 4);
  sub_24A61C0D4(v12, v9, type metadata accessor for FMFindingSessionState);
  sub_24A60F438(v9);
  sub_24A6104A8();
  return sub_24A61B070(v12, type metadata accessor for FMFindingSessionState);
}

void sub_24A6164C0(void *a1, __int128 *a2, int a3, uint64_t a4)
{
  v54 = a4;
  v55 = a1;
  v53 = a3;
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[2];
  v68 = a2[3];
  v69 = v6;
  v70[0] = v7;
  v9 = a2[1];
  v65 = *a2;
  v66 = v9;
  *(v70 + 15) = *(a2 + 95);
  v67 = v8;
  v10 = type metadata accessor for FMFindingSessionState(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v51 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - v17;
  v19 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  v56 = v4;
  sub_24A61C0D4(v4 + v19, v18, type metadata accessor for FMFindingSessionState);
  v20 = *(v18 + 8);
  if (!*(v20 + 16) || (v21 = sub_24A515AC8(&v18[*(v10 + 36)]), (v22 & 1) == 0))
  {
    sub_24A62F444();
    __break(1u);
    return;
  }

  v23 = *(v20 + 56) + 104 * v21;
  v25 = *(v23 + 16);
  v24 = *(v23 + 32);
  v59[0] = *v23;
  v59[1] = v25;
  v59[2] = v24;
  v26 = *(v23 + 48);
  v27 = *(v23 + 64);
  v28 = *(v23 + 80);
  *(v60 + 13) = *(v23 + 93);
  v59[4] = v27;
  v60[0] = v28;
  v59[3] = v26;
  sub_24A508CE4(v59, v61);
  sub_24A61B070(v18, type metadata accessor for FMFindingSessionState);
  if ((LODWORD(v60[1]) | 0x2000000u) >> 25 != 3)
  {
    v36 = LODWORD(v60[1]) | (BYTE4(v60[1]) << 32);
    sub_24A517ABC(v59);
    v37 = v56;
    v52 = *(v56 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_stateUpdateLock);
    os_unfair_lock_lock(v52 + 4);
    v51 = type metadata accessor for FMFindingSessionState;
    sub_24A61C0D4(v37 + v19, v12, type metadata accessor for FMFindingSessionState);
    v61[4] = v69;
    *v62 = v70[0];
    *&v62[15] = *(v70 + 15);
    v61[0] = v65;
    v61[1] = v66;
    v61[2] = v67;
    v61[3] = v68;
    v63 = v53;
    v64 = BYTE4(v36);
    v38 = *(v12 + 8);

    sub_24A55B388(a2, v58);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58[0] = v38;
    sub_24A5578E0(v61, v54, isUniquelyReferenced_nonNull_native);
    v40 = v58[0];
    v41 = *v12;
    v42 = *(v12 + 1);
    sub_24A50D63C((v12 + 24), (v15 + 24), &unk_27EF522E0, qword_24A637660);
    v43 = *(v10 + 36);
    v44 = sub_24A62E214();
    (*(*(v44 - 8) + 16))(&v15[v43], &v12[v43], v44);
    v45 = *(v12 + 2);
    *v15 = v41;
    *(v15 + 8) = v40;
    *(v15 + 1) = v42;
    *(v15 + 2) = v45;

    sub_24A61B070(v12, type metadata accessor for FMFindingSessionState);
    os_unfair_lock_unlock(v52 + 4);
    sub_24A61C0D4(v15, v12, v51);
    sub_24A60F438(v12);
    v46 = v55[3];
    v47 = v55[4];
    sub_24A50A204(v55, v46);
    (*(v47 + 8))(&v57, v46, v47);
    v48 = (v57 >> 13) & 3;
    if (v48)
    {
      if (v48 == 1)
      {
        v49 = sub_24A62DF44();
        v58[3] = v49;
        v58[4] = sub_24A61BDB4(&qword_27EF4FE90, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
        v50 = sub_24A5292E8(v58);
        (*(*(v49 - 8) + 104))(v50, *MEMORY[0x277D089D0], v49);
        LOBYTE(v49) = MEMORY[0x24C219850](v58);
        sub_24A508C54(v58);
        if (v49)
        {
LABEL_15:
          sub_24A61B070(v15, type metadata accessor for FMFindingSessionState);
          return;
        }
      }

      else if ((v57 & 0x8100) == 0x100)
      {
        goto LABEL_15;
      }
    }

    sub_24A6104A8();
    goto LABEL_15;
  }

  sub_24A517ABC(v59);
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v29 = sub_24A62E314();
  sub_24A506EB8(v29, qword_27EF5C118);
  v30 = sub_24A62E2F4();
  v31 = sub_24A62EF34();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_24A503000, v30, v31, "🧭 FMFindingSession: Received new measurement & trend from FMFindingLocalizer, but not updating state", v32, 2u);
    MEMORY[0x24C21BBE0](v32, -1, -1);
  }

  v33 = sub_24A62E2F4();
  v34 = sub_24A62EF34();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_24A503000, v33, v34, "🧭 FMFindingSession: should not update if we're not connected", v35, 2u);
    MEMORY[0x24C21BBE0](v35, -1, -1);
  }
}

uint64_t sub_24A616ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = result + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      (*(v8 + 32))(v6, a2, a3, ObjectType, v8);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A616B90(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FMFindingLocalizerError(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for FMFindingSession.Error(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_24A61C0D4(a2, v5, type metadata accessor for FMFindingLocalizerError);
    sub_24A612D8C(v5, v8);
    sub_24A60BC20(v8);
    swift_unknownObjectRelease();
    return sub_24A61B070(v8, type metadata accessor for FMFindingSession.Error);
  }

  return result;
}

void sub_24A616CC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A62E214();
  v62 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v67 = &v48 - v8;
  MEMORY[0x28223BE20](v9);
  v60 = &v48 - v10;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v11 = 0;
    v50 = a1;
    v12 = *(a1 + 56);
    v48 = a1 + 56;
    v13 = 1 << *(a1 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & v12;
    v16 = (v13 + 63) >> 6;
    v17 = a2 + 56;
    v65 = v62 + 16;
    v56 = v62 + 32;
    v18 = (v62 + 8);
    v49 = v16;
    v55 = a2;
    v54 = a2 + 56;
    if (v15)
    {
      while (2)
      {
        v19 = __clz(__rbit64(v15));
        v51 = (v15 - 1) & v15;
LABEL_13:
        v52 = v11;
        v22 = *(*(v50 + 48) + 8 * (v19 | (v11 << 6)));
        sub_24A62F714();

        sub_24A61AE44(v68, v22);
        v23 = sub_24A62F754();
        v24 = -1 << *(a2 + 32);
        v25 = v23 & ~v24;
        if (((*(v17 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
        {
LABEL_40:

          return;
        }

        v26 = ~v24;
        v64 = v22 + 56;
        v66 = v22;
        v53 = ~v24;
        while (1)
        {
          v27 = *(*(a2 + 48) + 8 * v25);
          if (v27 == v22)
          {
            break;
          }

          if (*(v27 + 16) == *(v22 + 16))
          {
            v28 = *(v27 + 56);
            v58 = v27 + 56;
            v59 = v25;
            v29 = 1 << *(v27 + 32);
            if (v29 < 64)
            {
              v30 = ~(-1 << v29);
            }

            else
            {
              v30 = -1;
            }

            v31 = v30 & v28;
            v57 = (v29 + 63) >> 6;

            v33 = 0;
            v63 = v32;
            if (!v31)
            {
LABEL_24:
              v35 = v33;
              while (1)
              {
                v33 = v35 + 1;
                if (__OFADD__(v35, 1))
                {
                  break;
                }

                if (v33 >= v57)
                {

                  a2 = v55;
                  v17 = v54;
                  goto LABEL_37;
                }

                v36 = *(v58 + 8 * v33);
                ++v35;
                if (v36)
                {
                  v34 = __clz(__rbit64(v36));
                  v61 = (v36 - 1) & v36;
                  goto LABEL_29;
                }
              }

              __break(1u);
              goto LABEL_43;
            }

            while (1)
            {
              v34 = __clz(__rbit64(v31));
              v61 = (v31 - 1) & v31;
LABEL_29:
              v37 = v62;
              v38 = *(v62 + 72);
              v39 = *(v62 + 16);
              v40 = v60;
              v39(v60, *(v32 + 48) + v38 * (v34 | (v33 << 6)), v4);
              (*(v37 + 32))(v67, v40, v4);
              v41 = v66;
              sub_24A61BDB4(&qword_27EF52310, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
              v42 = sub_24A62EBB4();
              v43 = -1 << *(v41 + 32);
              v44 = v42 & ~v43;
              if (((*(v64 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
              {
                break;
              }

              v45 = ~v43;
              while (1)
              {
                v39(v6, *(v66 + 48) + v44 * v38, v4);
                sub_24A61BDB4(&qword_27EF501E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
                v46 = sub_24A62EBD4();
                v47 = *v18;
                (*v18)(v6, v4);
                if (v46)
                {
                  break;
                }

                v44 = (v44 + 1) & v45;
                if (((*(v64 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
                {
                  goto LABEL_15;
                }
              }

              v47(v67, v4);
              v32 = v63;
              v31 = v61;
              if (!v61)
              {
                goto LABEL_24;
              }
            }

LABEL_15:

            (*v18)(v67, v4);
            a2 = v55;
            v17 = v54;
            v22 = v66;
            v25 = v59;
            v26 = v53;
          }

          v25 = (v25 + 1) & v26;
          if (((*(v17 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            goto LABEL_40;
          }
        }

LABEL_37:

        v11 = v52;
        v16 = v49;
        v15 = v51;
        if (v51)
        {
          continue;
        }

        break;
      }
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        return;
      }

      v21 = *(v48 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v51 = (v21 - 1) & v21;
        goto LABEL_13;
      }
    }

LABEL_43:
    __break(1u);
  }
}

void sub_24A61725C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A62E214();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v33 - v9;
  v12 = MEMORY[0x28223BE20](v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v40 = v5 + 32;
    v42 = a2 + 56;
    v43 = v5 + 16;
    v20 = (v5 + 8);
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v5;
    v37 = a1;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(a1 + 48);
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v44, v13, v4);
        sub_24A61BDB4(&qword_27EF52310, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v26 = sub_24A62EBB4();
        v27 = -1 << *(a2 + 32);
        v28 = v26 & ~v27;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          break;
        }

        v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = a2;
        v30 = ~v27;
        while (1)
        {
          (v25)(v7, *(v29 + 48) + v28 * v41, v4);
          sub_24A61BDB4(&qword_27EF501E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
          v31 = sub_24A62EBD4();
          v32 = *v20;
          (*v20)(v7, v4);
          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v32(v44, v4);
            return;
          }
        }

        v32(v44, v4);
        a2 = v29;
        v5 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

      (*v20)(v44, v4);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

char *sub_24A61760C(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A508FA4(&qword_27EF52438, &unk_24A63C0F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_24A617710(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A508FA4(&qword_27EF4F9A0, &unk_24A6349F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_24A61781C(void *result, int64_t a2, char a3, void *a4)
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

  sub_24A508FA4(&qword_27EF52458, &qword_24A63C118);
  v10 = *(sub_24A508FA4(&unk_27EF52460, &unk_24A63C120) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_24A508FA4(&unk_27EF52460, &unk_24A63C120) - 8);
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

char *sub_24A617A30(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A508FA4(&unk_27EF52400, &qword_24A63B068);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_24A617B34(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_24A508FA4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_24A508FA4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_24A617C9C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24A62E214();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_24A61BDB4(&qword_27EF52310, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = sub_24A62EBB4();
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
      sub_24A61BDB4(&qword_27EF501E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_24A62EBD4();
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
    sub_24A619BC0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_24A617F7C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24A62E2B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_24A61BDB4(&qword_27EF501F8, MEMORY[0x277CD89F8], MEMORY[0x277CD8A00]);
  v33 = a2;
  v11 = sub_24A62EBB4();
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
      sub_24A61BDB4(&qword_27EF50200, MEMORY[0x277CD89F8], MEMORY[0x277CD8A08]);
      v21 = sub_24A62EBD4();
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
    sub_24A619E88(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_24A61825C(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  sub_24A62F714();
  sub_24A61AE44(v16, a2);
  v6 = sub_24A62F754();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {

      sub_24A61725C(v10, a2);
      v12 = v11;

      if (v12)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v5 + 48) + 8 * v8);

    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v16[0] = *v2;

    sub_24A61A150(v14, v8, isUniquelyReferenced_nonNull_native);
    *v2 = *&v16[0];
    *a1 = a2;
    return 1;
  }
}

void sub_24A61839C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_24A62E214();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_24A508FA4(&qword_27EF52428, &qword_24A63C0E0);
  v6 = sub_24A62F354();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_24A61BDB4(&qword_27EF52310, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v21 = sub_24A62EBB4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_24A6186F8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_24A62E2B4();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_24A508FA4(&qword_27EF52430, &qword_24A63C0E8);
  v6 = sub_24A62F354();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_24A61BDB4(&qword_27EF501F8, MEMORY[0x277CD89F8], MEMORY[0x277CD8A00]);
      v21 = sub_24A62EBB4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_24A618A54(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_24A508FA4(&unk_27EF52440, &unk_24A63C100);
  v4 = sub_24A62F354();
  v5 = v4;
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
    for (i = v4 + 56; v10; ++*(v5 + 16))
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_24A62F714();
      sub_24A61AE44(v19, v16);
      sub_24A62F754();
      v17 = sub_24A62F284();
      *(i + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v5 + 48) + 8 * v17) = v16;
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v18 = 1 << *(v3 + 32);
    if (v18 >= 64)
    {
      bzero((v3 + 56), ((v18 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v18;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void *sub_24A618C34(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_24A618E88(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_24A618CC4(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    sub_24A618E88((v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
    v10 = v9;
  }

  else
  {
    v12 = swift_slowAlloc();

    v10 = sub_24A618C34(v12, v6, a2, a1);

    MEMORY[0x24C21BBE0](v12, -1, -1);
  }

  return v10;
}

void sub_24A618E88(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a2;
  v66 = a1;
  v6 = sub_24A62E214();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v75 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v61 - v10;
  MEMORY[0x28223BE20](v12);
  v76 = (v61 - v13);
  v15 = MEMORY[0x28223BE20](v14);
  v65 = v61 - v16;
  v17 = *(a3 + 16);
  v18 = *(a4 + 16);
  v77 = v7 + 16;
  v73 = a4;
  v74 = a3;
  v69 = v7;
  if (v18 >= v17)
  {
    v42 = 0;
    v43 = *(a3 + 56);
    v64 = a3 + 56;
    v44 = 1 << *(a3 + 32);
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v46 = v45 & v43;
    v47 = (v44 + 63) >> 6;
    v72 = a4 + 56;
    v76 = (v7 + 8);
    j = v47;
    v68 = 0;
    if (v46)
    {
      goto LABEL_30;
    }

LABEL_31:
    v49 = v42;
    while (1)
    {
      v42 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v42 >= v47)
      {
LABEL_44:

        sub_24A619898(v66, v62, v68, a3);
        return;
      }

      v50 = *(v64 + 8 * v42);
      ++v49;
      if (v50)
      {
        v48 = __clz(__rbit64(v50));
        for (i = ((v50 - 1) & v50); ; i = ((v46 - 1) & v46))
        {
          v51 = v48 | (v42 << 6);
          v52 = *(a3 + 48);
          v53 = *(v7 + 72);
          v70 = v51;
          v54 = *(v7 + 16);
          v54(v75, v52 + v53 * v51, v6, v15);
          sub_24A61BDB4(&qword_27EF52310, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
          v55 = sub_24A62EBB4();
          v56 = -1 << *(a4 + 32);
          v57 = v55 & ~v56;
          if ((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
          {
            v65 = (v76 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v58 = ~v56;
            while (1)
            {
              (v54)(v11, *(v73 + 48) + v57 * v53, v6);
              sub_24A61BDB4(&qword_27EF501E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
              v59 = sub_24A62EBD4();
              v60 = *v76;
              (*v76)(v11, v6);
              if (v59)
              {
                break;
              }

              v57 = (v57 + 1) & v58;
              if (((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
              {
                a4 = v73;
                goto LABEL_42;
              }
            }

            v60(v75, v6);
            v7 = v69;
            *(v66 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
            v47 = j;
            v27 = __OFADD__(v68++, 1);
            a4 = v73;
            a3 = v74;
            v46 = i;
            if (v27)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v60 = *v76;
LABEL_42:
            v60(v75, v6);
            a3 = v74;
            v7 = v69;
            v47 = j;
            v46 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v48 = __clz(__rbit64(v46));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v68 = 0;
    v19 = a4;
    v20 = 0;
    v22 = v19 + 56;
    v21 = *(v19 + 56);
    v61[0] = v22;
    v23 = 1 << *(v22 - 24);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & v21;
    v26 = (v23 + 63) >> 6;
    v63 = v7 + 32;
    v64 = v26;
    v70 = a3 + 56;
    v75 = (v7 + 8);
    if (v25)
    {
      goto LABEL_9;
    }

LABEL_10:
    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v20 >= v26)
      {
        goto LABEL_44;
      }

      v30 = *(v61[0] + 8 * v20);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        for (j = (v30 - 1) & v30; ; j = (v25 - 1) & v25)
        {
          v31 = *(v7 + 72);
          v32 = *(v73 + 48) + v31 * (v28 | (v20 << 6));
          v33 = v65;
          i = *(v7 + 16);
          v72 = v31;
          i(v65, v32, v6, v15);
          (*(v7 + 32))(v76, v33, v6);
          sub_24A61BDB4(&qword_27EF52310, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
          v34 = sub_24A62EBB4();
          v35 = -1 << *(a3 + 32);
          v36 = v34 & ~v35;
          v37 = v36 >> 6;
          v38 = 1 << v36;
          if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) != 0)
          {
            v61[1] = v75 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v39 = ~v35;
            while (1)
            {
              (i)(v11, *(v74 + 48) + v36 * v72, v6);
              sub_24A61BDB4(&qword_27EF501E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
              v40 = sub_24A62EBD4();
              v41 = *v75;
              (*v75)(v11, v6);
              if (v40)
              {
                break;
              }

              v36 = (v36 + 1) & v39;
              v37 = v36 >> 6;
              v38 = 1 << v36;
              if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) == 0)
              {
                a3 = v74;
                goto LABEL_21;
              }
            }

            v41(v76, v6);
            v25 = j;
            v66[v37] |= v38;
            v7 = v69;
            v27 = __OFADD__(v68++, 1);
            a3 = v74;
            v26 = v64;
            if (v27)
            {
              goto LABEL_48;
            }

            if (!v25)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v41 = *v75;
LABEL_21:
            v41(v76, v6);
            v7 = v69;
            v26 = v64;
            v25 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v28 = __clz(__rbit64(v25));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t sub_24A619570(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_24A62E2B4();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_24A508FA4(&qword_27EF52430, &qword_24A63C0E8);
  result = sub_24A62F364();
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
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_24A61BDB4(&qword_27EF501F8, MEMORY[0x277CD89F8], MEMORY[0x277CD8A00]);
    result = sub_24A62EBB4();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

uint64_t sub_24A619898(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_24A62E214();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_24A508FA4(&qword_27EF52428, &qword_24A63C0E0);
  result = sub_24A62F364();
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
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_24A61BDB4(&qword_27EF52310, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    result = sub_24A62EBB4();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

uint64_t sub_24A619BC0(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_24A62E214();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24A61839C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_24A61A2DC(MEMORY[0x277CC95F0], &qword_27EF52428, &qword_24A63C0E0);
      goto LABEL_12;
    }

    sub_24A61A664(v11 + 1);
  }

  v13 = *v3;
  sub_24A61BDB4(&qword_27EF52310, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v14 = sub_24A62EBB4();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_24A61BDB4(&qword_27EF501E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v22 = sub_24A62EBD4();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24A62F664();
  __break(1u);
  return result;
}

uint64_t sub_24A619E88(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_24A62E2B4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24A6186F8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_24A61A2DC(MEMORY[0x277CD89F8], &qword_27EF52430, &qword_24A63C0E8);
      goto LABEL_12;
    }

    sub_24A61A980(v11 + 1);
  }

  v13 = *v3;
  sub_24A61BDB4(&qword_27EF501F8, MEMORY[0x277CD89F8], MEMORY[0x277CD8A00]);
  v14 = sub_24A62EBB4();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_24A61BDB4(&qword_27EF50200, MEMORY[0x277CD89F8], MEMORY[0x277CD8A08]);
      v22 = sub_24A62EBD4();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24A62F664();
  __break(1u);
  return result;
}

void sub_24A61A150(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24A618A54(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_24A61A514();
      goto LABEL_12;
    }

    sub_24A61AC9C(v6 + 1);
  }

  v8 = *v3;
  sub_24A62F714();
  sub_24A61AE44(v20, a1);
  v9 = sub_24A62F754();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_24A508FA4(&qword_27EF51130, &qword_24A6389E0);

      sub_24A61725C(v12, a1);
      v14 = v13;

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v19;
  *(*v19 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_24A62F664();
  __break(1u);
}

void sub_24A61A2DC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  sub_24A508FA4(a2, a3);
  v11 = *v3;
  v12 = sub_24A62F344();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    v14 = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || v14 >= v11 + 56 + 8 * v15)
    {
      memmove(v14, (v11 + 56), 8 * v15);
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
    v29 = v8 + 16;
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
      (*(v8 + 32))(*(v13 + 48) + v25, v10, v7);
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
}

void sub_24A61A514()
{
  v1 = v0;
  sub_24A508FA4(&unk_27EF52440, &unk_24A63C100);
  v2 = *v0;
  v3 = sub_24A62F344();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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
}

void sub_24A61A664(uint64_t a1)
{
  v2 = v1;
  v34 = sub_24A62E214();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_24A508FA4(&qword_27EF52428, &qword_24A63C0E0);
  v7 = sub_24A62F354();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
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
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_24A61BDB4(&qword_27EF52310, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v21 = sub_24A62EBB4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
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

        v2 = v29;
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
}

void sub_24A61A980(uint64_t a1)
{
  v2 = v1;
  v34 = sub_24A62E2B4();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_24A508FA4(&qword_27EF52430, &qword_24A63C0E8);
  v7 = sub_24A62F354();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
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
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_24A61BDB4(&qword_27EF501F8, MEMORY[0x277CD89F8], MEMORY[0x277CD8A00]);
      v21 = sub_24A62EBB4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
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

        v2 = v29;
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
}

void sub_24A61AC9C(uint64_t a1)
{
  v2 = *v1;
  sub_24A508FA4(&unk_27EF52440, &unk_24A63C100);
  v3 = sub_24A62F354();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    for (i = v3 + 56; v8; ++*(v4 + 16))
    {
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
      sub_24A62F714();

      sub_24A61AE44(v16, v14);
      sub_24A62F754();
      v15 = sub_24A62F284();
      *(i + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v4 + 48) + 8 * v15) = v14;
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_14;
      }

      v13 = *(v2 + 56 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v8 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    *v1 = v4;
  }
}

void sub_24A61AE44(__int128 *a1, uint64_t a2)
{
  v4 = sub_24A62E214();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v24 = a1[2];
  v25 = v8;
  v26 = *(a1 + 8);
  v10 = *a1;
  v9 = a1[1];
  v21[0] = a1;
  v22 = v10;
  v23 = v9;
  v11 = sub_24A62F754();
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v21[2] = v5 + 16;
  v21[3] = v11;
  v21[1] = v5 + 8;

  v16 = 0;
  for (i = 0; v14; v16 ^= v20)
  {
    v18 = i;
LABEL_9:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v5 + 16))(v7, *(a2 + 48) + *(v5 + 72) * (v19 | (v18 << 6)), v4);
    sub_24A61BDB4(&qword_27EF52310, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v20 = sub_24A62EBB4();
    (*(v5 + 8))(v7, v4);
  }

  while (1)
  {
    v18 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v18 >= v15)
    {

      MEMORY[0x24C21B040](v16);
      return;
    }

    v14 = *(a2 + 56 + 8 * v18);
    ++i;
    if (v14)
    {
      i = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_24A61B070(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A61B0D0(uint64_t a1)
{
  v2 = sub_24A62E214();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24A61BDB4(&qword_27EF52310, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  result = MEMORY[0x24C21A7A0](v9, v2, v10);
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
      v13(v5, v15, v2);
      sub_24A617C9C(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_24A61B26C(uint64_t a1)
{
  v2 = sub_24A62E2B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24A61BDB4(&qword_27EF501F8, MEMORY[0x277CD89F8], MEMORY[0x277CD8A00]);
  result = MEMORY[0x24C21A7A0](v9, v2, v10);
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
      v13(v5, v15, v2);
      sub_24A617F7C(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_24A61B408(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24A508FA4(&qword_27EF51130, &qword_24A6389E0);
  v4 = sub_24A5ABA0C();
  result = MEMORY[0x24C21A7A0](v2, v3, v4);
  v9 = result;
  if (v2)
  {
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;

      sub_24A61825C(&v8, v7);

      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

void sub_24A61B4A4(void *a1)
{
  v2 = [a1 uwbPreciseDistanceAvailability] == 0;
  v3 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_handler);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_handler + 8);

    v3(v2, 0);
    sub_24A50D354(v3, v4);
  }

  v5 = v1 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_result;
  v6 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_result);
  *v5 = v2;
  v7 = *(v5 + 8);
  *(v5 + 8) = 0;
  sub_24A61BD7C(v6, v7);

  sub_24A612894(0, 0);
}

void sub_24A61B564(id a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_handler);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_handler + 8);

    v3(a1, 1);
    sub_24A50D354(v3, v4);
  }

  v5 = v1 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_result;
  v6 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_result);
  *v5 = a1;
  v7 = *(v5 + 8);
  *(v5 + 8) = 1;
  v8 = a1;
  sub_24A61BD7C(v6, v7);

  sub_24A612894(0, 0);
}

uint64_t _sSh11FMFindingUIShy10Foundation4UUIDVGRszrlE4from9findablesShyAEGSayAA10FMFindable_pG_tFZ_0(uint64_t a1)
{
  v2 = sub_24A62E214();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v22 = MEMORY[0x277D84F90];
    sub_24A58D8A8(0, v6, 0);
    v7 = v22;
    v8 = a1 + 32;
    do
    {
      sub_24A508AE4(v8, v19);
      v9 = v20;
      v10 = v21;
      sub_24A50A204(v19, v20);
      (*(v10 + 16))(v9, v10);
      sub_24A508C54(v19);
      v22 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_24A58D8A8((v11 > 1), v12 + 1, 1);
        v7 = v22;
      }

      *(v7 + 16) = v12 + 1;
      (*(v3 + 32))(v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v5, v2);
      v8 += 40;
      --v6;
    }

    while (v6);
  }

  v13 = sub_24A61B0D0(v7);

  sub_24A508FA4(&qword_27EF52450, &qword_24A63C110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A633830;
  *(inited + 32) = v13;
  v15 = inited + 32;
  v16 = sub_24A61B408(inited);
  swift_setDeallocating();
  sub_24A50D6A4(v15, &qword_27EF51130, &qword_24A6389E0);
  return v16;
}

uint64_t sub_24A61B954(uint64_t a1)
{
  result = type metadata accessor for FMFindingSessionState(319);
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

void sub_24A61BB38(uint64_t a1)
{
  sub_24A61BD0C(319, &qword_27EF4FF80, sub_24A61BC28);
  if (v1 <= 0x3F)
  {
    sub_24A61BD0C(319, &qword_27EF4FF90, MEMORY[0x277CC95F0]);
    if (v2 <= 0x3F)
    {
      sub_24A61BC8C(319);
      if (v3 <= 0x3F)
      {
        sub_24A61BD0C(319, &qword_27EF523F8, sub_24A61BC28);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_24A61BC28(uint64_t a1)
{
  if (!qword_27EF523E0)
  {
    sub_24A50E1E0(&unk_27EF4F990, &unk_24A6349E0);
    v1 = sub_24A62F1C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF523E0);
    }
  }
}

void sub_24A61BC8C(uint64_t a1)
{
  if (!qword_27EF523E8)
  {
    sub_24A62E214();
    sub_24A50E1E0(&qword_27EF4F9B0, qword_24A6389A0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EF523E8);
    }
  }
}

void sub_24A61BD0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_24A61BD58(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_24A61BD70(result, a2 & 1);
  }

  return result;
}

id sub_24A61BD70(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_24A61BD7C(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_24A51909C(a1, a2 & 1);
  }
}

uint64_t sub_24A61BDB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A61BDFC()
{
  swift_unknownObjectRelease();

  sub_24A508C54((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24A61BE4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24A515E5C;

  return sub_24A614ACC(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_24A61BF3C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A61BF74()
{
  v1 = sub_24A508FA4(&qword_27EF52420, &qword_24A63C0D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_24A61C01C(void *a1, char a2)
{
  v5 = *(sub_24A508FA4(&qword_27EF52420, &qword_24A63C0D8) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_24A6127DC(a1, a2 & 1, v2 + v6, v7);
}

uint64_t sub_24A61C0D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A61C13C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&qword_27EF522C8, &qword_24A63BF10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A61C1CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFindingSessionState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A61C230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFindingSessionState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

CVPixelBufferRef sub_24A61C2D0(CVPixelBufferRef result, double a2)
{
  v100[6] = *MEMORY[0x277D85DE8];
  if (result)
  {
    v3 = v2;
    v5 = result;
    v6 = CVPixelBufferGetWidth(v5) * a2;
    v7 = CVPixelBufferGetHeight(v5) * a2;
    sub_24A508FA4(&qword_27EF52490, &qword_24A63C188);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_24A633E60;
    v9 = *MEMORY[0x277CC4DE8];
    v10 = sub_24A62EC34();
    v11 = MEMORY[0x277D837D0];
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 32) = v10;
    *(v8 + 40) = v12;
    v13 = [objc_allocWithZone(MEMORY[0x277CBEAC0]) init];
    *(v8 + 88) = sub_24A61D22C();
    *(v8 + 64) = v13;
    v14 = *MEMORY[0x277CC4E30];
    v15 = sub_24A62EC34();
    *(v8 + 120) = v11;
    *(v8 + 96) = v15;
    *(v8 + 104) = v16;
    v17 = MEMORY[0x277D84CC0];
    *(v8 + 152) = MEMORY[0x277D84CC0];
    *(v8 + 128) = 1111970369;
    v18 = *MEMORY[0x277CC4EC8];
    v19 = sub_24A62EC34();
    *(v8 + 184) = v11;
    v20 = MEMORY[0x277D85048];
    *(v8 + 160) = v19;
    *(v8 + 168) = v21;
    *(v8 + 216) = v20;
    *(v8 + 192) = v6;
    v22 = *MEMORY[0x277CC4DD8];
    v23 = sub_24A62EC34();
    *(v8 + 248) = v11;
    *(v8 + 224) = v23;
    *(v8 + 232) = v24;
    *(v8 + 280) = v20;
    *(v8 + 256) = v7;
    v25 = sub_24A62EF14();
    swift_beginAccess();
    v26 = *(v2 + 24);
    v27 = MEMORY[0x277CBECE8];
    if (v26)
    {
      v28 = *(v2 + 16);
      if (v28)
      {
        v20 = v25;
        v29 = v28;
        v30 = sub_24A62F164();

        v26 = *(v3 + 24);
        if (v30)
        {
          if (v26)
          {
            v20 = v26;
LABEL_10:
            swift_beginAccess();
            if (!*(v3 + 32))
            {
              swift_beginAccess();
              v36 = VTPixelTransferSessionCreate(0, (v3 + 32));
              swift_endAccess();
              if (v36 != sub_24A62E324())
              {
                sub_24A508FA4(&qword_27EF50530, qword_24A636270);
                v75 = swift_allocObject();
                v76 = MEMORY[0x277D849A8];
                *(v75 + 16) = xmmword_24A633830;
                v77 = MEMORY[0x277D84A20];
                *(v75 + 56) = v76;
                *(v75 + 64) = v77;
                *(v75 + 32) = v36;
                v78 = sub_24A62EC24();
                v80 = v79;
                if (qword_27EF4E990 != -1)
                {
                  swift_once();
                }

                v81 = sub_24A62E314();
                sub_24A506EB8(v81, qword_27EF5C0E8);

                v82 = sub_24A62E2F4();
                v83 = sub_24A62EF64();

                if (os_log_type_enabled(v82, v83))
                {
                  v84 = swift_slowAlloc();
                  v85 = swift_slowAlloc();
                  pixelBufferOut[0] = v85;
                  *v84 = 136315138;
                  v86 = sub_24A509BA8(v78, v80, pixelBufferOut);

                  *(v84 + 4) = v86;
                  _os_log_impl(&dword_24A503000, v82, v83, "%s", v84, 0xCu);
                  sub_24A508C54(v85);
                  MEMORY[0x24C21BBE0](v85, -1, -1);
                  MEMORY[0x24C21BBE0](v84, -1, -1);
                }

                else
                {
                }

                v52 = *(v3 + 32);
                *(v3 + 32) = 0;
                goto LABEL_68;
              }
            }

            pixelBufferOut[0] = 0;
            PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(*v27, v20, pixelBufferOut);
            if (pixelBufferOut[0])
            {
              v38 = PixelBuffer;
              v39 = pixelBufferOut[0];
              v29 = pixelBufferOut[0];
              if (v38 == sub_24A62E324())
              {
                result = *(v3 + 32);
                if (!result)
                {
                  __break(1u);
                  return result;
                }

                v40 = VTPixelTransferSessionTransferImage(result, v5, v29);
                if (v40 == sub_24A62E324())
                {

                  return v39;
                }

                sub_24A508FA4(&qword_27EF50530, qword_24A636270);
                v87 = swift_allocObject();
                *(v87 + 16) = xmmword_24A6383F0;
                if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                {
                  __break(1u);
                }

                else if (v6 > -9.22337204e18)
                {
                  if (v6 < 9.22337204e18)
                  {
                    v88 = MEMORY[0x277D83B88];
                    v89 = MEMORY[0x277D83C10];
                    *(v87 + 56) = MEMORY[0x277D83B88];
                    *(v87 + 64) = v89;
                    *(v87 + 32) = v6;
                    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                    {
                      if (v7 > -9.22337204e18)
                      {
                        if (v7 < 9.22337204e18)
                        {
                          *(v87 + 96) = v88;
                          *(v87 + 104) = v89;
                          *(v87 + 72) = v7;
                          v90 = MEMORY[0x277D84D30];
                          *(v87 + 136) = v17;
                          *(v87 + 144) = v90;
                          *(v87 + 112) = 66;
                          *(v87 + 176) = v17;
                          *(v87 + 184) = v90;
                          *(v87 + 152) = 71;
                          *(v87 + 216) = v17;
                          *(v87 + 224) = v90;
                          *(v87 + 192) = 82;
                          *(v87 + 256) = v17;
                          *(v87 + 264) = v90;
                          *(v87 + 232) = 65;
                          v17 = sub_24A62EC24();
                          v3 = v91;
                          if (qword_27EF4E990 == -1)
                          {
LABEL_62:
                            v92 = sub_24A62E314();
                            sub_24A506EB8(v92, qword_27EF5C0E8);

                            v93 = sub_24A62E2F4();
                            v94 = sub_24A62EF64();

                            if (os_log_type_enabled(v93, v94))
                            {
                              v95 = swift_slowAlloc();
                              v96 = swift_slowAlloc();
                              v98 = v96;
                              *v95 = 136315138;
                              v97 = sub_24A509BA8(v17, v3, &v98);

                              *(v95 + 4) = v97;
                              _os_log_impl(&dword_24A503000, v93, v94, "%s", v95, 0xCu);
                              sub_24A508C54(v96);
                              MEMORY[0x24C21BBE0](v96, -1, -1);
                              MEMORY[0x24C21BBE0](v95, -1, -1);
                            }

                            else
                            {
                            }

LABEL_41:
                            v52 = pixelBufferOut[0];
LABEL_68:

                            return 0;
                          }

LABEL_100:
                          swift_once();
                          goto LABEL_62;
                        }

LABEL_99:
                        __break(1u);
                        goto LABEL_100;
                      }

LABEL_98:
                      __break(1u);
                      goto LABEL_99;
                    }

LABEL_97:
                    __break(1u);
                    goto LABEL_98;
                  }

LABEL_96:
                  __break(1u);
                  goto LABEL_97;
                }

                __break(1u);
                goto LABEL_96;
              }
            }

            sub_24A508FA4(&qword_27EF50530, qword_24A636270);
            v53 = swift_allocObject();
            *(v53 + 16) = xmmword_24A6383F0;
            if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              __break(1u);
            }

            else if (v6 > -9.22337204e18)
            {
              if (v6 < 9.22337204e18)
              {
                v54 = MEMORY[0x277D83B88];
                v55 = MEMORY[0x277D83C10];
                *(v53 + 56) = MEMORY[0x277D83B88];
                *(v53 + 64) = v55;
                *(v53 + 32) = v6;
                if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  if (v7 > -9.22337204e18)
                  {
                    if (v7 < 9.22337204e18)
                    {
                      *(v53 + 96) = v54;
                      *(v53 + 104) = v55;
                      *(v53 + 72) = v7;
                      v56 = MEMORY[0x277D84D30];
                      *(v53 + 136) = v17;
                      *(v53 + 144) = v56;
                      *(v53 + 112) = 66;
                      *(v53 + 176) = v17;
                      *(v53 + 184) = v56;
                      *(v53 + 152) = 71;
                      *(v53 + 216) = v17;
                      *(v53 + 224) = v56;
                      *(v53 + 192) = 82;
                      *(v53 + 256) = v17;
                      *(v53 + 264) = v56;
                      *(v53 + 232) = 65;
                      v29 = sub_24A62EC24();
                      v3 = v57;
                      if (qword_27EF4E990 == -1)
                      {
LABEL_37:
                        v58 = sub_24A62E314();
                        sub_24A506EB8(v58, qword_27EF5C0E8);

                        v59 = sub_24A62E2F4();
                        v60 = sub_24A62EF64();

                        if (os_log_type_enabled(v59, v60))
                        {
                          v61 = swift_slowAlloc();
                          v62 = swift_slowAlloc();
                          v98 = v62;
                          *v61 = 136315138;
                          v63 = sub_24A509BA8(v29, v3, &v98);

                          *(v61 + 4) = v63;
                          _os_log_impl(&dword_24A503000, v59, v60, "%s", v61, 0xCu);
                          sub_24A508C54(v62);
                          MEMORY[0x24C21BBE0](v62, -1, -1);
                          MEMORY[0x24C21BBE0](v61, -1, -1);
                        }

                        else
                        {
                        }

                        goto LABEL_41;
                      }

LABEL_86:
                      swift_once();
                      goto LABEL_37;
                    }

LABEL_85:
                    __break(1u);
                    goto LABEL_86;
                  }

LABEL_84:
                  __break(1u);
                  goto LABEL_85;
                }

LABEL_83:
                __break(1u);
                goto LABEL_84;
              }

LABEL_82:
              __break(1u);
              goto LABEL_83;
            }

            __break(1u);
            goto LABEL_82;
          }

          sub_24A508FA4(&qword_27EF50530, qword_24A636270);
          v64 = swift_allocObject();
          *(v64 + 16) = xmmword_24A6383F0;
          if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
          }

          else if (v6 > -9.22337204e18)
          {
            if (v6 < 9.22337204e18)
            {
              v65 = MEMORY[0x277D83B88];
              v66 = MEMORY[0x277D83C10];
              *(v64 + 56) = MEMORY[0x277D83B88];
              *(v64 + 64) = v66;
              *(v64 + 32) = v6;
              if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v7 > -9.22337204e18)
                {
                  if (v7 < 9.22337204e18)
                  {
                    *(v64 + 96) = v65;
                    *(v64 + 104) = v66;
                    *(v64 + 72) = v7;
                    v67 = MEMORY[0x277D84D30];
                    *(v64 + 136) = v17;
                    *(v64 + 144) = v67;
                    *(v64 + 112) = 66;
                    *(v64 + 176) = v17;
                    *(v64 + 184) = v67;
                    *(v64 + 152) = 71;
                    *(v64 + 216) = v17;
                    *(v64 + 224) = v67;
                    *(v64 + 192) = 82;
                    *(v64 + 256) = v17;
                    *(v64 + 264) = v67;
                    *(v64 + 232) = 65;
                    v3 = sub_24A62EC24();
                    v25 = v68;
                    if (qword_27EF4E990 == -1)
                    {
LABEL_49:
                      v69 = sub_24A62E314();
                      sub_24A506EB8(v69, qword_27EF5C0E8);

                      v70 = sub_24A62E2F4();
                      v71 = sub_24A62EF64();

                      if (os_log_type_enabled(v70, v71))
                      {
                        v72 = swift_slowAlloc();
                        v73 = swift_slowAlloc();
                        v100[0] = v73;
                        *v72 = 136315138;
                        v74 = sub_24A509BA8(v3, v25, v100);

                        *(v72 + 4) = v74;
                        _os_log_impl(&dword_24A503000, v70, v71, "%s", v72, 0xCu);
                        sub_24A508C54(v73);
                        MEMORY[0x24C21BBE0](v73, -1, -1);
                        MEMORY[0x24C21BBE0](v72, -1, -1);
                      }

                      else
                      {
                      }

                      return 0;
                    }

LABEL_93:
                    swift_once();
                    goto LABEL_49;
                  }

LABEL_92:
                  __break(1u);
                  goto LABEL_93;
                }

LABEL_91:
                __break(1u);
                goto LABEL_92;
              }

LABEL_90:
              __break(1u);
              goto LABEL_91;
            }

LABEL_89:
            __break(1u);
            goto LABEL_90;
          }

          __break(1u);
          goto LABEL_89;
        }
      }
    }

    *(v3 + 24) = 0;

    v31 = *v27;
    swift_beginAccess();
    v29 = v25;
    v32 = CVPixelBufferPoolCreate(v31, 0, v29, (v3 + 24));
    swift_endAccess();

    v33 = *(v3 + 24);
    if (v33)
    {
      v20 = v33;
      if (v32 == sub_24A62E324())
      {
        v34 = *(v3 + 16);
        *(v3 + 16) = v25;
        v35 = v29;

        goto LABEL_10;
      }
    }

    sub_24A508FA4(&qword_27EF50530, qword_24A636270);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_24A6383F0;
    if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v6 > -9.22337204e18)
    {
      if (v6 < 9.22337204e18)
      {
        v42 = MEMORY[0x277D83B88];
        v43 = MEMORY[0x277D83C10];
        *(v41 + 56) = MEMORY[0x277D83B88];
        *(v41 + 64) = v43;
        *(v41 + 32) = v6;
        if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v7 > -9.22337204e18)
          {
            if (v7 < 9.22337204e18)
            {
              *(v41 + 96) = v42;
              *(v41 + 104) = v43;
              *(v41 + 72) = v7;
              v44 = MEMORY[0x277D84D30];
              *(v41 + 136) = v17;
              *(v41 + 144) = v44;
              *(v41 + 112) = 66;
              *(v41 + 176) = v17;
              *(v41 + 184) = v44;
              *(v41 + 152) = 71;
              *(v41 + 216) = v17;
              *(v41 + 224) = v44;
              *(v41 + 192) = 82;
              *(v41 + 256) = v17;
              *(v41 + 264) = v44;
              *(v41 + 232) = 65;
              v20 = sub_24A62EC24();
              v25 = v45;
              if (qword_27EF4E990 == -1)
              {
LABEL_25:
                v46 = sub_24A62E314();
                sub_24A506EB8(v46, qword_27EF5C0E8);

                v47 = sub_24A62E2F4();
                v48 = sub_24A62EF64();

                if (os_log_type_enabled(v47, v48))
                {
                  v49 = swift_slowAlloc();
                  v50 = swift_slowAlloc();
                  v100[0] = v50;
                  *v49 = 136315138;
                  v51 = sub_24A509BA8(v20, v25, v100);

                  *(v49 + 4) = v51;
                  _os_log_impl(&dword_24A503000, v47, v48, "%s", v49, 0xCu);
                  sub_24A508C54(v50);
                  MEMORY[0x24C21BBE0](v50, -1, -1);
                  MEMORY[0x24C21BBE0](v49, -1, -1);
                }

                else
                {
                }

                v52 = *(v3 + 24);
                *(v3 + 24) = 0;
                goto LABEL_68;
              }

LABEL_79:
              swift_once();
              goto LABEL_25;
            }

LABEL_78:
            __break(1u);
            goto LABEL_79;
          }

LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    __break(1u);
    goto LABEL_75;
  }

  return result;
}

uint64_t sub_24A61D1C0()
{

  return swift_deallocClassInstance();
}

unint64_t sub_24A61D22C()
{
  result = qword_27EF52498;
  if (!qword_27EF52498)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF52498);
  }

  return result;
}

id sub_24A61D2A0(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_targetRadius);
  v3 = v2 * a1;
  v4 = *(v1 + OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_targetWidth) + v2 - v2 * a1 + v2 - v2 * a1;
  v5 = *(v1 + OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_collapseSpring);
  v6 = (v5 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
  swift_beginAccess();
  if (vabdd_f64(v6[35] + *(v5 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), *v6 + *(v5 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o)) > *(v5 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
  {
    v7 = *v6 + *(v5 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
  }

  else
  {
    v7 = v6[35] + *(v5 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
  }

  v8 = *(v1 + OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_ringNode);
  v9 = objc_opt_self();
  v10 = v9;
  if (v7 >= 0.7)
  {
    v21 = [v9 whiteColor];
    [v8 setStrokeColor_];

    v22 = [v10 clearColor];
    [v8 setFillColor_];

    Mutable = CGPathCreateMutable();
    sub_24A62EFA4();
  }

  else
  {
    v11 = [v9 clearColor];
    [v8 setStrokeColor_];

    v12 = [v10 whiteColor];
    [v8 setFillColor_];

    v13 = v3 + v4 * 0.5;
    v14 = v3 - v4 * 0.5;
    v15 = -v13;
    v16 = v13 + v13;
    v17 = objc_opt_self();
    v18 = [v17 bezierPathWithOvalInRect_];
    v19 = [v17 bezierPathWithOvalInRect_];
    [v18 appendPath_];
    [v18 setUsesEvenOddFillRule_];
    Mutable = [v18 CGPath];

    v4 = 0.0;
  }

  [v8 setPath_];

  return [v8 setLineWidth_];
}

char *sub_24A61D674(unsigned __int16 *a1)
{
  v2 = v1;
  v3 = *a1;
  *&v1[OBJC_IVAR____TtC11FMFindingUI18FMPFSKBTLevelsNode_findingType] = v3;
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  *&v6 = 0x3FECCCCCCCCCCCCDLL;
  if (v5 == 1)
  {
    *&v6 = 1.0;
  }

  v7 = (v3 >> 13) & 3;
  if (!v7)
  {
    goto LABEL_9;
  }

  v25 = v6;
  if (v7 == 1)
  {
    v8 = sub_24A62DF44();
    v26[3] = v8;
    v26[4] = sub_24A5964D0();
    v9 = sub_24A5292E8(v26);
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D089D0], v8);
    LOBYTE(v8) = MEMORY[0x24C219850](v26);
    sub_24A508C54(v26);
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_9:
    v10 = &unk_285D9EA70;
    v11 = qword_285D9EA80;
    if (!qword_285D9EA80)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  if ((v3 & 0x8100) != 0x100)
  {
    goto LABEL_9;
  }

LABEL_6:
  sub_24A508FA4(&qword_27EF52438, &unk_24A63C0F0);
  v10 = swift_allocObject();
  *(v10 + 1) = xmmword_24A633E60;
  *(v10 + 2) = vmulq_n_f64(xmmword_24A63C1A0, *&v25);
  *(v10 + 3) = vmulq_n_f64(xmmword_24A63C1B0, *&v25);
  v11 = *(v10 + 2);
  if (!v11)
  {
LABEL_7:

    v12 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

LABEL_10:
  v26[0] = MEMORY[0x277D84F90];
  sub_24A62F404();
  v13 = 0;
  do
  {
    v14 = v13 + 1;
    sub_24A61D994(v13, v3, *(v10 + v13 + 4));
    sub_24A62F3E4();
    sub_24A62F414();
    sub_24A62F424();
    sub_24A62F3F4();
    v13 = v14;
  }

  while (v11 != v14);

  v12 = v26[0];
LABEL_13:
  *&v2[OBJC_IVAR____TtC11FMFindingUI18FMPFSKBTLevelsNode_ringNodes] = v12;
  v15 = type metadata accessor for FMPFSKBTLevelsNode();
  v27.receiver = v2;
  v27.super_class = v15;
  v16 = objc_msgSendSuper2(&v27, sel_init);
  v17 = *(v16 + OBJC_IVAR____TtC11FMFindingUI18FMPFSKBTLevelsNode_ringNodes);
  if (v17 >> 62)
  {
    goto LABEL_28;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v19 = v16;

    if (!v18)
    {
      break;
    }

    while (!__OFSUB__(v18--, 1))
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x24C21ACB0](v18, v17);
      }

      else
      {
        if ((v18 & 0x8000000000000000) != 0)
        {
          goto LABEL_26;
        }

        if (v18 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v21 = *(v17 + 32 + 8 * v18);
      }

      v22 = v21;
      [v19 addChild_];

      if (!v18)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    v24 = v16;
    v18 = sub_24A62F464();
    v16 = v24;
  }

LABEL_24:

  return v19;
}

char *sub_24A61D994(uint64_t a1, unsigned int a2, double a3)
{
  v5 = a2;
  v6 = (a2 >> 13) & 3;
  if (!v6)
  {
    goto LABEL_6;
  }

  if (v6 != 1)
  {
    if ((a2 & 0x8100) == 0x100)
    {
      goto LABEL_4;
    }

LABEL_6:
    v9 = a1 * -0.05 + 0.45;
    v10 = 10.0;
    if (!v6)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v7 = sub_24A62DF44();
  v61 = v7;
  v62 = sub_24A5964D0();
  v8 = sub_24A5292E8(v60);
  (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D089D0], v7);
  LOBYTE(v7) = MEMORY[0x24C219850](v60);
  sub_24A508C54(v60);
  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  v9 = dbl_24A63C1C0[(a1 & 1) == 0];
  v10 = 10.0;
LABEL_7:
  if (v6 == 1)
  {
    v11 = sub_24A62DF44();
    v61 = v11;
    v62 = sub_24A5964D0();
    v12 = sub_24A5292E8(v60);
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D089D0], v11);
    LOBYTE(v11) = MEMORY[0x24C219850](v60);
    sub_24A508C54(v60);
    if (v11)
    {
      goto LABEL_9;
    }
  }

  else if ((v5 & 0x8100) == 0x100)
  {
LABEL_9:
    if (a1)
    {
      v10 = 10.0;
    }

    else
    {
      v10 = 5.0;
    }
  }

LABEL_12:
  v13 = objc_opt_self();
  v14 = [v13 currentDevice];
  v15 = &property descriptor for FMFindingViewController.dismissedHandler;
  v16 = [v14 userInterfaceIdiom];

  if (v16 == 1)
  {
    v17 = 1.5;
  }

  else
  {
    v17 = 1.0;
  }

  v18 = a3;
  if (!v6)
  {
    goto LABEL_28;
  }

  if (v6 == 1)
  {
    v19 = sub_24A62DF44();
    v61 = v19;
    v20 = sub_24A5964D0();
    v62 = v20;
    v21 = sub_24A5292E8(v60);
    v22 = *MEMORY[0x277D089D0];
    v23 = v5;
    v24 = *(*(v19 - 8) + 104);
    v24(v21, v22, v19);
    v25 = MEMORY[0x24C219850](v60);
    sub_24A508C54(v60);
    if (v25)
    {
      v18 = v17 * a3;
    }

    else
    {
      v18 = a3;
    }

    v61 = v19;
    v62 = v20;
    v26 = sub_24A5292E8(v60);
    v24(v26, v22, v19);
    v15 = &property descriptor for FMFindingViewController.dismissedHandler;
    v5 = v23;
    v27 = MEMORY[0x24C219850](v60);
    sub_24A508C54(v60);
    if ((v27 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v18 = a3;
    if ((v5 & 0x8100) != 0x100)
    {
LABEL_28:
      v31 = [objc_opt_self() mainScreen];
      [v31 bounds];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;

      v64.origin.x = v33;
      v64.origin.y = v35;
      v64.size.width = v37;
      v64.size.height = v39;
      Height = CGRectGetHeight(v64);
      goto LABEL_29;
    }

    v18 = v17 * a3;
  }

  v28 = [v13 currentDevice];
  v29 = [v28 v15[216]];

  if (v29 != 1)
  {
    goto LABEL_28;
  }

  Height = 1180.0;
LABEL_29:
  v40 = Height * a3 * 0.5;
  v41 = a1 * 0.33 + 1.0;
  v42 = type metadata accessor for FMPFSKBTLevelRingNode();
  v43 = objc_allocWithZone(v42);
  v44 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_visibilitySpring;
  *&v43[v44] = sub_24A5B1B2C(0, 0, 0x3F50624DD2F1A9FCLL, 0);
  v45 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_collapseSpring;
  *&v43[v45] = sub_24A5B1B2C(0x3FF0000000000000, 0, 0x3F50624DD2F1A9FCLL, 0);
  v46 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_ringNode;
  *&v43[v46] = [objc_allocWithZone(MEMORY[0x277CDCF70]) init];
  *&v43[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_findingType] = v5;
  *&v43[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_threshold] = v18;
  *&v43[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_targetAlpha] = v9;
  *&v43[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_targetWidth] = v10;
  *&v43[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_targetRadius] = round(v40);
  v47 = (*&v43[v44] + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters);
  v48 = *v47;
  v49 = v47[1];
  v50 = v47[2];
  v51 = v47[3];
  v47[2] = v41;
  sub_24A55C5A0(v48, v49, v50, v51);
  v59.receiver = v43;
  v59.super_class = v42;
  v52 = objc_msgSendSuper2(&v59, sel_init);
  v53 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_ringNode;
  v54 = *&v52[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_ringNode];
  v55 = v52;
  v56 = v54;
  Mutable = CGPathCreateMutable();
  v60[0] = 0x3FF0000000000000;
  v60[1] = 0;
  v60[2] = 0;
  v61 = 0x3FF0000000000000;
  v62 = 0;
  v63 = 0;
  sub_24A62EFA4();
  [v56 setPath_];

  [*&v52[v53] setLineWidth_];
  [v55 addChild_];

  return v55;
}

void sub_24A61DF70(int a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11FMFindingUI18FMPFSKBTLevelsNode_ringNodes);
  if (v3 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24A62F464())
  {
    v5 = 0;
    v42 = v3 & 0xFFFFFFFFFFFFFF8;
    v43 = v3 & 0xC000000000000001;
    v37 = *MEMORY[0x277D089D0];
    v6 = &OBJC_IVAR____TtC11FMFindingUI8FLSpring__s;
    v39 = a1;
    v38 = v3;
    v41 = i;
    while (1)
    {
      if (v43)
      {
        v12 = MEMORY[0x24C21ACB0](v5, v3);
      }

      else
      {
        if (v5 >= *(v42 + 16))
        {
          goto LABEL_35;
        }

        v12 = *(v3 + 8 * v5 + 32);
      }

      v13 = v12;
      v11 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v14 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_visibilitySpring;
      v15 = *&v12[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_visibilitySpring];
      if ((a1 & 1) == 0)
      {
        sub_24A55C6B4(1.0);
        *(v15 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
        if (UIAccessibilityIsReduceMotionEnabled())
        {
          LOBYTE(v40) = 1;
LABEL_27:
          v26 = *&v13[v14];
          v27 = v6;
          v28 = (v26 + *v6);
          swift_beginAccess();
          v29 = *v28 + *(v26 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
          if (vabdd_f64(v28[35] + *(v26 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v29) <= *(v26 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
          {
            v29 = v28[35] + *(v26 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
          }

          [v13 setAlpha_];
          v30 = *&v13[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_ringNode];
          v31 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_collapseSpring;
          v32 = *&v13[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_collapseSpring];
          v33 = (v32 + *v27);
          swift_beginAccess();
          v34 = *v33 + *(v32 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
          if (vabdd_f64(v33[35] + *(v32 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v34) <= *(v32 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
          {
            v34 = v33[35] + *(v32 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
          }

          [v30 setAlpha_];
          v35 = *&v13[v14];
          v36 = (v35 + *v27);
          if (v40)
          {
            swift_beginAccess();
            [v13 setScale_];
            sub_24A61D2A0(1.0);
            a1 = v39;
            v3 = v38;
            v6 = v27;
          }

          else
          {
            swift_beginAccess();
            v7 = *v36 + *(v35 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
            if (vabdd_f64(v36[35] + *(v35 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v7) <= *(v35 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
            {
              v7 = v36[35] + *(v35 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
            }

            [v13 setScale_];
            v8 = *&v13[v31];
            v9 = (v8 + *v27);
            swift_beginAccess();
            v10 = *v9 + *(v8 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
            if (vabdd_f64(v9[35] + *(v8 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v10) <= *(v8 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
            {
              v10 = v9[35] + *(v8 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
            }

            sub_24A61D2A0(v10);
            a1 = v39;
            v3 = v38;
            v6 = v27;
          }

          v11 = v5 + 1;
          goto LABEL_10;
        }

        v22 = *&v13[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_findingType];
        v23 = (v22 >> 13) & 3;
        if (v23)
        {
          if (v23 == 1)
          {
            v24 = sub_24A62DF44();
            v44[3] = v24;
            v44[4] = sub_24A5964D0();
            v25 = sub_24A5292E8(v44);
            (*(*(v24 - 8) + 104))(v25, v37, v24);
            LOBYTE(v40) = MEMORY[0x24C219850](v44);
            sub_24A508C54(v44);
            goto LABEL_27;
          }

          if ((v22 & 0x8000) == 0)
          {
            v40 = (v22 >> 8) & 1;
            goto LABEL_27;
          }
        }

        LOBYTE(v40) = 0;
        goto LABEL_27;
      }

      v16 = v15 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
      *v16 = 0x3FF0000000000000;
      *(v16 + 8) = 0;
      v17 = v6;
      v18 = v15 + *v6;
      swift_beginAccess();
      v19 = v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o;
      v20 = *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
      if (*(v18 + 280) + v20 == 1.79769313e308)
      {
        sub_24A55C6B4(1.0);
        *(v15 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
        v20 = *(v19 + 40);
      }

      v21 = 1.0 - v20;
      *(v18 + 280) = v21;
      *(v18 + 240) = v21;
      *(v18 + 248) = 0;
      v6 = v17;
LABEL_10:

      ++v5;
      if (v11 == v41)
      {
        return;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }
}

void sub_24A61E440(int a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11FMFindingUI18FMPFSKBTLevelsNode_ringNodes);
  if (v3 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24A62F464())
  {
    v5 = 0;
    v42 = v3 & 0xFFFFFFFFFFFFFF8;
    v43 = v3 & 0xC000000000000001;
    v37 = *MEMORY[0x277D089D0];
    v6 = &OBJC_IVAR____TtC11FMFindingUI8FLSpring__s;
    v39 = a1;
    v38 = v3;
    v41 = i;
    while (1)
    {
      if (v43)
      {
        v12 = MEMORY[0x24C21ACB0](v5, v3);
      }

      else
      {
        if (v5 >= *(v42 + 16))
        {
          goto LABEL_35;
        }

        v12 = *(v3 + 8 * v5 + 32);
      }

      v13 = v12;
      v11 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v14 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_visibilitySpring;
      v15 = *&v12[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_visibilitySpring];
      if ((a1 & 1) == 0)
      {
        sub_24A55C6B4(0.0);
        *(v15 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
        if (UIAccessibilityIsReduceMotionEnabled())
        {
          LOBYTE(v40) = 1;
LABEL_27:
          v26 = *&v13[v14];
          v27 = v6;
          v28 = (v26 + *v6);
          swift_beginAccess();
          v29 = *v28 + *(v26 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
          if (vabdd_f64(v28[35] + *(v26 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v29) <= *(v26 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
          {
            v29 = v28[35] + *(v26 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
          }

          [v13 setAlpha_];
          v30 = *&v13[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_ringNode];
          v31 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_collapseSpring;
          v32 = *&v13[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_collapseSpring];
          v33 = (v32 + *v27);
          swift_beginAccess();
          v34 = *v33 + *(v32 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
          if (vabdd_f64(v33[35] + *(v32 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v34) <= *(v32 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
          {
            v34 = v33[35] + *(v32 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
          }

          [v30 setAlpha_];
          v35 = *&v13[v14];
          v36 = (v35 + *v27);
          if (v40)
          {
            swift_beginAccess();
            [v13 setScale_];
            sub_24A61D2A0(1.0);
            a1 = v39;
            v3 = v38;
            v6 = v27;
          }

          else
          {
            swift_beginAccess();
            v7 = *v36 + *(v35 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
            if (vabdd_f64(v36[35] + *(v35 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v7) <= *(v35 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
            {
              v7 = v36[35] + *(v35 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
            }

            [v13 setScale_];
            v8 = *&v13[v31];
            v9 = (v8 + *v27);
            swift_beginAccess();
            v10 = *v9 + *(v8 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
            if (vabdd_f64(v9[35] + *(v8 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v10) <= *(v8 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
            {
              v10 = v9[35] + *(v8 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
            }

            sub_24A61D2A0(v10);
            a1 = v39;
            v3 = v38;
            v6 = v27;
          }

          v11 = v5 + 1;
          goto LABEL_10;
        }

        v22 = *&v13[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_findingType];
        v23 = (v22 >> 13) & 3;
        if (v23)
        {
          if (v23 == 1)
          {
            v24 = sub_24A62DF44();
            v44[3] = v24;
            v44[4] = sub_24A5964D0();
            v25 = sub_24A5292E8(v44);
            (*(*(v24 - 8) + 104))(v25, v37, v24);
            LOBYTE(v40) = MEMORY[0x24C219850](v44);
            sub_24A508C54(v44);
            goto LABEL_27;
          }

          if ((v22 & 0x8000) == 0)
          {
            v40 = (v22 >> 8) & 1;
            goto LABEL_27;
          }
        }

        LOBYTE(v40) = 0;
        goto LABEL_27;
      }

      v16 = v15 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
      *v16 = 0;
      *(v16 + 8) = 0;
      v17 = v6;
      v18 = v15 + *v6;
      swift_beginAccess();
      v19 = v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o;
      v20 = *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
      if (*(v18 + 280) + v20 == 1.79769313e308)
      {
        sub_24A55C6B4(0.0);
        *(v15 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
        v20 = *(v19 + 40);
      }

      v21 = 0.0 - v20;
      *(v18 + 280) = v21;
      *(v18 + 240) = v21;
      *(v18 + 248) = 0;
      v6 = v17;
LABEL_10:

      ++v5;
      if (v11 == v41)
      {
        return;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }
}

void sub_24A61E90C(int a1, double a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC11FMFindingUI18FMPFSKBTLevelsNode_ringNodes);
  v102[0] = MEMORY[0x277D84F90];
  v90 = v5 >> 62;
  if (v5 >> 62)
  {
    goto LABEL_106;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A62F464())
  {
    if (i)
    {
      v7 = 0;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x24C21ACB0](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_99;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

        if (*&v8[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_threshold] > a2)
        {
        }

        else
        {
          sub_24A62F3E4();
          sub_24A62F414();
          sub_24A62F424();
          sub_24A62F3F4();
        }

        ++v7;
      }

      while (v9 != i);
      v10 = v102[0];
      v11 = MEMORY[0x277D84F90];
      v89 = v5;
      if ((v102[0] & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      v11 = MEMORY[0x277D84F90];
      v89 = v5;
      if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
      {
LABEL_17:
        if ((v10 & 0x4000000000000000) == 0)
        {
          v12 = *(v10 + 16);
          goto LABEL_19;
        }
      }
    }

    v88 = v10;
    v12 = sub_24A62F464();
    v10 = v88;
LABEL_19:
    v5 = &OBJC_IVAR____TtC11FMFindingUI8FLSpring__s;
    v99 = a1;
    if (v12)
    {
      v13 = 0;
      v100 = v10 & 0xC000000000000001;
      v91 = *MEMORY[0x277D089D0];
      v96 = v12;
      v98 = v10;
      while (1)
      {
        if (v100)
        {
          v21 = MEMORY[0x24C21ACB0](v13, v10);
        }

        else
        {
          if (v13 >= *(v10 + 16))
          {
            goto LABEL_101;
          }

          v21 = *(v10 + 8 * v13 + 32);
        }

        v22 = v21;
        v20 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_100;
        }

        v23 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_collapseSpring;
        v24 = *&v21[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_collapseSpring];
        if ((a1 & 1) == 0)
        {
          break;
        }

        v25 = v24 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
        *v25 = 0;
        *(v25 + 8) = 0;
        v26 = v24 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s;
        swift_beginAccess();
        v27 = v24 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o;
        v28 = *(v24 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
        if (*(v26 + 280) + v28 == 1.79769313e308)
        {
          sub_24A55C6B4(0.0);
          *(v24 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
          v28 = *(v27 + 40);
        }

        v29 = 0.0 - v28;
        *(v26 + 280) = v29;
        *(v26 + 240) = v29;
        *(v26 + 248) = 0;
LABEL_26:

        ++v13;
        v10 = v98;
        if (v20 == v96)
        {
          goto LABEL_50;
        }
      }

      sub_24A55C6B4(0.0);
      *(v24 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
      if (UIAccessibilityIsReduceMotionEnabled())
      {
        LOBYTE(v93) = 1;
LABEL_43:
        v34 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_visibilitySpring;
        v35 = *&v22[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_visibilitySpring];
        v36 = (v35 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
        swift_beginAccess();
        v37 = *v36 + *(v35 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
        if (vabdd_f64(v36[35] + *(v35 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v37) <= *(v35 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
        {
          v37 = v36[35] + *(v35 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
        }

        [v22 setAlpha_];
        v38 = *&v22[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_ringNode];
        v39 = *&v22[v23];
        v40 = (v39 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
        swift_beginAccess();
        v41 = *v40 + *(v39 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
        v42 = v40[35] + *(v39 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
        v43 = *(v39 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold);
        v5 = &OBJC_IVAR____TtC11FMFindingUI8FLSpring__s;
        if (vabdd_f64(v42, v41) <= v43)
        {
          v41 = v42;
        }

        [v38 setAlpha_];
        v44 = *&v22[v34];
        v45 = (v44 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
        if (v93)
        {
          swift_beginAccess();
          [v22 setScale_];
          v17 = 1.0;
        }

        else
        {
          swift_beginAccess();
          v14 = *v45 + *(v44 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
          if (vabdd_f64(v45[35] + *(v44 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v14) <= *(v44 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
          {
            v14 = v45[35] + *(v44 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
          }

          [v22 setScale_];
          v15 = *&v22[v23];
          v16 = (v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
          swift_beginAccess();
          v17 = *v16 + *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
          v18 = v16[35] + *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
          v19 = *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold);
          v5 = &OBJC_IVAR____TtC11FMFindingUI8FLSpring__s;
          if (vabdd_f64(v18, v17) <= v19)
          {
            v17 = v18;
          }
        }

        sub_24A61D2A0(v17);
        a1 = v99;
        v11 = MEMORY[0x277D84F90];
        v20 = v13 + 1;
        goto LABEL_26;
      }

      v30 = *&v22[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_findingType];
      v31 = (v30 >> 13) & 3;
      if (v31)
      {
        if (v31 == 1)
        {
          v32 = sub_24A62DF44();
          v103 = v32;
          v104 = sub_24A5964D0();
          v33 = sub_24A5292E8(v102);
          (*(*(v32 - 8) + 104))(v33, v91, v32);
          LOBYTE(v93) = MEMORY[0x24C219850](v102);
          sub_24A508C54(v102);
          goto LABEL_43;
        }

        if ((v30 & 0x8000) == 0)
        {
          v93 = (v30 >> 8) & 1;
          goto LABEL_43;
        }
      }

      LOBYTE(v93) = 0;
      goto LABEL_43;
    }

LABEL_50:

    v102[0] = v11;
    if (v90)
    {
      break;
    }

    v5 = v89;
    v46 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v46)
    {
      goto LABEL_64;
    }

LABEL_52:
    v47 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v48 = MEMORY[0x24C21ACB0](v47, v5);
      }

      else
      {
        if (v47 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_103;
        }

        v48 = *(v5 + 8 * v47 + 32);
      }

      v49 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (*&v48[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_threshold] <= a2)
      {
      }

      else
      {
        sub_24A62F3E4();
        sub_24A62F414();
        sub_24A62F424();
        sub_24A62F3F4();
      }

      ++v47;
      if (v49 == v46)
      {
        v5 = v102[0];
        goto LABEL_65;
      }
    }

LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    ;
  }

  v5 = v89;
  v46 = sub_24A62F464();
  if (v46)
  {
    goto LABEL_52;
  }

LABEL_64:
  v5 = MEMORY[0x277D84F90];
LABEL_65:
  v50 = &OBJC_IVAR____TtC11FMFindingUI8FLSpring__o;
  if ((v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
  {
    v51 = sub_24A62F464();
    if (!v51)
    {
      goto LABEL_109;
    }

LABEL_68:
    v52 = 0;
    v101 = v5 & 0xC000000000000001;
    v92 = *MEMORY[0x277D089D0];
    a2 = 1.0;
    v94 = v51;
    v95 = v5;
    while (1)
    {
      if (v101)
      {
        v60 = MEMORY[0x24C21ACB0](v52, v5);
      }

      else
      {
        if (v52 >= *(v5 + 16))
        {
          goto LABEL_105;
        }

        v60 = *(v5 + 8 * v52 + 32);
      }

      v61 = v60;
      v59 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        goto LABEL_104;
      }

      v62 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_collapseSpring;
      v63 = *&v60[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_collapseSpring];
      if ((a1 & 1) == 0)
      {
        break;
      }

      v64 = v63 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
      *v64 = 0x3FF0000000000000;
      *(v64 + 8) = 0;
      v65 = v63 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s;
      swift_beginAccess();
      v66 = v50;
      v67 = v63 + *v50;
      v68 = *(v67 + 40);
      if (*(v65 + 280) + v68 == 1.79769313e308)
      {
        sub_24A55C6B4(1.0);
        *(v63 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
        v68 = *(v67 + 40);
      }

      v69 = 1.0 - v68;
      *(v65 + 280) = v69;
      *(v65 + 240) = v69;
      *(v65 + 248) = 0;
      v50 = v66;
LABEL_74:

      ++v52;
      if (v59 == v51)
      {
        goto LABEL_109;
      }
    }

    sub_24A55C6B4(1.0);
    *(v63 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    if (UIAccessibilityIsReduceMotionEnabled())
    {
      LOBYTE(v97) = 1;
LABEL_91:
      v74 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_visibilitySpring;
      v75 = *&v61[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_visibilitySpring];
      v76 = (v75 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
      swift_beginAccess();
      v77 = (v75 + *v50);
      v78 = *v76 + *v77;
      if (vabdd_f64(v76[35] + v77[5], v78) <= *(v75 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
      {
        v78 = v76[35] + v77[5];
      }

      [v61 setAlpha_];
      v79 = *&v61[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_ringNode];
      v80 = v50;
      v81 = v62;
      v82 = *&v61[v62];
      v83 = (v82 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
      swift_beginAccess();
      v84 = (v82 + *v80);
      v85 = *v83 + *v84;
      if (vabdd_f64(v83[35] + v84[5], v85) <= *(v82 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
      {
        v85 = v83[35] + v84[5];
      }

      [v79 setAlpha_];
      v86 = *&v61[v74];
      v87 = (v86 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
      if (v97)
      {
        swift_beginAccess();
        [v61 setScale_];
        v58 = 1.0;
      }

      else
      {
        swift_beginAccess();
        v53 = (v86 + *v80);
        v54 = *v87 + *v53;
        if (vabdd_f64(v87[35] + v53[5], v54) <= *(v86 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
        {
          v54 = v87[35] + v53[5];
        }

        [v61 setScale_];
        v55 = *&v61[v81];
        v56 = (v55 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
        swift_beginAccess();
        v57 = (v55 + *v80);
        v58 = *v56 + *v57;
        if (vabdd_f64(v56[35] + v57[5], v58) <= *(v55 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
        {
          v58 = v56[35] + v57[5];
        }
      }

      sub_24A61D2A0(v58);
      a1 = v99;
      v50 = v80;
      v51 = v94;
      v5 = v95;
      v59 = v52 + 1;
      goto LABEL_74;
    }

    v70 = *&v61[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_findingType];
    v71 = (v70 >> 13) & 3;
    if (v71)
    {
      if (v71 == 1)
      {
        v72 = sub_24A62DF44();
        v103 = v72;
        v104 = sub_24A5964D0();
        v73 = sub_24A5292E8(v102);
        (*(*(v72 - 8) + 104))(v73, v92, v72);
        LOBYTE(v97) = MEMORY[0x24C219850](v102);
        sub_24A508C54(v102);
        goto LABEL_91;
      }

      if ((v70 & 0x8000) == 0)
      {
        v97 = (v70 >> 8) & 1;
        goto LABEL_91;
      }
    }

    LOBYTE(v97) = 0;
    goto LABEL_91;
  }

  v51 = *(v5 + 16);
  if (v51)
  {
    goto LABEL_68;
  }

LABEL_109:
}

void sub_24A61F414(id a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC11FMFindingUI18FMPFSKBTLevelsNode_ringNodes);
  if (v3 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; a1 = v30)
  {
    v5 = 0;
    v36 = v3 & 0xFFFFFFFFFFFFFF8;
    v37 = v3 & 0xC000000000000001;
    if (a2)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = *&a1;
    }

    v33 = *MEMORY[0x277D089D0];
    v34 = v3;
    v35 = i;
    while (1)
    {
      if (v37)
      {
        *&a1 = COERCE_DOUBLE(MEMORY[0x24C21ACB0](v5, v3));
      }

      else
      {
        if (v5 >= *(v36 + 16))
        {
          goto LABEL_31;
        }

        a1 = *(v3 + 8 * v5 + 32);
      }

      v11 = a1;
      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v38 = v5;
      v13 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_visibilitySpring;
      v14 = *(a1 + OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_visibilitySpring);
      sub_24A55C858(v6);
      LOBYTE(v15) = 1;
      *(v14 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
      v39 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_collapseSpring;
      v16 = *&v11[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_collapseSpring];
      sub_24A55C858(v6);
      *(v16 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
      if (!UIAccessibilityIsReduceMotionEnabled())
      {
        v17 = *&v11[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_findingType];
        v18 = (v17 >> 13) & 3;
        if (!v18)
        {
          goto LABEL_22;
        }

        if (v18 == 1)
        {
          v19 = sub_24A62DF44();
          v41[3] = v19;
          v41[4] = sub_24A5964D0();
          v20 = sub_24A5292E8(v41);
          (*(*(v19 - 8) + 104))(v20, v33, v19);
          LOBYTE(v15) = MEMORY[0x24C219850](v41);
          sub_24A508C54(v41);
        }

        else
        {
          if ((v17 & 0x8000) != 0)
          {
LABEL_22:
            LOBYTE(v15) = 0;
            goto LABEL_23;
          }

          v15 = (v17 >> 8) & 1;
        }
      }

LABEL_23:
      v40 = v12;
      v21 = *&v11[v13];
      v22 = (v21 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
      swift_beginAccess();
      v23 = *v22 + *(v21 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
      if (vabdd_f64(v22[35] + *(v21 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v23) <= *(v21 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
      {
        v23 = v22[35] + *(v21 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
      }

      [v11 setAlpha_];
      v24 = *&v11[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_ringNode];
      v25 = *&v11[v39];
      v26 = (v25 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
      swift_beginAccess();
      v27 = *v26 + *(v25 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
      if (vabdd_f64(v26[35] + *(v25 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v27) <= *(v25 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
      {
        v27 = v26[35] + *(v25 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
      }

      [v24 setAlpha_];
      v28 = *&v11[v13];
      v29 = (v28 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
      if (v15)
      {
        swift_beginAccess();
        [v11 setScale_];
        v10 = 1.0;
      }

      else
      {
        swift_beginAccess();
        v7 = *v29 + *(v28 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
        if (vabdd_f64(v29[35] + *(v28 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v7) <= *(v28 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
        {
          v7 = v29[35] + *(v28 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
        }

        [v11 setScale_];
        v8 = *&v11[v39];
        v9 = (v8 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
        swift_beginAccess();
        v10 = *v9 + *(v8 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
        if (vabdd_f64(v9[35] + *(v8 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v10) <= *(v8 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
        {
          v10 = v9[35] + *(v8 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
        }
      }

      v3 = v34;
      sub_24A61D2A0(v10);

      v5 = v38 + 1;
      if (v40 == v35)
      {
        return;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v30 = a1;
    v31 = a2;
    v32 = sub_24A62F464();
    a2 = v31;
    i = v32;
  }
}

id sub_24A61F894(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_24A61F900()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_visibilitySpring;
  *(v0 + v1) = sub_24A5B1B2C(0, 0, 0x3F50624DD2F1A9FCLL, 0);
  v2 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_collapseSpring;
  *(v0 + v2) = sub_24A5B1B2C(0x3FF0000000000000, 0, 0x3F50624DD2F1A9FCLL, 0);
  v3 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTLevelRingNode_ringNode;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277CDCF70]) init];
  sub_24A62F444();
  __break(1u);
}

id sub_24A61FC20(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMR1InsetLabel();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_24A61FCA4()
{
  v1 = *&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerView];
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    [v3 setAlpha_];
    [v3 setContentMode_];
    v4 = type metadata accessor for FMAVPlayerView();
    v52.receiver = v3;
    v52.super_class = v4;
    v5 = objc_msgSendSuper2(&v52, sel_layer);
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      [v6 setVideoGravity_];
    }

    v7 = [objc_opt_self() mainScreen];
    sub_24A506238();
    v9 = v8;

    CATransform3DMakeTranslation(&v50, 0.0, 0.0, 0.0);
    CATransform3DScale(&v51, &v50, v9, v9, 1.0);
    v49.receiver = v3;
    v49.super_class = v4;
    v10 = objc_msgSendSuper2(&v49, sel_layer);
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v50 = v51;
      [v11 setTransform_];
    }

    v12 = [v2 view];
    if (v12)
    {
      v13 = v12;
      [v12 addSubview_];

      [v3 setTranslatesAutoresizingMaskIntoConstraints_];
      [v3 setTranslatesAutoresizingMaskIntoConstraints_];
      v48 = objc_opt_self();
      sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_24A63AC30;
      v15 = [v3 centerXAnchor];
      v16 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView;
      v17 = [*&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView] centerXAnchor];
      v18 = [v15 constraintEqualToAnchor_];

      *(v14 + 32) = v18;
      v19 = [v3 centerYAnchor];
      v20 = [*&v2[v16] centerYAnchor];
      v21 = [v19 &selRef:v20 setUseProcessLocalCache:? + 5];

      *(v14 + 40) = v21;
      v22 = [v3 widthAnchor];
      v23 = [*&v2[v16] widthAnchor];
      v24 = [v22 constraintLessThanOrEqualToAnchor_];

      *(v14 + 48) = v24;
      v25 = [v3 heightAnchor];
      v26 = [*&v2[v16] &selRef_initWithString_attributes_ + 2];
      v27 = [v25 constraintLessThanOrEqualToAnchor_];

      *(v14 + 56) = v27;
      v28 = [v3 widthAnchor];
      v29 = [v3 &selRef_initWithString_attributes_ + 2];
      v30 = [v28 constraintEqualToAnchor:v29 multiplier:1.0];

      *(v14 + 64) = v30;
      sub_24A50D7EC(0, &qword_27EF4F378, 0x277CCAAD0);
      v31 = sub_24A62ED54();

      [v48 activateConstraints_];

      v32 = [v3 widthAnchor];
      v33 = [*&v2[v16] widthAnchor];
      v34 = [v32 constraintEqualToAnchor_];

      LODWORD(v35) = 1132068864;
      [v34 setPriority_];
      v36 = [v3 heightAnchor];

      v37 = [*&v2[v16] heightAnchor];
      v38 = [v36 constraintEqualToAnchor_];

      LODWORD(v39) = 1132068864;
      [v38 setPriority_];
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_24A633810;
      *(v40 + 32) = v34;
      *(v40 + 40) = v38;
      v41 = v34;
      v42 = v38;
      v43 = sub_24A62ED54();

      [v48 activateConstraints_];

      v44 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v45 = &v3[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_showHideHandler];
      v46 = *&v3[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_showHideHandler];
      v47 = *&v3[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_showHideHandler + 8];
      *v45 = sub_24A6232FC;
      v45[1] = v44;

      sub_24A50D354(v46, v47);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_24A620310(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FMFindingViewState(0);
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v98 = &v91[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v91[-v10];
  v12 = sub_24A62EB14();
  v96 = *(v12 - 8);
  v97 = v12;
  MEMORY[0x28223BE20](v12);
  v94 = &v91[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v95 = &v91[-v15];
  v16 = sub_24A62EA94();
  MEMORY[0x28223BE20](v16);
  v17 = sub_24A508FA4(&qword_27EF4FA80, &qword_24A634D40);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v91[-v18];
  sub_24A6231F0(a1, &v91[-v18], type metadata accessor for FMFindingViewState);
  (*(v7 + 56))(v19, 0, 1, v6);
  v20 = sub_24A628998(v19);
  if (v20 == 2 || (v20 & 1) == 0 || (v21 = v6[9], v22 = *(a2 + v21), v22 == 10))
  {
    sub_24A50D6A4(v19, &qword_27EF4FA80, &qword_24A634D40);
LABEL_5:
    v23 = v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
    result = swift_beginAccess();
    if ((*(v23 + v6[13]) & 1) == 0 && ((*(a2 + v6[12]) & 1) != 0 || *(a2 + v6[14]) == 1))
    {
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v25 = sub_24A62E314();
      sub_24A506EB8(v25, qword_27EF5C118);
      v26 = sub_24A62E2F4();
      v27 = sub_24A62EF64();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_24A503000, v26, v27, "🧭 FMFindingViewCtrl: Should stop playing video", v28, 2u);
        MEMORY[0x24C21BBE0](v28, -1, -1);
      }

      sub_24A6223DC(0, 2);
      v29 = v98;
      sub_24A6231F0(v23, v98, type metadata accessor for FMFindingViewState);
      LODWORD(v97) = *v29;
      v30 = v6[5];
      v31 = sub_24A62E214();
      (*(*(v31 - 8) + 16))(&v11[v30], &v29[v30], v31);
      v32 = v6[7];
      v33 = &v29[v6[6]];
      v34 = *(v33 + 1);
      v94 = *v33;
      LODWORD(v95) = v29[v32];
      v35 = &v29[v6[8]];
      *&v105[13] = *(v35 + 93);
      v36 = *(v35 + 5);
      v104 = *(v35 + 4);
      *v105 = v36;
      v37 = *(v35 + 3);
      v102 = *(v35 + 2);
      v103 = v37;
      v38 = *(v35 + 1);
      v39 = v6[10];
      v40 = v29[v6[9]];
      v100 = *v35;
      v101 = v38;
      v41 = v29[v39];
      v42 = v6[11];
      v96 = v3;
      v43 = v29[v42];
      v44 = v29[v6[13]];
      LODWORD(v93) = v29[v6[14]];

      sub_24A508CE4(&v100, v99);
      sub_24A623258(v29, type metadata accessor for FMFindingViewState);
      v45 = &v11[v6[15]];
      *v45 = 0;
      *(v45 + 1) = 0;
      *v11 = v97;
      v46 = &v11[v6[6]];
      *v46 = v94;
      *(v46 + 1) = v34;
      v11[v6[7]] = v95;
      v47 = &v11[v6[8]];
      v48 = *v105;
      *(v47 + 4) = v104;
      *(v47 + 5) = v48;
      *(v47 + 93) = *&v105[13];
      v49 = v101;
      *v47 = v100;
      *(v47 + 1) = v49;
      v50 = v103;
      *(v47 + 2) = v102;
      *(v47 + 3) = v50;
      v11[v6[9]] = v40;
      v11[v6[10]] = v41;
      v11[v6[11]] = v43;
      v11[v6[12]] = 0;
      v11[v6[13]] = v44;
      v11[v6[14]] = v93;
      sub_24A60AB3C(v11);
      v51 = v11;
      return sub_24A623258(v51, type metadata accessor for FMFindingViewState);
    }

    return result;
  }

  if (sub_24A596B24(*(a2 + v21)) == 0xD000000000000019 && 0x800000024A63CD10 == v52)
  {
    goto LABEL_17;
  }

  LODWORD(v93) = sub_24A62F634();

  if (v93)
  {
    goto LABEL_19;
  }

  if (sub_24A596B24(v22) == 0xD000000000000030 && 0x800000024A63CD30 == v89)
  {
LABEL_17:

LABEL_19:
    result = sub_24A50D6A4(v19, &qword_27EF4FA80, &qword_24A634D40);
    goto LABEL_20;
  }

  v90 = sub_24A62F634();

  result = sub_24A50D6A4(v19, &qword_27EF4FA80, &qword_24A634D40);
  if ((v90 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_20:
  if ((*(a2 + v6[12]) & 1) == 0)
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v53 = sub_24A62E314();
    sub_24A506EB8(v53, qword_27EF5C118);
    v54 = sub_24A62E2F4();
    v55 = sub_24A62EF64();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_24A503000, v54, v55, "🧭 FMFindingViewCtrl: Should start playing video in 1 sec", v56, 2u);
      MEMORY[0x24C21BBE0](v56, -1, -1);
    }

    v57 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *&v102 = sub_24A6231C8;
    *(&v102 + 1) = v57;
    *&v100 = MEMORY[0x277D85DD0];
    *(&v100 + 1) = 1107296256;
    *&v101 = sub_24A5A8458;
    *(&v101 + 1) = &unk_285DAB3F0;
    _Block_copy(&v100);
    v99[0] = MEMORY[0x277D84F90];
    sub_24A545F60();

    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    sub_24A62EB44();
    swift_allocObject();
    v58 = sub_24A62EB24();

    *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundItemWorkItem) = v58;

    sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
    v59 = sub_24A62F014();
    v60 = v94;
    sub_24A62EB04();
    v61 = v95;
    sub_24A62EB54();
    v62 = *(v96 + 8);
    v63 = v60;
    v64 = v97;
    v62(v63, v97);
    v96 = v58;
    sub_24A62EFE4();

    v62(v61, v64);
    v65 = v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
    swift_beginAccess();
    if ((*(v65 + v6[14]) & 1) == 0)
    {
      v66 = (v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
      swift_beginAccess();
      sub_24A50A204(v66, v66[3]);
      v100 = 0u;
      v101 = 0u;
      sub_24A5811D4(&v100);
      sub_24A50D6A4(&v100, &unk_27EF50780, &qword_24A638470);
    }

    v67 = v65;
    v68 = v98;
    sub_24A6231F0(v67, v98, type metadata accessor for FMFindingViewState);
    LODWORD(v97) = *v68;
    v69 = v6[5];
    v70 = sub_24A62E214();
    (*(*(v70 - 8) + 16))(&v11[v69], &v68[v69], v70);
    v71 = v6[7];
    v72 = &v68[v6[6]];
    v73 = *(v72 + 1);
    v93 = *v72;
    LODWORD(v95) = v68[v71];
    v74 = &v68[v6[8]];
    *&v105[13] = *(v74 + 93);
    v75 = *(v74 + 5);
    v104 = *(v74 + 4);
    *v105 = v75;
    v76 = *(v74 + 3);
    v102 = *(v74 + 2);
    v103 = v76;
    v78 = *v74;
    v77 = *(v74 + 1);
    v79 = v6[10];
    v92 = v68[v6[9]];
    v100 = v78;
    v101 = v77;
    v80 = v68[v79];
    v81 = v68[v6[11]];
    v82 = v68[v6[13]];
    LODWORD(v94) = v68[v6[14]];

    sub_24A508CE4(&v100, v99);
    sub_24A623258(v68, type metadata accessor for FMFindingViewState);
    v83 = &v11[v6[15]];
    *v83 = 0;
    *(v83 + 1) = 0;
    *v11 = v97;
    v84 = &v11[v6[6]];
    *v84 = v93;
    *(v84 + 1) = v73;
    v11[v6[7]] = v95;
    v85 = &v11[v6[8]];
    v86 = *v105;
    *(v85 + 4) = v104;
    *(v85 + 5) = v86;
    *(v85 + 93) = *&v105[13];
    v87 = v101;
    *v85 = v100;
    *(v85 + 1) = v87;
    v88 = v103;
    *(v85 + 2) = v102;
    *(v85 + 3) = v88;
    v11[v6[9]] = v92;
    v11[v6[10]] = v80;
    v11[v6[11]] = v81;
    v11[v6[12]] = 1;
    v11[v6[13]] = v82;
    v11[v6[14]] = v94;
    sub_24A60AB3C(v11);

    v51 = v11;
    return sub_24A623258(v51, type metadata accessor for FMFindingViewState);
  }

  return result;
}

void sub_24A620E38(int a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for FMFindingViewState(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v13 = sub_24A62E314();
    sub_24A506EB8(v13, qword_27EF5C118);
    v14 = sub_24A62E2F4();
    v15 = sub_24A62EF64();
    v16 = os_log_type_enabled(v14, v15);
    v54 = a1;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v56 = v18;
      *v17 = 136315138;
      if (a1)
      {
        v19 = 2003789907;
      }

      else
      {
        v19 = 1701079368;
      }

      v20 = sub_24A509BA8(v19, 0xE400000000000000, &v56);

      *(v17 + 4) = v20;
      _os_log_impl(&dword_24A503000, v14, v15, "🧭 FMFindingViewCtrl: %s FMPF scene", v17, 0xCu);
      sub_24A508C54(v18);
      MEMORY[0x24C21BBE0](v18, -1, -1);
      MEMORY[0x24C21BBE0](v17, -1, -1);
    }

    v21 = *&v12[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView];
    v22 = *&v21[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
    v23 = v54;
    if (v22)
    {
      v24 = v21;
      v25 = v22;
      sub_24A5D6450((v23 & 1) == 0, *&a3, 0);
    }

    [v12 accessibilityShowViewHandler];
    v26 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
    swift_beginAccess();
    sub_24A6231F0(&v12[v26], v7, type metadata accessor for FMFindingViewState);
    v53 = *v7;
    v27 = v5[5];
    v28 = sub_24A62E214();
    (*(*(v28 - 8) + 16))(&v10[v27], &v7[v27], v28);
    v29 = v5[7];
    v30 = &v7[v5[6]];
    v31 = *(v30 + 1);
    v50 = *v30;
    v32 = v7[v29];
    v33 = &v7[v5[8]];
    *&v61[13] = *(v33 + 93);
    v34 = *(v33 + 5);
    v60 = *(v33 + 4);
    *v61 = v34;
    v35 = *(v33 + 3);
    v58 = *(v33 + 2);
    v59 = v35;
    v36 = v5[10];
    v49 = v7[v5[9]];
    v51 = v7[v36];
    v52 = v32;
    v38 = *v33;
    v37 = *(v33 + 1);
    v39 = v5[13];
    v48 = v7[v5[12]];
    v56 = v38;
    v57 = v37;
    v40 = v7[v39];
    v41 = v7[v5[14]];

    sub_24A508CE4(&v56, &v55);
    sub_24A623258(v7, type metadata accessor for FMFindingViewState);
    v42 = &v10[v5[15]];
    *v42 = 0;
    *(v42 + 1) = 0;
    *v10 = v53;
    v43 = &v10[v5[6]];
    *v43 = v50;
    *(v43 + 1) = v31;
    v10[v5[7]] = v52;
    v44 = &v10[v5[8]];
    v45 = *v61;
    *(v44 + 4) = v60;
    *(v44 + 5) = v45;
    *(v44 + 93) = *&v61[13];
    v46 = v57;
    *v44 = v56;
    *(v44 + 1) = v46;
    v47 = v59;
    *(v44 + 2) = v58;
    *(v44 + 3) = v47;
    v10[v5[9]] = v49;
    v10[v5[10]] = v51;
    v10[v5[11]] = v23 & 1;
    v10[v5[12]] = v48;
    v10[v5[13]] = v40;
    v10[v5[14]] = v41;
    sub_24A60AB3C(v10);
    sub_24A623258(v10, type metadata accessor for FMFindingViewState);
  }
}

uint64_t sub_24A62128C()
{
  v1 = type metadata accessor for FMFindingViewState(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v87 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v92 = &v87 - v5;
  v6 = sub_24A62E0F4();
  v90 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v91 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMFindingSessionState(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v0;
  v11 = *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session);
  v12 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  sub_24A6231F0(v11 + v12, v10, type metadata accessor for FMFindingSessionState);
  v13 = *(v10 + 1);
  if (*(v13 + 16) && (v14 = sub_24A515AC8(&v10[*(v8 + 36)]), (v15 & 1) != 0))
  {
    sub_24A508AE4(*(v13 + 56) + 40 * v14, v127);
    sub_24A508CA0(v127, v128);
    sub_24A623258(v10, type metadata accessor for FMFindingSessionState);
    v16 = v129;
    v17 = v130;
    sub_24A50A204(v128, v129);
    (*(v17 + 40))(&v109, v16, v17);
    sub_24A62F104();
    v19 = v18;
    v121 = v113;
    v122 = v114;
    v123 = v115;
    v20 = v109;
    v124 = v116;
    v117 = v109;
    v118 = v110;
    v119 = v111;
    v120 = v112;
    v21 = v93;
    v22 = v93 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo;
    v126 = *(v93 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo + 112);
    v23 = *(v93 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo + 96);
    v125[5] = *(v93 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo + 80);
    v125[6] = v23;
    v24 = *(v93 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo + 64);
    v125[3] = *(v93 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo + 48);
    v125[4] = v24;
    v25 = *(v93 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo + 32);
    v125[1] = *(v93 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo + 16);
    v125[2] = v25;
    v125[0] = *(v93 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo);
    v26 = v109;
    v27 = v110;
    v28 = v112;
    *(v22 + 32) = v111;
    *(v22 + 48) = v28;
    *v22 = v26;
    *(v22 + 16) = v27;
    v29 = v113;
    v30 = v114;
    v31 = v115;
    *(v22 + 112) = v116;
    *(v22 + 80) = v30;
    *(v22 + 96) = v31;
    *(v22 + 64) = v29;
    sub_24A595890(&v109, &v102);
    sub_24A595890(&v109, &v102);
    sub_24A50D6A4(v125, &qword_27EF50F28, &unk_24A638478);
    v32 = *(v21 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerView);
    if (v32)
    {
      v33 = 1.0 / v20;
      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = swift_allocObject();
      *(v35 + 16) = v34;
      *(v35 + 24) = v19;
      *(v35 + 32) = v33;
      v36 = &v32[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playingHandler];
      v37 = *&v32[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playingHandler];
      v38 = *&v32[OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playingHandler + 8];
      *v36 = sub_24A6232F0;
      v36[1] = v35;

      sub_24A50D354(v37, v38);
    }

    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v39 = sub_24A62E314();
    sub_24A506EB8(v39, qword_27EF5C118);
    sub_24A595890(&v109, &v102);
    v40 = sub_24A62E2F4();
    v41 = sub_24A62EF64();
    sub_24A5294D0(&v109);
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v89 = v6;
      v44 = v3;
      v45 = v43;
      *&v94 = v43;
      *v42 = 136315138;
      v46 = v32;
      v47 = *(&v115 + 1);
      v48 = v116;
      sub_24A595890(&v109, &v102);
      v49 = v48;
      v32 = v46;
      v50 = sub_24A509BA8(v47, v49, &v94);
      sub_24A5294D0(&v109);
      *(v42 + 4) = v50;
      _os_log_impl(&dword_24A503000, v40, v41, "🧭 FMFindingViewCtrl: Asked to start playing 'found item' video (%s)", v42, 0xCu);
      sub_24A508C54(v45);
      v51 = v45;
      v3 = v44;
      v6 = v89;
      MEMORY[0x24C21BBE0](v51, -1, -1);
      MEMORY[0x24C21BBE0](v42, -1, -1);
    }

    v52 = v91;
    if (v32)
    {
      v98 = v121;
      v99 = v122;
      v100 = v123;
      v101 = v124;
      v94 = v117;
      v95 = v118;
      v96 = v119;
      v97 = v120;
      sub_24A5A2344(*(&v115 + 1), v116, 0, 0, 0, 1, &v94);
      sub_24A5294D0(&v109);
      v106 = v98;
      v107[0] = v99;
      v107[1] = v100;
      v108 = v101;
      v102 = v94;
      v103 = v95;
      v104 = v96;
      v105 = v97;
      sub_24A50D6A4(&v102, &qword_27EF50F28, &unk_24A638478);
    }

    else
    {
      sub_24A5294D0(&v109);
      sub_24A5294D0(&v109);
    }

    type metadata accessor for FMFindingViewController(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v54 = [objc_opt_self() bundleForClass_];
    v55 = sub_24A62EBE4();
    v91 = v54;
    v56 = [v54 URLForResource:v55 withExtension:0];

    if (v56)
    {
      sub_24A62E0D4();

      if (v32)
      {
        v57 = [v32 layer];
        v58 = sub_24A62E0B4();
        v59 = SFAdjustmentFiltersForAssetTypeAndURL();

        sub_24A50D7EC(0, &qword_27EF502B0, 0x277CD9EA0);
        v60 = sub_24A62ED64();

        sub_24A60DFB0(v60);

        v61 = sub_24A62ED54();

        [v57 setFilters_];
      }

      (*(v90 + 8))(v52, v6);
    }

    v62 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
    v63 = v93;
    swift_beginAccess();
    sub_24A6231F0(v63 + v62, v3, type metadata accessor for FMFindingViewState);
    LODWORD(v90) = *v3;
    v64 = v1[5];
    v65 = sub_24A62E214();
    v66 = v92;
    (*(*(v65 - 8) + 16))(&v92[v64], &v3[v64], v65);
    v67 = &v3[v1[6]];
    v69 = *v67;
    v68 = *(v67 + 1);
    v70 = v3[v1[7]];
    v71 = &v3[v1[8]];
    *(v107 + 13) = *(v71 + 93);
    v72 = *(v71 + 5);
    v106 = *(v71 + 4);
    v107[0] = v72;
    v73 = *(v71 + 3);
    v104 = *(v71 + 2);
    v105 = v73;
    v74 = v1[10];
    v87 = v3[v1[9]];
    v88 = v3[v74];
    LODWORD(v89) = v70;
    v75 = *(v71 + 1);
    v76 = v1[12];
    v77 = v3[v1[11]];
    v102 = *v71;
    v103 = v75;
    LOBYTE(v63) = v3[v76];
    v78 = v3[v1[13]];

    sub_24A508CE4(&v102, &v94);
    sub_24A623258(v3, type metadata accessor for FMFindingViewState);
    v79 = (v66 + v1[15]);
    *v79 = 0;
    v79[1] = 0;
    *v66 = v90;
    v80 = (v66 + v1[6]);
    *v80 = v69;
    v80[1] = v68;
    *(v66 + v1[7]) = v89;
    v81 = v66 + v1[8];
    v82 = v107[0];
    *(v81 + 4) = v106;
    *(v81 + 5) = v82;
    *(v81 + 93) = *(v107 + 13);
    v83 = v103;
    *v81 = v102;
    *(v81 + 1) = v83;
    v84 = v105;
    *(v81 + 2) = v104;
    *(v81 + 3) = v84;
    v85 = v88;
    *(v66 + v1[9]) = v87;
    *(v66 + v1[10]) = v85;
    *(v66 + v1[11]) = v77;
    *(v66 + v1[12]) = v63;
    *(v66 + v1[13]) = v78;
    *(v66 + v1[14]) = 1;
    sub_24A60AB3C(v66);

    sub_24A623258(v66, type metadata accessor for FMFindingViewState);
    return sub_24A508C54(v128);
  }

  else
  {
    result = sub_24A62F444();
    __break(1u);
  }

  return result;
}

void sub_24A621C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = Strong + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_lastTimeFoundItemVideo;
    *v13 = a1;
    *(v13 + 8) = a2;
    *(v13 + 16) = a3;
    *(v13 + 24) = 0;
    v14 = Strong + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
    swift_beginAccess();
    if (*(v14 + *(type metadata accessor for FMFindingViewState(0) + 52)) == 1)
    {
      sub_24A62F104();
      if (vabdd_f64(v15, a5) <= a6 * 4.0)
      {
        if (qword_27EF4E9A0 != -1)
        {
          swift_once();
        }

        v16 = sub_24A62E314();
        sub_24A506EB8(v16, qword_27EF5C118);
        v17 = sub_24A62E2F4();
        v18 = sub_24A62EF64();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_24A503000, v17, v18, "🧭 FMFindingViewCtrl: Ready to stop playing 'found item' video", v19, 2u);
          MEMORY[0x24C21BBE0](v19, -1, -1);
        }

        if (*&v12[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_autoStopPlayingVideoWorkItem])
        {

          sub_24A62EB34();
        }

        sub_24A621E00();
      }
    }
  }
}

uint64_t sub_24A621E00()
{
  v1 = v0;
  v2 = type metadata accessor for FMFindingViewState(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v46 - v6;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v8 = sub_24A62E314();
  sub_24A506EB8(v8, qword_27EF5C118);
  v9 = sub_24A62E2F4();
  v10 = sub_24A62EF64();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24A503000, v9, v10, "🧭 FMFindingViewCtrl: Asked to stop playing 'found item' video", v11, 2u);
    MEMORY[0x24C21BBE0](v11, -1, -1);
  }

  v12 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerView);
  if (v12)
  {
    sub_24A5A2BD0();
    v13 = (v12 + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playingHandler);
    v14 = *(v12 + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playingHandler);
    v15 = *(v12 + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_playingHandler + 8);
    *v13 = 0;
    v13[1] = 0;
    sub_24A50D354(v14, v15);
  }

  v16 = v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_lastTimeFoundItemVideo;
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  *(v16 + 24) = 1;
  v17 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView);
  v18 = *&v17[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
  if (v18)
  {
    v19 = *&v17[OBJC_IVAR____TtC11FMFindingUI8FMPFView_lastAskedRadiusFactor];
    v20 = v17[OBJC_IVAR____TtC11FMFindingUI8FMPFView_lastAskedRadiusFactor + 8];
    v21 = (v17[OBJC_IVAR____TtC11FMFindingUI8FMPFView_lastAskedSprungRadiusFactor] == 2) | v17[OBJC_IVAR____TtC11FMFindingUI8FMPFView_lastAskedSprungRadiusFactor];
    v22 = v17;
    v23 = v18;
    sub_24A5D7078(v19, v20, v21 & 1);
  }

  v24 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
  swift_beginAccess();
  sub_24A6231F0(v1 + v24, v4, type metadata accessor for FMFindingViewState);
  v47 = *v4;
  v25 = v2[5];
  v26 = sub_24A62E214();
  (*(*(v26 - 8) + 16))(&v7[v25], &v4[v25], v26);
  v27 = &v4[v2[6]];
  v29 = *v27;
  v28 = *(v27 + 1);
  v30 = v4[v2[7]];
  v31 = &v4[v2[8]];
  *(v54 + 13) = *(v31 + 93);
  v32 = *(v31 + 5);
  v53 = *(v31 + 4);
  v54[0] = v32;
  v33 = *(v31 + 3);
  v51 = *(v31 + 2);
  v52 = v33;
  v34 = *(v31 + 1);
  v35 = v2[10];
  v36 = v4[v2[9]];
  v49 = *v31;
  v50 = v34;
  v46 = v1;
  v37 = v4[v35];
  v38 = v4[v2[11]];

  sub_24A508CE4(&v49, v48);
  sub_24A623258(v4, type metadata accessor for FMFindingViewState);
  v39 = &v7[v2[15]];
  *v39 = 0;
  *(v39 + 1) = 0;
  *v7 = v47;
  v40 = &v7[v2[6]];
  *v40 = v29;
  *(v40 + 1) = v28;
  v7[v2[7]] = v30;
  v41 = &v7[v2[8]];
  v42 = v54[0];
  *(v41 + 4) = v53;
  *(v41 + 5) = v42;
  *(v41 + 93) = *(v54 + 13);
  v43 = v50;
  *v41 = v49;
  *(v41 + 1) = v43;
  v44 = v52;
  *(v41 + 2) = v51;
  *(v41 + 3) = v44;
  v7[v2[9]] = v36;
  v7[v2[10]] = v37;
  v7[v2[11]] = v38;
  v7[v2[12]] = 0;
  v7[v2[13]] = 0;
  v7[v2[14]] = 0;
  sub_24A60AB3C(v7);
  return sub_24A623258(v7, type metadata accessor for FMFindingViewState);
}

void sub_24A6221F4(char a1)
{
  v2 = v1;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v4 = sub_24A62E314();
  sub_24A506EB8(v4, qword_27EF5C118);
  v5 = sub_24A62E2F4();
  v6 = sub_24A62EF64();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    if (a1)
    {
      v9 = 0x7075206465657073;
    }

    else
    {
      v9 = 0x776F6420776F6C73;
    }

    if (a1)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v10 = 0xE90000000000006ELL;
    }

    v11 = sub_24A509BA8(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_24A503000, v5, v6, "🧭 FMFindingViewCtrl: Asked to %s 'found item' video", v7, 0xCu);
    sub_24A508C54(v8);
    MEMORY[0x24C21BBE0](v8, -1, -1);
    MEMORY[0x24C21BBE0](v7, -1, -1);
  }

  v13 = *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerView);
  if (v13)
  {
    v14 = *(v13 + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_player);
    if (v14)
    {
      LODWORD(v12) = 1.0;
      if (a1)
      {
        *&v12 = 2.0;
      }

      [v14 setRate_];
    }
  }
}

void sub_24A6223DC(int a1, int a2)
{
  v3 = v2;
  LODWORD(v101) = a2;
  LODWORD(v102) = a1;
  v4 = type metadata accessor for FMFindingViewState(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v90 - v8;
  v10 = sub_24A62EB14();
  v98 = *(v10 - 1);
  v99 = v10;
  MEMORY[0x28223BE20](v10);
  v96 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v97 = &v90 - v13;
  v94 = sub_24A62EA94();
  MEMORY[0x28223BE20](v94);
  v95 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for FMFindingSessionState(0);
  MEMORY[0x28223BE20](v100);
  v16 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v17 = sub_24A62E314();
  sub_24A506EB8(v17, qword_27EF5C118);
  v18 = sub_24A62E2F4();
  v19 = sub_24A62EF64();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = v20;
    *v20 = 67109376;
    *(v20 + 4) = v102 & 1;
    *(v20 + 8) = 1024;
    v22 = v101 != 2 && (v101 & 1) != 0;
    *(v20 + 10) = v22;
    _os_log_impl(&dword_24A503000, v18, v19, "🧭 FMFindingViewCtrl: Set playing video to %{BOOL}d, immediately=%{BOOL}d", v20, 0xEu);
    MEMORY[0x24C21BBE0](v21, -1, -1);
  }

  v23 = (v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo);
  v114 = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo + 112);
  v24 = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo + 80);
  v113[4] = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo + 64);
  v113[5] = v24;
  v113[6] = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo + 96);
  v25 = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo + 16);
  v113[0] = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo);
  v113[1] = v25;
  v26 = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo + 48);
  v113[2] = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo + 32);
  v113[3] = v26;
  if (v114)
  {
    v92 = v9;
    v93 = v16;
    v91 = v6;
    v27 = v23[4];
    v28 = v23[6];
    v111[0] = v23[5];
    v111[1] = v28;
    v29 = v23[1];
    v106 = *v23;
    v30 = v23[2];
    v31 = v23[3];
    v107 = v29;
    v108 = v30;
    v32 = *&v113[0];
    v112 = *(v23 + 14);
    v109 = v31;
    v110 = v27;
    sub_24A595890(&v106, &v103);
    sub_24A62F104();
    v34 = v33;
    sub_24A62F104();
    sub_24A50D6A4(v113, &qword_27EF50F28, &unk_24A638478);
    if (v102)
    {
      v16 = v93;
      goto LABEL_13;
    }

    v50 = 1.0 / v32 * 4.0;
  }

  else
  {
    if (v102)
    {
LABEL_13:
      v35 = v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
      swift_beginAccess();
      if ((*(v35 + *(v4 + 56)) & 1) == 0)
      {
        v36 = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView);
        v37 = &v36[OBJC_IVAR____TtC11FMFindingUI8FMPFView_lastAskedRadiusFactor];
        *v37 = 0x3FF0000000000000;
        v37[8] = 0;
        v36[OBJC_IVAR____TtC11FMFindingUI8FMPFView_lastAskedSprungRadiusFactor] = 1;
        v38 = *&v36[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
        if (v38)
        {
          v39 = v36;
          v40 = v38;
          sub_24A5D7078(0x3FF0000000000000, 0, 1);
        }

        if (*(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_autoStopPlayingVideoWorkItem))
        {

          sub_24A62EB34();
        }

        v41 = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session);
        v42 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
        swift_beginAccess();
        sub_24A6231F0(v41 + v42, v16, type metadata accessor for FMFindingSessionState);
        v43 = *(v16 + 1);
        if (*(v43 + 16) && (v44 = sub_24A515AC8(&v16[*(v100 + 36)]), (v45 & 1) != 0))
        {
          sub_24A508AE4(*(v43 + 56) + 40 * v44, &v103);
          sub_24A508CA0(&v103, &v106);
          sub_24A623258(v16, type metadata accessor for FMFindingSessionState);
          v46 = *(&v107 + 1);
          v47 = v108;
          sub_24A50A204(&v106, *(&v107 + 1));
          (*(v47 + 24))(&v103, v46, v47);
          v48 = v105;
          sub_24A55B284(v103, *(&v103 + 1), v104, v105);
          v49 = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerView);
          if (v49)
          {
            *(v49 + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_disableAutoLoop) = v48 == 1;
          }

          sub_24A62128C();
          sub_24A508C54(&v106);
        }

        else
        {
          sub_24A62F444();
          __break(1u);
        }
      }

      return;
    }

    v91 = v6;
    v92 = v9;
    v50 = 0.0666666667;
    v34 = 0.0;
  }

  v51 = v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
  swift_beginAccess();
  if (*(v51 + *(v4 + 56)) == 1)
  {
    if ((v101 == 2 || (v101 & 1) == 0) && ((*(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_lastTimeFoundItemVideo + 24) & 1) != 0 || (sub_24A62F104(), vabdd_f64(v52, v34) > v50)))
    {
      if ((*(v51 + *(v4 + 52)) & 1) == 0)
      {
        v53 = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerView);
        if (v53)
        {
          *(v53 + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_disableAutoLoop) = 1;
        }

        v102 = v4;
        v54 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_autoStopPlayingVideoWorkItem;
        if (*(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_autoStopPlayingVideoWorkItem))
        {

          sub_24A62EB34();
        }

        v55 = swift_allocObject();
        swift_unknownObjectWeakInit();
        *&v108 = sub_24A6231E8;
        *(&v108 + 1) = v55;
        *&v106 = MEMORY[0x277D85DD0];
        *(&v106 + 1) = 1107296256;
        *&v107 = sub_24A5A8458;
        *(&v107 + 1) = &unk_285DAB418;
        _Block_copy(&v106);
        *&v103 = MEMORY[0x277D84F90];
        sub_24A545F60();

        sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
        sub_24A529464();
        sub_24A62F254();
        sub_24A62EB44();
        swift_allocObject();
        v56 = sub_24A62EB24();

        *(v3 + v54) = v56;
        v101 = v56;

        sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
        v57 = sub_24A62F014();
        v58 = v96;
        sub_24A62EB04();
        v59 = v97;
        sub_24A62EB54();
        v60 = *(v98 + 8);
        v61 = v58;
        v62 = v99;
        v60(v61, v99);
        sub_24A62EFE4();

        v60(v59, v62);
        v99 = type metadata accessor for FMFindingViewState;
        v63 = v91;
        sub_24A6231F0(v51, v91, type metadata accessor for FMFindingViewState);
        LODWORD(v100) = *v63;
        v64 = v102;
        v65 = v102[5];
        v66 = sub_24A62E214();
        v67 = v92;
        (*(*(v66 - 8) + 16))(v92 + v65, &v63[v65], v66);
        v68 = v64[6];
        v69 = v64[7];
        v70 = &v63[v64[8]];
        *(v111 + 13) = *(v70 + 93);
        v71 = *(v70 + 5);
        v110 = *(v70 + 4);
        v111[0] = v71;
        v72 = *(v70 + 3);
        v108 = *(v70 + 2);
        v109 = v72;
        v73 = *v70;
        v107 = *(v70 + 1);
        v74 = &v63[v68];
        v76 = *v74;
        v75 = *(v74 + 1);
        v77 = v63[v69];
        v78 = v64[10];
        LODWORD(v96) = v63[v64[9]];
        LODWORD(v97) = v63[v78];
        v79 = v64[12];
        v80 = v63[v64[11]];
        v106 = v73;
        LODWORD(v95) = v63[v79];
        LODWORD(v98) = v63[v64[14]];

        sub_24A508CE4(&v106, &v103);
        v81 = v63;
        v82 = v99;
        sub_24A623258(v81, v99);
        v83 = (v67 + v64[15]);
        *v83 = 0;
        v83[1] = 0;
        *v67 = v100;
        v84 = (v67 + v64[6]);
        *v84 = v76;
        v84[1] = v75;
        *(v67 + v64[7]) = v77;
        v85 = v67 + v64[8];
        v86 = v109;
        v87 = v111[0];
        *(v85 + 4) = v110;
        *(v85 + 5) = v87;
        v88 = v107;
        v89 = v108;
        *v85 = v106;
        *(v85 + 1) = v88;
        *(v85 + 93) = *(v111 + 13);
        *(v85 + 2) = v89;
        *(v85 + 3) = v86;
        *(v67 + v64[9]) = v96;
        *(v67 + v64[10]) = v97;
        *(v67 + v64[11]) = v80;
        *(v67 + v64[12]) = v95;
        *(v67 + v64[13]) = 1;
        *(v67 + v64[14]) = v98;
        sub_24A60AB3C(v67);
        sub_24A6221F4(1);

        sub_24A623258(v67, v82);
      }
    }

    else
    {
      sub_24A621E00();
    }
  }
}

void sub_24A622EF0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v3 = sub_24A62E314();
    sub_24A506EB8(v3, qword_27EF5C118);
    v4 = sub_24A62E2F4();
    v5 = sub_24A62EF64();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24A503000, v4, v5, "🧭 FMFindingViewCtrl: Autostop playing 'found item' video (timeout)", v6, 2u);
      MEMORY[0x24C21BBE0](v6, -1, -1);
    }

    sub_24A621E00();
  }
}

void sub_24A623004(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v3 = sub_24A62E314();
    sub_24A506EB8(v3, qword_27EF5C118);
    v4 = sub_24A62E2F4();
    v5 = sub_24A62EF64();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24A503000, v4, v5, "🧭 FMFindingViewCtrl: Reach mode in here for 1 sec, will now play video", v6, 2u);
      MEMORY[0x24C21BBE0](v6, -1, -1);
    }

    v7 = &v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state];
    swift_beginAccess();
    if ((v7[*(type metadata accessor for FMFindingViewState(0) + 56)] & 1) == 0)
    {
      v8 = &v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController];
      swift_beginAccess();
      sub_24A50A204(v8, *(v8 + 3));
      sub_24A57FDA8();
    }

    sub_24A6223DC(1, 2);
  }
}

uint64_t sub_24A623190()
{
  MEMORY[0x24C21BCD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double sub_24A6231D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_24A6231F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A623258(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A6232B8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_24A62330C(void *a1, double a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = 0.0;
  v14[0] = 0.0;
  v11 = 0;
  v12 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  v7 = 0;
  v8 = 0.0;
  if ([v2 getRed:v14 green:&v13 blue:&v12 alpha:&v11])
  {
    v5 = a1 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || ![a1 getRed:&v10 green:&v9 blue:&v8 alpha:&v7])
  {
    return 0;
  }

  else
  {
    return [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:(1.0 - a2) * v14[0] + v10 * a2 green:(1.0 - a2) * v13 + v9 * a2 blue:(1.0 - a2) * v12 + v8 * a2 alpha:1.0];
  }
}

id sub_24A62344C()
{
  result = [objc_opt_self() blackColor];
  qword_27EF5C840 = result;
  return result;
}

double sub_24A6234E8@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_24A62E764();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetMidX(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetMidY(v15);
  sub_24A62E724();
  sub_24A62E734();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

double sub_24A6235D8@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

double sub_24A6235E4(double *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

double (*sub_24A6235F0(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_24A62361C;
}

double sub_24A62361C(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 8) = *a1;
  return result;
}

uint64_t sub_24A62362C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A624808();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24A623690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A624808();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24A6236F4(uint64_t a1)
{
  v2 = sub_24A624808();

  return MEMORY[0x282133738](a1, v2);
}

unint64_t sub_24A623744()
{
  result = qword_27EF52508;
  if (!qword_27EF52508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF52508);
  }

  return result;
}

unint64_t sub_24A62379C()
{
  result = qword_27EF52510;
  if (!qword_27EF52510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF52510);
  }

  return result;
}

unint64_t sub_24A6237F4()
{
  result = qword_27EF52518;
  if (!qword_27EF52518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF52518);
  }

  return result;
}

double sub_24A623878@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_24A62E764();
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetMidX(v16);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetMidX(v17);
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetMidX(v18);
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetMidX(v19);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetMidX(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetMidX(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  CGRectGetMinY(v22);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  CGRectGetMaxX(v23);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  CGRectGetMidX(v24);
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  CGRectGetMidX(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  CGRectGetMidX(v26);
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  CGRectGetMidX(v27);
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  CGRectGetMidX(v28);
  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  CGRectGetMidX(v29);
  v30.origin.x = a2;
  v30.origin.y = a3;
  v30.size.width = a4;
  v30.size.height = a5;
  CGRectGetMidX(v30);
  v31.origin.x = a2;
  v31.origin.y = a3;
  v31.size.width = a4;
  v31.size.height = a5;
  CGRectGetMidX(v31);
  v32.origin.x = a2;
  v32.origin.y = a3;
  v32.size.width = a4;
  v32.size.height = a5;
  CGRectGetMinY(v32);
  v33.origin.x = a2;
  v33.origin.y = a3;
  v33.size.width = a4;
  v33.size.height = a5;
  CGRectGetMaxX(v33);
  v34.origin.x = a2;
  v34.origin.y = a3;
  v34.size.width = a4;
  v34.size.height = a5;
  CGRectGetMaxX(v34);
  v35.origin.x = a2;
  v35.origin.y = a3;
  v35.size.width = a4;
  v35.size.height = a5;
  CGRectGetMidX(v35);
  v36.origin.x = a2;
  v36.origin.y = a3;
  v36.size.width = a4;
  v36.size.height = a5;
  CGRectGetMaxX(v36);
  v37.origin.x = a2;
  v37.origin.y = a3;
  v37.size.width = a4;
  v37.size.height = a5;
  CGRectGetMidX(v37);
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  CGRectGetMaxX(v38);
  v39.origin.x = a2;
  v39.origin.y = a3;
  v39.size.width = a4;
  v39.size.height = a5;
  CGRectGetMidX(v39);
  v40.origin.x = a2;
  v40.origin.y = a3;
  v40.size.width = a4;
  v40.size.height = a5;
  CGRectGetMaxX(v40);
  sub_24A62E724();
  sub_24A62E754();
  sub_24A62E754();
  result = *&v13;
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  return result;
}