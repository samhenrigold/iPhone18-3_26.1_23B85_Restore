uint64_t sub_1D3333E0C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = sub_1D33DEC24();
  v5 = sub_1D3333FA4(&qword_1EDEC0050, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  MEMORY[0x1D38B6CE0](v4, v5);
  sub_1D33DE4B4();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v0[19] = sub_1D33DE964();
  v6 = sub_1D334CB54(&unk_1EDEBEFA8, &qword_1EC761168, &qword_1D33E2568, MEMORY[0x1E695BF38]);
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_1D3359094;
  v8 = v0[12];
  v9 = v0[8];

  return MEMORY[0x1EEE6D8C8](v9, v8, v6);
}

uint64_t sub_1D3333FA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1D3334010()
{
  v1 = type metadata accessor for RecentsItem(0);
  v26 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v27 = v0;
  sub_1D33927E0(&unk_1EDEBF560, type metadata accessor for ConversationDataSource, &protocol conformance descriptor for ConversationDataSource);
  sub_1D33DDED4();

  v4 = v0 + OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource_state;
  os_unfair_lock_lock(v4);
  v5 = *(v4 + 8);

  os_unfair_lock_unlock(v4);
  v27 = MEMORY[0x1E69E7CC0];
  if (v5 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D33DEE14())
  {
    v7 = 0;
    v8 = &selRef_setOriginatingUIType_;
    v9 = &selRef_setOriginatingUIType_;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1D38B75D0](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v10 = *(v5 + 8 * v7 + 32);
      }

      v11 = v10;
      v12 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (![v10 v8[87]] && !objc_msgSend(v11, v9[88]))
      {
        v13 = [v11 link];
        if (v13)
        {

          goto LABEL_18;
        }

        v14 = [v11 mergedRemoteMembers];
        sub_1D331DA18(0, &unk_1EC761E40, 0x1E69D8B80);
        sub_1D3357A1C(&unk_1EC7619C0, &unk_1EC761E40, 0x1E69D8B80, MEMORY[0x1E69E81B8]);
        v15 = sub_1D33DEA54();

        if ((v15 & 0xC000000000000001) != 0)
        {
          v16 = sub_1D33DEE14();
        }

        else
        {
          v16 = *(v15 + 16);
        }

        if (v16 <= 0)
        {
        }

        else
        {
LABEL_18:
          sub_1D33DEF84();
          sub_1D33DEFB4();
          sub_1D33DEFC4();
          sub_1D33DEF94();
        }

        v8 = &selRef_setOriginatingUIType_;
        v9 = &selRef_setOriginatingUIType_;
        goto LABEL_5;
      }

LABEL_5:
      ++v7;
      if (v12 == i)
      {
        v17 = v27;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_27:

  if (v17 < 0 || (v17 & 0x4000000000000000) != 0)
  {
    goto LABEL_44;
  }

  v18 = *(v17 + 16);
  if (v18)
  {
LABEL_30:
    v19 = 0;
    v20 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1D38B75D0](v19, v17);
        v22 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v19 >= *(v17 + 16))
        {
          goto LABEL_43;
        }

        v21 = *(v17 + 8 * v19 + 32);
        v22 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          v18 = sub_1D33DEE14();
          if (!v18)
          {
            break;
          }

          goto LABEL_30;
        }
      }

      sub_1D33A23D0(v21, v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1D33226AC(0, v20[2] + 1, 1, v20);
      }

      v24 = v20[2];
      v23 = v20[3];
      if (v24 >= v23 >> 1)
      {
        v20 = sub_1D33226AC((v23 > 1), v24 + 1, 1, v20);
      }

      v20[2] = v24 + 1;
      sub_1D33302BC(v3, v20 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24);
      ++v19;
      if (v22 == v18)
      {
        goto LABEL_46;
      }
    }
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_46:

  return v20;
}

uint64_t sub_1D3334470(uint64_t a1, char a2)
{
  v4 = type metadata accessor for RecentsItem(0) - 8;
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v11 = *(v6 + 72);
    v12 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D332CE34(v10, v8, type metadata accessor for RecentsItem);
      v13 = sub_1D3337D6C();
      sub_1D3337A54(v8, type metadata accessor for RecentsItem);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D3337BEC(0, v12[2] + 1, 1, v12);
        v12 = result;
      }

      v15 = v12[2];
      v14 = v12[3];
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        result = sub_1D3337BEC((v14 > 1), v15 + 1, 1, v12);
        v12 = result;
      }

      v12[2] = v16;
      v12[v15 + 4] = v13;
      v10 += v11;
      --v9;
    }

    while (v9);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
    v16 = *(MEMORY[0x1E69E7CC0] + 16);
    v17 = MEMORY[0x1E69E7CC0];
    if (!v16)
    {
LABEL_27:

      sub_1D3334788(v17, a2 & 1);
    }
  }

  v18 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  while (v18 < v12[2])
  {
    v19 = v12[v18 + 4];
    v20 = *(v19 + 16);
    v21 = v17[2];
    v22 = v21 + v20;
    if (__OFADD__(v21, v20))
    {
      goto LABEL_29;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v22 <= v17[3] >> 1)
    {
      if (*(v19 + 16))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v21 <= v22)
      {
        v24 = v21 + v20;
      }

      else
      {
        v24 = v21;
      }

      v17 = sub_1D3338090(isUniquelyReferenced_nonNull_native, v24, 1, v17);
      if (*(v19 + 16))
      {
LABEL_23:
        v25 = (v17[3] >> 1) - v17[2];
        result = sub_1D33DDDB4();
        if (v25 < v20)
        {
          goto LABEL_31;
        }

        swift_arrayInitWithCopy();

        if (v20)
        {
          v26 = v17[2];
          v27 = __OFADD__(v26, v20);
          v28 = v26 + v20;
          if (v27)
          {
            goto LABEL_32;
          }

          v17[2] = v28;
        }

        goto LABEL_12;
      }
    }

    if (v20)
    {
      goto LABEL_30;
    }

LABEL_12:
    if (v16 == ++v18)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1D3334788(uint64_t a1, char a2)
{
  v276 = *MEMORY[0x1E69E9840];
  v256 = sub_1D33DDD34();
  v228 = *(v256 - 8);
  v3 = MEMORY[0x1EEE9AC00](v256);
  v224 = &v218 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v223 = &v218 - v5;
  v253 = sub_1D33DDDC4();
  v227 = *(v253 - 8);
  MEMORY[0x1EEE9AC00](v253);
  v252 = &v218 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = sub_1D33DDE84();
  v226 = *(v251 - 8);
  MEMORY[0x1EEE9AC00](v251);
  v250 = &v218 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = sub_1D33DDB54();
  v225 = *(v269 - 8);
  MEMORY[0x1EEE9AC00](v269);
  v249 = &v218 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v232 = &v218 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v218 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v234 = &v218 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v266 = &v218 - v17;
  v268 = type metadata accessor for ReminderStatus(0);
  v235 = *(v268 - 8);
  v18 = MEMORY[0x1EEE9AC00](v268);
  v241 = &v218 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v218 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v218 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761CD8, &unk_1D33E4A60);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v230 = &v218 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v237 = &v218 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v229 = &v218 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v236 = &v218 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  i = &v218 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v218 - v36;
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761450, &qword_1D33E1B10);
  v263 = *(v264 - 8);
  MEMORY[0x1EEE9AC00](v264);
  v267 = &v218 - v38;
  v39 = sub_1D33DDDB4();
  v239 = *(v39 - 8);
  v40 = MEMORY[0x1EEE9AC00](v39);
  v255 = &v218 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v270 = &v218 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v46 = &v218 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v262 = &v218 - v47;

  isUniquelyReferenced_nonNull_native = sub_1D3336A64(v48);

  v271 = v39;
  v231 = v14;
  v254 = v37;
  if ((a2 & 1) == 0)
  {
    v261 = v46;
    swift_beginAccess();

    sub_1D33DE4F4();

    v53 = v273;
    v46 = *(v273 + 16);
    if (v46)
    {
      v54 = sub_1D33D2BB0(*(v273 + 16), 0);
      v55 = sub_1D33D3B00(v275, &v54[(*(v239 + 80) + 32) & ~*(v239 + 80)], v46, v53);
      sub_1D331FEEC(v275[0]);
      if (v55 != v46)
      {
        __break(1u);
        goto LABEL_9;
      }
    }

    else
    {

      v54 = MEMORY[0x1E69E7CC0];
    }

    v56 = sub_1D3336A64(v54);

    if (*(v56 + 16) <= *(isUniquelyReferenced_nonNull_native + 16) >> 3)
    {
      goto LABEL_18;
    }

    v57 = sub_1D33B6714(v56, isUniquelyReferenced_nonNull_native);

    v58 = v57[2];
    if (v58)
    {
      while (1)
      {
        v51 = sub_1D33D2BB0(v58, 0);
        v56 = sub_1D33D3DA4(v275, &v51[(*(v239 + 80) + 32) & ~*(v239 + 80)], v58, v57);
        sub_1D331FEEC(v275[0]);
        if (v56 == v58)
        {
          break;
        }

        __break(1u);
LABEL_18:
        v275[0] = isUniquelyReferenced_nonNull_native;

        sub_1D3336C00(v56);

        v57 = v275[0];
        v58 = *(v275[0] + 2);
        if (!v58)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_19:

      v51 = MEMORY[0x1E69E7CC0];
    }

    v46 = v261;
    if (!*(v51 + 2))
    {

      return;
    }

    goto LABEL_21;
  }

  v50 = *(isUniquelyReferenced_nonNull_native + 16);
  if (v50)
  {
    v261 = v46;
    v51 = sub_1D33D2BB0(v50, 0);
    v260 = sub_1D33D3DA4(v275, &v51[(*(v239 + 80) + 32) & ~*(v239 + 80)], v50, isUniquelyReferenced_nonNull_native);
    v52 = v275[0];
    v259 = v275[4];

    sub_1D331FEEC(v52);
    if (v260 != v50)
    {
      __break(1u);
    }

    v37 = v254;
    v46 = v261;
    if (!*(v51 + 2))
    {
      goto LABEL_10;
    }

LABEL_21:
    if (qword_1EDEBF058 != -1)
    {
LABEL_112:
      swift_once();
    }

    v59 = sub_1D33DE464();
    v60 = __swift_project_value_buffer(v59, qword_1EDEC1440);

    v221 = v60;
    v61 = sub_1D33DE444();
    v62 = sub_1D33DEAF4();

    v63 = os_log_type_enabled(v61, v62);
    v233 = v51;
    v219 = v24;
    v222 = isUniquelyReferenced_nonNull_native;
    if (v63)
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v275[0] = v65;
      *v64 = 136315138;
      v66 = v51;
      v67 = v271;
      v68 = MEMORY[0x1D38B6F50](v66, v271);
      v70 = v46;
      v71 = sub_1D3328B48(v68, v69, v275);
      v37 = v254;

      *(v64 + 4) = v71;
      v46 = v70;
      _os_log_impl(&dword_1D331A000, v61, v62, "Populating cache for %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      MEMORY[0x1D38B81C0](v65, -1, -1);
      MEMORY[0x1D38B81C0](v64, -1, -1);
    }

    else
    {

      v67 = v271;
    }

    v72 = *(v238 + 16);
    v240 = v22;
    v73 = v262;
    if (v72)
    {
      v275[0] = MEMORY[0x1E69E7CC0];
      v74 = v233;
      v75 = *(v233 + 2);
      if (v75)
      {
        v258 = v72;
        v261 = objc_opt_self();
        v260 = *(v239 + 16);
        v76 = &v74[(*(v239 + 80) + 32) & ~*(v239 + 80)];
        v259 = *(v239 + 72);
        v77 = (v239 + 8);
        v78 = v271;
        do
        {
          v79 = v260;
          v260(v73, v76, v78);
          v79(v46, v73, v78);
          v80 = v73;
          v81 = v46;
          v82 = [v261 cdEntityName];
          if (!v82)
          {
            sub_1D33DE7B4();
            v82 = sub_1D33DE784();
          }

          v83 = objc_allocWithZone(MEMORY[0x1E69C6D10]);
          v84 = sub_1D33DDD64();
          [v83 initWithUUID:v84 entityName:v82];

          v85 = *v77;
          (*v77)(v81, v78);
          v86 = v85(v80, v78);
          MEMORY[0x1D38B6F20](v86);
          v46 = v81;
          if (*((v275[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v275[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D33DE8D4();
            v46 = v81;
          }

          sub_1D33DE8F4();
          v76 = v259 + v76;
          --v75;
          v73 = v262;
        }

        while (v75);
        v67 = v271;
        v74 = v233;
        v37 = v254;
        v72 = v258;
      }

      sub_1D331DA18(0, &qword_1EC761CE0, 0x1E69C6D10);
      v87 = sub_1D33DE8A4();

      v275[0] = 0;
      v88 = [v72 fetchRemindersWithObjectIDs:v87 error:v275];

      v89 = v275[0];
      v22 = v240;
      if (!v88)
      {
        v124 = v275[0];

        v125 = sub_1D33DDBE4();

        swift_willThrow();
        v126 = v125;
        v127 = sub_1D33DE444();
        v128 = sub_1D33DEAF4();

        if (os_log_type_enabled(v127, v128))
        {
          v129 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          *v129 = 138412290;
          v131 = v125;
          v132 = _swift_stdlib_bridgeErrorToNSError();
          *(v129 + 4) = v132;
          *v130 = v132;
          _os_log_impl(&dword_1D331A000, v127, v128, "reminderCache populate failed with error: %@", v129, 0xCu);
          sub_1D331E880(v130, &qword_1EC761D90, &unk_1D33E4E90);
          MEMORY[0x1D38B81C0](v130, -1, -1);
          MEMORY[0x1D38B81C0](v129, -1, -1);
        }

        else
        {
        }

        return;
      }

      sub_1D331DA18(0, &qword_1EC761CE8, 0x1E69C6D18);
      sub_1D3357A1C(&qword_1EC761CF0, &qword_1EC761CE0, 0x1E69C6D10, MEMORY[0x1E69E81B8]);
      v90 = sub_1D33DE6F4();
      v91 = v89;
    }

    else
    {
      v90 = 0;
      v74 = v233;
    }

    v92 = *(v74 + 2);
    v93 = MEMORY[0x1E69E7CC0];
    v220 = v90;
    if (v92)
    {
      v94 = v37;
      v275[0] = MEMORY[0x1E69E7CC0];
      v95 = MEMORY[0x1E6969868];
      sub_1D334B4AC(0, v92, 0);
      v261 = *(v239 + 16);
      v96 = &v74[(*(v239 + 80) + 32) & ~*(v239 + 80)];
      v260 = (v225 + 56);
      v93 = v275[0];
      v259 = (v225 + 48);
      v248 = (v225 + 32);
      v258 = *(v239 + 72);
      v247 = (v227 + 104);
      v246 = (v227 + 8);
      LODWORD(v245) = *v95;
      v244 = (v226 + 8);
      v243 = (v225 + 8);
      v242 = (v228 + 56);
      v262 = (v239 + 16);
      v257 = (v239 + 8);
      v97 = v219;
      v98 = v267;
      do
      {
        v99 = v270;
        v100 = v67;
        v101 = v67;
        v102 = v261;
        (v261)(v270, v96, v100);
        (v102)(v98, v99, v101);
        v103 = v94;
        v104 = v94;
        v105 = v269;
        (*v260)(v104, 1, 1, v269);
        *v97 = 1;
        v106 = i;
        sub_1D331E818(v103, i, &qword_1EC761CD8, &unk_1D33E4A60);
        if ((*v259)(v106, 1, v105) == 1)
        {
          v107 = v266;
          (*v242)(v266, 1, 1, v256);
        }

        else
        {
          v108 = v97;
          v109 = v249;
          (*v248)(v249, v106, v105);
          v110 = v252;
          v111 = v253;
          (*v247)(v252, v245, v253);
          v112 = v250;
          sub_1D33DDDD4();
          v113 = v111;
          v107 = v266;
          (*v246)(v110, v113);
          sub_1D33DDE44();
          (*v244)(v112, v251);
          v114 = v109;
          v97 = v108;
          v103 = v254;
          (*v243)(v114, v105);
        }

        v115 = *(v264 + 48);
        v116 = v268;
        sub_1D333842C(v107, &v97[*(v268 + 20)], &qword_1EC760E10, &unk_1D33E1A90);
        v97[*(v116 + 24)] = 0;
        v94 = v103;
        sub_1D331E880(v103, &qword_1EC761CD8, &unk_1D33E4A60);
        (*v257)(v270, v101);
        v98 = v267;
        sub_1D33B6048(v97, &v267[v115]);
        v275[0] = v93;
        v118 = v93[2];
        v117 = v93[3];
        if (v118 >= v117 >> 1)
        {
          sub_1D334B4AC((v117 > 1), v118 + 1, 1);
          v93 = v275[0];
        }

        v93[2] = v118 + 1;
        sub_1D333842C(v98, v93 + ((*(v263 + 80) + 32) & ~*(v263 + 80)) + *(v263 + 72) * v118, &qword_1EC761450, &qword_1D33E1B10);
        v96 = v258 + v96;
        --v92;
        v67 = v271;
      }

      while (v92);
      v22 = v240;
      v90 = v220;
    }

    if (v93[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761458, &qword_1D33E2990);
      v119 = sub_1D33DF124();
    }

    else
    {
      v119 = MEMORY[0x1E69E7CC8];
    }

    v275[0] = v119;

    v121 = 0;
    sub_1D33B6110(v120, 1, v275);

    isUniquelyReferenced_nonNull_native = v275[0];
    v272 = v275[0];
    if (v90)
    {
      v243 = 0;
      if ((v90 & 0xC000000000000001) != 0)
      {
        v122 = 0;
        v123 = 0;
        v51 = 0;
        v266 = sub_1D33DF024() | 0x8000000000000000;
      }

      else
      {
        v133 = -1 << *(v90 + 32);
        v123 = ~v133;
        v122 = v90 + 64;
        v134 = -v133;
        if (v134 < 64)
        {
          v135 = ~(-1 << v134);
        }

        else
        {
          v135 = -1;
        }

        v51 = (v135 & *(v90 + 64));
        v266 = v90;
      }

      v136 = v234;

      v137 = 0;
      v242 = v123;
      v37 = ((v123 + 64) >> 6);
      v264 = v225 + 56;
      v263 = v225 + 48;
      v260 = (v225 + 32);
      LODWORD(v259) = *MEMORY[0x1E6969868];
      v258 = (v227 + 104);
      v257 = (v227 + 8);
      v254 = (v226 + 8);
      v248 = (v225 + 8);
      v247 = (v228 + 56);
      v246 = (v228 + 48);
      v245 = (v228 + 32);
      v244 = (v228 + 8);
      v46 = (v239 + 16);
      v262 = (v239 + 8);
      for (i = v122; ; v122 = i)
      {
        if ((v266 & 0x8000000000000000) != 0)
        {
          v144 = sub_1D33DF0B4();
          if (!v144 || (v146 = v145, v273 = v144, sub_1D331DA18(0, &qword_1EC761CE0, 0x1E69C6D10), swift_dynamicCast(), v147 = v275[0], v273 = v146, sub_1D331DA18(0, &qword_1EC761CE8, 0x1E69C6D18), v142 = v147, swift_dynamicCast(), v143 = v275[0], v24 = v137, v270 = v51, !v142))
          {
LABEL_97:
            sub_1D331FEEC(v266);

            v121 = v243;
            break;
          }
        }

        else
        {
          v138 = v137;
          v139 = v51;
          v24 = v137;
          if (!v51)
          {
            while (1)
            {
              v24 = v138 + 1;
              if (__OFADD__(v138, 1))
              {
                break;
              }

              if (v24 >= v37)
              {
                goto LABEL_97;
              }

              v139 = *(v122 + 8 * v24);
              ++v138;
              if (v139)
              {
                goto LABEL_67;
              }
            }

            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
            goto LABEL_112;
          }

LABEL_67:
          v270 = ((v139 - 1) & v139);
          v140 = (v24 << 9) | (8 * __clz(__rbit64(v139)));
          v141 = *(*(v266 + 56) + v140);
          v142 = *(*(v266 + 48) + v140);
          v143 = v141;
          if (!v142)
          {
            goto LABEL_97;
          }
        }

        v148 = [v142 uuid];
        sub_1D33DDD84();

        v149 = [v143 isCompleted];
        v267 = v143;
        if (v149)
        {
          v150 = v236;
          v51 = v269;
          (*v264)(v236, 1, 1, v269);
          *v22 = 2;
          v151 = v150;
          v152 = v229;
          sub_1D331E818(v151, v229, &qword_1EC761CD8, &unk_1D33E4A60);
          if ((*v263)(v152, 1, v51) == 1)
          {
            (*v247)(v136, 1, 1, v256);
          }

          else
          {
            v160 = v249;
            (*v260)(v249, v152, v51, v256);
            v161 = v252;
            v162 = v253;
            (*v258)(v252, v259, v253);
            v163 = v250;
            sub_1D33DDDD4();
            (*v257)(v161, v162);
            sub_1D33DDE44();
            v164 = v163;
            v22 = v240;
            (*v254)(v164, v251);
            (*v248)(v160, v51);
          }

          v165 = v268;
          sub_1D333842C(v136, &v22[*(v268 + 20)], &qword_1EC760E10, &unk_1D33E1A90);
          v22[*(v165 + 24)] = 0;
          sub_1D331E880(v236, &qword_1EC761CD8, &unk_1D33E4A60);
        }

        else
        {
          v153 = [v143 dueDateComponents];
          v154 = v256;
          v155 = v269;
          if (v153)
          {
            v156 = v237;
            v157 = v153;
            sub_1D33DDB34();

            v158 = 0;
            v159 = v230;
          }

          else
          {
            v158 = 1;
            v159 = v230;
            v156 = v237;
          }

          v261 = v142;
          (*v264)(v156, v158, 1, v155);
          *v22 = 0;
          sub_1D331E818(v156, v159, &qword_1EC761CD8, &unk_1D33E4A60);
          if ((*v263)(v159, 1, v155) == 1)
          {
            v166 = v231;
            (*v247)(v231, 1, 1, v154);
          }

          else
          {
            v167 = v249;
            (*v260)(v249, v159, v269);
            v168 = v252;
            v169 = v253;
            (*v258)(v252, v259, v253);
            v170 = v250;
            sub_1D33DDDD4();
            (*v257)(v168, v169);
            v166 = v231;
            sub_1D33DDE44();
            v171 = v170;
            v22 = v240;
            (*v254)(v171, v251);
            (*v248)(v167, v269);
          }

          v51 = &unk_1D33E1A90;
          v172 = v268;
          v173 = *(v268 + 20);
          sub_1D333842C(v166, &v22[v173], &qword_1EC760E10, &unk_1D33E1A90);
          v174 = *(v172 + 24);
          v22[v174] = 0;
          v175 = &v22[v173];
          v176 = v232;
          sub_1D331E818(v175, v232, &qword_1EC760E10, &unk_1D33E1A90);
          if ((*v246)(v176, 1, v154) == 1)
          {
            sub_1D331E880(v237, &qword_1EC761CD8, &unk_1D33E4A60);
            sub_1D331E880(v176, &qword_1EC760E10, &unk_1D33E1A90);
            v136 = v234;
            v142 = v261;
          }

          else
          {
            v177 = v223;
            (*v245)(v223, v176, v154);
            v51 = v224;
            sub_1D33DDD24();
            v178 = sub_1D33DDCB4();
            sub_1D331E880(v237, &qword_1EC761CD8, &unk_1D33E4A60);
            v179 = *v244;
            (*v244)(v51, v154);
            v179(v177, v154);
            v22 = v240;
            v136 = v234;
            v142 = v261;
            if (v178)
            {
              v240[v174] = 1;
            }
          }
        }

        sub_1D33B6048(v22, v241);
        v180 = v272;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v275[0] = v180;
        v181 = sub_1D33B926C(v255);
        v183 = v180[2];
        v184 = (v182 & 1) == 0;
        v185 = __OFADD__(v183, v184);
        v186 = v183 + v184;
        if (v185)
        {
          goto LABEL_110;
        }

        v51 = v182;
        if (v180[3] >= v186)
        {
          v188 = v267;
          if (isUniquelyReferenced_nonNull_native)
          {
            isUniquelyReferenced_nonNull_native = v275[0];
            if (v182)
            {
              goto LABEL_60;
            }
          }

          else
          {
            v193 = v267;
            v194 = v181;
            sub_1D3399FE0();
            v188 = v193;
            v181 = v194;
            isUniquelyReferenced_nonNull_native = v275[0];
            if (v51)
            {
              goto LABEL_60;
            }
          }
        }

        else
        {
          sub_1D3397A8C(v186, isUniquelyReferenced_nonNull_native);
          v181 = sub_1D33B926C(v255);
          if ((v51 & 1) != (v187 & 1))
          {
            sub_1D33DF1E4();
            __break(1u);
            swift_unexpectedError();
            __break(1u);
            goto LABEL_115;
          }

          v188 = v267;
          isUniquelyReferenced_nonNull_native = v275[0];
          if (v51)
          {
LABEL_60:
            sub_1D33B60AC(v241, *(isUniquelyReferenced_nonNull_native + 56) + *(v235 + 72) * v181);
            v22 = v271;
            goto LABEL_61;
          }
        }

        v189 = v188;
        *(isUniquelyReferenced_nonNull_native + 8 * (v181 >> 6) + 64) |= 1 << v181;
        v190 = v181;
        v22 = v271;
        (*(v239 + 16))(*(isUniquelyReferenced_nonNull_native + 48) + *(v239 + 72) * v181, v255, v271);
        sub_1D33B6048(v241, *(isUniquelyReferenced_nonNull_native + 56) + *(v235 + 72) * v190);
        v191 = *(isUniquelyReferenced_nonNull_native + 16);
        v185 = __OFADD__(v191, 1);
        v192 = v191 + 1;
        if (v185)
        {
          goto LABEL_111;
        }

        *(isUniquelyReferenced_nonNull_native + 16) = v192;
        v188 = v189;
LABEL_61:
        (*v262)(v255, v22);

        v272 = isUniquelyReferenced_nonNull_native;
        v137 = v24;
        v51 = v270;
        v22 = v240;
      }
    }

    v195 = sub_1D33DE444();
    v196 = sub_1D33DEAF4();
    if (os_log_type_enabled(v195, v196))
    {
      v197 = swift_slowAlloc();
      v198 = swift_slowAlloc();
      v275[0] = v198;
      *v197 = 136315138;
      sub_1D33B850C(&qword_1EDEBFD38, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

      v199 = sub_1D33DE704();
      v201 = v200;

      v202 = sub_1D3328B48(v199, v201, v275);

      *(v197 + 4) = v202;
      _os_log_impl(&dword_1D331A000, v195, v196, "Cache state for fetched reminderStatus %s", v197, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v198);
      MEMORY[0x1D38B81C0](v198, -1, -1);
      MEMORY[0x1D38B81C0](v197, -1, -1);
    }

    swift_beginAccess();

    sub_1D33DE4F4();

    v203 = v273;

    v204 = swift_isUniquelyReferenced_nonNull_native();
    v274 = v203;
    sub_1D33B8128(isUniquelyReferenced_nonNull_native, sub_1D33B7178, 0, v204, &v274);
    if (v121)
    {
LABEL_115:

      __break(1u);
      return;
    }

    v205 = v274;
    swift_beginAccess();
    v272 = v205;

    sub_1D33DE4F4();

    v206 = sub_1D33B4B8C(v205, v274);

    if (v206)
    {
      v207 = sub_1D33DE444();
      v208 = sub_1D33DEAF4();
      if (os_log_type_enabled(v207, v208))
      {
        v209 = swift_slowAlloc();
        *v209 = 0;
        _os_log_impl(&dword_1D331A000, v207, v208, "ReminderCache has not changed", v209, 2u);
        v210 = v209;
LABEL_106:
        MEMORY[0x1D38B81C0](v210, -1, -1);
      }
    }

    else
    {
      v274 = v205;

      sub_1D33DE4E4();

      v207 = sub_1D33DE444();
      v211 = sub_1D33DEAF4();
      if (os_log_type_enabled(v207, v211))
      {
        v212 = swift_slowAlloc();
        v213 = swift_slowAlloc();
        v274 = v213;
        *v212 = 136315138;
        sub_1D33B850C(&qword_1EDEBFD38, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

        v214 = sub_1D33DE704();
        v216 = v215;

        v217 = sub_1D3328B48(v214, v216, &v274);

        *(v212 + 4) = v217;
        _os_log_impl(&dword_1D331A000, v207, v211, "Updated reminder cache: %s", v212, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v213);
        MEMORY[0x1D38B81C0](v213, -1, -1);
        v210 = v212;
        goto LABEL_106;
      }
    }

    return;
  }

LABEL_9:
  v51 = MEMORY[0x1E69E7CC0];
  if (*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_21;
  }

LABEL_10:
}

uint64_t sub_1D3336A64(uint64_t a1)
{
  v2 = sub_1D33DDDB4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1D3367CE8(&qword_1EDEBFD38, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  result = MEMORY[0x1D38B7100](v9, v2, v10);
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
      sub_1D33632DC(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1D3336C00(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v18 - v4;
  v6 = sub_1D33DDDB4();
  v7 = *(v6 - 8);
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    v18[0] = v7 + 8;
    v18[1] = v7 + 16;

    for (i = 0; v13; result = sub_1D331E880(v5, &qword_1EC7612B0, qword_1D33E2830))
    {
      v16 = i;
LABEL_10:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v7 + 16))(v10, *(a1 + 48) + *(v7 + 72) * (v17 | (v16 << 6)), v6);
      sub_1D33B7230(v10, v5);
      (*(v7 + 8))(v10, v6);
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *(a1 + 56 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_1D3336E1C()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v30 - v4;
  v6 = sub_1D33DDDB4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v33 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - v13;
  v15 = MEMORY[0x1E69E7CC0];
  v38 = MEMORY[0x1E69E7CC0];
  v16 = [v0 reminderUUID];
  if (v16)
  {
    v17 = v16;
    sub_1D33DDD84();

    (*(v7 + 16))(v12, v14, v6);
    v15 = sub_1D3338090(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v1 = v15[2];
    v18 = v15[3];
    v2 = v1 + 1;
    if (v1 >= v18 >> 1)
    {
      goto LABEL_24;
    }

    goto LABEL_3;
  }

LABEL_4:
  v19 = [v0 callOccurrences];
  if (v19)
  {
    v0 = v19;
    v30 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761D20, &unk_1D33E4AC0);
    v12 = sub_1D33DE8B4();

    v20 = *(v12 + 2);
    if (v20)
    {
      v14 = 0;
      v36 = v12 + 32;
      v35 = *MEMORY[0x1E6993598];
      v15 = (v30 + 56);
      v31 = (v30 + 32);
      v32 = (v30 + 48);
      v34 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v18 = *(v12 + 2);
        if (v14 >= v18)
        {
          __break(1u);
LABEL_24:
          v15 = sub_1D3338090((v18 > 1), v2, 1, v15);
LABEL_3:
          (*(v7 + 8))(v14, v6);
          v15[2] = v2;
          (*(v7 + 32))(v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v1, v12, v6);
          v38 = v15;
          goto LABEL_4;
        }

        v0 = *&v36[8 * v14];
        v21 = sub_1D33DE7B4();
        v7 = v22;
        if (v0[2] && (v23 = v21, , v1 = sub_1D33378A8(v23, v7), v2 = v24, , (v2 & 1) != 0))
        {
          sub_1D3328D20(v0[7] + 32 * v1, v37);

          v25 = swift_dynamicCast();
          (*v15)(v5, v25 ^ 1u, 1, v6);
          if ((*v32)(v5, 1, v6) != 1)
          {
            v1 = *v31;
            (*v31)(v33, v5, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v34 = sub_1D3338090(0, v34[2] + 1, 1, v34);
            }

            v7 = v34[2];
            v26 = v34[3];
            v0 = (v7 + 1);
            if (v7 >= v26 >> 1)
            {
              v34 = sub_1D3338090((v26 > 1), v7 + 1, 1, v34);
            }

            v27 = v33;
            v28 = v34;
            v34[2] = v0;
            (v1)(v28 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v7, v27, v6);
            goto LABEL_9;
          }
        }

        else
        {

          (*v15)(v5, 1, 1, v6);
        }

        sub_1D331E880(v5, &qword_1EC7612B0, qword_1D33E2830);
LABEL_9:
        if (v20 == ++v14)
        {
          goto LABEL_21;
        }
      }
    }

    v34 = MEMORY[0x1E69E7CC0];
LABEL_21:

    sub_1D3337B74(v34);
    return v38;
  }

  return v15;
}

uint64_t sub_1D3337330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761320, &unk_1D33E28D0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

unint64_t sub_1D333746C()
{
  result = qword_1EDEBFC38;
  if (!qword_1EDEBFC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEBFC38);
  }

  return result;
}

uint64_t RecentsItem.date.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - v7;
  v9 = type metadata accessor for RecentsItem(0);
  sub_1D331E818(v1 + *(v9 + 32), v5, &unk_1EC761DE0, &unk_1D33E50F0);
  v10 = type metadata accessor for CallInfo(0);
  if ((*(*(v10 - 8) + 48))(v5, 1, v10) != 1)
  {
    v19 = *(v10 + 24);
    v20 = sub_1D33DDD34();
    v21 = *(v20 - 8);
    (*(v21 + 16))(v8, &v5[v19], v20);
    sub_1D3337AB4(v5, type metadata accessor for CallInfo);
    v22 = *(v21 + 56);
    v22(v8, 0, 1, v20);
    (*(v21 + 32))(a1, v8, v20);
    return (v22)(a1, 0, 1, v20);
  }

  sub_1D331E880(v5, &unk_1EC761DE0, &unk_1D33E50F0);
  v11 = sub_1D33DDD34();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = 1;
  v13(v8, 1, 1, v11);
  v15 = *(v1 + 32);
  if (v15 > 8)
  {
    goto LABEL_6;
  }

  if (((1 << v15) & 0x1B0) != 0)
  {
    goto LABEL_9;
  }

  v16 = *(v1 + 8);
  if (v15 != 3 && v15 != 6)
  {
LABEL_6:
    if (v15 < 2)
    {
      goto LABEL_9;
    }

    v16 = *v1;
  }

  v17 = v16;
  sub_1D33DE0C4();

  v14 = 0;
LABEL_9:
  v13(a1, v14, 1, v11);
  result = (*(v12 + 48))(v8, 1, v11);
  if (result != 1)
  {
    return sub_1D331E880(v8, &qword_1EC760E10, &unk_1D33E1A90);
  }

  return result;
}

unint64_t sub_1D33378A8(uint64_t a1, uint64_t a2)
{
  sub_1D33DF284();
  sub_1D33DE824();
  v4 = sub_1D33DF2C4();

  return sub_1D333793C(a1, a2, v4);
}

id RecentsItem.type.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  return sub_1D332B0D0(v2, v3, v4, v5, v6);
}

unint64_t sub_1D333793C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1D33DF1B4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1D33379F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D3337A54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D3337AB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D3337B14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1D3337C38(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1D3337D6C()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 32);
  v4 = 0;
  if (((1 << v3) & 0x187) == 0)
  {
    if (((1 << v3) & 0x70) == 0)
    {
      v28 = 0;
      goto LABEL_9;
    }

    v5 = v2;
    v4 = sub_1D3336E1C();
  }

  v28 = v4;
  v6 = 0;
  if (((1 << v3) & 0x1B3) != 0)
  {
    goto LABEL_10;
  }

  if (((1 << v3) & 0x48) == 0)
  {
    v1 = v2;
  }

LABEL_9:
  v7 = v1;
  v6 = sub_1D33380BC();

LABEL_10:
  v29 = v6;
  result = v28;
  if (v28)
  {
    v9 = v28;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);
  v11 = *(MEMORY[0x1E69E7CC0] + 16);
  v12 = v11 + v10;
  if (__OFADD__(v11, v10))
  {
    goto LABEL_44;
  }

  v13 = MEMORY[0x1E69E7CC0];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && (v15 = v13, v12 <= v13[3] >> 1))
  {
    if (*(v9 + 16))
    {
LABEL_17:
      v16 = (v15[3] >> 1) - v15[2];
      result = sub_1D33DDDB4();
      if (v16 < v10)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      swift_arrayInitWithCopy();

      v17 = v15[2];
      if (v10)
      {
        v18 = __OFADD__(v17, v10);
        v17 += v10;
        if (v18)
        {
          goto LABEL_47;
        }

        v15[2] = v17;
      }

      goto LABEL_27;
    }
  }

  else
  {
    if (v11 <= v12)
    {
      v19 = v11 + v10;
    }

    else
    {
      v19 = v11;
    }

    v15 = sub_1D3338090(isUniquelyReferenced_nonNull_native, v19, 1, MEMORY[0x1E69E7CC0]);
    if (*(v9 + 16))
    {
      goto LABEL_17;
    }
  }

  if (v10)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v17 = v15[2];
LABEL_27:
  result = v29;
  if (v29)
  {
    v20 = v29;
  }

  else
  {
    v20 = v13;
  }

  v21 = *(v20 + 16);
  v22 = v17 + v21;
  if (__OFADD__(v17, v21))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v23 = swift_isUniquelyReferenced_nonNull_native();
  if (v23 && v22 <= v15[3] >> 1)
  {
    if (*(v20 + 16))
    {
      goto LABEL_34;
    }

    goto LABEL_42;
  }

  if (v17 <= v22)
  {
    v27 = v17 + v21;
  }

  else
  {
    v27 = v17;
  }

  v15 = sub_1D3338090(v23, v27, 1, v15);
  if (!*(v20 + 16))
  {
LABEL_42:

    if (!v21)
    {
      goto LABEL_43;
    }

    goto LABEL_45;
  }

LABEL_34:
  v24 = (v15[3] >> 1) - v15[2];
  result = sub_1D33DDDB4();
  if (v24 < v21)
  {
    goto LABEL_46;
  }

  swift_arrayInitWithCopy();

  if (!v21)
  {
LABEL_43:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761D18, &qword_1D33E4AB8);
    swift_arrayDestroy();
    return v15;
  }

  v25 = v15[2];
  v18 = __OFADD__(v25, v21);
  v26 = v25 + v21;
  if (!v18)
  {
    v15[2] = v26;
    goto LABEL_43;
  }

LABEL_47:
  __break(1u);
  return result;
}

char *sub_1D33380BC()
{
  v0 = sub_1D33DDDB4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760D90, &qword_1D33E19E8);
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_1D33DE104();
  sub_1D331E818(v12 + v11, v10, &qword_1EC7612B0, qword_1D33E2830);
  sub_1D332FEC4(v10, v8);
  if ((*(v1 + 48))(v8, 1, v0) == 1)
  {
    sub_1D331E880(v8, &qword_1EC7612B0, qword_1D33E2830);
    v13 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v14 = *(v1 + 32);
    v14(v3, v8, v0);
    v13 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1D3338090(0, *(v13 + 2) + 1, 1, v13);
    }

    v16 = *(v13 + 2);
    v15 = *(v13 + 3);
    if (v16 >= v15 >> 1)
    {
      v13 = sub_1D3338090((v15 > 1), v16 + 1, 1, v13);
    }

    *(v13 + 2) = v16 + 1;
    v14(&v13[((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v16], v3, v0);
  }

  swift_setDeallocating();
  sub_1D331E880(v12 + v11, &qword_1EC7612B0, qword_1D33E2830);
  swift_deallocClassInstance();
  return v13;
}

uint64_t sub_1D33383BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D333842C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t CallInfo.senderIdentity.getter()
{
  v1 = *(v0 + *(type metadata accessor for CallInfo(0) + 32));

  return v1;
}

uint64_t CallInfo.hash(into:)(uint64_t a1)
{
  sub_1D33DE824();
  sub_1D33DF2A4();
  v2 = type metadata accessor for CallInfo(0);
  sub_1D33DDD34();
  sub_1D332C29C(&unk_1EDEBFD40, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1D33DE734();
  MEMORY[0x1D38B7920](*(v1 + v2[7]));
  if (*(v1 + v2[8] + 8))
  {
    sub_1D33DF2A4();
    sub_1D33DE824();
  }

  else
  {
    sub_1D33DF2A4();
  }

  sub_1D33DF2A4();
  v3 = *(v1 + v2[10]);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1D38B7940](*&v3);
  sub_1D33DF2A4();
  sub_1D33DF2A4();
  return sub_1D33DF2A4();
}

uint64_t sub_1D3338648(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    if (qword_1EDEBF058 != -1)
    {
      swift_once();
    }

    v12 = sub_1D33DE464();
    __swift_project_value_buffer(v12, qword_1EDEC1440);
    v13 = sub_1D33DE444();
    v14 = sub_1D33DEAF4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1D331A000, v13, v14, a3, v15, 2u);
      MEMORY[0x1D38B81C0](v15, -1, -1);
    }

    v16 = sub_1D33DE9B4();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v11;
    sub_1D333DD88(0, 0, v9, a5, v17);
  }

  return result;
}

uint64_t sub_1D333888C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D33DE464();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1D33DE454();
}

uint64_t sub_1D3338904(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D334CF9C;

  return sub_1D33389B8(a1, v4, v5, v6);
}

uint64_t sub_1D33389D8()
{
  v9 = v0;
  swift_beginAccess();

  sub_1D33DE4F4();

  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_1D33D2BB0(*(v1 + 16), 0);
    v4 = *(sub_1D33DDDB4() - 8);
    v5 = sub_1D33D3B00(&v8, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, v1);
    sub_1D331FEEC(v8);
    if (v5 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_5:
  sub_1D3334788(v3, 1);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t objectdestroy_17Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D3338B5C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);

  sub_1D332C2E4(v2, v1);

  return MEMORY[0x1EEE6DFA0](sub_1D332C6AC, 0, 0);
}

BOOL sub_1D3338C34(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1D3338CC0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D3338CD0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D3338CF0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void *sub_1D3338D20@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1D33DE4F4();
  *a2 = v4;
  return result;
}

uint64_t sub_1D3338DB0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D3338DE8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_1D33DDDB4();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1D3338F24()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D3338F6C()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1D3338FBC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D333901C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D33390A0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D3339108()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D33391B0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D33391F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D3339254()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

void sub_1D3339334(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D33DEDC4();
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33DEA94();
    v1 = v23;
    v2 = v24;
    v3 = v25;
    v4 = v26;
    v5 = v27;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
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

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v22 = MEMORY[0x1E69E7CC0];
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_1D33DEE54() || (sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578), swift_dynamicCast(), v15 = v28, v4 = v9, v5 = v10, !v28))
      {
LABEL_29:
        sub_1D331FEEC(v1);
        return;
      }

      goto LABEL_19;
    }

    v13 = v9;
    v14 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_15:
    v5 = (v14 - 1) & v14;
    v15 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v15)
    {
      goto LABEL_29;
    }

LABEL_19:
    v16 = [v15 type];
    if (v16 > 3)
    {
      v17 = 2;
    }

    else
    {
      v17 = qword_1D33E2708[v16];
    }

    v18 = [v15 value];
    if (!v18)
    {
      sub_1D33DE7B4();
      v18 = sub_1D33DE784();
    }

    v11 = [objc_allocWithZone(MEMORY[0x1E69D8C00]) initWithType:v17 value:v18];

    v12 = _s16CallsAppServices17ReportSpamManagerC10getContact9forHandleSaySo9CNContactCGSgSo8TUHandleC_tFZ_0(v11);
    v9 = v4;
    v10 = v5;
    if (v12)
    {
      v19 = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1D3359DB0(0, v22[2] + 1, 1, v22);
      }

      v21 = v19[2];
      v20 = v19[3];
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1D3359DB0((v20 > 1), v21 + 1, 1, v19);
      }

      v19[2] = v21 + 1;
      v22 = v19;
      v19[v21 + 4] = v12;
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_29;
    }

    v14 = *(v2 + 8 * v4);
    ++v13;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_1D3339674()
{
  MEMORY[0x1D38B82A0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D33396AC()
{
  v1 = type metadata accessor for RecentsItem(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  sub_1D332B1DC(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16), *(v0 + v3 + 24), *(v0 + v3 + 32));

  v5 = v0 + v3 + *(v1 + 32);
  v6 = type metadata accessor for CallInfo(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {

    v7 = *(v6 + 24);
    v8 = sub_1D33DDD34();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  v9 = v0 + v3 + *(v1 + 44);
  v10 = type metadata accessor for ReminderStatus(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v11 = *(v10 + 20);
    v12 = sub_1D33DDD34();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v9 + v11, 1, v12))
    {
      (*(v13 + 8))(v9 + v11, v12);
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D333992C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D3339964()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D33399D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D3339A18()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D3339A50()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D3339AB4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1D3339B48()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D3339B8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D3339BC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761670, &qword_1D33E2DD8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1D33DE464();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v10 | 7);
}

uint64_t sub_1D3339D44()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D3339D80()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D3339DCC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D3339E04()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B8, &unk_1D33E2DE0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1D3339F10()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D3339F6C()
{
  MEMORY[0x1D38B82A0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D3339FA4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D333A000()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

void sub_1D333A084(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  RecentsItemDataSource.preFetchingPredicate.setter(v1);
}

void *sub_1D333A0B4@<X0>(uint64_t *a1@<X8>)
{
  result = RecentsItemDataSource.recentsReminderActionProvider.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D333A0E0(uint64_t *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource____lazy_storage___recentsReminderActionProvider) = *a1;
}

uint64_t sub_1D333A144()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761948, &unk_1D33E37B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D333A214()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D333A29C()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1D333A2D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D333A30C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D333A368()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D333A3E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D33DDDB4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D333A4A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D33DDDB4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D333A558@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D3329770(*a1, &type metadata for EasySharedNameAndPhotoKey, sub_1D33297F0);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D333A5C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D3329770(*a1, &type metadata for SolariumKey, sub_1D3399044);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D333A630@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D3329770(*a1, &type metadata for CallExperiencePhoneAppKey, sub_1D33990C0);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D333A69C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D3329770(*a1, &type metadata for NudityDetectionKey, sub_1D333746C);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D333A720()
{
  MEMORY[0x1D38B82A0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D333A758@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D333A7B4(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC16CallsAppServices23PrioritizedCallObserver_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D333A818()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D333A850()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D333A888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D333A964(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

void sub_1D333AAD0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1D33B1350(v1);
}

uint64_t sub_1D333AB34()
{
  MEMORY[0x1D38B82A0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D333ACD8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D333AD18()
{
  v1 = type metadata accessor for RecentsItem(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(type metadata accessor for ReminderTime(0) - 8);
  v6 = *(v5 + 80);
  v7 = v3 + v4 + v6;
  v8 = *(v5 + 64);
  swift_unknownObjectRelease();
  v9 = v0 + v3;
  sub_1D332B1DC(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16), *(v0 + v3 + 24), *(v0 + v3 + 32));

  v10 = v0 + v3 + *(v1 + 32);
  v11 = type metadata accessor for CallInfo(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {

    v12 = *(v11 + 24);
    v13 = sub_1D33DDD34();
    (*(*(v13 - 8) + 8))(v10 + v12, v13);
  }

  v14 = v7 & ~v6;

  v15 = v9 + *(v1 + 44);
  v16 = type metadata accessor for ReminderStatus(0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v17 = *(v16 + 20);
    v18 = sub_1D33DDD34();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v15 + v17, 1, v18))
    {
      (*(v19 + 8))(v15 + v17, v18);
    }
  }

  v20 = sub_1D33DDB54();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v0 + v14, 3, v20))
  {
    (*(v21 + 8))(v0 + v14, v20);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | v6 | 7);
}

uint64_t sub_1D333B094@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 48);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D333B0E4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 48) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D333B140(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D33DDB54();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D333B1AC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D33DDB54();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D333B230(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EA0, &qword_1D33E2210);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761D38, "xv");
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EE0, &qword_1D33E4CE0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_1D333B3C0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EA0, &qword_1D33E2210);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761D38, "xv");
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EE0, &qword_1D33E4CE0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1D333B550()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D333B598()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D333B5D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D333B620()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D333B69C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D333B6EC(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D333B748()
{
  MEMORY[0x1D38B82A0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D333B784()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D333B7D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_filterSpamEnabled;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1D333B828(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_filterSpamEnabled;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1D333B87C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D333B8C4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D333B90C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D333B95C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D333B9A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7620D0, &qword_1D33E5878);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D333BA84()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

id sub_1D333BB14()
{
  result = [objc_allocWithZone(type metadata accessor for ReminderInteractionMetrics()) init];
  qword_1EC7620E8 = result;
  return result;
}

void sub_1D333BB44(unsigned __int8 a1, unsigned __int8 a2, unsigned __int8 a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760B00, &qword_1D33E12F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D33E11F0;
  *(inited + 32) = 0xD000000000000019;
  *(inited + 40) = 0x80000001D33E5A30;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
  *(inited + 56) = 0xD00000000000001BLL;
  *(inited + 64) = 0x80000001D33E5A50;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
  *(inited + 80) = 0xD00000000000001FLL;
  *(inited + 88) = 0x80000001D33E5A70;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
  v8 = sub_1D336B9F0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760B08, &qword_1D33E12F8);
  swift_arrayDestroy();
  v9 = *(v3 + OBJC_IVAR____TtC16CallsAppServices26ReminderInteractionMetrics_analyticsLogger);
  v10 = sub_1D33DE784();
  sub_1D33C7DD4(v8);

  sub_1D333C36C();
  v11 = sub_1D33DE6E4();

  [v9 logEvent:v10 withCoreAnalyticsDictionary:v11];
}

id sub_1D333BD90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReminderInteractionMetrics();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D333BE08(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D333BE28(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

BOOL sub_1D333BE98(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

uint64_t sub_1D333BF20(uint64_t a1, id *a2)
{
  result = sub_1D33DE794();
  *a2 = 0;
  return result;
}

uint64_t sub_1D333BF98(uint64_t a1, id *a2)
{
  v3 = sub_1D33DE7A4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D333C018@<X0>(uint64_t *a2@<X8>)
{
  sub_1D33DE7B4();
  v3 = sub_1D33DE784();

  *a2 = v3;
  return result;
}

_DWORD *sub_1D333C07C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1D333C08C()
{
  v0 = sub_1D33DE7B4();
  v1 = MEMORY[0x1D38B6F00](v0);

  return v1;
}

uint64_t sub_1D333C0C8(uint64_t a1)
{
  sub_1D33DE7B4();
  sub_1D33DE824();
}

uint64_t sub_1D333C11C(uint64_t a1)
{
  sub_1D33DE7B4();
  sub_1D33DF284();
  sub_1D33DE824();
  v1 = sub_1D33DF2C4();

  return v1;
}

uint64_t sub_1D333C190(void *a1, uint64_t *a2)
{
  v2 = sub_1D33DE7B4();
  v4 = v3;
  if (v2 == sub_1D33DE7B4() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D33DF1B4();
  }

  return v7 & 1;
}

uint64_t sub_1D333C218@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1D33DE784();

  *a2 = v3;
  return result;
}

uint64_t sub_1D333C260@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D33DE7B4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D333C28C(uint64_t a1)
{
  v2 = sub_1D333C4DC(&qword_1EC760B58, &unk_1D33E14BC);
  v3 = sub_1D333C4DC(&unk_1EC760B60, &unk_1D33E1464);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1D333C36C()
{
  result = qword_1EDEBEE70;
  if (!qword_1EDEBEE70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEBEE70);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_1D333C428(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1D333C4DC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CNActionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Bool __swiftcall RecentsItem.isRequest()()
{
  if (qword_1EDEBFC40 != -1)
  {
    swift_once();
  }

  if (RequestsHandler.isItemUnknownParticipant(_:)(v0))
  {
    return RequestsHandler.isRequestItem(_:handleCacheMiss:)(v0, 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t FavoriteContact.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FavoriteContact.subtitle.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t FavoriteContact.subtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void FavoriteContact.init(contact:entry:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *MEMORY[0x1E695C420];
  v6 = a1;
  v7 = [v6 isKeyAvailable_];
  v8 = [objc_opt_self() stringFromContact:v6 style:1000];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1D33DE7B4();
    v12 = v11;
  }

  else
  {
    v9 = [v6 givenName];

    v10 = sub_1D33DE7B4();
    v12 = v13;
  }

  *a3 = v10;
  *(a3 + 8) = v12;
  *(a3 + 16) = v6;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = a2;
  *(a3 + 48) = v7;
}

uint64_t FavoriteContact.id.getter()
{
  v1 = [*(v0 + 40) entryIdentifier];
  v2 = sub_1D33DE7B4();

  return v2;
}

uint64_t FavoriteContact.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  MEMORY[0x1D38B7920]([*(v1 + 40) hash]);
  sub_1D33DE824();
  sub_1D33DF2A4();
  if (v2)
  {
    sub_1D33DE824();
  }

  return sub_1D33DF2A4();
}

uint64_t FavoriteContact.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1D33DF284();
  MEMORY[0x1D38B7920]([v2 hash]);
  sub_1D33DE824();
  sub_1D33DF2A4();
  if (v1)
  {
    sub_1D33DE824();
  }

  sub_1D33DF2A4();
  return sub_1D33DF2C4();
}

void sub_1D333C96C(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + 40) entryIdentifier];
  v4 = sub_1D33DE7B4();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_1D333C9C8(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v6[9] = *v1;
  v4 = *(v1 + 24);
  v7 = *(v1 + 8);
  v8 = v4;
  v9 = v2;
  v10 = v3;
  sub_1D33DF284();
  FavoriteContact.hash(into:)(v6);
  return sub_1D33DF2C4();
}

uint64_t _s16CallsAppServices15FavoriteContactV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3];
  v5 = a1[4];
  v6 = *a2;
  v7 = a2[1];
  v9 = a2[3];
  v8 = a2[4];
  v11 = *(a2 + 48);
  v12 = *(a1 + 48);
  sub_1D333C36C();
  if (sub_1D33DEC74() & 1) != 0 && (v2 == v6 && v3 == v7 || (sub_1D33DF1B4()))
  {
    if (v5)
    {
      if (v8 && (v4 == v9 && v5 == v8 || (sub_1D33DF1B4() & 1) != 0))
      {
        return v12 ^ v11 ^ 1u;
      }
    }

    else if (!v8)
    {
      return v12 ^ v11 ^ 1u;
    }
  }

  return 0;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D333CB58(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D333CBE8;

  return sub_1D3323EE4();
}

uint64_t sub_1D333CBE8(uint64_t a1, char a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1D333CD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = swift_task_alloc();
  v3[5] = v4;
  *v4 = v3;
  v4[1] = sub_1D333CDA4;

  return sub_1D3323EE4();
}

uint64_t sub_1D333CDA4(uint64_t a1, char a2)
{
  v5 = *v2;
  v6 = *(*v2 + 24);

  if (v6)
  {
    swift_getObjectType();
    v7 = sub_1D33DE914();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  *(v5 + 56) = a2;
  *(v5 + 48) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D333CF00, v7, v9);
}

uint64_t sub_1D333CF00()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 48);
  *(v2 + 8) = v1 & 1;
  return (*(v0 + 8))();
}

uint64_t sub_1D333CF30()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D333CF80(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v5 = sub_1D33DE464();
  __swift_project_value_buffer(v5, qword_1EDEC1480);
  v6 = sub_1D33DE444();
  v7 = sub_1D33DEAF4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D331A000, v6, v7, "CNContactStoreDidChange notification received (debounced)", v8, 2u);
    MEMORY[0x1D38B81C0](v8, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D33DE984();
    v10 = sub_1D33DE9B4();
    (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v11;
    sub_1D3387C2C(0, 0, v4, &unk_1D33E1B30, v12);

    return sub_1D331E880(v4, &unk_1EC7610E0, &qword_1D33E16C0);
  }

  return result;
}

uint64_t sub_1D333D1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v12 - v6;
  sub_1D33DE984();
  v8 = sub_1D33DE9B4();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1D3325720(a3, v12);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v9;
  v10[5] = a1;
  sub_1D331E6AC(v12, (v10 + 6));

  sub_1D333DD88(0, 0, v7, &unk_1D33E1B20, v10);
}

uint64_t sub_1D333D344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = sub_1D33DE2F4();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D333D408, 0, 0);
}

uint64_t sub_1D333D408()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  v2 = v0[12];
  if (Strong)
  {
    v3 = v0[10];
    v4 = v0[11];
    v6 = v0[8];
    v5 = v0[9];
    sub_1D334421C(v6, sub_1D334D090);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *v2 = v7;
    (*(v4 + 104))(v2, *MEMORY[0x1E699BFD0], v3);

    v8 = swift_task_alloc();
    v0[14] = v8;
    *v8 = v0;
    v8[1] = sub_1D333D5A4;
    v9 = v0[12];

    return MEMORY[0x1EEE03C08](v9);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1D333D5A4()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1D333D83C;
  }

  else
  {
    v5 = sub_1D333D714;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D333D714()
{
  if (qword_1EC760988 != -1)
  {
    swift_once();
  }

  v1 = sub_1D33DE464();
  __swift_project_value_buffer(v1, qword_1EC762118);
  v2 = sub_1D33DE444();
  v3 = sub_1D33DEAF4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D331A000, v2, v3, "Successfully deleted messages", v4, 2u);
    MEMORY[0x1D38B81C0](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D333D83C()
{
  v16 = v0;
  if (qword_1EC760988 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_1D33DE464();
  v0[16] = __swift_project_value_buffer(v2, qword_1EC762118);
  v3 = v1;
  v4 = sub_1D33DE444();
  v5 = sub_1D33DEAD4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    v0[6] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
    v10 = sub_1D33DE804();
    v12 = sub_1D3328B48(v10, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1D331A000, v4, v5, "Failed to delete messages with error %s. Reloading items.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1D38B81C0](v8, -1, -1);
    MEMORY[0x1D38B81C0](v7, -1, -1);
  }

  v13 = swift_task_alloc();
  v0[17] = v13;
  *v13 = v0;
  v13[1] = sub_1D333DA30;

  return sub_1D3323538();
}

uint64_t sub_1D333DA30()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1D333DBB8;
  }

  else
  {
    v2 = sub_1D333DB44;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D333DB44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D333DBB8()
{
  v17 = v0;
  v1 = *(v0 + 144);
  v2 = v1;
  v3 = sub_1D33DE444();
  v4 = sub_1D33DEAD4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 144);
    v6 = *(v0 + 120);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    *(v0 + 40) = v5;
    v9 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
    v10 = sub_1D33DE804();
    v12 = sub_1D3328B48(v10, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1D331A000, v3, v4, "Failed to reload items %s.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1D38B81C0](v8, -1, -1);
    MEMORY[0x1D38B81C0](v7, -1, -1);
  }

  else
  {
    v13 = *(v0 + 144);
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1D333DD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D331E818(a3, v25 - v10, &unk_1EC7610E0, &qword_1D33E16C0);
  v12 = sub_1D33DE9B4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D331E880(v11, &unk_1EC7610E0, &qword_1D33E16C0);
  }

  else
  {
    sub_1D33DE9A4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D33DE914();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D33DE814() + 32;
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

      sub_1D331E880(a3, &unk_1EC7610E0, &qword_1D33E16C0);

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

  sub_1D331E880(a3, &unk_1EC7610E0, &qword_1D33E16C0);
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

uint64_t sub_1D333E088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D331E818(a3, v25 - v10, &unk_1EC7610E0, &qword_1D33E16C0);
  v12 = sub_1D33DE9B4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D331E880(v11, &unk_1EC7610E0, &qword_1D33E16C0);
  }

  else
  {
    sub_1D33DE9A4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D33DE914();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D33DE814() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DA8, &qword_1D33E1AD0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1D331E880(a3, &unk_1EC7610E0, &qword_1D33E16C0);

      return v22;
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

  sub_1D331E880(a3, &unk_1EC7610E0, &qword_1D33E16C0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DA8, &qword_1D33E1AD0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1D333E39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D331E818(a3, v25 - v10, &unk_1EC7610E0, &qword_1D33E16C0);
  v12 = sub_1D33DE9B4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D331E880(v11, &unk_1EC7610E0, &qword_1D33E16C0);
  }

  else
  {
    sub_1D33DE9A4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D33DE914();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a3;
      v19 = sub_1D33DE814() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_1D334CC54();

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

      sub_1D331E880(v25[0], &unk_1EC7610E0, &qword_1D33E16C0);

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

  sub_1D331E880(a3, &unk_1EC7610E0, &qword_1D33E16C0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  sub_1D334CC54();
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1D333E6D4()
{
  swift_getKeyPath();
  sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController, &protocol conformance descriptor for VideoMessageInboxController);
  sub_1D33DDED4();

  v1 = v0 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state));
  v2 = *(v1 + 8);

  os_unfair_lock_unlock(v1);
  return v2;
}

void sub_1D333E79C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController, &protocol conformance descriptor for VideoMessageInboxController);
  sub_1D33DDED4();

  v4 = v3 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
  os_unfair_lock_lock((v3 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state));
  v5 = *(v4 + 8);

  os_unfair_lock_unlock(v4);
  *a2 = v5;
}

void sub_1D333E868(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
  os_unfair_lock_lock(v3);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v3 + 24);

    os_unfair_lock_unlock(v3);
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    *a2 = sub_1D334C978;
    a2[1] = v6;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D333E8F4(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;

  os_unfair_lock_lock(v6);
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  *(v6 + 16) = sub_1D334C940;
  *(v6 + 24) = v5;

  sub_1D331EEDC(v7, v8);
  os_unfair_lock_unlock(v6);
}

void sub_1D333E9A4()
{
  v1 = v0 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state));
  if (*(v1 + 16))
  {

    os_unfair_lock_unlock(v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D333EA04(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
  os_unfair_lock_lock(v5);
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  sub_1D331EEDC(v6, v7);
  os_unfair_lock_unlock(v5);
}

void sub_1D333EA84(void *a1)
{
  v3 = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
  a1[2] = v1;
  a1[3] = v3;
  v4 = v1 + v3;
  os_unfair_lock_lock(v4);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v4 + 24);

    os_unfair_lock_unlock(v4);
    *a1 = v5;
    a1[1] = v6;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D333EB04(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[3];
  v5 = a1[2] + v4;
  if (a2)
  {

    os_unfair_lock_lock(v5);
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
    *(v5 + 16) = v3;
    *(v5 + 24) = v2;

    sub_1D331EEDC(v6, v7);
    os_unfair_lock_unlock(v5);
  }

  else
  {
    os_unfair_lock_lock((a1[2] + v4));
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
    *(v5 + 16) = v3;
    *(v5 + 24) = v2;

    sub_1D331EEDC(v8, v9);
    os_unfair_lock_unlock(v5);
  }
}

uint64_t sub_1D333EBC0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EA0, &qword_1D33E2210);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v35 - v10;
  v12 = sub_1D33DDDB4();
  v46 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v39 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v35 - v18;
  sub_1D333F090(a1, sub_1D333F068, 0);
  v20 = *(a1 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v36 = v19;
    v37 = v1;
    v47 = MEMORY[0x1E69E7CC0];
    sub_1D33DEFA4();
    v22 = *(v46 + 16);
    v44 = v5;
    v45 = v22;
    v23 = *(v46 + 80);
    v38 = a1;
    v43 = v9;
    v24 = (a1 + ((v23 + 32) & ~v23));
    v25 = *(v46 + 72);
    v41 = v11;
    v42 = v25;
    v26 = (v46 + 56);
    v46 += 16;
    v40 = (v46 - 8);
    v27 = v39;
    do
    {
      v28 = v45;
      v45(v16, v24, v12);
      v28(v27, v16, v12);
      v29 = *v26;
      (*v26)(v41, 1, 1, v12);
      v29(v43, 1, 1, v12);
      v30 = sub_1D33DDC44();
      (*(*(v30 - 8) + 56))(v44, 1, 1, v30);
      v31 = objc_allocWithZone(sub_1D33DE224());
      sub_1D33DE214();
      (*v40)(v16, v12);
      sub_1D33DEF84();
      sub_1D33DEFB4();
      sub_1D33DEFC4();
      sub_1D33DEF94();
      v24 += v42;
      --v20;
    }

    while (v20);
    v21 = v47;
    v1 = v37;
    a1 = v38;
    v19 = v36;
  }

  sub_1D33DE984();
  v32 = sub_1D33DE9B4();
  (*(*(v32 - 8) + 56))(v19, 0, 1, v32);
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = v1;
  v33[5] = v21;
  v33[6] = a1;

  sub_1D333DD88(0, 0, v19, &unk_1D33E1A48, v33);
}

uint64_t sub_1D333F090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D33DE4E4();
  swift_getKeyPath();
  sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController, &protocol conformance descriptor for VideoMessageInboxController);
  sub_1D33DDEC4();

  return sub_1D33DE4E4();
}

uint64_t sub_1D333F1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D333F1D0, 0, 0);
}

uint64_t sub_1D333F1D0()
{
  v1 = v0[7];
  swift_getKeyPath();
  v0[5] = v1;
  sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController, &protocol conformance descriptor for VideoMessageInboxController);
  sub_1D33DDED4();

  v2 = (v1 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageStoreController);
  swift_beginAccess();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1D333F314;
  v4 = v0[8];

  return MEMORY[0x1EEE03C18](v4);
}

uint64_t sub_1D333F314()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1D333F5C8;
  }

  else
  {
    v2 = sub_1D333F428;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D333F428()
{
  v14 = v0;
  if (qword_1EC760988 != -1)
  {
    swift_once();
  }

  v1 = sub_1D33DE464();
  __swift_project_value_buffer(v1, qword_1EC762118);

  v2 = sub_1D33DE444();
  v3 = sub_1D33DEAF4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 72);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    v7 = sub_1D33DDDB4();
    v8 = MEMORY[0x1D38B6F50](v4, v7);
    v10 = sub_1D3328B48(v8, v9, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1D331A000, v2, v3, "Successfully moved messages to trash with uuids:%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1D38B81C0](v6, -1, -1);
    MEMORY[0x1D38B81C0](v5, -1, -1);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D333F5C8()
{
  v17 = v0;
  if (qword_1EC760988 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = sub_1D33DE464();
  __swift_project_value_buffer(v2, qword_1EC762118);
  v3 = v1;
  v4 = sub_1D33DE444();
  v5 = sub_1D33DEAD4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v0[6] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
    v11 = sub_1D33DE804();
    v13 = sub_1D3328B48(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1D331A000, v4, v5, "Failed to move messages to trash with error %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1D38B81C0](v9, -1, -1);
    MEMORY[0x1D38B81C0](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1D333F798(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EA0, &qword_1D33E2210);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v35 - v10;
  v12 = sub_1D33DDDB4();
  v46 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v39 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v35 - v18;
  sub_1D333F090(a1, sub_1D333FC40, 0);
  v20 = *(a1 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v36 = v19;
    v37 = v1;
    v47 = MEMORY[0x1E69E7CC0];
    sub_1D33DEFA4();
    v22 = *(v46 + 16);
    v44 = v5;
    v45 = v22;
    v23 = *(v46 + 80);
    v38 = a1;
    v43 = v9;
    v24 = (a1 + ((v23 + 32) & ~v23));
    v25 = *(v46 + 72);
    v41 = v11;
    v42 = v25;
    v26 = (v46 + 56);
    v46 += 16;
    v40 = (v46 - 8);
    v27 = v39;
    do
    {
      v28 = v45;
      v45(v16, v24, v12);
      v28(v27, v16, v12);
      v29 = *v26;
      (*v26)(v41, 1, 1, v12);
      v29(v43, 1, 1, v12);
      v30 = sub_1D33DDC44();
      (*(*(v30 - 8) + 56))(v44, 1, 1, v30);
      v31 = objc_allocWithZone(sub_1D33DE224());
      sub_1D33DE214();
      (*v40)(v16, v12);
      sub_1D33DEF84();
      sub_1D33DEFB4();
      sub_1D33DEFC4();
      sub_1D33DEF94();
      v24 += v42;
      --v20;
    }

    while (v20);
    v21 = v47;
    v1 = v37;
    a1 = v38;
    v19 = v36;
  }

  sub_1D33DE984();
  v32 = sub_1D33DE9B4();
  (*(*(v32 - 8) + 56))(v19, 0, 1, v32);
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = v1;
  v33[5] = v21;
  v33[6] = a1;

  sub_1D333DD88(0, 0, v19, &unk_1D33E1A28, v33);
}

uint64_t sub_1D333FC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D333FC8C, 0, 0);
}

uint64_t sub_1D333FC8C()
{
  v1 = v0[7];
  swift_getKeyPath();
  v0[5] = v1;
  sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController, &protocol conformance descriptor for VideoMessageInboxController);
  sub_1D33DDED4();

  v2 = (v1 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageStoreController);
  swift_beginAccess();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1D333FDD0;
  v4 = v0[8];

  return MEMORY[0x1EEE03C18](v4);
}

uint64_t sub_1D333FDD0()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1D3340084;
  }

  else
  {
    v2 = sub_1D333FEE4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D333FEE4()
{
  v14 = v0;
  if (qword_1EC760988 != -1)
  {
    swift_once();
  }

  v1 = sub_1D33DE464();
  __swift_project_value_buffer(v1, qword_1EC762118);

  v2 = sub_1D33DE444();
  v3 = sub_1D33DEAF4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 72);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    v7 = sub_1D33DDDB4();
    v8 = MEMORY[0x1D38B6F50](v4, v7);
    v10 = sub_1D3328B48(v8, v9, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1D331A000, v2, v3, "Successfully moved messages to inbox with uuids:%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1D38B81C0](v6, -1, -1);
    MEMORY[0x1D38B81C0](v5, -1, -1);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D3340084()
{
  v17 = v0;
  if (qword_1EC760988 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = sub_1D33DE464();
  __swift_project_value_buffer(v2, qword_1EC762118);
  v3 = v1;
  v4 = sub_1D33DE444();
  v5 = sub_1D33DEAD4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v0[6] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
    v11 = sub_1D33DE804();
    v13 = sub_1D3328B48(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1D331A000, v4, v5, "Failed to move messages to inbox with error %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1D38B81C0](v9, -1, -1);
    MEMORY[0x1D38B81C0](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1D3340254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v7[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EA0, &qword_1D33E2210);
  v7[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v8 = sub_1D33DDDB4();
  v7[20] = v8;
  v7[21] = *(v8 - 8);
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D33403D8, 0, 0);
}

uint64_t sub_1D33403D8()
{
  v2 = v0[12];
  v1 = v0[13];
  swift_getKeyPath();
  v0[10] = v2;
  sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController, &protocol conformance descriptor for VideoMessageInboxController);
  sub_1D33DDED4();

  v3 = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageStoreController;
  swift_beginAccess();
  sub_1D3325720(v2 + v3, (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v4 = *(v1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = v0[21];
    v7 = v0[13];
    v26 = MEMORY[0x1E69E7CC0];
    sub_1D33DEFA4();
    v8 = *(v6 + 16);
    v6 += 16;
    v9 = v7 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v23 = *(v6 + 56);
    v24 = v8;
    v22 = (v6 + 40);
    v21 = (v6 - 8);
    do
    {
      v25 = v4;
      v11 = v0[22];
      v10 = v0[23];
      v13 = v0[19];
      v12 = v0[20];
      v15 = v0[17];
      v14 = v0[18];
      v24(v10, v9, v12);
      v24(v11, v10, v12);
      v16 = *v22;
      (*v22)(v13, 1, 1, v12);
      v16(v14, 1, 1, v12);
      v17 = sub_1D33DDC44();
      (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
      v18 = objc_allocWithZone(sub_1D33DE224());
      sub_1D33DE214();
      (*v21)(v10, v12);
      sub_1D33DEF84();
      sub_1D33DEFB4();
      sub_1D33DEFC4();
      sub_1D33DEF94();
      v9 += v23;
      v4 = v25 - 1;
    }

    while (v25 != 1);
    v5 = v26;
  }

  v0[24] = v5;
  v19 = swift_task_alloc();
  v0[25] = v19;
  *v19 = v0;
  v19[1] = sub_1D3340740;

  return MEMORY[0x1EEE03C18](v5);
}

uint64_t sub_1D3340740()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1D3340B0C;
  }

  else
  {
    v2 = sub_1D3340870;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D3340870()
{
  v21 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  if (qword_1EC760988 != -1)
  {
    swift_once();
  }

  v1 = sub_1D33DE464();
  __swift_project_value_buffer(v1, qword_1EC762118);

  v2 = sub_1D33DE444();
  v3 = sub_1D33DEAF4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[20];
    v5 = v0[13];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136446210;
    v8 = MEMORY[0x1D38B6F50](v5, v4);
    v10 = sub_1D3328B48(v8, v9, &v20);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1D331A000, v2, v3, "Marked video messages as read %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1D38B81C0](v7, -1, -1);
    MEMORY[0x1D38B81C0](v6, -1, -1);
  }

  v11 = v0[16];
  v13 = v0[14];
  v12 = v0[15];
  v14 = sub_1D33DE9B4();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  sub_1D33DE974();
  sub_1D331FEDC(v13, v12);
  v15 = sub_1D33DE964();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v13;
  v16[5] = v12;
  sub_1D333E088(0, 0, v11, &unk_1D33E1AF0, v16);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1D3340B0C()
{
  v24 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  if (qword_1EC760988 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = sub_1D33DE464();
  __swift_project_value_buffer(v2, qword_1EC762118);
  v3 = v1;
  v4 = sub_1D33DE444();
  v5 = sub_1D33DEAD4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[26];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315138;
    v0[11] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
    v11 = sub_1D33DE804();
    v13 = sub_1D3328B48(v11, v12, &v23);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1D331A000, v4, v5, "Marking video messages as read failed: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1D38B81C0](v9, -1, -1);
    MEMORY[0x1D38B81C0](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[16];
  v16 = v0[14];
  v15 = v0[15];
  v17 = sub_1D33DE9B4();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  sub_1D33DE974();
  sub_1D331FEDC(v16, v15);
  v18 = sub_1D33DE964();
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E85E0];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = v16;
  v19[5] = v15;
  sub_1D333E088(0, 0, v14, &unk_1D33E1AF0, v19);

  v21 = v0[1];

  return v21();
}

uint64_t sub_1D3340DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_1D33DE974();
  v5[5] = sub_1D33DE964();
  v7 = sub_1D33DE914();

  return MEMORY[0x1EEE6DFA0](sub_1D3340E78, v7, v6);
}

uint64_t sub_1D3340E78()
{
  v1 = *(v0 + 24);

  if (v1)
  {
    (*(v0 + 24))(v2);
  }

  **(v0 + 16) = v1 == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D3340EFC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController, &protocol conformance descriptor for VideoMessageInboxController);
  sub_1D33DDED4();

  v3 = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageStoreController;
  swift_beginAccess();
  return sub_1D3325720(v5 + v3, a1);
}

uint64_t sub_1D3340FC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController, &protocol conformance descriptor for VideoMessageInboxController);
  sub_1D33DDED4();

  v4 = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageStoreController;
  swift_beginAccess();
  return sub_1D3325720(v3 + v4, a2);
}

uint64_t sub_1D334108C(uint64_t a1, uint64_t *a2)
{
  sub_1D3325720(a1, v15);
  v3 = *a2;
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v15, v15[3]);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v6);
  v8 = *v6;
  v14[3] = sub_1D33DE2A4();
  v14[4] = &off_1F4EE4AF0;
  v14[0] = v8;
  swift_getKeyPath();
  v11 = v3;
  v12 = v14;
  v13 = v3;
  sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController, &protocol conformance descriptor for VideoMessageInboxController);
  sub_1D33DDEC4();

  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return __swift_destroy_boxed_opaque_existential_1Tm(v15);
}

uint64_t sub_1D3341228(uint64_t a1, uint64_t a2)
{
  sub_1D3325720(a2, v14);
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v14, v14[3]);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  v7 = *v5;
  v12 = sub_1D33DE2A4();
  v13 = &off_1F4EE4AF0;
  *&v11 = v7;
  v8 = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageStoreController;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((a1 + v8));
  sub_1D331E6AC(&v11, a1 + v8);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1Tm(v14);
}

uint64_t sub_1D3341378(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController, &protocol conformance descriptor for VideoMessageInboxController);
  sub_1D33DDED4();
}

uint64_t sub_1D334141C@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController, &protocol conformance descriptor for VideoMessageInboxController);
  sub_1D33DDED4();

  *a4 = *(v6 + *a3);
}

uint64_t sub_1D33414D4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController, &protocol conformance descriptor for VideoMessageInboxController);
  sub_1D33DDEC4();
}

uint64_t sub_1D33415C0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (!Strong)
  {
    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    if (v4)
    {
      v5 = v4 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
      os_unfair_lock_lock((v4 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state));
      if (*(v5 + 40) == 1)
      {
        if (sub_1D33DE9F4())
        {
          v6 = 0;
        }

        else
        {
          v6 = 2;
        }

        *(v5 + 40) = v6;
      }

      os_unfair_lock_unlock(v5);
    }

    goto LABEL_11;
  }

  v2 = Strong;
  if (sub_1D33DE9F4())
  {
    v3 = v0[8];

    sub_1D3341A5C(v3);
LABEL_11:
    v7 = v0[1];

    return v7();
  }

  v9 = *(v2 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_pagedLoader);
  v0[10] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D3341728, v9, 0);
}

uint64_t sub_1D3341728()
{
  v1 = *(v0 + 80);
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;

  return MEMORY[0x1EEE6DFA0](sub_1D3341794, 0, 0);
}

uint64_t sub_1D3341794()
{
  if (sub_1D33DE9F4())
  {
    v1 = v0[8];

    sub_1D3341A5C(v1);
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_1D3341870;

    return sub_1D3323538();
  }
}

uint64_t sub_1D3341870()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1D33419F0;
  }

  else
  {
    v2 = sub_1D3341984;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D3341984()
{
  v1 = *(v0 + 64);

  sub_1D3341A5C(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D33419F0()
{
  v1 = *(v0 + 64);

  sub_1D3341A5C(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D3341A5C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
    os_unfair_lock_lock((result + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state));
    if (*(v2 + 40) == 1)
    {
      if (sub_1D33DE9F4())
      {
        v3 = 0;
      }

      else
      {
        v3 = 2;
      }

      *(v2 + 40) = v3;
    }

    os_unfair_lock_unlock(v2);
  }

  return result;
}

uint64_t sub_1D3341AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1D331E818(a3, v22 - v9, &unk_1EC7610E0, &qword_1D33E16C0);
  v11 = sub_1D33DE9B4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1D331E880(v10, &unk_1EC7610E0, &qword_1D33E16C0);
  }

  else
  {
    sub_1D33DE9A4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1D33DE914();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1D33DE814() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1D3341D58()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 152) + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
  os_unfair_lock_lock(v2);
  *(v2 + 8) = MEMORY[0x1E69E7CC0];

  os_unfair_lock_unlock(v2);
  *(v0 + 96) = v1;
  v3 = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__signState;
  *(v0 + 440) = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_loadingStateSubject;
  *(v0 + 448) = v3;
  *(v0 + 544) = *MEMORY[0x1E69E93E8];
  *(v0 + 456) = *(v0 + 424);

  v4 = swift_task_alloc();
  *(v0 + 464) = v4;
  *v4 = v0;
  v4[1] = sub_1D3341E64;

  return sub_1D3323EE4();
}

uint64_t sub_1D3341E64(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 472) = a1;
  *(v3 + 549) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1D3341F68, 0, 0);
}

uint64_t sub_1D3341F68()
{
  if (*(v0 + 549) & 1) != 0 || (sub_1D33DE9F4())
  {
    v1 = *(v0 + 376);
    v2 = *(v0 + 352);
    v3 = *(v0 + 360);

    (*(v3 + 8))(v1, v2);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 472);
    *(v0 + 548) = 1;
    sub_1D33DE4E4();
    if (v6 == 3)
    {
      sub_1D33DF214();
      v7 = swift_task_alloc();
      *(v0 + 480) = v7;
      *v7 = v0;
      v7[1] = sub_1D33423D8;

      return sub_1D33710C8(250000000000000000, 0, 0, 0, 1);
    }

    else
    {
      if (qword_1EDEBF088 != -1)
      {
        swift_once();
      }

      v8 = sub_1D33DE3E4();
      *(v0 + 496) = __swift_project_value_buffer(v8, qword_1EDEC1458);
      sub_1D33DE3A4();
      v9 = sub_1D33DE3D4();
      v10 = sub_1D33DEC04();
      if (sub_1D33DECC4())
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        v12 = sub_1D33DE394();
        _os_signpost_emit_with_name_impl(&dword_1D331A000, v9, v10, v12, "VideoMessageInboxController loading", "", v11, 2u);
        MEMORY[0x1D38B81C0](v11, -1, -1);
      }

      v13 = *(v0 + 248);
      v14 = *(v0 + 256);
      v15 = *(v0 + 224);
      v16 = *(v0 + 232);
      v17 = *(v0 + 152);

      (*(v16 + 16))(v13, v14, v15);
      sub_1D33DE424();
      swift_allocObject();
      v18 = sub_1D33DE414();
      v19 = *(v16 + 8);
      *(v0 + 504) = v19;
      *(v0 + 512) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v19(v14, v15);
      swift_getKeyPath();
      v20 = swift_task_alloc();
      *(v20 + 16) = v17;
      *(v20 + 24) = v18;
      *(v0 + 104) = v17;
      sub_1D33DDEC4();

      v21 = swift_task_alloc();
      *(v0 + 520) = v21;
      *v21 = v0;
      v21[1] = sub_1D33428CC;
      v22 = *(v0 + 472);

      return sub_1D3325488(v22);
    }
  }
}

uint64_t sub_1D33423D8()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  (*(v2[34] + 8))(v2[35], v2[33]);
  if (v0)
  {
    v3 = sub_1D3325E48;
  }

  else
  {
    v3 = sub_1D3342540;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D3342540()
{
  if (sub_1D33DE9F4())
  {
    v1 = v0[47];
    v2 = v0[44];
    v3 = v0[45];

    (*(v3 + 8))(v1, v2);

    v4 = v0[1];

    return v4();
  }

  else
  {
    if (qword_1EDEBF088 != -1)
    {
      swift_once();
    }

    v6 = sub_1D33DE3E4();
    v0[62] = __swift_project_value_buffer(v6, qword_1EDEC1458);
    sub_1D33DE3A4();
    v7 = sub_1D33DE3D4();
    v8 = sub_1D33DEC04();
    if (sub_1D33DECC4())
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = sub_1D33DE394();
      _os_signpost_emit_with_name_impl(&dword_1D331A000, v7, v8, v10, "VideoMessageInboxController loading", "", v9, 2u);
      MEMORY[0x1D38B81C0](v9, -1, -1);
    }

    v11 = v0[31];
    v12 = v0[32];
    v13 = v0[28];
    v14 = v0[29];
    v15 = v0[19];

    (*(v14 + 16))(v11, v12, v13);
    sub_1D33DE424();
    swift_allocObject();
    v16 = sub_1D33DE414();
    v17 = *(v14 + 8);
    v0[63] = v17;
    v0[64] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v17(v12, v13);
    swift_getKeyPath();
    v18 = swift_task_alloc();
    *(v18 + 16) = v15;
    *(v18 + 24) = v16;
    v0[13] = v15;
    sub_1D33DDEC4();

    v19 = swift_task_alloc();
    v0[65] = v19;
    *v19 = v0;
    v19[1] = sub_1D33428CC;
    v20 = v0[59];

    return sub_1D3325488(v20);
  }
}

uint64_t sub_1D33428CC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 528) = a1;
  *(v3 + 536) = v1;

  if (v1)
  {
    v4 = sub_1D33429E4;
  }

  else
  {
    v4 = sub_1D332C70C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D33429E4()
{
  v1 = v0[47];
  v2 = v0[44];
  v3 = v0[45];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D3342B18(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController, &protocol conformance descriptor for VideoMessageInboxController);
  sub_1D33DDEC4();

  return sub_1D33DE4E4();
}

void sub_1D3342C0C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v14 = a2;

  sub_1D3333DE0(v3);
  v4 = sub_1D332BD24(v14);

  v5 = v4[2];
  if (v5)
  {
    v6 = sub_1D33D2B88(v4[2], 0);
    v7 = *(type metadata accessor for RecentsItem(0) - 8);
    v8 = sub_1D3330080(&v14, v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v5, v4);
    sub_1D331FEEC(v14);
    if (v8 != v5)
    {
      __break(1u);
      return;
    }
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v6;
  v9 = v6[2];
  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v10 = sub_1D33DE464();
  __swift_project_value_buffer(v10, qword_1EDEC1480);
  v11 = sub_1D33DE444();
  v12 = sub_1D33DEAF4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134349056;
    *(v13 + 4) = v9;
    _os_log_impl(&dword_1D331A000, v11, v12, "VideoMessageInboxController Finished adding items, now have new count of %{public}ld", v13, 0xCu);
    MEMORY[0x1D38B81C0](v13, -1, -1);
  }
}

void *sub_1D3342DFC(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  v6 = *(a3 + 16);
  if (v6)
  {
    v8 = 0;
    do
    {
      v13 = result;
      for (i = v8; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v10 = sub_1D33DDDB4();
        v12 = *(v10 - 8);
        result = (v10 - 8);
        v11 = v12;
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v14, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
        if (v3)
        {

          return v13;
        }

        if (v14)
        {
          break;
        }

        if (v8 == v6)
        {
          return v13;
        }
      }

      MEMORY[0x1D38B6F20](result);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D33DE8D4();
      }

      sub_1D33DE8F4();
      result = v15;
    }

    while (v8 != v6);
  }

  return result;
}

uint64_t sub_1D3342F7C()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D3343024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D3343044, 0, 0);
}

uint64_t sub_1D3343044()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    v3 = *(v0 + 48);
    v4 = Strong + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
    os_unfair_lock_lock((Strong + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state));
    sub_1D3343110((v4 + 8), v3);
    os_unfair_lock_unlock(v4);
  }

  **(v0 + 40) = v2 == 0;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D3343110(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentsItem(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v29 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - v12;
  swift_beginAccess();
  v34 = a2;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v36 = 1;
    sub_1D33DE4E4();
  }

  v15 = MEMORY[0x1D38B7A70](Strong);
  v32 = a1;
  v16 = *a1;
  v17 = *(*a1 + 16);
  v30 = v15;
  v31 = v16;
  if (v17)
  {
    v33 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v18 = v16 + v33;
    swift_beginAccess();
    v19 = *(v5 + 72);
    v20 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1D332A828(v18, v13);
      v21 = v13[32];
      if (v21 <= 8)
      {
        if (((1 << v21) & 0x1B0) != 0)
        {
          goto LABEL_6;
        }

        v22 = *(v13 + 1);
        if (v21 == 3 || v21 == 6)
        {
          goto LABEL_14;
        }
      }

      if (v21 >= 2)
      {
        v22 = *v13;
LABEL_14:
        v23 = v22;
        v24 = swift_weakLoadStrong();
        if (v24)
        {
          v25 = *(v24 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_callProviderManager);
        }

        else
        {
          v25 = 0;
        }

        RecentsItem.init(message:callProviderManager:)(v23, v25, v8);
        sub_1D332B2E8(v13);
        sub_1D33302BC(v8, v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1D33226AC(0, v20[2] + 1, 1, v20);
        }

        v27 = v20[2];
        v26 = v20[3];
        if (v27 >= v26 >> 1)
        {
          v20 = sub_1D33226AC((v26 > 1), v27 + 1, 1, v20);
        }

        v20[2] = v27 + 1;
        sub_1D33302BC(v11, v20 + v33 + v27 * v19);
        goto LABEL_7;
      }

LABEL_6:
      sub_1D332B2E8(v13);
LABEL_7:
      v18 += v19;
      if (!--v17)
      {
        goto LABEL_23;
      }
    }
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_23:
  objc_autoreleasePoolPop(v30);

  *v32 = v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v35 = 2;
    sub_1D33DE4E4();
  }

  return result;
}

uint64_t VideoMessageInboxController.deinit()
{
  v1 = v0 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageQuery;
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7618B0, &qword_1D33E3360) + 28);
  v3 = sub_1D33DE2F4();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  sub_1D33435AC(v0 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state + 8);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageStoreController));

  v4 = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController___observationRegistrar;
  v5 = sub_1D33DDF14();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t VideoMessageInboxController.__deallocating_deinit()
{
  VideoMessageInboxController.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D3343654(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v65 = a2;
  v68 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v76 = v64 - v8;
  v9 = sub_1D33DDDB4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v82 = v64 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v81 = v64 - v16;
  v17 = type metadata accessor for RecentsItem(0) - 8;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v67 = v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v75 = v64 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = v64 - v23;
  v64[1] = a1;
  v25 = *a1;
  v26 = *(*a1 + 16);
  v69 = v22;
  v70 = v10;
  if (v26)
  {
    v27 = v25 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v28 = *(v22 + 72);
    v79 = (v10 + 56);
    v80 = v28;
    v77 = (v10 + 32);
    v78 = (v10 + 48);
    v29 = MEMORY[0x1E69E7CC0];
    v30 = v76;
    v74 = v7;
    while (1)
    {
      sub_1D332A828(v27, v24);
      v31 = v24[32];
      v32 = 1;
      if (v31 <= 8)
      {
        if (((1 << v31) & 0x1B0) != 0)
        {
          goto LABEL_12;
        }

        v33 = *(v24 + 1);
        if (v31 == 3 || v31 == 6)
        {
          goto LABEL_11;
        }
      }

      if (v31 >= 2)
      {
        v33 = *v24;
LABEL_11:
        v34 = v33;
        sub_1D33DE0B4();

        v32 = 0;
      }

LABEL_12:
      (*v79)(v7, v32, 1, v9);
      sub_1D332FEC4(v7, v30);
      sub_1D332B2E8(v24);
      if ((*v78)(v30, 1, v9) == 1)
      {
        sub_1D331E880(v30, &qword_1EC7612B0, qword_1D33E2830);
      }

      else
      {
        v35 = *v77;
        (*v77)(v81, v30, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_1D3338090(0, *(v29 + 2) + 1, 1, v29);
        }

        v37 = *(v29 + 2);
        v36 = *(v29 + 3);
        if (v37 >= v36 >> 1)
        {
          v29 = sub_1D3338090((v36 > 1), v37 + 1, 1, v29);
        }

        *(v29 + 2) = v37 + 1;
        v35(&v29[((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v37], v81, v9);
        v7 = v74;
        v30 = v76;
      }

      v27 += v80;
      if (!--v26)
      {
        goto LABEL_19;
      }
    }
  }

  v29 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v81 = sub_1D3336A64(v29);

  v38 = v65;
  if (v65 >> 62)
  {
    goto LABEL_41;
  }

  v39 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v40 = v70;
  if (v39)
  {
LABEL_21:
    v41 = 0;
    v66 = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_callProviderManager;
    v73 = v38 & 0xFFFFFFFFFFFFFF8;
    v74 = v38 & 0xC000000000000001;
    v71 = v38 + 32;
    v79 = (v40 + 16);
    v80 = v81 + 56;
    v42 = MEMORY[0x1E69E7CC0];
    v43 = (v40 + 8);
    v72 = v39;
    while (1)
    {
      v78 = v42;
      if (v74)
      {
        v45 = MEMORY[0x1D38B75D0](v41, v65);
        v46 = __OFADD__(v41, 1);
        v47 = (v41 + 1);
        if (v46)
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v41 >= *(v73 + 16))
        {
          goto LABEL_40;
        }

        v45 = *(v71 + 8 * v41);
        v46 = __OFADD__(v41, 1);
        v47 = (v41 + 1);
        if (v46)
        {
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          v39 = sub_1D33DEE14();
          v40 = v70;
          if (!v39)
          {
            break;
          }

          goto LABEL_21;
        }
      }

      v76 = v45;
      v77 = v47;
      sub_1D33DE0B4();
      if (*(v81 + 2) && (v48 = v81, sub_1D331FE94(&qword_1EDEBFD38, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), v49 = sub_1D33DE724(), v50 = -1 << v48[32], v38 = v49 & ~v50, ((*&v80[(v38 >> 3) & 0xFFFFFFFFFFFFFF8] >> v38) & 1) != 0))
      {
        v51 = ~v50;
        v52 = *(v70 + 72);
        v53 = *(v70 + 16);
        while (1)
        {
          v53(v13, *(v81 + 6) + v52 * v38, v9);
          sub_1D331FE94(&qword_1EDEBFD30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
          v54 = sub_1D33DE774();
          v55 = *v43;
          (*v43)(v13, v9);
          if (v54)
          {
            break;
          }

          v38 = (v38 + 1) & v51;
          if (((*&v80[(v38 >> 3) & 0xFFFFFFFFFFFFFF8] >> v38) & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        v55(v82, v9);
        v44 = v72;
        v42 = v78;
      }

      else
      {
LABEL_32:
        (*v43)(v82, v9);
        v56 = *(v68 + v66);
        v57 = v56;
        v58 = v67;
        RecentsItem.init(message:callProviderManager:)(v76, v56, v67);
        sub_1D33302BC(v58, v75);
        v42 = v78;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_1D33226AC(0, v42[2] + 1, 1, v42);
        }

        v44 = v72;
        v60 = v42[2];
        v59 = v42[3];
        v38 = v60 + 1;
        v61 = v69;
        if (v60 >= v59 >> 1)
        {
          v62 = sub_1D33226AC((v59 > 1), v60 + 1, 1, v42);
          v61 = v69;
          v42 = v62;
        }

        v42[2] = v38;
        sub_1D33302BC(v75, v42 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v60);
      }

      v41 = v77;
      if (v77 == v44)
      {
        goto LABEL_43;
      }
    }
  }

  v42 = MEMORY[0x1E69E7CC0];
LABEL_43:

  return sub_1D3333DE0(v42);
}

Swift::Void __swiftcall VideoMessageInboxController.messageStoreDidUpdateMessages(_:)(Swift::OpaquePointer a1)
{
  v43 = sub_1D33DDDB4();
  v3 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v6 = sub_1D33DE464();
  __swift_project_value_buffer(v6, qword_1EDEC1480);

  v7 = sub_1D33DE444();
  v8 = sub_1D33DEAF4();

  if (!os_log_type_enabled(v7, v8))
  {
    goto LABEL_21;
  }

  v41 = v1;
  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v45 = v10;
  *v9 = 136446210;
  v11 = v3;
  if (a1._rawValue >> 62)
  {
    v12 = sub_1D33DEE14();
  }

  else
  {
    v12 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = MEMORY[0x1E69E7CC0];
  v40 = v10;
  if (!v12)
  {
LABEL_20:
    v31 = MEMORY[0x1D38B6F50](v13, MEMORY[0x1E69E6158]);
    v33 = v32;

    v34 = sub_1D3328B48(v31, v33, &v45);

    *(v9 + 4) = v34;
    _os_log_impl(&dword_1D331A000, v7, v8, "messageStoreDidUpdateMessages: %{public}s", v9, 0xCu);
    v35 = v40;
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x1D38B81C0](v35, -1, -1);
    MEMORY[0x1D38B81C0](v9, -1, -1);
LABEL_21:

    sub_1D334421C(a1._rawValue, sub_1D334D268);
    return;
  }

  v44 = MEMORY[0x1E69E7CC0];
  sub_1D334A9E0(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v37 = v9;
    v38 = v8;
    v39 = v7;
    v13 = v44;
    rawValue = a1._rawValue;
    if ((a1._rawValue & 0xC000000000000001) != 0)
    {
      v14 = 0;
      v15 = (v11 + 8);
      do
      {
        MEMORY[0x1D38B75D0](v14, rawValue);
        sub_1D33DE0B4();
        v16 = sub_1D33DDD54();
        v18 = v17;
        (*v15)(v5, v43);
        swift_unknownObjectRelease();
        v44 = v13;
        v20 = *(v13 + 16);
        v19 = *(v13 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1D334A9E0((v19 > 1), v20 + 1, 1);
          v13 = v44;
        }

        ++v14;
        *(v13 + 16) = v20 + 1;
        v21 = v13 + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v18;
      }

      while (v12 != v14);
    }

    else
    {
      v22 = (a1._rawValue + 32);
      v23 = (v11 + 8);
      do
      {
        v24 = *v22;
        sub_1D33DE0B4();
        v25 = sub_1D33DDD54();
        v27 = v26;
        (*v23)(v5, v43);

        v44 = v13;
        v29 = *(v13 + 16);
        v28 = *(v13 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1D334A9E0((v28 > 1), v29 + 1, 1);
          v13 = v44;
        }

        *(v13 + 16) = v29 + 1;
        v30 = v13 + 16 * v29;
        *(v30 + 32) = v25;
        *(v30 + 40) = v27;
        ++v22;
        --v12;
      }

      while (v12);
    }

    a1._rawValue = rawValue;
    v7 = v39;
    LOBYTE(v8) = v38;
    v9 = v37;
    goto LABEL_20;
  }

  __break(1u);
}

uint64_t sub_1D334421C(uint64_t a1, uint64_t a2)
{
  sub_1D33DE4E4();
  swift_getKeyPath();
  sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController, &protocol conformance descriptor for VideoMessageInboxController);
  sub_1D33DDEC4();

  return sub_1D33DE4E4();
}

char *sub_1D3344364(unint64_t a1, const char *a2, uint64_t a3, ...)
{
  v6 = v3;
  v53 = sub_1D33DDDB4();
  v8 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v10 = &v44[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v11 = sub_1D33DE464();
  __swift_project_value_buffer(v11, qword_1EDEC1480);

  v12 = sub_1D33DE444();
  v13 = sub_1D33DEAF4();

  if (!os_log_type_enabled(v12, v13))
  {
    goto LABEL_21;
  }

  v51 = a3;
  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  v55 = v15;
  *v14 = 136446210;
  v49 = v15;
  v50 = v14;
  v16 = v8;
  if (a1 >> 62)
  {
    v17 = sub_1D33DEE14();
  }

  else
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = MEMORY[0x1E69E7CC0];
  if (!v17)
  {
LABEL_20:
    v37 = MEMORY[0x1D38B6F50](v18, MEMORY[0x1E69E6158]);
    v39 = v38;

    v40 = sub_1D3328B48(v37, v39, &v55);

    v41 = v50;
    *(v50 + 1) = v40;
    _os_log_impl(&dword_1D331A000, v12, v13, a2, v41, 0xCu);
    v42 = v49;
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x1D38B81C0](v42, -1, -1);
    MEMORY[0x1D38B81C0](v41, -1, -1);
LABEL_21:

    LOBYTE(v55) = 1;
    sub_1D33DE4E4();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v44[-16] = v6;
    *&v44[-8] = a1;
    v55 = v6;
    sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController, &protocol conformance descriptor for VideoMessageInboxController);
    sub_1D33DDEC4();

    LOBYTE(v55) = 2;
    return sub_1D33DE4E4();
  }

  v54 = MEMORY[0x1E69E7CC0];
  result = sub_1D334A9E0(0, v17 & ~(v17 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v45 = v13;
    v46 = v12;
    v47 = a2;
    v48 = v3;
    v18 = v54;
    v52 = a1;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v20 = 0;
      v21 = (v16 + 8);
      do
      {
        MEMORY[0x1D38B75D0](v20, v52);
        sub_1D33DE0B4();
        v22 = sub_1D33DDD54();
        v24 = v23;
        (*v21)(v10, v53);
        swift_unknownObjectRelease();
        v54 = v18;
        v26 = *(v18 + 16);
        v25 = *(v18 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1D334A9E0((v25 > 1), v26 + 1, 1);
          v18 = v54;
        }

        ++v20;
        *(v18 + 16) = v26 + 1;
        v27 = v18 + 16 * v26;
        *(v27 + 32) = v22;
        *(v27 + 40) = v24;
      }

      while (v17 != v20);
    }

    else
    {
      v28 = (a1 + 32);
      v29 = (v16 + 8);
      do
      {
        v30 = *v28;
        sub_1D33DE0B4();
        v31 = sub_1D33DDD54();
        v33 = v32;
        (*v29)(v10, v53);

        v54 = v18;
        v35 = *(v18 + 16);
        v34 = *(v18 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_1D334A9E0((v34 > 1), v35 + 1, 1);
          v18 = v54;
        }

        *(v18 + 16) = v35 + 1;
        v36 = v18 + 16 * v35;
        *(v36 + 32) = v31;
        *(v36 + 40) = v33;
        ++v28;
        --v17;
      }

      while (v17);
    }

    a1 = v52;
    a2 = v47;
    v6 = v48;
    v12 = v46;
    LOBYTE(v13) = v45;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D3344820(void *a1, unint64_t a2)
{
  v4 = type metadata accessor for RecentsItem(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - v9;
  v11 = sub_1D33DDDB4();
  v65 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v61 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v48 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v62 = &v48 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v48 - v19;
  v57 = *a1;
  v67 = v57;
  if (a2 >> 62)
  {
LABEL_37:
    v21 = sub_1D33DEE14();
  }

  else
  {
    v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v55 = v10;
  v49 = v8;
  v50 = a1;
  v52 = v16;
  v53 = v5;
  if (v21)
  {
    v22 = a2;
    v66 = MEMORY[0x1E69E7CC0];
    v23 = v21 & ~(v21 >> 63);
    v64 = v21;

    result = sub_1D334B3C4(0, v23, 0);
    if (v64 < 0)
    {
      __break(1u);
      return result;
    }

    v25 = 0;
    v26 = a2;
    v63 = a2 & 0xC000000000000001;
    v27 = v66;
    v28 = v22;
    do
    {
      if (v63)
      {
        v29 = MEMORY[0x1D38B75D0](v25, v26);
      }

      else
      {
        v29 = *(v26 + 8 * v25 + 32);
      }

      v30 = v29;
      sub_1D33DE0B4();

      v66 = v27;
      v32 = *(v27 + 16);
      v31 = *(v27 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1D334B3C4((v31 > 1), v32 + 1, 1);
        v27 = v66;
      }

      ++v25;
      *(v27 + 16) = v32 + 1;
      (*(v65 + 32))(v27 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v32, v20, v11);
      v26 = v28;
    }

    while (v64 != v25);
    v16 = v52;
    v5 = v53;
    a1 = v57;
  }

  else
  {
    a1 = v57;

    v27 = MEMORY[0x1E69E7CC0];
  }

  v8 = v62;
  v33 = sub_1D3336A64(v27);

  v10 = a1[2];
  if (!v10)
  {
LABEL_34:
  }

  v20 = 0;
  v58 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v56 = (v65 + 32);
  v60 = v65 + 16;
  v63 = v33 + 56;
  v64 = v65 + 8;
  v51 = (v65 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  a2 = v55;
  v54 = v10;
  while (1)
  {
    if (v20 >= a1[2])
    {
      __break(1u);
      goto LABEL_37;
    }

    sub_1D332A828(&v58[*(v5 + 72) * v20], a2);
    v34 = *(a2 + 32);
    if (v34 > 8)
    {
      goto LABEL_24;
    }

    if (((1 << v34) & 0x1B0) != 0)
    {
      goto LABEL_18;
    }

    v35 = *(a2 + 8);
    if (v34 != 3 && v34 != 6)
    {
LABEL_24:
      if (v34 < 2)
      {
        goto LABEL_18;
      }

      v35 = *a2;
    }

    v36 = v35;
    sub_1D33DE0B4();

    (*v56)(v8, v16, v11);
    if (*(v33 + 16))
    {
      break;
    }

    (*v64)(v8, v11);
LABEL_17:
    v10 = v54;
LABEL_18:
    sub_1D332B2E8(a2);
    if (++v20 == v10)
    {
      goto LABEL_34;
    }
  }

  sub_1D331FE94(&qword_1EDEBFD38, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v37 = sub_1D33DE724();
  v38 = -1 << *(v33 + 32);
  v39 = v37 & ~v38;
  if (((*(v63 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
  {
    v45 = *v64;
LABEL_33:
    v46 = v62;
    v45(v62, v11);
    v8 = v46;
    a1 = v57;
    goto LABEL_17;
  }

  v40 = v33;
  v59 = ~v38;
  v41 = *(v65 + 72);
  v42 = *(v65 + 16);
  while (1)
  {
    v43 = v61;
    v42(v61, *(v40 + 48) + v41 * v39, v11);
    sub_1D331FE94(&qword_1EDEBFD30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    v44 = sub_1D33DE774();
    v45 = *v64;
    (*v64)(v43, v11);
    if (v44)
    {
      break;
    }

    v39 = (v39 + 1) & v59;
    if (((*(v63 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
    {
      v5 = v53;
      a2 = v55;
      v33 = v40;
      v16 = v52;
      goto LABEL_33;
    }
  }

  v45(v62, v11);
  sub_1D332B2E8(v55);
  v47 = v49;
  sub_1D3357C20(v20, v49);
  sub_1D332B2E8(v47);

  *v50 = v67;
  return result;
}

Swift::Void __swiftcall VideoMessageInboxController.messageStoreDidDeleteMessagesWithUUIDs(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v4 = sub_1D33DE464();
  __swift_project_value_buffer(v4, qword_1EDEC1480);

  v5 = sub_1D33DE444();
  v6 = sub_1D33DEAF4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    v9 = sub_1D33DDDB4();
    v10 = MEMORY[0x1D38B6F50](a1._rawValue, v9);
    v12 = sub_1D3328B48(v10, v11, &v14);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1D331A000, v5, v6, "messageStoreDidDeleteMessagesWithUUIDs: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1D38B81C0](v8, -1, -1);
    MEMORY[0x1D38B81C0](v7, -1, -1);
  }

  LOBYTE(v14) = 1;
  sub_1D33DE4E4();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v14 = v2;
  sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController, &protocol conformance descriptor for VideoMessageInboxController);
  sub_1D33DDEC4();

  LOBYTE(v14) = 2;
  sub_1D33DE4E4();
}

uint64_t sub_1D334510C(void *a1, uint64_t a2)
{
  v3 = sub_1D33DDDB4();
  v44 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v50 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v47 = &v38 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - v8;
  v10 = type metadata accessor for RecentsItem(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v46 = &v38 - v15;
  v55 = *a1;
  v16 = v55;

  v18 = sub_1D3336A64(v17);

  v20 = *(v16 + 16);
  if (!v20)
  {
  }

  v38 = v14;
  v39 = a1;
  v21 = 0;
  v48 = v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v45 = (v44 + 32);
  v51 = v9;
  v52 = v18 + 56;
  v49 = v44 + 16;
  v53 = v18;
  v54 = (v44 + 8);
  v22 = v46;
  v23 = v18;
  v41 = v16;
  v42 = v11;
  v43 = v20;
  while (1)
  {
    if (v21 >= *(v16 + 16))
    {
      __break(1u);
      return result;
    }

    sub_1D332A828(v48 + *(v11 + 72) * v21, v22);
    v24 = *(v22 + 32);
    if (v24 > 8)
    {
      goto LABEL_11;
    }

    if (((1 << v24) & 0x1B0) != 0)
    {
      goto LABEL_5;
    }

    v25 = *(v22 + 8);
    if (v24 != 3 && v24 != 6)
    {
LABEL_11:
      if (v24 < 2)
      {
        goto LABEL_5;
      }

      v25 = *v22;
    }

    v26 = v25;
    v27 = v47;
    sub_1D33DE0B4();

    (*v45)(v9, v27, v3);
    if (*(v23 + 16))
    {
      break;
    }

    (*v54)(v9, v3);
LABEL_4:
    v20 = v43;
LABEL_5:
    result = sub_1D332B2E8(v22);
    if (++v21 == v20)
    {
    }
  }

  sub_1D331FE94(&qword_1EDEBFD38, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v28 = sub_1D33DE724();
  v29 = -1 << *(v23 + 32);
  v30 = v28 & ~v29;
  if (((*(v52 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
  {
    v36 = *v54;
LABEL_20:
    v22 = v46;
    v36(v9, v3);
    v11 = v42;
    v23 = v53;
    goto LABEL_4;
  }

  v40 = v54 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v31 = ~v29;
  v32 = *(v44 + 72);
  v33 = *(v44 + 16);
  while (1)
  {
    v34 = v50;
    v33(v50, *(v53 + 48) + v32 * v30, v3);
    sub_1D331FE94(&qword_1EDEBFD30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    v35 = sub_1D33DE774();
    v36 = *v54;
    (*v54)(v34, v3);
    if (v35)
    {
      break;
    }

    v30 = (v30 + 1) & v31;
    if (((*(v52 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
    {
      v9 = v51;
      v16 = v41;
      goto LABEL_20;
    }
  }

  v36(v51, v3);
  sub_1D332B2E8(v46);
  v37 = v38;
  sub_1D3357C20(v21, v38);
  sub_1D332B2E8(v37);

  *v39 = v55;
  return result;
}

uint64_t sub_1D334563C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  (a4)(0, a2);
  v6 = sub_1D33DE8B4();

  a5(v6);
}

void sub_1D33456EC(const char *a1)
{
  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v2 = sub_1D33DE464();
  __swift_project_value_buffer(v2, qword_1EDEC1480);
  v3 = sub_1D33DE444();
  v4 = sub_1D33DEAF4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D331A000, v3, v4, a1, v5, 2u);
    MEMORY[0x1D38B81C0](v5, -1, -1);
  }

  sub_1D33220A8();
}

uint64_t sub_1D33457F8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

void sub_1D334583C(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v9 = a1 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state));
  sub_1D33458DC((v9 + 8), a2, a3, a4, a1);
  os_unfair_lock_unlock(v9);
  if (v4)
  {
    __break(1u);
  }
}

uint64_t sub_1D33458DC(uint64_t *a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  v89 = a5;
  v88 = a4;
  v87 = a3;
  v85 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EE0, &qword_1D33E4CE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v95 = &v83 - v7;
  v8 = sub_1D33DDDB4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v103 = &v83 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v92 = &v83 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v102 = (&v83 - v17);
  v107 = type metadata accessor for RecentsItem(0);
  v18 = *(v107 - 8);
  v19 = MEMORY[0x1EEE9AC00](v107);
  v86 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v93 = &v83 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v98 = (&v83 - v24);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v83 - v25;
  v27 = sub_1D336BAF4(MEMORY[0x1E69E7CC0]);
  v84 = a1;
  v28 = *a1;
  v29 = *(v28 + 16);
  v100 = v18;
  v101 = v8;
  v97 = v9;
  v99 = v12;
  v94 = v28;
  v105 = v29;
  if (v29)
  {
    v30 = 0;
    v104 = (v28 + ((*(v18 + 80) + 32) & ~*(v18 + 80)));
    v96 = (v9 + 16);
    v90 = (v9 + 8);
    v91 = (v9 + 32);
    do
    {
      if (v30 >= *(v28 + 16))
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        result = sub_1D33DF1E4();
        __break(1u);
        return result;
      }

      v31 = *(v18 + 72);
      sub_1D332A828(v104 + v31 * v30, v26);
      v32 = v26[32];
      if (v32 > 8)
      {
        goto LABEL_3;
      }

      if (((1 << v32) & 0x1B0) != 0)
      {
LABEL_4:
        sub_1D332B2E8(v26);
        goto LABEL_5;
      }

      v33 = *(v26 + 1);
      if (v32 != 3 && v32 != 6)
      {
LABEL_3:
        if (v32 < 2)
        {
          goto LABEL_4;
        }

        v33 = *v26;
      }

      v34 = v33;
      v35 = v92;
      sub_1D33DE0B4();

      v36 = v102;
      (*v91)(v102, v35, v8);
      v37 = *v96;
      v38 = v103;
      (*v96)(v103, v36, v8);
      sub_1D332A828(v26, v98);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v106 = v27;
      v41 = sub_1D33B926C(v38);
      v42 = v27[2];
      v43 = (v40 & 1) == 0;
      v44 = v42 + v43;
      if (__OFADD__(v42, v43))
      {
        goto LABEL_50;
      }

      v45 = v40;
      if (v27[3] >= v44)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D3399734();
        }
      }

      else
      {
        sub_1D3396DEC(v44, isUniquelyReferenced_nonNull_native);
        v46 = sub_1D33B926C(v103);
        if ((v45 & 1) != (v47 & 1))
        {
          goto LABEL_53;
        }

        v41 = v46;
      }

      v8 = v101;
      v27 = v106;
      if (v45)
      {
        sub_1D334C7C4(v98, v106[7] + v41 * v31);
        v48 = *v90;
        (*v90)(v103, v8);
        v48(v102, v8);
        sub_1D332B2E8(v26);
      }

      else
      {
        v106[(v41 >> 6) + 8] |= 1 << v41;
        v49 = v97;
        v50 = v103;
        v37(v27[6] + *(v97 + 72) * v41, v103, v8);
        sub_1D33302BC(v98, v27[7] + v41 * v31);
        v51 = *(v49 + 8);
        v51(v50, v8);
        v51(v102, v8);
        sub_1D332B2E8(v26);
        v52 = v27[2];
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v53)
        {
          goto LABEL_51;
        }

        v27[2] = v54;
      }

      v12 = v99;
      v18 = v100;
      v28 = v94;
LABEL_5:
      v30 = (v30 + 1);
    }

    while (v105 != v30);
  }

  v55 = *(v85 + 16);
  if (v55)
  {
    v56 = *(v97 + 16);
    v57 = v85 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
    v104 = (v100 + 48);
    v105 = (v100 + 56);
    v58 = *(v97 + 72);
    v102 = (v97 + 8);
    v103 = v58;
    v59 = v95;
    v96 = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_callProviderManager;
    v97 += 16;
    v56(v12, v57, v8);
    while (1)
    {
      if (v27[2] && (v60 = sub_1D33B926C(v12), (v61 & 1) != 0))
      {
        sub_1D332A828(v27[7] + *(v100 + 72) * v60, v59);
        v62 = 0;
      }

      else
      {
        v62 = 1;
      }

      v63 = v107;
      (*v105)(v59, v62, 1, v107);
      if ((*v104)(v59, 1, v63))
      {
        (*v102)(v12, v8);
        sub_1D331E880(v59, &unk_1EC760EE0, &qword_1D33E4CE0);
        goto LABEL_27;
      }

      v98 = v27;
      v64 = v56;
      v65 = v93;
      sub_1D332A828(v59, v93);
      sub_1D331E880(v59, &unk_1EC760EE0, &qword_1D33E4CE0);
      v66 = *v65;
      v67 = *(v65 + 8);
      v68 = *(v65 + 16);
      v69 = *(v65 + 24);
      v70 = *(v65 + 32);
      sub_1D332B0D0(*v65, v67, v68, v69, *(v65 + 32));
      v71 = v65;
      v56 = v64;
      v27 = v98;
      sub_1D332B2E8(v71);
      if (v70 <= 8)
      {
        if (((1 << v70) & 0xB0) != 0)
        {
          goto LABEL_40;
        }

        if (((1 << v70) & 0x48) != 0)
        {

          goto LABEL_43;
        }

        if (v70 == 8)
        {
          goto LABEL_41;
        }
      }

      if (v70 < 2)
      {
LABEL_40:
        sub_1D332B1DC(v66, v67, v68, v69, v70);
LABEL_41:
        v8 = v101;
        v12 = v99;
        (*v102)(v99, v101);
        v59 = v95;
        goto LABEL_27;
      }

      v67 = v66;
LABEL_43:
      v87(v67);
      v72 = *&v96[v89];
      v73 = v67;
      v74 = v72;
      v75 = v86;
      RecentsItem.init(message:callProviderManager:)(v73, v72, v86);
      v76 = swift_isUniquelyReferenced_nonNull_native();
      v106 = v27;
      v77 = v75;
      v12 = v99;
      sub_1D3398888(v77, v99, v76);

      v8 = v101;
      (*v102)(v12, v101);
      v27 = v106;
      v59 = v95;
LABEL_27:
      v57 += v103;
      if (!--v55)
      {
        break;
      }

      v56(v12, v57, v8);
    }
  }

  v78 = v27[2];
  if (v78)
  {
    v79 = sub_1D33D2B88(v27[2], 0);
    v80 = sub_1D33D388C(&v106, v79 + ((*(v100 + 80) + 32) & ~*(v100 + 80)), v78, v27);
    v81 = v106;

    sub_1D331FEEC(v81);
    if (v80 != v78)
    {
      goto LABEL_52;
    }
  }

  else
  {

    v79 = MEMORY[0x1E69E7CC0];
  }

  *v84 = v79;
  return result;
}

uint64_t sub_1D33461E0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EE0, &qword_1D33E4CE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for RecentsItem(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_1D331E880(a1, &unk_1EC760EE0, &qword_1D33E4CE0);
    sub_1D334BB5C(a2, v7);
    v12 = sub_1D33DDDB4();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1D331E880(v7, &unk_1EC760EE0, &qword_1D33E4CE0);
  }

  else
  {
    sub_1D33302BC(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1D3398888(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1D33DDDB4();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

void sub_1D33463EC(uint64_t a1, uint64_t a2, void (*a3)(os_unfair_lock_s *, uint64_t, uint64_t))
{
  v7 = (a1 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state);
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state));
  a3(v7 + 2, a2, a1);
  os_unfair_lock_unlock(v7);
  if (v3)
  {
    __break(1u);
  }
}

uint64_t sub_1D334647C(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v57 = a3;
  v56 = a2;
  v4 = sub_1D33DDDB4();
  v58 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v69 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v65 = &v55 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v55 - v9;
  v11 = type metadata accessor for RecentsItem(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v68 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v55 - v15;
  v71 = sub_1D336BAF4(MEMORY[0x1E69E7CC0]);
  v55 = a1;
  v17 = *a1;
  v18 = *(*a1 + 16);
  v66 = *a1;
  if (v18)
  {
    v19 = 0;
    v20 = v17 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v63 = v10;
    v64 = (v58 + 32);
    v67 = (v58 + 16);
    v61 = v12;
    v62 = (v58 + 8);
    v59 = v20;
    v60 = v18;
    do
    {
      if (v19 >= *(v17 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        result = sub_1D33DF1E4();
        __break(1u);
        return result;
      }

      v21 = *(v12 + 72);
      sub_1D332A828(v20 + v21 * v19, v16);
      v22 = v16[32];
      if (v22 > 8)
      {
        goto LABEL_3;
      }

      if (((1 << v22) & 0x1B0) != 0)
      {
LABEL_4:
        sub_1D332B2E8(v16);
        goto LABEL_5;
      }

      v23 = *(v16 + 1);
      if (v22 != 3 && v22 != 6)
      {
LABEL_3:
        if (v22 < 2)
        {
          goto LABEL_4;
        }

        v23 = *v16;
      }

      v24 = v23;
      v25 = v65;
      sub_1D33DE0B4();

      (*v64)(v10, v25, v4);
      v26 = *v67;
      v27 = v69;
      v28 = v10;
      v29 = v4;
      (*v67)(v69, v28, v4);
      sub_1D332A828(v16, v68);
      v30 = v71;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70 = v30;
      v33 = sub_1D33B926C(v27);
      v34 = *(v30 + 16);
      v35 = (v32 & 1) == 0;
      v36 = v34 + v35;
      if (__OFADD__(v34, v35))
      {
        goto LABEL_30;
      }

      v37 = v32;
      if (*(v30 + 24) >= v36)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D3399734();
        }
      }

      else
      {
        sub_1D3396DEC(v36, isUniquelyReferenced_nonNull_native);
        v38 = sub_1D33B926C(v69);
        if ((v37 & 1) != (v39 & 1))
        {
          goto LABEL_33;
        }

        v33 = v38;
      }

      v4 = v29;
      v40 = v70;
      if (v37)
      {
        sub_1D334C7C4(v68, v70[7] + v33 * v21);
        v41 = *v62;
        (*v62)(v69, v29);
        v10 = v63;
        v41(v63, v4);
        sub_1D332B2E8(v16);
      }

      else
      {
        v70[(v33 >> 6) + 8] |= 1 << v33;
        v42 = v58;
        v43 = v69;
        v26(v40[6] + *(v58 + 72) * v33, v69, v4);
        sub_1D33302BC(v68, v40[7] + v33 * v21);
        v44 = *(v42 + 8);
        v44(v43, v4);
        v10 = v63;
        v44(v63, v4);
        sub_1D332B2E8(v16);
        v45 = v40[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_31;
        }

        v40[2] = v47;
      }

      v71 = v40;
      v17 = v66;
      v18 = v60;
      v12 = v61;
      v20 = v59;
LABEL_5:
      ++v19;
    }

    while (v18 != v19);
  }

  v48 = v57;

  sub_1D334D298(v56, &v71, v48);

  v49 = v71;
  v50 = *(v71 + 16);
  if (v50)
  {
    v51 = sub_1D33D2B88(*(v71 + 16), 0);
    v52 = sub_1D33D388C(&v70, v51 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v50, v49);
    v53 = v70;

    sub_1D331FEEC(v53);
    if (v52 != v50)
    {
      goto LABEL_32;
    }
  }

  else
  {

    v51 = MEMORY[0x1E69E7CC0];
  }

  *v55 = v51;
  return result;
}

void sub_1D33469E4(uint64_t a1, uint64_t a2, void (*a3)(os_unfair_lock_s *, uint64_t))
{
  v6 = (a1 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state);
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state));
  a3(v6 + 2, a2);
  os_unfair_lock_unlock(v6);
  if (v3)
  {
    __break(1u);
  }
}

uint64_t sub_1D3346A6C(uint64_t *a1, uint64_t a2)
{
  v71 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EE0, &qword_1D33E4CE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v70 - v4;
  v6 = sub_1D33DDDB4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v83 = (v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v8);
  v74 = v70 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v80 = v70 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v78 = v70 - v14;
  v85 = type metadata accessor for RecentsItem(0);
  v15 = *(v85 - 8);
  v16 = MEMORY[0x1EEE9AC00](v85);
  v79 = v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v70 - v18;
  v20 = sub_1D336BAF4(MEMORY[0x1E69E7CC0]);
  v70[0] = a1;
  v21 = *a1;
  v22 = *(v21 + 16);
  v81 = v6;
  v82 = v15;
  v75 = v21;
  v86 = v5;
  v88 = v7;
  if (v22)
  {
    v23 = 0;
    v84 = (v21 + ((*(v15 + 80) + 32) & ~*(v15 + 80)));
    v76 = v22;
    v77 = (v7 + 16);
    v72 = (v7 + 8);
    v73 = (v7 + 32);
    do
    {
      if (v23 >= *(v21 + 16))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        result = sub_1D33DF1E4();
        __break(1u);
        return result;
      }

      v24 = *(v15 + 72);
      sub_1D332A828(v84 + v24 * v23, v19);
      v25 = v19[32];
      if (v25 > 8)
      {
        goto LABEL_3;
      }

      if (((1 << v25) & 0x1B0) != 0)
      {
LABEL_4:
        sub_1D332B2E8(v19);
        goto LABEL_5;
      }

      v26 = *(v19 + 1);
      if (v25 != 3 && v25 != 6)
      {
LABEL_3:
        if (v25 < 2)
        {
          goto LABEL_4;
        }

        v26 = *v19;
      }

      v27 = v26;
      v28 = v74;
      sub_1D33DE0B4();

      v29 = v80;
      (*v73)(v80, v28, v6);
      v30 = *v77;
      v31 = v83;
      (*v77)(v83, v29, v6);
      sub_1D332A828(v19, v79);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v87 = v20;
      v34 = sub_1D33B926C(v31);
      v35 = v20[2];
      v36 = (v33 & 1) == 0;
      v37 = v35 + v36;
      if (__OFADD__(v35, v36))
      {
        goto LABEL_39;
      }

      v38 = v33;
      if (v20[3] >= v37)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D3399734();
        }
      }

      else
      {
        sub_1D3396DEC(v37, isUniquelyReferenced_nonNull_native);
        v39 = sub_1D33B926C(v83);
        if ((v38 & 1) != (v40 & 1))
        {
          goto LABEL_42;
        }

        v34 = v39;
      }

      v41 = v88;
      v22 = v76;
      v20 = v87;
      if (v38)
      {
        sub_1D334C7C4(v79, v87[7] + v34 * v24);
        v42 = *v72;
        v6 = v81;
        (*v72)(v83, v81);
        v42(v80, v6);
        sub_1D332B2E8(v19);
      }

      else
      {
        v87[(v34 >> 6) + 8] |= 1 << v34;
        v43 = v83;
        v6 = v81;
        v30((v20[6] + *(v41 + 72) * v34), v83, v81);
        sub_1D33302BC(v79, v20[7] + v34 * v24);
        v44 = *(v41 + 8);
        v44(v43, v6);
        v44(v80, v6);
        sub_1D332B2E8(v19);
        v45 = v20[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_40;
        }

        v20[2] = v47;
        v22 = v76;
      }

      v21 = v75;
      v15 = v82;
LABEL_5:
      ++v23;
    }

    while (v22 != v23);
  }

  v48 = *(v71 + 16);
  if (v48)
  {
    v84 = *(v88 + 16);
    v49 = v71 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
    v50 = *(v88 + 72);
    v88 += 16;
    v51 = (v88 - 8);
    v83 = (v15 + 56);
    v52 = v78;
    v84(v78, v49, v6);
    while (1)
    {
      v57 = sub_1D33B926C(v52);
      if (v58)
      {
        v59 = v57;
        v60 = swift_isUniquelyReferenced_nonNull_native();
        v87 = v20;
        if (!v60)
        {
          sub_1D3399734();
          v20 = v87;
        }

        v61 = *v51;
        v6 = v81;
        (*v51)(v20[6] + v59 * v50, v81);
        v62 = v20[7] + *(v82 + 72) * v59;
        v63 = v20;
        v55 = v50;
        v56 = v86;
        sub_1D33302BC(v62, v86);
        v64 = v59;
        v53 = v63;
        sub_1D334BE3C(v64, v63);
        v52 = v78;
        v61(v78, v6);
        v54 = 0;
      }

      else
      {
        v53 = v20;
        (*v51)(v52, v6);
        v54 = 1;
        v55 = v50;
        v56 = v86;
      }

      (*v83)(v56, v54, 1, v85);
      sub_1D331E880(v56, &unk_1EC760EE0, &qword_1D33E4CE0);
      v49 += v55;
      --v48;
      v50 = v55;
      v20 = v53;
      if (!v48)
      {
        break;
      }

      v84(v52, v49, v6);
    }
  }

  v65 = v20[2];
  if (v65)
  {
    v66 = sub_1D33D2B88(v20[2], 0);
    v67 = sub_1D33D388C(&v87, v66 + ((*(v82 + 80) + 32) & ~*(v82 + 80)), v65, v20);
    v68 = v87;

    sub_1D331FEEC(v68);
    if (v67 != v65)
    {
      goto LABEL_41;
    }
  }

  else
  {

    v66 = MEMORY[0x1E69E7CC0];
  }

  *v70[0] = v66;
  return result;
}

Swift::Void __swiftcall VideoMessageInboxController.deleteAll()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  if (qword_1EC760988 != -1)
  {
    swift_once();
  }

  v5 = sub_1D33DE464();
  __swift_project_value_buffer(v5, qword_1EC762118);
  v6 = sub_1D33DE444();
  v7 = sub_1D33DEAF4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D331A000, v6, v7, "Attempt to delete all messages.", v8, 2u);
    MEMORY[0x1D38B81C0](v8, -1, -1);
  }

  sub_1D33DE984();
  v9 = sub_1D33DE9B4();
  (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v1;

  sub_1D333DD88(0, 0, v4, &unk_1D33E16D0, v10);
}

uint64_t sub_1D3347390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = sub_1D33DE2F4();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3347450, 0, 0);
}

uint64_t sub_1D3347450()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  swift_getKeyPath();
  v0[5] = v4;
  sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController, &protocol conformance descriptor for VideoMessageInboxController);
  sub_1D33DDED4();

  v5 = (v4 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageStoreController);
  swift_beginAccess();
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  (*(v2 + 104))(v1, *MEMORY[0x1E699BFE0], v3);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_1D33475D0;
  v7 = v0[10];

  return MEMORY[0x1EEE03C08](v7);
}

uint64_t sub_1D33475D0()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1D334785C;
  }

  else
  {
    v5 = sub_1D3347740;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D3347740()
{
  if (qword_1EC760988 != -1)
  {
    swift_once();
  }

  v1 = sub_1D33DE464();
  __swift_project_value_buffer(v1, qword_1EC762118);
  v2 = sub_1D33DE444();
  v3 = sub_1D33DEAF4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D331A000, v2, v3, "Successfully deleted all messages.", v4, 2u);
    MEMORY[0x1D38B81C0](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D334785C()
{
  v17 = v0;
  if (qword_1EC760988 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = sub_1D33DE464();
  __swift_project_value_buffer(v2, qword_1EC762118);
  v3 = v1;
  v4 = sub_1D33DE444();
  v5 = sub_1D33DEAD4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v0[6] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
    v11 = sub_1D33DE804();
    v13 = sub_1D3328B48(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1D331A000, v4, v5, "Failed to delete all messages error %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1D38B81C0](v9, -1, -1);
    MEMORY[0x1D38B81C0](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

void sub_1D3347A34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v134 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v139 = &v128 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v133 = &v128 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v132 = &v128 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v128 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v140 = &v128 - v14;
  v15 = sub_1D33DDDB4();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v138 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v137 = &v128 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v143 = &v128 - v21;
  v22 = type metadata accessor for RecentsItem(0) - 8;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v144 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v147 = &v128 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v148 = (&v128 - v28);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v128 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v146 = (&v128 - v33);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v136 = &v128 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v128 - v37;
  v39 = *(a1 + 16);
  v149 = v15;
  v145 = v16;
  v131 = v36;
  v129 = v39;
  v128 = a1;
  if (v39)
  {
    v40 = a1 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
    v41 = *(v36 + 72);
    v42 = (v16 + 56);
    v141 = (v16 + 32);
    v142 = (v16 + 48);
    v43 = MEMORY[0x1E69E7CC0];
    v44 = v140;
    v135 = v42;
    while (1)
    {
      sub_1D332A828(v40, v38);
      v45 = v38[32];
      v46 = 1;
      if (v45 <= 8)
      {
        if (((1 << v45) & 0x1B0) != 0)
        {
          goto LABEL_12;
        }

        v47 = *(v38 + 1);
        if (v45 == 3 || v45 == 6)
        {
          goto LABEL_11;
        }
      }

      if (v45 >= 2)
      {
        v47 = *v38;
LABEL_11:
        v48 = v47;
        sub_1D33DE0B4();

        v44 = v140;
        v46 = 0;
      }

LABEL_12:
      (*v42)(v13, v46, 1, v15);
      sub_1D332FEC4(v13, v44);
      sub_1D332B2E8(v38);
      if ((*v142)(v44, 1, v15) == 1)
      {
        sub_1D331E880(v44, &qword_1EC7612B0, qword_1D33E2830);
      }

      else
      {
        v49 = v41;
        v50 = v13;
        v51 = v31;
        v52 = *v141;
        (*v141)(v143, v44, v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_1D3338090(0, v43[2] + 1, 1, v43);
        }

        v54 = v43[2];
        v53 = v43[3];
        if (v54 >= v53 >> 1)
        {
          v43 = sub_1D3338090((v53 > 1), v54 + 1, 1, v43);
        }

        v43[2] = v54 + 1;
        v55 = v43 + ((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v54;
        v15 = v149;
        v52(v55, v143, v149);
        v31 = v51;
        v13 = v50;
        v44 = v140;
        v41 = v49;
        v42 = v135;
      }

      v40 += v41;
      if (!--v39)
      {
        goto LABEL_19;
      }
    }
  }

  v43 = MEMORY[0x1E69E7CC0];
LABEL_19:
  if (!v43[2])
  {

    return;
  }

  v56 = *(v130 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_loadingStateSubject);
  LOBYTE(v150) = 1;
  v142 = v56;
  sub_1D33DE4E4();
  sub_1D3336A64(v43);

  v57 = v129;
  if (v129)
  {
    v58 = (*(v131 + 80) + 32) & ~*(v131 + 80);
    v59 = *(v131 + 72);
    v60 = v128 + v58;
    v61 = MEMORY[0x1E69E7CC0];
    v62 = v136;
    while (1)
    {
      sub_1D332A828(v60, v62);
      v63 = *(v62 + 32);
      if (v63 > 8)
      {
        goto LABEL_29;
      }

      if (((1 << v63) & 0x1B0) != 0)
      {
        goto LABEL_39;
      }

      v64 = *(v62 + 8);
      if (v63 != 3 && v63 != 6)
      {
LABEL_29:
        if (v63 < 2)
        {
          goto LABEL_39;
        }

        v64 = *v62;
      }

      v65 = v64;
      sub_1D33DE0D4();

      v62 = v136;
      v66 = sub_1D33DE304();
      if (v66 != sub_1D33DE304())
      {
LABEL_39:
        sub_1D33302BC(v62, v31);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v150 = v61;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D3330B0C(0, *(v61 + 16) + 1, 1);
          v62 = v136;
          v61 = v150;
        }

        v73 = *(v61 + 16);
        v72 = *(v61 + 24);
        if (v73 >= v72 >> 1)
        {
          sub_1D3330B0C((v72 > 1), v73 + 1, 1);
          v62 = v136;
          v61 = v150;
        }

        *(v61 + 16) = v73 + 1;
        sub_1D33302BC(v31, v61 + v58 + v73 * v59);
        goto LABEL_24;
      }

      v67 = *(v62 + 32);
      if (v67 > 8)
      {
        goto LABEL_22;
      }

      if (((1 << v67) & 0x1B0) != 0)
      {
        goto LABEL_23;
      }

      v68 = *(v62 + 8);
      if (v67 != 3 && v67 != 6)
      {
LABEL_22:
        if (v67 < 2)
        {
          goto LABEL_23;
        }

        v68 = *v62;
      }

      v69 = v68;
      sub_1D33DE0F4();

      v62 = v136;
      v70 = sub_1D33DE1F4();
      if (v70 == sub_1D33DE1F4())
      {
        goto LABEL_39;
      }

LABEL_23:
      sub_1D332B2E8(v62);
LABEL_24:
      v60 += v59;
      if (!--v57)
      {
        goto LABEL_46;
      }
    }
  }

  v61 = MEMORY[0x1E69E7CC0];
LABEL_46:
  v74 = *(v61 + 16);
  if (v74)
  {
    v75 = v132;
    v76 = v61 + ((*(v131 + 80) + 32) & ~*(v131 + 80));
    v77 = *(v131 + 72);
    v78 = (v145 + 56);
    v79 = (v145 + 48);
    v80 = (v145 + 32);
    v143 = MEMORY[0x1E69E7CC0];
    v81 = v133;
    while (1)
    {
      v82 = v146;
      sub_1D332A828(v76, v146);
      v83 = *(v82 + 32);
      v84 = 1;
      if (v83 <= 8)
      {
        if (((1 << v83) & 0x1B0) != 0)
        {
          goto LABEL_57;
        }

        v85 = v146[1];
        if (v83 == 3 || v83 == 6)
        {
          goto LABEL_56;
        }
      }

      if (v83 >= 2)
      {
        v85 = *v82;
LABEL_56:
        v86 = v85;
        sub_1D33DE0B4();

        v84 = 0;
      }

LABEL_57:
      v87 = v149;
      (*v78)(v81, v84, 1, v149);
      sub_1D332FEC4(v81, v75);
      sub_1D332B2E8(v146);
      if ((*v79)(v75, 1, v87) == 1)
      {
        sub_1D331E880(v75, &qword_1EC7612B0, qword_1D33E2830);
      }

      else
      {
        v88 = v75;
        v89 = *v80;
        (*v80)(v137, v88, v87);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v143 = sub_1D3338090(0, *(v143 + 2) + 1, 1, v143);
        }

        v91 = *(v143 + 2);
        v90 = *(v143 + 3);
        if (v91 >= v90 >> 1)
        {
          v143 = sub_1D3338090((v90 > 1), v91 + 1, 1, v143);
        }

        v92 = v143;
        *(v143 + 2) = v91 + 1;
        v89(&v92[((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v91], v137, v149);
        v75 = v132;
        v81 = v133;
      }

      v76 += v77;
      if (!--v74)
      {

        goto LABEL_65;
      }
    }
  }

  v143 = MEMORY[0x1E69E7CC0];
LABEL_65:
  v93 = v134;
  v94 = v129;
  if (v129)
  {
    v95 = (*(v131 + 80) + 32) & ~*(v131 + 80);
    v96 = v128 + v95;
    v97 = *(v131 + 72);
    v98 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v99 = v148;
      sub_1D332A828(v96, v148);
      v100 = *(v99 + 32);
      if (v100 > 8)
      {
        goto LABEL_73;
      }

      if (((1 << v100) & 0x1B0) != 0)
      {
        goto LABEL_76;
      }

      v101 = v148[1];
      if (v100 != 3 && v100 != 6)
      {
LABEL_73:
        if (v100 < 2)
        {
          goto LABEL_76;
        }

        v101 = *v99;
      }

      v102 = v101;
      sub_1D33DE0F4();

      LODWORD(v102) = sub_1D33DE1F4();
      if (v102 != sub_1D33DE1F4())
      {
LABEL_76:
        sub_1D33302BC(v148, v144);
        v103 = swift_isUniquelyReferenced_nonNull_native();
        v150 = v98;
        if ((v103 & 1) == 0)
        {
          sub_1D3330B0C(0, *(v98 + 16) + 1, 1);
          v98 = v150;
        }

        v105 = *(v98 + 16);
        v104 = *(v98 + 24);
        if (v105 >= v104 >> 1)
        {
          sub_1D3330B0C((v104 > 1), v105 + 1, 1);
          v98 = v150;
        }

        *(v98 + 16) = v105 + 1;
        sub_1D33302BC(v144, v98 + v95 + v105 * v97);
        goto LABEL_68;
      }

      sub_1D332B2E8(v148);
LABEL_68:
      v96 += v97;
      if (!--v94)
      {
        goto LABEL_82;
      }
    }
  }

  v98 = MEMORY[0x1E69E7CC0];
LABEL_82:
  v106 = *(v98 + 16);
  if (!v106)
  {

    v148 = MEMORY[0x1E69E7CC0];
    goto LABEL_101;
  }

  v107 = v98 + ((*(v131 + 80) + 32) & ~*(v131 + 80));
  v108 = *(v131 + 72);
  v109 = (v145 + 56);
  v110 = (v145 + 48);
  v146 = (v145 + 32);
  v148 = MEMORY[0x1E69E7CC0];
  do
  {
    v111 = v147;
    sub_1D332A828(v107, v147);
    v112 = *(v111 + 32);
    v113 = 1;
    if (v112 > 8)
    {
      goto LABEL_90;
    }

    if (((1 << v112) & 0x1B0) != 0)
    {
      goto LABEL_93;
    }

    v114 = *(v147 + 8);
    if (v112 != 3 && v112 != 6)
    {
LABEL_90:
      if (v112 < 2)
      {
        goto LABEL_93;
      }

      v114 = *v111;
    }

    v115 = v114;
    sub_1D33DE0B4();

    v113 = 0;
LABEL_93:
    v116 = v149;
    (*v109)(v93, v113, 1, v149);
    v117 = v139;
    sub_1D332FEC4(v93, v139);
    sub_1D332B2E8(v147);
    if ((*v110)(v117, 1, v116) == 1)
    {
      sub_1D331E880(v117, &qword_1EC7612B0, qword_1D33E2830);
    }

    else
    {
      v118 = v109;
      v119 = v108;
      v120 = *v146;
      (*v146)(v138, v117, v116);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v148 = sub_1D3338090(0, v148[2] + 1, 1, v148);
      }

      v122 = v148[2];
      v121 = v148[3];
      if (v122 >= v121 >> 1)
      {
        v148 = sub_1D3338090((v121 > 1), v122 + 1, 1, v148);
      }

      v124 = v148;
      v123 = v149;
      v148[2] = (v122 + 1);
      v120(v124 + ((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v122, v138, v123);
      v93 = v134;
      v108 = v119;
      v109 = v118;
    }

    v107 += v108;
    --v106;
  }

  while (v106);

LABEL_101:
  v125 = v130 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
  os_unfair_lock_lock((v130 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state));
  v126 = *(v125 + 16);
  if (v126)
  {
    v127 = *(v125 + 24);

    os_unfair_lock_unlock(v125);
    v126(v143);
    sub_1D331EEDC(v126, v127);

    sub_1D333EBC0(v148);

    LOBYTE(v150) = 2;
    sub_1D33DE4E4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D3348804(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v78 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v77 = &v73 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v73 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v73 - v10;
  v12 = sub_1D33DDDB4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v81 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v84 = &v73 - v16;
  v17 = type metadata accessor for RecentsItem(0) - 8;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v85 = (&v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1EEE9AC00](v18);
  v86 = &v73 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v87 = &v73 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v73 - v25;
  v27 = *(a1 + 16);
  v88 = v12;
  v82 = v13;
  v74 = v27;
  v75 = v24;
  v73 = a1;
  if (v27)
  {
    v28 = a1 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v29 = *(v24 + 72);
    v30 = (v13 + 56);
    v31 = (v13 + 48);
    v83 = (v13 + 32);
    v32 = MEMORY[0x1E69E7CC0];
    v79 = v31;
    v80 = v30;
    while (1)
    {
      sub_1D332A828(v28, v26);
      v33 = v26[32];
      v34 = 1;
      if (v33 <= 8)
      {
        if (((1 << v33) & 0x1B0) != 0)
        {
          goto LABEL_12;
        }

        v35 = *(v26 + 1);
        if (v33 == 3 || v33 == 6)
        {
          goto LABEL_11;
        }
      }

      if (v33 >= 2)
      {
        v35 = *v26;
LABEL_11:
        v36 = v35;
        sub_1D33DE0B4();

        v12 = v88;
        v34 = 0;
      }

LABEL_12:
      (*v30)(v9, v34, 1, v12);
      sub_1D332FEC4(v9, v11);
      sub_1D332B2E8(v26);
      if ((*v31)(v11, 1, v12) == 1)
      {
        sub_1D331E880(v11, &qword_1EC7612B0, qword_1D33E2830);
      }

      else
      {
        v37 = v29;
        v38 = v9;
        v39 = *v83;
        (*v83)(v84, v11, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_1D3338090(0, *(v32 + 2) + 1, 1, v32);
        }

        v41 = *(v32 + 2);
        v40 = *(v32 + 3);
        if (v41 >= v40 >> 1)
        {
          v32 = sub_1D3338090((v40 > 1), v41 + 1, 1, v32);
        }

        *(v32 + 2) = v41 + 1;
        v12 = v88;
        v39(&v32[((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v41], v84, v88);
        v9 = v38;
        v29 = v37;
        v31 = v79;
        v30 = v80;
      }

      v28 += v29;
      if (!--v27)
      {
        goto LABEL_19;
      }
    }
  }

  v32 = MEMORY[0x1E69E7CC0];
LABEL_19:
  if (!*(v32 + 2))
  {
  }

  v42 = *(v76 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_loadingStateSubject);
  v91[0] = 1;
  v84 = v42;
  sub_1D33DE4E4();
  sub_1D3336A64(v32);

  v43 = v74;
  if (v74)
  {
    v44 = (*(v75 + 80) + 32) & ~*(v75 + 80);
    v45 = v73 + v44;
    v46 = *(v75 + 72);
    v47 = MEMORY[0x1E69E7CC0];
    v48 = v88;
    while (1)
    {
      v49 = v87;
      sub_1D332A828(v45, v87);
      v50 = *(v49 + 32);
      if (v50 > 8)
      {
        goto LABEL_28;
      }

      if (((1 << v50) & 0x1B0) != 0)
      {
        goto LABEL_31;
      }

      v51 = *(v87 + 8);
      if (v50 != 3 && v50 != 6)
      {
LABEL_28:
        if (v50 < 2)
        {
          goto LABEL_31;
        }

        v51 = *v49;
      }

      v52 = v51;
      sub_1D33DE0D4();

      LODWORD(v52) = sub_1D33DE304();
      v53 = v52 == sub_1D33DE304();
      v48 = v88;
      if (!v53)
      {
LABEL_31:
        sub_1D33302BC(v87, v85);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v90 = v47;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D3330B0C(0, *(v47 + 16) + 1, 1);
          v48 = v88;
          v47 = v90;
        }

        v56 = *(v47 + 16);
        v55 = *(v47 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_1D3330B0C((v55 > 1), v56 + 1, 1);
          v48 = v88;
          v47 = v90;
        }

        *(v47 + 16) = v56 + 1;
        sub_1D33302BC(v85, v47 + v44 + v56 * v46);
        goto LABEL_23;
      }

      sub_1D332B2E8(v87);
LABEL_23:
      v45 += v46;
      if (!--v43)
      {
        goto LABEL_38;
      }
    }
  }

  v47 = MEMORY[0x1E69E7CC0];
  v48 = v88;
LABEL_38:
  v58 = *(v47 + 16);
  if (v58)
  {
    v59 = v47 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
    v87 = *(v75 + 72);
    v60 = (v82 + 56);
    v61 = (v82 + 48);
    v85 = (v82 + 32);
    v62 = MEMORY[0x1E69E7CC0];
    v64 = v77;
    v63 = v78;
    while (1)
    {
      v65 = v86;
      sub_1D332A828(v59, v86);
      v66 = *(v65 + 32);
      v67 = 1;
      if (v66 <= 8)
      {
        if (((1 << v66) & 0x1B0) != 0)
        {
          goto LABEL_49;
        }

        v68 = *(v86 + 8);
        if (v66 == 3 || v66 == 6)
        {
          goto LABEL_48;
        }
      }

      if (v66 >= 2)
      {
        v68 = *v65;
LABEL_48:
        v69 = v68;
        sub_1D33DE0B4();

        v48 = v88;
        v67 = 0;
      }

LABEL_49:
      (*v60)(v63, v67, 1, v48);
      sub_1D332FEC4(v63, v64);
      sub_1D332B2E8(v86);
      if ((*v61)(v64, 1, v48) == 1)
      {
        sub_1D331E880(v64, &qword_1EC7612B0, qword_1D33E2830);
      }

      else
      {
        v70 = *v85;
        (*v85)(v81, v64, v48);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = sub_1D3338090(0, *(v62 + 2) + 1, 1, v62);
        }

        v72 = *(v62 + 2);
        v71 = *(v62 + 3);
        if (v72 >= v71 >> 1)
        {
          v62 = sub_1D3338090((v71 > 1), v72 + 1, 1, v62);
        }

        *(v62 + 2) = v72 + 1;
        v48 = v88;
        v70(&v62[((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v72], v81, v88);
        v64 = v77;
        v63 = v78;
      }

      v59 += v87;
      if (!--v58)
      {

        goto LABEL_57;
      }
    }
  }

  v62 = MEMORY[0x1E69E7CC0];
LABEL_57:
  sub_1D333F798(v62);

  v89 = 2;
  return sub_1D33DE4E4();
}

uint64_t sub_1D3349074(uint64_t a1, uint64_t a2)
{
  v63 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v59 = &v55 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v57 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v62 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v55 - v9;
  v58 = v11;
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v55 - v12;
  v13 = sub_1D33DDDB4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v69 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RecentsItem(0) - 8;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v61 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v55 - v20;
  v22 = *(a2 + 16);
  v55 = v19;
  v56 = a2;
  if (v22)
  {
    v23 = a2 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v24 = *(v19 + 72);
    v25 = (v14 + 56);
    v65 = v14;
    v67 = (v14 + 32);
    v68 = (v14 + 48);
    v26 = MEMORY[0x1E69E7CC0];
    v27 = v22;
    v28 = v66;
    v64 = v25;
    while (1)
    {
      sub_1D332A828(v23, v21);
      v29 = v21[32];
      v30 = 1;
      if (v29 <= 8)
      {
        if (((1 << v29) & 0x1B0) != 0)
        {
          goto LABEL_12;
        }

        v31 = *(v21 + 1);
        if (v29 == 3 || v29 == 6)
        {
          goto LABEL_11;
        }
      }

      if (v29 >= 2)
      {
        v31 = *v21;
LABEL_11:
        v32 = v26;
        v33 = v31;
        sub_1D33DE0B4();

        v26 = v32;
        v28 = v66;
        v30 = 0;
      }

LABEL_12:
      (*v25)(v10, v30, 1, v13);
      sub_1D332FEC4(v10, v28);
      sub_1D332B2E8(v21);
      if ((*v68)(v28, 1, v13) == 1)
      {
        sub_1D331E880(v28, &qword_1EC7612B0, qword_1D33E2830);
      }

      else
      {
        v34 = v24;
        v35 = v10;
        v36 = *v67;
        (*v67)(v69, v28, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1D3338090(0, v26[2] + 1, 1, v26);
        }

        v38 = v26[2];
        v37 = v26[3];
        v39 = v26;
        if (v38 >= v37 >> 1)
        {
          v39 = sub_1D3338090((v37 > 1), v38 + 1, 1, v26);
        }

        v39[2] = v38 + 1;
        v26 = v39;
        v36(v39 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v38, v69, v13);
        v10 = v35;
        v24 = v34;
        v28 = v66;
        v25 = v64;
      }

      v23 += v24;
      if (!--v27)
      {
        goto LABEL_19;
      }
    }
  }

  v26 = MEMORY[0x1E69E7CC0];
LABEL_19:
  if (!v26[2])
  {
  }

  v69 = v26;
  v40 = v60;
  v41 = *(v60 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_loadingStateSubject);
  v71 = 1;
  v68 = v41;
  sub_1D33DE4E4();
  v42 = v61;
  if (v22)
  {
    v43 = v56 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
    v44 = *(v55 + 72);
    do
    {
      sub_1D332A828(v43, v42);
      v46 = *(v42 + 32);
      if (v46 > 8)
      {
        goto LABEL_28;
      }

      if (((1 << v46) & 0x1B0) != 0)
      {
        goto LABEL_23;
      }

      v47 = *(v42 + 8);
      if (v46 != 3 && v46 != 6)
      {
LABEL_28:
        if (v46 < 2)
        {
          goto LABEL_23;
        }

        v47 = *v42;
      }

      v45 = v47;
      sub_1D331E818(v63, v62, &qword_1EC7612B0, qword_1D33E2830);
      v42 = v61;
      sub_1D33DE114();

LABEL_23:
      sub_1D332B2E8(v42);
      v43 += v44;
      --v22;
    }

    while (v22);
  }

  v48 = v59;
  sub_1D33DE984();
  v49 = sub_1D33DE9B4();
  (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
  v50 = v62;
  sub_1D331E818(v63, v62, &qword_1EC7612B0, qword_1D33E2830);
  v51 = (*(v57 + 80) + 40) & ~*(v57 + 80);
  v52 = (v58 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  v53[2] = 0;
  v53[3] = 0;
  v53[4] = v69;
  sub_1D332FEC4(v50, v53 + v51);
  *(v53 + v52) = v40;

  sub_1D333DD88(0, 0, v48, &unk_1D33E1A80, v53);

  v70 = 2;
  return sub_1D33DE4E4();
}

uint64_t sub_1D3349710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v6[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D33497C0, 0, 0);
}

uint64_t sub_1D33497C0()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  v5 = sub_1D3342DFC(sub_1D334CAE4, v4, v3);
  v0[13] = v5;

  swift_getKeyPath();
  v0[5] = v2;
  sub_1D331FE94(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController, &protocol conformance descriptor for VideoMessageInboxController);
  sub_1D33DDED4();

  v6 = (v2 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageStoreController);
  swift_beginAccess();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1D3349950;

  return MEMORY[0x1EEE03C18](v5);
}

uint64_t sub_1D3349950()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1D3349D0C;
  }

  else
  {
    v2 = sub_1D3349A84;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D3349A84()
{
  v23 = v0;
  if (qword_1EC760988 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[8];
  v3 = sub_1D33DE464();
  __swift_project_value_buffer(v3, qword_1EC762118);
  sub_1D331E818(v2, v1, &qword_1EC7612B0, qword_1D33E2830);

  v4 = sub_1D33DE444();
  v5 = sub_1D33DEAF4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  if (v6)
  {
    v8 = v0[11];
    v21 = v0[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315394;
    sub_1D331E818(v7, v8, &qword_1EC7612B0, qword_1D33E2830);
    v11 = sub_1D33DE7E4();
    v13 = v12;
    sub_1D331E880(v7, &qword_1EC7612B0, qword_1D33E2830);
    v14 = sub_1D3328B48(v11, v13, &v22);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    v15 = sub_1D33DDDB4();
    v16 = MEMORY[0x1D38B6F50](v21, v15);
    v18 = sub_1D3328B48(v16, v17, &v22);

    *(v9 + 14) = v18;
    _os_log_impl(&dword_1D331A000, v4, v5, "Updated reminderUUID: %s for messages %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B81C0](v10, -1, -1);
    MEMORY[0x1D38B81C0](v9, -1, -1);
  }

  else
  {

    sub_1D331E880(v7, &qword_1EC7612B0, qword_1D33E2830);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_1D3349D0C()
{
  v17 = v0;
  if (qword_1EC760988 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_1D33DE464();
  __swift_project_value_buffer(v2, qword_1EC762118);
  v3 = v1;
  v4 = sub_1D33DE444();
  v5 = sub_1D33DEAD4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[15];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v0[6] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
    v11 = sub_1D33DE804();
    v13 = sub_1D3328B48(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1D331A000, v4, v5, "Updating reminderUUID failed: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1D38B81C0](v9, -1, -1);
    MEMORY[0x1D38B81C0](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1D3349EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v32 = a3;
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760D98, &qword_1D33E1A88);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v30 = &v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EA0, &qword_1D33E2210);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v30 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v30 - v19;
  v21 = sub_1D33DDDB4();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  (*(v22 + 16))(&v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v21);
  v24 = *(v22 + 56);
  v24(v20, 1, 1, v21);
  v24(v18, 1, 1, v21);
  v25 = sub_1D33DDC44();
  (*(*(v25 - 8) + 56))(v11, 1, 1, v25);
  v26 = sub_1D33DDD34();
  (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
  v27 = sub_1D33DE324();
  (*(*(v27 - 8) + 56))(v30, 1, 1, v27);
  sub_1D331E818(v31, v15, &qword_1EC7612B0, qword_1D33E2830);
  v28 = objc_allocWithZone(sub_1D33DE224());
  v33 = 1;
  result = sub_1D33DE204();
  *v32 = result;
  return result;
}

uint64_t sub_1D334A2FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760FD0, &qword_1D33E2240);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - v3;
  v7[1] = *(*v0 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_loadingStateSubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7619E0, &unk_1D33E1AA0);
  sub_1D334CB54(&unk_1EC760EB0, &unk_1EC7619E0, &unk_1D33E1AA0, MEMORY[0x1E695BFB0]);
  sub_1D334CB00();
  sub_1D33DE624();
  sub_1D334CB54(&unk_1EC760EC0, &unk_1EC760FD0, &qword_1D33E2240, MEMORY[0x1E695BD38]);
  v5 = sub_1D33DE5A4();
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t sub_1D334A500(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1D334A574(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1D3328B48(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

void *sub_1D334A600(uint64_t a1, unint64_t a2)
{
  v3 = sub_1D334A64C(a1, a2);
  sub_1D334A77C(&unk_1F4EE4698);
  return v3;
}

void *sub_1D334A64C(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D334A868(v5, 0);
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

  result = sub_1D33DEF64();
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
        v10 = sub_1D33DE864();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D334A868(v10, 0);
        result = sub_1D33DEF14();
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

uint64_t sub_1D334A77C(uint64_t result)
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

  result = sub_1D334A8DC(result, v11, 1, v3);
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

void *sub_1D334A868(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DE8, &qword_1D33E1B98);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1D334A8DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DE8, &qword_1D33E1B98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

_BYTE **sub_1D334A9D0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

char *sub_1D334A9E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D334B4EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1D334AA60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D334D4B4;

  return sub_1D3347390(a1, v4, v5, v6);
}

uint64_t sub_1D334AB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D334D4BC;

  return v9(a1, a2, a3);
}

uint64_t sub_1D334AC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D334D4B4;

  return v9(a1, a2, a3);
}

uint64_t sub_1D334AD64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D334D4B4;

  return v9(a1, a2, a3);
}

uint64_t sub_1D334AE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D334AFB4;

  return v9(a1, a2, a3);
}

uint64_t sub_1D334AFB4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void sub_1D334B194(uint64_t a1)
{
  if (!qword_1EC760D68)
  {
    sub_1D33DE2F4();
    v1 = sub_1D33DDF94();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC760D68);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_Say10Foundation4UUIDVGIegg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D334B204(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1D334B24C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D334B2A4()
{
  result = qword_1EC760D78;
  if (!qword_1EC760D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC760D78);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *sub_1D334B384(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D334B974(a1, a2, a3, *v3, &qword_1EC760D90, &qword_1D33E19E8, &qword_1EC7612B0, qword_1D33E2830);
  *v3 = result;
  return result;
}

void *sub_1D334B3C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D334B678(a1, a2, a3, *v3, &unk_1EC7610A0, &qword_1D33E1B90, MEMORY[0x1E69695A8]);
  *v3 = result;
  return result;
}

void *sub_1D334B408(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D334B678(a1, a2, a3, *v3, &qword_1EC760DA0, &qword_1D33E1AB8, MEMORY[0x1E696EDC8]);
  *v3 = result;
  return result;
}

char *sub_1D334B44C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D334B854(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D334B46C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D334B974(a1, a2, a3, *v3, &qword_1EC760DC0, &qword_1D33E1B48, &qword_1EC760DC8, &qword_1D33E1B50);
  *v3 = result;
  return result;
}

void *sub_1D334B4AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D334B974(a1, a2, a3, *v3, &qword_1EC760DB8, &qword_1D33E1B08, &qword_1EC761450, &qword_1D33E1B10);
  *v3 = result;
  return result;
}

char *sub_1D334B4EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761040, &qword_1D33E1B40);
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

void *sub_1D334B678(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
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