uint64_t sub_1E4695BE8(uint64_t __dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = &__src[-__dst];
  v9 = &__src[-__dst + 15];
  if (&__src[-__dst] >= 0)
  {
    v9 = &__src[-__dst];
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
    if (a4 != __dst || __dst + 16 * v10 <= a4)
    {
      __dst = memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 >= 16 && v6 < v5)
    {
      while (1)
      {
        v15 = 100 * *v6;
        if ((*v6 * 100) >> 64 != v15 >> 63)
        {
          __break(1u);
          goto LABEL_49;
        }

        v16 = v6[1];
        v17 = __OFADD__(v15, v16);
        v18 = v15 + v16;
        if (v17)
        {
          goto LABEL_50;
        }

        v19 = 100 * *v4;
        if ((*v4 * 100) >> 64 != v19 >> 63)
        {
          goto LABEL_52;
        }

        v20 = *(v4 + 1);
        v17 = __OFADD__(v19, v20);
        v21 = v19 + v20;
        if (v17)
        {
          goto LABEL_54;
        }

        if (v18 >= v21)
        {
          break;
        }

        v22 = v6;
        v23 = v7 == v6;
        v6 += 2;
        if (!v23)
        {
          goto LABEL_20;
        }

LABEL_21:
        v7 += 2;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_23;
        }
      }

      v22 = v4;
      v23 = v7 == v4;
      v4 += 16;
      if (v23)
      {
        goto LABEL_21;
      }

LABEL_20:
      *v7 = *v22;
      goto LABEL_21;
    }

LABEL_23:
    v6 = v7;
    goto LABEL_44;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    __dst = memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 < 16 || v6 <= v7)
  {
LABEL_44:
    v34 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
    if (v6 != v4 || v6 >= &v4[v34 & 0xFFFFFFFFFFFFFFF0])
    {
      memmove(v6, v4, 16 * (v34 >> 4));
    }

    return 1;
  }

LABEL_29:
  v24 = v6 - 2;
  v5 -= 16;
  v25 = v14;
  while (1)
  {
    v26 = *(v25 - 2);
    v25 -= 16;
    v27 = 100 * v26;
    if ((v26 * 100) >> 64 != (100 * v26) >> 63)
    {
      break;
    }

    v28 = *(v14 - 1);
    v17 = __OFADD__(v27, v28);
    v29 = v27 + v28;
    if (v17)
    {
      goto LABEL_51;
    }

    v30 = *(v6 - 2);
    v31 = 100 * v30;
    if ((v30 * 100) >> 64 != (100 * v30) >> 63)
    {
      goto LABEL_53;
    }

    v32 = *(v6 - 1);
    v17 = __OFADD__(v31, v32);
    v33 = v31 + v32;
    if (v17)
    {
      goto LABEL_55;
    }

    if (v29 < v33)
    {
      if (v5 + 16 != v6)
      {
        *v5 = *v24;
      }

      if (v14 <= v4 || (v6 -= 2, v24 <= v7))
      {
        v6 = v24;
        goto LABEL_44;
      }

      goto LABEL_29;
    }

    if (v5 + 16 != v14)
    {
      *v5 = *v25;
    }

    v5 -= 16;
    v14 = v25;
    if (v25 <= v4)
    {
      v14 = v25;
      goto LABEL_44;
    }
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return __dst;
}

void sub_1E4695E90(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = sub_1E4709CCC();
  v8 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v9);
  v51 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v50 = &v41 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_63;
  }

  v52 = a3;
  v17 = (a2 - a1) / v15;
  v56 = a1;
  v55 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v19;
    if (v19 >= 1)
    {
      v29 = -v15;
      v44 = a4;
      v45 = (v8 + 16);
      v42 = (v8 + 8);
      v43 = a1;
      v30 = a4 + v19;
      v31 = v52;
      v46 = v29;
      do
      {
        v41 = v28;
        v32 = a2 + v29;
        v48 = a2 + v29;
        v49 = v28;
        v47 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v56 = a2;
            v28 = v41;
            goto LABEL_59;
          }

          v34 = v31;
          v52 = v31 + v29;
          v35 = v30 + v29;
          v36 = *v45;
          v37 = v50;
          v38 = v53;
          (*v45)(v50, v30 + v29, v53);
          v39 = v51;
          v36(v51, v32, v38);
          sub_1E4698194(&qword_1EE2AEBE0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
          LOBYTE(v36) = sub_1E470AEEC();
          v40 = *v42;
          (*v42)(v39, v38);
          v40(v37, v38);
          if (v36)
          {
            break;
          }

          v31 = v52;
          if (v34 < v30 || v52 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            v32 = v48;
            a1 = v43;
          }

          else
          {
            v32 = v48;
            a1 = v43;
            if (v34 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v49 = v35;
          v30 = v35;
          v33 = v35 > v44;
          v29 = v46;
          a2 = v47;
          if (!v33)
          {
            v28 = v49;
            goto LABEL_58;
          }
        }

        v31 = v52;
        if (v34 < v47 || v52 >= v47)
        {
          a2 = v48;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v43;
        }

        else
        {
          a2 = v48;
          a1 = v43;
          if (v34 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v28 = v49;
        v29 = v46;
      }

      while (v30 > v44);
    }

LABEL_58:
    v56 = a2;
LABEL_59:
    v54 = v28;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v49 = a4 + v18;
    v54 = a4 + v18;
    if (v18 >= 1 && a2 < v52)
    {
      v47 = *(v8 + 16);
      v48 = v8 + 16;
      v45 = v15;
      v46 = (v8 + 8);
      do
      {
        v21 = v50;
        v22 = v53;
        v23 = v47;
        (v47)(v50, a2, v53);
        v24 = v51;
        v23(v51, a4, v22);
        sub_1E4698194(&qword_1EE2AEBE0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
        LOBYTE(v23) = sub_1E470AEEC();
        v25 = *v46;
        (*v46)(v24, v22);
        v25(v21, v22);
        if (v23)
        {
          v26 = v45;
          if (a1 < a2 || a1 >= &v45[a2])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v26;
        }

        else
        {
          v26 = v45;
          v27 = &v45[a4];
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v55 = v27;
          a4 += v26;
        }

        a1 += v26;
        v56 = a1;
      }

      while (a4 < v49 && a2 < v52);
    }
  }

  sub_1E46B3E80(&v56, &v55, &v54);
}

uint64_t sub_1E4696484(void *a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), unsigned __int8 *a4, void *a5, void (*a6)(void), uint64_t a7)
{
  v8 = v7;
  v126 = a7;
  v125 = a6;
  v128 = a5;
  v130 = a3;
  v136 = a2;
  v139 = a1;
  v10 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v135 = v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v140 = v119 - v15;
  v16 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v132 = v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v134 = v119 - v21;
  v22 = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v129 = v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v127 = v119 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v138 = v119 - v30;
  v124 = sub_1E4709D7C();
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124, v31);
  v122 = v119 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_1E4709CCC();
  v131 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141, v33);
  v119[0] = v119 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v137 = v119 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v133 = v119 - v40;
  v41 = sub_1E470B33C();
  MEMORY[0x1EEE9AC00](v41, v42);
  v43 = sub_1E470A61C();
  MEMORY[0x1EEE9AC00](v43 - 8, v44);
  v45 = sub_1E470B35C();
  v46 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v47);
  v49 = v119 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = *a4;
  v121 = *(a4 + 1);
  v119[1] = sub_1E45E2DE8(0, &qword_1EE2ACCD0, 0x1E69E9610);
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0;
  (*(v46 + 104))(v49, *MEMORY[0x1E69E8098], v45);
  sub_1E470A5FC();
  *&aBlock = MEMORY[0x1E69E7CC0];
  sub_1E4698194(&unk_1EE2ACCE0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1E4650534(&unk_1ECF74940, &qword_1E471BAE0);
  v50 = v138;
  sub_1E45E2F14(&unk_1EE2ACCF0, &unk_1ECF74940, &qword_1E471BAE0, MEMORY[0x1E69E6328]);
  sub_1E470B4CC();
  v51 = v133;
  v52 = v139;
  *(v7 + 144) = sub_1E470B39C();
  v53 = v126;
  v54 = v125;
  v125();
  v55 = v122;
  sub_1E4709CDC();
  sub_1E4709CEC();
  (*(v123 + 8))(v55, v124);
  *(v7 + 96) = v120;
  *(v7 + 120) = v54;
  *(v7 + 128) = v53;
  v56 = v128;
  *(v7 + 104) = v121;
  *(v7 + 112) = v56;
  v57 = v52[3];
  v58 = v52[4];
  sub_1E465057C(v52, v57);
  v59 = *(v58 + 8);

  v60 = v56;
  v59(&aBlock, v57, v58);
  *(v7 + 136) = *(&aBlock + 1);
  v61 = v136;
  sub_1E4658550(v136, v8 + 56);
  v62 = v61[3];
  v63 = v61[4];
  sub_1E465057C(v61, v62);
  v64 = (*(v63 + 40))(v62, v63);
  (*(*v64 + 184))(v64);

  v65 = v130;
  *(v8 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_transactionProvider) = v130;
  v66 = v127;
  sub_1E465E0B0(v50, v127, &qword_1ECF74A00, &unk_1E471D5B0);
  sub_1E4650534(&unk_1ECF74D98, &qword_1E471D8A0);
  swift_allocObject();
  v67 = v129;
  sub_1E465E0B0(v66, v129, &qword_1ECF74A00, &unk_1E471D5B0);
  swift_unknownObjectRetain();
  v68 = sub_1E46766E4(v67);
  sub_1E465E050(v66, &qword_1ECF74A00, &unk_1E471D5B0);
  *(v8 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_lastModelChange) = v68;
  type metadata accessor for ObservableTransaction(0);
  v69 = swift_allocObject();
  swift_getObjectType();
  swift_unknownObjectRetain();
  *(v8 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_lastModelChangeObservableTransaction) = sub_1E4669F28(0xD000000000000038, 0x80000001E4718D20, v65, v69);
  *(v8 + 152) = 0;
  v70 = *(v8 + 112);
  v71 = sub_1E470AF0C();
  v72 = [v70 integerForKey_];

  sub_1E46A2DA0(v72, &aBlock);
  if (v143 == 1)
  {
    v73 = v131;
    v74 = v134;
    v131[7](v134, 1, 1, v141);
  }

  else
  {
    v147 = aBlock;
    v74 = v134;
    sub_1E46A34A8(v134);
    v73 = v131;
  }

  v75 = *(v8 + 112);
  v76 = sub_1E470AF0C();
  v131 = [v75 integerForKey_];

  v77 = type metadata accessor for ReadingHistory.Streak(0);
  v78 = *(*(v77 - 8) + 56);
  v79 = v140;
  v78(v140, 1, 1, v77);
  v80 = v132;
  sub_1E465E0B0(v74, v132, &unk_1ECF74CD0, &qword_1E471B620);
  v81 = (v73[6])(v80, 1, v141);
  v82 = v137;
  if (v81 == 1)
  {
    sub_1E465E050(v80, &unk_1ECF74CD0, &qword_1E471B620);
  }

  else
  {
    sub_1E465E050(v79, &qword_1ECF74C40, &unk_1E471C980);
    v83 = v73[4];
    v130 = v78;
    v84 = v119[0];
    v85 = v80;
    v86 = v51;
    v87 = v82;
    v88 = v73;
    v89 = v141;
    (v83)(v119[0], v85, v141);
    v90 = v89;
    v73 = v88;
    v82 = v87;
    v51 = v86;
    (v83)(v140, v84, v90);
    v79 = v140;
    *(v140 + *(v77 + 20)) = v131;
    v130(v79, 0, 1, v77);
  }

  v91 = v135;
  v92 = v138;
  sub_1E46A38A8(v51, v135);
  v93 = v8 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state;
  sub_1E4697B6C(v92, v8 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state, type metadata accessor for ReadingHistoryModel);
  v94 = type metadata accessor for ReadingHistoryDataStore.State(0);
  sub_1E465E0B0(v79, v93 + v94[5], &qword_1ECF74C40, &unk_1E471C980);
  (v73[2])(v93 + v94[6], v82, v141);
  sub_1E465E0B0(v91, v93 + v94[7], &qword_1ECF74C40, &unk_1E471C980);
  v95 = *(v8 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_lastModelChange) + *(**(v8 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_lastModelChange) + 128);
  swift_beginAccess();
  *(v95 + 8) = &protocol witness table for ObservableTransaction;
  swift_unknownObjectWeakAssign();
  v96 = v139[3];
  v97 = v139[4];
  sub_1E465057C(v139, v96);
  (*(v97 + 16))(&aBlock, v96, v97);
  v98 = v144;
  v99 = v145;
  sub_1E465057C(&aBlock, v144);
  v100 = v73;
  v101 = swift_allocObject();
  swift_weakInit();
  v102 = *(v99 + 1);
  swift_retain_n();

  v102(v8, sub_1E46980A4, v101, v98, v99);

  sub_1E4658A0C(&aBlock);
  v103 = *(v8 + 80);
  v104 = *(v8 + 88);
  v105 = sub_1E465057C((v8 + 56), v103);
  v106 = *(v103 - 8);
  v107 = MEMORY[0x1EEE9AC00](v105, v105);
  v109 = v119 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v106 + 16))(v109, v107);
  v110 = (*(v104 + 40))(v103, v104);
  (*(v106 + 8))(v109, v103);
  v111 = swift_allocObject();
  swift_weakInit();
  v112 = *(v110 + 16);
  v113 = swift_allocObject();
  v113[2] = v110;
  v113[3] = sub_1E46980AC;
  v113[4] = v111;
  v113[5] = v8;
  v114 = swift_allocObject();
  *(v114 + 16) = sub_1E4698424;
  *(v114 + 24) = v113;
  v145 = sub_1E467A478;
  v146 = v114;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v143 = sub_1E46679F4;
  v144 = &unk_1F5E65158;
  v115 = _Block_copy(&aBlock);

  dispatch_sync(v112, v115);
  _Block_release(v115);
  LOBYTE(v112) = swift_isEscapingClosureAtFileLocation();

  if (v112)
  {
    __break(1u);
  }

  else
  {
    sub_1E465E050(v135, &qword_1ECF74C40, &unk_1E471C980);
    sub_1E465E050(v140, &qword_1ECF74C40, &unk_1E471C980);
    sub_1E465E050(v134, &unk_1ECF74CD0, &qword_1E471B620);
    sub_1E465E050(v138, &qword_1ECF74A00, &unk_1E471D5B0);
    v117 = v100[1];
    v118 = v141;
    (v117)(v137, v141);
    (v117)(v133, v118);
    sub_1E4658A0C(v136);
    sub_1E4658A0C(v139);
    return v8;
  }

  return result;
}

void sub_1E46973D0()
{
  v1 = *(sub_1E4709CCC() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v0 + 16);
  v5 = (v0 + ((*(v1 + 64) + v2 + v3) & ~v2));

  sub_1E468D3CC(v4, (v0 + v3), v5);
}

uint64_t sub_1E4697460(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E4697478(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E469750C()
{
  v1 = *(sub_1E4709CCC() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E468E950(v3, v0 + v2, v4);
}

uint64_t sub_1E46977FC(uint64_t a1)
{
  result = type metadata accessor for ReadingHistoryDataStore.State(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReadingHistoryDataStore.Config(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ReadingHistoryDataStore.Config(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1E46979EC(uint64_t a1)
{
  type metadata accessor for ReadingHistoryModel(319);
  if (v1 <= 0x3F)
  {
    sub_1E45E3124(319);
    if (v2 <= 0x3F)
    {
      sub_1E4709CCC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E4697A98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 80);
  v4 = *(v0 + 48);
  v6 = *(v0 + 32);
  v7[0] = v4;
  *(v7 + 10) = *(v0 + 58);
  return sub_1E4682A84(v1, v2, &v6, v3);
}

uint64_t sub_1E4697AD4(__int128 *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = a1[1];
  v9 = *a1;
  v10[0] = v7;
  *(v10 + 10) = *(a1 + 26);
  return sub_1E4682C74(&v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1E4697B14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 73);
  v5 = *(v0 + 48);
  v7[0] = *(v0 + 32);
  v7[1] = v5;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  return v1(v7);
}

uint64_t sub_1E4697B6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4697BD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1E4650534(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E4697C3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4697CA4(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1E465E050(a1, &qword_1ECF74A00, &unk_1E471D5B0);
  return sub_1E465E0B0(v3, a1, &qword_1ECF74A00, &unk_1E471D5B0);
}

void sub_1E4697D0C()
{
  v1 = *(sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1E468453C(v3, v0 + v2, v4);
}

BOOL sub_1E4697DA8(void *a1)
{
  v2 = a1[1];
  if (*a1 == v1[2] && v2 == v1[3])
  {
    return 0;
  }

  return *a1 != v1[4] || v2 != v1[5];
}

uint64_t sub_1E4697DD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4697E40()
{
  v1 = *(sub_1E4709CCC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_1E4692468((v0 + v2), v4, v6, v7);
}

uint64_t sub_1E4697EFC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E4697F3C()
{
  v1 = *(sub_1E4650534(&qword_1ECF74D90, &unk_1E471C8F0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E4682B78(v3, v4, v0 + v2, v5);
}

uint64_t sub_1E4697FD8()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1E46980B4()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E46980FC()
{
  v1 = *(sub_1E4650534(&qword_1ECF74D90, &unk_1E471C8F0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E468C030(v0 + v2, v3);
}

uint64_t sub_1E4698194(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E46981DC(uint64_t a1)
{
  v3 = *(v1 + 16);
  result = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  *(a1 + *(result + 44)) = *(v3 + *(result + 44));
  return result;
}

uint64_t sub_1E4698220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingHistoryModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E46982AC()
{
  result = qword_1ECF74DC8;
  if (!qword_1ECF74DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74DC8);
  }

  return result;
}

id static OS_os_log.crdtModelSync.getter()
{
  if (qword_1EE2ADDE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE2ADDF0;

  return v1;
}

uint64_t sub_1E4698488()
{
  sub_1E46984F4();
  result = sub_1E470B46C();
  qword_1EE2ADDF0 = result;
  return result;
}

unint64_t sub_1E46984F4()
{
  result = qword_1EE2ACCB8;
  if (!qword_1EE2ACCB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2ACCB8);
  }

  return result;
}

uint64_t sub_1E4698620(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1E470A0BC();
  v4 = sub_1E470B2CC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1E45E0000, v3, v4, "CRDTModelFileSyncTransport: About to disconnect", v5, 2u);
    MEMORY[0x1E6917530](v5, -1, -1);
  }

  v6 = *(v2 + 24);
  v7 = *(v6 + 40);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1E469CC8C;
  *(v9 + 24) = v8;
  v12[4] = sub_1E467A478;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1E46679F4;
  v12[3] = &unk_1F5E65860;
  v10 = _Block_copy(v12);

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if ((v7 & 1) == 0)
  {
    return sub_1E469AE30(sub_1E469C2DC, &unk_1F5E655B8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4698820(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1E470A0BC();
  v4 = sub_1E470B2CC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1E45E0000, v3, v4, "CRDTModelFileSyncTransport: About to reconnect", v5, 2u);
    MEMORY[0x1E6917530](v5, -1, -1);
  }

  v6 = *(v2 + 24);
  v7 = *(v6 + 40);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = 1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1E469C374;
  *(v9 + 24) = v8;
  v12[4] = sub_1E467A478;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1E46679F4;
  v12[3] = &unk_1F5E65770;
  v10 = _Block_copy(v12);

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {
    sub_1E469961C();
    return sub_1E469AE30(sub_1E469C16C, &unk_1F5E654A0);
  }

  return result;
}

uint64_t sub_1E4698A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E4698A80();
  }

  return result;
}

uint64_t sub_1E4698A80()
{
  v1 = v0;
  v2 = v0[3];
  v3 = *v0;
  ObjectType = swift_getObjectType();
  result = (*(v2 + 8))(ObjectType, v2);
  if (result)
  {
    v6 = sub_1E470A0BC();
    v7 = sub_1E470B2CC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1E45E0000, v6, v7, "CRDTModelFileSyncTransport: assume connection is healthy", v8, 2u);
      MEMORY[0x1E6917530](v8, -1, -1);
    }

    v9 = v1[5];
    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    *(v10 + 24) = v3;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1E469CC88;
    *(v11 + 24) = v10;
    v14[4] = sub_1E467A478;
    v14[5] = v11;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_1E46679F4;
    v14[3] = &unk_1F5E65950;
    v12 = _Block_copy(v14);

    dispatch_sync(v9, v12);
    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1E4698CA0(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1E470A0BC();
  v4 = sub_1E470B2CC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1E45E0000, v3, v4, "CRDTModelFileSyncTransport: disconnected", v5, 2u);
    MEMORY[0x1E6917530](v5, -1, -1);
  }

  v6 = *(v2 + 40);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1E469C2E0;
  *(v7 + 24) = v2;
  v10[4] = sub_1E465DE98;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1E46679F4;
  v10[3] = &unk_1F5E65608;
  v8 = _Block_copy(v10);

  dispatch_sync(v6, v8);
  _Block_release(v8);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void sub_1E4698E50(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    sub_1E4698F48(a1, *(a1 + 56));
    v2 = *(a1 + 56) + *(a1 + 56);
    *(a1 + 56) = v2;
    if (v2 > 3600.0)
    {
      *(a1 + 56) = 0x40AC200000000000;
    }
  }

  else
  {
    oslog = sub_1E470A0BC();
    v3 = sub_1E470B2CC();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1E45E0000, oslog, v3, "CRDTModelFileSyncTransport: not reconnecting automatically", v4, 2u);
      MEMORY[0x1E6917530](v4, -1, -1);
    }
  }
}

void sub_1E4698F48(uint64_t a1, double a2)
{
  v3 = v2;
  v5 = sub_1E470A0BC();
  v6 = sub_1E470B2CC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = a2;
    _os_log_impl(&dword_1E45E0000, v5, v6, "CRDTModelFileSyncTransport: attempt auto-reconnect in %f sec", v7, 0xCu);
    MEMORY[0x1E6917530](v7, -1, -1);
  }

  v8 = *(v3 + 64);
  if (v8 || (v9 = swift_allocObject(), swift_weakInit(), v10 = objc_allocWithZone(MEMORY[0x1E698F548]), v22 = sub_1E469C2E8, v23 = v9, v18 = MEMORY[0x1E69E9820], v19 = 1107296256, v20 = sub_1E469C1B8, v21 = &unk_1F5E65658, v11 = _Block_copy(&v18), , v12 = sub_1E470AF0C(), v13 = [v10 initWithNotifyBlock:v11 blockDescription:v12], v12, _Block_release(v11), , , v14 = *(v3 + 64), *(v3 + 64) = v13, v14, (v8 = *(v3 + 64)) != 0))
  {
    [v8 setCoalescingDelay_];
    v15 = *(v3 + 64);
    if (v15)
    {
      v22 = nullsub_60;
      v23 = 0;
      v18 = MEMORY[0x1E69E9820];
      v19 = 1107296256;
      v20 = sub_1E46C4624;
      v21 = &unk_1F5E65680;
      v16 = _Block_copy(&v18);
      v17 = v15;
      [v17 signalWithCompletion_];
      _Block_release(v16);
    }
  }
}

uint64_t sub_1E46991C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1E470A0DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v4 + 16))(v7, Strong + OBJC_IVAR____TtC13BookDataStoreP33_8BA727A02A5A0740DF907C88E66860CE27_TransportConnectionManager_logger, v3);

    v9 = sub_1E470A0BC();
    v10 = sub_1E470B2CC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1E45E0000, v9, v10, "CRDTModelFileSyncTransport: About to auto-reconnect", v11, 2u);
      MEMORY[0x1E6917530](v11, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E4699388();
  }

  return result;
}

uint64_t sub_1E4699388()
{
  v1 = *(v0 + 40);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E469C300;
  *(v2 + 24) = v0;
  v7[4] = sub_1E467A478;
  v7[5] = v2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1E46679F4;
  v7[3] = &unk_1F5E656F8;
  v3 = _Block_copy(v7);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v5 + 40))(ObjectType, v5);
  }

  return result;
}

void sub_1E46994E4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1E470A0BC();
  v4 = sub_1E470B29C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1E45E0000, v3, v4, "CRDTModelFileSyncTransport: reconnected", v5, 2u);
    MEMORY[0x1E6917530](v5, -1, -1);
  }

  v6 = *(v2 + 32);
  if (v6)
  {
    v9[4] = nullsub_60;
    v9[5] = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1E46C4624;
    v9[3] = &unk_1F5E65590;
    v7 = _Block_copy(v9);
    v8 = v6;
    [v8 signalWithCompletion_];
    _Block_release(v7);
  }
}

uint64_t sub_1E469961C()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[5];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1E469C384;
  *(v5 + 24) = v4;
  v8[4] = sub_1E467A478;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1E46679F4;
  v8[3] = &unk_1F5E657E8;
  v6 = _Block_copy(v8);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4699798()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC13BookDataStoreP33_8BA727A02A5A0740DF907C88E66860CE27_TransportConnectionManager_logger;
  v2 = sub_1E470A0DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for _TransportConnectionManager(uint64_t a1)
{
  result = qword_1EE2ACF68;
  if (!qword_1EE2ACF68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E46998A8(uint64_t a1)
{
  result = sub_1E470A0DC();
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

uint64_t sub_1E4699974(uint64_t a1)
{
  result = sub_1E470ACBC();
  if (v2 <= 0x3F)
  {
    result = sub_1E4709B9C();
    if (v3 <= 0x3F)
    {
      result = sub_1E470A0DC();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1E4699B44(char a1)
{
  v3 = sub_1E470A5DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E470A61C();
  v8 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v9);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v1 + *(*v1 + 152));
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1E469CC24;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = &unk_1F5E659A0;
  v13 = _Block_copy(aBlock);

  sub_1E470A5FC();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1E469C32C(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E45E2EC0(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E470B4CC();
  MEMORY[0x1E69160A0](0, v11, v7, v13);
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v16);
}

uint64_t sub_1E4699E18(uint64_t result, char a2)
{
  v2 = *(*result + 184);
  if (*(result + v2) != (a2 & 1))
  {
    *(result + v2) = a2 & 1;
    if (*(result + *(*result + 168)))
    {

      sub_1E470AB4C();
    }
  }

  return result;
}

char *sub_1E4699EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = a3;
  v26 = a2;
  v23 = *v3;
  v24 = a1;
  v5 = sub_1E470B33C();
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = sub_1E470B35C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E470A61C();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  *(v3 + 3) = 0;
  swift_unknownObjectWeakInit();
  v14 = &v4[*(*v4 + 144)];
  *v14 = 0;
  *(v14 + 1) = 0;
  v22 = *(*v3 + 152);
  v21 = sub_1E465E1DC();
  sub_1E470A60C();
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8098], v7);
  v27 = MEMORY[0x1E69E7CC0];
  sub_1E469C32C(&unk_1EE2ACCE0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1E4650534(&unk_1ECF74940, &qword_1E471BAE0);
  sub_1E45E2EC0(&unk_1EE2ACCF0, &unk_1ECF74940, &qword_1E471BAE0);
  sub_1E470B4CC();
  *&v3[v22] = sub_1E470B39C();
  *&v3[*(*v3 + 160)] = MEMORY[0x1E69E7CD0];
  *&v3[*(*v3 + 168)] = 0;
  v3[*(*v3 + 176)] = 0;
  v3[*(*v3 + 184)] = 0;
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_1E470B5CC();

  v27 = 0xD000000000000012;
  v28 = 0x80000001E4718540;
  v15 = (*(*(v23 + 88) + 8))(*(v23 + 80));
  MEMORY[0x1E6915D10](v15);

  sub_1E470A0CC();
  *(v3 + 4) = v24;
  v16 = *(*v3 + 136);
  v17 = sub_1E4709B9C();
  (*(*(v17 - 8) + 32))(&v4[v16], v25, v17);
  v18 = *(*v4 + 128);
  v19 = sub_1E470ACBC();
  (*(*(v19 - 8) + 32))(&v4[v18], v26, v19);
  return v4;
}

uint64_t sub_1E469A35C(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + *(*v2 + 144));
  v6 = *v4;
  v5 = v4[1];
  *v4 = a1;
  v4[1] = a2;
  sub_1E45EB5D8(v6, v5);

  sub_1E469A3C0();
}

void sub_1E469A3C0()
{
  v1 = v0;
  v2 = *v0;
  v55 = v2;
  v3 = sub_1E470AB3C();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E4709B9C();
  v52 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2[10];
  v12 = v2[12];
  v13 = *(v12 + 8);
  v14 = sub_1E470ACBC();
  v15 = sub_1E470B47C();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v2[21];
  if (*(v1 + v18))
  {

    v19 = sub_1E470A0BC();
    v20 = sub_1E470B2CC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v56[0] = v22;
      *v21 = 136315138;
      if (*(v1 + *(*v1 + 176)))
      {
        v23 = 0x657463656E6E6F63;
      }

      else
      {
        v23 = 0x697463656E6E6F63;
      }

      v24 = v18;
      if (*(v1 + *(*v1 + 176)))
      {
        v25 = 0xE900000000000064;
      }

      else
      {
        v25 = 0xEA0000000000676ELL;
      }

      v26 = sub_1E4654D04(v23, v25, v56);
      v18 = v24;

      *(v21 + 4) = v26;
      _os_log_impl(&dword_1E45E0000, v19, v20, "CRDTModelFileSyncTransport reconnect: Already %s", v21, 0xCu);
      sub_1E4658A0C(v22);
      MEMORY[0x1E6917530](v22, -1, -1);
      MEMORY[0x1E6917530](v21, -1, -1);
    }

    if (*(v1 + v18))
    {
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v44[1] = v13;
    v45 = v44 - v17;
    v46 = v7;
    v47 = v10;
    v48 = v6;
    v49 = v12;
    v50 = v18;
    v51 = v14;
    v27 = sub_1E470A0BC();
    v28 = sub_1E470B2CC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1E45E0000, v27, v28, "CRDTModelFileSyncTransport reconnect: About to initialize file sync manager", v29, 2u);
      MEMORY[0x1E6917530](v29, -1, -1);
    }

    sub_1E470AB2C();
    swift_getWitnessTable();
    sub_1E470AB7C();
    v30 = v1[4];
    v31 = v51;
    v32 = *(v51 - 8);
    v33 = v45;
    (*(v32 + 16))(v45, v1 + *(*v1 + 128), v51);
    (*(v32 + 56))(v33, 0, 1, v31);
    (*(v52 + 16))(v47, v1 + *(*v1 + 136), v46);
    (*(v53 + 104))(v48, *MEMORY[0x1E6995288], v54);
    v34 = v30;
    *(v1 + v50) = sub_1E470AB8C();

    sub_1E470AB4C();
    v54 = sub_1E470AB6C();
    v56[0] = v54;
    v35 = swift_allocObject();
    swift_weakInit();
    v36 = swift_allocObject();
    v37 = v11;
    v36[2] = v11;
    v38 = v55;
    v39 = v55[11];
    v40 = v49;
    v36[3] = v39;
    v36[4] = v40;
    v41 = v38[13];
    v36[5] = v41;
    v36[6] = v35;
    v42 = swift_allocObject();
    swift_weakInit();
    v43 = swift_allocObject();
    v43[2] = v37;
    v43[3] = v39;
    v43[4] = v40;
    v43[5] = v41;
    v43[6] = v42;
    sub_1E46506D0(&unk_1ECF75C20, &unk_1E471DAC0);
    sub_1E470A0EC();
    swift_getWitnessTable();
    sub_1E470A13C();

    swift_beginAccess();
    sub_1E470A0FC();
    swift_endAccess();
  }
}

uint64_t sub_1E469AAAC(void **a1, uint64_t a2)
{
  v3 = sub_1E470A0DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v27 - v10 + 16;
  v12 = *a1;
  if (*a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(v4 + 16))(v11, Strong + *(*Strong + 192), v3);

      v14 = v12;
      v15 = sub_1E470A0BC();
      v16 = sub_1E470B2AC();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v27[0] = v18;
        *v17 = 136315138;
        swift_getErrorValue();
        v19 = sub_1E470B89C();
        v21 = sub_1E4654D04(v19, v20, v27);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_1E45E0000, v15, v16, "CRDTModelFileSyncTransport sink: error: %s", v17, 0xCu);
        sub_1E4658A0C(v18);
        MEMORY[0x1E6917530](v18, -1, -1);
        MEMORY[0x1E6917530](v17, -1, -1);
      }

      (*(v4 + 8))(v11, v3);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1E469AE30(sub_1E469C2DC, &unk_1F5E655B8);
    }
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      (*(v4 + 16))(v7, result + *(*result + 192), v3);

      v23 = sub_1E470A0BC();
      v24 = sub_1E470B2CC();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_1E45E0000, v23, v24, "CRDTModelFileSyncTransport sink: finished", v25, 2u);
        MEMORY[0x1E6917530](v25, -1, -1);
      }

      return (*(v4 + 8))(v7, v3);
    }
  }

  return result;
}

uint64_t sub_1E469AE30(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E470A5DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E470A61C();
  v10 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v2 + *(*v2 + 152));
  aBlock[4] = a1;
  v20 = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);

  sub_1E470A5FC();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1E469C32C(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E45E2EC0(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E470B4CC();
  MEMORY[0x1E69160A0](0, v13, v9, v14);
  _Block_release(v14);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v17);
}

uint64_t sub_1E469B0D4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E470A0DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v4 + 16))(v7, Strong + *(*Strong + 192), v3);

    v9 = sub_1E470A0BC();
    v10 = sub_1E470B29C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1E45E0000, v9, v10, "CRDTModelFileSyncTransport sink: receiveValue", v11, 2u);
      MEMORY[0x1E6917530](v11, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E469B2A8(a1);
  }

  return result;
}

uint64_t sub_1E469B2A8(uint64_t a1)
{
  v3 = *v1;
  v26 = sub_1E470A5DC();
  v28 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v4);
  v24 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1E470A61C();
  v25 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v3[10];
  v10 = v3[12];
  v11 = sub_1E470ACBC();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = v23 - v15;
  v23[1] = *(v1 + v3[19]);
  (*(v12 + 16))(v23 - v15, a1, v11, v14);
  v17 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = v9;
  *(v18 + 3) = v3[11];
  *(v18 + 4) = v10;
  *(v18 + 5) = v3[13];
  *(v18 + 6) = v1;
  (*(v12 + 32))(&v18[v17], v16, v11);
  aBlock[4] = sub_1E469C26C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = &unk_1F5E65568;
  v19 = _Block_copy(aBlock);

  sub_1E470A5FC();
  v29 = MEMORY[0x1E69E7CC0];
  sub_1E469C32C(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E45E2EC0(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0);
  v20 = v24;
  v21 = v26;
  sub_1E470B4CC();
  MEMORY[0x1E69160A0](0, v8, v20, v19);
  _Block_release(v19);
  (*(v28 + 8))(v20, v21);
  (*(v25 + 8))(v8, v27);
}

void sub_1E469B6B4(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 176);
  if ((*(v1 + v4) & 1) == 0)
  {
    if (*(v1 + *(*v1 + 168)))
    {
      *(v1 + v4) = 1;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_1E46994E4(Strong);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v6 = sub_1E470A0BC();
      v7 = sub_1E470B2AC();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_1E45E0000, v6, v7, "CRDTModelFileSyncTransport: got disconnected before load complete", v8, 2u);
        MEMORY[0x1E6917530](v8, -1, -1);
      }
    }
  }

  v9 = v2 + *(*v2 + 144);
  v10 = *v9;
  if (*v9)
  {
    v11 = *(v9 + 8);

    v10(a1);

    sub_1E45EB5D8(v10, v11);
  }
}

uint64_t sub_1E469B83C()
{
  v1 = *(*v0 + 160);
  swift_beginAccess();
  *(v0 + v1) = MEMORY[0x1E69E7CD0];

  *(v0 + *(*v0 + 168)) = 0;

  *(v0 + *(*v0 + 176)) = 0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1E4698CA0(result);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E469B8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a2;
  v42 = a3;
  v35 = *v3;
  v5 = v35;
  v6 = sub_1E470A5DC();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1E470A61C();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v5[10];
  v13 = v5[12];
  v14 = sub_1E470ACBC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v32 - v19;
  if (*(v3 + v5[21]))
  {

    sub_1E470AB5C();
  }

  else
  {
    v33 = v11;
    v22 = v35;
    v34 = *(v3 + v35[19]);
    (*(v15 + 16))(v20, a1, v14, v18);
    v23 = (*(v15 + 80) + 56) & ~*(v15 + 80);
    v24 = (v16 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    *(v25 + 2) = v12;
    *(v25 + 3) = v22[11];
    *(v25 + 4) = v13;
    *(v25 + 5) = v22[13];
    *(v25 + 6) = v3;
    (*(v15 + 32))(&v25[v23], v20, v14);
    v26 = &v25[v24];
    v27 = v42;
    *v26 = v41;
    v26[1] = v27;
    aBlock[4] = sub_1E469C394;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E46C4624;
    aBlock[3] = &unk_1F5E658B0;
    v28 = _Block_copy(aBlock);

    v29 = v33;
    sub_1E470A5FC();
    v43 = MEMORY[0x1E69E7CC0];
    sub_1E469C32C(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
    sub_1E45E2EC0(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0);
    v30 = v37;
    v31 = v40;
    sub_1E470B4CC();
    MEMORY[0x1E69160A0](0, v29, v30, v28);
    _Block_release(v28);
    (*(v39 + 8))(v30, v31);
    (*(v36 + 8))(v29, v38);
  }
}

id *sub_1E469BD88()
{
  sub_1E466A310((v0 + 2));

  v1 = *(*v0 + 16);
  v2 = sub_1E470ACBC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 17);
  v4 = sub_1E4709B9C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1E45EB5D8(*(v0 + *(*v0 + 18)), *(v0 + *(*v0 + 18) + 8));

  v5 = *(*v0 + 24);
  v6 = sub_1E470A0DC();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_1E469BF48()
{
  sub_1E469BD88();

  return swift_deallocClassInstance();
}

uint64_t sub_1E469BFB4(uint64_t a1)
{
  result = sub_1E470A0DC();
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

uint64_t sub_1E469C08C()
{

  v1 = qword_1EE2AD190;
  v2 = sub_1E470A0DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1E469C0FC()
{
  sub_1E469C08C();

  return swift_deallocClassInstance();
}

uint64_t sub_1E469C16C()
{
  sub_1E469A3C0();
}

uint64_t sub_1E469C194(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E469C1B8(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_1E469C2F0, v4);
}

void sub_1E469C300()
{
  v1 = *(v0 + 64);
  *(v0 + 64) = 0;
}

uint64_t sub_1E469C32C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E469C394()
{
  sub_1E470ACBC();
  sub_1E469A3C0();
  sub_1E470AB5C();
}

uint64_t sub_1E469C468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a4;
  v23 = sub_1E470B35C();
  v5 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E470B33C();
  MEMORY[0x1EEE9AC00](v9, v10);
  v11 = sub_1E470A61C();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  *(a2 + 32) = 0;
  v13 = sub_1E465E1DC();
  v22[1] = "ncTransport.access";
  v22[2] = v13;
  sub_1E470A60C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E469C32C(&unk_1EE2ACCE0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1E4650534(&unk_1ECF74940, &qword_1E471BAE0);
  sub_1E45E2EC0(&unk_1EE2ACCF0, &unk_1ECF74940, &qword_1E471BAE0);
  sub_1E470B4CC();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8090], v23);
  *(a2 + 40) = sub_1E470B39C();
  *(a2 + 48) = 1;
  *(a2 + 64) = 0;
  sub_1E470A0CC();
  v14 = v25;
  *(a2 + 16) = v24;
  *(a2 + 24) = v14;
  *(a2 + 56) = 0x403E000000000000;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = objc_allocWithZone(MEMORY[0x1E698F548]);
  aBlock[4] = sub_1E469CC1C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E469C1B8;
  aBlock[3] = &unk_1F5E658D8;
  v17 = _Block_copy(aBlock);

  v18 = sub_1E470AF0C();
  v19 = [v16 initWithNotifyBlock:v17 blockDescription:v18];

  _Block_release(v17);

  [v19 setCoalescingDelay_];
  v20 = *(a2 + 32);
  *(a2 + 32) = v19;

  return a2;
}

void *sub_1E469C83C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34 = a2;
  v35 = a3;
  v36 = a1;
  v5 = *v3;
  v6 = sub_1E4709B9C();
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v31 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[1] = ".CRDTModelSyncManager.q_sync";
  v29 = v5 + 13;
  v9 = v5[10];
  v10 = v5[12];
  v30 = sub_1E470ACBC();
  v11 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v12);
  v14 = v28 - v13;
  *&v37[0] = 0;
  *(&v37[0] + 1) = 0xE000000000000000;
  sub_1E470B5CC();

  *&v37[0] = 0xD000000000000012;
  *(&v37[0] + 1) = 0x80000001E4718540;
  v15 = v5[11];
  v16 = (*(v15 + 8))(v9, v15);
  MEMORY[0x1E6915D10](v16);

  sub_1E470A0CC();
  *&v17 = v10;
  *(&v17 + 1) = *v29;
  *&v18 = v9;
  *(&v18 + 1) = v15;
  v37[0] = v18;
  v37[1] = v17;
  v19 = type metadata accessor for _CRDTModelFileSyncTransport(0, v37);
  (*(v11 + 16))(v14, v34, v30);
  v20 = v31;
  v21 = v32;
  v22 = v35;
  v23 = v33;
  (*(v32 + 16))(v31, v35, v33);
  swift_allocObject();
  v3[2] = sub_1E4699EC4(v36, v14, v20);
  type metadata accessor for _TransportConnectionManager(0);
  v24 = swift_allocObject();

  v26 = sub_1E469C468(v25, v24, v19, &off_1F5E65458);
  (*(v21 + 8))(v22, v23);
  v4[3] = v26;
  *(v4[2] + 24) = &off_1F5E65488;
  swift_unknownObjectWeakAssign();
  return v4;
}

uint64_t sub_1E469CCC8()
{
  sub_1E46984F4();
  result = sub_1E470B46C();
  qword_1ECF74DE0 = result;
  return result;
}

id ReadingHistoryStateEstimator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ReadingHistoryStateEstimator.init()()
{
  v1 = v0;
  v2 = sub_1E4709D7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v8 = OBJC_IVAR___BDSReadingHistoryStateEstimator_dateFormatter;
  *&v1[OBJC_IVAR___BDSReadingHistoryStateEstimator_dateFormatter] = v7;
  v9 = v7;
  sub_1E4709CDC();
  v10 = sub_1E4709D0C();
  (*(v3 + 8))(v6, v2);
  [v9 setCalendar_];

  v11 = *&v1[v8];
  v12 = sub_1E470AF0C();
  [v11 setDateFormat_];

  v13 = type metadata accessor for ReadingHistoryStateEstimator();
  v15.receiver = v1;
  v15.super_class = v13;
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t sub_1E469CF30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v36 = a2;
  v5 = sub_1E4709CCC();
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v42 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v33 - v10;
  v12 = sub_1E4650534(&unk_1ECF74C48, &qword_1E471D598);
  MEMORY[0x1EEE9AC00](v12, v13);
  v33 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v33 - v17;
  v34 = v19;
  v20 = *(v19 + 48);
  sub_1E4709C3C();
  v41 = v20;
  sub_1E4709C2C();
  v21 = *(a3 + 16);
  if (v21)
  {
    v22 = *(v3 + OBJC_IVAR___BDSReadingHistoryStateEstimator_dateFormatter);
    v23 = (v37 + 32);
    v39 = (v37 + 8);
    v40 = (v37 + 24);
    v38 = (v37 + 40);
    v24 = a3 + 40;
    do
    {

      v25 = sub_1E470AF0C();

      v26 = [v22 dateFromString_];

      if (v26)
      {
        v27 = v42;
        sub_1E4709C9C();

        (*v23)(v11, v27, v5);
        if (sub_1E4709C6C())
        {
          (*v40)(v18, v11, v5);
        }

        v28 = v41;
        if (sub_1E4709C7C())
        {
          (*v38)(&v18[v28], v11, v5);
        }

        else
        {
          (*v39)(v11, v5);
        }
      }

      v24 += 40;
      --v21;
    }

    while (v21);
  }

  v29 = v33;
  sub_1E465E0B0(v18, v33, &unk_1ECF74C48, &qword_1E471D598);
  v30 = *(v34 + 48);
  v31 = *(v37 + 32);
  v31(v35, v29, v5);
  v31(v36, v29 + v30, v5);
  return sub_1E465E050(v18, &unk_1ECF74C48, &qword_1E471D598);
}

uint64_t sub_1E469D264(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1E4650534(&unk_1ECF74C48, &qword_1E471D598);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v36 - v13;
  v15 = sub_1E4709CCC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v17(v14, a1, v15);
  v37 = *(v7 + 56);
  v17(&v14[v37], a2, v15);
  v38 = 0;
  v39 = 0xE000000000000000;
  sub_1E470B5CC();

  v38 = 91;
  v39 = 0xE100000000000000;
  v36 = *(v3 + OBJC_IVAR___BDSReadingHistoryStateEstimator_dateFormatter);
  v18 = v36;
  sub_1E465E0B0(v14, v10, &unk_1ECF74C48, &qword_1E471D598);
  v19 = *(v7 + 56);
  v20 = sub_1E4709C5C();
  v21 = *(v16 + 8);
  v21(&v10[v19], v15);
  v21(v10, v15);
  v22 = [v18 stringFromDate_];

  v23 = sub_1E470AF1C();
  v25 = v24;

  MEMORY[0x1E6915D10](v23, v25);

  MEMORY[0x1E6915D10](540945696, 0xE400000000000000);
  sub_1E465E0B0(v14, v10, &unk_1ECF74C48, &qword_1E471D598);
  v26 = *(v7 + 56);
  v27 = sub_1E4709C5C();
  v21(&v10[v26], v15);
  v21(v10, v15);
  v28 = [v36 stringFromDate_];

  v29 = sub_1E470AF1C();
  v31 = v30;

  MEMORY[0x1E6915D10](v29, v31);

  MEMORY[0x1E6915D10](2629725, 0xE300000000000000);
  sub_1E46A0B98(&qword_1ECF741E0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v32 = sub_1E470B81C();
  MEMORY[0x1E6915D10](v32);

  MEMORY[0x1E6915D10](540945696, 0xE400000000000000);
  v33 = sub_1E470B81C();
  MEMORY[0x1E6915D10](v33);

  MEMORY[0x1E6915D10](41, 0xE100000000000000);
  v34 = v38;
  sub_1E465E050(v14, &unk_1ECF74C48, &qword_1E471D598);
  return v34;
}

char *sub_1E469D604(uint64_t a1, void *a2, char *a3, uint64_t a4)
{
  v63 = a4;
  v69 = a2;
  v70 = a3;
  v71 = sub_1E4709D7C();
  v5 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v6);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E4709CCC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v67 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v58 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v58 - v19;
  v21 = sub_1E4650534(&unk_1ECF74C48, &qword_1E471D598);
  v22 = v21 - 8;
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v26 = &v58 - v25;
  v62 = v10;
  v27 = *(v10 + 16);
  v27(&v58 - v25, a1, v9, v24);
  (v27)(&v26[*(v22 + 56)], v69, v9);
  v69 = sub_1E46A09D8(v70);
  sub_1E4709CDC();
  sub_1E4709CEC();
  v28 = *(v5 + 8);
  v29 = v71;
  v28(v8, v71);
  sub_1E4709CDC();
  v59 = v26;
  sub_1E4709CEC();
  v68 = v5 + 8;
  v66 = v28;
  v28(v8, v29);
  v30 = sub_1E46A0B98(&qword_1EE2AEBE0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v70 = v16;
  v65 = v30;
  if (sub_1E470AEEC())
  {

    v31 = *(v62 + 8);
    v32 = MEMORY[0x1E69E7CC0];
    v31(v70, v9);
  }

  else
  {
    v64 = *&v64[OBJC_IVAR___BDSReadingHistoryStateEstimator_dateFormatter];
    v33 = (v62 + 8);
    v34 = (v62 + 32);
    v32 = MEMORY[0x1E69E7CC0];
    do
    {
      v38 = sub_1E4709C5C();
      v39 = [v64 stringFromDate_];

      v40 = sub_1E470AF1C();
      v42 = v41;

      v43 = v69;
      if (v69[2] && (v44 = sub_1E46553DC(v40, v42), (v45 & 1) != 0))
      {
        v46 = v44;

        v47 = v43[7] + 40 * v46;
        v48 = *v47;
        v49 = *(v47 + 8);
        v50 = *(v47 + 16);
        v61 = *(v47 + 24);
        v62 = v48;
        v60 = *(v47 + 32);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_1E4693B7C(0, *(v32 + 2) + 1, 1, v32);
        }

        v52 = *(v32 + 2);
        v51 = *(v32 + 3);
        if (v52 >= v51 >> 1)
        {
          v32 = sub_1E4693B7C((v51 > 1), v52 + 1, 1, v32);
        }

        *(v32 + 2) = v52 + 1;
        v53 = &v32[40 * v52];
        v54 = v61;
        *(v53 + 4) = v62;
        *(v53 + 5) = v49;
        *(v53 + 6) = v50;
        *(v53 + 7) = v54;
        v53[64] = v60;
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_1E4693B7C(0, *(v32 + 2) + 1, 1, v32);
        }

        v56 = *(v32 + 2);
        v55 = *(v32 + 3);
        if (v56 >= v55 >> 1)
        {
          v32 = sub_1E4693B7C((v55 > 1), v56 + 1, 1, v32);
        }

        *(v32 + 2) = v56 + 1;
        v35 = &v32[40 * v56];
        *(v35 + 4) = v40;
        *(v35 + 5) = v42;
        v36 = v63;
        *(v35 + 6) = 0;
        *(v35 + 7) = v36;
        v35[64] = 0;
      }

      sub_1E4709CDC();
      v37 = v67;
      sub_1E4709C0C();
      v66(v8, v71);
      v31 = *v33;
      (*v33)(v20, v9);
      (*v34)(v20, v37, v9);
    }

    while ((sub_1E470AEEC() & 1) == 0);

    v31(v70, v9);
  }

  v31(v20, v9);
  sub_1E465E050(v59, &unk_1ECF74C48, &qword_1E471D598);
  return v32;
}

uint64_t sub_1E469DB80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E4709D7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E4709A3C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  if (sub_1E4709C7C())
  {
    sub_1E4709CDC();
    sub_1E4650534(&qword_1ECF74DF8, &qword_1E471DB10);
    v17 = sub_1E4709D5C();
    v35 = a1;
    v36 = a3;
    v18 = v17;
    v19 = *(v17 - 8);
    v20 = *(v19 + 80);
    v34 = v6;
    v21 = (v20 + 32) & ~v20;
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1E471BA00;
    (*(v19 + 104))(v22 + v21, *MEMORY[0x1E6969A48], v18);
    sub_1E46A06B8(v22);
    v33 = v11;
    swift_setDeallocating();
    v23 = v18;
    a1 = v35;
    (*(v19 + 8))(v22 + v21, v23);
    swift_deallocClassInstance();
    sub_1E4709CFC();

    (*(v7 + 8))(v10, v34);
    v24 = sub_1E47099FC();
    LOBYTE(v19) = v25;
    (*(v12 + 8))(v15, v33);
    v26 = (v19 & 1) == 0;
    a3 = v36;
    if (v26)
    {
      v16 = v24;
    }

    else
    {
      v16 = 0;
    }
  }

  result = type metadata accessor for ReadingHistory.Streak(0);
  v28 = *(a2 + *(result + 20));
  v29 = v28 - v16;
  if (__OFSUB__(v28, v16))
  {
    __break(1u);
  }

  else
  {
    v30 = result;
    if (v29 >= 2)
    {
      v32 = sub_1E4709CCC();
      (*(*(v32 - 8) + 16))(a3, a1, v32);
      v31 = 0;
      *(a3 + *(v30 + 20)) = v29;
    }

    else
    {
      v31 = 1;
    }

    return (*(*(v30 - 8) + 56))(a3, v31, 1, v30);
  }

  return result;
}

void sub_1E469DEF8(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v281 = a3;
  v278 = a2;
  v280 = a4;
  v5 = type metadata accessor for ReadingHistory.Streak(0);
  v265 = *(v5 - 8);
  v266 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v257 = &v240[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v250 = &v240[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11, v12);
  v245 = &v240[-v13];
  MEMORY[0x1EEE9AC00](v14, v15);
  v244 = &v240[-v16];
  MEMORY[0x1EEE9AC00](v17, v18);
  v252 = &v240[-v19];
  MEMORY[0x1EEE9AC00](v20, v21);
  v251 = &v240[-v22];
  MEMORY[0x1EEE9AC00](v23, v24);
  v243 = &v240[-v25];
  MEMORY[0x1EEE9AC00](v26, v27);
  v249 = &v240[-v28];
  MEMORY[0x1EEE9AC00](v29, v30);
  v254 = &v240[-v31];
  MEMORY[0x1EEE9AC00](v32, v33);
  v258 = &v240[-v34];
  MEMORY[0x1EEE9AC00](v35, v36);
  v256 = &v240[-v37];
  MEMORY[0x1EEE9AC00](v38, v39);
  v260 = &v240[-v40];
  MEMORY[0x1EEE9AC00](v41, v42);
  v255 = &v240[-v43];
  MEMORY[0x1EEE9AC00](v44, v45);
  v259 = &v240[-v46];
  MEMORY[0x1EEE9AC00](v47, v48);
  v261 = &v240[-v49];
  MEMORY[0x1EEE9AC00](v50, v51);
  v262 = &v240[-v52];
  v279 = sub_1E4709D7C();
  v53 = *(v279 - 1);
  MEMORY[0x1EEE9AC00](v279, v54);
  v56 = &v240[-((v55 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v57 = sub_1E4650534(&unk_1ECF74C48, &qword_1E471D598);
  MEMORY[0x1EEE9AC00](v57, v58);
  v275 = &v240[-((v59 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v60, v61);
  v277 = &v240[-v62];
  MEMORY[0x1EEE9AC00](v63, v64);
  v276 = &v240[-v65];
  MEMORY[0x1EEE9AC00](v66, v67);
  v69 = &v240[-v68];
  MEMORY[0x1EEE9AC00](v70, v71);
  v73 = &v240[-v72];
  MEMORY[0x1EEE9AC00](v74, v75);
  v77 = &v240[-v76];
  v78 = sub_1E4709CCC();
  v272 = *(v78 - 8);
  v79 = *(v272 + 16);
  v80 = a1;
  v81 = v69;
  v79(v77, v80, v78);
  v82 = *(v57 + 48);
  v273 = v78;
  v79(&v77[v82], v278, v78);
  v83 = *(v57 + 48);
  sub_1E4709CDC();
  sub_1E4709CEC();
  v84 = *(v53 + 8);
  v85 = v279;
  v84(v56, v279);
  sub_1E4709CDC();
  v269 = v83;
  v278 = v77;
  v253 = v82;
  v86 = v81;
  sub_1E4709CEC();
  v248 = v56;
  v247 = v53 + 8;
  v246 = v84;
  v84(v56, v85);
  v274 = v57;
  v87 = *(v57 + 48);
  v88 = type metadata accessor for ReadingHistory.State(0);
  v89 = *(v281 + v88[7]);
  v270 = v87;
  v271 = v89;
  sub_1E469CF30(v81, v81 + v87, v89);
  v90 = sub_1E470B2CC();
  if (qword_1ECF740C0 != -1)
  {
    swift_once();
  }

  v91 = qword_1ECF74DE0;
  v92 = v276;
  sub_1E465E0B0(v73, v276, &unk_1ECF74C48, &qword_1E471D598);
  v93 = v277;
  sub_1E465E0B0(v86, v277, &unk_1ECF74C48, &qword_1E471D598);
  if (os_log_type_enabled(v91, v90))
  {
    v94 = swift_slowAlloc();
    v264 = v73;
    v95 = v94;
    v242 = swift_slowAlloc();
    v283 = v242;
    *v95 = 136315394;
    v263 = v86;
    v241 = v90;
    v96 = v275;
    sub_1E465E0B0(v92, v275, &unk_1ECF74C48, &qword_1E471D598);
    v267 = v88;
    v97 = v93;
    v98 = v274;
    v99 = *(v274 + 48);
    v100 = sub_1E469D264(v96, &v96[v99]);
    v268 = v91;
    v102 = v101;
    sub_1E465E050(v92, &unk_1ECF74C48, &qword_1E471D598);
    v103 = v273;
    v104 = *(v272 + 8);
    v104(&v96[v99], v273);
    v104(v96, v103);
    v105 = sub_1E4654D04(v100, v102, &v283);

    *(v95 + 4) = v105;
    *(v95 + 12) = 2080;
    sub_1E465E0B0(v97, v96, &unk_1ECF74C48, &qword_1E471D598);
    v106 = *(v98 + 48);
    v107 = sub_1E469D264(v96, &v96[v106]);
    v109 = v108;
    v110 = v97;
    v111 = v263;
    v112 = v280;
    sub_1E465E050(v110, &unk_1ECF74C48, &qword_1E471D598);
    v113 = &v96[v106];
    v88 = v267;
    v104(v113, v103);
    v114 = v103;
    v86 = v111;
    v104(v96, v114);
    v115 = sub_1E4654D04(v107, v109, &v283);
    v91 = v268;

    *(v95 + 14) = v115;
    _os_log_impl(&dword_1E45E0000, v91, v241, "estimateState - new range: %s, existing: %s", v95, 0x16u);
    v116 = v242;
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v116, -1, -1);
    v117 = v95;
    v73 = v264;
    MEMORY[0x1E6917530](v117, -1, -1);
  }

  else
  {
    sub_1E465E050(v93, &unk_1ECF74C48, &qword_1E471D598);
    sub_1E465E050(v92, &unk_1ECF74C48, &qword_1E471D598);
    v112 = v280;
  }

  if (sub_1E4709C7C())
  {
    v118 = sub_1E470B2AC();
    sub_1E470A0AC(v118, &dword_1E45E0000, v91, "estimateState - missing previous days", 37, 2, MEMORY[0x1E69E7CC0]);
    sub_1E465E050(v86, &unk_1ECF74C48, &qword_1E471D598);
    sub_1E465E050(v73, &unk_1ECF74C48, &qword_1E471D598);
    sub_1E465E050(v278, &unk_1ECF74C48, &qword_1E471D598);
    v119 = *(*(v88 - 1) + 56);
    v120 = v112;
LABEL_18:
    v122 = 1;
    goto LABEL_19;
  }

  if (sub_1E4709C8C())
  {
    v121 = sub_1E470B2CC();
    sub_1E470A0AC(v121, &dword_1E45E0000, v91, "estimateState - use existing", 28, 2, MEMORY[0x1E69E7CC0]);
    sub_1E465E050(v86, &unk_1ECF74C48, &qword_1E471D598);
    sub_1E465E050(v73, &unk_1ECF74C48, &qword_1E471D598);
    sub_1E465E050(v278, &unk_1ECF74C48, &qword_1E471D598);
    sub_1E46A0654(v281, v112);
    v119 = *(*(v88 - 1) + 56);
    v120 = v112;
    v122 = 0;
LABEL_19:
    v119(v120, v122, 1, v88);
    return;
  }

  v123 = *(v271 + 2);
  v268 = v91;
  v124 = v112;
  if (v123)
  {
    v125 = *&v271[40 * v123 + 16];
  }

  else
  {
    v125 = 300;
  }

  v126 = v275;
  sub_1E465E0B0(v73, v275, &unk_1ECF74C48, &qword_1E471D598);
  v127 = *(v274 + 48);
  v128 = sub_1E469D604(v126, &v126[v127], v271, v125);
  v129 = *(v272 + 8);
  v130 = &v126[v127];
  v131 = v273;
  v129(v130, v273);
  v129(v126, v131);
  v132 = v128;
  v133 = *(v128 + 2);
  if (!v133)
  {

    v135 = sub_1E470B2AC();
    sub_1E470A0AC(v135, &dword_1E45E0000, v268, "estimateState - missing day entries", 35, 2, MEMORY[0x1E69E7CC0]);
    goto LABEL_17;
  }

  if (v133 == 1)
  {

    v134 = sub_1E470B2AC();
    sub_1E470A0AC(v134, &dword_1E45E0000, v268, "estimateState - not enough day entries", 38, 2, MEMORY[0x1E69E7CC0]);
LABEL_17:
    sub_1E465E050(v86, &unk_1ECF74C48, &qword_1E471D598);
    sub_1E465E050(v73, &unk_1ECF74C48, &qword_1E471D598);
    sub_1E465E050(v278, &unk_1ECF74C48, &qword_1E471D598);
    v119 = *(*(v88 - 1) + 56);
    v120 = v124;
    goto LABEL_18;
  }

  v267 = v88;
  v136 = v73;
  v282 = v132;
  v137 = v132 + 32;
  v138 = &v132[40 * v133 + 32];
  v139 = v86;
  v140 = *&v132[40 * v133];
  v141 = *(v138 - 16);
  v276 = *(v138 - 24);
  v277 = v141;
  v142 = *(v138 - 8);

  if (sub_1E4709C6C())
  {
    v279 = v140;
    v143 = *v281;
    if (*v281 < 1)
    {
      v144 = v265;
    }

    else
    {
      v144 = v265;
      if ((v142 & 1) == 0)
      {
        if ((v133 - 2) < *(v282 + 2))
        {
          if (!v137[40 * v133 - 48])
          {
            v143 = 0;
          }

          goto LABEL_37;
        }

        goto LABEL_76;
      }
    }

LABEL_37:
    v160 = sub_1E470B2CC();
    v161 = v268;
    if (os_log_type_enabled(v268, v160))
    {
      v162 = swift_slowAlloc();
      *v162 = 134217984;
      *(v162 + 4) = v143;
      _os_log_impl(&dword_1E45E0000, v161, v160, "estimateState - forward time change, estimated: currentStreak=%ld", v162, 0xCu);
      MEMORY[0x1E6917530](v162, -1, -1);
    }

    sub_1E465E050(v139, &unk_1ECF74C48, &qword_1E471D598);
    sub_1E465E050(v136, &unk_1ECF74C48, &qword_1E471D598);
    sub_1E465E050(v278, &unk_1ECF74C48, &qword_1E471D598);
    v163 = v267;
    v164 = v262;
    sub_1E465E0B0(v281 + v267[5], v262, &qword_1ECF74C40, &unk_1E471C980);

    v165 = v163[5];
    v166 = v280;
    (*(v144 + 56))(v280 + v165, 1, 1, v266);
    *v166 = v143;
    sub_1E4680004(v164, v166 + v165);
    v167 = v166 + v163[6];
    v168 = v277;
    *v167 = v276;
    *(v167 + 1) = v168;
    v167[16] = v142;
    *(v166 + v163[7]) = v282;
    (*(*(v163 - 1) + 56))(v166, 0, 1, v163);
    return;
  }

  if ((sub_1E4709C7C() & 1) == 0)
  {

    v155 = sub_1E470B2AC();
    sub_1E470A0AC(v155, &dword_1E45E0000, v268, "estimateState - we forgot to handle some cases (?)", 50, 2, MEMORY[0x1E69E7CC0]);
    sub_1E465E050(v139, &unk_1ECF74C48, &qword_1E471D598);
    v156 = v136;
LABEL_34:
    sub_1E465E050(v156, &unk_1ECF74C48, &qword_1E471D598);
    v157 = v278;
    v158 = &unk_1ECF74C48;
    v159 = &qword_1E471D598;
LABEL_35:
    sub_1E465E050(v157, v158, v159);
    (*(*(v267 - 1) + 56))(v280, 1, 1, v267);
    return;
  }

  v263 = v139;
  v264 = v136;
  v145 = sub_1E470B2CC();
  sub_1E470A0AC(v145, &dword_1E45E0000, v268, "estimateState - backward time change", 36, 2, MEMORY[0x1E69E7CC0]);
  v146 = v133 - 2;
  if ((v133 - 2) >= *(v282 + 2))
  {
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v147 = v266;
  v148 = v142;
  if ((v142 & 1) == 0 && (v137[40 * v146 + 32] & 1) == 0)
  {
    v88 = v267;
    v149 = v267[5];
    v150 = v281;
    v151 = v259;
    sub_1E465E0B0(v281 + v149, v259, &qword_1ECF74C40, &unk_1E471C980);
    v152 = v265;
    v153 = *(v265 + 48);
    if (v153(v151, 1, v147) == 1)
    {

      sub_1E465E050(v151, &qword_1ECF74C40, &unk_1E471C980);
      v154 = v261;
      (*(v152 + 56))(v261, 1, 1, v147);
    }

    else
    {
      sub_1E465E050(v151, &qword_1ECF74C40, &unk_1E471C980);
      v176 = v150 + v149;
      v177 = v255;
      sub_1E465E0B0(v176, v255, &qword_1ECF74C40, &unk_1E471C980);
      if (v153(v177, 1, v147) == 1)
      {
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v154 = v261;
      sub_1E469DB80(&v264[v269], v177, v261);
      sub_1E46A05F4(v177, type metadata accessor for ReadingHistory.Streak);
    }

    v178 = v268;
    v179 = v260;
    v180 = sub_1E470B2CC();
    sub_1E465E0B0(v154, v179, &qword_1ECF74C40, &unk_1E471C980);
    v181 = os_log_type_enabled(v178, v180);
    v182 = v179;
    v183 = v280;
    v184 = v263;
    if (v181)
    {
      v185 = swift_slowAlloc();
      v186 = swift_slowAlloc();
      v283 = v186;
      *v185 = 136315138;
      v187 = v256;
      sub_1E465E0B0(v182, v256, &qword_1ECF74C40, &unk_1E471C980);
      if (v153(v187, 1, v266) == 1)
      {
        v188 = 7104878;
        sub_1E465E050(v187, &qword_1ECF74C40, &unk_1E471C980);
        v189 = 0xE300000000000000;
      }

      else
      {
        v188 = ReadingHistory.Streak.description.getter();
        v189 = v192;
        sub_1E46A05F4(v187, type metadata accessor for ReadingHistory.Streak);
      }

      v190 = v277;
      sub_1E465E050(v260, &qword_1ECF74C40, &unk_1E471C980);
      v193 = sub_1E4654D04(v188, v189, &v283);

      *(v185 + 4) = v193;
      _os_log_impl(&dword_1E45E0000, v268, v180, "estimateState - estimated: no currentStreak, longestStreak=%s", v185, 0xCu);
      sub_1E4658A0C(v186);
      MEMORY[0x1E6917530](v186, -1, -1);
      MEMORY[0x1E6917530](v185, -1, -1);
      sub_1E465E050(v184, &unk_1ECF74C48, &qword_1E471D598);
      sub_1E465E050(v264, &unk_1ECF74C48, &qword_1E471D598);
      sub_1E465E050(v278, &unk_1ECF74C48, &qword_1E471D598);
      v88 = v267;
      v154 = v261;
    }

    else
    {
      sub_1E465E050(v182, &qword_1ECF74C40, &unk_1E471C980);
      sub_1E465E050(v184, &unk_1ECF74C48, &qword_1E471D598);
      sub_1E465E050(v264, &unk_1ECF74C48, &qword_1E471D598);
      sub_1E465E050(v278, &unk_1ECF74C48, &qword_1E471D598);
      v190 = v277;
    }

    v194 = v88[5];
    (*(v265 + 56))(v183 + v194, 1, 1, v266);
    *v183 = 0;
    sub_1E4680004(v154, v183 + v194);
    v195 = v183 + v88[6];
    *v195 = v276;
    *(v195 + 1) = v190;
    v195[16] = 0;
    *(v183 + v88[7]) = v282;
    v119 = *(*(v88 - 1) + 56);
    v120 = v183;
    v122 = 0;
    goto LABEL_19;
  }

  v169 = *v281;
  if (!*v281)
  {

    v191 = sub_1E470B2CC();
    sub_1E470A0AC(v191, &dword_1E45E0000, v268, "estimateState - can't reliably determine currentStreak", 54, 2, MEMORY[0x1E69E7CC0]);
    sub_1E465E050(v263, &unk_1ECF74C48, &qword_1E471D598);
    v156 = v264;
    goto LABEL_34;
  }

  v170 = *(v271 + 2);
  v171 = v264;
  if (!v170)
  {

    v196 = sub_1E470B2AC();
    sub_1E470A0AC(v196, &dword_1E45E0000, v268, "estimateState - unexpected: missing day entry", 45, 2, MEMORY[0x1E69E7CC0]);
    sub_1E465E050(v263, &unk_1ECF74C48, &qword_1E471D598);
    v156 = v171;
    goto LABEL_34;
  }

  if (v271[40 * v170 + 24] == 1)
  {
    v172 = v275;
    sub_1E465E0B0(v263, v275, &unk_1ECF74C48, &qword_1E471D598);
    v173 = v273;
    v174 = v257;
    (*(v272 + 32))(v257, &v172[*(v274 + 48)], v273);
    *&v174[*(v147 + 20)] = v169;
    v129(v172, v173);
    v175 = v174;
  }

  else
  {
    v197 = v248;
    sub_1E4709D4C();
    v175 = v257;
    sub_1E4709BFC();
    v246(v197, v279);
    *&v175[*(v147 + 20)] = v169;
  }

  v198 = v269;
  v199 = v278;
  v200 = v258;
  sub_1E469DB80(&v278[v253], v175, v258);
  v201 = *(v265 + 48);
  if ((v201)(v200, 1, v147) == 1)
  {

    v202 = sub_1E470B2CC();
    sub_1E470A0AC(v202, &dword_1E45E0000, v268, "estimateState - can't reliably determine currentStreak after truncation", 71, 2, MEMORY[0x1E69E7CC0]);
    sub_1E46A05F4(v175, type metadata accessor for ReadingHistory.Streak);
    sub_1E465E050(v263, &unk_1ECF74C48, &qword_1E471D598);
    sub_1E465E050(v264, &unk_1ECF74C48, &qword_1E471D598);
    sub_1E465E050(v199, &unk_1ECF74C48, &qword_1E471D598);
    v158 = &qword_1ECF74C40;
    v159 = &unk_1E471C980;
    v157 = v200;
    goto LABEL_35;
  }

  v203 = v267[5];
  v204 = v281;
  v205 = v249;
  sub_1E465E0B0(v281 + v203, v249, &qword_1ECF74C40, &unk_1E471C980);
  v206 = (v201)(v205, 1, v147);
  v279 = v201;
  if (v206 == 1)
  {

    sub_1E465E050(v205, &qword_1ECF74C40, &unk_1E471C980);
    v207 = v254;
    (*(v265 + 56))(v254, 1, 1, v147);
    v208 = v264;
  }

  else
  {
    sub_1E465E050(v205, &qword_1ECF74C40, &unk_1E471C980);
    v209 = v204 + v203;
    v210 = v243;
    sub_1E465E0B0(v209, v243, &qword_1ECF74C40, &unk_1E471C980);
    v211 = (v201)(v210, 1, v147);
    v207 = v254;
    if (v211 == 1)
    {
LABEL_78:
      __break(1u);
      return;
    }

    v208 = v264;
    sub_1E469DB80(&v264[v198], v210, v207);
    sub_1E46A05F4(v210, type metadata accessor for ReadingHistory.Streak);
  }

  v212 = sub_1E470B2CC();
  v213 = v258;
  v214 = v251;
  sub_1E465E0B0(v258, v251, &qword_1ECF74C40, &unk_1E471C980);
  v215 = v207;
  v216 = v252;
  sub_1E465E0B0(v215, v252, &qword_1ECF74C40, &unk_1E471C980);
  v217 = os_log_type_enabled(v268, v212);
  v218 = v263;
  if (v217)
  {
    v219 = swift_slowAlloc();
    v220 = swift_slowAlloc();
    v283 = v220;
    *v219 = 134218242;
    v221 = v244;
    sub_1E465E0B0(v214, v244, &qword_1ECF74C40, &unk_1E471C980);
    v222 = v220;
    if ((v279)(v221, 1, v147) == 1)
    {
      sub_1E465E050(v221, &qword_1ECF74C40, &unk_1E471C980);
      v223 = 0;
    }

    else
    {
      v223 = *&v221[*(v147 + 20)];
      sub_1E46A05F4(v221, type metadata accessor for ReadingHistory.Streak);
    }

    sub_1E465E050(v251, &qword_1ECF74C40, &unk_1E471C980);
    *(v219 + 4) = v223;
    *(v219 + 12) = 2080;
    v225 = v216;
    v226 = v245;
    sub_1E465E0B0(v225, v245, &qword_1ECF74C40, &unk_1E471C980);
    if ((v279)(v226, 1, v147) == 1)
    {
      v227 = 7104878;
      sub_1E465E050(v226, &qword_1ECF74C40, &unk_1E471C980);
      v228 = 0xE300000000000000;
    }

    else
    {
      v227 = ReadingHistory.Streak.description.getter();
      v228 = v229;
      sub_1E46A05F4(v226, type metadata accessor for ReadingHistory.Streak);
    }

    v230 = v263;
    v213 = v258;
    sub_1E465E050(v252, &qword_1ECF74C40, &unk_1E471C980);
    v231 = sub_1E4654D04(v227, v228, &v283);

    *(v219 + 14) = v231;
    _os_log_impl(&dword_1E45E0000, v268, v212, "estimateState - estimated: currentStreak=%ld, longestStreak=%s", v219, 0x16u);
    sub_1E4658A0C(v222);
    MEMORY[0x1E6917530](v222, -1, -1);
    MEMORY[0x1E6917530](v219, -1, -1);
    sub_1E46A05F4(v257, type metadata accessor for ReadingHistory.Streak);
    sub_1E465E050(v230, &unk_1ECF74C48, &qword_1E471D598);
    v224 = v264;
  }

  else
  {
    sub_1E465E050(v214, &qword_1ECF74C40, &unk_1E471C980);
    sub_1E465E050(v216, &qword_1ECF74C40, &unk_1E471C980);
    sub_1E46A05F4(v257, type metadata accessor for ReadingHistory.Streak);
    sub_1E465E050(v218, &unk_1ECF74C48, &qword_1E471D598);
    v224 = v208;
  }

  sub_1E465E050(v224, &unk_1ECF74C48, &qword_1E471D598);
  sub_1E465E050(v278, &unk_1ECF74C48, &qword_1E471D598);
  v232 = v280;
  v233 = v250;
  sub_1E465E0B0(v213, v250, &qword_1ECF74C40, &unk_1E471C980);
  if ((v279)(v233, 1, v147) == 1)
  {
    sub_1E465E050(v233, &qword_1ECF74C40, &unk_1E471C980);
    v234 = 0;
  }

  else
  {
    v234 = *&v233[*(v147 + 20)];
    sub_1E46A05F4(v233, type metadata accessor for ReadingHistory.Streak);
  }

  v236 = v276;
  v235 = v277;
  v237 = v267;
  v238 = v267[5];
  (*(v265 + 56))(v232 + v238, 1, 1, v147);
  *v232 = v234;
  sub_1E4680004(v254, v232 + v238);
  v239 = v232 + v237[6];
  *v239 = v236;
  *(v239 + 1) = v235;
  v239[16] = v148;
  *(v232 + v237[7]) = v282;
  sub_1E465E050(v213, &qword_1ECF74C40, &unk_1E471C980);
  (*(*(v237 - 1) + 56))(v232, 0, 1, v237);
}

uint64_t sub_1E469FA98(char *a1, uint64_t a2, uint64_t a3)
{
  v53 = a1;
  v54 = a2;
  v52 = sub_1E4650534(&unk_1ECF74C48, &qword_1E471D598);
  MEMORY[0x1EEE9AC00](v52, v4);
  v51 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v50 = &v46 - v8;
  v9 = sub_1E4709D5C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1E4709D7C();
  v14 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v46 - v20;
  v22 = sub_1E4709CCC();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v49 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v47 = &v46 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v46 - v31;
  sub_1E4709CDC();
  (*(v10 + 104))(v13, *MEMORY[0x1E6969A48], v9);
  sub_1E4709D3C();
  (*(v10 + 8))(v13, v9);
  v33 = *(v14 + 8);
  v33(v17, v55);
  v34 = *(v23 + 48);
  v35 = v34(v21, 1, v22);
  v48 = a3;
  if (v35 == 1)
  {
    (*(v23 + 16))(v32, a3, v22);
    if (v34(v21, 1, v22) != 1)
    {
      sub_1E465E050(v21, &unk_1ECF74CD0, &qword_1E471B620);
    }
  }

  else
  {
    (*(v23 + 32))(v32, v21, v22);
  }

  sub_1E4709CDC();
  v36 = v47;
  sub_1E4709CEC();
  v37 = v55;
  v33(v17, v55);
  sub_1E4709CDC();
  v38 = v49;
  sub_1E4709CEC();
  v33(v17, v37);
  (*(v23 + 8))(v32, v22);
  v39 = v52;
  v40 = *(v52 + 48);
  v41 = *(v23 + 32);
  v42 = v50;
  v41(v50, v36, v22);
  v41((v42 + v40), v38, v22);
  v43 = v51;
  sub_1E46A0584(v42, v51);
  v44 = *(v39 + 48);
  v41(v53, v43, v22);
  return (v41)(v54, v43 + v44, v22);
}

uint64_t sub_1E469FF74(uint64_t a1, uint64_t a2, void *a3)
{
  v34 = a2;
  v35 = a3;
  v33 = a1;
  v3 = sub_1E4650534(&qword_1ECF74DF0, &unk_1E471DB00);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v33 - v8);
  v36 = type metadata accessor for ReadingHistory.State(0);
  v10 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E4650534(&unk_1ECF74C48, &qword_1E471D598);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v33 - v21;
  v23 = sub_1E4709CCC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 16);
  v25(v22, v33, v23);
  v25(&v22[*(v15 + 56)], v34, v23);
  static ReadingHistory.State.from(info:)(v35, v13);
  sub_1E465E0B0(v22, v18, &unk_1ECF74C48, &qword_1E471D598);
  v26 = *(v15 + 56);
  sub_1E469DEF8(v18, &v18[v26], v13, v9);
  v27 = *(v24 + 8);
  v27(&v18[v26], v23);
  v27(v18, v23);
  v28 = v37;
  sub_1E465E0B0(v9, v37, &qword_1ECF74DF0, &unk_1E471DB00);
  if ((*(v10 + 48))(v28, 1, v36) == 1)
  {
    sub_1E465E050(v9, &qword_1ECF74DF0, &unk_1E471DB00);
    sub_1E46A05F4(v13, type metadata accessor for ReadingHistory.State);
    sub_1E465E050(v22, &unk_1ECF74C48, &qword_1E471D598);
    sub_1E465E050(v28, &qword_1ECF74DF0, &unk_1E471DB00);
    return 0;
  }

  else
  {
    ReadingHistory.State.toInfo()(v29);
    v32 = v31;
    sub_1E465E050(v9, &qword_1ECF74DF0, &unk_1E471DB00);
    sub_1E46A05F4(v13, type metadata accessor for ReadingHistory.State);
    sub_1E465E050(v22, &unk_1ECF74C48, &qword_1E471D598);
    sub_1E46A05F4(v28, type metadata accessor for ReadingHistory.State);
    return v32;
  }
}

id ReadingHistoryStateEstimator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReadingHistoryStateEstimator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E46A0584(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&unk_1ECF74C48, &qword_1E471D598);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E46A05F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E46A0654(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingHistory.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E46A06B8(uint64_t a1)
{
  v2 = sub_1E4709D5C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_1E4650534(&qword_1ECF74E00, &qword_1E471DB18);
    v11 = sub_1E470B5AC();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_1E46A0B98(&qword_1ECF74E08, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
      v18 = sub_1E470AEBC();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v6, *(v11 + 48) + v20 * v16, v2);
          sub_1E46A0B98(qword_1ECF74E10, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AE0]);
          v25 = sub_1E470AEFC();
          v26 = *v17;
          (*v17)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void *sub_1E46A09D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v2 = (a1 + 64);
  v3 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v7 = *(v2 - 4);
    v6 = *(v2 - 3);
    v8 = *(v2 - 2);
    v9 = *(v2 - 1);
    v10 = *v2;
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = sub_1E46553DC(v7, v6);
    v14 = v3[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      break;
    }

    v18 = v13;
    if (v3[3] < v17)
    {
      sub_1E465602C(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_1E46553DC(v7, v6);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      if (v18)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v24 = v12;
    sub_1E4657DEC();
    v12 = v24;
    if (v18)
    {
LABEL_3:
      v4 = v12;

      v5 = v3[7] + 40 * v4;
      *v5 = v7;
      *(v5 + 8) = v6;
      *(v5 + 16) = v8;
      *(v5 + 24) = v9;
      *(v5 + 32) = v10;

      goto LABEL_4;
    }

LABEL_11:
    v3[(v12 >> 6) + 8] |= 1 << v12;
    v20 = (v3[6] + 16 * v12);
    *v20 = v7;
    v20[1] = v6;
    v21 = v3[7] + 40 * v12;
    *v21 = v7;
    *(v21 + 8) = v6;
    *(v21 + 16) = v8;
    *(v21 + 24) = v9;
    *(v21 + 32) = v10;
    v22 = v3[2];
    v16 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v16)
    {
      goto LABEL_18;
    }

    v3[2] = v23;
LABEL_4:
    v2 += 40;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1E470B86C();
  __break(1u);
  return result;
}

uint64_t sub_1E46A0B98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static CRDTModelContextStore.persistentContext()()
{
  v65 = *MEMORY[0x1E69E9840];
  v0 = sub_1E4650534(&qword_1ECF754C0, &unk_1E471BA10);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v54 = &v51 - v2;
  v3 = sub_1E4709A6C();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E4709B9C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v52 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v51 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v51 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v51 - v21;
  sub_1E46A11B4();
  sub_1E46A11B4();
  sub_1E46A12F4();
  sub_1E4709B6C();

  v53 = v8;
  v57 = *(v8 + 8);
  v58 = v7;
  v57(v14, v7);
  v23 = sub_1E470B28C();
  if (qword_1EE2ADDE8 != -1)
  {
    swift_once();
  }

  v24 = qword_1EE2ADDF0;
  sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1E471BA00;
  v61 = v18;
  v26 = sub_1E4709B1C();
  v28 = v27;
  *(v25 + 56) = MEMORY[0x1E69E6158];
  v29 = sub_1E4663DE4();
  *(v25 + 64) = v29;
  *(v25 + 32) = v26;
  *(v25 + 40) = v28;
  v56 = v24;
  sub_1E470A0AC(v23, &dword_1E45E0000, v24, "CRDTModelContextStore storeDirectory = %@", 41, 2, v25);

  sub_1E4709A5C();
  sub_1E4709A4C();
  v30 = [objc_opt_self() defaultManager];
  v31 = sub_1E4709B4C();
  *&v62 = 0;
  LODWORD(v28) = [v30 createDirectoryAtURL:v31 withIntermediateDirectories:1 attributes:0 error:&v62];

  v32 = v6;
  v33 = v22;
  v55 = v32;
  if (v28)
  {
    v34 = v62;
    sub_1E4709B3C();
    v51 = sub_1E470AD7C();
    v35 = v53;
    v36 = v58;
    (*(v53 + 16))(v52, v61, v58);
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    (*(v35 + 56))(v54, 1, 1, v36);
    v49 = sub_1E470AD6C();
    (*(v59 + 8))(v32, v60);
    v50 = v61;
  }

  else
  {
    v37 = v62;
    v38 = sub_1E4709B0C();

    swift_willThrow();
    v36 = v58;
    v39 = sub_1E470B2AC();
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1E471B800;
    v41 = v61;
    v42 = sub_1E4709B1C();
    v43 = MEMORY[0x1E69E6158];
    *(v40 + 56) = MEMORY[0x1E69E6158];
    *(v40 + 64) = v29;
    *(v40 + 32) = v42;
    *(v40 + 40) = v44;
    swift_getErrorValue();
    v45 = sub_1E470B89C();
    *(v40 + 96) = v43;
    *(v40 + 104) = v29;
    *(v40 + 72) = v45;
    *(v40 + 80) = v46;
    sub_1E470A0AC(v39, &dword_1E45E0000, v56, "CRDTModelContextStore unable to create CRContext at %@ error=%@", 63, 2, v40);

    sub_1E470AD7C();
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    v49 = MEMORY[0x1E6915A70](0, &v62);

    sub_1E46A136C(&v62);
    (*(v59 + 8))(v55, v60);
    v50 = v41;
  }

  v47 = v57;
  v57(v50, v36);
  v47(v33, v36);
  return v49;
}

uint64_t sub_1E46A11B4()
{
  v0 = sub_1E4709B9C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() books];
  v6 = [v5 containerURL];

  sub_1E4709B7C();
  sub_1E4709B6C();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1E46A12F4()
{
  swift_getMetatypeMetadata();
  v1 = sub_1E470AF8C();

  MEMORY[0x1E6915D10](0x2E747865746E6F43, 0xEA00000000006264);

  return v1;
}

uint64_t sub_1E46A136C(uint64_t a1)
{
  v2 = sub_1E4650534(&unk_1ECF74930, &qword_1E471DB20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ReadingHistoryDay.description.getter(uint64_t a1)
{
  sub_1E470AD8C();
  v3 = sub_1E470B81C();
  MEMORY[0x1E6915D10](47, 0xE100000000000000);
  type metadata accessor for ReadingHistoryDay(0);
  sub_1E4650534(&qword_1ECF741E8, &qword_1E471D590);
  sub_1E470A62C();
  v1 = sub_1E470B81C();
  MEMORY[0x1E6915D10](v1);

  return v3;
}

uint64_t ReadingHistoryModel.readingHistoryDay(for:)@<X0>(uint64_t a2@<X8>)
{
  v57 = a2;
  v2 = sub_1E4650534(&qword_1ECF74D60, &qword_1E471D858);
  v53 = *(v2 - 8);
  v54 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v52 = &v49 - v4;
  v5 = type metadata accessor for ReadingHistoryMonth(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E4650534(&unk_1ECF74D30, &unk_1E471DB90);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v58 = &v49 - v10;
  v11 = sub_1E4650534(&qword_1ECF74D68, &unk_1E471D860);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v51 = &v49 - v13;
  v14 = sub_1E4709D5C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E4709D7C();
  v55 = *(v19 - 8);
  v56 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4709CDC();
  v23 = *(v15 + 104);
  v23(v18, *MEMORY[0x1E6969A68], v14);
  v24 = sub_1E4709D6C();
  v25 = *(v15 + 8);
  v25(v18, v14);
  v23(v18, *MEMORY[0x1E6969A78], v14);
  v26 = sub_1E4709D6C();
  v25(v18, v14);
  v23(v18, *MEMORY[0x1E6969A48], v14);
  v27 = v22;
  v28 = sub_1E4709D6C();
  result = (v25)(v18, v14);
  v30 = 100 * v24;
  if ((v24 * 100) >> 64 == (100 * v24) >> 63)
  {
    v31 = __OFADD__(v30, v26);
    v32 = v30 + v26;
    if (!v31)
    {
      v59 = v32;
      sub_1E4650534(&unk_1ECF74D00, &unk_1E471DBA0);
      v33 = v58;
      sub_1E470AB0C();
      v34 = sub_1E4650534(&unk_1ECF74D50, &qword_1E471D848);
      v35 = *(v34 - 8);
      if ((*(v35 + 48))(v33, 1, v34) == 1)
      {
        (*(v55 + 8))(v22, v56);
        v36 = &unk_1ECF74D30;
        v37 = &unk_1E471DB90;
        v38 = v33;
      }

      else
      {
        v39 = v50;
        MEMORY[0x1E69159F0](v34);
        (*(v35 + 8))(v33, v34);
        v40 = v52;
        v41 = v53;
        v42 = v54;
        (*(v53 + 16))(v52, v39, v54);
        sub_1E46AE460(v39, type metadata accessor for ReadingHistoryMonth);
        v59 = v28;
        v43 = v51;
        sub_1E470AB0C();
        (*(v41 + 8))(v40, v42);
        v44 = sub_1E4650534(&unk_1ECF74D80, &unk_1E471DBB0);
        v45 = *(v44 - 8);
        if ((*(v45 + 48))(v43, 1, v44) != 1)
        {
          v47 = v57;
          MEMORY[0x1E69159F0](v44);
          (*(v55 + 8))(v27, v56);
          (*(v45 + 8))(v43, v44);
          v46 = 0;
          goto LABEL_9;
        }

        (*(v55 + 8))(v27, v56);
        v36 = &qword_1ECF74D68;
        v37 = &unk_1E471D860;
        v38 = v43;
      }

      sub_1E465E050(v38, v36, v37);
      v46 = 1;
      v47 = v57;
LABEL_9:
      v48 = type metadata accessor for ReadingHistoryDay(0);
      return (*(*(v48 - 8) + 56))(v47, v46, 1, v48);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E46A1BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v27 = a3;
  v30 = a1;
  v24 = sub_1E4650534(&qword_1ECF74C10, &qword_1E471D568);
  v3 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v4);
  v6 = (&v24 - v5);
  v7 = sub_1E4650534(&qword_1ECF75008, &qword_1E471E750);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v24 - v9;
  v11 = sub_1E4650534(&qword_1ECF74D60, &qword_1E471D858);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v24 - v14;
  v16 = sub_1E4650534(&qword_1ECF75010, &qword_1E471E758);
  v25 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v24 - v19;
  (*(v12 + 16))(v15, v30, v11, v18);
  sub_1E45E2F14(&qword_1ECF75018, &qword_1ECF74D60, &qword_1E471D858, MEMORY[0x1E6995248]);
  sub_1E470B06C();
  sub_1E45E2F14(&qword_1ECF75020, &qword_1ECF75010, &qword_1E471E758, MEMORY[0x1E69950C0]);
  v28 = v20;
  v30 = v16;
  sub_1E470B49C();
  v21 = v24;
  v22 = *(v3 + 48);
  if (v22(v10, 1, v24) != 1)
  {
    do
    {
      sub_1E46574C0(v10, v6, &qword_1ECF74C10, &qword_1E471D568);
      sub_1E46C7FEC(v29, v27, *v6);
      sub_1E465E050(v6, &qword_1ECF74C10, &qword_1E471D568);
      sub_1E470B49C();
    }

    while (v22(v10, 1, v21) != 1);
  }

  return (*(v25 + 8))(v28, v30);
}

uint64_t sub_1E46A1F48(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, char *), uint64_t a3)
{
  v27 = a2;
  v30 = a3;
  v5 = sub_1E4650534(&qword_1ECF74BD8, &qword_1E471D530);
  v6 = *(v5 - 8);
  v31 = v5;
  v32 = v6;
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v27 - v8;
  v10 = sub_1E4650534(&qword_1ECF74D10, &unk_1E471E770);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v27 - v12;
  v14 = sub_1E4650534(&unk_1ECF74CF0, &qword_1E471D828);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v27 - v17;
  v33 = sub_1E4650534(&qword_1ECF74D18, &unk_1E471D830);
  v29 = *(v33 - 8);
  v20 = MEMORY[0x1EEE9AC00](v33, v19);
  v22 = &v27 - v21;
  v35 = a1;
  (*(v15 + 16))(v18, v28, v14, v20);
  sub_1E45E2F14(&qword_1ECF74D20, &unk_1ECF74CF0, &qword_1E471D828, MEMORY[0x1E6995248]);
  sub_1E470B06C();
  sub_1E45E2F14(&qword_1ECF74D28, &qword_1ECF74D18, &unk_1E471D830, MEMORY[0x1E69950C0]);
  v28 = v22;
  sub_1E470B49C();
  v23 = *(v32 + 48);
  v32 += 48;
  if (v23(v13, 1, v31) == 1)
  {
    v24 = v28;
  }

  else
  {
    sub_1E46574C0(v13, v9, &qword_1ECF74BD8, &qword_1E471D530);
    v25 = v27;
    v27(&v34, &v35, v9);
    if (v3)
    {
      v24 = v28;
      sub_1E465E050(v9, &qword_1ECF74BD8, &qword_1E471D530);
    }

    else
    {
      v24 = v28;
      while (1)
      {
        sub_1E465E050(v9, &qword_1ECF74BD8, &qword_1E471D530);
        a1 = v34;
        v35 = v34;
        sub_1E470B49C();
        if (v23(v13, 1, v31) == 1)
        {
          break;
        }

        sub_1E46574C0(v13, v9, &qword_1ECF74BD8, &qword_1E471D530);
        v25(&v34, &v35, v9);
      }
    }
  }

  (*(v29 + 8))(v24, v33);
  return a1;
}

unint64_t ReadingHistoryModel.description.getter()
{
  v0 = type metadata accessor for ReadingHistoryMonth(0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v64 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1E4650534(&unk_1ECF74D00, &unk_1E471DBA0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v57 - v6;
  v65 = sub_1E4650534(&qword_1ECF74D48, &qword_1E471D840);
  v62 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v8);
  v10 = &v57 - v9;
  v11 = sub_1E4650534(&qword_1ECF74D40, &unk_1E471DBC0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v57 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v63 = &v57 - v21;
  v22 = sub_1E4650534(&qword_1ECF74BE8, &unk_1E471D540);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v59 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = (&v57 - v28);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = (&v57 - v32);
  v36 = MEMORY[0x1EEE9AC00](v34, v35);
  v60 = (&v57 - v37);
  (*(v4 + 16))(v7, v67, v3, v36);
  sub_1E45E2F14(&qword_1EE2ACD90, &unk_1ECF74D00, &unk_1E471DBA0, MEMORY[0x1E6995248]);
  sub_1E470B06C();
  sub_1E45E2F14(&qword_1EE2ACDC8, &qword_1ECF74D48, &qword_1E471D840, MEMORY[0x1E69950C0]);
  v61 = v10;
  sub_1E470B49C();
  v38 = v22;
  v39 = *(v23 + 48);
  v40 = v39(v18, 1, v38);
  v66 = v39;
  v67 = v23 + 48;
  if (v40 == 1)
  {
    (*(v62 + 8))(v61, v65);
    sub_1E465E050(v18, &qword_1ECF74D40, &unk_1E471DBC0);
    v41 = v63;
    (*(v23 + 56))(v63, 1, 1, v38);
  }

  else
  {
    v58 = v23;
    sub_1E46574C0(v18, v33, &qword_1ECF74BE8, &unk_1E471D540);
    v42 = v38;
    v43 = v61;
    v44 = v65;
    sub_1E470B49C();
    if (v39(v14, 1, v38) != 1)
    {
      do
      {
        sub_1E46574C0(v14, v29, &qword_1ECF74BE8, &unk_1E471D540);
        if (*v33 >= *v29)
        {
          sub_1E465E050(v29, &qword_1ECF74BE8, &unk_1E471D540);
        }

        else
        {
          sub_1E465E050(v33, &qword_1ECF74BE8, &unk_1E471D540);
          sub_1E46574C0(v29, v33, &qword_1ECF74BE8, &unk_1E471D540);
        }

        sub_1E470B49C();
        v38 = v42;
      }

      while (v66(v14, 1, v42) != 1);
    }

    (*(v62 + 8))(v43, v44);
    sub_1E465E050(v14, &qword_1ECF74D40, &unk_1E471DBC0);
    v41 = v63;
    sub_1E46574C0(v33, v63, &qword_1ECF74BE8, &unk_1E471D540);
    (*(v58 + 56))(v41, 0, 1, v38);
  }

  v45 = v64;
  v46 = 0xD00000000000001BLL;
  if (v66(v41, 1, v38) == 1)
  {
    sub_1E465E050(v41, &qword_1ECF74D40, &unk_1E471DBC0);
  }

  else
  {
    v47 = v41;
    v48 = v60;
    sub_1E46574C0(v47, v60, &qword_1ECF74BE8, &unk_1E471D540);
    v69 = 0;
    v70 = 0xE000000000000000;
    sub_1E470B5CC();

    v69 = 0xD000000000000020;
    v70 = 0x80000001E4719310;
    v68 = *v48;
    v49 = sub_1E470B81C();
    MEMORY[0x1E6915D10](v49);

    MEMORY[0x1E6915D10](8250, 0xE200000000000000);
    v50 = v59;
    sub_1E465E0B0(v48, v59, &qword_1ECF74BE8, &unk_1E471D540);
    v51 = *(v38 + 48);
    v52 = sub_1E4650534(&unk_1ECF74D50, &qword_1E471D848);
    MEMORY[0x1E69159F0]();
    (*(*(v52 - 8) + 8))(v50 + v51, v52);
    v53 = sub_1E46AC1A8(7, 0);
    v55 = v54;
    sub_1E46AE460(v45, type metadata accessor for ReadingHistoryMonth);
    MEMORY[0x1E6915D10](v53, v55);

    MEMORY[0x1E6915D10](62, 0xE100000000000000);
    v46 = v69;
    sub_1E465E050(v48, &qword_1ECF74BE8, &unk_1E471D540);
  }

  return v46;
}

uint64_t ReadingHistoryModel.DayKey.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = a2;
  v3 = sub_1E4709D5C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E4709D7C();
  v23 = *(v8 - 8);
  v24 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4709CDC();
  v12 = *(v4 + 104);
  v12(v7, *MEMORY[0x1E6969A68], v3);
  v13 = sub_1E4709D6C();
  v14 = *(v4 + 8);
  v14(v7, v3);
  v12(v7, *MEMORY[0x1E6969A78], v3);
  v15 = sub_1E4709D6C();
  result = (v14)(v7, v3);
  v17 = 100 * v13;
  if ((v13 * 100) >> 64 == (100 * v13) >> 63)
  {
    v18 = v17 + v15;
    if (!__OFADD__(v17, v15))
    {
      v12(v7, *MEMORY[0x1E6969A48], v3);
      v19 = sub_1E4709D6C();
      v20 = sub_1E4709CCC();
      (*(*(v20 - 8) + 8))(a1, v20);
      v14(v7, v3);
      result = (*(v23 + 8))(v11, v24);
      v21 = v25;
      *v25 = v18;
      v21[1] = v19;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E46A2DA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v67 = sub_1E4709D5C();
  v71 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v4);
  v68 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E4709D7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E4650534(&qword_1ECF74D70, &unk_1E471DBD0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v60 - v13;
  v15 = sub_1E4650534(&qword_1ECF74D78, &unk_1E471D870);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v60 - v17;
  v19 = sub_1E4709A3C();
  v69 = *(v19 - 8);
  v70 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v60 - v25;
  v27 = sub_1E4709CCC();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v35 = MEMORY[0x1EEE9AC00](v30, v31);
  if (a1 <= 9999)
  {
    (*(v28 + 56))(v26, 1, 1, v35);
LABEL_4:
    result = sub_1E465E050(v26, &unk_1ECF74CD0, &qword_1E471B620);
    *a2 = 0;
    a2[1] = 0;
    *(a2 + 16) = 1;
    return result;
  }

  v63 = &v60 - v33;
  v64 = v34;
  v36 = *(v7 + 56);
  v65 = v32;
  v66 = a2;
  v36(v18, 1, 1, v6, v35);
  v37 = sub_1E4709D8C();
  (*(*(v37 - 8) + 56))(v14, 1, 1, v37);
  a2 = v66;
  v38 = v65;
  sub_1E4709A2C();
  sub_1E4709CDC();
  sub_1E4709D1C();
  v41 = *(v7 + 8);
  v40 = v7 + 8;
  v39 = v41;
  v41(v10, v6);
  (*(v69 + 8))(v22, v70);
  if ((*(v28 + 48))(v26, 1, v38) == 1)
  {
    goto LABEL_4;
  }

  v62 = v39;
  v69 = v40;
  v70 = v6;
  v43 = v63;
  (*(v28 + 32))(v63, v26, v38);
  (*(v28 + 16))(v64, v43, v38);
  sub_1E4709CDC();
  v44 = v71;
  v45 = *(v71 + 104);
  v47 = v67;
  v46 = v68;
  v45(v68, *MEMORY[0x1E6969A68], v67);
  v48 = sub_1E4709D6C();
  v49 = *(v44 + 8);
  v49(v46, v47);
  v50 = *MEMORY[0x1E6969A78];
  v61 = v45;
  v45(v46, v50, v47);
  v51 = sub_1E4709D6C();
  v71 = v44 + 8;
  result = (v49)(v46, v47);
  v52 = 100 * v48;
  if ((v48 * 100) >> 64 == (100 * v48) >> 63)
  {
    v53 = v52 + v51;
    if (!__OFADD__(v52, v51))
    {
      v54 = v68;
      v61(v68, *MEMORY[0x1E6969A48], v47);
      v55 = v64;
      v56 = sub_1E4709D6C();
      v49(v54, v47);
      v62(v10, v70);
      v57 = *(v28 + 8);
      v58 = v65;
      v57(v55, v65);
      result = (v57)(v63, v58);
      v59 = v66;
      *v66 = v53;
      v59[1] = v56;
      *(v59 + 16) = 0;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1E46A34A8(uint64_t a1@<X8>)
{
  v3 = sub_1E4709D7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E4650534(&qword_1ECF74D70, &unk_1E471DBD0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v28 - v10;
  v12 = sub_1E4650534(&qword_1ECF74D78, &unk_1E471D870);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v28 - v14;
  v16 = sub_1E4709A3C();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 100 * *v1;
  if ((*v1 * 100) >> 64 != v22 >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  v23 = v1[1];
  if (__OFADD__(v22, v23))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v22 + v23 > 9999)
  {
    v26 = *(v4 + 56);
    v28[1] = a1;
    v26(v15, 1, 1, v3, v19);
    v27 = sub_1E4709D8C();
    (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
    sub_1E4709A2C();
    sub_1E4709CDC();
    sub_1E4709D1C();
    (*(v4 + 8))(v7, v3);
    (*(v17 + 8))(v21, v16);
  }

  else
  {
    v24 = sub_1E4709CCC();
    v25 = *(*(v24 - 8) + 56);

    v25(a1, 1, 1, v24);
  }
}

uint64_t sub_1E46A38A8@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v38 = a1;
  v39 = a2;
  v2 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v37 = &v34 - v4;
  v5 = sub_1E4709CCC();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v34 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E4650534(&qword_1ECF75038, &qword_1E471E768);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v34 - v15;
  type metadata accessor for ReadingHistoryModel(0);
  sub_1E4650534(&unk_1ECF74CF0, &qword_1E471D828);
  sub_1E45E2F14(&qword_1EE2ACDB0, &unk_1ECF74CF0, &qword_1E471D828, MEMORY[0x1E6995250]);
  sub_1E470B19C();
  sub_1E470B1CC();
  sub_1E45E2F14(&qword_1EE2ACDD0, &qword_1ECF75038, &qword_1E471E768, MEMORY[0x1E69950B8]);
  v17 = sub_1E470AEFC();
  v18 = *(v9 + 8);
  v18(v12, v8);
  v19 = (v18)(v16, v8);
  if (v17)
  {
    v21 = type metadata accessor for ReadingHistory.Streak(0);
    v22 = *(*(v21 - 8) + 56);
    v23 = v39;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v19, v20);
    *(&v34 - 2) = v38;
    v24 = sub_1E46A1F48(0, sub_1E46B40C8, (&v34 - 4));
    v25 = v39;
    if (v24 >= 2)
    {
      v26 = v24;
      v40 = v24;
      v27 = v37;
      sub_1E470AB0C();
      v29 = v35;
      v28 = v36;
      if ((*(v35 + 48))(v27, 1, v36) != 1)
      {
        v31 = *(v29 + 32);
        v32 = v34;
        v31(v34, v27, v28);
        v31(v25, v32, v28);
        v33 = type metadata accessor for ReadingHistory.Streak(0);
        *&v25[*(v33 + 20)] = v26;
        return (*(*(v33 - 8) + 56))(v25, 0, 1, v33);
      }

      sub_1E465E050(v27, &unk_1ECF74CD0, &qword_1E471B620);
    }

    v21 = type metadata accessor for ReadingHistory.Streak(0);
    v22 = *(*(v21 - 8) + 56);
    v23 = v25;
  }

  return v22(v23, 1, 1, v21);
}

BOOL sub_1E46A3D04(uint64_t a1, int a2)
{
  v33 = a2;
  v3 = sub_1E4709CCC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v31 - v14;
  v16 = sub_1E4650534(&qword_1ECF74200, &qword_1E471AF80);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v31 - v18;
  ReadingHistoryModel.readingHistoryDay(for:)(&v31 - v18);
  v20 = type metadata accessor for ReadingHistoryDay(0);
  if ((*(*(v20 - 8) + 48))(v19, 1, v20) == 1)
  {
    sub_1E465E050(v19, &qword_1ECF74200, &qword_1E471AF80);
  }

  else
  {
    v21 = sub_1E470AD8C();
    v32 = v11;
    v22 = v7;
    v23 = v3;
    v24 = a1;
    v25 = v4;
    v26 = v21;
    sub_1E4650534(&qword_1ECF741E8, &qword_1E471D590);
    sub_1E470A62C();
    v27 = v34;
    sub_1E46AE460(v19, type metadata accessor for ReadingHistoryDay);
    v28 = v26 < v27;
    v4 = v25;
    a1 = v24;
    v3 = v23;
    v7 = v22;
    v11 = v32;
    if (!v28)
    {
      return 1;
    }
  }

  if (v33)
  {
    sub_1E46AE7FC(a1, v15);
    sub_1E465E0B0(v15, v11, &unk_1ECF74CD0, &qword_1E471B620);
    if ((*(v4 + 48))(v11, 1, v3) == 1)
    {
      sub_1E465E050(v15, &unk_1ECF74CD0, &qword_1E471B620);
      sub_1E465E050(v11, &unk_1ECF74CD0, &qword_1E471B620);
      return 0;
    }

    (*(v4 + 32))(v7, v11, v3);
    v29 = sub_1E4709C7C();
    (*(v4 + 8))(v7, v3);
    sub_1E465E050(v15, &unk_1ECF74CD0, &qword_1E471B620);
    return (v29 & 1) != 0;
  }

  return 0;
}

void *sub_1E46A4088(uint64_t a1, int a2)
{
  v72 = a2;
  v3 = sub_1E4650534(&qword_1ECF74200, &qword_1E471AF80);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v54 - v5;
  v7 = type metadata accessor for ReadingHistoryDay(0);
  v8 = *(v7 - 8);
  v69 = v7;
  v70 = v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1E4709A3C();
  v68 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v12);
  v59 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v66 = &v54 - v20;
  v21 = sub_1E4709CCC();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v67 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v63 = &v54 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v54 - v30;
  v55 = sub_1E4709D7C();
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v32);
  v71 = &v54 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4709CDC();
  v34 = *(v22 + 16);
  v22 += 16;
  v34(v31, a1, v21);
  v35 = 0;
  v64 = (v22 + 32);
  v36 = (v22 + 16);
  v37 = (v22 - 8);
  v38 = v6;
  v58 = *MEMORY[0x1E6969A48];
  v57 = (v68 + 1);
  v68 = (v70 + 48);
  v56 = xmmword_1E471BA00;
  v70 = v17;
  v61 = v6;
  v65 = v37;
  if (v72)
  {
LABEL_5:
    while (1)
    {
      v39 = v66;
      sub_1E46AE7FC(v31, v66);
      sub_1E465E0B0(v39, v17, &unk_1ECF74CD0, &qword_1E471B620);
      if ((*v64)(v17, 1, v21) == 1)
      {
        break;
      }

      v41 = *v36;
      v42 = v63;
      (*v36)();
      if ((sub_1E4709C7C() & 1) == 0)
      {
        v37 = v65;
        (*v65)(v42, v21);
        v40 = v66;
        goto LABEL_14;
      }

      v62 = v41;
      sub_1E4650534(&qword_1ECF74DF8, &qword_1E471DB10);
      v43 = sub_1E4709D5C();
      v44 = *(v43 - 8);
      v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v46 = swift_allocObject();
      *(v46 + 16) = v56;
      (*(v44 + 104))(v46 + v45, v58, v43);
      sub_1E46A06B8(v46);
      swift_setDeallocating();
      (*(v44 + 8))(v46 + v45, v43);
      swift_deallocClassInstance();
      v47 = v59;
      sub_1E4709CFC();

      v48 = sub_1E47099FC();
      LOBYTE(v43) = v49;
      (*v57)(v47, v60);
      sub_1E465E050(v66, &unk_1ECF74CD0, &qword_1E471B620);
      v37 = v65;
      result = (*v65)(v31, v21);
      if ((v43 & 1) != 0 || v48 < 1)
      {
        v38 = v61;
        v17 = v70;
      }

      else
      {
        v51 = __OFADD__(v35, v48);
        v35 += v48;
        v38 = v61;
        v17 = v70;
        if (v51)
        {
          goto LABEL_24;
        }
      }

      (v62)(v31, v63, v21);
      if ((v72 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    sub_1E465E050(v39, &unk_1ECF74CD0, &qword_1E471B620);
    v40 = v17;
    v37 = v65;
LABEL_14:
    sub_1E465E050(v40, &unk_1ECF74CD0, &qword_1E471B620);
    goto LABEL_15;
  }

  while (1)
  {
LABEL_15:
    ReadingHistoryModel.readingHistoryDay(for:)(v38);
    if ((*v68)(v38, 1, v69) == 1)
    {
      (*v37)(v31, v21);
      (*(v54 + 8))(v71, v55);
      sub_1E465E050(v38, &qword_1ECF74200, &qword_1E471AF80);
      return v35;
    }

    sub_1E46B4060(v38, v11, type metadata accessor for ReadingHistoryDay);
    v52 = sub_1E470AD8C();
    sub_1E4650534(&qword_1ECF741E8, &qword_1E471D590);
    result = sub_1E470A62C();
    if (v52 < v73)
    {
      sub_1E46AE460(v11, type metadata accessor for ReadingHistoryDay);
      (*v37)(v31, v21);
      (*(v54 + 8))(v71, v55);
      return v35;
    }

    v51 = __OFADD__(v35++, 1);
    if (v51)
    {
      break;
    }

    v53 = v67;
    sub_1E4709BFC();
    sub_1E46AE460(v11, type metadata accessor for ReadingHistoryDay);
    (*v37)(v31, v21);
    (*v36)(v31, v53, v21);
    v17 = v70;
    if (v72)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E46A48B8(uint64_t a1)
{
  v223 = sub_1E4650534(&qword_1ECF74FB0, &qword_1E471E6E8);
  MEMORY[0x1EEE9AC00](v223, v3);
  v222 = &v200 - v4;
  v5 = sub_1E4650534(&qword_1ECF74FB8, &qword_1E471E6F0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v211 = &v200 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v212 = &v200 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v218 = &v200 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v227 = &v200 - v16;
  v217 = sub_1E4650534(&qword_1ECF74FC0, &qword_1E471E6F8);
  v216 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217, v17);
  v215 = &v200 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v221 = &v200 - v21;
  v214 = sub_1E4650534(&qword_1ECF74FC8, &qword_1E471E700);
  MEMORY[0x1EEE9AC00](v214, v22);
  v213 = &v200 - v23;
  v232 = sub_1E4650534(&qword_1ECF74D60, &qword_1E471D858);
  v228 = *(v232 - 8);
  MEMORY[0x1EEE9AC00](v232, v24);
  v231 = &v200 - v25;
  v26 = type metadata accessor for ReadingHistoryMonth(0);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v230 = &v200 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1E4650534(&unk_1ECF74D30, &unk_1E471DB90);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v226 = (&v200 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v200 - v34;
  v36 = sub_1E4650534(&qword_1ECF74FD0, &qword_1E471E708);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v207 = &v200 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v209 = &v200 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v200 - v44;
  v46 = sub_1E4650534(&qword_1ECF74FD8, &qword_1E471E710);
  MEMORY[0x1EEE9AC00](v46 - 8, v47);
  v49 = &v200 - v48;
  v50 = sub_1E4650534(&qword_1ECF74FE0, &qword_1E471E718);
  v51 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v52);
  v206 = &v200 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54, v55);
  v208 = &v200 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v60 = &v200 - v59;
  MEMORY[0x1EEE9AC00](v61, v62);
  v64 = &v200 - v63;
  v235 = MEMORY[0x1E69E7CD0];
  type metadata accessor for ReadingHistoryModel(0);
  sub_1E46AE3F8(&qword_1EE2ADA88, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);
  v224 = a1;
  v225 = v1;
  sub_1E470AC1C();
  if ((*(v51 + 48))(v49, 1, v50) == 1)
  {
    sub_1E465E050(v49, &qword_1ECF74FD8, &qword_1E471E710);
    return MEMORY[0x1E69E7CD0];
  }

  else
  {
    sub_1E46574C0(v49, v64, &qword_1ECF74FE0, &qword_1E471E718);
    v210 = v64;
    sub_1E465E0B0(v64, v60, &qword_1ECF74FE0, &qword_1E471E718);
    v205 = v50;
    v66 = *(v50 + 48);
    sub_1E46574C0(v60, v45, &qword_1ECF74FD0, &qword_1E471E708);
    v67 = sub_1E4650534(&qword_1ECF74FE8, &unk_1E471E720);
    v68 = *(v67 - 8);
    v69 = *(v68 + 48);
    v203 = v68 + 48;
    v202 = v69;
    v70 = v69(v45, 1, v67);
    v204 = v67;
    v220 = v35;
    v201 = v68;
    if (v70 == 1)
    {
      sub_1E465E050(&v60[v66], &qword_1ECF74DA8, &qword_1E471D8A8);
      result = sub_1E465E050(v45, &qword_1ECF74FD0, &qword_1E471E708);
      v71 = MEMORY[0x1E69E7CD0];
    }

    else
    {
      v71 = sub_1E470AA3C();
      (*(v68 + 8))(v45, v67);
      result = sub_1E465E050(&v60[v66], &qword_1ECF74DA8, &qword_1E471D8A8);
    }

    v72 = 0;
    v233 = 0;
    v73 = v71 + 56;
    v74 = 1 << *(v71 + 32);
    v75 = -1;
    if (v74 < 64)
    {
      v75 = ~(-1 << v74);
    }

    v76 = v75 & *(v71 + 56);
    v77 = (v74 + 63) >> 6;
    v78 = v228;
    v228 += 8;
    v229 = (v78 + 16);
    v219 = v71;
    v79 = v230;
    if (!v76)
    {
LABEL_10:
      while (1)
      {
        v80 = v72 + 1;
        if (__OFADD__(v72, 1))
        {
          break;
        }

        if (v80 >= v77)
        {

          v88 = v208;
          sub_1E465E0B0(v210, v208, &qword_1ECF74FE0, &qword_1E471E718);
          v89 = *(v205 + 48);
          v90 = v209;
          sub_1E46574C0(v88, v209, &qword_1ECF74FD0, &qword_1E471E708);
          v91 = v204;
          if (v202(v90, 1, v204) == 1)
          {
            sub_1E465E050(v88 + v89, &qword_1ECF74DA8, &qword_1E471D8A8);
            result = sub_1E465E050(v90, &qword_1ECF74FD0, &qword_1E471E708);
            v92 = MEMORY[0x1E69E7CD0];
          }

          else
          {
            v92 = sub_1E470AA4C();
            (*(v201 + 8))(v90, v91);
            result = sub_1E465E050(v88 + v89, &qword_1ECF74DA8, &qword_1E471D8A8);
          }

          v93 = 0;
          v94 = 1 << *(v92 + 32);
          v95 = -1;
          if (v94 < 64)
          {
            v95 = ~(-1 << v94);
          }

          v96 = v95 & *(v92 + 56);
          for (i = (v94 + 63) >> 6; v96; v93 = v98)
          {
            v98 = v93;
            v99 = v226;
LABEL_27:
            v100 = *(*(v92 + 48) + ((v98 << 9) | (8 * __clz(__rbit64(v96)))));
            v234 = v100;
            sub_1E4650534(&unk_1ECF74D00, &unk_1E471DBA0);
            sub_1E470AB0C();
            v101 = sub_1E4650534(&unk_1ECF74D50, &qword_1E471D848);
            v102 = *(v101 - 8);
            result = (*(v102 + 48))(v99, 1, v101);
            if (result == 1)
            {
              goto LABEL_105;
            }

            v103 = v99;
            v96 &= v96 - 1;
            v104 = v230;
            MEMORY[0x1E69159F0](v101);
            (*(v102 + 8))(v103, v101);
            v106 = v231;
            v105 = v232;
            (*v229)(v231, v104, v232);
            sub_1E46AE460(v104, type metadata accessor for ReadingHistoryMonth);
            v107 = v233;
            sub_1E46A1BAC(v106, &v235, v100);
            v233 = v107;
            result = (*v228)(v106, v105);
          }

          v99 = v226;
          while (1)
          {
            v98 = v93 + 1;
            if (__OFADD__(v93, 1))
            {
              break;
            }

            if (v98 >= i)
            {

              v108 = v210;
              v109 = v206;
              sub_1E465E0B0(v210, v206, &qword_1ECF74FE0, &qword_1E471E718);
              v110 = *(v205 + 48);
              v111 = v207;
              sub_1E46574C0(v109, v207, &qword_1ECF74FD0, &qword_1E471E708);
              v112 = v204;
              if (v202(v111, 1, v204) == 1)
              {
                sub_1E465E050(v108, &qword_1ECF74FE0, &qword_1E471E718);
                sub_1E465E050(v109 + v110, &qword_1ECF74DA8, &qword_1E471D8A8);
                v113 = &qword_1ECF74FD0;
                v114 = &qword_1E471E708;
                v115 = v111;
LABEL_97:
                sub_1E465E050(v115, v113, v114);
                return v235;
              }

              v116 = sub_1E470AA5C();
              (*(v201 + 8))(v111, v112);
              result = sub_1E465E050(v109 + v110, &qword_1ECF74DA8, &qword_1E471D8A8);
              v117 = 0;
              v119 = v116 + 64;
              v118 = *(v116 + 64);
              v224 = v116;
              v120 = 1 << *(v116 + 32);
              if (v120 < 64)
              {
                v121 = ~(-1 << v120);
              }

              else
              {
                v121 = -1;
              }

              v122 = v121 & v118;
              v123 = (v120 + 63) >> 6;
              v220 = (v116 + 64);
              v219 = v123;
LABEL_38:
              if (v122)
              {
                v127 = v117;
LABEL_43:
                v231 = v122;
                v225 = v127;
                v128 = __clz(__rbit64(v122)) | (v127 << 6);
                v129 = *(*(v224 + 48) + 8 * v128);
                v130 = &v213[*(v214 + 48)];
                sub_1E465E0B0(*(v224 + 56) + *(v216 + 72) * v128, v130, &qword_1ECF74FC0, &qword_1E471E6F8);
                v131 = v217;
                v132 = *(v217 + 48);
                v133 = *(v217 + 64);
                v134 = v221;
                sub_1E46574C0(v130, v221, &qword_1ECF74FB8, &qword_1E471E6F0);
                sub_1E46574C0(v130 + v132, v134 + v132, &qword_1ECF74FF0, &qword_1E471E730);
                sub_1E46574C0(v130 + v133, v134 + v133, &qword_1ECF74FF0, &qword_1E471E730);
                v135 = v215;
                sub_1E465E0B0(v134, v215, &qword_1ECF74FC0, &qword_1E471E6F8);
                v136 = *(v131 + 48);
                v137 = *(v131 + 64);
                v138 = v227;
                sub_1E46574C0(v135, v227, &qword_1ECF74FB8, &qword_1E471E6F0);
                sub_1E465E050(v135 + v137, &qword_1ECF74FF0, &qword_1E471E730);
                sub_1E465E050(v135 + v136, &qword_1ECF74FF0, &qword_1E471E730);
                v139 = v218;
                sub_1E465E0B0(v138, v218, &qword_1ECF74FB8, &qword_1E471E6F0);
                v140 = sub_1E4650534(&qword_1ECF74FF8, &qword_1E471E738);
                v141 = *(v140 - 8);
                v228 = *(v141 + 6);
                v229 = (v141 + 48);
                v142 = (v228)(v139, 1, v140);
                v230 = v140;
                v226 = v141;
                if (v142 == 1)
                {
                  sub_1E465E050(v139, &qword_1ECF74FB8, &qword_1E471E6F0);
                  result = MEMORY[0x1E69E7CD0];
                }

                else
                {
                  v143 = sub_1E470AA3C();
                  (*(v141 + 1))(v139, v140);
                  result = v143;
                }

                v144 = 0;
                v231 &= v231 - 1;
                v145 = result + 56;
                v146 = 1 << *(result + 32);
                if (v146 < 64)
                {
                  v147 = ~(-1 << v146);
                }

                else
                {
                  v147 = -1;
                }

                v148 = v147 & *(result + 56);
                v149 = v235;
                v150 = (v146 + 63) >> 6;
LABEL_51:
                v152 = v149 + 56;
                v153 = v144;
                v232 = v149;
                if (!v148)
                {
                  goto LABEL_53;
                }

                do
                {
                  v144 = v153;
LABEL_56:
                  v154 = __clz(__rbit64(v148));
                  v148 &= v148 - 1;
                  v155 = result;
                  v156 = *(*(result + 48) + ((v144 << 9) | (8 * v154)));
                  sub_1E470B8FC();
                  MEMORY[0x1E6916620](v129);
                  MEMORY[0x1E6916620](v156);
                  v157 = sub_1E470B91C();
                  v149 = v232;
                  v158 = -1 << *(v232 + 32);
                  v159 = v157 & ~v158;
                  if (((*(v152 + ((v159 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v159) & 1) == 0)
                  {
LABEL_50:
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v234 = v149;
                    sub_1E46C8680(v129, v156, v159, isUniquelyReferenced_nonNull_native);
                    v149 = v234;
                    result = v155;
                    goto LABEL_51;
                  }

                  v160 = ~v158;
                  while (1)
                  {
                    v161 = (*(v232 + 48) + 16 * v159);
                    if (*v161 == v129 && v161[1] == v156)
                    {
                      break;
                    }

                    v159 = (v159 + 1) & v160;
                    if (((*(v152 + ((v159 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v159) & 1) == 0)
                    {
                      goto LABEL_50;
                    }
                  }

                  v153 = v144;
                  result = v155;
                }

                while (v148);
                while (1)
                {
LABEL_53:
                  v144 = v153 + 1;
                  if (__OFADD__(v153, 1))
                  {
                    __break(1u);
                    goto LABEL_99;
                  }

                  if (v144 >= v150)
                  {
                    break;
                  }

                  v148 = *(v145 + 8 * v144);
                  ++v153;
                  if (v148)
                  {
                    goto LABEL_56;
                  }
                }

                v235 = v149;

                v162 = v212;
                sub_1E465E0B0(v227, v212, &qword_1ECF74FB8, &qword_1E471E6F0);
                v163 = v230;
                if ((v228)(v162, 1, v230) == 1)
                {
                  result = sub_1E465E050(v162, &qword_1ECF74FB8, &qword_1E471E6F0);
                  v164 = MEMORY[0x1E69E7CD0];
                }

                else
                {
                  v164 = sub_1E470AA4C();
                  result = v226[1](v162, v163);
                }

                v165 = 0;
                v166 = 1 << *(v164 + 32);
                if (v166 < 64)
                {
                  v167 = ~(-1 << v166);
                }

                else
                {
                  v167 = -1;
                }

                v168 = v167 & *(v164 + 56);
                v169 = (v166 + 63) >> 6;
                v170 = v232;
LABEL_71:
                v172 = v170 + 56;
                v173 = v165;
                if (!v168)
                {
                  goto LABEL_73;
                }

                do
                {
                  v165 = v173;
LABEL_76:
                  v174 = __clz(__rbit64(v168));
                  v168 &= v168 - 1;
                  v175 = *(*(v164 + 48) + ((v165 << 9) | (8 * v174)));
                  sub_1E470B8FC();
                  MEMORY[0x1E6916620](v129);
                  MEMORY[0x1E6916620](v175);
                  result = sub_1E470B91C();
                  v176 = -1 << *(v170 + 32);
                  v177 = result & ~v176;
                  if (((*(v172 + ((v177 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v177) & 1) == 0)
                  {
LABEL_70:
                    v171 = swift_isUniquelyReferenced_nonNull_native();
                    v234 = v170;
                    result = sub_1E46C8680(v129, v175, v177, v171);
                    v170 = v234;
                    goto LABEL_71;
                  }

                  v178 = ~v176;
                  while (1)
                  {
                    v179 = (*(v170 + 48) + 16 * v177);
                    if (*v179 == v129 && v179[1] == v175)
                    {
                      break;
                    }

                    v177 = (v177 + 1) & v178;
                    if (((*(v172 + ((v177 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v177) & 1) == 0)
                    {
                      goto LABEL_70;
                    }
                  }

                  v173 = v165;
                }

                while (v168);
LABEL_73:
                while (1)
                {
                  v165 = v173 + 1;
                  if (__OFADD__(v173, 1))
                  {
                    break;
                  }

                  if (v165 >= v169)
                  {
                    v235 = v170;

                    v180 = v227;
                    v181 = v211;
                    sub_1E465E0B0(v227, v211, &qword_1ECF74FB8, &qword_1E471E6F0);
                    v182 = v230;
                    if ((v228)(v181, 1, v230) == 1)
                    {
                      sub_1E465E050(v180, &qword_1ECF74FB8, &qword_1E471E6F0);
                      sub_1E465E050(v221, &qword_1ECF74FC0, &qword_1E471E6F8);
                      v124 = v181;
                      v125 = &qword_1ECF74FB8;
                      v126 = &qword_1E471E6F0;
LABEL_37:
                      result = sub_1E465E050(v124, v125, v126);
                      v117 = v225;
                      v119 = v220;
                      v123 = v219;
                      v122 = v231;
                      goto LABEL_38;
                    }

                    v183 = sub_1E470AA5C();
                    result = v226[1](v181, v182);
                    v184 = 0;
                    v186 = v183 + 64;
                    v185 = *(v183 + 64);
                    v232 = v183;
                    v187 = 1 << *(v183 + 32);
                    if (v187 < 64)
                    {
                      v188 = ~(-1 << v187);
                    }

                    else
                    {
                      v188 = -1;
                    }

                    v189 = v188 & v185;
                    v190 = (v187 + 63) >> 6;
                    if ((v188 & v185) != 0)
                    {
                      do
                      {
                        v191 = v184;
LABEL_93:
                        v192 = __clz(__rbit64(v189));
                        v189 &= v189 - 1;
                        v193 = v192 | (v191 << 6);
                        v194 = *(v232 + 56);
                        v195 = *(*(v232 + 48) + 8 * v193);
                        v196 = (sub_1E4650534(&qword_1ECF75000, &unk_1E471E740) - 8);
                        v197 = v194 + *(*v196 + 72) * v193;
                        v198 = &v222[*(v223 + 48)];
                        sub_1E465E0B0(v197, v198, &qword_1ECF75000, &unk_1E471E740);
                        v199 = v196[14];
                        sub_1E46C7FEC(&v234, v129, v195);
                        result = sub_1E465E050(v198 + v199, &qword_1ECF74FF0, &qword_1E471E730);
                      }

                      while (v189);
                    }

                    while (1)
                    {
                      v191 = v184 + 1;
                      if (__OFADD__(v184, 1))
                      {
                        goto LABEL_102;
                      }

                      if (v191 >= v190)
                      {

                        sub_1E465E050(v227, &qword_1ECF74FB8, &qword_1E471E6F0);
                        v124 = v221;
                        v125 = &qword_1ECF74FC0;
                        v126 = &qword_1E471E6F8;
                        goto LABEL_37;
                      }

                      v189 = *(v186 + 8 * v191);
                      ++v184;
                      if (v189)
                      {
                        v184 = v191;
                        goto LABEL_93;
                      }
                    }
                  }

                  v168 = *(v164 + 56 + 8 * v165);
                  ++v173;
                  if (v168)
                  {
                    goto LABEL_76;
                  }
                }

LABEL_99:
                __break(1u);
                goto LABEL_100;
              }

              while (1)
              {
                v127 = v117 + 1;
                if (__OFADD__(v117, 1))
                {
                  goto LABEL_103;
                }

                if (v127 >= v123)
                {

                  v113 = &qword_1ECF74FE0;
                  v114 = &qword_1E471E718;
                  v115 = v210;
                  goto LABEL_97;
                }

                v122 = *(v119 + 8 * v127);
                ++v117;
                if (v122)
                {
                  goto LABEL_43;
                }
              }
            }

            v96 = *(v92 + 56 + 8 * v98);
            ++v93;
            if (v96)
            {
              goto LABEL_27;
            }
          }

LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

        v76 = *(v73 + 8 * v80);
        ++v72;
        if (v76)
        {
          goto LABEL_13;
        }
      }

LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    while (1)
    {
      v80 = v72;
LABEL_13:
      v81 = *(*(v71 + 48) + ((v80 << 9) | (8 * __clz(__rbit64(v76)))));
      v234 = v81;
      sub_1E4650534(&unk_1ECF74D00, &unk_1E471DBA0);
      v82 = v220;
      sub_1E470AB0C();
      v83 = sub_1E4650534(&unk_1ECF74D50, &qword_1E471D848);
      v84 = *(v83 - 8);
      result = (*(v84 + 48))(v82, 1, v83);
      if (result == 1)
      {
        break;
      }

      v76 &= v76 - 1;
      MEMORY[0x1E69159F0](v83);
      (*(v84 + 8))(v82, v83);
      v86 = v231;
      v85 = v232;
      (*v229)(v231, v79, v232);
      sub_1E46AE460(v79, type metadata accessor for ReadingHistoryMonth);
      v87 = v233;
      sub_1E46A1BAC(v86, &v235, v81);
      v233 = v87;
      result = (*v228)(v86, v85);
      v72 = v80;
      v71 = v219;
      if (!v76)
      {
        goto LABEL_10;
      }
    }

LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
  }

  return result;
}

uint64_t ReadingHistoryModel.setGoal(_:date:)(uint64_t a1, uint64_t a2)
{
  v51 = a1;
  v3 = sub_1E4650534(&unk_1ECF74D30, &unk_1E471DB90);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v57 = &v46 - v5;
  v6 = sub_1E4650534(&unk_1ECF74D50, &qword_1E471D848);
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v50 = &v46 - v8;
  v53 = type metadata accessor for ReadingHistoryMonth(0);
  MEMORY[0x1EEE9AC00](v53, v9);
  v52 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v54 = &v46 - v13;
  v14 = sub_1E4709D5C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E4709D7C();
  v48 = *(v19 - 8);
  v49 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E4709CCC();
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v27 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v28;
  v29 = *(v28 + 16);
  v47 = v30;
  v29(v27, a2, v25);
  sub_1E4709CDC();
  v31 = *(v15 + 104);
  v31(v18, *MEMORY[0x1E6969A68], v14);
  v32 = sub_1E4709D6C();
  v33 = *(v15 + 8);
  v33(v18, v14);
  v31(v18, *MEMORY[0x1E6969A78], v14);
  v34 = sub_1E4709D6C();
  result = (v33)(v18, v14);
  v36 = 100 * v32;
  if ((v32 * 100) >> 64 == (100 * v32) >> 63)
  {
    v37 = v36 + v34;
    if (!__OFADD__(v36, v34))
    {
      v31(v18, *MEMORY[0x1E6969A48], v14);
      v38 = sub_1E4709D6C();
      v33(v18, v14);
      (*(v48 + 8))(v22, v49);
      (*(v46 + 8))(v27, v47);
      v59[0] = v37;
      sub_1E4650534(&unk_1ECF74D00, &unk_1E471DBA0);
      v49 = v37;
      v39 = v50;
      sub_1E470AAEC();
      v40 = v54;
      v41 = v56;
      MEMORY[0x1E6915A10](v56);
      v42 = v55;
      (*(v55 + 8))(v39, v41);
      v59[4] = v38;
      v59[5] = v51;
      sub_1E4650534(&qword_1ECF74D60, &qword_1E471D858);
      v43 = sub_1E470AADC();
      sub_1E4650534(&unk_1ECF74D80, &unk_1E471DBB0);
      v44 = sub_1E470ACEC();
      type metadata accessor for ReadingHistoryDay(0);
      sub_1E4650534(&qword_1ECF741E8, &qword_1E471D590);
      sub_1E470A63C();
      v44(v58, 0);
      v43(v59, 0);
      sub_1E46AE390(v40, v52, type metadata accessor for ReadingHistoryMonth);
      sub_1E46AE3F8(&qword_1ECF74F10, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);
      v45 = v57;
      sub_1E470AD0C();
      (*(v42 + 56))(v45, 0, 1, v41);
      v59[0] = v49;
      sub_1E470AB1C();
      return sub_1E46AE460(v40, type metadata accessor for ReadingHistoryMonth);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *static ReadingHistoryModel.DayKey.< infix(_:_:)(uint64_t *result, uint64_t *a2)
{
  v2 = 100 * *result;
  if ((*result * 100) >> 64 != v2 >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result[1];
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = 100 * *a2;
  if ((*a2 * 100) >> 64 != v6 >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = a2[1];
  v4 = __OFADD__(v6, v7);
  v8 = v6 + v7;
  if (!v4)
  {
    return (v5 < v8);
  }

LABEL_9:
  __break(1u);
  return result;
}

BOOL sub_1E46A6620(uint64_t a1, int a2)
{
  v34 = a2;
  v3 = sub_1E4709CCC();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v31 - v13;
  v15 = sub_1E470ADBC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E4650534(&qword_1ECF74200, &qword_1E471AF80);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v31 - v22;
  v24 = a1;
  ReadingHistoryModel.readingHistoryDay(for:)(&v31 - v22);
  v25 = type metadata accessor for ReadingHistoryDay(0);
  if ((*(*(v25 - 8) + 48))(v23, 1, v25) == 1)
  {
    sub_1E465E050(v23, &qword_1ECF74200, &qword_1E471AF80);
  }

  else
  {
    (*(v16 + 16))(v19, v23, v15);
    sub_1E46AE460(v23, type metadata accessor for ReadingHistoryDay);
    v26 = sub_1E470AD8C();
    (*(v16 + 8))(v19, v15);
    if (v26 > 0)
    {
      return 1;
    }
  }

  if (v34)
  {
    sub_1E46AE7FC(v24, v14);
    sub_1E465E0B0(v14, v10, &unk_1ECF74CD0, &qword_1E471B620);
    v28 = v32;
    v27 = v33;
    if ((*(v32 + 48))(v10, 1, v33) == 1)
    {
      sub_1E465E050(v14, &unk_1ECF74CD0, &qword_1E471B620);
      sub_1E465E050(v10, &unk_1ECF74CD0, &qword_1E471B620);
      return 0;
    }

    (*(v28 + 32))(v6, v10, v27);
    v29 = sub_1E4709C7C();
    (*(v28 + 8))(v6, v27);
    sub_1E465E050(v14, &unk_1ECF74CD0, &qword_1E471B620);
    return (v29 & 1) != 0;
  }

  return 0;
}

uint64_t ReadingHistoryModel.incrementReadingTime(date:amount:defaultGoal:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a3;
  v56 = a2;
  v4 = sub_1E4650534(&unk_1ECF74D30, &unk_1E471DB90);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v59 = &v47 - v6;
  v7 = sub_1E4650534(&unk_1ECF74D50, &qword_1E471D848);
  v57 = *(v7 - 8);
  v58 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v51 = &v47 - v9;
  v54 = type metadata accessor for ReadingHistoryMonth(0);
  MEMORY[0x1EEE9AC00](v54, v10);
  v53 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v55 = &v47 - v14;
  v15 = sub_1E4709D5C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E4709D7C();
  v49 = *(v20 - 8);
  v50 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1E4709CCC();
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v28 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v29;
  v30 = *(v29 + 16);
  v48 = v31;
  v30(v28, a1, v26);
  sub_1E4709CDC();
  v32 = *(v16 + 104);
  v32(v19, *MEMORY[0x1E6969A68], v15);
  v33 = sub_1E4709D6C();
  v34 = *(v16 + 8);
  v34(v19, v15);
  v32(v19, *MEMORY[0x1E6969A78], v15);
  v35 = sub_1E4709D6C();
  result = (v34)(v19, v15);
  v37 = 100 * v33;
  if ((v33 * 100) >> 64 == (100 * v33) >> 63)
  {
    v38 = v37 + v35;
    if (!__OFADD__(v37, v35))
    {
      v32(v19, *MEMORY[0x1E6969A48], v15);
      v39 = sub_1E4709D6C();
      v34(v19, v15);
      (*(v49 + 8))(v23, v50);
      (*(v47 + 8))(v28, v48);
      v61[0] = v38;
      sub_1E4650534(&unk_1ECF74D00, &unk_1E471DBA0);
      v50 = v38;
      v40 = v51;
      sub_1E470AAEC();
      v41 = v55;
      v42 = v58;
      MEMORY[0x1E6915A10](v58);
      v43 = v57;
      (*(v57 + 8))(v40, v42);
      *(swift_allocObject() + 16) = v52;
      v61[4] = v39;
      sub_1E4650534(&qword_1ECF74D60, &qword_1E471D858);
      v44 = sub_1E470AADC();
      sub_1E4650534(&unk_1ECF74D80, &unk_1E471DBB0);
      v45 = sub_1E470ACEC();
      sub_1E470AD9C();
      v45(v60, 0);
      v44(v61, 0);
      sub_1E46AE390(v41, v53, type metadata accessor for ReadingHistoryMonth);
      sub_1E46AE3F8(&qword_1ECF74F10, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);
      v46 = v59;
      sub_1E470AD0C();
      (*(v43 + 56))(v46, 0, 1, v42);
      v61[0] = v50;
      sub_1E470AB1C();
      sub_1E46AE460(v41, type metadata accessor for ReadingHistoryMonth);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ReadingHistoryModel.mergeDay(date:day:)(uint64_t a1, uint64_t a2)
{
  v71 = a2;
  v3 = sub_1E4650534(&unk_1ECF74D30, &unk_1E471DB90);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v72 = &v63 - v5;
  v65 = sub_1E470AA2C();
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v6);
  v63 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for ReadingHistoryDay(0);
  MEMORY[0x1EEE9AC00](v69, v8);
  v67 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E4650534(&qword_1ECF74D68, &unk_1E471D860);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v66 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v78 = &v63 - v15;
  v16 = sub_1E4650534(&unk_1ECF74D50, &qword_1E471D848);
  v80 = *(v16 - 8);
  v81 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v77 = &v63 - v18;
  v70 = type metadata accessor for ReadingHistoryMonth(0);
  MEMORY[0x1EEE9AC00](v70, v19);
  v68 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v79 = &v63 - v23;
  v24 = sub_1E4709D5C();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1E4709D7C();
  v75 = *(v29 - 8);
  v76 = v29;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1E4709CCC();
  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  v37 = &v63 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v39;
  v74 = v38;
  (*(v39 + 16))(v37, a1, v35);
  sub_1E4709CDC();
  v40 = *(v25 + 104);
  v40(v28, *MEMORY[0x1E6969A68], v24);
  v41 = sub_1E4709D6C();
  v42 = *(v25 + 8);
  v42(v28, v24);
  v40(v28, *MEMORY[0x1E6969A78], v24);
  v43 = sub_1E4709D6C();
  result = (v42)(v28, v24);
  v45 = 100 * v41;
  if ((v41 * 100) >> 64 != (100 * v41) >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  v46 = v45 + v43;
  if (__OFADD__(v45, v43))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v40(v28, *MEMORY[0x1E6969A48], v24);
  v47 = sub_1E4709D6C();
  v42(v28, v24);
  (*(v75 + 8))(v32, v76);
  (*(v73 + 8))(v37, v74);
  v76 = v46;
  v83[0] = v46;
  v48 = sub_1E4650534(&unk_1ECF74D00, &unk_1E471DBA0);
  v49 = v77;
  v75 = v48;
  sub_1E470AAEC();
  v50 = v79;
  v51 = v81;
  MEMORY[0x1E6915A10](v81);
  (*(v80 + 8))(v49, v51);
  v83[0] = v47;
  sub_1E4650534(&qword_1ECF74D60, &qword_1E471D858);
  v52 = v78;
  sub_1E470AB0C();
  v53 = sub_1E4650534(&unk_1ECF74D80, &unk_1E471DBB0);
  v54 = *(v53 - 8);
  v55 = *(v54 + 48);
  v56 = v55(v52, 1, v53);
  sub_1E465E050(v52, &qword_1ECF74D68, &unk_1E471D860);
  if (v56 == 1)
  {
    sub_1E46AE390(v71, v67, type metadata accessor for ReadingHistoryDay);
    sub_1E46AE3F8(&qword_1ECF741D8, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);
    v57 = v66;
    sub_1E470AD0C();
    (*(v54 + 56))(v57, 0, 1, v53);
    v83[0] = v47;
    sub_1E470AB1C();
LABEL_7:
    sub_1E46AE390(v50, v68, type metadata accessor for ReadingHistoryMonth);
    sub_1E46AE3F8(&qword_1ECF74F10, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);
    v62 = v72;
    sub_1E470AD0C();
    (*(v80 + 56))(v62, 0, 1, v81);
    v83[0] = v76;
    sub_1E470AB1C();
    return sub_1E46AE460(v50, type metadata accessor for ReadingHistoryMonth);
  }

  v83[4] = v47;
  v58 = sub_1E470AAFC();
  result = v55(v59, 1, v53);
  if (result != 1)
  {
    v60 = sub_1E470ACEC();
    sub_1E46AE3F8(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);
    v61 = v63;
    sub_1E470A85C();
    (*(v64 + 8))(v61, v65);
    v60(v82, 0);
    v58(v83, 0);
    v50 = v79;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1E46A79EC(uint64_t a1)
{
  v2 = sub_1E4650534(&unk_1ECF74D30, &unk_1E471DB90);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v57 = &v46 - v4;
  v5 = sub_1E4650534(&qword_1ECF74D68, &unk_1E471D860);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v53 = &v46 - v7;
  v8 = sub_1E4650534(&unk_1ECF74D50, &qword_1E471D848);
  v55 = *(v8 - 8);
  v56 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v50 = &v46 - v10;
  v52 = type metadata accessor for ReadingHistoryMonth(0);
  MEMORY[0x1EEE9AC00](v52, v11);
  v51 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v54 = &v46 - v15;
  v16 = sub_1E4709D5C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E4709D7C();
  v48 = *(v21 - 8);
  v49 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1E4709CCC();
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v29 = &v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v31;
  v47 = v30;
  (*(v31 + 16))(v29, a1, v27);
  sub_1E4709CDC();
  v32 = *(v17 + 104);
  v32(v20, *MEMORY[0x1E6969A68], v16);
  v33 = sub_1E4709D6C();
  v34 = *(v17 + 8);
  v34(v20, v16);
  v32(v20, *MEMORY[0x1E6969A78], v16);
  v35 = sub_1E4709D6C();
  result = (v34)(v20, v16);
  v37 = 100 * v33;
  if ((v33 * 100) >> 64 == (100 * v33) >> 63)
  {
    v38 = v37 + v35;
    if (!__OFADD__(v37, v35))
    {
      v32(v20, *MEMORY[0x1E6969A48], v16);
      v39 = sub_1E4709D6C();
      v34(v20, v16);
      (*(v48 + 8))(v24, v49);
      (*(v46 + 8))(v29, v47);
      v58 = v38;
      sub_1E4650534(&unk_1ECF74D00, &unk_1E471DBA0);
      v40 = v50;
      sub_1E470AAEC();
      v41 = v54;
      v42 = v56;
      MEMORY[0x1E6915A10](v56);
      v43 = v55;
      (*(v55 + 8))(v40, v42);
      v44 = sub_1E4650534(&unk_1ECF74D80, &unk_1E471DBB0);
      (*(*(v44 - 8) + 56))(v53, 1, 1, v44);
      v58 = v39;
      sub_1E4650534(&qword_1ECF74D60, &qword_1E471D858);
      sub_1E470AB1C();
      sub_1E46AE390(v41, v51, type metadata accessor for ReadingHistoryMonth);
      sub_1E46AE3F8(&qword_1ECF74F10, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);
      v45 = v57;
      sub_1E470AD0C();
      (*(v43 + 56))(v45, 0, 1, v42);
      v58 = v38;
      sub_1E470AB1C();
      return sub_1E46AE460(v41, type metadata accessor for ReadingHistoryMonth);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E46A8040(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E4650534(&qword_1ECF74D68, &unk_1E471D860);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v102 = &v81 - v7;
  v8 = sub_1E4650534(&qword_1ECF75008, &qword_1E471E750);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v103 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v81 - v13;
  v104 = sub_1E4650534(&qword_1ECF75010, &qword_1E471E758);
  v97 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104, v15);
  v106 = &v81 - v16;
  v17 = sub_1E4650534(&qword_1ECF75028, &qword_1E471E760);
  v94 = *(v17 - 8);
  v95 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v93 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v92 = &v81 - v22;
  v23 = type metadata accessor for ReadingHistoryMonth(0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v96 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v105 = &v81 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v101 = &v81 - v31;
  v32 = sub_1E4650534(&unk_1ECF74D50, &qword_1E471D848);
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v34);
  v36 = &v81 - v35;
  v37 = sub_1E4650534(&unk_1ECF74D30, &unk_1E471DB90);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v81 - v41;
  MEMORY[0x1EEE9AC00](v43, v44);
  v47 = &v81 - v46;
  v48 = 100 * a1;
  if ((a1 * 100) >> 64 != (100 * a1) >> 63)
  {
    __break(1u);
    goto LABEL_26;
  }

  v49 = __OFADD__(v48, a2);
  v50 = v48 + a2;
  if (v49)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v91 = v45;
  v100 = v36;
  v98 = v50;
  v107 = v50;
  v90 = sub_1E4650534(&unk_1ECF74D00, &unk_1E471DBA0);
  sub_1E470AB0C();
  sub_1E465E0B0(v47, v42, &unk_1ECF74D30, &unk_1E471DB90);
  if ((*(v33 + 48))(v42, 1, v32) != 1)
  {
    v52 = a1;
    v88 = v47;
    v89 = v2;
    v99 = v23;
    v53 = v100;
    (*(v33 + 32))(v100, v42, v32);
    v54 = v101;
    MEMORY[0x1E69159F0](v32);
    v55 = sub_1E4650534(&qword_1ECF74D60, &qword_1E471D858);
    sub_1E45E2F14(&qword_1ECF75030, &qword_1ECF74D60, &qword_1E471D858, MEMORY[0x1E6995250]);
    v87 = v55;
    if ((sub_1E470B1AC() & 1) == 0)
    {
      sub_1E46AE460(v54, type metadata accessor for ReadingHistoryMonth);
      (*(v33 + 8))(v53, v32);
LABEL_23:
      v51 = v88;
      return sub_1E465E050(v51, &unk_1ECF74D30, &unk_1E471DB90);
    }

    v85 = v33;
    v56 = sub_1E4650534(&qword_1ECF741E8, &qword_1E471D590);
    sub_1E470A62C();
    v83 = v107;
    v86 = sub_1E46AF0D0(v52, a2);
    v84 = v56;
    sub_1E470A62C();
    v82 = v107;
    a1 = sub_1E46AF3F8(v52, a2);
    MEMORY[0x1E6915A10](v32);
    v57 = v92;
    v58 = v87;
    sub_1E470B19C();
    v59 = v93;
    sub_1E470B1CC();
    v2 = sub_1E470B1BC();
    v42 = *(v94 + 8);
    v60 = v59;
    v61 = v95;
    (v42)(v60, v95);
    (v42)(v57, v61);
    LOBYTE(v42) = sub_1E470B2CC();
    v36 = v58;
    if (qword_1EE2ADC90 == -1)
    {
LABEL_7:
      v62 = qword_1EE2ADC98;
      v63 = os_log_type_enabled(qword_1EE2ADC98, v42);
      v95 = v32;
      v64 = v83;
      v65 = v82;
      if (v63)
      {
        v66 = swift_slowAlloc();
        *v66 = 134219264;
        *(v66 + 4) = v2;
        *(v66 + 12) = 2048;
        *(v66 + 14) = v98;
        *(v66 + 22) = 2048;
        *(v66 + 24) = v64;
        *(v66 + 32) = 2048;
        *(v66 + 34) = v86;
        *(v66 + 42) = 2048;
        *(v66 + 44) = v65;
        *(v66 + 52) = 2048;
        *(v66 + 54) = a1;
        _os_log_impl(&dword_1E45E0000, v62, v42, "summarizeAndPrune: Prune %ld days in %ld - lastDayStreak: (old=%ld, computed=%ld), totalTime: (old=%ld, computed=%ld)", v66, 0x3Eu);
        MEMORY[0x1E6917530](v66, -1, -1);
      }

      v67 = v86;
      if (v86 != v64)
      {
        if (v64 > v86)
        {
          v67 = v64;
        }

        v107 = v67;
        sub_1E470A63C();
      }

      if (a1 != v65)
      {
        if (v65 <= a1)
        {
          v68 = a1;
        }

        else
        {
          v68 = v65;
        }

        v107 = v68;
        sub_1E470A63C();
      }

      sub_1E470AAAC();
      while (1)
      {
        v69 = v103;
        sub_1E470AA6C();
        sub_1E46574C0(v69, v14, &qword_1ECF75008, &qword_1E471E750);
        v70 = sub_1E4650534(&qword_1ECF74C10, &qword_1E471D568);
        if ((*(*(v70 - 8) + 48))(v14, 1, v70) == 1)
        {
          break;
        }

        v71 = v36;
        v72 = *v14;
        v73 = *(v70 + 48);
        v74 = sub_1E4650534(&unk_1ECF74D80, &unk_1E471DBB0);
        v75 = *(v74 - 8);
        (*(v75 + 56))(v102, 1, 1, v74);
        v107 = v72;
        v36 = v71;
        sub_1E470AB1C();
        (*(v75 + 8))(&v14[v73], v74);
      }

      (*(v97 + 8))(v106, v104);
      v76 = v105;
      sub_1E46AE390(v105, v96, type metadata accessor for ReadingHistoryMonth);
      sub_1E46AE3F8(&qword_1ECF74F10, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);
      v77 = v91;
      sub_1E470AD0C();
      v78 = v85;
      v79 = v95;
      (*(v85 + 56))(v77, 0, 1, v95);
      v107 = v98;
      sub_1E470AB1C();
      sub_1E46AE460(v76, type metadata accessor for ReadingHistoryMonth);
      sub_1E46AE460(v101, type metadata accessor for ReadingHistoryMonth);
      (*(v78 + 8))(v100, v79);
      goto LABEL_23;
    }

LABEL_27:
    swift_once();
    goto LABEL_7;
  }

  sub_1E465E050(v47, &unk_1ECF74D30, &unk_1E471DB90);
  v51 = v42;
  return sub_1E465E050(v51, &unk_1ECF74D30, &unk_1E471DB90);
}

void sub_1E46A8ACC(uint64_t a1)
{
  v169 = a1;
  v152 = sub_1E4709D5C();
  v161 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152, v2);
  v150 = &v143 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_1E4709CCC();
  v167 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164, v4);
  v144 = &v143 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v146 = &v143 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v148 = &v143 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v153 = &v143 - v14;
  v15 = sub_1E4650534(&qword_1ECF74D70, &unk_1E471DBD0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v158 = &v143 - v17;
  v18 = sub_1E4650534(&qword_1ECF74D78, &unk_1E471D870);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v155 = &v143 - v20;
  v159 = sub_1E4709A3C();
  v157 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159, v21);
  v156 = &v143 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_1E4709D7C();
  v168 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165, v23);
  v160 = &v143 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v162 = &v143 - v27;
  v28 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v145 = &v143 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v147 = &v143 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v149 = &v143 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v151 = &v143 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v154 = &v143 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v166 = &v143 - v45;
  v181 = sub_1E4650534(&qword_1ECF75028, &qword_1E471E760);
  v46 = *(v181 - 1);
  MEMORY[0x1EEE9AC00](v181, v47);
  v184 = &v143 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49, v50);
  v183 = &v143 - v51;
  v180 = sub_1E4650534(&qword_1ECF74D60, &qword_1E471D858);
  v52 = *(v180 - 1);
  MEMORY[0x1EEE9AC00](v180, v53);
  v179 = &v143 - v54;
  v55 = type metadata accessor for ReadingHistoryMonth(0);
  MEMORY[0x1EEE9AC00](v55 - 8, v56);
  v182 = (&v143 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = sub_1E4650534(&unk_1ECF74D50, &qword_1E471D848);
  v59 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v60);
  v62 = &v143 - v61;
  v63 = sub_1E4650534(&qword_1ECF74D40, &unk_1E471DBC0);
  MEMORY[0x1EEE9AC00](v63 - 8, v64);
  v185 = (&v143 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v66, v67);
  v69 = (&v143 - v68);
  v187 = sub_1E4650534(&qword_1ECF74D48, &qword_1E471D840);
  v170 = *(v187 - 1);
  MEMORY[0x1EEE9AC00](v187, v70);
  v72 = &v143 - v71;
  v171 = MEMORY[0x1E69E7CC0];
  v188 = MEMORY[0x1E69E7CC0];
  sub_1E4650534(&unk_1ECF74D00, &unk_1E471DBA0);
  v186 = v72;
  v163 = v1;
  sub_1E470AAAC();
  v177 = (v52 + 16);
  v178 = (v59 + 32);
  v175 = v69;
  v176 = (v46 + 8);
  v173 = (v59 + 8);
  v174 = (v52 + 8);
  v73 = v179;
  v74 = v183;
  while (1)
  {
    v75 = v185;
    sub_1E470AA6C();
    sub_1E46574C0(v75, v69, &qword_1ECF74D40, &unk_1E471DBC0);
    v76 = sub_1E4650534(&qword_1ECF74BE8, &unk_1E471D540);
    if ((*(*(v76 - 8) + 48))(v69, 1, v76) == 1)
    {
      break;
    }

    v172 = *v69;
    (*v178)(v62, v69 + *(v76 + 48), v58);
    v77 = v182;
    MEMORY[0x1E69159F0](v58);
    v78 = v62;
    v79 = v180;
    (*v177)(v73, v77, v180);
    sub_1E46AE460(v77, type metadata accessor for ReadingHistoryMonth);
    sub_1E45E2F14(&qword_1ECF75030, &qword_1ECF74D60, &qword_1E471D858, MEMORY[0x1E6995250]);
    sub_1E470B19C();
    v80 = v58;
    v81 = v184;
    sub_1E470B1CC();
    sub_1E45E2F14(&qword_1ECF75040, &qword_1ECF75028, &qword_1E471E760, MEMORY[0x1E69950B8]);
    v82 = v181;
    v83 = sub_1E470AEFC();
    v84 = *v176;
    (*v176)(v81, v82);
    v84(v74, v82);
    (*v174)(v73, v79);
    if (v83)
    {
      (*v173)(v78, v80);
      v58 = v80;
      v62 = v78;
      v69 = v175;
    }

    else
    {
      v85 = v171;
      v86 = v172;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v85 = sub_1E4693A78(0, *(v85 + 2) + 1, 1, v85);
      }

      v58 = v80;
      v62 = v78;
      v69 = v175;
      v88 = *(v85 + 2);
      v87 = *(v85 + 3);
      v171 = v85;
      if (v88 >= v87 >> 1)
      {
        v171 = sub_1E4693A78((v87 > 1), v88 + 1, 1, v171);
      }

      (*v173)(v62, v80);
      v89 = v171;
      *(v171 + 2) = v88 + 1;
      *&v89[8 * v88 + 32] = v86;
      v188 = v89;
    }
  }

  (*(v170 + 8))(v186, v187);
  if (*(v171 + 2) >= 2uLL)
  {
    if (v169 <= 0)
    {
      v93 = sub_1E470B2AC();
      v90 = v167;
      v91 = v166;
      if (qword_1EE2ADC90 != -1)
      {
        swift_once();
      }

      v94 = qword_1EE2ADC98;
      if (os_log_type_enabled(qword_1EE2ADC98, v93))
      {
        v95 = swift_slowAlloc();
        *v95 = 134217984;
        *(v95 + 4) = v169;
        _os_log_impl(&dword_1E45E0000, v94, v93, "summarizeAndPrune: expect monthsToKeep >= 1, got %ld", v95, 0xCu);
        MEMORY[0x1E6917530](v95, -1, -1);
      }

      v169 = 1;
    }

    else
    {
      v90 = v167;
      v91 = v166;
    }

    sub_1E46AF8FC(&v188);
    if (!*(v188 + 2))
    {

      return;
    }

    v186 = v188 + 32;
    v187 = v188;
    v96 = v162;
    sub_1E4709CDC();
    v97 = v168;
    v98 = v165;
    (*(v168 + 56))(v155, 1, 1, v165);
    v99 = sub_1E4709D8C();
    (*(*(v99 - 8) + 56))(v158, 1, 1, v99);
    v100 = v156;
    sub_1E4709A2C();
    sub_1E4709A0C();
    sub_1E4709A1C();
    sub_1E4709D1C();
    (*(v157 + 8))(v100, v159);
    v101 = *(v97 + 8);
    v168 = v97 + 8;
    v101(v96, v98);
    v102 = v154;
    sub_1E465E0B0(v91, v154, &unk_1ECF74CD0, &qword_1E471B620);
    v103 = (v90 + 48);
    v104 = *(v90 + 48);
    v105 = v164;
    if ((v104)(v102, 1, v164) == 1)
    {
      sub_1E465E050(v91, &unk_1ECF74CD0, &qword_1E471B620);

      v106 = v102;
LABEL_27:
      sub_1E465E050(v106, &unk_1ECF74CD0, &qword_1E471B620);
      return;
    }

    v185 = v101;
    v107 = (v90 + 32);
    v182 = *(v90 + 32);
    v182(v153, v102, v105);
    sub_1E4709CDC();
    v108 = v104;
    v109 = v161;
    v110 = *(v161 + 104);
    v111 = v150;
    LODWORD(v179) = *MEMORY[0x1E6969A78];
    v112 = v152;
    v183 = v110;
    v184 = (v161 + 104);
    (v110)(v150);
    v113 = v151;
    sub_1E4709D3C();
    v114 = *(v109 + 8);
    v161 = v109 + 8;
    v181 = v114;
    (v114)(v111, v112);
    v115 = v113;
    v116 = v113;
    v117 = v149;
    sub_1E465E0B0(v116, v149, &unk_1ECF74CD0, &qword_1E471B620);
    v180 = v108;
    if ((v108)(v117, 1, v105) == 1)
    {
      sub_1E465E050(v115, &unk_1ECF74CD0, &qword_1E471B620);
      v185(v160, v165);
      (*(v167 + 8))(v153, v164);
      sub_1E465E050(v166, &unk_1ECF74CD0, &qword_1E471B620);

      v106 = v117;
      goto LABEL_27;
    }

    v118 = v148;
    v119 = v164;
    v177 = v107;
    v182(v148, v117, v164);
    v120 = v162;
    sub_1E4709CDC();
    v121 = v146;
    sub_1E4709BFC();
    v122 = sub_1E46A4088(v121, 1);
    v123 = *(v167 + 8);
    v167 += 8;
    v178 = v123;
    v123(v121, v119);
    v185(v120, v165);
    v124 = v152;
    (v183)(v111, *MEMORY[0x1E6969A48], v152);
    v176 = v122;
    if (__OFSUB__(0, v122))
    {
      __break(1u);
    }

    else
    {
      v125 = v111;
      v126 = v147;
      v127 = v118;
      v128 = v125;
      sub_1E4709D3C();
      (v181)(v128, v124);
      v129 = v145;
      sub_1E465E0B0(v126, v145, &unk_1ECF74CD0, &qword_1E471B620);
      v130 = v119;
      v131 = (v180)(v129, 1, v119);
      v119 = v186;
      if (v131 == 1)
      {
        sub_1E465E050(v126, &unk_1ECF74CD0, &qword_1E471B620);
        v132 = v178;
        v178(v127, v130);
        sub_1E465E050(v151, &unk_1ECF74CD0, &qword_1E471B620);
        v185(v160, v165);
        v132(v153, v130);
        sub_1E465E050(v166, &unk_1ECF74CD0, &qword_1E471B620);

        v106 = v129;
        goto LABEL_27;
      }

      v108 = v124;
      v103 = v144;
      v182(v144, v129, v130);
      v107 = v183;
      (v183)(v128, v179, v124);
      v120 = v160;
      v182 = sub_1E4709D6C();
      v133 = v181;
      (v181)(v128, v124);
      (v107)(v128, *MEMORY[0x1E6969A68], v124);
      v122 = sub_1E4709D6C();
      v133(v128, v124);
      v134 = 100 * v122;
      if ((v122 * 100) >> 64 == (100 * v122) >> 63)
      {
        v103 = v182 + v134;
        if (!__OFADD__(v134, v182))
        {
          LOBYTE(v122) = sub_1E470B2CC();
          v107 = v153;
          v108 = v187;
          if (qword_1EE2ADC90 == -1)
          {
LABEL_34:
            v135 = qword_1EE2ADC98;
            if (os_log_type_enabled(qword_1EE2ADC98, v122))
            {
              v136 = swift_slowAlloc();
              *v136 = 134218496;
              *(v136 + 4) = v103;
              *(v136 + 12) = 2048;
              *(v136 + 14) = v169;
              *(v136 + 22) = 2048;
              *(v136 + 24) = v176;
              _os_log_impl(&dword_1E45E0000, v135, v122, "summarizeAndPrune: About to prune: lastMonthToKeep=%ld, historicalMonthsToKeep: %ld, streakDays=%ld", v136, 0x20u);
              MEMORY[0x1E6917530](v136, -1, -1);
            }

            for (i = *(v108 + 2); i; --i)
            {
              v139 = *v119++;
              v138 = v139;
              if (v139 < v103)
              {
                sub_1E46A8040(v138 / 100, v138 % 100);
              }
            }

            v140 = v164;
            v141 = v178;
            v178(v144, v164);
            sub_1E465E050(v147, &unk_1ECF74CD0, &qword_1E471B620);
            v141(v148, v140);
            sub_1E465E050(v151, &unk_1ECF74CD0, &qword_1E471B620);
            v185(v120, v165);
            v141(v107, v140);
            v106 = v166;
            goto LABEL_27;
          }

LABEL_45:
          swift_once();
          goto LABEL_34;
        }

LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  v92 = sub_1E470B2CC();
  if (qword_1EE2ADC90 != -1)
  {
    v142 = v92;
    swift_once();
    v92 = v142;
  }

  sub_1E470A0AC(v92, &dword_1E45E0000, qword_1EE2ADC98, "summarizeAndPrune: Nothing to prune", 35, 2, MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1E46AA10C(uint64_t a1, uint64_t a2)
{
  qword_1ECF74E98 = 0x54676E6964616572;
  unk_1ECF74EA0 = 0xEB00000000656D69;
  qword_1ECF74EA8 = swift_getKeyPath();
  unk_1ECF74EB0 = 0x47676E6964616572;
  qword_1ECF74EB8 = 0xEB000000006C616FLL;
  result = swift_getKeyPath();
  qword_1ECF74EC0 = result;
  return result;
}

uint64_t static ReadingHistoryDay.fields.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ECF740C8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1ECF74EA0;
  v3 = qword_1ECF74EA8;
  v2 = unk_1ECF74EB0;
  v4 = qword_1ECF74EB8;
  v5 = qword_1ECF74EC0;
  *a1 = qword_1ECF74E98;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t ReadingHistoryDay.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1E470ADAC();
  v2 = type metadata accessor for ReadingHistoryDay(0);
  result = sub_1E470A65C();
  *(a1 + *(v2 + 24)) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t ReadingHistoryDay.init(defaultGoal:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E4650534(&qword_1ECF741E8, &qword_1E471D590);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12 - v7;
  sub_1E470ADAC();
  v9 = type metadata accessor for ReadingHistoryDay(0);
  v10 = *(v9 + 20);
  v13 = 0;
  sub_1E470A65C();
  *(a2 + *(v9 + 24)) = MEMORY[0x1E69E7CC8];
  v13 = a1;
  sub_1E470A65C();
  return (*(v5 + 40))(a2 + v10, v8, v4);
}

uint64_t sub_1E46AA3F0@<X0>(void *a1@<X8>)
{
  if (qword_1ECF740C8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1ECF74EA0;
  v3 = qword_1ECF74EA8;
  v2 = unk_1ECF74EB0;
  v4 = qword_1ECF74EB8;
  v5 = qword_1ECF74EC0;
  *a1 = qword_1ECF74E98;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t sub_1E46AA494(uint64_t a1)
{
  v2 = sub_1E46AE3F8(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return MEMORY[0x1EEDF46B0](a1, v2);
}

uint64_t sub_1E46AA524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E470ADAC();
  result = sub_1E470A65C();
  *(a2 + *(a1 + 24)) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t sub_1E46AA588(uint64_t a1)
{
  v2 = sub_1E46AE3F8(&qword_1EE2ADDD8, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t sub_1E46AA5F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return MEMORY[0x1EEDF4698](a1, a2, v4);
}

uint64_t sub_1E46AA670(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return MEMORY[0x1EEDF4640](a1, a2, v4);
}

uint64_t sub_1E46AA6F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return MEMORY[0x1EEDF4668](a1, a2, v4);
}

uint64_t sub_1E46AA770(uint64_t a1, uint64_t a2)
{
  sub_1E46AE3F8(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return sub_1E470A8AC();
}

uint64_t sub_1E46AA7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E46AE3F8(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return MEMORY[0x1EEDF4670](a1, a2, a3, v6);
}

uint64_t sub_1E46AA880(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return MEMORY[0x1EEDF46A0](a1, a2, v4);
}

uint64_t sub_1E46AA8FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return MEMORY[0x1EEDF4678](a1, a2, v4);
}

uint64_t sub_1E46AA978(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return MEMORY[0x1EEDF4658](a1, a2, v4);
}

uint64_t sub_1E46AA9FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return MEMORY[0x1EEDF4650](a1, a2, v4);
}

uint64_t sub_1E46AAA80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E46AE3F8(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return MEMORY[0x1EEDF4638](a1, a2, a3, v6);
}

uint64_t sub_1E46AAB14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return MEMORY[0x1EEDF4620](a1, a2, v4);
}

uint64_t sub_1E46AAB90(uint64_t a1)
{
  v2 = sub_1E46AE3F8(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return MEMORY[0x1EEDF4648](a1, v2);
}

uint64_t sub_1E46AABFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return MEMORY[0x1EEDF4628](a1, a2, v4);
}

uint64_t sub_1E46AAC78(uint64_t a1, uint64_t a2)
{
  sub_1E46AE3F8(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return sub_1E470A85C();
}

void sub_1E46AACFC()
{
  sub_1E46AE3F8(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  JUMPOUT(0x1E6915580);
}

uint64_t sub_1E46AAE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E46AE3F8(&qword_1ECF741D8, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return MEMORY[0x1EEDF5200](a1, a2, a3, v6);
}

uint64_t sub_1E46AB004(uint64_t a1)
{
  v2 = sub_1E46AE3F8(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);

  return MEMORY[0x1EEDF4630](a1, v2);
}

double ReadingHistoryMonth.additionalFields.getter()
{
  type metadata accessor for ReadingHistoryMonth(0);

  return result;
}

uint64_t ReadingHistoryMonth.additionalFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingHistoryMonth(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E46AB140(uint64_t a1, uint64_t a2)
{
  qword_1ECF74EC8 = 1937334628;
  unk_1ECF74ED0 = 0xE400000000000000;
  qword_1ECF74ED8 = swift_getKeyPath();
  unk_1ECF74EE0 = 0x6D69546C61746F74;
  qword_1ECF74EE8 = 0xE900000000000065;
  qword_1ECF74EF0 = swift_getKeyPath();
  qword_1ECF74EF8 = 0xD000000000000014;
  qword_1ECF74F00 = 0x80000001E4719380;
  result = swift_getKeyPath();
  qword_1ECF74F08 = result;
  return result;
}

uint64_t static ReadingHistoryMonth.fields.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ECF740D0 != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  v1 = unk_1ECF74ED0;
  v3 = qword_1ECF74ED8;
  v2 = unk_1ECF74EE0;
  v4 = qword_1ECF74EE8;
  v5 = qword_1ECF74EF0;
  v6 = qword_1ECF74EF8;
  v7 = qword_1ECF74F00;
  v8 = qword_1ECF74F08;
  *a1 = qword_1ECF74EC8;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
  a1[7] = v7;
  a1[8] = v8;
}

uint64_t ReadingHistoryMonth.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1E4650534(&unk_1ECF74D80, &unk_1E471DBB0);
  sub_1E45E2F14(&qword_1EE2ACD80, &unk_1ECF74D80, &unk_1E471DBB0, MEMORY[0x1E6995490]);
  sub_1E45E2F14(&qword_1EE2ACD78, &unk_1ECF74D80, &unk_1E471DBB0, MEMORY[0x1E6995498]);
  sub_1E470AABC();
  v2 = type metadata accessor for ReadingHistoryMonth(0);
  sub_1E470A65C();
  result = sub_1E470A65C();
  *(a1 + *(v2 + 28)) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t sub_1E46AB3E0@<X0>(void *a1@<X8>)
{
  if (qword_1ECF740D0 != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  v1 = unk_1ECF74ED0;
  v3 = qword_1ECF74ED8;
  v2 = unk_1ECF74EE0;
  v4 = qword_1ECF74EE8;
  v5 = qword_1ECF74EF0;
  v6 = qword_1ECF74EF8;
  v7 = qword_1ECF74F00;
  v8 = qword_1ECF74F08;
  *a1 = qword_1ECF74EC8;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
  a1[7] = v7;
  a1[8] = v8;
}

uint64_t sub_1E46AB4AC(uint64_t a1)
{
  v2 = sub_1E46AE3F8(&qword_1ECF74FA0, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return MEMORY[0x1EEDF4748](a1, v2);
}

uint64_t sub_1E46AB524(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_1E46AB580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E4650534(&unk_1ECF74D80, &unk_1E471DBB0);
  sub_1E45E2F14(&qword_1EE2ACD80, &unk_1ECF74D80, &unk_1E471DBB0, MEMORY[0x1E6995490]);
  sub_1E45E2F14(&qword_1EE2ACD78, &unk_1ECF74D80, &unk_1E471DBB0, MEMORY[0x1E6995498]);
  sub_1E470AABC();
  sub_1E470A65C();
  result = sub_1E470A65C();
  *(a2 + *(a1 + 28)) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t sub_1E46AB6B0(uint64_t a1)
{
  v2 = sub_1E46AE3F8(&qword_1EE2AD9C8, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t sub_1E46AB71C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74FA0, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return MEMORY[0x1EEDF4730](a1, a2, v4);
}

uint64_t sub_1E46AB798(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74FA0, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return MEMORY[0x1EEDF46D8](a1, a2, v4);
}

uint64_t sub_1E46AB81C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74FA0, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return MEMORY[0x1EEDF4700](a1, a2, v4);
}

uint64_t sub_1E46AB898(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74FA0, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return MEMORY[0x1EEDF4740](a1, a2, v4);
}

uint64_t sub_1E46AB914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E46AE3F8(&qword_1ECF74FA0, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return MEMORY[0x1EEDF4708](a1, a2, a3, v6);
}

uint64_t sub_1E46AB9A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74FA0, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return MEMORY[0x1EEDF4738](a1, a2, v4);
}

uint64_t sub_1E46ABA24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74FA0, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return MEMORY[0x1EEDF4710](a1, a2, v4);
}

uint64_t sub_1E46ABAA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74FA0, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return MEMORY[0x1EEDF46F0](a1, a2, v4);
}

uint64_t sub_1E46ABB24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74FA0, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return MEMORY[0x1EEDF46E8](a1, a2, v4);
}

uint64_t sub_1E46ABBA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E46AE3F8(&qword_1ECF74FA0, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return MEMORY[0x1EEDF46D0](a1, a2, a3, v6);
}

uint64_t sub_1E46ABC3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74FA0, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return MEMORY[0x1EEDF46B8](a1, a2, v4);
}

uint64_t sub_1E46ABCB8(uint64_t a1)
{
  v2 = sub_1E46AE3F8(&qword_1ECF74FA0, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return MEMORY[0x1EEDF46E0](a1, v2);
}

uint64_t sub_1E46ABD24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74FA0, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return MEMORY[0x1EEDF46C0](a1, a2, v4);
}

uint64_t sub_1E46ABDA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74FA0, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return MEMORY[0x1EEDF4718](a1, a2, v4);
}

void sub_1E46ABE24()
{
  sub_1E46AE3F8(&qword_1ECF74FA0, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  JUMPOUT(0x1E69156B0);
}

uint64_t sub_1E46ABFB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E46AE3F8(&qword_1ECF74F10, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return MEMORY[0x1EEDF5200](a1, a2, a3, v6);
}

uint64_t sub_1E46AC12C(uint64_t a1)
{
  v2 = sub_1E46AE3F8(&qword_1ECF74FA0, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);

  return MEMORY[0x1EEDF46C8](a1, v2);
}

uint64_t sub_1E46AC1A8(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v74) = a2;
  v81 = a1;
  v80 = type metadata accessor for ReadingHistoryDay(0);
  MEMORY[0x1EEE9AC00](v80, v4);
  v79 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E4650534(&qword_1ECF74C10, &qword_1E471D568);
  v77 = *(v6 - 8);
  v78 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v76 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v75 = (&v69 - v11);
  v12 = sub_1E4650534(&qword_1ECF74D60, &qword_1E471D858);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v73 = &v69 - v15;
  v16 = sub_1E4650534(&qword_1ECF75028, &qword_1E471E760);
  v71 = *(v16 - 8);
  v72 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v69 - v22;
  sub_1E4650534(&unk_1ECF74CE0, &qword_1E471D520);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1E471C940;
  type metadata accessor for ReadingHistoryMonth(0);
  v25 = sub_1E4650534(&qword_1ECF741E8, &qword_1E471D590);
  sub_1E470A62C();
  if (v86 < 0)
  {
    v27 = 0;
    v28 = 0xE000000000000000;
  }

  else
  {
    v86 = 0x6D69546C61746F74;
    v87 = 0xEA00000000003D65;
    sub_1E470A62C();
    v88 = v84;
    v26 = sub_1E470B81C();
    MEMORY[0x1E6915D10](v26);

    MEMORY[0x1E6915D10](8236, 0xE200000000000000);
    v27 = v86;
    v28 = v87;
  }

  *(v24 + 32) = v27;
  *(v24 + 40) = v28;
  sub_1E470A62C();
  v29 = 0xE000000000000000;
  if (v86 < 0)
  {
    v31 = 0;
  }

  else
  {
    v86 = 0;
    v87 = 0xE000000000000000;
    sub_1E470B5CC();

    v86 = 0xD000000000000015;
    v87 = 0x80000001E47193D0;
    sub_1E470A62C();
    v88 = v84;
    v30 = sub_1E470B81C();
    MEMORY[0x1E6915D10](v30);

    MEMORY[0x1E6915D10](8236, 0xE200000000000000);
    v31 = v86;
    v29 = v87;
  }

  *(v24 + 48) = v31;
  *(v24 + 56) = v29;
  v32 = v81;
  if ((v74 & 1) != 0 || (sub_1E45E2F14(&qword_1ECF75030, &qword_1ECF74D60, &qword_1E471D858, MEMORY[0x1E6995250]), sub_1E470B19C(), sub_1E470B1CC(), v33 = sub_1E470B1BC(), v34 = *(v71 + 8), v35 = v19, v36 = v72, v34(v35, v72), v34(v23, v36), v37 = v33 <= v81, v32 = v81, v37))
  {
    v39 = 0;
    v38 = 0xE000000000000000;
  }

  else
  {
    v38 = 0xA400000000000000;
    v39 = 548375522;
  }

  *(v24 + 64) = v39;
  *(v24 + 72) = v38;
  (*(v13 + 16))(v73, v3, v12);
  sub_1E45E2F14(&qword_1ECF75018, &qword_1ECF74D60, &qword_1E471D858, MEMORY[0x1E6995248]);
  v86 = sub_1E470B07C();
  v40 = 0;
  sub_1E46AFA34(&v86, &qword_1ECF74C10, &qword_1E471D568, sub_1E46B8638);
  if (v74)
  {
    v41 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v41 = v32;
  }

  v42 = sub_1E46ACAD0(v41, v86);
  v74 = v44;
  v81 = v45 >> 1;
  v46 = (v45 >> 1) - v43;
  if (__OFSUB__(v45 >> 1, v43))
  {
    goto LABEL_28;
  }

  if (v46)
  {
    v47 = v43;
    v71 = v42;
    v88 = MEMORY[0x1E69E7CC0];
    sub_1E467F200(0, v46 & ~(v46 >> 63), 0);
    if (v46 < 0)
    {
LABEL_29:
      __break(1u);

      __break(1u);
      return result;
    }

    v70 = v24;
    v40 = v88;
    v48 = v81;
    if (v47 > v81)
    {
      v48 = v47;
    }

    v72 = v25;
    v73 = v48;
    while (v73 != v47)
    {
      v49 = v75;
      sub_1E465E0B0(v74 + *(v77 + 72) * v47, v75, &qword_1ECF74C10, &qword_1E471D568);
      v86 = 35;
      v87 = 0xE100000000000000;
      v84 = *v49;
      v50 = sub_1E470B81C();
      MEMORY[0x1E6915D10](v50);

      MEMORY[0x1E6915D10](61, 0xE100000000000000);
      v51 = v76;
      sub_1E465E0B0(v49, v76, &qword_1ECF74C10, &qword_1E471D568);
      v52 = *(v78 + 48);
      v53 = sub_1E4650534(&unk_1ECF74D80, &unk_1E471DBB0);
      v54 = v79;
      MEMORY[0x1E69159F0]();
      (*(*(v53 - 8) + 8))(v51 + v52, v53);
      v83 = sub_1E470AD8C();
      v84 = sub_1E470B81C();
      v85 = v55;
      MEMORY[0x1E6915D10](47, 0xE100000000000000);
      sub_1E470A62C();
      v82 = v83;
      v56 = sub_1E470B81C();
      MEMORY[0x1E6915D10](v56);

      v58 = v84;
      v57 = v85;
      sub_1E46AE460(v54, type metadata accessor for ReadingHistoryDay);
      MEMORY[0x1E6915D10](v58, v57);

      v59 = v86;
      v60 = v87;
      sub_1E465E050(v49, &qword_1ECF74C10, &qword_1E471D568);
      v88 = v40;
      v62 = v40[2];
      v61 = v40[3];
      if (v62 >= v61 >> 1)
      {
        sub_1E467F200((v61 > 1), v62 + 1, 1);
        v40 = v88;
      }

      v40[2] = v62 + 1;
      v63 = &v40[2 * v62];
      v63[4] = v59;
      v63[5] = v60;
      if (v81 == ++v47)
      {
        swift_unknownObjectRelease();
        v24 = v70;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  swift_unknownObjectRelease();
  v40 = MEMORY[0x1E69E7CC0];
LABEL_26:
  v86 = v40;
  sub_1E4650534(&qword_1ECF74AA0, &qword_1E471C990);
  sub_1E45E2F14(&qword_1EE2ACD00, &qword_1ECF74AA0, &qword_1E471C990, MEMORY[0x1E69E6310]);
  v64 = sub_1E470AEDC();
  v66 = v65;

  *(v24 + 80) = v64;
  *(v24 + 88) = v66;
  v86 = v24;
  v67 = sub_1E470AEDC();

  return v67;
}

uint64_t sub_1E46ACAD0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1E4650534(&qword_1ECF74C10, &qword_1E471D568);
    return a2;
  }

  return result;
}

double sub_1E46ACBAC(uint64_t (*a1)(void))
{
  a1(0);

  return result;
}

uint64_t sub_1E46ACC00(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_1E46ACC8C(uint64_t a1, uint64_t a2)
{
  qword_1EE2ADAC0 = 0x7368746E6F6DLL;
  *algn_1EE2ADAC8 = 0xE600000000000000;
  qword_1EE2ADAD0 = swift_getKeyPath();
  strcpy(byte_1EE2ADAD8, "streakRecords");
  HIWORD(qword_1EE2ADAE0) = -4864;
  result = swift_getKeyPath();
  qword_1EE2ADAE8 = result;
  return result;
}

uint64_t static ReadingHistoryModel.fields.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EE2ADAB8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_1EE2ADAC8;
  v3 = qword_1EE2ADAD0;
  v2 = *byte_1EE2ADAD8;
  v4 = qword_1EE2ADAE0;
  v5 = qword_1EE2ADAE8;
  *a1 = qword_1EE2ADAC0;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t ReadingHistoryModel.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1E4650534(&unk_1ECF74D50, &qword_1E471D848);
  sub_1E45E2F14(&qword_1EE2ACD70, &unk_1ECF74D50, &qword_1E471D848, MEMORY[0x1E6995490]);
  sub_1E45E2F14(&qword_1EE2ACD68, &unk_1ECF74D50, &qword_1E471D848, MEMORY[0x1E6995498]);
  sub_1E470AABC();
  v2 = type metadata accessor for ReadingHistoryModel(0);
  sub_1E4709CCC();
  sub_1E46AE3F8(&unk_1EE2AEBD0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  result = sub_1E470AABC();
  *(a1 + *(v2 + 24)) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t sub_1E46ACF14@<X0>(void *a1@<X8>)
{
  if (qword_1EE2ADAB8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_1EE2ADAC8;
  v3 = qword_1EE2ADAD0;
  v2 = *byte_1EE2ADAD8;
  v4 = qword_1EE2ADAE0;
  v5 = qword_1EE2ADAE8;
  *a1 = qword_1EE2ADAC0;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t sub_1E46ACFB8(uint64_t a1)
{
  v2 = sub_1E46AE3F8(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return MEMORY[0x1EEDF46B0](a1, v2);
}

uint64_t sub_1E46AD024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E4650534(&unk_1ECF74D50, &qword_1E471D848);
  sub_1E45E2F14(&qword_1EE2ACD70, &unk_1ECF74D50, &qword_1E471D848, MEMORY[0x1E6995490]);
  sub_1E45E2F14(&qword_1EE2ACD68, &unk_1ECF74D50, &qword_1E471D848, MEMORY[0x1E6995498]);
  sub_1E470AABC();
  sub_1E4709CCC();
  sub_1E46AE3F8(&unk_1EE2AEBD0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  result = sub_1E470AABC();
  *(a2 + *(a1 + 24)) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t sub_1E46AD184(uint64_t a1)
{
  v2 = sub_1E46AE3F8(&qword_1EE2ADA88, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t sub_1E46AD1F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return MEMORY[0x1EEDF4698](a1, a2, v4);
}

uint64_t sub_1E46AD26C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return MEMORY[0x1EEDF4640](a1, a2, v4);
}

uint64_t sub_1E46AD2F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return MEMORY[0x1EEDF4668](a1, a2, v4);
}

uint64_t sub_1E46AD36C(uint64_t a1, uint64_t a2)
{
  sub_1E46AE3F8(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return sub_1E470A8AC();
}

uint64_t sub_1E46AD3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E46AE3F8(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return MEMORY[0x1EEDF4670](a1, a2, a3, v6);
}

uint64_t sub_1E46AD47C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return MEMORY[0x1EEDF46A0](a1, a2, v4);
}

uint64_t sub_1E46AD4F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return MEMORY[0x1EEDF4678](a1, a2, v4);
}

uint64_t sub_1E46AD574(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return MEMORY[0x1EEDF4658](a1, a2, v4);
}

uint64_t sub_1E46AD5F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return MEMORY[0x1EEDF4650](a1, a2, v4);
}

uint64_t sub_1E46AD67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E46AE3F8(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return MEMORY[0x1EEDF4638](a1, a2, a3, v6);
}

uint64_t sub_1E46AD710(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return MEMORY[0x1EEDF4620](a1, a2, v4);
}

uint64_t sub_1E46AD78C(uint64_t a1)
{
  v2 = sub_1E46AE3F8(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return MEMORY[0x1EEDF4648](a1, v2);
}

uint64_t sub_1E46AD7F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return MEMORY[0x1EEDF4628](a1, a2, v4);
}

uint64_t sub_1E46AD874(uint64_t a1, uint64_t a2)
{
  sub_1E46AE3F8(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return sub_1E470A85C();
}

void sub_1E46AD8F8()
{
  sub_1E46AE3F8(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  JUMPOUT(0x1E6915580);
}

uint64_t sub_1E46ADA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E46AE3F8(&qword_1EE2ADA90, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return MEMORY[0x1EEDF5200](a1, a2, a3, v6);
}

uint64_t sub_1E46ADC00(uint64_t a1)
{
  v2 = sub_1E46AE3F8(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);

  return MEMORY[0x1EEDF4630](a1, v2);
}

Swift::Int __swiftcall ReadingHistoryModel.readingTimeToday()()
{
  v0 = sub_1E470ADBC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E4709CCC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E4650534(&qword_1ECF74200, &qword_1E471AF80);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v17 - v12;
  sub_1E4709CBC();
  ReadingHistoryModel.readingHistoryDay(for:)(v13);
  (*(v6 + 8))(v9, v5);
  v14 = type metadata accessor for ReadingHistoryDay(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    sub_1E465E050(v13, &qword_1ECF74200, &qword_1E471AF80);
    return 0;
  }

  else
  {
    (*(v1 + 16))(v4, v13, v0);
    sub_1E46AE460(v13, type metadata accessor for ReadingHistoryDay);
    v16 = sub_1E470AD8C();
    (*(v1 + 8))(v4, v0);
    return v16;
  }
}

void ReadingHistoryModel.readingHistoryMonth(year:month:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E4650534(&unk_1ECF74D30, &unk_1E471DB90);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v17 - v8;
  v10 = 100 * a1;
  if ((a1 * 100) >> 64 != (100 * a1) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  v11 = __OFADD__(v10, a2);
  v12 = v10 + a2;
  if (v11)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v17[1] = v12;
  sub_1E4650534(&unk_1ECF74D00, &unk_1E471DBA0);
  sub_1E470AB0C();
  v13 = sub_1E4650534(&unk_1ECF74D50, &qword_1E471D848);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    sub_1E465E050(v9, &unk_1ECF74D30, &unk_1E471DB90);
    v15 = 1;
  }

  else
  {
    MEMORY[0x1E69159F0](v13);
    (*(v14 + 8))(v9, v13);
    v15 = 0;
  }

  v16 = type metadata accessor for ReadingHistoryMonth(0);
  (*(*(v16 - 8) + 56))(a3, v15, 1, v16);
}

uint64_t sub_1E46AE0B0(uint64_t a1)
{
  v2 = sub_1E4650534(&qword_1ECF741E8, &qword_1E471D590);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for ReadingHistoryDay(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E470ADAC();
  v11 = *(v7 + 20);
  v14 = 0;
  sub_1E470A65C();
  *&v10[*(v7 + 24)] = MEMORY[0x1E69E7CC8];
  v14 = a1;
  sub_1E470A65C();
  (*(v3 + 40))(&v10[v11], v6, v2);
  sub_1E46AE3F8(&qword_1ECF741D8, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);
  return sub_1E470AD0C();
}

uint64_t sub_1E46AE288()
{
  v0 = type metadata accessor for ReadingHistoryDay(0);
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E470ADAC();
  v5[1] = 0;
  sub_1E470A65C();
  *&v3[*(v0 + 24)] = MEMORY[0x1E69E7CC8];
  sub_1E46AE3F8(&qword_1ECF741D8, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);
  return sub_1E470AD0C();
}

uint64_t sub_1E46AE390(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E46AE3F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E46AE460(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E46AE4C0()
{
  v0 = type metadata accessor for ReadingHistoryMonth(0);
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4650534(&unk_1ECF74D80, &unk_1E471DBB0);
  sub_1E45E2F14(&qword_1EE2ACD80, &unk_1ECF74D80, &unk_1E471DBB0, MEMORY[0x1E6995490]);
  sub_1E45E2F14(&qword_1EE2ACD78, &unk_1ECF74D80, &unk_1E471DBB0, MEMORY[0x1E6995498]);
  sub_1E470AABC();
  v6 = 0;
  sub_1E470A65C();
  v6 = -1;
  sub_1E470A65C();
  *&v3[*(v0 + 28)] = MEMORY[0x1E69E7CC8];
  sub_1E46AE3F8(&qword_1ECF74F10, type metadata accessor for ReadingHistoryMonth, &protocol conformance descriptor for ReadingHistoryMonth);
  return sub_1E470AD0C();
}

void sub_1E46AE688(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a4@<X8>)
{
  v7 = sub_1E4650534(&qword_1ECF74BD8, &qword_1E471D530);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v13 - v9;
  v11 = *a1;
  if (*a1 < *a2)
  {
    v12 = sub_1E4709CCC();
    sub_1E46AE3F8(&qword_1EE2AEBE0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    if ((sub_1E470AEEC() & 1) == 0)
    {
      sub_1E465E0B0(a2, v10, &qword_1ECF74BD8, &qword_1E471D530);
      v11 = *v10;
      (*(*(v12 - 8) + 8))(&v10[*(v7 + 48)], v12);
    }
  }

  *a4 = v11;
}

uint64_t sub_1E46AE7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v90 = sub_1E4709CCC();
  v88 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90, v3);
  v68 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v75 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v71 = &v68 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v76 = &v68 - v13;
  v14 = sub_1E4650534(&qword_1ECF741E8, &qword_1E471D590);
  v82 = *(v14 - 8);
  v83 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v81 = &v68 - v16;
  v17 = sub_1E4709D5C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1E4709D7C();
  v23 = *(v22 - 8);
  v91 = v22;
  v92 = v23;
  MEMORY[0x1EEE9AC00](v22, v24);
  v84 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v68 - v28;
  v30 = sub_1E4650534(&qword_1ECF74FA8, &unk_1E471E6D8);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v86 = (&v68 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v68 - v35;
  sub_1E4709CDC();
  v37 = *(v18 + 104);
  v70 = *MEMORY[0x1E6969A68];
  v37(v21);
  v85 = sub_1E4709D6C();
  v38 = *(v18 + 8);
  v38(v21, v17);
  v69 = *MEMORY[0x1E6969A78];
  v77 = v37;
  v78 = v18 + 104;
  v37(v21);
  v39 = a1;
  v40 = v86;
  v72 = v39;
  v41 = sub_1E4709D6C();
  v79 = v21;
  v80 = v38;
  v73 = v17;
  v74 = v18 + 8;
  v38(v21, v17);
  ReadingHistoryModel.readingHistoryMonth(year:month:)(v85, v41, v36);
  v42 = *(v92 + 8);
  v43 = v29;
  v92 += 8;
  v42(v29, v91);
  sub_1E465E0B0(v36, v40, &qword_1ECF74FA8, &unk_1E471E6D8);
  v44 = type metadata accessor for ReadingHistoryMonth(0);
  if ((*(*(v44 - 8) + 48))(v40, 1, v44) == 1)
  {
    sub_1E465E050(v40, &qword_1ECF74FA8, &unk_1E471E6D8);
LABEL_6:
    sub_1E465E050(v36, &qword_1ECF74FA8, &unk_1E471E6D8);
    return (*(v88 + 56))(v89, 1, 1, v90);
  }

  v45 = *(v44 + 24);
  v46 = v81;
  v47 = v82;
  v48 = v83;
  (*(v82 + 16))(v81, v40 + v45, v83);
  sub_1E46AE460(v40, type metadata accessor for ReadingHistoryMonth);
  sub_1E470A62C();
  (*(v47 + 8))(v46, v48);
  if (v93 < 0)
  {
    goto LABEL_6;
  }

  v85 = v93;
  v87 = v36;
  sub_1E4709CDC();
  v49 = v43;
  sub_1E4709CDC();
  v50 = v79;
  v51 = v73;
  v52 = v77;
  (v77)(v79, v69, v73);
  v53 = sub_1E4709D6C();
  v54 = v80;
  v80(v50, v51);
  (v52)(v50, v70, v51);
  v55 = sub_1E4709D6C();
  v54(v50, v51);
  v56 = v71;
  sub_1E46B12B8(v55, v53, v71);
  v86 = v42;
  v42(v49, v91);
  v57 = v88;
  v58 = *(v88 + 48);
  v59 = v90;
  if (v58(v56, 1, v90) == 1)
  {
    sub_1E465E050(v56, &unk_1ECF74CD0, &qword_1E471B620);
    v60 = 1;
    v61 = v76;
  }

  else
  {
    v61 = v76;
    sub_1E4709BFC();
    (*(v57 + 8))(v56, v59);
    v60 = 0;
  }

  v63 = *(v57 + 56);
  v63(v61, v60, 1, v59);
  v64 = v75;
  sub_1E465E0B0(v61, v75, &unk_1ECF74CD0, &qword_1E471B620);
  if (v58(v64, 1, v59) == 1)
  {
    sub_1E465E050(v61, &unk_1ECF74CD0, &qword_1E471B620);
    v86(v84, v91);
    sub_1E465E050(v87, &qword_1ECF74FA8, &unk_1E471E6D8);
    sub_1E465E050(v64, &unk_1ECF74CD0, &qword_1E471B620);
    return (v63)(v89, 1, 1, v59);
  }

  else
  {
    v65 = v68;
    (*(v57 + 32))(v68, v64, v59);
    v66 = v79;
    (v77)(v79, *MEMORY[0x1E6969A48], v51);
    v67 = v84;
    sub_1E4709D3C();
    v80(v66, v51);
    (*(v57 + 8))(v65, v59);
    sub_1E465E050(v61, &unk_1ECF74CD0, &qword_1E471B620);
    v86(v67, v91);
    return sub_1E465E050(v87, &qword_1ECF74FA8, &unk_1E471E6D8);
  }
}

void *sub_1E46AF0D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4709CCC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v30 = &v30 - v10;
  v11 = sub_1E4709D7C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v30 - v22;
  sub_1E4709CDC();
  sub_1E46B12B8(a1, a2, v23);
  v24 = *(v12 + 8);
  v32 = v11;
  v24(v15, v11);
  sub_1E465E0B0(v23, v19, &unk_1ECF74CD0, &qword_1E471B620);
  if ((*(v5 + 48))(v19, 1, v4) == 1)
  {
    sub_1E465E050(v23, &unk_1ECF74CD0, &qword_1E471B620);
    v25 = 0;
    v23 = v19;
  }

  else
  {
    v26 = v30;
    (*(v5 + 32))(v30, v19, v4);
    sub_1E4709CDC();
    v27 = v31;
    sub_1E4709BFC();
    v25 = sub_1E46A4088(v27, 1);
    v28 = *(v5 + 8);
    v28(v27, v4);
    v24(v15, v32);
    v28(v26, v4);
  }

  sub_1E465E050(v23, &unk_1ECF74CD0, &qword_1E471B620);
  return v25;
}

uint64_t sub_1E46AF3F8(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v3 = type metadata accessor for ReadingHistoryDay(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E4650534(&unk_1ECF74D80, &unk_1E471DBB0);
  v42 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v40 - v9;
  v11 = sub_1E4650534(&qword_1ECF75008, &qword_1E471E750);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v40 - v17;
  v47 = sub_1E4650534(&qword_1ECF75010, &qword_1E471E758);
  v41 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v19);
  v21 = &v40 - v20;
  v44 = type metadata accessor for ReadingHistoryMonth(0);
  v22 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v23);
  v43 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1E4650534(&qword_1ECF74FA8, &unk_1E471E6D8);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v40 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v40 - v31;
  ReadingHistoryModel.readingHistoryMonth(year:month:)(a1, v45, &v40 - v31);
  sub_1E465E0B0(v32, v28, &qword_1ECF74FA8, &unk_1E471E6D8);
  if ((*(v22 + 48))(v28, 1, v44) == 1)
  {
    sub_1E465E050(v32, &qword_1ECF74FA8, &unk_1E471E6D8);
    v33 = 0;
  }

  else
  {
    v46 = v32;
    sub_1E46B4060(v28, v43, type metadata accessor for ReadingHistoryMonth);
    sub_1E4650534(&qword_1ECF74D60, &qword_1E471D858);
    sub_1E470AAAC();
    v33 = 0;
    v34 = (v42 + 32);
    v35 = (v42 + 8);
    while (1)
    {
      sub_1E470AA6C();
      sub_1E46574C0(v14, v18, &qword_1ECF75008, &qword_1E471E750);
      v36 = sub_1E4650534(&qword_1ECF74C10, &qword_1E471D568);
      if ((*(*(v36 - 8) + 48))(v18, 1, v36) == 1)
      {
        break;
      }

      (*v34)(v10, &v18[*(v36 + 48)], v7);
      MEMORY[0x1E69159F0](v7);
      v37 = sub_1E470AD8C();
      sub_1E46AE460(v6, type metadata accessor for ReadingHistoryDay);
      (*v35)(v10, v7);
      v38 = __OFADD__(v33, v37);
      v33 += v37;
      if (v38)
      {
        __break(1u);
        break;
      }
    }

    (*(v41 + 8))(v21, v47);
    sub_1E46AE460(v43, type metadata accessor for ReadingHistoryMonth);
    v28 = v46;
  }

  sub_1E465E050(v28, &qword_1ECF74FA8, &unk_1E471E6D8);
  return v33;
}

uint64_t sub_1E46AF8FC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E46B404C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1E470B80C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1E470B0EC();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1E46B2918(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void sub_1E46AFA34(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v8 = *(sub_1E4650534(a2, a3) - 8);
  v9 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = a4(v9);
  }

  v10 = *(v9 + 16);
  v11[0] = v9 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v11[1] = v10;
  sub_1E46B2578(v11, a2, a3);
  *a1 = v9;
}

Swift::Bool __swiftcall ReadingHistoryModel.DayKey.isTheDayBefore(_:)(BookDataStore::ReadingHistoryModel::DayKey a1)
{
  yearMonth = a1.yearMonth;
  v80 = sub_1E4709D5C();
  v85 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80, v3);
  v79 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E4709D7C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v81 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v82 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v87 = &v70 - v14;
  v88 = sub_1E4709CCC();
  v15 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88, v16);
  v78 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v77 = &v70 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v83 = &v70 - v23;
  v24 = sub_1E4650534(&qword_1ECF74D70, &unk_1E471DBD0);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v70 - v26;
  v28 = sub_1E4650534(&qword_1ECF74D78, &unk_1E471D870);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = &v70 - v30;
  v32 = sub_1E4709A3C();
  v33 = *(v32 - 8);
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v37 = &v70 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *yearMonth;
  v75 = yearMonth[1];
  v76 = v38;
  v40 = *v1;
  v39 = v1[1];
  v86 = v6;
  v41 = *(v6 + 56);
  v84 = v5;
  v41(v31, 1, 1, v5, v35);
  v42 = sub_1E4709D8C();
  (*(*(v42 - 8) + 56))(v27, 1, 1, v42);
  sub_1E4709A2C();
  v89 = v40;
  v90 = v39;
  v43 = v87;
  sub_1E46A34A8(v87);
  v44 = v43;
  v45 = *(v15 + 48);
  v46 = v88;
  if (v45(v43, 1) == 1)
  {
    (*(v33 + 8))(v37, v32);
    v47 = v43;
LABEL_5:
    sub_1E465E050(v47, &unk_1ECF74CD0, &qword_1E471B620);
    return 0;
  }

  v73 = v33;
  v74 = v32;
  v48 = v83;
  v87 = *(v15 + 32);
  (v87)(v83, v44, v46);
  v49 = v81;
  sub_1E4709CDC();
  v50 = v82;
  sub_1E4709D2C();
  v51 = v86 + 8;
  v72 = *(v86 + 8);
  v72(v49, v84);
  if ((v45)(v50, 1, v46) == 1)
  {
    (*(v15 + 8))(v48, v46);
    (*(v73 + 8))(v37, v74);
    v47 = v50;
    goto LABEL_5;
  }

  v71 = v37;
  v86 = v51;
  v53 = v77;
  (v87)(v77, v50, v46);
  v87 = v15;
  (*(v15 + 16))(v78, v53, v46);
  sub_1E4709CDC();
  v54 = v85;
  v55 = *(v85 + 104);
  v56 = v79;
  v57 = v80;
  v55(v79, *MEMORY[0x1E6969A68], v80);
  v58 = sub_1E4709D6C();
  v59 = *(v54 + 8);
  v59(v56, v57);
  v55(v56, *MEMORY[0x1E6969A78], v57);
  v60 = sub_1E4709D6C();
  v85 = v54 + 8;
  result = (v59)(v56, v57);
  v61 = 100 * v58;
  if ((v58 * 100) >> 64 != (100 * v58) >> 63)
  {
    __break(1u);
    goto LABEL_16;
  }

  v62 = v61 + v60;
  if (__OFADD__(v61, v60))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v63 = v79;
  v64 = v80;
  v55(v79, *MEMORY[0x1E6969A48], v80);
  v65 = v78;
  v66 = sub_1E4709D6C();
  v59(v63, v64);
  v72(v49, v84);
  v67 = v88;
  v68 = *(v87 + 8);
  v68(v65, v88);
  v68(v77, v67);
  v68(v83, v67);
  (*(v73 + 8))(v71, v74);
  return v76 == v62 && v75 == v66;
}

uint64_t ReadingHistoryModel.DayKey.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1E6916620](*v0);
  return MEMORY[0x1E6916620](v1);
}

uint64_t ReadingHistoryModel.DayKey.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E470B8FC();
  MEMORY[0x1E6916620](v1);
  MEMORY[0x1E6916620](v2);
  return sub_1E470B91C();
}

uint64_t *sub_1E46B03A8(uint64_t *result, uint64_t *a2)
{
  v2 = 100 * *result;
  if ((*result * 100) >> 64 != v2 >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result[1];
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = 100 * *a2;
  if ((*a2 * 100) >> 64 != v6 >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = a2[1];
  v4 = __OFADD__(v6, v7);
  v8 = v6 + v7;
  if (!v4)
  {
    return (v5 < v8);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t *sub_1E46B040C(uint64_t *result, uint64_t *a2)
{
  v2 = 100 * *a2;
  if ((*a2 * 100) >> 64 != v2 >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = a2[1];
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = 100 * *result;
  if ((*result * 100) >> 64 != v6 >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result[1];
  v4 = __OFADD__(v6, v7);
  v8 = v6 + v7;
  if (!v4)
  {
    return (v5 >= v8);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t *sub_1E46B0470(uint64_t *result, uint64_t *a2)
{
  v2 = 100 * *result;
  if ((*result * 100) >> 64 != v2 >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result[1];
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = 100 * *a2;
  if ((*a2 * 100) >> 64 != v6 >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = a2[1];
  v4 = __OFADD__(v6, v7);
  v8 = v6 + v7;
  if (!v4)
  {
    return (v5 >= v8);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t *sub_1E46B04D4(uint64_t *result, uint64_t *a2)
{
  v2 = 100 * *a2;
  if ((*a2 * 100) >> 64 != v2 >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = a2[1];
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = 100 * *result;
  if ((*result * 100) >> 64 != v6 >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result[1];
  v4 = __OFADD__(v6, v7);
  v8 = v6 + v7;
  if (!v4)
  {
    return (v5 < v8);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1E46B0538()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E470B8FC();
  MEMORY[0x1E6916620](v1);
  MEMORY[0x1E6916620](v2);
  return sub_1E470B91C();
}

uint64_t sub_1E46B0594()
{
  v1 = v0[1];
  MEMORY[0x1E6916620](*v0);
  return MEMORY[0x1E6916620](v1);
}

uint64_t sub_1E46B05D0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1E470B8FC();
  MEMORY[0x1E6916620](v2);
  MEMORY[0x1E6916620](v3);
  return sub_1E470B91C();
}

uint64_t ReadingHistoryModel.debugDescription.getter()
{
  v108 = sub_1E4650534(&qword_1ECF74BD8, &qword_1E471D530);
  v113 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108, v1);
  v107 = v92 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v106 = (v92 - v5);
  v6 = type metadata accessor for ReadingHistoryMonth(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v112 = v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1E4650534(&qword_1ECF74BE8, &unk_1E471D540);
  v114 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v9);
  v110 = v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v109 = (v92 - v13);
  v104 = sub_1E4650534(&unk_1ECF74CF0, &qword_1E471D828);
  v102 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104, v14);
  v103 = v92 - v15;
  v16 = sub_1E4650534(&unk_1ECF74D00, &unk_1E471DBA0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v92 - v19;
  v21 = sub_1E4650534(&qword_1ECF74F18, &unk_1E471DBE0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = v92 - v28;
  v30 = sub_1E45E2F14(&qword_1ECF74F20, &unk_1ECF74D00, &unk_1E471DBA0, MEMORY[0x1E6995250]);
  sub_1E470B19C();
  v31 = v0;
  v97 = v30;
  sub_1E470B1CC();
  sub_1E45E2F14(&qword_1ECF74F28, &qword_1ECF74F18, &unk_1E471DBE0, MEMORY[0x1E69950B8]);
  v32 = sub_1E470AEFC();
  v33 = *(v22 + 8);
  v99 = v25;
  v33(v25, v21);
  v98 = v29;
  v100 = v22 + 8;
  v101 = v21;
  v96 = v33;
  v33(v29, v21);
  if (v32)
  {
    return 0xD00000000000001BLL;
  }

  (*(v17 + 16))(v20, v31, v16);
  sub_1E45E2F14(&qword_1EE2ACD90, &unk_1ECF74D00, &unk_1E471DBA0, MEMORY[0x1E6995248]);
  v116 = sub_1E470B07C();
  v35 = 0;
  sub_1E46AFA34(&v116, &qword_1ECF74BE8, &unk_1E471D540, sub_1E46B8688);
  v36 = v31;
  v94 = v16;
  v37 = v116;
  v38 = *(v116 + 16);
  v95 = v31;
  if (v38)
  {
    v93 = 0;
    v118 = MEMORY[0x1E69E7CC0];
    sub_1E467F200(0, v38, 0);
    v39 = v118;
    v40 = (*(v114 + 80) + 32) & ~*(v114 + 80);
    v92[1] = v37;
    v41 = v37 + v40;
    v105 = v114[9];
    do
    {
      v114 = v39;
      v42 = v109;
      sub_1E465E0B0(v41, v109, &qword_1ECF74BE8, &unk_1E471D540);
      v116 = 0x2068746E6F4DLL;
      v117 = 0xE600000000000000;
      v115 = *v42;
      v43 = sub_1E470B81C();
      MEMORY[0x1E6915D10](v43);

      MEMORY[0x1E6915D10](8250, 0xE200000000000000);
      v44 = v110;
      sub_1E465E0B0(v42, v110, &qword_1ECF74BE8, &unk_1E471D540);
      v45 = *(v111 + 48);
      v46 = sub_1E4650534(&unk_1ECF74D50, &qword_1E471D848);
      v47 = v112;
      MEMORY[0x1E69159F0]();
      (*(*(v46 - 8) + 8))(v44 + v45, v46);
      v48 = sub_1E46AC1A8(0, 1);
      v50 = v49;
      sub_1E46AE460(v47, type metadata accessor for ReadingHistoryMonth);
      MEMORY[0x1E6915D10](v48, v50);

      MEMORY[0x1E6915D10](10, 0xE100000000000000);
      v52 = v116;
      v51 = v117;
      v53 = v42;
      v39 = v114;
      sub_1E465E050(v53, &qword_1ECF74BE8, &unk_1E471D540);
      v118 = v39;
      v55 = *(v39 + 16);
      v54 = *(v39 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_1E467F200((v54 > 1), v55 + 1, 1);
        v39 = v118;
      }

      *(v39 + 16) = v55 + 1;
      v56 = v39 + 16 * v55;
      *(v56 + 32) = v52;
      *(v56 + 40) = v51;
      v41 += v105;
      --v38;
    }

    while (v38);

    v36 = v95;
    v35 = v93;
  }

  else
  {

    v39 = MEMORY[0x1E69E7CC0];
  }

  v116 = v39;
  v57 = sub_1E4650534(&qword_1ECF74AA0, &qword_1E471C990);
  v58 = sub_1E45E2F14(&qword_1EE2ACD00, &qword_1ECF74AA0, &qword_1E471C990, MEMORY[0x1E69E6310]);
  v59 = sub_1E470AEDC();
  v61 = v60;

  v62 = type metadata accessor for ReadingHistoryModel(0);
  (*(v102 + 16))(v103, v36 + *(v62 + 20), v104);
  sub_1E45E2F14(&qword_1ECF74D20, &unk_1ECF74CF0, &qword_1E471D828, MEMORY[0x1E6995248]);
  v116 = sub_1E470B07C();
  sub_1E46AFA34(&v116, &qword_1ECF74BD8, &qword_1E471D530, sub_1E46B8674);
  if (v35)
  {
    goto LABEL_21;
  }

  v104 = v58;
  v105 = v57;
  v109 = v59;
  v110 = v61;
  v35 = v116;
  v63 = *(v116 + 16);
  if (v63)
  {
    v118 = MEMORY[0x1E69E7CC0];
    sub_1E467F200(0, v63, 0);
    v64 = 0;
    v65 = v118;
    v66 = *(v113 + 80);
    v111 = v63;
    v112 = v35 + ((v66 + 32) & ~v66);
    v114 = v35;
    while (v64 < v35[2])
    {
      v67 = v106;
      sub_1E465E0B0(&v112[*(v113 + 72) * v64], v106, &qword_1ECF74BD8, &qword_1E471D530);
      v68 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
      [v68 setFormatOptions_];
      v115 = *v67;
      v116 = sub_1E470B81C();
      v117 = v69;
      MEMORY[0x1E6915D10](0x203A7961642DLL, 0xE600000000000000);
      v70 = v107;
      sub_1E465E0B0(v67, v107, &qword_1ECF74BD8, &qword_1E471D530);
      v71 = *(v108 + 48);
      v72 = sub_1E4709C5C();
      v73 = sub_1E4709CCC();
      (*(*(v73 - 8) + 8))(v70 + v71, v73);
      v74 = [v68 stringFromDate_];

      v75 = sub_1E470AF1C();
      v77 = v76;

      MEMORY[0x1E6915D10](v75, v77);

      v78 = v116;
      v79 = v117;
      sub_1E465E050(v67, &qword_1ECF74BD8, &qword_1E471D530);
      v118 = v65;
      v81 = *(v65 + 16);
      v80 = *(v65 + 24);
      if (v81 >= v80 >> 1)
      {
        sub_1E467F200((v80 > 1), v81 + 1, 1);
        v65 = v118;
      }

      ++v64;
      *(v65 + 16) = v81 + 1;
      v82 = v65 + 16 * v81;
      *(v82 + 32) = v78;
      *(v82 + 40) = v79;
      v35 = v114;
      if (v111 == v64)
      {

        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:

    __break(1u);
    return result;
  }

  v65 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v116 = v65;
  v83 = sub_1E470AEDC();
  v85 = v84;

  v116 = 0;
  v117 = 0xE000000000000000;
  sub_1E470B5CC();
  MEMORY[0x1E6915D10](0xD00000000000001DLL, 0x80000001E4719340);
  v86 = v98;
  sub_1E470B19C();
  v87 = v99;
  sub_1E470B1CC();
  v88 = sub_1E470B1BC();
  v89 = v101;
  v90 = v96;
  v96(v87, v101);
  v90(v86, v89);
  v118 = v88;
  v91 = sub_1E470B81C();
  MEMORY[0x1E6915D10](v91);

  MEMORY[0x1E6915D10](10, 0xE100000000000000);
  MEMORY[0x1E6915D10](v109, v110);

  MEMORY[0x1E6915D10](0xD000000000000011, 0x80000001E4719360);
  MEMORY[0x1E6915D10](v83, v85);

  MEMORY[0x1E6915D10](4065885, 0xE300000000000000);
  return v116;
}

uint64_t sub_1E46B12B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a1;
  v43 = a2;
  v44 = a3;
  v3 = sub_1E4709D5C();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E4709CCC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v38 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E4650534(&qword_1ECF74D70, &unk_1E471DBD0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v38 - v12;
  v14 = sub_1E4650534(&qword_1ECF74D78, &unk_1E471D870);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v38 - v16;
  v18 = sub_1E4709A3C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v38 - v29;
  v31 = sub_1E4709D7C();
  (*(*(v31 - 8) + 56))(v17, 1, 1, v31);
  v32 = sub_1E4709D8C();
  (*(*(v32 - 8) + 56))(v13, 1, 1, v32);
  sub_1E4709A2C();
  sub_1E4709A0C();
  sub_1E4709A1C();
  sub_1E4709D1C();
  (*(v19 + 8))(v22, v18);
  sub_1E465E0B0(v30, v26, &unk_1ECF74CD0, &qword_1E471B620);
  if ((*(v7 + 48))(v26, 1, v6) == 1)
  {
    sub_1E465E050(v30, &unk_1ECF74CD0, &qword_1E471B620);
    sub_1E465E050(v26, &unk_1ECF74CD0, &qword_1E471B620);
    return (*(v7 + 56))(v44, 1, 1, v6);
  }

  else
  {
    v34 = v38;
    (*(v7 + 32))(v38, v26, v6);
    v36 = v39;
    v35 = v40;
    v37 = v41;
    (*(v40 + 104))(v39, *MEMORY[0x1E6969A78], v41);
    sub_1E4709D3C();
    (*(v35 + 8))(v36, v37);
    (*(v7 + 8))(v34, v6);
    return sub_1E465E050(v30, &unk_1ECF74CD0, &qword_1E471B620);
  }
}

unint64_t sub_1E46B1FE4()
{
  result = qword_1ECF74F98;
  if (!qword_1ECF74F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74F98);
  }

  return result;
}

void sub_1E46B208C()
{
  if (!qword_1EE2ACDD8)
  {
    v0 = sub_1E470A64C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2ACDD8);
    }
  }
}

void sub_1E46B210C(uint64_t a1)
{
  sub_1E46B21A8(319);
  if (v1 <= 0x3F)
  {
    sub_1E46B208C();
    if (v2 <= 0x3F)
    {
      sub_1E4671EC0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E46B21A8(uint64_t a1)
{
  if (!qword_1EE2ACDA0)
  {
    sub_1E46506D0(&unk_1ECF74D80, &unk_1E471DBB0);
    sub_1E45E2F14(&qword_1EE2ACD80, &unk_1ECF74D80, &unk_1E471DBB0, MEMORY[0x1E6995490]);
    sub_1E45E2F14(&qword_1EE2ACD78, &unk_1ECF74D80, &unk_1E471DBB0, MEMORY[0x1E6995498]);
    v1 = sub_1E470AACC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2ACDA0);
    }
  }
}

void sub_1E46B22FC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  a4(319, a2, a3);
  if (v6 <= 0x3F)
  {
    a5(319);
    if (v7 <= 0x3F)
    {
      sub_1E4671EC0(319);
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E46B23A4(uint64_t a1)
{
  if (!qword_1EE2ACD88)
  {
    sub_1E46506D0(&unk_1ECF74D50, &qword_1E471D848);
    sub_1E45E2F14(&qword_1EE2ACD70, &unk_1ECF74D50, &qword_1E471D848, MEMORY[0x1E6995490]);
    sub_1E45E2F14(&qword_1EE2ACD68, &unk_1ECF74D50, &qword_1E471D848, MEMORY[0x1E6995498]);
    v1 = sub_1E470AACC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2ACD88);
    }
  }
}

void sub_1E46B24A4(uint64_t a1)
{
  if (!qword_1EE2ACDA8)
  {
    sub_1E4709CCC();
    sub_1E46AE3F8(&unk_1EE2AEBD0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    v1 = sub_1E470AACC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2ACDA8);
    }
  }
}

void sub_1E46B2578(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  v7 = sub_1E470B80C();
  if (v7 < v6)
  {
    if (v6 >= -1)
    {
      v8 = v7;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1E4650534(a2, a3);
        v10 = sub_1E470B0EC();
        *(v10 + 16) = v9;
      }

      v11 = *(sub_1E4650534(a2, a3) - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      sub_1E46B2E64(v12, v13, a1, v8, a2, a3);
      *(v10 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    sub_1E46B26D4(0, v6, 1, a1, a2, a3);
  }
}

void sub_1E46B26D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v43 = sub_1E4650534(a5, a6);
  MEMORY[0x1EEE9AC00](v43, v12);
  v42 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v33 - v16);
  MEMORY[0x1EEE9AC00](v18, v19);
  v22 = (&v33 - v21);
  v35 = a2;
  if (a3 != a2)
  {
    v23 = *a4;
    v24 = *(v20 + 72);
    v25 = *a4 + v24 * (a3 - 1);
    v40 = -v24;
    v41 = v23;
    v26 = a1 - a3;
    v34 = v24;
    v27 = v23 + v24 * a3;
LABEL_5:
    v38 = v25;
    v39 = a3;
    v36 = v27;
    v37 = v26;
    v28 = v26;
    while (1)
    {
      sub_1E465E0B0(v27, v22, a5, a6);
      sub_1E465E0B0(v25, v17, a5, a6);
      v29 = *v22;
      v30 = *v17;
      sub_1E465E050(v17, a5, a6);
      sub_1E465E050(v22, a5, a6);
      if (v29 >= v30)
      {
LABEL_4:
        a3 = v39 + 1;
        v25 = v38 + v34;
        v26 = v37 - 1;
        v27 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v41)
      {
        break;
      }

      v31 = v42;
      sub_1E46574C0(v27, v42, a5, a6);
      swift_arrayInitWithTakeFrontToBack();
      sub_1E46574C0(v31, v25, a5, a6);
      v25 += v40;
      v27 += v40;
      if (__CFADD__(v28++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1E46B2918(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1E46B8624(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1E46B3780((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E4693950(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1E4693950((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
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
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_1E46B3780((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

void sub_1E46B2E64(unint64_t *a1, uint64_t a2, uint64_t a3, int64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = a6;
  v9 = a5;
  v10 = v7;
  v115 = a1;
  v129 = sub_1E4650534(a5, a6);
  v124 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129, v13);
  v119 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v128 = &v113 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v131 = (&v113 - v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  v130 = (&v113 - v23);
  v24 = *(a3 + 8);
  v116 = a3;
  v133 = v8;
  if (v24 < 1)
  {
    v26 = MEMORY[0x1E69E7CC0];
LABEL_98:
    a4 = *v115;
    if (!*v115)
    {
      goto LABEL_137;
    }

    v6 = v26;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v108 = v6;
LABEL_101:
      v134 = v108;
      v6 = *(v108 + 2);
      if (v6 >= 2)
      {
        do
        {
          v109 = *a3;
          if (!*a3)
          {
            goto LABEL_135;
          }

          a3 = *&v108[16 * v6];
          v110 = v108;
          v111 = *&v108[16 * v6 + 24];
          sub_1E46B3974(v109 + *(v124 + 72) * a3, v109 + *(v124 + 72) * *&v108[16 * v6 + 16], v109 + *(v124 + 72) * v111, a4, v9, v133);
          if (v10)
          {
            break;
          }

          if (v111 < a3)
          {
            goto LABEL_124;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_1E46B8624(v110);
          }

          if (v6 - 2 >= *(v110 + 2))
          {
            goto LABEL_125;
          }

          v112 = &v110[16 * v6];
          *v112 = a3;
          *(v112 + 1) = v111;
          v134 = v110;
          sub_1E46B8598(v6 - 1);
          v108 = v134;
          v6 = *(v134 + 2);
          a3 = v116;
        }

        while (v6 > 1);
      }

LABEL_109:

      return;
    }

LABEL_131:
    v108 = sub_1E46B8624(v6);
    goto LABEL_101;
  }

  v25 = 0;
  v26 = MEMORY[0x1E69E7CC0];
  v114 = a4;
  v132 = v9;
  while (1)
  {
    v27 = v25;
    v28 = v25 + 1;
    v120 = v26;
    v117 = v27;
    if (v28 >= v24)
    {
      v37 = v28;
    }

    else
    {
      v126 = v24;
      v113 = v10;
      v29 = v27;
      v30 = *a3;
      v31 = *(v124 + 72);
      v32 = *a3 + v31 * v28;
      v33 = v130;
      sub_1E465E0B0(v32, v130, v9, v8);
      v6 = v131;
      sub_1E465E0B0(v30 + v31 * v29, v131, v9, v8);
      v34 = *v33;
      v123 = *v6;
      sub_1E465E050(v6, v9, v8);
      sub_1E465E050(v33, v9, v8);
      v35 = v29 + 2;
      v125 = v31;
      v36 = v30 + v31 * (v29 + 2);
      while (1)
      {
        v37 = v126;
        if (v126 == v35)
        {
          break;
        }

        LODWORD(v127) = v34 < v123;
        v38 = v130;
        v39 = v133;
        sub_1E465E0B0(v36, v130, v132, v133);
        v40 = v131;
        sub_1E465E0B0(v32, v131, v132, v39);
        v41 = *v38;
        v6 = *v40;
        sub_1E465E050(v40, v132, v39);
        v42 = v38;
        v9 = v132;
        sub_1E465E050(v42, v132, v39);
        ++v35;
        v36 += v125;
        v32 += v125;
        if (((v127 ^ (v41 >= v6)) & 1) == 0)
        {
          v37 = v35 - 1;
          break;
        }
      }

      v10 = v113;
      a4 = v114;
      v8 = v133;
      a3 = v116;
      v27 = v117;
      if (v34 < v123)
      {
        if (v37 < v117)
        {
          goto LABEL_128;
        }

        if (v117 < v37)
        {
          v6 = v125 * (v37 - 1);
          v43 = v37 * v125;
          v126 = v37;
          v44 = v37;
          v45 = v117;
          v46 = v117 * v125;
          do
          {
            if (v45 != --v44)
            {
              v47 = *a3;
              if (!*a3)
              {
                goto LABEL_134;
              }

              sub_1E46574C0(v47 + v46, v119, v9, v133);
              if (v46 < v6 || v47 + v46 >= (v47 + v43))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v46 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1E46574C0(v119, v47 + v6, v9, v133);
            }

            ++v45;
            v6 -= v125;
            v43 -= v125;
            v46 += v125;
          }

          while (v45 < v44);
          v10 = v113;
          a4 = v114;
          v8 = v133;
          v27 = v117;
          v37 = v126;
        }
      }
    }

    v48 = *(a3 + 8);
    if (v37 >= v48)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v37, v27))
    {
      goto LABEL_127;
    }

    if (v37 - v27 >= a4)
    {
LABEL_32:
      v50 = v37;
      goto LABEL_33;
    }

    if (__OFADD__(v27, a4))
    {
      goto LABEL_129;
    }

    if (v27 + a4 >= v48)
    {
      v49 = *(a3 + 8);
    }

    else
    {
      v49 = v27 + a4;
    }

    if (v49 < v27)
    {
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    if (v37 == v49)
    {
      goto LABEL_32;
    }

    v113 = v10;
    v96 = *a3;
    v97 = *(v124 + 72);
    v98 = *a3 + v97 * (v37 - 1);
    v99 = -v97;
    v6 = v117 - v37;
    v118 = v97;
    v127 = v96;
    a4 = v96 + v37 * v97;
    v121 = v49;
LABEL_89:
    v125 = v98;
    v126 = v37;
    v122 = a4;
    v123 = v6;
    v100 = v98;
LABEL_90:
    v101 = v130;
    sub_1E465E0B0(a4, v130, v9, v8);
    v102 = v131;
    sub_1E465E0B0(v100, v131, v9, v133);
    v103 = *v101;
    v104 = *v102;
    v105 = v102;
    v8 = v133;
    sub_1E465E050(v105, v9, v133);
    sub_1E465E050(v101, v9, v8);
    if (v103 < v104)
    {
      break;
    }

    v9 = v132;
LABEL_88:
    v37 = v126 + 1;
    v98 = v125 + v118;
    v6 = v123 - 1;
    a4 = v122 + v118;
    v50 = v121;
    if (v126 + 1 != v121)
    {
      goto LABEL_89;
    }

    v10 = v113;
    a3 = v116;
LABEL_33:
    if (v50 < v117)
    {
      goto LABEL_126;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v26 = v120;
    }

    else
    {
      v26 = sub_1E4693950(0, *(v120 + 2) + 1, 1, v120);
    }

    v6 = *(v26 + 2);
    v51 = *(v26 + 3);
    a4 = v6 + 1;
    if (v6 >= v51 >> 1)
    {
      v26 = sub_1E4693950((v51 > 1), v6 + 1, 1, v26);
    }

    *(v26 + 2) = a4;
    v52 = &v26[16 * v6];
    *(v52 + 4) = v117;
    *(v52 + 5) = v50;
    v53 = *v115;
    if (!*v115)
    {
      goto LABEL_136;
    }

    v121 = v50;
    if (v6)
    {
      v9 = v53;
      while (1)
      {
        v54 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v55 = *(v26 + 4);
          v56 = *(v26 + 5);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_54:
          if (v58)
          {
            goto LABEL_115;
          }

          v71 = &v26[16 * a4];
          v73 = *v71;
          v72 = *(v71 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_118;
          }

          v77 = &v26[16 * v54 + 32];
          v79 = *v77;
          v78 = *(v77 + 1);
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_121;
          }

          if (__OFADD__(v75, v80))
          {
            goto LABEL_122;
          }

          if (v75 + v80 >= v57)
          {
            if (v57 < v80)
            {
              v54 = a4 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v81 = &v26[16 * a4];
        v83 = *v81;
        v82 = *(v81 + 1);
        v65 = __OFSUB__(v82, v83);
        v75 = v82 - v83;
        v76 = v65;
LABEL_68:
        if (v76)
        {
          goto LABEL_117;
        }

        v84 = &v26[16 * v54];
        v86 = *(v84 + 4);
        v85 = *(v84 + 5);
        v65 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v65)
        {
          goto LABEL_120;
        }

        if (v87 < v75)
        {
          goto LABEL_3;
        }

LABEL_75:
        v6 = v54 - 1;
        if (v54 - 1 >= a4)
        {
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
          goto LABEL_130;
        }

        if (!*a3)
        {
          goto LABEL_133;
        }

        v92 = v26;
        a4 = *&v26[16 * v6 + 32];
        v93 = *&v26[16 * v54 + 40];
        sub_1E46B3974(*a3 + *(v124 + 72) * a4, *a3 + *(v124 + 72) * *&v26[16 * v54 + 32], *a3 + *(v124 + 72) * v93, v9, v132, v133);
        if (v10)
        {
          goto LABEL_109;
        }

        if (v93 < a4)
        {
          goto LABEL_111;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v94 = v92;
        }

        else
        {
          v94 = sub_1E46B8624(v92);
        }

        v8 = v133;
        if (v6 >= *(v94 + 2))
        {
          goto LABEL_112;
        }

        v95 = &v94[16 * v6];
        *(v95 + 4) = a4;
        *(v95 + 5) = v93;
        v134 = v94;
        v6 = &v134;
        sub_1E46B8598(v54);
        v26 = v134;
        a4 = *(v134 + 2);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v59 = &v26[16 * a4 + 32];
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_113;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_114;
      }

      v66 = &v26[16 * a4];
      v68 = *v66;
      v67 = *(v66 + 1);
      v65 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v65)
      {
        goto LABEL_116;
      }

      v65 = __OFADD__(v57, v69);
      v70 = v57 + v69;
      if (v65)
      {
        goto LABEL_119;
      }

      if (v70 >= v62)
      {
        v88 = &v26[16 * v54 + 32];
        v90 = *v88;
        v89 = *(v88 + 1);
        v65 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v65)
        {
          goto LABEL_123;
        }

        if (v57 < v91)
        {
          v54 = a4 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v24 = *(a3 + 8);
    v25 = v121;
    a4 = v114;
    v9 = v132;
    if (v121 >= v24)
    {
      goto LABEL_98;
    }
  }

  if (v127)
  {
    v106 = v128;
    v9 = v132;
    sub_1E46574C0(a4, v128, v132, v8);
    swift_arrayInitWithTakeFrontToBack();
    sub_1E46574C0(v106, v100, v9, v8);
    v100 += v99;
    a4 += v99;
    if (__CFADD__(v6++, 1))
    {
      goto LABEL_88;
    }

    goto LABEL_90;
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
}