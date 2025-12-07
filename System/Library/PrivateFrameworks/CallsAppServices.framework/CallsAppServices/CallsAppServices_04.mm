uint64_t sub_1D33743D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1D33DF1B4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

char *sub_1D3374460(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761568, &qword_1D33E2CC8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v60 = &v57 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761560, &qword_1D33E2CC0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v57 - v8;
  v9 = type metadata accessor for RecentsItem(0);
  v68 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D33DEE14())
  {
    v59 = v7;
    v62 = v6;
    v69 = v2;
    v71 = a1;
    if (!i)
    {
      break;
    }

    v13 = 0;
    v63 = OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_recentsController;
    v66 = a1 & 0xFFFFFFFFFFFFFF8;
    v67 = a1 & 0xC000000000000001;
    v14 = MEMORY[0x1E69E7CC0];
    v64 = i;
    v65 = v11;
    while (1)
    {
      if (v67)
      {
        v15 = MEMORY[0x1D38B75D0](v13, a1);
      }

      else
      {
        if (v13 >= *(v66 + 16))
        {
          goto LABEL_48;
        }

        v15 = *(a1 + 8 * v13 + 32);
      }

      a1 = v15;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v17 = *(v2 + v63);
      v18 = [v17 itemForRecentCall_];
      if (qword_1EDEBFC30 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761150, &qword_1D33E2530);
      v19 = sub_1D33DE8A4();
      v20 = [v17 contactByHandleForRecentCall:a1 keyDescriptors:v19];

      if (v20)
      {
        sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
        sub_1D331DA18(0, &qword_1EDEBFD50, 0x1E695CD58);
        sub_1D331F514();
        v21 = sub_1D33DE6F4();
      }

      else
      {
        v21 = sub_1D3320188(MEMORY[0x1E69E7CC0]);
      }

      v22 = [a1 validRemoteParticipantHandles];
      if (v22)
      {
        v23 = v22;
        sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
        sub_1D331F514();
        v24 = sub_1D33DEA54();

        v25 = a1;
        v26 = v17;
        v70 = a1;
        v27 = v18;
        v28 = v26;
        v29 = sub_1D336C398(v24, v21, v25);

        swift_bridgeObjectRelease_n();

        v18 = v27;
        v16 = v13 + 1;
        a1 = v70;
      }

      else
      {

        v29 = MEMORY[0x1E69E7CC0];
      }

      v11 = v65;
      RecentsItem.init(from:recentsItem:contacts:)(a1, v18, v29, v65);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v64;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_1D33226AC(0, v14[2] + 1, 1, v14);
      }

      v2 = v69;
      a1 = v71;
      v7 = v14[2];
      v32 = v14[3];
      v6 = v7 + 1;
      if (v7 >= v32 >> 1)
      {
        v14 = sub_1D33226AC((v32 > 1), v7 + 1, 1, v14);
      }

      v14[2] = v6;
      sub_1D33302BC(v11, v14 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v7);
      ++v13;
      if (v16 == v31)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_25:
  v33 = OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_results;
  swift_beginAccess();
  *(v2 + v33) = v14;

  if (v61)
  {
    v34 = sub_1D33DEE14();
  }

  else
  {
    v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = v62;
  v36 = MEMORY[0x1E69E7CC0];
  if (v34)
  {
    v72[0] = MEMORY[0x1E69E7CC0];
    result = sub_1D334A9E0(0, v34 & ~(v34 >> 63), 0);
    if (v34 < 0)
    {
      __break(1u);
      return result;
    }

    v38 = 0;
    v36 = v72[0];
    v39 = a1 & 0xC000000000000001;
    do
    {
      if (v39)
      {
        v40 = MEMORY[0x1D38B75D0](v38, a1);
      }

      else
      {
        v40 = *(a1 + 8 * v38 + 32);
      }

      v41 = v40;
      v42 = [v40 uniqueId];
      v43 = sub_1D33DE7B4();
      v45 = v44;

      v72[0] = v36;
      v47 = *(v36 + 16);
      v46 = *(v36 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_1D334A9E0((v46 > 1), v47 + 1, 1);
        v36 = v72[0];
      }

      ++v38;
      *(v36 + 16) = v47 + 1;
      v48 = v36 + 16 * v47;
      *(v48 + 32) = v43;
      *(v48 + 40) = v45;
      a1 = v71;
    }

    while (v34 != v38);
    v2 = v69;
    v35 = v62;
  }

  *(v2 + OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_resultIDs) = v36;

  v49 = sub_1D33DE444();
  v50 = sub_1D33DEAF4();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 134217984;
    if (v61)
    {
      v52 = sub_1D33DEE14();
    }

    else
    {
      v52 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v51 + 4) = v52;

    _os_log_impl(&dword_1D331A000, v49, v50, "CallsSearchController: Fetched calls. Found %ld calls", v51, 0xCu);
    MEMORY[0x1D38B81C0](v51, -1, -1);

    v35 = v62;
  }

  else
  {
  }

  v53 = OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_recentsUpdatedContinuation;
  swift_beginAccess();
  v54 = v59;
  if (!(*(v59 + 48))(v2 + v53, 1, v35))
  {
    v55 = v58;
    (*(v54 + 16))(v58, v2 + v53, v35);
    sub_1D33DE934();
    (*(v54 + 8))(v55, v35);
  }

  v56 = v60;
  (*(v54 + 56))(v60, 1, 1, v35);
  swift_beginAccess();
  sub_1D3375E04(v56, v2 + v53);
  return swift_endAccess();
}

id CallsSearchManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CallsSearchManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D3374EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D334CF9C;

  return CallsSearchManager.search(with:searchTokens:)(a1, a2, a3);
}

uint64_t _s16CallsAppServices0A13SearchManagerC17recentsController_19didCompleteFetchingySo09PKRecentsG0C_SaySo12CHRecentCallCGtF_0(void *a1)
{
  v1 = [a1 recentCalls];
  if (v1)
  {
    v2 = v1;
    sub_1D331DA18(0, &unk_1EDEBEF10, 0x1E6993590);
    v3 = sub_1D33DE8B4();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  sub_1D3374460(v3);
}

uint64_t CallsSearchManager.recentsController(_:didChangeUnreadCallCount:)(void *a1)
{
  v1 = [a1 recentCalls];
  if (v1)
  {
    v2 = v1;
    sub_1D331DA18(0, &unk_1EDEBEF10, 0x1E6993590);
    v3 = sub_1D33DE8B4();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  sub_1D3374460(v3);
}

uint64_t sub_1D3375168@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1D3375198(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D33A93EC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1D3375438(v5);
  *a1 = v2;
  return result;
}

uint64_t type metadata accessor for CallsSearchManager(uint64_t a1)
{
  result = qword_1EC761548;
  if (!qword_1EC761548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D3375258(uint64_t a1)
{
  sub_1D33DE464();
  if (v1 <= 0x3F)
  {
    sub_1D337536C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D337536C(uint64_t a1)
{
  if (!qword_1EC761558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC761560, &qword_1D33E2CC0);
    v1 = sub_1D33DECF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC761558);
    }
  }
}

uint64_t sub_1D33753D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761568, &qword_1D33E2CC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D3375438(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D33DF164();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D33DE8E4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D3375600(v7, v8, a1, v4);
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
    return sub_1D3375530(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D3375530(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_1D33DF1B4(), (result & 1) == 0))
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

uint64_t sub_1D3375600(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
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
      result = sub_1D33A9330(v8);
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
        sub_1D3375BDC((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
  v8 = MEMORY[0x1E69E7CC0];
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
        result = sub_1D33DF1B4();
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
            result = sub_1D33DF1B4();
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
      result = sub_1D3359A14(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1D3359A14((v39 > 1), v40 + 1, 1, v8);
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
        sub_1D3375BDC((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D33A9330(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1D33A92A4(v44);
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
    if (v37 || (result = sub_1D33DF1B4(), (result & 1) == 0))
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

uint64_t sub_1D3375BDC(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_1D33DF1B4() & 1) != 0)
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
      if (!v21 && (sub_1D33DF1B4() & 1) != 0)
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

uint64_t sub_1D3375E04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761568, &qword_1D33E2CC8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D3375E8C()
{
  if (qword_1EC7609A0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D33DE464();
  __swift_project_value_buffer(v1, qword_1EC762160);
  v2 = v0;
  v3 = sub_1D33DE444();
  v4 = sub_1D33DEAF4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = sub_1D337C5A0();
    v9 = sub_1D3328B48(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1D331A000, v3, v4, "%s Cancelling current search query", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1D38B81C0](v6, -1, -1);
    MEMORY[0x1D38B81C0](v5, -1, -1);
  }

  MEMORY[0x1EEE9AC00](v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DA8, &qword_1D33E1AD0);
  sub_1D33DEBA4();
  v11 = *&v2[OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_query];
  *&v2[OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_query] = 0;

  MEMORY[0x1EEE9AC00](v12);
  sub_1D33DEBA4();
  v13 = *&v2[OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_userQuery];
  *&v2[OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_userQuery] = 0;
}

uint64_t _s16CallsAppServices12LoadingStateO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1D33DF284();
  MEMORY[0x1D38B7920](v1);
  return sub_1D33DF2C4();
}

uint64_t sub_1D3376118(uint64_t a1)
{
  v2 = *v1;
  sub_1D33DF284();
  MEMORY[0x1D38B7920](v2);
  return sub_1D33DF2C4();
}

id sub_1D3376184()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6964E70]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761040, &qword_1D33E1B40);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D33E2410;
  *(v1 + 32) = sub_1D33DE7B4();
  *(v1 + 40) = v2;
  v3 = sub_1D33DE8A4();

  [v0 setBundleIDs_];

  v4 = sub_1D33DE7B4();
  v6 = v5;
  v11 = sub_1D33DE7B4();
  v12 = v7;
  MEMORY[0x1D38B6ED0](540884256, 0xE400000000000000);
  MEMORY[0x1D38B6ED0](v4, v6);

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D33E2410;
  *(v8 + 32) = v11;
  *(v8 + 40) = v12;
  v9 = sub_1D33DE8A4();

  [v0 setFilterQueries_];

  return v0;
}

char *sub_1D3376320(int a1, void *a2)
{
  v3 = v2;
  v26 = a2;
  v25 = a1;
  v24 = sub_1D33DEB84();
  v4 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D33DEB24();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1D33DE6A4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v23 = OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_serialQueue;
  v9 = sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
  v22[1] = "search(with:searchTokens:)";
  v22[2] = v9;
  sub_1D33DE694();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1D337D8A4(&qword_1EDEBEEE0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760F10, &qword_1D33E2E40);
  sub_1D337D8EC(&qword_1EDEBEF20, &unk_1EC760F10, &qword_1D33E2E40);
  sub_1D33DED64();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8090], v24);
  *&v2[v23] = sub_1D33DEBD4();
  v10 = &v2[OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_kCSQueryFlags];
  *v10 = 1952741219;
  v10[1] = 0xE400000000000000;
  *&v2[OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_query] = 0;
  *&v2[OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_userQuery] = 0;
  v11 = OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_featureFlags;
  *&v3[v11] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v12 = OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_userQueryContext;
  *&v3[v12] = [objc_allocWithZone(MEMORY[0x1E6964ED0]) init];
  v13 = &v3[OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_text];
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_subscriptionsLabelIDByLabel;
  *&v3[v14] = sub_1D336BD10(MEMORY[0x1E69E7CC0]);
  v15 = OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_suggestion;
  *&v3[v15] = [objc_opt_self() emptySuggestion];
  v3[OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_searchItemType] = v25;
  v16 = v26;
  *&v3[OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_callProviderManager] = v26;
  v17 = type metadata accessor for SpotlightSearchDataSource();
  v27.receiver = v3;
  v27.super_class = v17;
  v18 = v16;
  v19 = objc_msgSendSuper2(&v27, sel_init);
  *&v19[OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_subscriptionsLabelIDByLabel] = sub_1D337B6C4();

  v20 = sub_1D33DEB94();
  [v18 addDelegate:v19 queue:v20];

  return v19;
}

uint64_t sub_1D337670C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = sub_1D33DE974();
  v3[7] = sub_1D33DE964();
  v5 = sub_1D33DE914();
  v3[8] = v5;
  v3[9] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D33767AC, v5, v4);
}

uint64_t sub_1D33767AC()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = sub_1D3376184();
  v5 = objc_allocWithZone(MEMORY[0x1E6964E68]);
  v6 = sub_1D33DE784();
  v7 = [v5 initWithQueryString:v6 queryContext:v4];
  v0[10] = v7;

  *(swift_task_alloc() + 16) = v1;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DA8, &qword_1D33E1AD0);
  sub_1D33DEBA4();

  v9 = *(v1 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_query);
  *(v1 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_query) = v7;

  v10 = sub_1D33DE964();
  v0[11] = v10;
  v11 = swift_task_alloc();
  v0[12] = v11;
  v11[2] = v8;
  v11[3] = v1;
  v11[4] = v3;
  v11[5] = v2;
  v12 = swift_task_alloc();
  v0[13] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B0, &qword_1D33E3DD0);
  *v12 = v0;
  v12[1] = sub_1D33769B8;
  v14 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v0 + 2, v10, v14, 0xD000000000000018, 0x80000001D33E6960, sub_1D337CFEC, v11, v13);
}

uint64_t sub_1D33769B8()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1D3376B50;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1D3376ADC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D3376ADC()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D3376B50()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D3376BD8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v44 = a3;
  v45 = a5;
  v8 = sub_1D33DE664();
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1D33DE6A4();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v47 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B8, &unk_1D33E2DE0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v43 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = MEMORY[0x1E69E7CC0];
  v58 = sub_1D337CFF8;
  v59 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v46 = &v56;
  v56 = sub_1D3377408;
  v57 = &block_descriptor_40;
  v17 = _Block_copy(&aBlock);

  [a2 setFoundItemsHandler_];
  _Block_release(v17);
  (*(v12 + 16))(v15, a1, v11);
  v18 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v19 = (v13 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  v21 = a2;
  v22 = v44;
  *(v20 + 3) = v44;
  *(v20 + 4) = a4;
  v43 = a4;
  v23 = v45;
  *(v20 + 5) = v45;
  (*(v12 + 32))(&v20[v18], v15, v11);
  *&v20[v19] = v16;
  v58 = sub_1D337D000;
  v59 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_1D3352A4C;
  v57 = &block_descriptor_46;
  v24 = _Block_copy(&aBlock);
  v46 = v16;

  v25 = v21;
  v26 = v22;

  [v25 setCompletionHandler_];
  _Block_release(v24);
  if (qword_1EC7609A0 != -1)
  {
    swift_once();
  }

  v27 = sub_1D33DE464();
  __swift_project_value_buffer(v27, qword_1EC762160);
  v28 = v26;

  v29 = sub_1D33DE444();
  v30 = sub_1D33DEAF4();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    aBlock = v32;
    *v31 = 136315394;
    v33 = sub_1D337C5A0();
    v35 = sub_1D3328B48(v33, v34, &aBlock);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_1D3328B48(v43, v23, &aBlock);
    _os_log_impl(&dword_1D331A000, v29, v30, "%s Beginning search query for queryString %s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B81C0](v32, -1, -1);
    MEMORY[0x1D38B81C0](v31, -1, -1);
  }

  v36 = swift_allocObject();
  *(v36 + 16) = v25;
  v58 = sub_1D337DB1C;
  v59 = v36;
  aBlock = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_1D3329468;
  v57 = &block_descriptor_52;
  v37 = _Block_copy(&aBlock);
  v38 = v25;
  v39 = v47;
  sub_1D33DE674();
  v53 = MEMORY[0x1E69E7CC0];
  sub_1D337D8A4(&unk_1EDEBEF50, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761680, &unk_1D33E29E0);
  sub_1D337D8EC(&qword_1EDEBEF30, &unk_1EC761680, &unk_1D33E29E0);
  v40 = v49;
  v41 = v52;
  sub_1D33DED64();
  MEMORY[0x1D38B7240](0, v39, v40, v37);
  _Block_release(v37);
  (*(v51 + 8))(v40, v41);
  (*(v48 + 8))(v39, v50);
}

char *sub_1D337728C(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = sub_1D33DEE14();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
LABEL_12:
    swift_beginAccess();
    sub_1D33CC9C8(v5);
    return swift_endAccess();
  }

  v18 = MEMORY[0x1E69E7CC0];
  result = sub_1D334A9E0(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v17 = a2;
    v7 = 0;
    v5 = v18;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D38B75D0](v7, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = [v8 uniqueIdentifier];
      v11 = sub_1D33DE7B4();
      v13 = v12;

      v15 = *(v18 + 16);
      v14 = *(v18 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D334A9E0((v14 > 1), v15 + 1, 1);
      }

      ++v7;
      *(v18 + 16) = v15 + 1;
      v16 = v18 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
    }

    while (v4 != v7);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_1D337741C(void *a1, id a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if ([a2 isCancelled])
  {
    if (qword_1EC7609A0 != -1)
    {
      swift_once();
    }

    v12 = sub_1D33DE464();
    __swift_project_value_buffer(v12, qword_1EC762160);
    v13 = a3;

    v14 = sub_1D33DE444();
    v15 = sub_1D33DEAF4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v49[0] = v17;
      *v16 = 136315394;
      v18 = sub_1D337C5A0();
      v20 = sub_1D3328B48(v18, v19, v49);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_1D3328B48(a4, a5, v49);
      _os_log_impl(&dword_1D331A000, v14, v15, "%s search query is cancelled for queryString %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38B81C0](v17, -1, -1);
      MEMORY[0x1D38B81C0](v16, -1, -1);
    }

    sub_1D337CF78();
    v21 = swift_allocError();
    *v22 = 1;
    v49[0] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B8, &unk_1D33E2DE0);
    sub_1D33DE924();
  }

  else if (a1)
  {
    v23 = a1;
    if (qword_1EC7609A0 != -1)
    {
      swift_once();
    }

    v24 = sub_1D33DE464();
    __swift_project_value_buffer(v24, qword_1EC762160);
    v25 = a3;
    v26 = a1;
    v27 = sub_1D33DE444();
    v28 = sub_1D33DEAD4();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v49[0] = v31;
      *v29 = 136315394;
      v32 = sub_1D337C5A0();
      v34 = sub_1D3328B48(v32, v33, v49);

      *(v29 + 4) = v34;
      *(v29 + 12) = 2112;
      v35 = a1;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 14) = v36;
      *v30 = v36;
      _os_log_impl(&dword_1D331A000, v27, v28, "%s Fetching search results from Spotlight failed with error: %@", v29, 0x16u);
      sub_1D331E880(v30, &qword_1EC761D90, &unk_1D33E4E90);
      MEMORY[0x1D38B81C0](v30, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x1D38B81C0](v31, -1, -1);
      MEMORY[0x1D38B81C0](v29, -1, -1);
    }

    sub_1D337CF78();
    v37 = swift_allocError();
    *v38 = 0;
    v49[0] = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B8, &unk_1D33E2DE0);
    sub_1D33DE924();
  }

  else
  {
    if (qword_1EC7609A0 != -1)
    {
      swift_once();
    }

    v39 = sub_1D33DE464();
    __swift_project_value_buffer(v39, qword_1EC762160);
    swift_retain_n();
    v40 = a3;

    v41 = sub_1D33DE444();
    v42 = sub_1D33DEAF4();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v49[0] = v44;
      *v43 = 136315650;
      v45 = sub_1D337C5A0();
      v47 = sub_1D3328B48(v45, v46, v49);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2048;
      swift_beginAccess();
      v48 = *(*(a7 + 16) + 16);

      *(v43 + 14) = v48;

      *(v43 + 22) = 2080;
      *(v43 + 24) = sub_1D3328B48(a4, a5, v49);
      _os_log_impl(&dword_1D331A000, v41, v42, "%s Got %ld search results for queryString %s", v43, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D38B81C0](v44, -1, -1);
      MEMORY[0x1D38B81C0](v43, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B8, &unk_1D33E2DE0);
    sub_1D33DE934();
  }
}

uint64_t sub_1D3377A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v4[13] = sub_1D33DE974();
  v4[14] = sub_1D33DE964();
  v6 = sub_1D33DE914();
  v4[15] = v6;
  v4[16] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D3377AB0, v6, v5);
}

uint64_t sub_1D3377AB0()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 48) = MEMORY[0x1E69E7CC0];
  v2 = v0 + 48;
  v3 = *(v0 + 88);
  v77 = v1;
  v69 = v3 >> 62;
  if (v3 >> 62)
  {
LABEL_79:
    v74 = v3 & 0xFFFFFFFFFFFFFF8;
    v4 = sub_1D33DEE14();
    v5 = *(v0 + 88);
  }

  else
  {
    v74 = v3 & 0xFFFFFFFFFFFFFF8;
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = *(v0 + 88);
  }

  v70 = v2;
  if (!v4)
  {
    v72 = MEMORY[0x1E69E7CC0];
    goto LABEL_25;
  }

  v6 = 0;
  v7 = (v2 - 32);
  v0 = v3 & 0xC000000000000001;
  v8 = v5 + 32;
  v72 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v3 = v6;
    while (1)
    {
      if (v0)
      {
        v9 = MEMORY[0x1D38B75D0](v3, v76[11]);
      }

      else
      {
        if (v3 >= *(v74 + 16))
        {
          goto LABEL_76;
        }

        v9 = *(v8 + 8 * v3);
      }

      v10 = v9;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      if ([v9 representedObject])
      {
        sub_1D33DED44();

        swift_unknownObjectRelease();
      }

      else
      {

        v78 = 0u;
        v79 = 0u;
      }

      *v7 = v78;
      v7[1] = v79;
      if (v76[5])
      {
        break;
      }

      sub_1D331E880(v7, &qword_1EC7616D0, &unk_1D33E2890);
LABEL_7:
      ++v3;
      if (v6 == v4)
      {
        goto LABEL_25;
      }
    }

    sub_1D331DA18(0, &unk_1EC7616A0, 0x1E6964EA8);
    if ((swift_dynamicCast() & 1) == 0 || !*(v2 + 8))
    {
      goto LABEL_7;
    }

    MEMORY[0x1D38B6F20]();
    if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D33DE8D4();
      v2 = v70;
    }

    sub_1D33DE8F4();
    v72 = v77;
    if (v6 != v4)
    {
      continue;
    }

    break;
  }

LABEL_25:
  v3 = v72;
  if (v72 >> 62)
  {
    v2 = sub_1D33DEE14();
  }

  else
  {
    v2 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v11 = 0;
    v71 = MEMORY[0x1E69E7CC0];
    v73 = v2;
    while (1)
    {
      if ((v72 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1D38B75D0](v11, v72);
      }

      else
      {
        if (v11 >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_78;
        }

        v12 = *(v72 + 32 + 8 * v11);
      }

      v13 = v12;
      if (__OFADD__(v11++, 1))
      {
        goto LABEL_77;
      }

      v15 = [v12 suggestionTokens];
      sub_1D331DA18(0, &unk_1EC761660, 0x1E6964EF0);
      v3 = sub_1D33DE8B4();

      if (v3 >> 62)
      {
        v16 = sub_1D33DEE14();
        if (!v16)
        {
          goto LABEL_29;
        }

LABEL_37:
        v17 = 0;
        v0 = v3 & 0xC000000000000001;
        while (1)
        {
          if (v0)
          {
            v18 = MEMORY[0x1D38B75D0](v17, v3);
          }

          else
          {
            if (v17 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_74;
            }

            v18 = *(v3 + 8 * v17 + 32);
          }

          v19 = v18;
          v2 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
LABEL_74:
            __break(1u);
            goto LABEL_75;
          }

          if ([v18 tokenKind])
          {
            break;
          }

          ++v17;
          if (v2 == v16)
          {
            goto LABEL_29;
          }
        }

        v20 = v19;
        v3 = v70;
        MEMORY[0x1D38B6F20]();
        v2 = v73;
        if (*((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v0 = *((*v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D33DE8D4();
        }

        sub_1D33DE8F4();

        v71 = *v70;
        if (v11 == v73)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v16 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_37;
        }

LABEL_29:

        v2 = v73;
        if (v11 == v73)
        {
          goto LABEL_53;
        }
      }
    }
  }

  v71 = MEMORY[0x1E69E7CC0];
LABEL_53:
  v76[17] = v71;
  v76[18] = v71;
  v21 = v76[12];
  v23 = v76[9];
  v22 = v76[10];

  v24 = OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_text;
  v76[19] = OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_text;
  v25 = (v21 + v24);
  *v25 = v23;
  v25[1] = v22;

  v26 = swift_allocObject();
  v76[20] = v26;
  *(v26 + 16) = MEMORY[0x1E69E7CC0];

  v27 = sub_1D337C29C(v23, v22);
  v29 = v28;
  if (!v28)
  {
    v30 = 0;
LABEL_58:
    v31 = v76[12];
    v32 = OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_suggestion;
    v33 = *(v31 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_suggestion);
    if (*(v31 + v76[19] + 8))
    {
      v34 = v33;

      v35 = sub_1D33DE784();

      v36 = v76[12];
    }

    else
    {
      v41 = v33;
      v35 = 0;
      v36 = v31;
    }

    v42 = objc_opt_self();
    sub_1D331DA18(0, &unk_1EC761660, 0x1E6964EF0);
    v43 = sub_1D33DE8A4();

    v44 = [v42 updatedSuggestionWithCurrentSuggestion:v33 userString:v35 tokens:v43];

    v45 = *(v31 + v32);
    *(v31 + v32) = v44;
    v46 = v44;

    v47 = sub_1D337B4F8(v46);
    v48 = OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_userQueryContext;
    v49 = *(v36 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_userQueryContext);
    *(v36 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_userQueryContext) = v47;

    if (v29)
    {
      v50 = *(v36 + v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761040, &qword_1D33E1B40);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1D33E2410;
      *(v51 + 32) = v30;
      *(v51 + 40) = v29;
      v52 = v50;
      v53 = sub_1D33DE8A4();

      [v52 setFilterQueries_];
    }

    v54 = v76[12];
    v55 = *(v36 + v48);
    if (*(v54 + v76[19] + 8))
    {
      v56 = v55;

      v57 = sub_1D33DE784();

      v54 = v76[12];
    }

    else
    {
      v58 = v55;
      v57 = 0;
    }

    v59 = v76[20];
    v60 = v76[9];
    v75 = v76[10];
    v61 = [objc_allocWithZone(MEMORY[0x1E6964EC8]) initWithUserQueryString:v57 userQueryContext:v55];
    v76[24] = v61;

    *(swift_task_alloc() + 16) = v54;
    v62 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DA8, &qword_1D33E1AD0);
    sub_1D33DEBA4();

    v63 = *(v54 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_userQuery);
    *(v54 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_userQuery) = v61;

    v64 = sub_1D33DE964();
    v76[25] = v64;
    v65 = swift_task_alloc();
    v76[26] = v65;
    v65[2] = v62;
    v65[3] = v59;
    v65[4] = v54;
    v65[5] = v60;
    v65[6] = v75;
    v66 = swift_task_alloc();
    v76[27] = v66;
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B0, &qword_1D33E3DD0);
    *v66 = v76;
    v66[1] = sub_1D3378894;
    v68 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6DE38](v76 + 8, v64, v68, 0xD00000000000001ALL, 0x80000001D33E69B0, sub_1D337D608, v65, v67);
  }

  v30 = v27;
  if (v69)
  {
    if (!sub_1D33DEE14())
    {
      goto LABEL_61;
    }

LABEL_56:
    *v25 = xmmword_1D33E2CE0;

    goto LABEL_58;
  }

  if (*(v74 + 16))
  {
    goto LABEL_56;
  }

LABEL_61:

  v37 = swift_task_alloc();
  v76[21] = v37;
  *v37 = v76;
  v37[1] = sub_1D3378404;
  v38 = v76[10];
  v39 = v76[9];

  return sub_1D337BEC4(v39, v38);
}

uint64_t sub_1D3378404(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {

    v5 = v4[15];
    v6 = v4[16];
    v7 = sub_1D3378A38;
  }

  else
  {
    v4[23] = a1;
    v5 = v4[15];
    v6 = v4[16];
    v7 = sub_1D3378530;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1D3378530()
{
  sub_1D33CC9C8(*(v0 + 184));
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_suggestion;
  v3 = *(v1 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_suggestion);
  if (*(v1 + *(v0 + 152) + 8))
  {
    v4 = v3;

    v5 = sub_1D33DE784();

    v6 = *(v0 + 96);
  }

  else
  {
    v7 = v3;
    v5 = 0;
    v6 = v1;
  }

  v8 = objc_opt_self();
  sub_1D331DA18(0, &unk_1EC761660, 0x1E6964EF0);
  v9 = sub_1D33DE8A4();

  v10 = [v8 updatedSuggestionWithCurrentSuggestion:v3 userString:v5 tokens:v9];

  v11 = *(v1 + v2);
  *(v1 + v2) = v10;
  v12 = v10;

  v13 = sub_1D337B4F8(v12);
  v14 = OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_userQueryContext;
  v15 = *(v6 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_userQueryContext);
  *(v6 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_userQueryContext) = v13;

  v16 = *(v0 + 96);
  v17 = *(v6 + v14);
  if (*(v16 + *(v0 + 152) + 8))
  {
    v18 = v17;

    v19 = sub_1D33DE784();

    v16 = *(v0 + 96);
  }

  else
  {
    v20 = v17;
    v19 = 0;
  }

  v21 = *(v0 + 160);
  v22 = *(v0 + 72);
  v32 = *(v0 + 80);
  v23 = [objc_allocWithZone(MEMORY[0x1E6964EC8]) initWithUserQueryString:v19 userQueryContext:v17];
  *(v0 + 192) = v23;

  *(swift_task_alloc() + 16) = v16;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DA8, &qword_1D33E1AD0);
  sub_1D33DEBA4();

  v25 = *(v16 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_userQuery);
  *(v16 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_userQuery) = v23;

  v26 = sub_1D33DE964();
  *(v0 + 200) = v26;
  v27 = swift_task_alloc();
  *(v0 + 208) = v27;
  v27[2] = v24;
  v27[3] = v21;
  v27[4] = v16;
  v27[5] = v22;
  v27[6] = v32;
  v28 = swift_task_alloc();
  *(v0 + 216) = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B0, &qword_1D33E3DD0);
  *v28 = v0;
  v28[1] = sub_1D3378894;
  v30 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v0 + 64, v26, v30, 0xD00000000000001ALL, 0x80000001D33E69B0, sub_1D337D608, v27, v29);
}

uint64_t sub_1D3378894()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_1D3378AA8;
  }

  else
  {

    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_1D33789B8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D33789B8()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D3378A38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D3378AA8()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D3378B3C(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v46 = a4;
  v47 = a6;
  v54 = a5;
  v9 = sub_1D33DE664();
  v52 = *(v9 - 8);
  v53 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1D33DE6A4();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B8, &unk_1D33E2DE0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v45 - v15;
  v60 = sub_1D337D618;
  v61 = a3;
  v45 = a3;
  aBlock = MEMORY[0x1E69E9820];
  v57 = 1107296256;
  v58 = sub_1D3377408;
  v59 = &block_descriptor_86;
  v17 = _Block_copy(&aBlock);

  [a2 setFoundItemsHandler_];
  _Block_release(v17);
  (*(v13 + 16))(v16, a1, v12);
  v18 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  v21 = a2;
  v22 = v46;
  v23 = v47;
  v24 = v54;
  *(v20 + 3) = v46;
  *(v20 + 4) = v24;
  *(v20 + 5) = v23;
  (*(v13 + 32))(&v20[v18], v16, v12);
  *&v20[v19] = v45;
  v60 = sub_1D337D714;
  v61 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v57 = 1107296256;
  v58 = sub_1D3352A4C;
  v59 = &block_descriptor_92;
  v25 = _Block_copy(&aBlock);

  v26 = v21;
  v27 = v22;

  [v26 setCompletionHandler_];
  _Block_release(v25);
  if (qword_1EC7609A0 != -1)
  {
    swift_once();
  }

  v28 = sub_1D33DE464();
  __swift_project_value_buffer(v28, qword_1EC762160);
  v29 = v27;

  v30 = sub_1D33DE444();
  v31 = sub_1D33DEAF4();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    aBlock = v33;
    *v32 = 136315394;
    v34 = sub_1D337C5A0();
    v36 = sub_1D3328B48(v34, v35, &aBlock);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_1D3328B48(v54, v23, &aBlock);
    _os_log_impl(&dword_1D331A000, v30, v31, "%s Beginning search query for text %s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B81C0](v33, -1, -1);
    MEMORY[0x1D38B81C0](v32, -1, -1);
  }

  v37 = *&v29[OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_userQuery];
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  v60 = sub_1D337CF68;
  v61 = v38;
  aBlock = MEMORY[0x1E69E9820];
  v57 = 1107296256;
  v58 = sub_1D3329468;
  v59 = &block_descriptor_98;
  v39 = _Block_copy(&aBlock);
  v40 = v37;
  v41 = v48;
  sub_1D33DE674();
  v55 = MEMORY[0x1E69E7CC0];
  sub_1D337D8A4(&unk_1EDEBEF50, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761680, &unk_1D33E29E0);
  sub_1D337D8EC(&qword_1EDEBEF30, &unk_1EC761680, &unk_1D33E29E0);
  v42 = v50;
  v43 = v53;
  sub_1D33DED64();
  MEMORY[0x1D38B7240](0, v41, v42, v39);
  _Block_release(v39);

  (*(v52 + 8))(v42, v43);
  (*(v49 + 8))(v41, v51);
}

uint64_t sub_1D33791D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D33DE664();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D33DE6A4();
  v7 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
  v10 = sub_1D33DEB94();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a1;
  aBlock[4] = sub_1D337D89C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D3329468;
  aBlock[3] = &block_descriptor_110;
  v12 = _Block_copy(aBlock);

  sub_1D33DE674();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1D337D8A4(&unk_1EDEBEF50, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761680, &unk_1D33E29E0);
  sub_1D337D8EC(&qword_1EDEBEF30, &unk_1EC761680, &unk_1D33E29E0);
  sub_1D33DED64();
  MEMORY[0x1D38B7240](0, v9, v6, v12);
  _Block_release(v12);

  (*(v16 + 8))(v6, v4);
  (*(v7 + 8))(v9, v15);
}

char *sub_1D33794C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v4 = sub_1D33DEE14();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
LABEL_12:
    swift_beginAccess();
    sub_1D33CC9C8(v5);
    return swift_endAccess();
  }

  v18 = MEMORY[0x1E69E7CC0];
  result = sub_1D334A9E0(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v17 = a1;
    v7 = 0;
    v5 = v18;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D38B75D0](v7, a2);
      }

      else
      {
        v8 = *(a2 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = [v8 uniqueIdentifier];
      v11 = sub_1D33DE7B4();
      v13 = v12;

      v15 = *(v18 + 16);
      v14 = *(v18 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D334A9E0((v14 > 1), v15 + 1, 1);
      }

      ++v7;
      *(v18 + 16) = v15 + 1;
      v16 = v18 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
    }

    while (v4 != v7);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D337963C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a7;
  v33 = a4;
  v34 = a1;
  v39 = sub_1D33DE664();
  v42 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D33DE6A4();
  v40 = *(v12 - 8);
  v41 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v35 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B8, &unk_1D33E2DE0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v32 - v17;
  sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
  v37 = sub_1D33DEB94();
  (*(v15 + 16))(v18, a6, v14);
  v19 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v20 = (v16 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = a2;
  *(v21 + 3) = a3;
  *(v21 + 4) = v33;
  *(v21 + 5) = a5;
  (*(v15 + 32))(&v21[v19], v18, v14);
  v22 = v34;
  *&v21[v20] = v34;
  *&v21[(v20 + 15) & 0xFFFFFFFFFFFFFFF8] = v36;
  aBlock[4] = sub_1D337D7F0;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D3329468;
  aBlock[3] = &block_descriptor_104;
  v23 = _Block_copy(aBlock);
  v24 = a2;
  v25 = a3;

  v26 = v22;

  v27 = v35;
  sub_1D33DE674();
  v43 = MEMORY[0x1E69E7CC0];
  sub_1D337D8A4(&unk_1EDEBEF50, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761680, &unk_1D33E29E0);
  sub_1D337D8EC(&qword_1EDEBEF30, &unk_1EC761680, &unk_1D33E29E0);
  v29 = v38;
  v28 = v39;
  sub_1D33DED64();
  v30 = v37;
  MEMORY[0x1D38B7240](0, v27, v29, v23);
  _Block_release(v23);

  (*(v42 + 8))(v29, v28);
  (*(v40 + 8))(v27, v41);
}

void sub_1D3379A50(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  if ([a1 isCancelled])
  {
    if (qword_1EC7609A0 != -1)
    {
      swift_once();
    }

    v12 = sub_1D33DE464();
    __swift_project_value_buffer(v12, qword_1EC762160);
    v13 = a2;

    v14 = sub_1D33DE444();
    v15 = sub_1D33DEAF4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v49[0] = v17;
      *v16 = 136315394;
      v18 = sub_1D337C5A0();
      v20 = sub_1D3328B48(v18, v19, v49);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_1D3328B48(a3, a4, v49);
      _os_log_impl(&dword_1D331A000, v14, v15, "%s search query is cancelled for text %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38B81C0](v17, -1, -1);
      MEMORY[0x1D38B81C0](v16, -1, -1);
    }

    sub_1D337CF78();
    v21 = swift_allocError();
    *v22 = 1;
    v49[0] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B8, &unk_1D33E2DE0);
    sub_1D33DE924();
  }

  else if (a6)
  {
    v23 = a6;
    if (qword_1EC7609A0 != -1)
    {
      swift_once();
    }

    v24 = sub_1D33DE464();
    __swift_project_value_buffer(v24, qword_1EC762160);
    v25 = a2;
    v26 = a6;
    v27 = sub_1D33DE444();
    v28 = sub_1D33DEAD4();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v49[0] = v31;
      *v29 = 136315394;
      v32 = sub_1D337C5A0();
      v34 = sub_1D3328B48(v32, v33, v49);

      *(v29 + 4) = v34;
      *(v29 + 12) = 2112;
      v35 = a6;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 14) = v36;
      *v30 = v36;
      _os_log_impl(&dword_1D331A000, v27, v28, "%s Fetching search results from Spotlight failed with error: %@", v29, 0x16u);
      sub_1D331E880(v30, &qword_1EC761D90, &unk_1D33E4E90);
      MEMORY[0x1D38B81C0](v30, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x1D38B81C0](v31, -1, -1);
      MEMORY[0x1D38B81C0](v29, -1, -1);
    }

    sub_1D337CF78();
    v37 = swift_allocError();
    *v38 = 0;
    v49[0] = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B8, &unk_1D33E2DE0);
    sub_1D33DE924();
  }

  else
  {
    if (qword_1EC7609A0 != -1)
    {
      swift_once();
    }

    v39 = sub_1D33DE464();
    __swift_project_value_buffer(v39, qword_1EC762160);
    swift_retain_n();
    v40 = a2;

    v41 = sub_1D33DE444();
    v42 = sub_1D33DEAF4();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v49[0] = v44;
      *v43 = 136315650;
      v45 = sub_1D337C5A0();
      v47 = sub_1D3328B48(v45, v46, v49);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2048;
      swift_beginAccess();
      v48 = *(*(a7 + 16) + 16);

      *(v43 + 14) = v48;

      *(v43 + 22) = 2080;
      *(v43 + 24) = sub_1D3328B48(a3, a4, v49);
      _os_log_impl(&dword_1D331A000, v41, v42, "%s Got %ld search results for text %s", v43, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D38B81C0](v44, -1, -1);
      MEMORY[0x1D38B81C0](v43, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B8, &unk_1D33E2DE0);
    sub_1D33DE934();
  }
}

uint64_t sub_1D337A03C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_1D33DE464();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = sub_1D33DE974();
  v3[10] = sub_1D33DE964();
  v6 = sub_1D33DE914();
  v3[11] = v6;
  v3[12] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D337A138, v6, v5);
}

uint64_t sub_1D337A138()
{
  v1 = v0[5];
  v2 = objc_opt_self();
  v3 = *(v1 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_suggestion);
  v4 = sub_1D33DE784();
  sub_1D331DA18(0, &unk_1EC761660, 0x1E6964EF0);
  v5 = sub_1D33DE8A4();
  v6 = [v2 updatedSuggestionWithCurrentSuggestion:v3 userString:v4 tokens:v5];
  v0[13] = v6;

  if (qword_1EC7609A0 != -1)
  {
    swift_once();
  }

  v7 = v0[8];
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[5];
  v11 = __swift_project_value_buffer(v8, qword_1EC762160);
  (*(v9 + 16))(v7, v11, v8);
  v12 = sub_1D337B4F8(v6);
  v0[14] = v12;
  v13 = objc_allocWithZone(MEMORY[0x1E6964EC8]);
  v14 = sub_1D33DE784();
  v15 = [v13 initWithUserQueryString:v14 userQueryContext:v12];
  v0[15] = v15;

  v16 = sub_1D33DE964();
  v0[16] = v16;
  v17 = swift_task_alloc();
  v0[17] = v17;
  v17[2] = v15;
  v17[3] = v7;
  v17[4] = v10;
  v18 = swift_task_alloc();
  v0[18] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761F70, &qword_1D33E2DD0);
  *v18 = v0;
  v18[1] = sub_1D337A3C8;
  v20 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v0 + 2, v16, v20, 0xD00000000000001CLL, 0x80000001D33E6920, sub_1D337CE38, v17, v19);
}

uint64_t sub_1D337A3C8()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1D337A5A8;
  }

  else
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1D337A4EC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D337A4EC()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 48);

  v6 = *(v0 + 16);
  (*(v4 + 8))(v3, v5);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_1D337A5A8()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 48);

  (*(v4 + 8))(v3, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D337A678(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v39 = a1;
  v40 = a4;
  v38 = a3;
  v47 = a2;
  v44 = sub_1D33DE664();
  v46 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v42 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1D33DE6A4();
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v41 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1D33DE464();
  v6 = *(v37 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761670, &qword_1D33E2DD8);
  v33 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v34 = &v32 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = MEMORY[0x1E69E7CC0];
  v53 = sub_1D337CE44;
  v54 = v13;
  v35 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v50 = 1107296256;
  v36 = &v51;
  v51 = sub_1D337AD18;
  v52 = &block_descriptor_2;
  v14 = _Block_copy(&aBlock);

  v15 = v47;
  [v47 setFoundSuggestionsHandler_];
  _Block_release(v14);
  (*(v9 + 16))(v12, v39, v8);
  v16 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v37;
  (*(v6 + 16))(v16, v38, v37);
  v18 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v19 = (v10 + *(v6 + 80) + v18) & ~*(v6 + 80);
  v20 = (v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v15;
  (*(v9 + 32))(v21 + v18, v34, v33);
  (*(v6 + 32))(v21 + v19, v16, v17);
  v22 = v40;
  *(v21 + v20) = v40;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v35;
  v53 = sub_1D337CE4C;
  v54 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v50 = 1107296256;
  v51 = sub_1D3352A4C;
  v52 = &block_descriptor_26_0;
  v23 = _Block_copy(&aBlock);

  v24 = v47;
  v22;

  [v24 setCompletionHandler_];
  _Block_release(v23);
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  v53 = sub_1D337CF68;
  v54 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v50 = 1107296256;
  v51 = sub_1D3329468;
  v52 = &block_descriptor_32;
  v26 = _Block_copy(&aBlock);
  v27 = v24;
  v28 = v41;
  sub_1D33DE674();
  v48 = MEMORY[0x1E69E7CC0];
  sub_1D337D8A4(&unk_1EDEBEF50, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761680, &unk_1D33E29E0);
  sub_1D337D8EC(&qword_1EDEBEF30, &unk_1EC761680, &unk_1D33E29E0);
  v29 = v42;
  v30 = v44;
  sub_1D33DED64();
  MEMORY[0x1D38B7240](0, v28, v29, v26);
  _Block_release(v26);
  (*(v46 + 8))(v29, v30);
  (*(v43 + 8))(v28, v45);
}

uint64_t sub_1D337ACB8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  sub_1D33CCBAC(v2);
  return swift_endAccess();
}

uint64_t sub_1D337AD2C(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v4 = *(a1 + 32);
  sub_1D331DA18(0, a3, a4);
  v5 = sub_1D33DE8B4();

  v4(v5);
}

void sub_1D337ADA8(void *a1, id a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if ([a2 isCancelled])
  {
    sub_1D337CF78();
    v8 = swift_allocError();
    *v9 = 1;
    v24[0] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761670, &qword_1D33E2DD8);
    sub_1D33DE924();
  }

  else if (a1)
  {
    v10 = a1;
    v11 = a5;
    v12 = sub_1D33DE444();
    v13 = sub_1D33DEAD4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24[0] = v16;
      *v14 = 136315394;
      v17 = sub_1D337C5A0();
      v19 = sub_1D3328B48(v17, v18, v24);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2112;
      v20 = a1;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v21;
      *v15 = v21;
      _os_log_impl(&dword_1D331A000, v12, v13, "%s Fetching suggestions failed with error: %@", v14, 0x16u);
      sub_1D331E880(v15, &qword_1EC761D90, &unk_1D33E4E90);
      MEMORY[0x1D38B81C0](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1D38B81C0](v16, -1, -1);
      MEMORY[0x1D38B81C0](v14, -1, -1);
    }

    sub_1D337CF78();
    v22 = swift_allocError();
    *v23 = 0;
    v24[0] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761670, &qword_1D33E2DD8);
    sub_1D33DE924();
  }

  else
  {
    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761670, &qword_1D33E2DD8);
    sub_1D33DE934();
  }
}

uint64_t sub_1D337B1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1D33DE974();
  v3[5] = sub_1D33DE964();
  v5 = sub_1D33DE914();

  return MEMORY[0x1EEE6DFA0](sub_1D337B25C, v5, v4);
}

uint64_t sub_1D337B25C()
{
  v1 = v0[4];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v3 = sub_1D33DE7B4();
  v5 = v4;
  v0[7] = v4;
  v6 = v1;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1D337B338;

  return sub_1D337A03C(v3, v5);
}

uint64_t sub_1D337B338(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v3)
  {
    v7 = sub_1D33DDBD4();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_1D331DA18(0, &unk_1EC7616A0, 0x1E6964EA8);
    v10 = sub_1D33DE8A4();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v4 + 48);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

id sub_1D337B4F8(uint64_t a1)
{
  v1 = [objc_opt_self() userQueryContextWithCurrentSuggestion_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761040, &qword_1D33E1B40);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D33E2410;
  *(v2 + 32) = sub_1D33DE7B4();
  *(v2 + 40) = v3;
  v4 = v1;
  v5 = sub_1D33DE8A4();

  [v4 setBundleIDs_];

  v6 = sub_1D33DE7B4();
  v8 = v7;
  v13 = sub_1D33DE7B4();
  v14 = v9;
  MEMORY[0x1D38B6ED0](540884256, 0xE400000000000000);
  MEMORY[0x1D38B6ED0](v6, v8);

  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D33E2410;
  *(v10 + 32) = v13;
  *(v10 + 40) = v14;
  v11 = sub_1D33DE8A4();

  [v4 setFilterQueries_];

  [v4 setEnableSuggestionTokens_];
  return v4;
}

unint64_t sub_1D337B6C4()
{
  v62 = sub_1D33DDDB4();
  v1 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v3 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v0;
  v4 = [*&v0[OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_callProviderManager] telephonyProvider];
  v5 = [v4 prioritizedSenderIdentities];

  v6 = [v5 array];
  v7 = sub_1D33DE8B4();

  v8 = sub_1D337BDB8(v7);

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  if (v9 >> 62)
  {
    if (sub_1D33DEE14() >= 2)
    {
      v54 = sub_1D33DEE14();
      if (!v54)
      {

        v12 = MEMORY[0x1E69E7CC8];
LABEL_20:
        if (qword_1EC7609A0 != -1)
        {
          swift_once();
        }

        v40 = sub_1D33DE464();
        __swift_project_value_buffer(v40, qword_1EC762160);
        v41 = v56;
        v42 = sub_1D33DE444();
        v43 = sub_1D33DEAF4();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v63 = v45;
          *v44 = 136315394;
          v46 = sub_1D337C5A0();
          v48 = sub_1D3328B48(v46, v47, &v63);

          *(v44 + 4) = v48;
          *(v44 + 12) = 2080;

          v49 = sub_1D33DE704();
          v51 = v50;

          v52 = sub_1D3328B48(v49, v51, &v63);

          *(v44 + 14) = v52;
          _os_log_impl(&dword_1D331A000, v42, v43, "%s Updating subscriptions to %s", v44, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D38B81C0](v45, -1, -1);
          MEMORY[0x1D38B81C0](v44, -1, -1);
        }

        return v12;
      }

      if (v54 >= 1)
      {
        v58 = v54;
LABEL_6:
        v10 = 0;
        v60 = v9 & 0xC000000000000001;
        v11 = (v1 + 8);
        v12 = MEMORY[0x1E69E7CC8];
        v13 = &selRef_setOriginatingUIType_;
        v14 = v58;
        v57 = v9;
        v61 = v11;
        do
        {
          if (v60)
          {
            v15 = MEMORY[0x1D38B75D0](v10, v9);
          }

          else
          {
            v15 = *(v9 + 8 * v10 + 32);
          }

          v16 = v15;
          v17 = [v15 v13[39]];
          v18 = sub_1D33DE7B4();
          v20 = v19;

          v21 = HIBYTE(v20) & 0xF;
          if ((v20 & 0x2000000000000000) == 0)
          {
            v21 = v18 & 0xFFFFFFFFFFFFLL;
          }

          if (v21)
          {
            v22 = [v16 v13[39]];
            v23 = sub_1D33DE7B4();
            v25 = v24;

            v26 = [v16 accountUUID];
            sub_1D33DDD84();

            v27 = sub_1D33DDD54();
            v29 = v28;
            v59 = *v61;
            v59(v3, v62);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v63 = v12;
            sub_1D3398AC0(v27, v29, v23, v25, isUniquelyReferenced_nonNull_native);

            v12 = v63;
            sub_1D33DEB14();
            v31 = [v16 v13[39]];
            sub_1D33DE7B4();

            v32 = sub_1D33DEB04();
            v34 = v33;

            if (v34)
            {
              v35 = [v16 accountUUID];
              sub_1D33DDD84();

              v36 = sub_1D33DDD54();
              v38 = v37;
              v59(v3, v62);
              v39 = swift_isUniquelyReferenced_nonNull_native();
              v63 = v12;
              sub_1D3398AC0(v36, v38, v32, v34, v39);

              v12 = v63;
            }

            else
            {
            }

            v9 = v57;
            v14 = v58;
            v13 = &selRef_setOriginatingUIType_;
          }

          else
          {
          }

          ++v10;
        }

        while (v14 != v10);

        goto LABEL_20;
      }

      __break(1u);
    }
  }

  else
  {
    v58 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v58 > 1)
    {
      goto LABEL_6;
    }
  }

  v55 = MEMORY[0x1E69E7CC0];

  return sub_1D336BD10(v55);
}

uint64_t sub_1D337BCA4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1D334A9E0(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1D3328D20(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D334A9E0((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1D337BDB8(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_1D33DEFA4();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1D3328D20(i, v5);
    sub_1D331DA18(0, &unk_1EC761650, 0x1E69D8CD8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1D33DEF84();
    sub_1D33DEFB4();
    sub_1D33DEFC4();
    sub_1D33DEF94();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_1D337BEC4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  sub_1D33DE974();
  v3[6] = sub_1D33DE964();
  v5 = sub_1D33DE914();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D337BF60, v5, v4);
}

uint64_t sub_1D337BF60()
{
  v0[2] = MEMORY[0x1E69E7CC0];
  v1 = sub_1D337C29C(v0[3], v0[4]);
  v0[9] = v2;
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_1D337C074;

    return sub_1D337670C(v3, v4);
  }

  else
  {

    v7 = v0[1];
    v8 = MEMORY[0x1E69E7CC0];

    return v7(v8);
  }
}

uint64_t sub_1D337C074(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = v4[7];
    v6 = v4[8];
    v7 = sub_1D337C238;
  }

  else
  {
    v4[12] = a1;
    v5 = v4[7];
    v6 = v4[8];
    v7 = sub_1D337C1C0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1D337C1C0()
{
  v1 = v0[12];

  sub_1D33CC9C8(v1);
  v2 = v0[2];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1D337C238()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D337C29C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D33DDAA4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  v11 = OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_subscriptionsLabelIDByLabel;
  if (*(*(v3 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_subscriptionsLabelIDByLabel) + 16) >= 2uLL)
  {
    v33 = a1;
    v34 = a2;
    sub_1D33DDA94();
    sub_1D3328AF4();
    v30 = sub_1D33DED24();
    v13 = v12;
    (*(v7 + 8))(v9, v6);
    v29 = v3;
    v14 = *(v3 + v11);
    v15 = 1 << *(v14 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v14 + 64);
    v18 = (v15 + 63) >> 6;

    v19 = 0;
    if (v17)
    {
      while (1)
      {
        v20 = v19;
LABEL_9:
        v21 = (v20 << 10) | (16 * __clz(__rbit64(v17)));
        v22 = (*(v14 + 48) + v21);
        v24 = *v22;
        v23 = v22[1];
        v25 = (*(v14 + 56) + v21);
        v27 = *v25;
        v26 = v25[1];
        v33 = v24;
        v34 = v23;
        v31 = v30;
        v32 = v13;

        if (!sub_1D33DED34())
        {
          break;
        }

        v17 &= v17 - 1;

        v19 = v20;
        if (!v17)
        {
          goto LABEL_6;
        }
      }

      v33 = sub_1D33DE7B4();
      v34 = v28;
      MEMORY[0x1D38B6ED0](8765, 0xE200000000000000);
      MEMORY[0x1D38B6ED0](v27, v26);

      MEMORY[0x1D38B6ED0](34, 0xE100000000000000);
      MEMORY[0x1D38B6ED0](*(v29 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_kCSQueryFlags), *(v29 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_kCSQueryFlags + 8));

      return v33;
    }

    else
    {
LABEL_6:
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v20 >= v18)
        {

          return 0;
        }

        v17 = *(v14 + 64 + 8 * v20);
        ++v19;
        if (v17)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D337C5A0()
{
  if (*(v0 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_searchItemType))
  {
    if (*(v0 + OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_searchItemType) == 1)
    {
      v2 = 0x616D6563696F565BLL;
    }

    else
    {
      v2 = 0x747365676775535BLL;
    }
  }

  else
  {
    v2 = 0x205D736C6C61435BLL;
  }

  MEMORY[0x1D38B6ED0](0xD00000000000001ALL, 0x80000001D33E6900);
  return v2;
}

id sub_1D337C69C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SpotlightSearchDataSource();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for ReminderStatus.ReminderState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReminderStatus.ReminderState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D337C928()
{
  result = qword_1EC761640;
  if (!qword_1EC761640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761640);
  }

  return result;
}

uint64_t sub_1D337C97C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1D334D4B4;

  return v6();
}

uint64_t sub_1D337CA64(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1D334CF9C;

  return v7();
}

uint64_t sub_1D337CB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1D33723DC(a3, v23 - v10);
  v12 = sub_1D33DE9B4();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1D331E880(v11, &unk_1EC7610E0, &qword_1D33E16C0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1D33DE9A4();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1D33DE914();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1D33DE814() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1D331E880(a3, &unk_1EC7610E0, &qword_1D33E16C0);

    return v21;
  }

LABEL_8:
  sub_1D331E880(a3, &unk_1EC7610E0, &qword_1D33E16C0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

void sub_1D337CE4C(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761670, &qword_1D33E2DD8) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1D33DE464() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + v8);
  v11 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1D337ADA8(a1, v9, v1 + v4, v1 + v7, v10, v11);
}

unint64_t sub_1D337CF78()
{
  result = qword_1EC761690;
  if (!qword_1EC761690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761690);
  }

  return result;
}

uint64_t sub_1D337D018()
{
  if (qword_1EC7609A0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D33DE464();
  __swift_project_value_buffer(v1, qword_1EC762160);
  v2 = v0;
  v3 = sub_1D33DE444();
  v4 = sub_1D33DEAF4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    v7 = sub_1D337C5A0();
    v9 = sub_1D3328B48(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1D331A000, v3, v4, "%s Processing providers changed", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1D38B81C0](v6, -1, -1);
    MEMORY[0x1D38B81C0](v5, -1, -1);
  }

  *&v2[OBJC_IVAR____TtC16CallsAppServices25SpotlightSearchDataSource_subscriptionsLabelIDByLabel] = sub_1D337B6C4();
}

uint64_t sub_1D337D19C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D334CF9C;

  return sub_1D337B1C0(v2, v3, v4);
}

uint64_t sub_1D337D250()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D334D4B4;

  return sub_1D337C97C(v2, v3, v4);
}

uint64_t objectdestroy_58Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D337D350(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D334D4B4;

  return sub_1D337CA64(a1, v4, v5, v6);
}

uint64_t sub_1D337D41C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D334D4B4;

  return sub_1D331E8E0(a1, v4);
}

uint64_t sub_1D337D4D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D334CF9C;

  return sub_1D331E8E0(a1, v4);
}

void *sub_1D337D5AC@<X0>(void *result@<X0>, BOOL *a2@<X8>)
{
  v4 = *(*(v2 + 16) + *result);
  if (v4)
  {
    result = [v4 cancel];
  }

  *a2 = v4 == 0;
  return result;
}

uint64_t objectdestroy_42Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B8, &unk_1D33E2DE0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D337D72C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char *, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B8, &unk_1D33E2DE0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = *(v2 + 4);
  v9 = *(v2 + 5);
  v10 = *&v2[(*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8];

  return a2(a1, v6, v7, v8, v9, &v2[v5], v10);
}

void sub_1D337D7F0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B8, &unk_1D33E2DE0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = *(v0 + v3);
  v9 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1D3379A50(v4, v5, v6, v7, v0 + v2, v8, v9);
}

uint64_t sub_1D337D8A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D337D8EC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpotlightSearchDataSource.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

uint64_t storeEnumTagSinglePayload for SpotlightSearchDataSource.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D337DAA0()
{
  result = qword_1EC7616D8;
  if (!qword_1EC7616D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7616D8);
  }

  return result;
}

uint64_t sub_1D337DB9C()
{
  v1 = *&v0[OBJC_IVAR____TtC16CallsAppServices25RecentsUnreadCountManager_totalUnreadCallCount];
  if (qword_1EDEBFC40 != -1)
  {
    swift_once();
  }

  sub_1D33DE4F4();

  v2 = __OFSUB__(v1, v21);
  v3 = v1 - v21;
  if (v2)
  {
    __break(1u);
  }

  else if (qword_1EDEBFD70 == -1)
  {
    goto LABEL_5;
  }

  swift_once();
LABEL_5:
  v4 = v3 & ~(v3 >> 63);
  v5 = sub_1D33DE464();
  __swift_project_value_buffer(v5, qword_1EDEC1480);
  v6 = v0;
  v7 = sub_1D33DE444();
  v8 = sub_1D33DEAF4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v9 = 136315650;
    v10 = sub_1D33DE804();
    v12 = sub_1D3328B48(v10, v11, &v21);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = sub_1D33DE804();
    v15 = sub_1D3328B48(v13, v14, &v21);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2080;

    sub_1D33DE4F4();

    v16 = sub_1D33DE804();
    v18 = sub_1D3328B48(v16, v17, &v21);

    *(v9 + 24) = v18;
    _os_log_impl(&dword_1D331A000, v7, v8, "RecentsUnreadCountManager: Updating tabBarUnreadCallCount to %s total: %s unreadRequestCount: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38B81C0](v20, -1, -1);
    MEMORY[0x1D38B81C0](v9, -1, -1);
  }

  v21 = v4;
  return sub_1D33DE4E4();
}

void sub_1D337DE48(uint64_t a1)
{
  v3 = sub_1D33DDFA4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == *MEMORY[0x1E6995A70])
  {
    v8 = OBJC_IVAR____TtC16CallsAppServices25RecentsUnreadCountManager_shouldMarkKnownCallsAsReadWhenReady;
    if ((*(v1 + OBJC_IVAR____TtC16CallsAppServices25RecentsUnreadCountManager_shouldMarkKnownCallsAsReadWhenReady) & 1) == 0)
    {
      v9 = (v1 + OBJC_IVAR____TtC16CallsAppServices25RecentsUnreadCountManager_requestsHandler);
      v10 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16CallsAppServices25RecentsUnreadCountManager_requestsHandler), *(v1 + OBJC_IVAR____TtC16CallsAppServices25RecentsUnreadCountManager_requestsHandler + 24));
      v11 = *(*v10 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_isRequestsEnabledOverride);
      if (v11 == 2)
      {
        if (([*(*v10 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_featureFlags) junkFilteringEnabled] & 1) == 0 || !objc_msgSend(objc_opt_self(), sel_isFilterAsNewCallersEnabledForPhone))
        {
LABEL_6:
          if (qword_1EDEBFD70 != -1)
          {
            swift_once();
          }

          v12 = sub_1D33DE464();
          __swift_project_value_buffer(v12, qword_1EDEC1480);
          v13 = sub_1D33DE444();
          v14 = sub_1D33DEAF4();
          if (!os_log_type_enabled(v13, v14))
          {
            goto LABEL_16;
          }

          v15 = swift_slowAlloc();
          *v15 = 0;
          v16 = "RecentsUnreadCountManager: Requests is off, filter is calls, mark all as read.";
LABEL_15:
          _os_log_impl(&dword_1D331A000, v13, v14, v16, v15, 2u);
          MEMORY[0x1D38B81C0](v15, -1, -1);
LABEL_16:

          sub_1D337E5CC();
          return;
        }
      }

      else if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }

      if (*(*__swift_project_boxed_opaque_existential_1(v9, v9[3]) + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_hasFinishedFirstCacheUpdate) == 1)
      {
        sub_1D337E180();
      }

      else
      {
        *(v1 + v8) = 1;
      }
    }
  }

  else
  {
    if (v7 == *MEMORY[0x1E6995A90])
    {
      if (qword_1EDEBFD70 != -1)
      {
        swift_once();
      }

      v17 = sub_1D33DE464();
      __swift_project_value_buffer(v17, qword_1EDEC1480);
      v13 = sub_1D33DE444();
      v14 = sub_1D33DEAF4();
      if (!os_log_type_enabled(v13, v14))
      {
        goto LABEL_16;
      }

      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "RecentsUnreadCountManager: Requests is enabled, and we're in requests. Mark everything as read.";
      goto LABEL_15;
    }

    (*(v4 + 8))(v6, v3);
  }
}

void sub_1D337E180()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
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
      _os_log_impl(&dword_1D331A000, v3, v4, "RecentsUnreadCountManager: markOnlyKnownCallsAsRead", v5, 2u);
      MEMORY[0x1D38B81C0](v5, -1, -1);
    }

    if (qword_1EDEBFC40 != -1)
    {
      swift_once();
    }

    v6 = qword_1EDEBFC50;
    v7 = sub_1D33CD460();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761718, &unk_1D33E2F50);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D33E2410;
    v28 = MEMORY[0x1E69E7CC0];
    v9 = (v6 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_cachedHandlesToIsUnknown);
    os_unfair_lock_lock((v6 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_cachedHandlesToIsUnknown));
    sub_1D33CD0E8(&v9[2], &v28);
    os_unfair_lock_unlock(v9);
    v10 = v28;
    *(v8 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B0, &qword_1D33E3DD0);
    *(v8 + 32) = v10;
    v11 = sub_1D33DE784();
    v12 = sub_1D33DE8A4();

    v13 = [objc_opt_self() predicateWithFormat:v11 argumentArray:v12];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1D33E2400;
    *(v14 + 32) = v7;
    *(v14 + 40) = v13;
    sub_1D331DA18(0, &unk_1EC761720, 0x1E696AE18);
    v15 = v7;
    v16 = v13;
    v17 = sub_1D33DE8A4();

    v18 = objc_opt_self();
    v19 = [v18 andPredicateWithSubpredicates_];

    v20 = [v18 notPredicateWithSubpredicate_];
    v21 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    v23 = *(v21 + 88);
    swift_unknownObjectRetain();
    v27 = v20;
    v23(v20, ObjectType, v21);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v24 = sub_1D33DE464();
    __swift_project_value_buffer(v24, qword_1EDEC1480);
    v27 = sub_1D33DE444();
    v25 = sub_1D33DEAD4();
    if (os_log_type_enabled(v27, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1D331A000, v27, v25, "RecentsUnreadCountManager: Failed to mark recent known audio calls as read. No recents controller instance found.", v26, 2u);
      MEMORY[0x1D38B81C0](v26, -1, -1);
    }
  }
}

void sub_1D337E5CC()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
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
      _os_log_impl(&dword_1D331A000, v3, v4, "RecentsUnreadCountManager: markAllCallsAsRead", v5, 2u);
      MEMORY[0x1D38B81C0](v5, -1, -1);
    }

    v6 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 80);
    swift_unknownObjectRetain();
    v8(ObjectType, v6);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v9 = sub_1D33DE464();
    __swift_project_value_buffer(v9, qword_1EDEC1480);
    oslog = sub_1D33DE444();
    v10 = sub_1D33DEAD4();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D331A000, oslog, v10, "RecentsUnreadCountManager: Failed to mark recent audio calls as read. No recents controller instance found.", v11, 2u);
      MEMORY[0x1D38B81C0](v11, -1, -1);
    }
  }
}

id RecentsUnreadCountManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RecentsUnreadCountManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t RecentsUnreadCountManager.recentsController(_:didChangeUnreadCallCount:)(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC16CallsAppServices25RecentsUnreadCountManager_totalUnreadCallCount) = a2;
    return sub_1D337DB9C();
  }

  return result;
}

uint64_t sub_1D337EA54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7617E0, &unk_1D33E3210);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v18 - v1;
  v3 = sub_1D33DECB4();
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761730, &unk_1D33E2F60);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - v8;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7617F0, &unk_1D33E3220);
  v10 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v12 = &v18 - v11;
  if (qword_1EDEBFC40 != -1)
  {
    swift_once();
  }

  v21 = *(qword_1EDEBFC50 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_unreadRequestCount);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761740, &unk_1D33E2F70);
  sub_1D334CB54(&unk_1EDEBEF70, &qword_1EC761740, &unk_1D33E2F70, MEMORY[0x1E695BFB0]);
  sub_1D33DE624();
  sub_1D33DECA4();
  v13 = [objc_opt_self() mainRunLoop];
  v21 = v13;
  v14 = sub_1D33DEC94();
  (*(*(v14 - 8) + 56))(v2, 1, 1, v14);
  sub_1D331DA18(0, &unk_1EDEBEE50, 0x1E695DFD0);
  sub_1D334CB54(&qword_1EDEBF040, &unk_1EC761730, &unk_1D33E2F60, MEMORY[0x1E695BD38]);
  sub_1D337EE98();
  sub_1D33DE614();
  sub_1D332B344(v2);

  (*(v19 + 8))(v5, v20);
  (*(v7 + 8))(v9, v6);
  sub_1D334CB54(&qword_1EDEBF000, &unk_1EC7617F0, &unk_1D33E3220, MEMORY[0x1E695BE50]);
  v15 = v18;
  v16 = sub_1D33DE5A4();
  (*(v10 + 8))(v12, v15);
  return v16;
}

unint64_t sub_1D337EE98()
{
  result = qword_1EDEBEE60;
  if (!qword_1EDEBEE60)
  {
    sub_1D331DA18(255, &unk_1EDEBEE50, 0x1E695DFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEBEE60);
  }

  return result;
}

id sub_1D337EF48(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_results] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_resultIDs] = v5;
  v6 = &v1[OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_searchText];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v1[OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_searchTokens] = v5;
  v7 = OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_featureFlags;
  *&v2[v7] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v8 = OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_logger;
  if (qword_1EC7609A0 != -1)
  {
    swift_once();
  }

  v9 = sub_1D33DE464();
  v10 = __swift_project_value_buffer(v9, qword_1EC762160);
  (*(*(v9 - 8) + 16))(&v2[v8], v10, v9);
  v11 = OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_inbox;
  v28 = sub_1D33DE2A4();
  v29 = &off_1F4EE4AF0;
  v27[0] = sub_1D33DE294();
  type metadata accessor for VideoMessageInboxController(0);
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = sub_1D3392828(*v15, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  *&v2[v11] = v17;
  v18 = OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_voicemailsById;
  *&v2[v18] = sub_1D336BE24(MEMORY[0x1E69E7CC0]);
  v19 = objc_allocWithZone(type metadata accessor for SpotlightSearchDataSource());
  v20 = a1;
  *&v2[OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_dataSource] = sub_1D3376320(1, v20);

  sub_1D33220A8();

  v26.receiver = v2;
  v26.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v26, sel_init);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v22 = MEMORY[0x1EEE9AC00](v24);
  sub_1D33DDEB4();
  sub_1D337F298();

  return v22;
}

uint64_t sub_1D337F298()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DC8, &qword_1D33E1B50);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - v4;
  v6 = *&v0[OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_inbox];
  swift_getKeyPath();
  v30[0] = v6;
  sub_1D338547C();
  sub_1D33DDED4();

  v7 = v6 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
  os_unfair_lock_lock((v6 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state));
  v8 = *(v7 + 8);

  os_unfair_lock_unlock(v7);
  v9 = *(v8 + 16);
  if (v9)
  {
    v29 = v0;
    v30[0] = MEMORY[0x1E69E7CC0];
    sub_1D334B46C(0, v9, 0);
    v10 = v30[0];
    v11 = *(type metadata accessor for RecentsItem(0) - 8);
    v12 = *(v11 + 80);
    v13 = *(v11 + 72);
    v28 = v8;
    v14 = v8 + ((v12 + 32) & ~v12);
    while (1)
    {
      v15 = &v5[*(v2 + 48)];
      sub_1D332A828(v14, v15);
      v16 = *(v15 + 32);
      v17 = 1;
      if (v16 <= 8)
      {
        if (((1 << v16) & 0x1B0) != 0)
        {
          goto LABEL_10;
        }

        v18 = *(v15 + 8);
        if (v16 == 3 || v16 == 6)
        {
          goto LABEL_9;
        }
      }

      if (v16 >= 2)
      {
        v18 = *v15;
LABEL_9:
        v19 = v18;
        sub_1D33DE0B4();

        v17 = 0;
      }

LABEL_10:
      v20 = sub_1D33DDDB4();
      (*(*(v20 - 8) + 56))(v5, v17, 1, v20);
      v30[0] = v10;
      v22 = *(v10 + 16);
      v21 = *(v10 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1D334B46C((v21 > 1), v22 + 1, 1);
        v10 = v30[0];
      }

      *(v10 + 16) = v22 + 1;
      sub_1D333842C(v5, v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v22, &qword_1EC760DC8, &qword_1D33E1B50);
      v14 += v13;
      if (!--v9)
      {

        v1 = v29;
        if (*(v10 + 16))
        {
          goto LABEL_14;
        }

LABEL_16:
        v23 = MEMORY[0x1E69E7CC8];
        goto LABEL_17;
      }
    }
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_16;
  }

LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761440, &unk_1D33E3050);
  v23 = sub_1D33DF124();
LABEL_17:
  v30[0] = v23;
  v24 = v1;
  sub_1D33854D4(v10, 1, v30, v24);

  v25 = v30[0];
  v26 = OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_voicemailsById;
  swift_beginAccess();
  *&v24[v26] = v25;
}

uint64_t sub_1D337F64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RecentsItem(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v32 - v10;
  sub_1D332A828(a1, &v32 - v10);
  sub_1D332A828(a2, v9);
  v12 = sub_1D33DE444();
  v13 = sub_1D33DEAE4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v36 = v15;
    *v14 = 136315394;
    v16 = *v11;
    v17 = v11[32];
    v34 = v13;
    v33 = v15;
    if (v17 > 8)
    {
      goto LABEL_6;
    }

    if (((1 << v17) & 0x1B0) != 0)
    {
LABEL_7:
      v19 = a3;
      sub_1D33379F4(v11, type metadata accessor for RecentsItem);
      v20 = 0xE300000000000000;
      v21 = 7104878;
LABEL_11:
      v23 = sub_1D3328B48(v21, v20, &v36);

      *(v14 + 4) = v23;
      *(v14 + 12) = 2080;
      v24 = v9[32];
      a3 = v19;
      v25 = 7104878;
      if (v24 > 8)
      {
        goto LABEL_15;
      }

      if (((1 << v24) & 0x1B0) != 0)
      {
LABEL_16:
        sub_1D33379F4(v9, type metadata accessor for RecentsItem);
        v27 = 0xE300000000000000;
LABEL_19:
        v29 = sub_1D3328B48(v25, v27, &v36);

        *(v14 + 14) = v29;
        _os_log_impl(&dword_1D331A000, v12, v34, "VoicemailSearchManager: found duplicate messageUUID for messages: %s and %s", v14, 0x16u);
        v30 = v33;
        swift_arrayDestroy();
        MEMORY[0x1D38B81C0](v30, -1, -1);
        MEMORY[0x1D38B81C0](v14, -1, -1);

        return sub_1D332A828(a1, a3);
      }

      v26 = *(v9 + 1);
      if (v24 != 3 && v24 != 6)
      {
LABEL_15:
        if (v24 < 2)
        {
          goto LABEL_16;
        }

        v26 = *v9;
      }

      v35 = v26;
      sub_1D33DE1C4();
      v25 = sub_1D33DE804();
      v27 = v28;
      sub_1D33379F4(v9, type metadata accessor for RecentsItem);
      goto LABEL_19;
    }

    v18 = *(v11 + 1);
    if (v17 != 3 && v17 != 6)
    {
LABEL_6:
      if (v17 < 2)
      {
        goto LABEL_7;
      }

      v18 = v16;
    }

    v19 = a3;
    v35 = v18;
    sub_1D33DE1C4();
    v21 = sub_1D33DE804();
    v20 = v22;
    sub_1D33379F4(v11, type metadata accessor for RecentsItem);
    goto LABEL_11;
  }

  sub_1D33379F4(v9, type metadata accessor for RecentsItem);
  sub_1D33379F4(v11, type metadata accessor for RecentsItem);
  return sub_1D332A828(a1, a3);
}

void sub_1D337F9EC(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_inbox);
  swift_getKeyPath();
  sub_1D338547C();
  sub_1D33DDED4();

  v2 = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state));
  os_unfair_lock_unlock((v1 + v2));
}

uint64_t sub_1D337FA78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_1D33DE9B4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1D33DE974();

  v6 = sub_1D33DE964();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = a1;
  sub_1D333DD88(0, 0, v4, &unk_1D33E3068, v7);
}

uint64_t sub_1D337FB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  sub_1D33DE974();
  *(v4 + 72) = sub_1D33DE964();
  v6 = sub_1D33DE914();

  return MEMORY[0x1EEE6DFA0](sub_1D337FC34, v6, v5);
}

uint64_t sub_1D337FC34()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1D337F298();
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    *(swift_task_alloc() + 16) = v3;
    *(swift_task_alloc() + 16) = v4;
    sub_1D33DDEB4();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t VoicemailSearchManager.search(with:searchTokens:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  v5 = sub_1D33DE944();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  v4[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EE0, &qword_1D33E4CE0);
  v4[25] = swift_task_alloc();
  v6 = type metadata accessor for RecentsItem(0);
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v7 = sub_1D33DDDB4();
  v4[34] = v7;
  v4[35] = *(v7 - 8);
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  sub_1D33DE974();
  v4[39] = sub_1D33DE964();
  v9 = sub_1D33DE914();
  v4[40] = v9;
  v4[41] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D3380048, v9, v8);
}

uint64_t sub_1D3380048()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = (v1 + OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_searchText);
  v4 = *(v1 + OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_searchText + 8);
  if (v2)
  {
    if (!v4)
    {
      goto LABEL_13;
    }

    if (*v3 != v0[15] || v4 != v2)
    {
      v6 = sub_1D33DF1B4();
      v1 = v0[18];
      if ((v6 & 1) == 0)
      {
        goto LABEL_13;
      }
    }
  }

  else if (v4)
  {
    goto LABEL_13;
  }

  v7 = v0[17];

  LOBYTE(v7) = sub_1D3374154(v8, v7);

  if (v7)
  {

    goto LABEL_28;
  }

  v1 = v0[18];
LABEL_13:
  v9 = v0[16];
  v10 = v0[17];
  *v3 = v0[15];
  v3[1] = v9;

  *(v1 + OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_searchTokens) = v10;

  if (v2)
  {
    if (sub_1D33DE834() > 0)
    {
LABEL_17:
      v12 = swift_task_alloc();
      v0[42] = v12;
      *v12 = v0;
      v12[1] = sub_1D3380430;
      v13 = v0[17];
      v14 = v0[15];

      return sub_1D3377A10(v14, v9, v13);
    }

    v11 = v0[17];
    if (v11 >> 62)
    {
      if (sub_1D33DEE14() >= 1)
      {
        goto LABEL_17;
      }
    }

    else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_17;
    }
  }

  v16 = v0[18];

  v17 = OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_results;
  swift_beginAccess();
  v18 = MEMORY[0x1E69E7CC0];
  *(v16 + v17) = MEMORY[0x1E69E7CC0];

  v19 = *(v16 + v17);
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = v0[27];

    sub_1D334A9E0(0, v20, 0);
    v22 = v19 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v23 = *(v21 + 72);
    do
    {
      v24 = v0[28];
      sub_1D332A828(v22, v24);
      v25 = RecentsItem.dataSourceId.getter();
      v27 = v26;
      sub_1D33379F4(v24, type metadata accessor for RecentsItem);
      v29 = *(v18 + 16);
      v28 = *(v18 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1D334A9E0((v28 > 1), v29 + 1, 1);
      }

      *(v18 + 16) = v29 + 1;
      v30 = v18 + 16 * v29;
      *(v30 + 32) = v25;
      *(v30 + 40) = v27;
      v22 += v23;
      --v20;
    }

    while (v20);
  }

  *(v0[18] + OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_resultIDs) = v18;

LABEL_28:

  v31 = v0[1];

  return v31();
}

uint64_t sub_1D3380430(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 344) = a1;
  *(v4 + 352) = v1;

  v5 = *(v3 + 328);
  v6 = *(v3 + 320);
  if (v1)
  {
    v7 = sub_1D33815B4;
  }

  else
  {
    v7 = sub_1D3380574;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D3380574()
{
  v140 = v0;
  v1 = v0;
  v2 = *(v0 + 352);
  sub_1D33DEA04();
  if (v2)
  {

    *(v0 + 112) = v2;
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
    if (swift_dynamicCast())
    {

      v4 = sub_1D33DE444();
      v5 = sub_1D33DEAD4();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = *(v0 + 120);
        v7 = *(v0 + 128);
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v139[0] = v9;
        *v8 = 136315138;

        v10 = sub_1D3328B48(v6, v7, v139);

        *(v8 + 4) = v10;
        _os_log_impl(&dword_1D331A000, v4, v5, "VoicemailsSearchController: Search cancelled for '%s'", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v9);
        MEMORY[0x1D38B81C0](v9, -1, -1);
        MEMORY[0x1D38B81C0](v8, -1, -1);
      }

      (*(v1[20] + 1))(v1[21], v1[19]);
    }

    else
    {

      v19 = sub_1D33DE444();
      v20 = sub_1D33DEAD4();

      if (os_log_type_enabled(v19, v20))
      {
        v22 = *(v0 + 120);
        v21 = *(v0 + 128);
        v23 = swift_slowAlloc();
        v24 = v1;
        v25 = swift_slowAlloc();
        v139[0] = v25;
        *v23 = 136315138;

        v26 = sub_1D3328B48(v22, v21, v139);

        *(v23 + 4) = v26;
        _os_log_impl(&dword_1D331A000, v19, v20, "VoicemailsSearchController: Failed to search for '%s'", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
        v27 = v25;
        v1 = v24;
        MEMORY[0x1D38B81C0](v27, -1, -1);
        MEMORY[0x1D38B81C0](v23, -1, -1);
      }
    }

    goto LABEL_16;
  }

  v11 = sub_1D33DE444();
  v12 = sub_1D33DEAF4();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 344);
  if (v13)
  {
    v15 = *(v0 + 120);
    v16 = v1[16];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v139[0] = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_1D3328B48(v15, v16, v139);
    *(v17 + 12) = 2048;
    *(v17 + 14) = *(v14 + 16);

    _os_log_impl(&dword_1D331A000, v11, v12, "VoicemailsSearchController: Completed search for %s. Got %ld results", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1D38B81C0](v18, -1, -1);
    MEMORY[0x1D38B81C0](v17, -1, -1);
  }

  else
  {
  }

  v28 = v1[43];
  if (!*(v28 + 2))
  {
    v33 = v1[18];

    v34 = OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_results;
    swift_beginAccess();
    v35 = MEMORY[0x1E69E7CC0];
    *&v33[v34] = MEMORY[0x1E69E7CC0];

    *&v33[OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_resultIDs] = v35;
    goto LABEL_15;
  }

  v139[0] = v1[43];

  sub_1D3375198(v139);
  v29 = v1;
  v30 = v1[18];
  v31 = v139[0];
  v32 = OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_resultIDs;
  v139[0] = *&v30[OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_resultIDs];
  swift_bridgeObjectRetain_n();
  sub_1D3375198(v139);

  v38 = sub_1D33743D0(v31, v139[0]);

  if (v38)
  {
    v1 = v29;

    v39 = sub_1D33DE444();
    v40 = sub_1D33DEAF4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1D331A000, v39, v40, "VoicemailsSearchController: Search voicemails did not change for voicemails search controller.", v41, 2u);
      MEMORY[0x1D38B81C0](v41, -1, -1);
    }

    goto LABEL_16;
  }

  v42 = sub_1D33DE444();
  v43 = sub_1D33DEAF4();
  v138 = v29;
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 134217984;
    *(v44 + 4) = *(v28 + 2);

    _os_log_impl(&dword_1D331A000, v42, v43, "VoicemailsSearchController: Search voicemails did changed! Search results count: %ld", v44, 0xCu);
    MEMORY[0x1D38B81C0](v44, -1, -1);
  }

  else
  {
  }

  *&v30[v32] = v138[43];

  v45 = *(v28 + 2);

  v134 = v45;
  if (!v45)
  {
    v136 = MEMORY[0x1E69E7CC0];
    v1 = v138;
LABEL_38:
    v63 = v136[2];
    if (v63)
    {
      v64 = v1[35];
      v65 = v1[27];
      v129 = OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_voicemailsById;
      v132 = v1[18];
      v66 = *(v64 + 2);
      v64 += 16;
      v127 = v66;
      v67 = v136 + ((v64[64] + 32) & ~v64[64]);
      v123 = (v65 + 56);
      v125 = (v64 + 40);
      v119 = v65;
      v121 = (v65 + 48);
      v122 = (v64 - 8);
      v68 = MEMORY[0x1E69E7CC0];
      v120 = *(v64 + 7);
      do
      {
        v69 = v1[37];
        v70 = v1[34];
        v71 = v1[32];
        v127(v69, v67, v70);
        v127(v71, v69, v70);
        v72 = 1;
        (*v125)(v71, 0, 1, v70);
        swift_beginAccess();
        v73 = *&v132[v129];
        if (*(v73 + 16) && (v74 = sub_1D33B9390(v1[32]), (v75 & 1) != 0))
        {
          v76 = v68;
          sub_1D332A828(*(v73 + 56) + *(v119 + 9) * v74, v1[25]);
          v72 = 0;
        }

        else
        {
          v76 = v68;
        }

        v77 = v1[37];
        v78 = v1[34];
        v79 = v1[32];
        v80 = v1[25];
        v81 = v1[26];
        (*v123)(v80, v72, 1, v81);
        swift_endAccess();
        sub_1D331E880(v79, &qword_1EC7612B0, qword_1D33E2830);
        (*v122)(v77, v78);
        if ((*v121)(v80, 1, v81) == 1)
        {
          sub_1D331E880(v1[25], &unk_1EC760EE0, &qword_1D33E4CE0);
          v68 = v76;
        }

        else
        {
          sub_1D33302BC(v1[25], v1[31]);
          v68 = v76;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v68 = sub_1D33226AC(0, v76[2] + 1, 1, v76);
          }

          v83 = v68[2];
          v82 = v68[3];
          if (v83 >= v82 >> 1)
          {
            v68 = sub_1D33226AC((v82 > 1), v83 + 1, 1, v68);
          }

          v84 = v1[31];
          v68[2] = v83 + 1;
          sub_1D33302BC(v84, v68 + ((v119[80] + 32) & ~v119[80]) + *(v119 + 9) * v83);
        }

        v67 += v120;
        --v63;
      }

      while (v63);
    }

    else
    {

      v68 = MEMORY[0x1E69E7CC0];
    }

    v133 = v68[2];
    if (v133)
    {
      v85 = 0;
      v124 = v1[30];
      v86 = MEMORY[0x1E69E7CC0];
      v126 = v1[26];
      v128 = v1[27];
      v130 = v68;
      while (1)
      {
        if (v85 >= v68[2])
        {
          goto LABEL_80;
        }

        v87 = v1[30];
        v88 = v1[22];
        v137 = (v128[80] + 32) & ~v128[80];
        v135 = *(v128 + 9);
        sub_1D332A828(v68 + v137 + v135 * v85, v87);
        sub_1D331E818(v87 + *(v126 + 8), v88, &unk_1EC761DE0, &unk_1D33E50F0);
        v89 = type metadata accessor for CallInfo(0);
        v90 = (*(*(v89 - 8) + 48))(v88, 1, v89);
        v92 = v1[22];
        v91 = v1[23];
        if (v90 == 1)
        {
          break;
        }

        v100 = v138[24];
        v101 = *(v89 + 24);
        v94 = sub_1D33DDD34();
        v102 = *(v94 - 8);
        (*(v102 + 16))(v91, v92 + v101, v94);
        sub_1D33379F4(v92, type metadata accessor for CallInfo);
        v103 = *(v102 + 56);
        v103(v91, 0, 1, v94);
        (*(v102 + 32))(v100, v91, v94);
        v104 = v100;
        v1 = v138;
        v103(v104, 0, 1, v94);
LABEL_71:
        v108 = v1[24];
        sub_1D33DDD34();
        v109 = (*(*(v94 - 8) + 48))(v108, 1, v94);
        v110 = v1[30];
        if (v109 == 1)
        {
          sub_1D33379F4(v1[30], type metadata accessor for RecentsItem);
          result = sub_1D331E880(v108, &qword_1EC760E10, &unk_1D33E1A90);
          v68 = v130;
        }

        else
        {
          v111 = v1[29];
          sub_1D331E880(v108, &qword_1EC760E10, &unk_1D33E1A90);
          sub_1D33302BC(v110, v111);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v139[0] = v86;
          v68 = v130;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D3330B0C(0, *(v86 + 2) + 1, 1);
            v86 = v139[0];
          }

          v114 = *(v86 + 2);
          v113 = *(v86 + 3);
          v1 = v138;
          if (v114 >= v113 >> 1)
          {
            sub_1D3330B0C((v113 > 1), v114 + 1, 1);
            v86 = v139[0];
          }

          v115 = v138[29];
          *(v86 + 2) = v114 + 1;
          result = sub_1D33302BC(v115, &v86[v137 + v114 * v135]);
        }

        if (v133 == ++v85)
        {
          goto LABEL_78;
        }
      }

      v93 = v1[30];
      sub_1D331E880(v92, &unk_1EC761DE0, &unk_1D33E50F0);
      v94 = sub_1D33DDD34();
      v95 = *(v94 - 8);
      v96 = *(v95 + 56);
      v97 = 1;
      v96(v91, 1, 1, v94);
      v98 = *v93;
      v99 = v124[32];
      if (v99 > 8)
      {
        goto LABEL_66;
      }

      if (((1 << v99) & 0x1B0) != 0)
      {
        v1 = v138;
        goto LABEL_69;
      }

      v105 = *(v124 + 1);
      if (v99 != 3 && v99 != 6)
      {
LABEL_66:
        v1 = v138;
        if (v99 < 2)
        {
          goto LABEL_69;
        }

        v105 = v98;
      }

      v106 = v105;
      sub_1D33DE0C4();

      v1 = v138;
      v97 = 0;
LABEL_69:
      v107 = v1[23];
      v96(v1[24], v97, 1, v94);
      if ((*(v95 + 48))(v107, 1, v94) != 1)
      {
        sub_1D331E880(v1[23], &qword_1EC760E10, &unk_1D33E1A90);
      }

      goto LABEL_71;
    }

    v86 = MEMORY[0x1E69E7CC0];
LABEL_78:

    v139[0] = v86;

    sub_1D3381C3C(v139);
    v116 = v1[18];

    v117 = v139[0];
    v118 = OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_results;
    swift_beginAccess();
    *&v116[v118] = v117;
LABEL_15:

LABEL_16:

    v36 = v1[1];

    return v36();
  }

  v46 = 0;
  v47 = v138[35];
  v48 = (v47 + 48);
  v131 = v47;
  v49 = (v47 + 32);
  v50 = (v138[43] + 40);
  v136 = MEMORY[0x1E69E7CC0];
  v1 = v138;
  while (v46 < *(v28 + 2))
  {
    v52 = v1[33];
    v51 = v1[34];

    sub_1D33DDD44();

    if ((*v48)(v52, 1, v51) == 1)
    {
      result = sub_1D331E880(v1[33], &qword_1EC7612B0, qword_1D33E2830);
    }

    else
    {
      v53 = v1[38];
      v54 = v1[36];
      v55 = v1[34];
      v56 = *v49;
      (*v49)(v53, v1[33], v55);
      v56(v54, v53, v55);
      v57 = v136;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_1D3338090(0, v136[2] + 1, 1, v136);
      }

      v59 = v57[2];
      v58 = v57[3];
      v136 = v57;
      if (v59 >= v58 >> 1)
      {
        v136 = sub_1D3338090((v58 > 1), v59 + 1, 1, v57);
      }

      v60 = v138[36];
      v61 = v138[34];
      v136[2] = v59 + 1;
      v62 = v136 + ((v131[80] + 32) & ~v131[80]) + *(v131 + 9) * v59;
      v1 = v138;
      result = (v56)(v62, v60, v61);
    }

    ++v46;
    v50 += 16;
    if (v134 == v46)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_80:
  __break(1u);
  return result;
}

uint64_t sub_1D33815B4()
{
  v20 = v0;

  v1 = *(v0 + 352);
  *(v0 + 112) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
  if (swift_dynamicCast())
  {

    v3 = sub_1D33DE444();
    v4 = sub_1D33DEAD4();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = *(v0 + 120);
      v5 = *(v0 + 128);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v19 = v8;
      *v7 = 136315138;

      v9 = sub_1D3328B48(v6, v5, &v19);

      *(v7 + 4) = v9;
      _os_log_impl(&dword_1D331A000, v3, v4, "VoicemailsSearchController: Search cancelled for '%s'", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1D38B81C0](v8, -1, -1);
      MEMORY[0x1D38B81C0](v7, -1, -1);
    }

    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  }

  else
  {

    v10 = sub_1D33DE444();
    v11 = sub_1D33DEAD4();

    if (os_log_type_enabled(v10, v11))
    {
      v13 = *(v0 + 120);
      v12 = *(v0 + 128);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v14 = 136315138;

      v16 = sub_1D3328B48(v13, v12, &v19);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_1D331A000, v10, v11, "VoicemailsSearchController: Failed to search for '%s'", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1D38B81C0](v15, -1, -1);
      MEMORY[0x1D38B81C0](v14, -1, -1);
    }
  }

  v17 = *(v0 + 8);

  return v17();
}

id VoicemailSearchManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VoicemailSearchManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D3381B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D334CF9C;

  return VoicemailSearchManager.search(with:searchTokens:)(a1, a2, a3);
}

char *sub_1D3381C3C(uint64_t *a1)
{
  v2 = *(type metadata accessor for RecentsItem(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D33A9400(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D3381E1C(v6);
  *a1 = v3;
  return result;
}

uint64_t type metadata accessor for VoicemailSearchManager(uint64_t a1)
{
  result = qword_1EC761790;
  if (!qword_1EC761790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D3381D38(uint64_t a1)
{
  result = sub_1D33DE464();
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

char *sub_1D3381E1C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D33DF164();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for RecentsItem(0);
        v6 = sub_1D33DE8E4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for RecentsItem(0) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_1D3382864(v8, v9, a1, v4);
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
    return sub_1D3381F48(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D3381F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v87 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v76 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v91 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v76 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v90 = &v76 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v99 = &v76 - v21;
  v97 = type metadata accessor for RecentsItem(0);
  v22 = MEMORY[0x1EEE9AC00](v97);
  v85 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v76 - v25;
  result = MEMORY[0x1EEE9AC00](v24);
  v88 = &v76 - v29;
  v78 = a2;
  if (a3 == a2)
  {
    return result;
  }

  v30 = *a4;
  v31 = *(v28 + 72);
  v32 = *a4 + v31 * (a3 - 1);
  v83 = -v31;
  v84 = v30;
  v33 = a1 - a3;
  v77 = v31;
  v34 = v30 + v31 * a3;
  v86 = v12;
  v89 = v18;
  v96 = v26;
LABEL_5:
  v81 = v32;
  v82 = a3;
  v79 = v34;
  v80 = v33;
  v35 = v33;
  v98 = v32;
  v36 = v88;
  while (1)
  {
    v92 = v35;
    sub_1D332A828(v34, v36);
    sub_1D332A828(v98, v26);
    sub_1D331E818(v36 + *(v97 + 32), v12, &unk_1EC761DE0, &unk_1D33E50F0);
    v37 = type metadata accessor for CallInfo(0);
    v38 = *(v37 - 8);
    v39 = *(v38 + 48);
    v93 = v38 + 48;
    v94 = v39;
    v40 = (v39)(v12, 1, v37);
    v95 = v34;
    if (v40 != 1)
    {
      v50 = *(v37 + 24);
      v41 = sub_1D33DDD34();
      v51 = *(v41 - 8);
      v52 = v99;
      v53 = v90;
      (*(v51 + 16))(v90, &v12[v50], v41);
      sub_1D33379F4(v12, type metadata accessor for CallInfo);
      v54 = *(v51 + 56);
      v54(v53, 0, 1, v41);
      (*(v51 + 32))(v52, v53, v41);
      v54(v52, 0, 1, v41);
      v49 = v87;
      goto LABEL_18;
    }

    sub_1D331E880(v12, &unk_1EC761DE0, &unk_1D33E50F0);
    v41 = sub_1D33DDD34();
    v42 = *(v41 - 8);
    v43 = *(v42 + 56);
    v44 = 1;
    v43(v90, 1, 1, v41);
    v45 = *(v36 + 32);
    if (v45 <= 8)
    {
      if (((1 << v45) & 0x1B0) != 0)
      {
        goto LABEL_14;
      }

      v46 = *(v36 + 8);
      if (v45 == 3 || v45 == 6)
      {
        goto LABEL_13;
      }
    }

    if (v45 >= 2)
    {
      v46 = *v36;
LABEL_13:
      v47 = v46;
      sub_1D33DE0C4();

      v44 = 0;
    }

LABEL_14:
    v43(v99, v44, 1, v41);
    v48 = v90;
    if ((*(v42 + 48))(v90, 1, v41) != 1)
    {
      sub_1D331E880(v48, &qword_1EC760E10, &unk_1D33E1A90);
    }

    v49 = v87;
LABEL_18:
    sub_1D33DDD34();
    v55 = *(v41 - 8);
    v56 = *(v55 + 48);
    result = v56(v99, 1, v41);
    if (result == 1)
    {
      break;
    }

    v57 = v96;
    sub_1D331E818(&v96[*(v97 + 32)], v49, &unk_1EC761DE0, &unk_1D33E50F0);
    if ((v94)(v49, 1, v37) == 1)
    {
      sub_1D331E880(v49, &unk_1EC761DE0, &unk_1D33E50F0);
      v58 = 1;
      v94 = *(v55 + 56);
      v94(v91, 1, 1, v41);
      v59 = *v57;
      v60 = *(v57 + 32);
      if (v60 > 8)
      {
        goto LABEL_24;
      }

      if (((1 << v60) & 0x1B0) == 0)
      {
        v61 = *(v96 + 1);
        if (v60 != 3 && v60 != 6)
        {
LABEL_24:
          v36 = v88;
          v62 = v95;
          if (v60 >= 2)
          {
            v61 = v59;
            goto LABEL_26;
          }

LABEL_28:
          v64 = v89;
          v94(v89, v58, 1, v41);
          if (v56(v91, 1, v41) != 1)
          {
            sub_1D331E880(v91, &qword_1EC760E10, &unk_1D33E1A90);
          }

          goto LABEL_31;
        }

LABEL_26:
        v63 = v61;
        sub_1D33DE0C4();

        v58 = 0;
      }

      v36 = v88;
      v62 = v95;
      goto LABEL_28;
    }

    v65 = v49 + *(v37 + 24);
    v66 = v91;
    (*(v55 + 16))(v91, v65, v41);
    sub_1D33379F4(v49, type metadata accessor for CallInfo);
    v67 = *(v55 + 56);
    v67(v66, 0, 1, v41);
    v64 = v89;
    (*(v55 + 32))();
    v67(v64, 0, 1, v41);
    v36 = v88;
    v62 = v95;
LABEL_31:
    result = v56(v64, 1, v41);
    if (result == 1)
    {
      goto LABEL_38;
    }

    v68 = v99;
    v69 = sub_1D33DDCA4();
    v70 = *(v55 + 8);
    v70(v64, v41);
    v70(v68, v41);
    v26 = v96;
    sub_1D33379F4(v96, type metadata accessor for RecentsItem);
    result = sub_1D33379F4(v36, type metadata accessor for RecentsItem);
    v12 = v86;
    if (v69)
    {
      if (!v84)
      {
        goto LABEL_39;
      }

      v71 = v85;
      sub_1D33302BC(v62, v85);
      v72 = v98;
      swift_arrayInitWithTakeFrontToBack();
      v73 = v71;
      v74 = v92;
      result = sub_1D33302BC(v73, v72);
      v98 = v72 + v83;
      v34 = v62 + v83;
      v75 = __CFADD__(v74, 1);
      v35 = v74 + 1;
      if (!v75)
      {
        continue;
      }
    }

    a3 = v82 + 1;
    v32 = v81 + v77;
    v33 = v80 - 1;
    v34 = v79 + v77;
    if (v82 + 1 == v78)
    {
      return result;
    }

    goto LABEL_5;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1D3382864(char **a1, uint64_t a2, void *a3, char *a4)
{
  v210 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v205 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v205 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v215 = &v205 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v219 = &v205 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v241 = &v205 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v239 = &v205 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v240 = &v205 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v205 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v228 = &v205 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v224 = &v205 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v226 = &v205 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v221 = &v205 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v206 = &v205 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v212 = &v205 - v36;
  v37 = type metadata accessor for RecentsItem(0);
  v225 = *(v37 - 8);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v213 = &v205 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v235 = &v205 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v247 = &v205 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v238 = &v205 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v47 = MEMORY[0x1EEE9AC00](v46);
  v220 = &v205 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v207 = &v205 - v50;
  result = MEMORY[0x1EEE9AC00](v49);
  v208 = &v205 - v53;
  v54 = a3[1];
  if (v54 >= 1)
  {
    v232 = v52;
    v55 = 0;
    v56 = MEMORY[0x1E69E7CC0];
    v205 = a3;
    v209 = a4;
    v236 = v9;
    v237 = v12;
    v248 = v37;
    v249 = v25;
    while (1)
    {
      v57 = v55;
      v214 = v56;
      if (v55 + 1 >= v54)
      {
        v99 = v55 + 1;
        v100 = v247;
        goto LABEL_52;
      }

      v230 = v54;
      v58 = *a3;
      v59 = *(v225 + 72);
      v60 = *a3 + v59 * (v55 + 1);
      sub_1D332A828(v60, v208);
      v211 = v57;
      v227 = v59;
      v245 = v58;
      v61 = v207;
      sub_1D332A828(v58 + v59 * v57, v207);
      v62 = v212;
      RecentsItem.date.getter(v212);
      v63 = sub_1D33DDD34();
      v223 = *(v63 - 8);
      v65 = v223 + 48;
      v64 = *(v223 + 6);
      result = v64(v62, 1, v63);
      if (result == 1)
      {
        break;
      }

      v66 = v206;
      RecentsItem.date.getter(v206);
      v67 = v66;
      v243 = v64;
      v244 = v65;
      result = v64(v66, 1, v63);
      v68 = v220;
      if (result == 1)
      {
        goto LABEL_193;
      }

      LODWORD(v222) = sub_1D33DDCA4();
      v69 = v223 + 8;
      v70 = *(v223 + 1);
      v70(v67, v63);
      v216 = v70;
      v70(v212, v63);
      sub_1D33379F4(v61, type metadata accessor for RecentsItem);
      sub_1D33379F4(v208, type metadata accessor for RecentsItem);
      v218 = (v69 + 8);
      v246 = (v69 + 48);
      v223 = v69;
      v217 = (v69 + 24);
      v71 = v211 + 2;
      result = v245 + v227 * (v211 + 2);
      v72 = v221;
      while (1)
      {
        v9 = v219;
        if (v230 == v71)
        {
          break;
        }

        v233 = v71;
        v229 = result;
        sub_1D332A828(result, v68);
        sub_1D332A828(v60, v232);
        sub_1D331E818(v68 + *(v37 + 32), v9, &unk_1EC761DE0, &unk_1D33E50F0);
        v73 = type metadata accessor for CallInfo(0);
        v74 = *(v73 - 8);
        v242 = *(v74 + 48);
        v234 = v74 + 48;
        if (v242(v9, 1, v73) != 1)
        {
          v85 = v226;
          (*v218)(v226, v9 + *(v73 + 24), v63);
          sub_1D33379F4(v9, type metadata accessor for CallInfo);
          v86 = *v246;
          (*v246)(v85, 0, 1, v63);
          v80 = v221;
          (*v217)(v221, v85, v63);
          v245 = v86;
          v86(v80, 0, 1, v63);
          v84 = v215;
          v82 = v243;
          goto LABEL_22;
        }

        sub_1D331E880(v9, &unk_1EC761DE0, &unk_1D33E50F0);
        v75 = *v246;
        v76 = 1;
        (*v246)(v226, 1, 1, v63);
        v77 = *(v68 + 32);
        if (v77 <= 8)
        {
          if (((1 << v77) & 0x1B0) != 0)
          {
            goto LABEL_18;
          }

          v78 = *(v68 + 8);
          if (v77 == 3 || v77 == 6)
          {
            goto LABEL_17;
          }
        }

        if (v77 >= 2)
        {
          v78 = *v68;
LABEL_17:
          v79 = v78;
          sub_1D33DE0C4();

          v76 = 0;
        }

LABEL_18:
        v80 = v72;
        v75(v72, v76, 1, v63);
        v81 = v226;
        v82 = v243;
        v83 = (v243)(v226, 1, v63);
        v245 = v75;
        if (v83 != 1)
        {
          sub_1D331E880(v81, &qword_1EC760E10, &unk_1D33E1A90);
        }

        v84 = v215;
LABEL_22:
        v87 = v60;
        v88 = v80;
        result = (v82)(v80, 1, v63);
        if (result == 1)
        {
          goto LABEL_187;
        }

        v89 = v232;
        sub_1D331E818(v232 + *(v248 + 32), v84, &unk_1EC761DE0, &unk_1D33E50F0);
        if (v242(v84, 1, v73) == 1)
        {
          sub_1D331E880(v84, &unk_1EC761DE0, &unk_1D33E50F0);
          (v245)(v228, 1, 1, v63);
          v90 = *(v89 + 32);
          v37 = v248;
          if (v90 > 8)
          {
            goto LABEL_28;
          }

          if (((1 << v90) & 0x1B0) == 0)
          {
            v91 = *(v89 + 8);
            if (v90 == 3 || v90 == 6)
            {
LABEL_30:
              v92 = v91;
              sub_1D33DE0C4();
            }

            else
            {
LABEL_28:
              if (v90 >= 2)
              {
                v91 = *v89;
                goto LABEL_30;
              }
            }
          }

          v93 = v224;
          v245();
          v94 = v243;
          if ((v243)(v228, 1, v63) != 1)
          {
            sub_1D331E880(v228, &qword_1EC760E10, &unk_1D33E1A90);
          }

          goto LABEL_34;
        }

        v95 = v228;
        (*v218)(v228, v84 + *(v73 + 24), v63);
        sub_1D33379F4(v84, type metadata accessor for CallInfo);
        v96 = v245;
        (v245)(v95, 0, 1, v63);
        v93 = v224;
        (*v217)(v224, v95, v63);
        (v96)(v93, 0, 1, v63);
        v37 = v248;
        v60 = v87;
        v94 = v243;
LABEL_34:
        result = (v94)(v93, 1, v63);
        v68 = v220;
        if (result == 1)
        {
          goto LABEL_186;
        }

        v72 = v88;
        v97 = sub_1D33DDCA4() & 1;
        v98 = v216;
        v216(v93, v63);
        v98(v72, v63);
        v9 = type metadata accessor for RecentsItem;
        sub_1D33379F4(v232, type metadata accessor for RecentsItem);
        sub_1D33379F4(v68, type metadata accessor for RecentsItem);
        v71 = v233 + 1;
        result = v229 + v227;
        v60 += v227;
        if ((v222 & 1) != v97)
        {
          v99 = v233;
          goto LABEL_38;
        }
      }

      v99 = v230;
LABEL_38:
      a3 = v205;
      a4 = v209;
      v100 = v247;
      v57 = v211;
      if (v222)
      {
        if (v99 < v211)
        {
          goto LABEL_179;
        }

        if (v211 < v99)
        {
          v9 = v227 * (v99 - 1);
          v101 = v99 * v227;
          v230 = v99;
          v102 = v99;
          v103 = v211;
          v104 = v211 * v227;
          do
          {
            if (v103 != --v102)
            {
              v105 = *a3;
              if (!*a3)
              {
                goto LABEL_189;
              }

              sub_1D33302BC(v105 + v104, v213);
              if (v104 < v9 || v105 + v104 >= (v105 + v101))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v104 != v9)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1D33302BC(v213, v105 + v9);
            }

            ++v103;
            v9 -= v227;
            v101 -= v227;
            v104 += v227;
          }

          while (v103 < v102);
          a4 = v209;
          v100 = v247;
          v57 = v211;
          v99 = v230;
        }
      }

LABEL_52:
      v106 = a3[1];
      if (v99 >= v106)
      {
        goto LABEL_61;
      }

      if (__OFSUB__(v99, v57))
      {
        goto LABEL_178;
      }

      if (v99 - v57 >= a4)
      {
LABEL_61:
        v9 = v99;
        if (v99 < v57)
        {
          goto LABEL_177;
        }

        goto LABEL_62;
      }

      if (__OFADD__(v57, a4))
      {
        goto LABEL_180;
      }

      if (&a4[v57] >= v106)
      {
        v9 = a3[1];
      }

      else
      {
        v9 = &a4[v57];
      }

      a4 = v237;
      if (v9 < v57)
      {
LABEL_181:
        __break(1u);
        goto LABEL_182;
      }

      if (v99 == v9)
      {
        goto LABEL_61;
      }

      v154 = *a3;
      v155 = *(v225 + 72);
      v156 = *a3 + v155 * (v99 - 1);
      v233 = -v155;
      v211 = v57;
      v157 = v57 - v99;
      v234 = v154;
      v218 = v155;
      v158 = (v154 + v99 * v155);
      v159 = v238;
      v222 = v9;
      while (2)
      {
        v230 = v99;
        v223 = v158;
        v227 = v157;
        v160 = v157;
        v229 = v156;
        while (2)
        {
          v243 = v158;
          v244 = v160;
          sub_1D332A828(v158, v159);
          v242 = v156;
          sub_1D332A828(v156, v100);
          sub_1D331E818(v159 + *(v37 + 32), a4, &unk_1EC761DE0, &unk_1D33E50F0);
          v161 = v159;
          v162 = type metadata accessor for CallInfo(0);
          v163 = *(v162 - 8);
          v164 = *(v163 + 48);
          v245 = (v163 + 48);
          v246 = v164;
          if ((v164)(a4, 1, v162) == 1)
          {
            sub_1D331E880(a4, &unk_1EC761DE0, &unk_1D33E50F0);
            v165 = sub_1D33DDD34();
            v166 = *(v165 - 8);
            v167 = *(v166 + 56);
            v168 = 1;
            v167(v240, 1, 1, v165);
            v169 = *(v161 + 32);
            if (v169 > 8)
            {
              goto LABEL_120;
            }

            if (((1 << v169) & 0x1B0) == 0)
            {
              v170 = *(v238 + 8);
              if (v169 == 3 || v169 == 6)
              {
LABEL_122:
                v171 = v170;
                sub_1D33DE0C4();

                v168 = 0;
              }

              else
              {
LABEL_120:
                if (v169 >= 2)
                {
                  v170 = *v161;
                  goto LABEL_122;
                }
              }
            }

            v167(v249, v168, 1, v165);
            v172 = v240;
            if ((*(v166 + 48))(v240, 1, v165) != 1)
            {
              sub_1D331E880(v172, &qword_1EC760E10, &unk_1D33E1A90);
            }

            v173 = v236;
            v174 = v249;
          }

          else
          {
            v175 = *(v162 + 24);
            v165 = sub_1D33DDD34();
            v176 = *(v165 - 8);
            v177 = v240;
            (*(v176 + 16))(v240, &a4[v175], v165);
            sub_1D33379F4(a4, type metadata accessor for CallInfo);
            v178 = *(v176 + 56);
            v178(v177, 0, 1, v165);
            v174 = v249;
            (*(v176 + 32))(v249, v177, v165);
            v178(v174, 0, 1, v165);
            v173 = v236;
          }

          sub_1D33DDD34();
          v179 = *(v165 - 8);
          v180 = *(v179 + 48);
          result = v180(v174, 1, v165);
          if (result == 1)
          {
            goto LABEL_184;
          }

          v181 = v247;
          sub_1D331E818(&v247[*(v248 + 32)], v173, &unk_1EC761DE0, &unk_1D33E50F0);
          if ((v246)(v173, 1, v162) == 1)
          {
            sub_1D331E880(v173, &unk_1EC761DE0, &unk_1D33E50F0);
            v182 = *(v179 + 56);
            v183 = 1;
            v182(v241, 1, 1, v165);
            v184 = v181[32];
            if (v184 > 8)
            {
              goto LABEL_133;
            }

            if (((1 << v184) & 0x1B0) == 0)
            {
              v185 = *(v181 + 1);
              if (v184 == 3 || v184 == 6)
              {
LABEL_135:
                v186 = v185;
                sub_1D33DE0C4();

                v183 = 0;
              }

              else
              {
LABEL_133:
                if (v184 >= 2)
                {
                  v185 = *v181;
                  goto LABEL_135;
                }
              }
            }

            v187 = v239;
            v182(v239, v183, 1, v165);
            if (v180(v241, 1, v165) != 1)
            {
              sub_1D331E880(v241, &qword_1EC760E10, &unk_1D33E1A90);
            }
          }

          else
          {
            v188 = v173 + *(v162 + 24);
            v189 = v241;
            (*(v179 + 16))(v241, v188, v165);
            sub_1D33379F4(v173, type metadata accessor for CallInfo);
            v190 = *(v179 + 56);
            v190(v189, 0, 1, v165);
            v187 = v239;
            (*(v179 + 32))();
            v190(v187, 0, 1, v165);
          }

          result = v180(v187, 1, v165);
          if (result == 1)
          {
            __break(1u);
LABEL_184:
            __break(1u);
LABEL_185:
            __break(1u);
LABEL_186:
            __break(1u);
LABEL_187:
            __break(1u);
LABEL_188:
            __break(1u);
LABEL_189:
            __break(1u);
            goto LABEL_190;
          }

          v191 = v249;
          v192 = sub_1D33DDCA4();
          v193 = *(v179 + 8);
          v193(v187, v165);
          v194 = v191;
          v100 = v247;
          v193(v194, v165);
          sub_1D33379F4(v100, type metadata accessor for RecentsItem);
          v159 = v238;
          result = sub_1D33379F4(v238, type metadata accessor for RecentsItem);
          if (v192)
          {
            a4 = v237;
            v37 = v248;
            v195 = v244;
            if (!v234)
            {
              goto LABEL_185;
            }

            v196 = v243;
            v197 = v235;
            sub_1D33302BC(v243, v235);
            v198 = v242;
            swift_arrayInitWithTakeFrontToBack();
            sub_1D33302BC(v197, v198);
            v156 = v198 + v233;
            v158 = &v196[v233];
            v199 = __CFADD__(v195, 1);
            v160 = (v195 + 1);
            if (v199)
            {
              goto LABEL_113;
            }

            continue;
          }

          break;
        }

        a4 = v237;
        v37 = v248;
LABEL_113:
        v99 = v230 + 1;
        v156 = v218 + v229;
        v157 = v227 - 1;
        v158 = v218 + v223;
        v9 = v222;
        if (v230 + 1 != v222)
        {
          continue;
        }

        break;
      }

      a3 = v205;
      v57 = v211;
      if (v222 < v211)
      {
        goto LABEL_177;
      }

LABEL_62:
      result = swift_isUniquelyReferenced_nonNull_native();
      v222 = v9;
      if (result)
      {
        v56 = v214;
      }

      else
      {
        result = sub_1D3359A14(0, *(v214 + 2) + 1, 1, v214);
        v56 = result;
      }

      v108 = *(v56 + 2);
      v107 = *(v56 + 3);
      v9 = v108 + 1;
      if (v108 >= v107 >> 1)
      {
        result = sub_1D3359A14((v107 > 1), v108 + 1, 1, v56);
        v56 = result;
      }

      *(v56 + 2) = v9;
      v109 = &v56[16 * v108];
      v110 = v222;
      *(v109 + 4) = v57;
      *(v109 + 5) = v110;
      a4 = *v210;
      if (!*v210)
      {
        goto LABEL_191;
      }

      if (v108)
      {
        while (1)
        {
          v111 = v9 - 1;
          if (v9 >= 4)
          {
            break;
          }

          if (v9 == 3)
          {
            v112 = *(v56 + 4);
            v113 = *(v56 + 5);
            v122 = __OFSUB__(v113, v112);
            v114 = v113 - v112;
            v115 = v122;
LABEL_81:
            if (v115)
            {
              goto LABEL_166;
            }

            v128 = &v56[16 * v9];
            v130 = *v128;
            v129 = *(v128 + 1);
            v131 = __OFSUB__(v129, v130);
            v132 = v129 - v130;
            v133 = v131;
            if (v131)
            {
              goto LABEL_169;
            }

            v134 = &v56[16 * v111 + 32];
            v136 = *v134;
            v135 = *(v134 + 1);
            v122 = __OFSUB__(v135, v136);
            v137 = v135 - v136;
            if (v122)
            {
              goto LABEL_172;
            }

            if (__OFADD__(v132, v137))
            {
              goto LABEL_173;
            }

            if (v132 + v137 >= v114)
            {
              if (v114 < v137)
              {
                v111 = v9 - 2;
              }

              goto LABEL_102;
            }

            goto LABEL_95;
          }

          v138 = &v56[16 * v9];
          v140 = *v138;
          v139 = *(v138 + 1);
          v122 = __OFSUB__(v139, v140);
          v132 = v139 - v140;
          v133 = v122;
LABEL_95:
          if (v133)
          {
            goto LABEL_168;
          }

          v141 = &v56[16 * v111];
          v143 = *(v141 + 4);
          v142 = *(v141 + 5);
          v122 = __OFSUB__(v142, v143);
          v144 = v142 - v143;
          if (v122)
          {
            goto LABEL_171;
          }

          if (v144 < v132)
          {
            goto LABEL_3;
          }

LABEL_102:
          v149 = v111 - 1;
          if (v111 - 1 >= v9)
          {
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
            goto LABEL_181;
          }

          if (!*a3)
          {
            goto LABEL_188;
          }

          v150 = v56;
          v9 = *&v56[16 * v149 + 32];
          v151 = *&v56[16 * v111 + 40];
          v152 = v231;
          sub_1D33840F8((*a3 + *(v225 + 72) * v9), (*a3 + *(v225 + 72) * *&v56[16 * v111 + 32]), (*a3 + *(v225 + 72) * v151), a4);
          v231 = v152;
          if (v152)
          {
          }

          if (v151 < v9)
          {
            goto LABEL_162;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v150 = sub_1D33A9330(v150);
          }

          if (v149 >= *(v150 + 2))
          {
            goto LABEL_163;
          }

          v153 = &v150[16 * v149];
          *(v153 + 4) = v9;
          *(v153 + 5) = v151;
          v250 = v150;
          result = sub_1D33A92A4(v111);
          v56 = v250;
          v9 = *(v250 + 16);
          if (v9 <= 1)
          {
            goto LABEL_3;
          }
        }

        v116 = &v56[16 * v9 + 32];
        v117 = *(v116 - 64);
        v118 = *(v116 - 56);
        v122 = __OFSUB__(v118, v117);
        v119 = v118 - v117;
        if (v122)
        {
          goto LABEL_164;
        }

        v121 = *(v116 - 48);
        v120 = *(v116 - 40);
        v122 = __OFSUB__(v120, v121);
        v114 = v120 - v121;
        v115 = v122;
        if (v122)
        {
          goto LABEL_165;
        }

        v123 = &v56[16 * v9];
        v125 = *v123;
        v124 = *(v123 + 1);
        v122 = __OFSUB__(v124, v125);
        v126 = v124 - v125;
        if (v122)
        {
          goto LABEL_167;
        }

        v122 = __OFADD__(v114, v126);
        v127 = v114 + v126;
        if (v122)
        {
          goto LABEL_170;
        }

        if (v127 >= v119)
        {
          v145 = &v56[16 * v111 + 32];
          v147 = *v145;
          v146 = *(v145 + 1);
          v122 = __OFSUB__(v146, v147);
          v148 = v146 - v147;
          if (v122)
          {
            goto LABEL_174;
          }

          if (v114 < v148)
          {
            v111 = v9 - 2;
          }

          goto LABEL_102;
        }

        goto LABEL_81;
      }

LABEL_3:
      v54 = a3[1];
      v55 = v222;
      a4 = v209;
      if (v222 >= v54)
      {
        goto LABEL_149;
      }
    }

LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
    goto LABEL_194;
  }

  v56 = MEMORY[0x1E69E7CC0];
LABEL_149:
  a4 = *v210;
  if (*v210)
  {
    v9 = v56;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v9;
    }

    else
    {
LABEL_182:
      result = sub_1D33A9330(v9);
    }

    v250 = result;
    v9 = *(result + 16);
    if (v9 < 2)
    {
    }

    while (*a3)
    {
      v200 = *(result + 16 * v9);
      v201 = result;
      v202 = *(result + 16 * (v9 - 1) + 40);
      v203 = v231;
      sub_1D33840F8((*a3 + *(v225 + 72) * v200), (*a3 + *(v225 + 72) * *(result + 16 * (v9 - 1) + 32)), (*a3 + *(v225 + 72) * v202), a4);
      v231 = v203;
      if (v203)
      {
      }

      if (v202 < v200)
      {
        goto LABEL_175;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v201 = sub_1D33A9330(v201);
      }

      if (v9 - 2 >= *(v201 + 2))
      {
        goto LABEL_176;
      }

      v204 = &v201[16 * v9];
      *v204 = v200;
      *(v204 + 1) = v202;
      v250 = v201;
      sub_1D33A92A4(v9 - 1);
      result = v250;
      v9 = *(v250 + 16);
      if (v9 <= 1)
      {
      }
    }

LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
    goto LABEL_192;
  }

LABEL_194:
  __break(1u);
  return result;
}

uint64_t sub_1D33840F8(char *a1, char *a2, char *a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v135 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v131 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v142 = &v131 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v131 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v140 = &v131 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v131 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v139 = &v131 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v148 = &v131 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v146 = &v131 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v143 = &v131 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v145 = &v131 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v153 = &v131 - v34;
  v154 = type metadata accessor for RecentsItem(0);
  v35 = MEMORY[0x1EEE9AC00](v154);
  v147 = &v131 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v136 = &v131 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v149 = &v131 - v40;
  result = MEMORY[0x1EEE9AC00](v39);
  v144 = &v131 - v42;
  v44 = *(v43 + 72);
  if (!v44)
  {
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  if (a2 - a1 == 0x8000000000000000 && v44 == -1)
  {
    goto LABEL_110;
  }

  v45 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v44 != -1)
  {
    v46 = (a2 - a1) / v44;
    v157 = a1;
    v156 = a4;
    if (v46 < v45 / v44)
    {
      v47 = v46 * v44;
      if (a4 < a1 || &a1[v47] <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
        v48 = v144;
      }

      else
      {
        v48 = v144;
        if (a4 != a1)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v141 = &a4[v47];
      v155 = &a4[v47];
      if (v47 >= 1 && a2 < a3)
      {
        v140 = v17;
        v137 = v44;
        v138 = a3;
        while (1)
        {
          v151 = a2;
          v152 = a1;
          sub_1D332A828(a2, v48);
          v150 = a4;
          v51 = v149;
          sub_1D332A828(a4, v149);
          sub_1D331E818(v48 + *(v154 + 32), v17, &unk_1EC761DE0, &unk_1D33E50F0);
          v52 = type metadata accessor for CallInfo(0);
          v53 = *(v52 - 8);
          v54 = *(v53 + 48);
          v147 = v53 + 48;
          v148 = v54;
          if ((v54)(v17, 1, v52) != 1)
          {
            v65 = *(v52 + 24);
            v55 = sub_1D33DDD34();
            v66 = *(v55 - 8);
            v67 = v145;
            (*(v66 + 16))(v145, &v17[v65], v55);
            sub_1D33379F4(v17, type metadata accessor for CallInfo);
            v68 = *(v66 + 56);
            v68(v67, 0, 1, v55);
            v64 = v153;
            (*(v66 + 32))(v153, v67, v55);
            v51 = v149;
            v68(v64, 0, 1, v55);
            v63 = v142;
            goto LABEL_33;
          }

          sub_1D331E880(v17, &unk_1EC761DE0, &unk_1D33E50F0);
          v55 = sub_1D33DDD34();
          v56 = *(v55 - 8);
          v57 = *(v56 + 56);
          v58 = 1;
          v57(v145, 1, 1, v55);
          v59 = *(v48 + 32);
          if (v59 <= 8)
          {
            if (((1 << v59) & 0x1B0) != 0)
            {
              goto LABEL_29;
            }

            v60 = *(v144 + 8);
            if (v59 == 3 || v59 == 6)
            {
              goto LABEL_28;
            }
          }

          if (v59 >= 2)
          {
            v60 = *v48;
LABEL_28:
            v61 = v60;
            sub_1D33DE0C4();

            v58 = 0;
          }

LABEL_29:
          v57(v153, v58, 1, v55);
          v62 = v145;
          if ((*(v56 + 48))(v145, 1, v55) != 1)
          {
            sub_1D331E880(v62, &qword_1EC760E10, &unk_1D33E1A90);
          }

          v63 = v142;
          v64 = v153;
LABEL_33:
          sub_1D33DDD34();
          v69 = *(v55 - 8);
          v70 = *(v69 + 48);
          result = v70(v64, 1, v55);
          if (result == 1)
          {
            goto LABEL_112;
          }

          sub_1D331E818(v51 + *(v154 + 32), v63, &unk_1EC761DE0, &unk_1D33E50F0);
          if ((v148)(v63, 1, v52) == 1)
          {
            sub_1D331E880(v63, &unk_1EC761DE0, &unk_1D33E50F0);
            v71 = *(v69 + 56);
            v72 = 1;
            v71(v146, 1, 1, v55);
            v73 = *v51;
            v74 = *(v51 + 32);
            if (v74 > 8)
            {
              goto LABEL_39;
            }

            if (((1 << v74) & 0x1B0) == 0)
            {
              v75 = *(v51 + 8);
              if (v74 != 3 && v74 != 6)
              {
LABEL_39:
                v76 = v152;
                if (v74 >= 2)
                {
                  v75 = v73;
                  goto LABEL_41;
                }

LABEL_43:
                v78 = v143;
                v71(v143, v72, 1, v55);
                v79 = v78;
                if (v70(v146, 1, v55) != 1)
                {
                  sub_1D331E880(v146, &qword_1EC760E10, &unk_1D33E1A90);
                }

                goto LABEL_46;
              }

LABEL_41:
              v77 = v75;
              sub_1D33DE0C4();

              v72 = 0;
            }

            v76 = v152;
            goto LABEL_43;
          }

          v80 = v146;
          (*(v69 + 16))(v146, v63 + *(v52 + 24), v55);
          sub_1D33379F4(v63, type metadata accessor for CallInfo);
          v81 = *(v69 + 56);
          v81(v80, 0, 1, v55);
          v79 = v143;
          (*(v69 + 32))(v143, v80, v55);
          v81(v79, 0, 1, v55);
          v76 = v152;
LABEL_46:
          result = v70(v79, 1, v55);
          v82 = v153;
          if (result == 1)
          {
            goto LABEL_113;
          }

          v83 = sub_1D33DDCA4();
          v84 = *(v69 + 8);
          v84(v79, v55);
          v84(v82, v55);
          sub_1D33379F4(v149, type metadata accessor for RecentsItem);
          v48 = v144;
          sub_1D33379F4(v144, type metadata accessor for RecentsItem);
          a4 = v150;
          v86 = v137;
          v85 = v138;
          if (v83)
          {
            a2 = &v151[v137];
            v17 = v140;
            if (v76 < v151 || v76 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v76 != v151)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          else
          {
            a2 = v151;
            v17 = v140;
            if (v76 < v150 || v76 >= &v150[v137])
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v76 != v150)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v156 = &a4[v86];
            a4 += v86;
          }

          a1 = &v76[v86];
          v157 = a1;
          if (a4 >= v141 || a2 >= v85)
          {
            goto LABEL_108;
          }
        }
      }

      goto LABEL_108;
    }

    v49 = v45 / v44 * v44;
    if (a4 < a2 || &a2[v49] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v87 = &a4[v49];
    if (v49 < 1)
    {
LABEL_106:
      v157 = a2;
      v155 = v87;
LABEL_108:
      sub_1D3385388(&v157, &v156, &v155, type metadata accessor for RecentsItem);
      return 1;
    }

    v88 = -v44;
    v89 = &a4[v49];
    v150 = a4;
    v137 = v13;
    v90 = v147;
    v91 = v136;
    v134 = v23;
    v149 = v88;
    v152 = a1;
LABEL_65:
    v132 = v87;
    v92 = &a2[v88];
    v151 = &a2[v88];
    v138 = a2;
    while (1)
    {
      if (a2 <= a1)
      {
        v157 = a2;
        v155 = v132;
        goto LABEL_108;
      }

      v141 = a3;
      v133 = v87;
      v142 = v89;
      v153 = &v89[v88];
      sub_1D332A828(&v89[v88], v91);
      sub_1D332A828(v92, v90);
      sub_1D331E818(v91 + *(v154 + 32), v13, &unk_1EC761DE0, &unk_1D33E50F0);
      v94 = type metadata accessor for CallInfo(0);
      v95 = *(v94 - 8);
      v96 = *(v95 + 48);
      v144 = v95 + 48;
      v145 = v96;
      v97 = (v96)(v13, 1, v94);
      v146 = v94;
      if (v97 == 1)
      {
        break;
      }

      v108 = *(v94 + 24);
      v98 = sub_1D33DDD34();
      v109 = *(v98 - 8);
      v110 = v139;
      (*(v109 + 16))(v139, &v13[v108], v98);
      sub_1D33379F4(v13, type metadata accessor for CallInfo);
      v111 = *(v109 + 56);
      v111(v110, 0, 1, v98);
      v107 = v148;
      (*(v109 + 32))(v148, v110, v98);
      v111(v107, 0, 1, v98);
      v106 = v135;
LABEL_82:
      sub_1D33DDD34();
      v112 = *(v98 - 8);
      v143 = *(v112 + 48);
      result = (v143)(v107, 1, v98);
      if (result == 1)
      {
        goto LABEL_114;
      }

      v113 = v147;
      sub_1D331E818(v147 + *(v154 + 32), v106, &unk_1EC761DE0, &unk_1D33E50F0);
      v114 = v146;
      if ((v145)(v106, 1, v146) != 1)
      {
        v122 = v140;
        (*(v112 + 16))(v140, v106 + *(v114 + 24), v98);
        sub_1D33379F4(v106, type metadata accessor for CallInfo);
        v123 = *(v112 + 56);
        v123(v122, 0, 1, v98);
        v118 = v134;
        (*(v112 + 32))(v134, v122, v98);
        v123(v118, 0, 1, v98);
        v121 = v143;
        goto LABEL_94;
      }

      sub_1D331E880(v106, &unk_1EC761DE0, &unk_1D33E50F0);
      v115 = *(v112 + 56);
      v116 = 1;
      v115(v140, 1, 1, v98);
      v117 = *(v113 + 32);
      v118 = v134;
      if (v117 > 8)
      {
        goto LABEL_88;
      }

      if (((1 << v117) & 0x1B0) != 0)
      {
        goto LABEL_91;
      }

      v119 = *(v147 + 8);
      if (v117 != 3 && v117 != 6)
      {
LABEL_88:
        if (v117 < 2)
        {
          goto LABEL_91;
        }

        v119 = *v113;
      }

      v120 = v119;
      sub_1D33DE0C4();

      v116 = 0;
LABEL_91:
      v115(v118, v116, 1, v98);
      v121 = v143;
      if ((v143)(v140, 1, v98) != 1)
      {
        sub_1D331E880(v140, &qword_1EC760E10, &unk_1D33E1A90);
      }

LABEL_94:
      result = (v121)(v118, 1, v98);
      v124 = v148;
      if (result == 1)
      {
        goto LABEL_115;
      }

      v125 = v118;
      v126 = v141;
      a3 = &v141[v149];
      v127 = sub_1D33DDCA4();
      v128 = *(v112 + 8);
      v128(v125, v98);
      v128(v124, v98);
      v90 = v147;
      sub_1D33379F4(v147, type metadata accessor for RecentsItem);
      v91 = v136;
      sub_1D33379F4(v136, type metadata accessor for RecentsItem);
      v13 = v137;
      if (v127)
      {
        v130 = v150;
        if (v126 < v138 || a3 >= v138)
        {
          a2 = v151;
          swift_arrayInitWithTakeFrontToBack();
          v87 = v133;
          v130 = v150;
        }

        else
        {
          a2 = v151;
          v87 = v133;
          if (v126 != v138)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v89 = v142;
        v88 = v149;
        a1 = v152;
        if (v142 <= v130)
        {
          goto LABEL_106;
        }

        goto LABEL_65;
      }

      v87 = v153;
      v129 = v150;
      if (v126 < v142 || a3 >= v142)
      {
        swift_arrayInitWithTakeFrontToBack();
        v92 = v151;
      }

      else
      {
        v92 = v151;
        if (v126 != v142)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v89 = v87;
      a1 = v152;
      v93 = v153 > v129;
      v88 = v149;
      a2 = v138;
      if (!v93)
      {
        goto LABEL_106;
      }
    }

    sub_1D331E880(v13, &unk_1EC761DE0, &unk_1D33E50F0);
    v98 = sub_1D33DDD34();
    v99 = *(v98 - 8);
    v100 = *(v99 + 56);
    v101 = 1;
    v100(v139, 1, 1, v98);
    v102 = *(v91 + 32);
    if (v102 <= 8)
    {
      if (((1 << v102) & 0x1B0) != 0)
      {
        goto LABEL_78;
      }

      v103 = *(v136 + 8);
      if (v102 == 3 || v102 == 6)
      {
        goto LABEL_77;
      }
    }

    if (v102 >= 2)
    {
      v103 = *v91;
LABEL_77:
      v104 = v103;
      sub_1D33DE0C4();

      v101 = 0;
    }

LABEL_78:
    v100(v148, v101, 1, v98);
    v105 = v139;
    if ((*(v99 + 48))(v139, 1, v98) != 1)
    {
      sub_1D331E880(v105, &qword_1EC760E10, &unk_1D33E1A90);
    }

    v106 = v135;
    v107 = v148;
    goto LABEL_82;
  }

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
  return result;
}

uint64_t sub_1D3385388(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_1D338547C()
{
  result = qword_1EDEBF310;
  if (!qword_1EDEBF310)
  {
    type metadata accessor for VideoMessageInboxController(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEBF310);
  }

  return result;
}

void sub_1D33854D4(uint64_t a1, char a2, void *a3, void *a4)
{
  v48 = a4;
  v56 = a3;
  v7 = type metadata accessor for RecentsItem(0);
  v53 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v44 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v47 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v44 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DC8, &qword_1D33E1B50);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v54 = v44 - v22;
  v52 = *(a1 + 16);
  if (!v52)
  {
LABEL_16:

    return;
  }

  v45 = v18;
  v46 = v10;
  v44[1] = v16;
  v55 = v4;
  v23 = 0;
  v24 = *(v20 + 48);
  v50 = a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
  v51 = v24;
  v49 = v21;
  while (1)
  {
    if (v23 >= *(a1 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:

      sub_1D33DF1E4();
      __break(1u);
      goto LABEL_24;
    }

    v25 = v54;
    sub_1D331E818(v50 + *(v21 + 72) * v23, v54, &qword_1EC760DC8, &qword_1D33E1B50);
    sub_1D333842C(v25, v18, &qword_1EC7612B0, qword_1D33E2830);
    v26 = v15;
    sub_1D33302BC(v25 + v51, v15);
    v27 = *v56;
    v29 = sub_1D33B9390(v18);
    v30 = v27[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_21;
    }

    v33 = v28;
    if (v27[3] >= v32)
    {
      if ((a2 & 1) == 0)
      {
        sub_1D3399A84();
      }
    }

    else
    {
      sub_1D33970D8(v32, a2 & 1);
      v34 = sub_1D33B9390(v18);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_23;
      }

      v29 = v34;
    }

    v36 = *v56;
    if (v33)
    {
      break;
    }

    v36[(v29 >> 6) + 8] |= 1 << v29;
    sub_1D333842C(v18, v36[6] + *(v47 + 72) * v29, &qword_1EC7612B0, qword_1D33E2830);
    v15 = v26;
    sub_1D33302BC(v26, v36[7] + *(v53 + 72) * v29);
    v40 = v36[2];
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      goto LABEL_22;
    }

    v36[2] = v42;
LABEL_3:
    ++v23;
    a2 = 1;
    v21 = v49;
    if (v52 == v23)
    {
      goto LABEL_16;
    }
  }

  v37 = *(v53 + 72) * v29;
  v38 = v46;
  sub_1D332A828(v36[7] + v37, v46);
  v15 = v26;
  v39 = v55;
  sub_1D337F64C(v38, v26, v13);
  v55 = v39;
  if (!v39)
  {
    sub_1D33379F4(v38, type metadata accessor for RecentsItem);
    sub_1D33379F4(v26, type metadata accessor for RecentsItem);
    v18 = v45;
    sub_1D331E880(v45, &qword_1EC7612B0, qword_1D33E2830);
    sub_1D334C7C4(v13, v36[7] + v37);
    goto LABEL_3;
  }

  sub_1D33379F4(v38, type metadata accessor for RecentsItem);
  v59 = v55;
  v43 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1D33379F4(v26, type metadata accessor for RecentsItem);
    sub_1D331E880(v45, &qword_1EC7612B0, qword_1D33E2830);

    return;
  }

LABEL_24:
  v57 = 0;
  v58 = 0xE000000000000000;
  sub_1D33DEF24();
  MEMORY[0x1D38B6ED0](0xD00000000000001BLL, 0x80000001D33E6C30);
  sub_1D33DF004();
  MEMORY[0x1D38B6ED0](39, 0xE100000000000000);

  sub_1D33DF0D4();
  __break(1u);
}

uint64_t sub_1D3385ABC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D334CF9C;

  return sub_1D337FB9C(a1, v4, v5, v6);
}

uint64_t (*sub_1D3385B70())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1D3385AB4;
}

id ParticipantContactDetails.contact.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t ParticipantContactDetails.displayName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ParticipantContactDetails.displayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ParticipantContactDetails.shortName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ParticipantContactDetails.shortName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ParticipantContactDetails.initials.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t ParticipantContactDetails.initials.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t static ParticipantContactDetails.defaultMeContactDetails.getter@<X0>(void *a1@<X8>)
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_1D33DDB74();
  v6 = v5;

  *a1 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v4;
  a1[4] = v6;
  a1[5] = v4;
  a1[6] = v6;
  return swift_bridgeObjectRetain_n();
}

void sub_1D3385F00(char *a1@<X0>, void *a2@<X8>)
{
  v119 = a2;
  v132 = *MEMORY[0x1E69E9840];
  v4 = sub_1D33DDBC4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v117 = (&v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Participant(0);
  v121 = *(v7 - 1);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v109 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v114 = &v109 - v14;
  v122 = a1;
  v15 = sub_1D33875E8(a1);
  v16 = v15;
  v120 = v15;
  v118 = v2;
  if (v15)
  {
    v17 = v15;
    os_unfair_lock_lock(v2 + 8);
    v18 = *&v2[10]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v2 + 8);
    v19 = [v18 objectForKey_];

    if (v19)
    {
      v115 = v5;
      v116 = v4;
      v20 = *&v19[OBJC_IVAR____TtCC16CallsAppServices30ParticipantContactDetailsCacheP33_DBAE018A1E4F5BB55DEF9F156877BEDC12BoxedDetails_details];
      v21 = *&v19[OBJC_IVAR____TtCC16CallsAppServices30ParticipantContactDetailsCacheP33_DBAE018A1E4F5BB55DEF9F156877BEDC12BoxedDetails_details + 8];
      v22 = *&v19[OBJC_IVAR____TtCC16CallsAppServices30ParticipantContactDetailsCacheP33_DBAE018A1E4F5BB55DEF9F156877BEDC12BoxedDetails_details + 16];
      v112 = *&v19[OBJC_IVAR____TtCC16CallsAppServices30ParticipantContactDetailsCacheP33_DBAE018A1E4F5BB55DEF9F156877BEDC12BoxedDetails_details + 24];
      v23 = *&v19[OBJC_IVAR____TtCC16CallsAppServices30ParticipantContactDetailsCacheP33_DBAE018A1E4F5BB55DEF9F156877BEDC12BoxedDetails_details + 32];
      v111 = *&v19[OBJC_IVAR____TtCC16CallsAppServices30ParticipantContactDetailsCacheP33_DBAE018A1E4F5BB55DEF9F156877BEDC12BoxedDetails_details + 40];
      v24 = *&v19[OBJC_IVAR____TtCC16CallsAppServices30ParticipantContactDetailsCacheP33_DBAE018A1E4F5BB55DEF9F156877BEDC12BoxedDetails_details + 48];
      v113 = v20;
      v110 = v20;

      v25 = sub_1D33DE784();
      v26 = [v25 destinationIdIsTemporary];

      if (!v26 || !*&v122[v7[6] + 8])
      {

        v77 = v119;
        *v119 = v113;
        v77[1] = v21;
        v78 = v112;
        v77[2] = v22;
        v77[3] = v78;
        v79 = v111;
        v77[4] = v23;
        v77[5] = v79;
        v77[6] = v24;
        return;
      }

      v17 = v110;
      v16 = v120;
      v2 = v118;
      v5 = v115;
      v4 = v116;
    }
  }

  v27 = *&v122[v7[5]];
  if (v27)
  {
    v115 = v5;
    v116 = v4;
    v113 = v27;
    v28 = [v113 value];
    if (!v28)
    {
      sub_1D33DE7B4();
      v2 = v29;
      v28 = sub_1D33DE784();
    }

    LODWORD(v112) = [v28 destinationIdIsPseudonym];

    v30 = *&v122[v7[7]];
    v31 = v30 + 56;
    v32 = 1 << *(v30 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(v30 + 56);
    v35 = ((v32 + 63) >> 6);

    v36 = 0;
    while (1)
    {
      if (!v34)
      {
        while (1)
        {
          v37 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            __break(1u);
            goto LABEL_55;
          }

          if (v37 >= v35)
          {
            break;
          }

          v34 = *(v31 + 8 * v37);
          ++v36;
          if (v34)
          {
            v36 = v37;
            goto LABEL_20;
          }
        }

        v40 = v120;
        if (v112)
        {
          goto LABEL_24;
        }

        v80 = 0;
        goto LABEL_33;
      }

LABEL_20:
      sub_1D33879C0(*(v30 + 48) + v121[9] * (__clz(__rbit64(v34)) | (v36 << 6)), v13);
      sub_1D3387A24(v13, v10);
      v38 = *&v10[v7[5]];
      if (v38)
      {
        v39 = [v38 value];
        if (!v39)
        {
          sub_1D33DE7B4();
          v39 = sub_1D33DE784();
        }

        v2 = [v39 destinationIdIsPseudonym];

        if ((v2 & 1) == 0)
        {
          break;
        }
      }

      v34 &= v34 - 1;
      sub_1D3387A88(v10);
    }

    v107 = v114;
    sub_1D3387A24(v10, v114);
    v80 = *(v107 + v7[5]);
    if (v80)
    {
      v108 = v80;
      sub_1D3387A88(v107);
      v40 = v120;
      if (v112)
      {
        sub_1D332786C(v108, 0, 0, &v125);

LABEL_34:
        v65 = 0;
        v66 = 0;
        v64 = v125;
        v31 = v126;
        v7 = v127;
        v10 = v128;
        v34 = v129;
        v61 = v130;
        v63 = v131;
        if (v40)
        {
          goto LABEL_41;
        }

        goto LABEL_43;
      }

LABEL_33:
      v81 = v113;
      sub_1D332786C(v113, *&v122[v7[6]], *&v122[v7[6] + 8], &v125);

      goto LABEL_34;
    }

    sub_1D3387A88(v107);
    v40 = v120;
    if ((v112 & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_24:
    v41 = *&v122[v7[8]];
    if (v41)
    {
      v122 = v41;
      sub_1D332786C(v122, 0, 0, &v125);
      v42 = v126;
      v121 = v125;
      v43 = v127;
      v111 = v128;
      v110 = v129;
      v112 = v131;
      type metadata accessor for BundleClass();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v45 = objc_opt_self();
      v46 = [v45 bundleForClass_];
      sub_1D33DDB74();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C8, &unk_1D33E3B50);
      v47 = swift_allocObject();
      v109 = xmmword_1D33E2410;
      *(v47 + 16) = xmmword_1D33E2410;
      *(v47 + 56) = MEMORY[0x1E69E6158];
      v48 = sub_1D3387AE4();
      *(v47 + 64) = v48;
      *(v47 + 32) = v42;
      *(v47 + 40) = v43;
      v114 = v43;

      v49 = v110;
      v31 = sub_1D33DE7D4();
      v7 = v50;

      v51 = [v45 bundleForClass_];
      sub_1D33DDB74();

      v52 = swift_allocObject();
      *(v52 + 16) = v109;
      *(v52 + 56) = MEMORY[0x1E69E6158];
      *(v52 + 64) = v48;
      *(v52 + 32) = v111;
      *(v52 + 40) = v49;

      v10 = sub_1D33DE7D4();
      v34 = v53;

      v35 = MEMORY[0x1D38B7A70](v54);
      v2 = v117;
      sub_1D33DDBB4();
      sub_1D33DDB84();
      sub_1D33DDB94();
      if (qword_1EDEC0130 != -1)
      {
LABEL_55:
        swift_once();
      }

      v55 = qword_1EDEC1498;
      v56 = sub_1D33DDBA4();
      v57 = [v55 stringFromPersonNameComponents_];

      v58 = sub_1D33DE7B4();
      v60 = v59;

      (*(v115 + 8))(v2, v116);
      objc_autoreleasePoolPop(v35);
      v125 = v58;
      v126 = v60;
      sub_1D3328AF4();
      v61 = sub_1D33DED14();
      v63 = v62;

      v64 = 0;
      v65 = 0;
      v66 = 0;
      if (v120)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v106 = v113;
      sub_1D332786C(v113, *&v122[v7[6]], *&v122[v7[6] + 8], &v125);

      v64 = v125;
      v31 = v126;
      v7 = v127;
      v10 = v128;
      v34 = v129;
      v61 = v130;
      v63 = v131;
      if (v40)
      {
        v65 = 0;
        goto LABEL_42;
      }

      v66 = 0;
    }

    goto LABEL_43;
  }

  v67 = *&v2[4]._os_unfair_lock_opaque;
  v68 = [objc_opt_self() settingsWithContactStore_];
  v69 = [objc_allocWithZone(MEMORY[0x1E695D0C8]) initWithSettings_];
  v70 = [v69 descriptorForRequiredKeys];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_1D33E1DE0;
  *(v71 + 32) = v70;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761150, &qword_1D33E2530);
  v72 = sub_1D33DE8A4();

  v125 = 0;
  v64 = [v67 _crossPlatformUnifiedMeContactWithKeysToFetch_error_];

  v73 = v125;
  if (!v64)
  {
    v82 = v125;
    v83 = sub_1D33DDBE4();

    swift_willThrow();
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v84 = sub_1D33DE464();
    __swift_project_value_buffer(v84, qword_1EDEC1480);
    v85 = v83;
    v86 = sub_1D33DE444();
    v87 = sub_1D33DEAD4();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v125 = v89;
      *v88 = 136315138;
      v123 = v83;
      v90 = v83;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
      v91 = sub_1D33DE804();
      v93 = sub_1D3328B48(v91, v92, &v125);

      *(v88 + 4) = v93;
      _os_log_impl(&dword_1D331A000, v86, v87, "Could not fetch me card %s", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v89);
      MEMORY[0x1D38B81C0](v89, -1, -1);
      v94 = v88;
      v16 = v120;
      MEMORY[0x1D38B81C0](v94, -1, -1);
    }

    type metadata accessor for BundleClass();
    v95 = swift_getObjCClassFromMetadata();
    v96 = [objc_opt_self() bundleForClass_];
    v61 = sub_1D33DDB74();
    v63 = v97;

    v64 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
    swift_unknownObjectRelease();
    swift_bridgeObjectRetain_n();
    v65 = 0;
    v66 = 0;
    v34 = v63;
    v10 = v61;
    v7 = v63;
    v31 = v61;
    if (!v16)
    {
      goto LABEL_43;
    }

LABEL_41:
    v98 = v118;
    os_unfair_lock_lock(v118 + 8);
    v99 = *&v98[10]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v98 + 8);
    v100 = type metadata accessor for ParticipantContactDetailsCache.BoxedDetails();
    v101 = objc_allocWithZone(v100);
    v102 = &v101[OBJC_IVAR____TtCC16CallsAppServices30ParticipantContactDetailsCacheP33_DBAE018A1E4F5BB55DEF9F156877BEDC12BoxedDetails_details];
    *v102 = v64;
    *(v102 + 1) = v31;
    *(v102 + 2) = v7;
    *(v102 + 3) = v10;
    *(v102 + 4) = v34;
    *(v102 + 5) = v61;
    *(v102 + 6) = v63;
    v124.receiver = v101;
    v124.super_class = v100;
    v103 = v64;

    v104 = objc_msgSendSuper2(&v124, sel_init);
    [v99 setObject:v104 forKey:v120];

    v40 = v120;
LABEL_42:

    v66 = v65;
    goto LABEL_43;
  }

  v74 = v64;
  v75 = MEMORY[0x1D38B7A70](v73);
  sub_1D3328D7C(v64, &v125);
  objc_autoreleasePoolPop(v75);

  sub_1D3328AF4();
  v61 = sub_1D33DED14();
  v63 = v76;

  v122 = v74;

  swift_unknownObjectRelease();
  swift_bridgeObjectRetain_n();
  v65 = 1;
  v34 = v63;
  v10 = v61;
  v7 = v63;
  v31 = v61;
  v66 = 1;
  if (v16)
  {
    goto LABEL_41;
  }

LABEL_43:
  v105 = v119;
  *v119 = v64;
  v105[1] = v31;
  v105[2] = v7;
  v105[3] = v10;
  v105[4] = v34;
  v105[5] = v61;
  v105[6] = v63;
  if (v66)
  {
  }
}

uint64_t ParticipantContactDetails.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*v1)
  {
    sub_1D33DF2A4();
    v3 = v2;
    sub_1D33DEC84();
  }

  else
  {
    sub_1D33DF2A4();
  }

  sub_1D33DE824();
  sub_1D33DE824();

  return sub_1D33DE824();
}

uint64_t ParticipantContactDetails.hashValue.getter()
{
  v1 = *v0;
  sub_1D33DF284();
  sub_1D33DF2A4();
  if (v1)
  {
    v2 = v1;
    sub_1D33DEC84();
  }

  sub_1D33DE824();
  sub_1D33DE824();
  sub_1D33DE824();
  return sub_1D33DF2C4();
}

uint64_t sub_1D3386ECC()
{
  v1 = *v0;
  sub_1D33DF284();
  sub_1D33DF2A4();
  if (v1)
  {
    v2 = v1;
    sub_1D33DEC84();
  }

  sub_1D33DE824();
  sub_1D33DE824();
  sub_1D33DE824();
  return sub_1D33DF2C4();
}

uint64_t sub_1D3386F8C(uint64_t a1)
{
  v2 = *v1;
  if (*v1)
  {
    sub_1D33DF2A4();
    v3 = v2;
    sub_1D33DEC84();
  }

  else
  {
    sub_1D33DF2A4();
  }

  sub_1D33DE824();
  sub_1D33DE824();

  return sub_1D33DE824();
}

uint64_t sub_1D338704C(uint64_t a1)
{
  v2 = *v1;
  sub_1D33DF284();
  sub_1D33DF2A4();
  if (v2)
  {
    v3 = v2;
    sub_1D33DEC84();
  }

  sub_1D33DE824();
  sub_1D33DE824();
  sub_1D33DE824();
  return sub_1D33DF2C4();
}

uint64_t static ParticipantContactDetailsCache.faceTime.getter()
{
  if (qword_1EDEC0138 != -1)
  {
    swift_once();
  }
}

id sub_1D3387198()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D338723C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    os_unfair_lock_lock(Strong + 8);
    v4 = *&v3[10]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v3 + 8);
    [v4 removeAllObjects];
  }
}

uint64_t ParticipantContactDetailsCache.deinit()
{

  return v0;
}

uint64_t ParticipantContactDetailsCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t _s16CallsAppServices25ParticipantContactDetailsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (*a1)
  {
    if (!v6)
    {
      return 0;
    }

    v18 = *(a1 + 40);
    v19 = *(a1 + 32);
    v15 = *(a2 + 48);
    v16 = *(a2 + 40);
    v17 = *(a1 + 48);
    sub_1D331DA18(0, &qword_1EDEBFD50, 0x1E695CD58);
    v11 = v6;
    v12 = v2;
    v13 = sub_1D33DEC74();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v18 = *(a1 + 40);
    v19 = *(a1 + 32);
    v15 = *(a2 + 48);
    v16 = *(a2 + 40);
    v17 = *(a1 + 48);
    if (v6)
    {
      return 0;
    }
  }

  if ((v3 != v7 || v4 != v8) && (sub_1D33DF1B4() & 1) == 0 || (v5 != v9 || v19 != v10) && (sub_1D33DF1B4() & 1) == 0)
  {
    return 0;
  }

  if (v18 == v16 && v17 == v15)
  {
    return 1;
  }

  return sub_1D33DF1B4();
}

unint64_t sub_1D33874BC()
{
  result = qword_1EC7617A0;
  if (!qword_1EC7617A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7617A0);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1D338752C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D3387574(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D33875E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617D8, &unk_1D33E31D0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v36 - v6;
  v8 = type metadata accessor for Participant(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v36 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v36 - v17;
  v19 = *(a1 + *(v16 + 20));
  if (v19)
  {
    v20 = v19;
    v21 = [v20 value];
    v22 = sub_1D33DE7B4();
    v24 = v23;

    v38[0] = v22;
    v38[1] = v24;
    sub_1D3328AF4();
    sub_1D33DED04();
    v25 = sub_1D33DE784();
  }

  else
  {
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v26 = sub_1D33DE464();
    __swift_project_value_buffer(v26, qword_1EDEC1480);
    sub_1D33879C0(a1, v18);
    v27 = sub_1D33DE444();
    v28 = sub_1D33DEAD4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38[0] = v37;
      *v29 = 136315138;
      sub_1D33879C0(v18, v7);
      (*(v9 + 56))(v7, 0, 1, v8);
      sub_1D3387B38(v7, v5);
      if ((*(v9 + 48))(v5, 1, v8) == 1)
      {
        sub_1D3387BA8(v5);
        v30 = 0xE300000000000000;
        v31 = 7104878;
      }

      else
      {
        sub_1D3387A24(v5, v15);
        sub_1D33879C0(v15, v12);
        v31 = sub_1D33DE804();
        v30 = v32;
        sub_1D3387A88(v15);
      }

      sub_1D3387BA8(v7);
      sub_1D3387A88(v18);
      v33 = sub_1D3328B48(v31, v30, v38);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_1D331A000, v27, v28, "Participant has no handle. Unable to cache details: %s", v29, 0xCu);
      v34 = v37;
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x1D38B81C0](v34, -1, -1);
      MEMORY[0x1D38B81C0](v29, -1, -1);
    }

    else
    {

      sub_1D3387A88(v18);
    }

    return 0;
  }

  return v25;
}

uint64_t sub_1D33879C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Participant(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D3387A24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Participant(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D3387A88(uint64_t a1)
{
  v2 = type metadata accessor for Participant(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D3387AE4()
{
  result = qword_1EC7617D0;
  if (!qword_1EC7617D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7617D0);
  }

  return result;
}

uint64_t sub_1D3387B38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617D8, &unk_1D33E31D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D3387BA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617D8, &unk_1D33E31D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D3387C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t sub_1D3387F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t sub_1D33881C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
      sub_1D331DA18(0, &qword_1EDEBEEB0, 0x1E69D8AF8);

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

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  sub_1D331DA18(0, &qword_1EDEBEEB0, 0x1E69D8AF8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_1D33884B0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D33927E0(&qword_1EDEBFAD0, type metadata accessor for RecentsControllerBox, &unk_1D33E1CF0);
  sub_1D33DDED4();

  os_unfair_lock_lock((v3 + 72));
  v4 = *(v3 + 80);

  os_unfair_lock_unlock((v3 + 72));
  *a2 = v4;
}

BOOL sub_1D3388570(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  (*(a2 + 16))(&v4, a1);
  return v4 == 2;
}

uint64_t sub_1D33885C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D33927E0(&unk_1EDEBF810, type metadata accessor for RecentsLinkController, &protocol conformance descriptor for RecentsLinkController);
  sub_1D33DDED4();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D3388674(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D33927E0(&unk_1EDEBF810, type metadata accessor for RecentsLinkController, &protocol conformance descriptor for RecentsLinkController);
  sub_1D33DDEC4();
}

uint64_t RecentsDataSourceConfiguration.tabBarUnreadCallCountPublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7617E0, &unk_1D33E3210);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v20 - v2;
  v4 = sub_1D33DECB4();
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761730, &unk_1D33E2F60);
  v7 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7617F0, &unk_1D33E3220);
  v11 = *(v10 - 8);
  v21 = v10;
  v22 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  v25 = *(*(v0 + 40) + OBJC_IVAR____TtC16CallsAppServices25RecentsUnreadCountManager_tabBarUnreadCallCount);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761740, &unk_1D33E2F70);
  sub_1D334CB54(&unk_1EDEBEF70, &qword_1EC761740, &unk_1D33E2F70, MEMORY[0x1E695BFB0]);
  sub_1D33DE624();
  sub_1D33DECA4();
  v14 = [objc_opt_self() mainRunLoop];
  v25 = v14;
  v15 = sub_1D33DEC94();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  sub_1D331DA18(0, &unk_1EDEBEE50, 0x1E695DFD0);
  sub_1D334CB54(&qword_1EDEBF040, &unk_1EC761730, &unk_1D33E2F60, MEMORY[0x1E695BD38]);
  sub_1D3357A1C(&qword_1EDEBEE60, &unk_1EDEBEE50, 0x1E695DFD0, MEMORY[0x1E696A010]);
  v16 = v20;
  sub_1D33DE614();
  sub_1D331E880(v3, &unk_1EC7617E0, &unk_1D33E3210);

  (*(v23 + 8))(v6, v24);
  (*(v7 + 8))(v9, v16);
  sub_1D334CB54(&qword_1EDEBF000, &unk_1EC7617F0, &unk_1D33E3220, MEMORY[0x1E695BE50]);
  v17 = v21;
  v18 = sub_1D33DE5A4();
  (*(v22 + 8))(v13, v17);
  return v18;
}

uint64_t RecentsDataSourceConfiguration.tabBarUnreadCallCount.getter()
{

  sub_1D33DE4F4();

  return v1;
}

void *RecentsDataSourceConfiguration.metadataCache.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

id RecentsDataSourceConfiguration.init(conversationManager:conversations:callHistory:callHistoryUsingRecentsController:linksAndSuggestions:messages:coalescingStrategy:showsThirdParty:)@<X0>(void *a1@<X0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W5>, char a6@<W6>, unsigned __int8 *a7@<X7>, char **a8@<X8>, char a9)
{
  v91 = a5;
  v92 = a4;
  v93 = a8;
  LODWORD(v101) = a3;
  v99 = a1;
  v12 = sub_1D33DEB84();
  v95 = *(v12 - 8);
  v96 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v94 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D33DEB24();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1D33DE6A4();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = 0;
  v90 = *a7;
  if (a6)
  {
    v17 = sub_1D33DE2A4();
    v18 = sub_1D33DE294();
    *(&v126 + 1) = v17;
    v127 = &off_1F4EE4AF0;
    *&v125 = v18;
    type metadata accessor for VideoMessageInboxController(0);
    v19 = swift_allocObject();
    v20 = __swift_mutable_project_boxed_opaque_existential_1(&v125, v17);
    MEMORY[0x1EEE9AC00](v20);
    v22 = (&v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22);
    v16 = sub_1D3392828(*v22, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(&v125);
  }

  v100 = v16;
  if (a2)
  {
    v24 = objc_allocWithZone(type metadata accessor for ConversationDataSource(0));
    v98 = ConversationDataSource.init(conversationManager:)(v99);
  }

  else
  {
    v98 = 0;
  }

  v25 = 7;
  if (a9)
  {
    v25 = 15;
  }

  v89 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1D33E31E0;
  *(v26 + 32) = [objc_allocWithZone(MEMORY[0x1E69D8A68]) init];
  *(v26 + 40) = [objc_allocWithZone(MEMORY[0x1E69D8C30]) init];
  *(v26 + 48) = [objc_allocWithZone(MEMORY[0x1E69D8D08]) init];
  *(v26 + 56) = [objc_allocWithZone(MEMORY[0x1E69D8BF8]) init];
  v27 = objc_allocWithZone(MEMORY[0x1E69D8C38]);
  sub_1D331DA18(0, &unk_1EDEBEEA0, 0x1E69D8C40);
  v28 = sub_1D33DE8A4();

  v97 = [v27 initWithDataProviders_];

  v29 = sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
  sub_1D33DE684();
  *&v125 = MEMORY[0x1E69E7CC0];
  sub_1D33927E0(&qword_1EDEBEEE0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760F10, &qword_1D33E2E40);
  sub_1D334CB54(&qword_1EDEBEF20, &unk_1EC760F10, &qword_1D33E2E40, MEMORY[0x1E69E6328]);
  sub_1D33DED64();
  (*(v95 + 104))(v94, *MEMORY[0x1E69E8090], v96);
  v95 = v29;
  v96 = sub_1D33DEBD4();
  if (qword_1EDEBFC40 != -1)
  {
    swift_once();
  }

  v30 = qword_1EDEBFC50;
  v31 = type metadata accessor for RequestsHandler();
  *(&v126 + 1) = v31;
  v127 = &off_1F4EE7D80;
  *&v125 = v30;
  v32 = objc_allocWithZone(type metadata accessor for RecentsUnreadCountManager());
  v33 = __swift_mutable_project_boxed_opaque_existential_1(&v125, *(&v126 + 1));
  MEMORY[0x1EEE9AC00](v33);
  v35 = (&v88 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35);
  v37 = *v35;
  v38 = v30;
  v39 = sub_1D33930E8(v37, v32);
  __swift_destroy_boxed_opaque_existential_1Tm(&v125);
  v40 = 0;
  v41 = v100;
  if (v101)
  {
    v42 = v39;
    v43 = [objc_opt_self() callHistoryControllerWithCoalescingStrategy:v90 options:v89];
    v44 = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
    v45 = objc_opt_self();
    result = [v45 contactStore];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v47 = result;
    v48 = [v45 suggestedContactStore];
    v49 = objc_allocWithZone(MEMORY[0x1E69BDD08]);
    v50 = v43;
    v51 = [v49 initWithCallHistoryController:v50 callProviderManager:v44 contactStore:v47 suggestedContactStore:v48 metadataCache:v97];

    v52 = sub_1D33DEB94();
    [v51 addDelegate:v42 queue:v52];

    v53 = objc_allocWithZone(type metadata accessor for RecentCallProvider());
    v54 = sub_1D331EF10(v51);

    *(&v126 + 1) = v31;
    v127 = &off_1F4EE7D80;
    *&v125 = v38;
    type metadata accessor for RecentsControllerBox(0);
    v55 = swift_allocObject();
    v56 = __swift_mutable_project_boxed_opaque_existential_1(&v125, v31);
    MEMORY[0x1EEE9AC00](v56);
    v58 = (&v88 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v59 + 16))(v58);
    v60 = *v58;
    v61 = v38;
    v62 = v54;
    v39 = v42;
    v40 = sub_1D3393364(v62, v60, v55);
    __swift_destroy_boxed_opaque_existential_1Tm(&v125);
  }

  v95 = v39;
  swift_weakAssign();
  if (v91)
  {
    type metadata accessor for RecentsLinkController(0);
    swift_allocObject();
    v101 = RecentsLinkController.init(conversationManager:)(v99);

    v63 = v98;
    if (v98)
    {
LABEL_15:
      v64 = type metadata accessor for ConversationDataSource(0);
      v65 = sub_1D33927E0(&qword_1EDEBF558, type metadata accessor for ConversationDataSource, &unk_1D33E352C);
      v66 = v63;
      goto LABEL_18;
    }
  }

  else
  {
    v101 = 0;
    v63 = v98;
    if (v98)
    {
      goto LABEL_15;
    }
  }

  v66 = 0;
  v64 = 0;
  v65 = 0;
  v106 = 0;
  v107 = 0;
LABEL_18:
  v105 = v66;
  v108 = v64;
  v109 = v65;
  v67 = v101;
  if (v101)
  {
    v68 = type metadata accessor for RecentsLinkController(0);
    v69 = sub_1D33927E0(&unk_1EDEBF800, type metadata accessor for RecentsLinkController, &unk_1D33E3510);
    v67 = v101;
  }

  else
  {
    v68 = 0;
    v69 = 0;
    v111 = 0;
    v112 = 0;
  }

  v110 = v67;
  v113 = v68;
  v114 = v69;
  if (v41)
  {
    v70 = type metadata accessor for VideoMessageInboxController(0);
    v71 = sub_1D33927E0(&qword_1EDEBF308, type metadata accessor for VideoMessageInboxController, &unk_1D33E16E8);
    v72 = v41;
  }

  else
  {
    v72 = 0;
    v70 = 0;
    v71 = 0;
    v116 = 0;
    v117 = 0;
  }

  v115 = v72;
  v118 = v70;
  v119 = v71;
  if (v40)
  {
    v73 = type metadata accessor for RecentsControllerBox(0);
    v74 = sub_1D33927E0(&qword_1EDEBFAC8, type metadata accessor for RecentsControllerBox, &unk_1D33E1D0C);
    v75 = v40;
  }

  else
  {
    v75 = 0;
    v73 = 0;
    v74 = 0;
    v121 = 0;
    v122 = 0;
  }

  v120 = v75;
  v123 = v73;
  v124 = v74;
  v76 = v63;

  v94 = v40;

  v77 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 192; i += 40)
  {
    sub_1D331E818(&v104[2] + i + 8, &v125, &unk_1EC761800, &qword_1D33E3230);
    v102[0] = v125;
    v102[1] = v126;
    v103 = v127;
    if (*(&v126 + 1))
    {
      sub_1D331E6AC(v102, v104);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v77 = sub_1D33226D4(0, *(v77 + 2) + 1, 1, v77);
      }

      v80 = *(v77 + 2);
      v79 = *(v77 + 3);
      if (v80 >= v79 >> 1)
      {
        v77 = sub_1D33226D4((v79 > 1), v80 + 1, 1, v77);
      }

      *(v77 + 2) = v80 + 1;
      sub_1D331E6AC(v104, &v77[40 * v80 + 32]);
    }

    else
    {
      sub_1D331E880(v102, &unk_1EC761800, &qword_1D33E3230);
    }
  }

  v81 = v94;

  v82 = v101;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761800, &qword_1D33E3230);
  swift_arrayDestroy();
  result = swift_unknownObjectRelease();
  v83 = v93;
  v84 = v98;
  *v93 = v81;
  v83[1] = v84;
  v85 = v99;
  v83[2] = v100;
  v83[3] = v85;
  v87 = v95;
  v86 = v96;
  v83[4] = v77;
  v83[5] = v87;
  v83[6] = v82;
  v83[7] = v86;
  v83[8] = v97;
  return result;
}

Swift::Void __swiftcall RecentsDataSourceConfiguration.deleteAllMessages()()
{
  if (*(v0 + 16))
  {
    v1 = qword_1EDEBFD70;

    if (v1 != -1)
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
      _os_log_impl(&dword_1D331A000, v3, v4, "Delete all messages.", v5, 2u);
      MEMORY[0x1D38B81C0](v5, -1, -1);
    }

    VideoMessageInboxController.deleteAll()();
    v6 = sub_1D33DE444();
    v7 = sub_1D33DEAF4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D331A000, v6, v7, "Successfully deleted all messages.", v8, 2u);
      MEMORY[0x1D38B81C0](v8, -1, -1);
    }
  }

  else
  {
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v9 = sub_1D33DE464();
    __swift_project_value_buffer(v9, qword_1EDEC1480);
    oslog = sub_1D33DE444();
    v10 = sub_1D33DEAD4();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D331A000, oslog, v10, "Failed to delete all messages. No message inbox controller provided.", v11, 2u);
      MEMORY[0x1D38B81C0](v11, -1, -1);
    }
  }
}

uint64_t sub_1D3389A94(char a1)
{
  v2 = a1 & 1;
  v3 = sub_1D33DE664();
  v15 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D33DE6A4();
  v13 = *(v6 - 8);
  v14 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  aBlock[0] = v1;
  sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource, &protocol conformance descriptor for RecentsItemDataSource);
  sub_1D33DDED4();

  v10 = OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__forceLoaded;
  if (*(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__forceLoaded) != v2)
  {
    swift_getKeyPath();
    aBlock[0] = v1;
    sub_1D33DDED4();

    if (*(v1 + v10) == 1)
    {
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1D3393E64;
      aBlock[5] = v11;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D3329468;
      aBlock[3] = &block_descriptor_130;
      v12 = _Block_copy(aBlock);

      sub_1D33DE674();
      v16 = MEMORY[0x1E69E7CC0];
      sub_1D33927E0(&unk_1EDEBEF50, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761680, &unk_1D33E29E0);
      sub_1D334CB54(&qword_1EDEBEF30, &unk_1EC761680, &unk_1D33E29E0, MEMORY[0x1E69E6328]);
      sub_1D33DED64();
      MEMORY[0x1D38B7240](0, v8, v5, v12);
      _Block_release(v12);
      (*(v15 + 8))(v5, v3);
      (*(v13 + 8))(v8, v14);
    }
  }

  return result;
}

uint64_t sub_1D3389E48()
{
  swift_getKeyPath();
  sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource, &protocol conformance descriptor for RecentsItemDataSource);
  sub_1D33DDED4();

  return *(v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__forceLoaded);
}

void sub_1D3389EF0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1D338C8A4(0);
  }
}

uint64_t sub_1D3389F48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource, &protocol conformance descriptor for RecentsItemDataSource);
  sub_1D33DDED4();

  *a2 = *(v3 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__forceLoaded);
  return result;
}

uint64_t sub_1D3389FF8(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__forceLoaded);
  if (v3 == v2)
  {
    *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__forceLoaded) = v2;

    return sub_1D3389A94(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource, &protocol conformance descriptor for RecentsItemDataSource);
    sub_1D33DDEC4();
  }
}

uint64_t RecentsItemDataSource.loadingState.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource, &protocol conformance descriptor for RecentsItemDataSource);
  sub_1D33DDED4();

  *a1 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__loadingState);
  return result;
}

uint64_t sub_1D338A1E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource, &protocol conformance descriptor for RecentsItemDataSource);
  sub_1D33DDED4();

  *a2 = *(v3 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__loadingState);
  return result;
}

unsigned __int8 *sub_1D338A2CC(unsigned __int8 *result)
{
  if (*(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__loadingState) != *result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource, &protocol conformance descriptor for RecentsItemDataSource);
    sub_1D33DDEC4();
  }

  return result;
}

uint64_t RecentsItemDataSource.hasFinishedFirstLoadValue.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__hasFinishedFirstLoadValue);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__hasFinishedFirstLoadValue));
  sub_1D33DE4F4();
  os_unfair_lock_unlock(v1);
  return v3;
}

uint64_t RecentsItemDataSource.hasFinishedFirstLoadPublisher.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__hasFinishedFirstLoadValue);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__hasFinishedFirstLoadValue));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761828, &qword_1D33E3260);
  sub_1D334CB54(&qword_1EDEBEF80, &qword_1EC761828, &qword_1D33E3260, MEMORY[0x1E695BFB0]);
  v2 = sub_1D33DE5A4();
  os_unfair_lock_unlock(v1);
  return v2;
}

uint64_t RecentsItemDataSource.hasFinishedFirstLoad.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D33DE574();

  return v1;
}

uint64_t sub_1D338A550@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D33DE574();

  *a2 = v4;
  return result;
}

uint64_t sub_1D338A5D0(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1D33DE584();
}

uint64_t RecentsItemDataSource.hasFinishedFirstLoad.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_1D33DE584();
}

uint64_t (*RecentsItemDataSource.hasFinishedFirstLoad.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1D33DE564();
  return sub_1D338A750;
}

void sub_1D338A750(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t RecentsItemDataSource.$hasFinishedFirstLoad.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761830, &qword_1D33E32B0);
  sub_1D33DE544();
  return swift_endAccess();
}

uint64_t sub_1D338A82C(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761830, &qword_1D33E32B0);
  sub_1D33DE544();
  return swift_endAccess();
}

uint64_t sub_1D338A8A4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761838, &qword_1D33E32B8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761830, &qword_1D33E32B0);
  sub_1D33DE554();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}