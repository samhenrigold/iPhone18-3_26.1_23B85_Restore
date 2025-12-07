uint64_t sub_1A9528474(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 209) = a4;
  *(v4 + 72) = a2;
  *(v4 + 80) = a3;
  *(v4 + 64) = a1;
  sub_1A937829C(&qword_1EB3887A8, &qword_1A95997D0);
  *(v4 + 88) = swift_task_alloc();
  v5 = sub_1A937829C(&qword_1EB388790, &qword_1A9599730);
  *(v4 + 96) = v5;
  *(v4 + 104) = *(v5 - 8);
  *(v4 + 112) = swift_task_alloc();
  v6 = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  *(v4 + 120) = v6;
  *(v4 + 128) = *(v6 - 8);
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  type metadata accessor for TTSSpeechQueue(0);
  sub_1A9534BD8(&qword_1EB388758, &protocol conformance descriptor for TTSSpeechQueue);
  v8 = sub_1A957C5A8();
  *(v4 + 152) = v8;
  *(v4 + 160) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A952862C, v8, v7);
}

void sub_1A952862C(uint64_t a1, uint64_t a2)
{
  v100 = v2;
  v3 = *(v2 + 64);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v3 + 40;
    v7 = MEMORY[0x1E69E7CC0];
    v93 = v3 + 40;
    do
    {
      v8 = (v6 + 16 * v5);
      v9 = v5;
      while (1)
      {
        if (v9 >= v4)
        {
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        v5 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_75;
        }

        v10 = *(v8 - 1);
        v11 = *v8;
        ObjectType = swift_getObjectType();
        v13 = *(v11 + 40);
        swift_unknownObjectRetain();
        v13(&v98, ObjectType, v11);
        if ((v98 & 1) == 0)
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v9;
        v8 += 2;
        if (v5 == v4)
        {
          goto LABEL_16;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v99 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1A940FCE4(0, v7[2] + 1, 1);
        v7 = v99;
      }

      v6 = v93;
      v16 = v7[2];
      v15 = v7[3];
      if (v16 >= v15 >> 1)
      {
        sub_1A940FCE4((v15 > 1), v16 + 1, 1);
        v7 = v99;
      }

      v7[2] = v16 + 1;
      v17 = &v7[2 * v16];
      v17[4] = v10;
      v17[5] = v11;
    }

    while (v5 != v4);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

LABEL_16:
  v86 = v4;
  v18 = v7[2];
  if (v18)
  {
    v20 = v7[4];
    v19 = v7[5];
    swift_unknownObjectRetain();
    if (v18 != 1)
    {
      v88 = v18;
      v21 = v7 + 5;
      v22 = 1;
      v85 = v18 - 1;
LABEL_19:
      v94 = v20;
      v23 = v22;
      v24 = &v21[2 * v22];
      while (v23 < v7[2])
      {
        v20 = *(v24 - 1);
        v25 = *v24;
        v22 = v23 + 1;
        v26 = swift_getObjectType();
        v27 = *(v25 + 24);
        swift_unknownObjectRetain();
        v28 = v27(v26, v25);
        v29 = swift_getObjectType();
        if (v28 < (*(v19 + 24))(v29, v19))
        {
          swift_unknownObjectRelease();
          v19 = v25;
          v21 = v7 + 5;
          if (v85 != v23)
          {
            goto LABEL_19;
          }

          goto LABEL_28;
        }

        swift_unknownObjectRelease();
        v24 += 2;
        ++v23;
        if (v88 == v22)
        {
          v20 = v94;
          goto LABEL_27;
        }
      }

LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      return;
    }

LABEL_27:
    v25 = v19;
LABEL_28:
    v91 = v25;
  }

  else
  {

    v20 = 0;
    v91 = 0;
  }

  *(v97 + 168) = v20;
  v30 = MEMORY[0x1E69E7CC0];
  if (v86)
  {
    v31 = 0;
    v32 = *(v97 + 64) + 40;
    v89 = v32;
LABEL_31:
    v33 = (v32 + 16 * v31);
    v34 = v31;
    while (v34 < v86)
    {
      v31 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_77;
      }

      v35 = *(v33 - 1);
      v36 = *v33;
      v37 = swift_getObjectType();
      v38 = *(v36 + 48);
      swift_unknownObjectRetain();
      v38(&v98, v37, v36);
      if ((v98 & 1) == 0)
      {
        v39 = swift_isUniquelyReferenced_nonNull_native();
        v99 = v30;
        if ((v39 & 1) == 0)
        {
          sub_1A940FCE4(0, v30[2] + 1, 1);
          v30 = v99;
        }

        v41 = v30[2];
        v40 = v30[3];
        if (v41 >= v40 >> 1)
        {
          sub_1A940FCE4((v40 > 1), v41 + 1, 1);
          v30 = v99;
        }

        v30[2] = v41 + 1;
        v42 = &v30[2 * v41];
        v42[4] = v35;
        v42[5] = v36;
        v32 = v89;
        if (v31 != v86)
        {
          goto LABEL_31;
        }

        goto LABEL_42;
      }

      swift_unknownObjectRelease();
      ++v34;
      v33 += 2;
      if (v31 == v86)
      {
        goto LABEL_42;
      }
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

LABEL_42:
  v43 = v30[2];
  if (v43)
  {
    v99 = MEMORY[0x1E69E7CC0];
    sub_1A9530F74(0, v43, 0);
    v44 = v99;
    v45 = v30 + 5;
    v46 = v20;
    do
    {
      v47 = *v45;
      v48 = swift_getObjectType();
      v49 = *(v47 + 24);
      swift_unknownObjectRetain();
      v50 = v49(v48, v47);
      swift_unknownObjectRelease();
      v99 = v44;
      v52 = *(v44 + 16);
      v51 = *(v44 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_1A9530F74((v51 > 1), v52 + 1, 1);
        v44 = v99;
      }

      *(v44 + 16) = v52 + 1;
      *(v44 + 8 * v52 + 32) = v50;
      v45 += 2;
      --v43;
    }

    while (v43);
  }

  else
  {

    v44 = MEMORY[0x1E69E7CC0];
    v46 = v20;
  }

  v53 = v97;
  *(v97 + 176) = sub_1A9531FE0(v44);

  if (v46)
  {
    swift_unknownObjectRetain();
    v54 = swift_task_alloc();
    *(v97 + 184) = v54;
    *v54 = v97;
    v54[1] = sub_1A9528F60;
    v55 = *(v97 + 72);

    sub_1A9532054(v55, v46, v91);
  }

  else if (*(*(v97 + 176) + 16))
  {

    v56 = swift_task_alloc();
    *(v97 + 192) = v56;
    *v56 = v97;
    v56[1] = sub_1A95294A4;
    v57 = *(v97 + 176);
    v58 = *(v97 + 72);

    sub_1A9532D30(v58, v57);
  }

  else
  {

    v59 = *(v97 + 80);
    v92 = *(v59 + 16);
    if (v92)
    {
      v60 = *(v97 + 144);
      v96 = *(v97 + 136);
      v61 = *(v97 + 128);
      v62 = *(v97 + 104);
      v63 = *(v97 + 72);
      v87 = v59 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
      v90 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      swift_beginAccess();
      v64 = 0;
      v65 = *(v61 + 72);
      v84 = (v62 + 8);
      v53 = v97;
      do
      {
        v95 = v64;
        sub_1A9530850(v87 + v64 * v65, *(v53 + 144));
        v66 = 0;
        v67 = *(*(v63 + 40) + 16);
        v68 = v90;
        while (v67 != v66)
        {
          v69 = *(v63 + 40);
          if (v66 >= *(v69 + 16))
          {
            __break(1u);
            goto LABEL_74;
          }

          v70 = *(v97 + 136);
          ++v66;
          sub_1A9530850(v69 + v68, v70);
          v71 = *(v60 + 8);
          v72 = swift_getObjectType();
          v73 = (*(v71 + 24))(v72, v71);
          v74 = *(v96 + 8);
          v75 = swift_getObjectType();
          v76 = (*(v74 + 24))(v75, v74);
          sub_1A95308B4(v70);
          v68 += v65;
          if (v76 < v73)
          {
            v67 = v66 - 1;
            break;
          }
        }

        v53 = v97;
        v77 = *(v97 + 112);
        v78 = *(v97 + 96);
        *(v97 + 208) = 0;
        sub_1A937829C(&qword_1EB388788, &qword_1A95996E8);
        sub_1A957C818();
        (*v84)(v77, v78);
        swift_beginAccess();
        if (*(*(v63 + 40) + 16) < v67)
        {
          goto LABEL_79;
        }

        v79 = *(v97 + 144);
        v80 = *(v97 + 88);
        v64 = v95 + 1;
        sub_1A9530850(v79, v80);
        sub_1A95319C4(v67, v67, v80);
        swift_endAccess();
        sub_1A9526A64();
        sub_1A95308B4(v79);
      }

      while (v95 + 1 != v92);
    }

    if (*(v53 + 209))
    {
      v81 = *(v53 + 72);
      LOBYTE(v99) = 3;
      (*(*v81 + 160))(&v99);
      v82 = swift_task_alloc();
      *(v53 + 200) = v82;
      *v82 = v53;
      v82[1] = sub_1A9529954;

      sub_1A952D6FC();
    }

    else
    {
      swift_unknownObjectRelease();

      v83 = *(v53 + 8);

      v83();
    }
  }
}

uint64_t sub_1A9528F60()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1A95290A4, v3, v2);
}

uint64_t sub_1A95290A4()
{
  v37 = v0;
  if (*(*(v0 + 176) + 16))
  {

    v1 = swift_task_alloc();
    *(v0 + 192) = v1;
    *v1 = v0;
    v1[1] = sub_1A95294A4;
    v2 = *(v0 + 176);
    v3 = *(v0 + 72);

    return sub_1A9532D30(v3, v2);
  }

  v5 = *(v0 + 80);
  v32 = *(v5 + 16);
  if (!v32)
  {
    goto LABEL_14;
  }

  v34 = *(v0 + 136);
  v35 = *(v0 + 144);
  v6 = *(v0 + 128);
  v7 = *(v0 + 104);
  v8 = *(v0 + 72);
  v30 = v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v31 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  swift_beginAccess();
  v9 = 0;
  v10 = *(v6 + 72);
  v29 = (v7 + 8);
  while (2)
  {
    v33 = v9;
    result = sub_1A9530850(v30 + v9 * v10, *(v0 + 144));
    v11 = 0;
    v12 = *(*(v8 + 40) + 16);
    v13 = v31;
    do
    {
      if (v12 == v11)
      {
        goto LABEL_12;
      }

      v14 = *(v8 + 40);
      if (v11 >= *(v14 + 16))
      {
        __break(1u);
        goto LABEL_22;
      }

      v15 = *(v0 + 136);
      ++v11;
      sub_1A9530850(v14 + v13, v15);
      v16 = *(v35 + 8);
      ObjectType = swift_getObjectType();
      v18 = (*(v16 + 24))(ObjectType, v16);
      v19 = *(v34 + 8);
      v20 = swift_getObjectType();
      v21 = (*(v19 + 24))(v20, v19);
      result = sub_1A95308B4(v15);
      v13 += v10;
    }

    while (v21 >= v18);
    v12 = v11 - 1;
LABEL_12:
    v22 = *(v0 + 112);
    v23 = *(v0 + 96);
    *(v0 + 208) = 0;
    sub_1A937829C(&qword_1EB388788, &qword_1A95996E8);
    sub_1A957C818();
    (*v29)(v22, v23);
    result = swift_beginAccess();
    if (*(*(v8 + 40) + 16) < v12)
    {
LABEL_22:
      __break(1u);
      return result;
    }

    v24 = *(v0 + 144);
    v25 = *(v0 + 88);
    v9 = v33 + 1;
    sub_1A9530850(v24, v25);
    sub_1A95319C4(v12, v12, v25);
    swift_endAccess();
    sub_1A9526A64();
    sub_1A95308B4(v24);
    if (v33 + 1 != v32)
    {
      continue;
    }

    break;
  }

LABEL_14:
  if (*(v0 + 209))
  {
    v26 = *(v0 + 72);
    v36 = 3;
    (*(*v26 + 160))(&v36);
    v27 = swift_task_alloc();
    *(v0 + 200) = v27;
    *v27 = v0;
    v27[1] = sub_1A9529954;

    return sub_1A952D6FC();
  }

  else
  {
    swift_unknownObjectRelease();

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_1A95294A4()
{
  v1 = *v0;

  swift_bridgeObjectRelease_n();
  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1A95295EC, v3, v2);
}

uint64_t sub_1A95295EC()
{
  v34 = v0;
  v1 = *(v0 + 80);
  v29 = *(v1 + 16);
  if (v29)
  {
    v31 = *(v0 + 136);
    v32 = *(v0 + 144);
    v2 = *(v0 + 128);
    v3 = *(v0 + 104);
    v4 = *(v0 + 72);
    v27 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v28 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    swift_beginAccess();
    v5 = 0;
    v6 = *(v2 + 72);
    v26 = (v3 + 8);
LABEL_3:
    v30 = v5;
    result = sub_1A9530850(v27 + v5 * v6, *(v0 + 144));
    v8 = 0;
    v9 = *(*(v4 + 40) + 16);
    v10 = v28;
    while (1)
    {
      if (v9 == v8)
      {
        goto LABEL_8;
      }

      v11 = *(v4 + 40);
      if (v8 >= *(v11 + 16))
      {
        break;
      }

      v12 = *(v0 + 136);
      ++v8;
      sub_1A9530850(v11 + v10, v12);
      v13 = *(v32 + 8);
      ObjectType = swift_getObjectType();
      v15 = (*(v13 + 24))(ObjectType, v13);
      v16 = *(v31 + 8);
      v17 = swift_getObjectType();
      v18 = (*(v16 + 24))(v17, v16);
      result = sub_1A95308B4(v12);
      v10 += v6;
      if (v18 < v15)
      {
        v9 = v8 - 1;
LABEL_8:
        v19 = *(v0 + 112);
        v20 = *(v0 + 96);
        *(v0 + 208) = 0;
        sub_1A937829C(&qword_1EB388788, &qword_1A95996E8);
        sub_1A957C818();
        (*v26)(v19, v20);
        result = swift_beginAccess();
        if (*(*(v4 + 40) + 16) >= v9)
        {
          v21 = *(v0 + 144);
          v22 = *(v0 + 88);
          v5 = v30 + 1;
          sub_1A9530850(v21, v22);
          sub_1A95319C4(v9, v9, v22);
          swift_endAccess();
          sub_1A9526A64();
          sub_1A95308B4(v21);
          if (v30 + 1 != v29)
          {
            goto LABEL_3;
          }

          goto LABEL_10;
        }

LABEL_18:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_10:
  if (*(v0 + 209))
  {
    v23 = *(v0 + 72);
    v33 = 3;
    (*(*v23 + 160))(&v33);
    v24 = swift_task_alloc();
    *(v0 + 200) = v24;
    *v24 = v0;
    v24[1] = sub_1A9529954;

    return sub_1A952D6FC();
  }

  else
  {
    swift_unknownObjectRelease();

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_1A9529954()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1A9529A74, v3, v2);
}

uint64_t sub_1A9529A74()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A9529B08()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A93836DC;

  return sub_1A9528474(v2, v3, v4, v5);
}

uint64_t sub_1A9529BD0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for TTSSpeechQueue(0);
  sub_1A9534BD8(&qword_1EB388758, &protocol conformance descriptor for TTSSpeechQueue);
  v5 = sub_1A957C5A8();

  return MEMORY[0x1EEE6DFA0](sub_1A9529C78, v5, v4);
}

uint64_t sub_1A9529C78()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = swift_allocObject();
  v0[5] = v4;
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;

  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1A94054A4;

  return sub_1A952C024(&unk_1A9599308, v4);
}

uint64_t sub_1A9529D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for TTSSpeechQueue(0);
  sub_1A9534BD8(&qword_1EB388758, &protocol conformance descriptor for TTSSpeechQueue);
  v5 = sub_1A957C5A8();

  return MEMORY[0x1EEE6DFA0](sub_1A9529E14, v5, v4);
}

uint64_t sub_1A9529E14()
{

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1A9529EB8;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_1A9533A9C(v4, v2, v3);
}

uint64_t sub_1A9529EB8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A9529FC8()
{
  v1[2] = v0;
  sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v1[3] = swift_task_alloc();
  type metadata accessor for TTSSpeechQueue(0);
  v1[4] = sub_1A9534BD8(&qword_1EB388758, &protocol conformance descriptor for TTSSpeechQueue);
  v3 = sub_1A957C5A8();

  return MEMORY[0x1EEE6DFA0](sub_1A952A0A8, v3, v2);
}

uint64_t sub_1A952A0A8()
{
  v15 = v0;
  v1 = v0[2];
  v2 = *(*v1 + 152);
  v3 = v2(&v14);
  if (v14 != 3)
  {
    (v2)((&v14 + 1), v3);
    if (BYTE1(v14) != 2)
    {
      v4 = v0[2];
      BYTE2(v14) = 3;
      (*(*v4 + 160))(&v14 + 2);
    }
  }

  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];
  v8 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_taskPriority;
  v9 = sub_1A957C688();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v5, v7 + v8, v9);
  (*(v10 + 56))(v5, 0, 1, v9);
  v11 = swift_allocObject();
  v11[2] = v1;
  v11[3] = v6;
  v11[4] = v7;
  swift_retain_n();
  sub_1A938A404(0, 0, v5, &unk_1A9599328, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1A952A28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for TTSSpeechQueue(0);
  sub_1A9534BD8(&qword_1EB388758, &protocol conformance descriptor for TTSSpeechQueue);
  v6 = sub_1A957C5A8();

  return MEMORY[0x1EEE6DFA0](sub_1A952A334, v6, v5);
}

uint64_t sub_1A952A334()
{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1A9535034;
  v2 = *(v0 + 16);

  return sub_1A952C024(&unk_1A95997B0, v2);
}

uint64_t sub_1A952A3E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A93836DC;

  return sub_1A952D6FC();
}

uint64_t sub_1A952A478()
{
  v1[2] = v0;
  type metadata accessor for TTSSpeechQueue(0);
  v1[3] = sub_1A9534BD8(&qword_1EB388758, &protocol conformance descriptor for TTSSpeechQueue);
  v3 = sub_1A957C5A8();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A952A520, v3, v2);
}

uint64_t sub_1A952A520()
{
  v12 = v0;
  v1 = v0[2];
  v2 = *(*v1 + 152);
  v3 = v2(&v11);
  if (v11 == 3 || ((v2)((&v11 + 1), v3), BYTE1(v11) == 2))
  {
    v4 = v0[2];
    v5 = v0[3];
    BYTE2(v11) = 1;
    (*(*v4 + 160))(&v11 + 2);

    v6 = swift_task_alloc();
    v0[6] = v6;
    v6[2] = v4;
    v6[3] = &unk_1A9599340;
    v6[4] = v4;
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_1A952A6FC;
    v8 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DDE0](v7, v1, v5, 0xD000000000000020, 0x80000001A95C5040, sub_1A952F6F4, v6, v8);
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1A952A6FC()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1A953505C, v3, v2);
}

uint64_t sub_1A952A840(uint64_t a1)
{
  v1[7] = a1;
  v2 = sub_1A937829C(&qword_1EB388790, &qword_1A9599730);
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  sub_1A937829C(&qword_1EB388760, &qword_1A9599360);
  v1[14] = swift_task_alloc();
  type metadata accessor for TTSSpeechQueue(0);
  sub_1A9534BD8(&qword_1EB388758, &protocol conformance descriptor for TTSSpeechQueue);
  v5 = sub_1A957C5A8();
  v1[15] = v5;
  v1[16] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A952A9E4, v5, v4);
}

uint64_t sub_1A952A9E4()
{
  v1 = v0[7];
  v2 = *(v1 + OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_runTask);
  v0[17] = v2;
  v3 = MEMORY[0x1E69E7CA8];
  if (v2)
  {
    swift_retain_n();
    sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
    sub_1A957C748();

    v1 = v0[7];
  }

  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_runningItem;
  swift_beginAccess();
  sub_1A9391BAC(v1 + v7, v4, &qword_1EB388760, &qword_1A9599360);
  v8 = (*(v6 + 48))(v4, 1, v5);
  v9 = v0[14];
  if (v8)
  {
    sub_1A937B960(v9, &qword_1EB388760, &qword_1A9599360);
    v10 = v0[17];
    if (v10)
    {

      v11 = swift_task_alloc();
      v0[19] = v11;
      v12 = sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
      *v11 = v0;
      v11[1] = sub_1A952B0AC;
      v13 = MEMORY[0x1E69E7288];

      return MEMORY[0x1EEE6DA20](v0 + 5, v10, v3 + 8, v12, v13);
    }

    else
    {

      v19 = v0[1];

      return v19();
    }
  }

  else
  {
    v14 = v0[13];
    v15 = v0[14];
    sub_1A9530850(v9, v14);
    sub_1A937B960(v15, &qword_1EB388760, &qword_1A9599360);
    v16 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    v21 = (*(v16 + 72) + **(v16 + 72));
    v18 = swift_task_alloc();
    v0[18] = v18;
    *v18 = v0;
    v18[1] = sub_1A952AD38;

    return v21(0, 0, ObjectType, v16);
  }
}

uint64_t sub_1A952AD38()
{

  if (v0)
  {

    v1 = sub_1A952B048;
  }

  else
  {
    v1 = sub_1A952AE50;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1A952AE50()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  *(v0 + 49) = 3;
  sub_1A937829C(&qword_1EB388788, &qword_1A95996E8);
  sub_1A957C818();
  (*(v4 + 8))(v2, v3);
  sub_1A95308B4(v1);
  v5 = *(v0 + 120);
  v6 = *(v0 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1A952AF20, v5, v6);
}

uint64_t sub_1A952AF20()
{
  v1 = v0[17];
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[19] = v2;
    v3 = sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
    *v2 = v0;
    v2[1] = sub_1A952B0AC;
    v4 = MEMORY[0x1E69E7288];
    v5 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA20](v0 + 5, v1, v5, v3, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1A952B048()
{
  sub_1A95308B4(v0[13]);
  v1 = v0[15];
  v2 = v0[16];

  return MEMORY[0x1EEE6DFA0](sub_1A953502C, v1, v2);
}

uint64_t sub_1A952B0AC()
{
  v1 = *v0;

  sub_1A93CF4C8(*(v1 + 40), *(v1 + 48));
  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1A952B208, v3, v2);
}

uint64_t sub_1A952B208()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A952B284()
{
  v1[2] = v0;
  type metadata accessor for TTSSpeechQueue(0);
  v1[3] = sub_1A9534BD8(&qword_1EB388758, &protocol conformance descriptor for TTSSpeechQueue);
  v3 = sub_1A957C5A8();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A952B32C, v3, v2);
}

uint64_t sub_1A952B32C()
{
  v8 = v0;
  v2 = v0[2];
  v1 = v0[3];
  v7 = 0;
  (*(*v2 + 160))(&v7);

  v3 = swift_task_alloc();
  v0[6] = v3;
  v3[2] = v2;
  v3[3] = &unk_1A9599358;
  v3[4] = v2;
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1A952B470;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v4, v2, v1, 0xD000000000000020, 0x80000001A95C5040, sub_1A9535054, v3, v5);
}

uint64_t sub_1A952B470()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1A952B5B4, v3, v2);
}

uint64_t sub_1A952B5B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A952B614(uint64_t a1)
{
  v1[6] = a1;
  v2 = sub_1A937829C(&qword_1EB388790, &qword_1A9599730);
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  type metadata accessor for TTSSpeechQueue(0);
  sub_1A9534BD8(&qword_1EB388758, &protocol conformance descriptor for TTSSpeechQueue);
  v5 = sub_1A957C5A8();
  v1[13] = v5;
  v1[14] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A952B780, v5, v4);
}

uint64_t sub_1A952B780()
{
  v1 = *(v0 + 48);
  if (*(v1 + OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_runTask))
  {

    sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
    sub_1A957C748();

    v1 = *(v0 + 48);
  }

  swift_beginAccess();
  v2 = *(v1 + 40);
  *(v0 + 120) = v2;
  v3 = *(v2 + 16);
  *(v0 + 128) = v3;
  v4 = *(v0 + 96);
  if (v3)
  {
    v5 = *(v0 + 88);
    v6 = *(v5 + 80);
    *(v0 + 160) = v6;
    v7 = (v6 + 32) & ~v6;
    *(v0 + 136) = *(v5 + 72);
    *(v0 + 144) = 0;

    sub_1A9530850(v8 + v7, v4);
    v9 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v14 = (*(v9 + 64) + **(v9 + 64));
    v11 = swift_task_alloc();
    *(v0 + 152) = v11;
    *v11 = v0;
    v11[1] = sub_1A952B9C0;

    return v14(0, 0, ObjectType, v9);
  }

  else
  {
    *(*(v0 + 48) + 40) = MEMORY[0x1E69E7CC0];

    sub_1A9526A64();

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1A952B9C0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1A9535040;
  }

  else
  {
    v5 = sub_1A952BAF0;
    v3 = 0;
    v4 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A952BAF0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  *(v0 + 164) = 4;
  sub_1A937829C(&qword_1EB388788, &qword_1A95996E8);
  sub_1A957C818();
  (*(v3 + 8))(v1, v2);
  *(v0 + 40) = 0;
  sub_1A957C828();
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1A952BBD8, v4, v5);
}

uint64_t sub_1A952BBD8()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 144) + 1;
  sub_1A95308B4(*(v0 + 96));
  if (v2 == v1)
  {

    *(*(v0 + 48) + 40) = MEMORY[0x1E69E7CC0];

    sub_1A9526A64();

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 136);
    v6 = *(v0 + 144) + 1;
    *(v0 + 144) = v6;
    v7 = *(v0 + 96);
    sub_1A9530850(*(v0 + 120) + ((*(v0 + 160) + 32) & ~*(v0 + 160)) + v5 * v6, v7);
    v8 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    v11 = (*(v8 + 64) + **(v8 + 64));
    v10 = swift_task_alloc();
    *(v0 + 152) = v10;
    *v10 = v0;
    v10[1] = sub_1A952B9C0;

    return v11(0, 0, ObjectType, v8);
  }
}

uint64_t TTSSpeechQueue.__allocating_init(priority:)(uint64_t a1)
{
  v2 = swift_allocObject();
  TTSSpeechQueue.init(priority:)(a1);
  return v2;
}

uint64_t TTSSpeechQueue.init(priority:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A937829C(&qword_1EB388748, &qword_1A95992C8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  type metadata accessor for TTSExecutor();
  *(v1 + 16) = TTSExecutor.__allocating_init()();
  v16 = 0;
  sub_1A937829C(&qword_1EB387128, &qword_1A958B510);
  swift_allocObject();
  *(v1 + 24) = sub_1A957BE78();
  *(v1 + 32) = 0;
  v8 = MEMORY[0x1E69E7CC0];
  *(v2 + 40) = MEMORY[0x1E69E7CC0];
  v9 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_runningItem;
  v10 = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  (*(*(v10 - 8) + 56))(v2 + v9, 1, 1, v10);
  *(v2 + OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_runTask) = 0;
  *(v2 + OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_schedulingTask) = 0;
  v11 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue__uiActions;
  v15 = v8;
  sub_1A937829C(&qword_1EB388740, &qword_1A9599278);
  sub_1A957BE88();
  (*(v5 + 32))(v2 + v11, v7, v4);
  v12 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_taskPriority;
  v13 = sub_1A957C688();
  (*(*(v13 - 8) + 32))(v2 + v12, a1, v13);
  return v2;
}

uint64_t sub_1A952C024(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v3[7] = swift_task_alloc();
  type metadata accessor for TTSSpeechQueue(0);
  sub_1A9534BD8(&qword_1EB388758, &protocol conformance descriptor for TTSSpeechQueue);
  v5 = sub_1A957C5A8();
  v3[8] = v5;
  v3[9] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A952C104, v5, v4);
}

uint64_t sub_1A952C104()
{
  v1 = v0[6];
  v2 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_schedulingTask;
  v0[10] = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_schedulingTask;
  v3 = *(v1 + v2);
  if (v3)
  {
    v0[11] = v3;

    v4 = swift_task_alloc();
    v0[12] = v4;
    v5 = sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
    *v4 = v0;
    v4[1] = sub_1A952C334;
    v6 = MEMORY[0x1E69E7288];
    v7 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA20](v0 + 2, v3, v7, v5, v6);
  }

  else
  {
    v8 = v0[7];
    v10 = v0[4];
    v9 = v0[5];
    v11 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_taskPriority;
    v12 = sub_1A957C688();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v8, v1 + v11, v12);
    (*(v13 + 56))(v8, 0, 1, v12);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v10;
    v14[5] = v9;

    *(v1 + v2) = sub_1A93C4B70(0, 0, v8, &unk_1A95997C8, v14);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1A952C334()
{
  v1 = *v0;

  sub_1A93CF4C8(*(v1 + 16), *(v1 + 24));
  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1A952C474, v3, v2);
}

uint64_t sub_1A952C474()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = *(v2 + v1);
  if (v0[11])
  {
    if (v3)
    {

      sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
      v4 = sub_1A957C728();

      if (v4)
      {
        goto LABEL_10;
      }

      v1 = v0[10];
      v2 = v0[6];
    }

    v3 = *(v2 + v1);
    if (v3)
    {
LABEL_6:
      v0[11] = v3;

      v5 = swift_task_alloc();
      v0[12] = v5;
      v6 = sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
      *v5 = v0;
      v5[1] = sub_1A952C334;
      v7 = MEMORY[0x1E69E7288];
      v8 = MEMORY[0x1E69E7CA8] + 8;

      return MEMORY[0x1EEE6DA20](v0 + 2, v3, v8, v6, v7);
    }
  }

  else if (v3)
  {
    goto LABEL_6;
  }

LABEL_10:
  v9 = v0[10];
  v11 = v0[6];
  v10 = v0[7];
  v13 = v0[4];
  v12 = v0[5];
  v14 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_taskPriority;
  v15 = sub_1A957C688();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v10, v11 + v14, v15);
  (*(v16 + 56))(v10, 0, 1, v15);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v13;
  v17[5] = v12;

  v18 = sub_1A93C4B70(0, 0, v10, &unk_1A95997C8, v17);

  *(v11 + v9) = v18;

  v19 = v0[1];

  return v19();
}

uint64_t sub_1A952C738()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A9529D68(v2, v3, v4);
}

uint64_t sub_1A952C7E0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1A938FA84;

  return v7();
}

uint64_t sub_1A952C8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A937829C(&qword_1EB386E38, &qword_1A9589CD8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  v12 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v20 - v13;
  v15 = sub_1A957C688();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, a1, v8);
  v16 = sub_1A9534BD8(&qword_1EB388758, &protocol conformance descriptor for TTSSpeechQueue);
  v17 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a2;
  *(v18 + 3) = v16;
  *(v18 + 4) = a2;
  *(v18 + 5) = a3;
  *(v18 + 6) = a4;
  (*(v9 + 32))(&v18[v17], v11, v8);
  swift_retain_n();

  sub_1A938A404(0, 0, v14, &unk_1A9599788, v18);
}

uint64_t sub_1A952CAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_1A937829C(&qword_1EB386E38, &qword_1A9589CD8);
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v7[8] = *(v9 + 64);
  v7[9] = swift_task_alloc();
  type metadata accessor for TTSSpeechQueue(0);
  sub_1A9534BD8(&qword_1EB388758, &protocol conformance descriptor for TTSSpeechQueue);
  v11 = sub_1A957C5A8();

  return MEMORY[0x1EEE6DFA0](sub_1A952CC14, v11, v10);
}

uint64_t sub_1A952CC14()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[3];
  (*(v3 + 16))(v1, v0[5], v2);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v0[10] = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  (*(v3 + 32))(v7 + v6, v1, v2);

  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_1A952CD54;

  return sub_1A952C024(&unk_1A9599798, v7);
}

uint64_t sub_1A952CD54()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A952CE80(int *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v6 = (a1 + *a1);
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1A952CF6C;

  return v6();
}

uint64_t sub_1A952CF6C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A952D068, 0, 0);
}

uint64_t sub_1A952D068()
{
  sub_1A937829C(&qword_1EB386E38, &qword_1A9589CD8);
  sub_1A957C5C8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A952D0E0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18[-v5];
  v7 = sub_1A937829C(&qword_1EB388790, &qword_1A9599730);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18[-v9];
  type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  v20[0] = 2;
  sub_1A937829C(&qword_1EB388788, &qword_1A95996E8);
  sub_1A957C818();
  (*(v8 + 8))(v10, v7);
  v19 = a1;
  swift_beginAccess();
  result = sub_1A9531C10(sub_1A9530E84, v18);
  v12 = *(v1[5] + 16);
  if (v12 < result)
  {
    __break(1u);
  }

  else
  {
    sub_1A95348A0(result, v12);
    swift_endAccess();
    sub_1A9526A64();
    if (*(v1[5] + 16))
    {
      v13 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_taskPriority;
      v14 = sub_1A957C688();
      v15 = *(v14 - 8);
      (*(v15 + 16))(v6, v2 + v13, v14);
      (*(v15 + 56))(v6, 0, 1, v14);
      v16 = sub_1A9534BD8(&qword_1EB388758, &protocol conformance descriptor for TTSSpeechQueue);
      v17 = swift_allocObject();
      v17[2] = v2;
      v17[3] = v16;
      v17[4] = v2;
      swift_retain_n();
      sub_1A938A404(0, 0, v6, &unk_1A9599740, v17);
    }

    else
    {
      v20[0] = 2;
      return (*(*v1 + 160))(v20);
    }
  }

  return result;
}

uint64_t sub_1A952D400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for TTSSpeechQueue(0);
  sub_1A9534BD8(&qword_1EB388758, &protocol conformance descriptor for TTSSpeechQueue);
  v6 = sub_1A957C5A8();

  return MEMORY[0x1EEE6DFA0](sub_1A952D4A8, v6, v5);
}

uint64_t sub_1A952D4A8()
{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1A952D55C;
  v2 = *(v0 + 16);

  return sub_1A952C024(&unk_1A9599750, v2);
}

uint64_t sub_1A952D55C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A952D66C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A9382328;

  return sub_1A952D6FC();
}

uint64_t sub_1A952D6FC()
{
  v1[8] = v0;
  v2 = sub_1A937829C(&qword_1EB388790, &qword_1A9599730);
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  sub_1A937829C(&qword_1EB388760, &qword_1A9599360);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v3 = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  type metadata accessor for TTSSpeechQueue(0);
  sub_1A9534BD8(&qword_1EB388758, &protocol conformance descriptor for TTSSpeechQueue);
  v5 = sub_1A957C5A8();
  v1[19] = v5;
  v1[20] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A952D8C0, v5, v4);
}

uint64_t sub_1A952D8C0()
{
  v40 = v0;
  v1 = *(**(v0 + 64) + 152);
  v2 = v1(&v39);
  if (v39 != 3)
  {
    (v1)((&v39 + 1), v2);
    if (BYTE1(v39) != 2)
    {
LABEL_24:

      v32 = *(v0 + 8);

      return v32();
    }
  }

  v3 = *(v0 + 64);
  swift_beginAccess();
  v4 = *(v3 + 40);
  if (!*(v4 + 16))
  {
    v13 = *(v0 + 64);
    BYTE2(v39) = 2;
    (*(*v13 + 160))(&v39 + 2);
    goto LABEL_24;
  }

  v5 = *(v0 + 112);
  v6 = *(v0 + 120);
  v7 = *(v0 + 104);
  v8 = *(v0 + 64);
  sub_1A9530850(v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), *(v0 + 144));
  v9 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_runningItem;
  swift_beginAccess();
  sub_1A9391BAC(v8 + v9, v7, &qword_1EB388760, &qword_1A9599360);
  v10 = *(v6 + 48);
  if (v10(v7, 1, v5))
  {
    sub_1A937B960(*(v0 + 104), &qword_1EB388760, &qword_1A9599360);
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v14 = *(v0 + 136);
    v15 = *(v0 + 104);
    sub_1A9530850(v15, v14);
    sub_1A937B960(v15, &qword_1EB388760, &qword_1A9599360);
    v16 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    v11 = (*(v16 + 32))(ObjectType, v16);
    v12 = v18;
    sub_1A95308B4(v14);
  }

  v19 = *(v0 + 144);
  v21 = *v19;
  v20 = v19[1];
  v22 = swift_getObjectType();
  v23 = (*(v20 + 32))(v22, v20);
  if (v12)
  {
    if (v11 == v23 && v12 == v24)
    {

LABEL_23:
      sub_1A95308B4(*(v0 + 144));
      goto LABEL_24;
    }

    v26 = sub_1A957D3E8();

    if (v26)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  if (*(*(v0 + 64) + OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_runTask))
  {

    sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
    sub_1A957C748();
  }

  v27 = *(v0 + 112);
  v28 = *(v0 + 96);
  sub_1A9391BAC(v8 + v9, v28, &qword_1EB388760, &qword_1A9599360);
  if (v10(v28, 1, v27))
  {
    sub_1A937B960(*(v0 + 96), &qword_1EB388760, &qword_1A9599360);
    v29 = swift_task_alloc();
    *(v0 + 176) = v29;
    *v29 = v0;
    v29[1] = sub_1A952E148;
    v30 = *(v0 + 144);

    return sub_1A952E314(v30);
  }

  else
  {
    v33 = *(v0 + 128);
    v34 = *(v0 + 96);
    sub_1A9530850(v34, v33);
    sub_1A937B960(v34, &qword_1EB388760, &qword_1A9599360);
    v35 = *(v33 + 8);
    v36 = swift_getObjectType();
    v38 = (*(v35 + 72) + **(v35 + 72));
    v37 = swift_task_alloc();
    *(v0 + 168) = v37;
    *v37 = v0;
    v37[1] = sub_1A952DE24;

    return v38(v21, v20, v36, v35);
  }
}

uint64_t sub_1A952DE24()
{

  if (v0)
  {

    v1 = sub_1A952E04C;
  }

  else
  {
    v1 = sub_1A952DF3C;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1A952DF3C()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  *(v0 + 184) = 3;
  sub_1A937829C(&qword_1EB388788, &qword_1A95996E8);
  sub_1A957C818();
  (*(v3 + 8))(v2, v4);
  sub_1A95308B4(v1);
  v5 = swift_task_alloc();
  *(v0 + 176) = v5;
  *v5 = v0;
  v5[1] = sub_1A952E148;
  v6 = *(v0 + 144);

  return sub_1A952E314(v6);
}

uint64_t sub_1A952E04C()
{
  sub_1A95308B4(v0[16]);
  v1 = v0[19];
  v2 = v0[20];

  return MEMORY[0x1EEE6DFA0](sub_1A952E0B0, v1, v2);
}

uint64_t sub_1A952E0B0()
{
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_1A952E148;
  v2 = *(v0 + 144);

  return sub_1A952E314(v2);
}

uint64_t sub_1A952E148()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1A952E268, v3, v2);
}

uint64_t sub_1A952E268()
{
  sub_1A95308B4(*(v0 + 144));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A952E314(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v2[8] = swift_task_alloc();
  v3 = *(type metadata accessor for TTSSpeechQueue.QueueableWrapper(0) - 8);
  v2[9] = v3;
  v2[10] = *(v3 + 64);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v4 = sub_1A957BC88();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  type metadata accessor for TTSSpeechQueue(0);
  v2[16] = sub_1A9534BD8(&qword_1EB388758, &protocol conformance descriptor for TTSSpeechQueue);
  v6 = sub_1A957C5A8();
  v2[17] = v6;
  v2[18] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A952E4BC, v6, v5);
}

uint64_t sub_1A952E4BC()
{
  v43 = v0;
  v1 = *(v0 + 56);
  v2 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_runTask;
  *(v0 + 152) = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_runTask;
  v3 = *(v1 + v2);
  *(v0 + 160) = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    *(v0 + 168) = v4;
    v5 = sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
    *v4 = v0;
    v4[1] = sub_1A952E8D0;
    v6 = MEMORY[0x1E69E7288];
    v7 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA20](v0 + 32, v3, v7, v5, v6);
  }

  else
  {
    v9 = *(v0 + 112);
    v8 = *(v0 + 120);
    v11 = *(v0 + 96);
    v10 = *(v0 + 104);
    v12 = *(v0 + 48);
    v13 = sub_1A9391C54();
    (*(v9 + 16))(v8, v13, v10);
    sub_1A9530850(v12, v11);
    v14 = sub_1A957BC68();
    v15 = sub_1A957CA68();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 112);
    v18 = *(v0 + 120);
    v20 = *(v0 + 96);
    v19 = *(v0 + 104);
    if (v16)
    {
      v41 = *(v0 + 120);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v42 = v22;
      *v21 = 136315138;
      *(v0 + 16) = *v20;
      swift_unknownObjectRetain();
      sub_1A937829C(&qword_1EB3871E0, &unk_1A9599720);
      v23 = sub_1A957C198();
      v25 = v24;
      sub_1A95308B4(v20);
      v26 = sub_1A937A5C0(v23, v25, &v42);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_1A9324000, v14, v15, "Run Item => %s", v21, 0xCu);
      sub_1A9378138(v22);
      MEMORY[0x1AC587CD0](v22, -1, -1);
      MEMORY[0x1AC587CD0](v21, -1, -1);

      (*(v17 + 8))(v41, v19);
    }

    else
    {

      sub_1A95308B4(v20);
      (*(v17 + 8))(v18, v19);
    }

    v27 = *(v0 + 152);
    v40 = *(v0 + 128);
    v28 = *(v0 + 88);
    v29 = *(v0 + 72);
    v31 = *(v0 + 56);
    v30 = *(v0 + 64);
    v32 = *(v0 + 48);
    v33 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_taskPriority;
    v34 = sub_1A957C688();
    v35 = *(v34 - 8);
    (*(v35 + 16))(v30, v31 + v33, v34);
    (*(v35 + 56))(v30, 0, 1, v34);
    sub_1A9530850(v32, v28);
    v36 = (*(v29 + 80) + 40) & ~*(v29 + 80);
    v37 = swift_allocObject();
    v37[2] = v31;
    v37[3] = v40;
    v37[4] = v31;
    sub_1A9530910(v28, v37 + v36);
    swift_retain_n();
    *(v31 + v27) = sub_1A93C4B70(0, 0, v30, &unk_1A9599718, v37);

    v38 = *(v0 + 8);

    return v38();
  }
}

uint64_t sub_1A952E8D0()
{
  v1 = *v0;

  sub_1A93CF4C8(*(v1 + 32), *(v1 + 40));
  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1A952EA2C, v3, v2);
}

uint64_t sub_1A952EA2C()
{
  v38 = v0;
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 48);
  v6 = sub_1A9391C54();
  (*(v2 + 16))(v1, v6, v3);
  sub_1A9530850(v5, v4);
  v7 = sub_1A957BC68();
  v8 = sub_1A957CA68();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 112);
    v36 = *(v0 + 120);
    v11 = *(v0 + 96);
    v10 = *(v0 + 104);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v37 = v13;
    *v12 = 136315138;
    *(v0 + 16) = *v11;
    swift_unknownObjectRetain();
    sub_1A937829C(&qword_1EB3871E0, &unk_1A9599720);
    v14 = sub_1A957C198();
    v16 = v15;
    sub_1A95308B4(v11);
    v17 = sub_1A937A5C0(v14, v16, &v37);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1A9324000, v7, v8, "Run Item => %s", v12, 0xCu);
    sub_1A9378138(v13);
    MEMORY[0x1AC587CD0](v13, -1, -1);
    MEMORY[0x1AC587CD0](v12, -1, -1);

    (*(v9 + 8))(v36, v10);
  }

  else
  {
    v19 = *(v0 + 112);
    v18 = *(v0 + 120);
    v21 = *(v0 + 96);
    v20 = *(v0 + 104);

    sub_1A95308B4(v21);
    (*(v19 + 8))(v18, v20);
  }

  v22 = *(v0 + 152);
  v35 = *(v0 + 128);
  v23 = *(v0 + 88);
  v24 = *(v0 + 72);
  v26 = *(v0 + 56);
  v25 = *(v0 + 64);
  v27 = *(v0 + 48);
  v28 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_taskPriority;
  v29 = sub_1A957C688();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v25, v26 + v28, v29);
  (*(v30 + 56))(v25, 0, 1, v29);
  sub_1A9530850(v27, v23);
  v31 = (*(v24 + 80) + 40) & ~*(v24 + 80);
  v32 = swift_allocObject();
  v32[2] = v26;
  v32[3] = v35;
  v32[4] = v26;
  sub_1A9530910(v23, v32 + v31);
  swift_retain_n();
  *(v26 + v22) = sub_1A93C4B70(0, 0, v25, &unk_1A9599718, v32);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1A952ED84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_1A937829C(&qword_1EB388790, &qword_1A9599730);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  sub_1A937829C(&qword_1EB388760, &qword_1A9599360);
  v5[13] = swift_task_alloc();
  type metadata accessor for TTSSpeechQueue(0);
  sub_1A9534BD8(&qword_1EB388758, &protocol conformance descriptor for TTSSpeechQueue);
  v8 = sub_1A957C5A8();
  v5[14] = v8;
  v5[15] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A952EECC, v8, v7);
}

uint64_t sub_1A952EECC()
{
  v9 = v0;
  v1 = v0[13];
  v2 = v0[8];
  sub_1A9530850(v0[9], v1);
  v3 = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  v0[16] = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  v0[17] = v5;
  v0[18] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 0, 1, v3);
  v6 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_runningItem;
  v0[19] = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_runningItem;
  swift_beginAccess();
  sub_1A9530E14(v1, v2 + v6);
  swift_endAccess();
  v8 = 3;
  (*(*v2 + 160))(&v8);

  return MEMORY[0x1EEE6DFA0](sub_1A952EFF8, 0, 0);
}

uint64_t sub_1A952EFF8()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  *(v0 + 176) = 1;
  sub_1A937829C(&qword_1EB388788, &qword_1A95996E8);
  sub_1A957C818();
  (*(v2 + 8))(v1, v3);
  v5 = *(v4 + 8);
  ObjectType = swift_getObjectType();
  v9 = (*(v5 + 56) + **(v5 + 56));
  v7 = swift_task_alloc();
  *(v0 + 160) = v7;
  *v7 = v0;
  v7[1] = sub_1A952F184;

  return v9(ObjectType, v5);
}

uint64_t sub_1A952F184()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 112);
    v7 = *(v2 + 120);

    return MEMORY[0x1EEE6DFA0](sub_1A952F2D8, v6, v7);
  }
}

uint64_t sub_1A952F2D8()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = *(v0 + 104);
  v4 = *(v0 + 64);
  (*(v0 + 136))(v3, 1, 1, *(v0 + 128));
  swift_beginAccess();
  sub_1A9530E14(v3, v4 + v2);
  swift_endAccess();
  sub_1A957C788();
  if (!v1)
  {
    sub_1A952D0E0(*(v0 + 72));
  }

  v5 = *(v0 + 8);

  return v5();
}

char *TTSSpeechQueue.deinit()
{

  sub_1A937B960(v0 + OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_runningItem, &qword_1EB388760, &qword_1A9599360);

  v1 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_taskPriority;
  v2 = sub_1A957C688();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue__uiActions;
  v4 = sub_1A937829C(&qword_1EB388748, &qword_1A95992C8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t TTSSpeechQueue.__deallocating_deinit()
{
  TTSSpeechQueue.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A952F530()
{
  v0 = type metadata accessor for TTSSpeechQueue(0);
  v1 = sub_1A9534BD8(&qword_1EB3887A0, &protocol conformance descriptor for TTSSpeechQueue);

  return TTSActor.unownedExecutor.getter(v0, v1);
}

uint64_t sub_1A952F590@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TTSSpeechQueue(0);
  result = sub_1A957BE48();
  *a2 = result;
  return result;
}

uint64_t sub_1A952F5D0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A952A28C(v3, v4, v5, v2);
}

uint64_t sub_1A952F664()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A93836DC;

  return sub_1A952A840(v0);
}

uint64_t sub_1A952F700()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A93836DC;

  return sub_1A952B614(v0);
}

unint64_t sub_1A952F7C4()
{
  result = qword_1EB388768;
  if (!qword_1EB388768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388768);
  }

  return result;
}

uint64_t sub_1A952F824(uint64_t a1)
{
  result = sub_1A9534BD8(&qword_1EB388758, &protocol conformance descriptor for TTSSpeechQueue);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A952F86C()
{
  result = qword_1EB388770;
  if (!qword_1EB388770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388770);
  }

  return result;
}

unint64_t sub_1A952F8C4()
{
  result = qword_1EB388778;
  if (!qword_1EB388778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388778);
  }

  return result;
}

unint64_t sub_1A952F91C()
{
  result = qword_1EB388780;
  if (!qword_1EB388780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388780);
  }

  return result;
}

void sub_1A952F978(uint64_t a1)
{
  sub_1A95301F8(319);
  if (v1 <= 0x3F)
  {
    sub_1A957C688();
    if (v2 <= 0x3F)
    {
      sub_1A9530250(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of TTSSpeechQueue.enqueue(work:run:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 328) + **(*v2 + 328));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A93916A8;

  return v8(a1, a2);
}

uint64_t dispatch thunk of TTSSpeechQueue.cancel(withId:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 336) + **(*v2 + 336));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A93836DC;

  return v8(a1, a2);
}

uint64_t dispatch thunk of TTSSpeechQueue.run()()
{
  v4 = (*(*v0 + 344) + **(*v0 + 344));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A93836DC;

  return v4();
}

uint64_t dispatch thunk of TTSSpeechQueue.pause()()
{
  v4 = (*(*v0 + 352) + **(*v0 + 352));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A93836DC;

  return v4();
}

uint64_t dispatch thunk of TTSSpeechQueue.stop()()
{
  v4 = (*(*v0 + 360) + **(*v0 + 360));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A93836DC;

  return v4();
}

void sub_1A95301F8(uint64_t a1)
{
  if (!qword_1EB386320)
  {
    type metadata accessor for TTSSpeechQueue.QueueableWrapper(255);
    v1 = sub_1A957CC58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB386320);
    }
  }
}

void sub_1A9530250(uint64_t a1)
{
  if (!qword_1EB386298)
  {
    sub_1A93A7B68(&qword_1EB388740, &qword_1A9599278);
    v1 = sub_1A957BEE8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB386298);
    }
  }
}

uint64_t dispatch thunk of TTSQueueable.run()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 56) + **(a2 + 56));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A9382328;

  return v7(a1, a2);
}

uint64_t dispatch thunk of TTSQueueable.stop(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 64) + **(a4 + 64));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A93836DC;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of TTSQueueable.suspend(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 72) + **(a4 + 72));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A93836DC;

  return v11(a1, a2, a3, a4);
}

void sub_1A95306F8(uint64_t a1)
{
  sub_1A953077C();
  if (v1 <= 0x3F)
  {
    sub_1A95307DC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1A953077C()
{
  result = qword_1EB386218;
  if (!qword_1EB386218)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB386218);
  }

  return result;
}

void sub_1A95307DC(uint64_t a1)
{
  if (!qword_1EB386270)
  {
    sub_1A93A7B68(&qword_1EB387EC0, &qword_1A95892D0);
    v1 = sub_1A957C838();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB386270);
    }
  }
}

uint64_t sub_1A9530850(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A95308B4(uint64_t a1)
{
  v2 = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A9530910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A9530974()
{
  v2 = *(type metadata accessor for TTSSpeechQueue.QueueableWrapper(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A952ED84(v5, v6, v7, v4, v0 + v3);
}

void *sub_1A9530A4C(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A937829C(&qword_1EB388798, &unk_1A9599770);
  v10 = *(type metadata accessor for TTSSpeechQueue.QueueableWrapper(0) - 8);
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
  v15 = *(type metadata accessor for TTSSpeechQueue.QueueableWrapper(0) - 8);
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

void *sub_1A9530C24(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A937829C(&qword_1EB3887C8, &qword_1A9599808);
  v10 = *(sub_1A937829C(&qword_1EB387158, &unk_1A958B6D0) - 8);
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
  v15 = *(sub_1A937829C(&qword_1EB387158, &unk_1A958B6D0) - 8);
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

uint64_t sub_1A9530E14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB388760, &qword_1A9599360);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A9530E84(void *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 32))(ObjectType, v3);
  v7 = v6;
  v8 = *(v2 + 8);
  v9 = swift_getObjectType();
  if (v5 == (*(v8 + 32))(v9, v8) && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1A957D3E8();
  }

  return v12 & 1;
}

void *sub_1A9530F54(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A9530F94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A9530F74(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A953116C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A9530F94(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A937829C(&qword_1EB388798, &unk_1A9599770);
  v10 = *(type metadata accessor for TTSSpeechQueue.QueueableWrapper(0) - 8);
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
  v15 = *(type metadata accessor for TTSSpeechQueue.QueueableWrapper(0) - 8);
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

char *sub_1A953116C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB3887B8, &qword_1A95997F0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1A9531270(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1A957D4E8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
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
    sub_1A9531574(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1A9531350(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A937829C(&qword_1EB3887B0, &qword_1A95997E8);
  result = sub_1A957CEA8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
      result = sub_1A957D4E8();
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1A9531574(uint64_t result, unint64_t a2, char a3)
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
    sub_1A9531350(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1A9531694();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1A95317D4(v5 + 1);
  }

  v8 = *v3;
  result = sub_1A957D4E8();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
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
  *(*(v11 + 48) + 8 * a2) = v4;
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
  result = sub_1A957D428();
  __break(1u);
  return result;
}

void *sub_1A9531694()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB3887B0, &qword_1A95997E8);
  v2 = *v0;
  v3 = sub_1A957CE98();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

uint64_t sub_1A95317D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A937829C(&qword_1EB3887B0, &qword_1A95997E8);
  result = sub_1A957CEA8();
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
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_1A957D4E8();
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

        goto LABEL_26;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

unint64_t sub_1A95319C4(unint64_t result, int64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_1A9530A4C(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_1A9531A98(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_1A9531A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1A937B960(a4, &qword_1EB3887A8, &qword_1A95997D0);
  }

  if (v17 < 1)
  {
    return sub_1A937B960(a4, &qword_1EB3887A8, &qword_1A95997D0);
  }

  result = sub_1A9530850(a4, v15);
  if (v12 >= v17)
  {
    return sub_1A937B960(a4, &qword_1EB3887A8, &qword_1A95997D0);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1A9531C10(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v33 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - v14;
  v16 = *v2;
  result = sub_1A9531EE0(a1, a2, *v2);
  if (!v3)
  {
    v43 = 0;
    if (v18)
    {
      return *(v16 + 16);
    }

    v39 = v15;
    v40 = a1;
    v35 = v13;
    v36 = v10;
    v34 = v2;
    v42 = result;
    v19 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = (v16 + 16);
      v20 = *(v16 + 16);
      if (v19 == v20)
      {
        return v42;
      }

      v37 = v7;
      v38 = a2;
      while (v19 < v20)
      {
        v22 = v16;
        v41 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v23 = v16 + v41;
        v24 = *(v7 + 72);
        v25 = v24 * v19;
        v26 = v39;
        sub_1A9530850(v23 + v24 * v19, v39);
        v27 = v43;
        v28 = v40(v26);
        result = sub_1A95308B4(v26);
        v43 = v27;
        if (v27)
        {
          return result;
        }

        if (v28)
        {
          v7 = v37;
          v16 = v22;
        }

        else
        {
          v29 = v42;
          if (v19 == v42)
          {
            v7 = v37;
            v16 = v22;
          }

          else
          {
            if ((v42 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v30 = *v21;
            if (v42 >= *v21)
            {
              goto LABEL_27;
            }

            v31 = v24 * v42;
            result = sub_1A9530850(v23 + v24 * v42, v35);
            if (v19 >= v30)
            {
              goto LABEL_28;
            }

            sub_1A9530850(v23 + v25, v36);
            v16 = v22;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_1A9531FCC(v22);
            }

            v32 = v16 + v41;
            result = sub_1A9534B74(v36, v16 + v41 + v31);
            if (v19 >= *(v16 + 16))
            {
              goto LABEL_29;
            }

            result = sub_1A9534B74(v35, v32 + v25);
            *v34 = v16;
            v7 = v37;
            v29 = v42;
          }

          v42 = v29 + 1;
        }

        ++v19;
        v21 = (v16 + 16);
        v20 = *(v16 + 16);
        if (v19 == v20)
        {
          return v42;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A9531EE0(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for TTSSpeechQueue.QueueableWrapper(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_1A9531FE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1AC585770](v2, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1A9531270(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1A9532054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = sub_1A937829C(&qword_1EB388790, &qword_1A9599730);
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  type metadata accessor for TTSSpeechQueue(0);
  sub_1A9534BD8(&qword_1EB388758, &protocol conformance descriptor for TTSSpeechQueue);
  v7 = sub_1A957C5A8();
  v3[19] = v7;
  v3[20] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A95321F4, v7, v6);
}

void sub_1A95321F4()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  v2 = *(v1 + 40);
  v3 = *(v2 + 16);

  if (v3)
  {
    v4 = 0;
    v47 = *(v0 + 104);
    v49 = *(v0 + 144);
    v45 = (*(v0 + 64) + 24);
    v5 = MEMORY[0x1E69E7CC0];
    while (v4 < *(v2 + 16))
    {
      v6 = *(v0 + 64);
      v7 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v8 = *(v47 + 72);
      v9 = v2;
      sub_1A9530850(v2 + v7 + v8 * v4, *(v0 + 144));
      v10 = *(v49 + 8);
      ObjectType = swift_getObjectType();
      v12 = (*(v10 + 24))(ObjectType, v10);
      v13 = swift_getObjectType();
      v14 = (*v45)(v13, v6);
      v15 = *(v0 + 144);
      if (v12 >= v14)
      {
        sub_1A95308B4(v15);
        v2 = v9;
      }

      else
      {
        sub_1A9530910(v15, *(v0 + 112));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1A9530F54(0, *(v5 + 16) + 1, 1);
        }

        v2 = v9;
        v17 = *(v5 + 16);
        v16 = *(v5 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_1A9530F54((v16 > 1), v17 + 1, 1);
        }

        v18 = *(v0 + 112);
        *(v5 + 16) = v17 + 1;
        sub_1A9530910(v18, v5 + v7 + v17 * v8);
      }

      if (v3 == ++v4)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_13:
  *(v0 + 168) = v5;

  v19 = *(v5 + 16);
  *(v0 + 176) = v19;
  if (v19)
  {
    v20 = *(v0 + 120);
    v21 = *(v0 + 104);
    v22 = *(v21 + 80);
    *(v0 + 208) = v22;
    *(v0 + 184) = *(v21 + 72);
    *(v0 + 192) = 0;
    sub_1A9530850(*(v0 + 168) + ((v22 + 32) & ~v22), v20);
    v23 = *(v20 + 8);
    v24 = swift_getObjectType();
    v51 = (*(v23 + 64) + **(v23 + 64));
    v25 = swift_task_alloc();
    *(v0 + 200) = v25;
    *v25 = v0;
    v25[1] = sub_1A9532754;

    v51(0, 0, v24, v23);
  }

  else
  {

    v26 = *(v0 + 48);
    v27 = *(v26 + 40);
    v28 = *(v27 + 16);

    v52 = v28;
    if (v28)
    {
      v29 = 0;
      v48 = *(v0 + 104);
      v50 = *(v0 + 136);
      v46 = (*(v0 + 64) + 24);
      v30 = MEMORY[0x1E69E7CC0];
      while (v29 < *(v27 + 16))
      {
        v31 = *(v0 + 64);
        v32 = (*(v48 + 80) + 32) & ~*(v48 + 80);
        v33 = *(v48 + 72);
        v34 = v27;
        sub_1A9530850(v27 + v32 + v33 * v29, *(v0 + 136));
        v35 = *(v50 + 8);
        v36 = swift_getObjectType();
        v37 = (*(v35 + 24))(v36, v35);
        v38 = swift_getObjectType();
        v39 = (*v46)(v38, v31);
        v40 = *(v0 + 136);
        if (v37 < v39)
        {
          sub_1A95308B4(v40);
          v27 = v34;
        }

        else
        {
          sub_1A9530910(v40, *(v0 + 128));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1A9530F54(0, *(v30 + 16) + 1, 1);
          }

          v27 = v34;
          v42 = *(v30 + 16);
          v41 = *(v30 + 24);
          if (v42 >= v41 >> 1)
          {
            sub_1A9530F54((v41 > 1), v42 + 1, 1);
          }

          v43 = *(v0 + 128);
          *(v30 + 16) = v42 + 1;
          sub_1A9530910(v43, v30 + v32 + v42 * v33);
        }

        if (v52 == ++v29)
        {
          v26 = *(v0 + 48);
          goto LABEL_30;
        }
      }

LABEL_34:
      __break(1u);
      return;
    }

    v30 = MEMORY[0x1E69E7CC0];
LABEL_30:

    *(v26 + 40) = v30;

    sub_1A9526A64();

    v44 = *(v0 + 8);

    v44();
  }
}

uint64_t sub_1A9532754()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_1A9535044;
  }

  else
  {
    v5 = sub_1A9532884;
    v3 = 0;
    v4 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A9532884()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  *(v0 + 212) = 4;
  sub_1A937829C(&qword_1EB388788, &qword_1A95996E8);
  sub_1A957C818();
  (*(v3 + 8))(v1, v2);
  *(v0 + 40) = 0;
  sub_1A957C828();
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1A953296C, v4, v5);
}

void sub_1A953296C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 192) + 1;
  sub_1A95308B4(*(v0 + 120));
  if (v2 == v1)
  {

    v3 = *(v0 + 48);
    v4 = *(v3 + 40);
    v5 = *(v4 + 16);

    v31 = v5;
    if (v5)
    {
      v6 = 0;
      v29 = *(v0 + 104);
      v30 = *(v0 + 136);
      v28 = (*(v0 + 64) + 24);
      v7 = MEMORY[0x1E69E7CC0];
      while (v6 < *(v4 + 16))
      {
        v8 = *(v0 + 64);
        v9 = (*(v29 + 80) + 32) & ~*(v29 + 80);
        v10 = *(v29 + 72);
        v11 = v4;
        sub_1A9530850(v4 + v9 + v10 * v6, *(v0 + 136));
        v12 = *(v30 + 8);
        ObjectType = swift_getObjectType();
        v14 = (*(v12 + 24))(ObjectType, v12);
        v15 = swift_getObjectType();
        v16 = (*v28)(v15, v8);
        v17 = *(v0 + 136);
        if (v14 < v16)
        {
          sub_1A95308B4(v17);
          v4 = v11;
        }

        else
        {
          sub_1A9530910(v17, *(v0 + 128));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1A9530F54(0, *(v7 + 16) + 1, 1);
          }

          v4 = v11;
          v19 = *(v7 + 16);
          v18 = *(v7 + 24);
          if (v19 >= v18 >> 1)
          {
            sub_1A9530F54((v18 > 1), v19 + 1, 1);
          }

          v20 = *(v0 + 128);
          *(v7 + 16) = v19 + 1;
          sub_1A9530910(v20, v7 + v9 + v19 * v10);
        }

        if (v31 == ++v6)
        {
          v3 = *(v0 + 48);
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
LABEL_18:

      *(v3 + 40) = v7;

      sub_1A9526A64();

      v27 = *(v0 + 8);

      v27();
    }
  }

  else
  {
    v21 = *(v0 + 184);
    v22 = *(v0 + 192) + 1;
    *(v0 + 192) = v22;
    v23 = *(v0 + 120);
    sub_1A9530850(*(v0 + 168) + ((*(v0 + 208) + 32) & ~*(v0 + 208)) + v21 * v22, v23);
    v24 = *(v23 + 8);
    v25 = swift_getObjectType();
    v32 = (*(v24 + 64) + **(v24 + 64));
    v26 = swift_task_alloc();
    *(v0 + 200) = v26;
    *v26 = v0;
    v26[1] = sub_1A9532754;

    v32(0, 0, v25, v24);
  }
}

uint64_t sub_1A9532D30(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_1A937829C(&qword_1EB388790, &qword_1A9599730);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  type metadata accessor for TTSSpeechQueue(0);
  sub_1A9534BD8(&qword_1EB388758, &protocol conformance descriptor for TTSSpeechQueue);
  v6 = sub_1A957C5A8();
  v2[18] = v6;
  v2[19] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A9532ECC, v6, v5);
}

void sub_1A9532ECC()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  v2 = *(v1 + 40);
  v3 = *(v2 + 16);

  v56 = v3;
  if (v3)
  {
    v4 = 0;
    v54 = *(v0 + 136);
    v5 = *(v0 + 96);
    v6 = *(v0 + 56);
    v7 = v6 + 56;
    v52 = MEMORY[0x1E69E7CC0];
    while (v4 < *(v2 + 16))
    {
      v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v9 = *(v5 + 72);
      sub_1A9530850(v2 + v8 + v9 * v4, *(v0 + 136));
      v10 = *(v54 + 8);
      ObjectType = swift_getObjectType();
      v12 = (*(v10 + 24))(ObjectType, v10);
      if (*(v6 + 16) && (v13 = v12, v14 = sub_1A957D4E8(), v15 = -1 << *(v6 + 32), v16 = v14 & ~v15, ((*(v7 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0))
      {
        v17 = ~v15;
        while (*(*(v6 + 48) + 8 * v16) != v13)
        {
          v16 = (v16 + 1) & v17;
          if (((*(v7 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        sub_1A9530910(*(v0 + 136), *(v0 + 104));
        v18 = v52;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1A9530F54(0, *(v52 + 16) + 1, 1);
          v18 = v52;
        }

        v20 = *(v18 + 16);
        v19 = *(v18 + 24);
        v21 = v20 + 1;
        if (v20 >= v19 >> 1)
        {
          sub_1A9530F54((v19 > 1), v20 + 1, 1);
          v21 = v20 + 1;
          v18 = v52;
        }

        v22 = *(v0 + 104);
        *(v18 + 16) = v21;
        v52 = v18;
        sub_1A9530910(v22, v18 + v8 + v20 * v9);
      }

      else
      {
LABEL_3:
        sub_1A95308B4(*(v0 + 136));
      }

      if (++v4 == v56)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

  v52 = MEMORY[0x1E69E7CC0];
LABEL_18:
  *(v0 + 160) = v52;

  v23 = *(v52 + 16);
  *(v0 + 168) = v23;
  if (v23)
  {
    v24 = *(v0 + 112);
    v25 = *(v0 + 96);
    v26 = *(v25 + 80);
    *(v0 + 200) = v26;
    *(v0 + 176) = *(v25 + 72);
    *(v0 + 184) = 0;
    sub_1A9530850(*(v0 + 160) + ((v26 + 32) & ~v26), v24);
    v27 = *(v24 + 8);
    v28 = swift_getObjectType();
    v57 = (*(v27 + 64) + **(v27 + 64));
    v29 = swift_task_alloc();
    *(v0 + 192) = v29;
    *v29 = v0;
    v29[1] = sub_1A9533498;

    v57(0, 0, v28, v27);
  }

  else
  {

    v30 = *(v0 + 48);
    v31 = *(v30 + 40);
    v32 = *(v31 + 16);

    v51 = v31;
    v58 = v32;
    if (v32)
    {
      v33 = 0;
      v53 = *(v0 + 96);
      v55 = *(v0 + 128);
      v34 = *(v0 + 56);
      v35 = v34 + 56;
      v36 = MEMORY[0x1E69E7CC0];
      while (v33 < *(v31 + 16))
      {
        v37 = (*(v53 + 80) + 32) & ~*(v53 + 80);
        v38 = *(v53 + 72);
        sub_1A9530850(v31 + v37 + v38 * v33, *(v0 + 128));
        v39 = *(v55 + 8);
        v40 = swift_getObjectType();
        v41 = (*(v39 + 24))(v40, v39);
        if (*(v34 + 16) && (v42 = v41, v43 = sub_1A957D4E8(), v44 = -1 << *(v34 + 32), v45 = v43 & ~v44, ((*(v35 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) != 0))
        {
          v46 = ~v44;
          while (*(*(v34 + 48) + 8 * v45) != v42)
          {
            v45 = (v45 + 1) & v46;
            if (((*(v35 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
            {
              goto LABEL_32;
            }
          }

          sub_1A95308B4(*(v0 + 128));
        }

        else
        {
LABEL_32:
          sub_1A9530910(*(v0 + 128), *(v0 + 120));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1A9530F54(0, *(v36 + 16) + 1, 1);
          }

          v48 = *(v36 + 16);
          v47 = *(v36 + 24);
          if (v48 >= v47 >> 1)
          {
            sub_1A9530F54((v47 > 1), v48 + 1, 1);
          }

          v49 = *(v0 + 120);
          *(v36 + 16) = v48 + 1;
          sub_1A9530910(v49, v36 + v37 + v48 * v38);
          v31 = v51;
        }

        if (++v33 == v58)
        {
          v30 = *(v0 + 48);
          goto LABEL_39;
        }
      }

LABEL_43:
      __break(1u);
      return;
    }

    v36 = MEMORY[0x1E69E7CC0];
LABEL_39:

    *(v30 + 40) = v36;

    sub_1A9526A64();

    v50 = *(v0 + 8);

    v50();
  }
}

uint64_t sub_1A9533498()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_1A9535030;
  }

  else
  {
    v5 = sub_1A95335C8;
    v3 = 0;
    v4 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A95335C8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  *(v0 + 204) = 4;
  sub_1A937829C(&qword_1EB388788, &qword_1A95996E8);
  sub_1A957C818();
  (*(v3 + 8))(v1, v2);
  *(v0 + 40) = 0;
  sub_1A957C828();
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1A95336B0, v4, v5);
}

void sub_1A95336B0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 184) + 1;
  sub_1A95308B4(*(v0 + 112));
  if (v2 == v1)
  {

    v3 = *(v0 + 48);
    v4 = *(v3 + 40);
    v5 = *(v4 + 16);

    v30 = v4;
    v33 = v5;
    if (v5)
    {
      v6 = 0;
      v31 = *(v0 + 96);
      v32 = *(v0 + 128);
      v7 = *(v0 + 56);
      v8 = v7 + 56;
      v9 = MEMORY[0x1E69E7CC0];
      while (v6 < *(v4 + 16))
      {
        v10 = (*(v31 + 80) + 32) & ~*(v31 + 80);
        v11 = *(v31 + 72);
        sub_1A9530850(v4 + v10 + v11 * v6, *(v0 + 128));
        v12 = *(v32 + 8);
        ObjectType = swift_getObjectType();
        v14 = (*(v12 + 24))(ObjectType, v12);
        if (*(v7 + 16) && (v15 = v14, v16 = sub_1A957D4E8(), v17 = -1 << *(v7 + 32), v18 = v16 & ~v17, ((*(v8 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0))
        {
          v19 = ~v17;
          while (*(*(v7 + 48) + 8 * v18) != v15)
          {
            v18 = (v18 + 1) & v19;
            if (((*(v8 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
            {
              goto LABEL_12;
            }
          }

          sub_1A95308B4(*(v0 + 128));
        }

        else
        {
LABEL_12:
          sub_1A9530910(*(v0 + 128), *(v0 + 120));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1A9530F54(0, *(v9 + 16) + 1, 1);
          }

          v21 = *(v9 + 16);
          v20 = *(v9 + 24);
          if (v21 >= v20 >> 1)
          {
            sub_1A9530F54((v20 > 1), v21 + 1, 1);
          }

          v22 = *(v0 + 120);
          *(v9 + 16) = v21 + 1;
          sub_1A9530910(v22, v9 + v10 + v21 * v11);
          v4 = v30;
        }

        if (++v6 == v33)
        {
          v3 = *(v0 + 48);
          goto LABEL_22;
        }
      }

      __break(1u);
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
LABEL_22:

      *(v3 + 40) = v9;

      sub_1A9526A64();

      v29 = *(v0 + 8);

      v29();
    }
  }

  else
  {
    v23 = *(v0 + 176);
    v24 = *(v0 + 184) + 1;
    *(v0 + 184) = v24;
    v25 = *(v0 + 112);
    sub_1A9530850(*(v0 + 160) + ((*(v0 + 200) + 32) & ~*(v0 + 200)) + v23 * v24, v25);
    v26 = *(v25 + 8);
    v27 = swift_getObjectType();
    v34 = (*(v26 + 64) + **(v26 + 64));
    v28 = swift_task_alloc();
    *(v0 + 192) = v28;
    *v28 = v0;
    v28[1] = sub_1A9533498;

    v34(0, 0, v27, v26);
  }
}

uint64_t sub_1A9533A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = sub_1A937829C(&qword_1EB388790, &qword_1A9599730);
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  type metadata accessor for TTSSpeechQueue(0);
  sub_1A9534BD8(&qword_1EB388758, &protocol conformance descriptor for TTSSpeechQueue);
  v7 = sub_1A957C5A8();
  v3[19] = v7;
  v3[20] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A9533C3C, v7, v6);
}

void sub_1A9533C3C()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  v2 = *(*(v1 + 40) + 16);

  if (!v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_19:
    *(v0 + 168) = v5;

    v19 = *(v5 + 16);
    *(v0 + 176) = v19;
    if (v19)
    {
      v20 = *(v0 + 120);
      v21 = *(v0 + 104);
      v22 = *(v21 + 80);
      *(v0 + 208) = v22;
      *(v0 + 184) = *(v21 + 72);
      *(v0 + 192) = 0;
      sub_1A9530850(*(v0 + 168) + ((v22 + 32) & ~v22), v20);
      v23 = *(v20 + 8);
      ObjectType = swift_getObjectType();
      v51 = (*(v23 + 64) + **(v23 + 64));
      v25 = swift_task_alloc();
      *(v0 + 200) = v25;
      *v25 = v0;
      v25[1] = sub_1A9534184;

      v51(0, 0, ObjectType, v23);
      return;
    }

    v26 = *(v0 + 48);
    v27 = *(*(v26 + 40) + 16);

    v52 = v27;
    if (!v27)
    {
      v45 = MEMORY[0x1E69E7CC0];
LABEL_41:

      *(v26 + 40) = v45;

      sub_1A9526A64();

      v46 = *(v0 + 8);

      v46();
      return;
    }

    v29 = 0;
    v50 = *(v0 + 136);
    v30 = *(v0 + 104);
    v48 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v29 >= *(v28 + 16))
      {
        goto LABEL_45;
      }

      v31 = *(v0 + 56);
      v32 = *(v0 + 64);
      v33 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v34 = *(v30 + 72);
      v35 = v28;
      sub_1A9530850(v28 + v33 + v34 * v29, *(v0 + 136));
      v36 = *(v50 + 8);
      v37 = swift_getObjectType();
      if ((*(v36 + 32))(v37, v36) == v31 && v38 == v32)
      {
      }

      else
      {
        v40 = sub_1A957D3E8();

        if ((v40 & 1) == 0)
        {
          sub_1A9530910(*(v0 + 136), *(v0 + 128));
          v41 = v48;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1A9530F54(0, *(v48 + 16) + 1, 1);
            v41 = v48;
          }

          v43 = *(v41 + 16);
          v42 = *(v41 + 24);
          if (v43 >= v42 >> 1)
          {
            sub_1A9530F54((v42 > 1), v43 + 1, 1);
            v41 = v48;
          }

          v44 = *(v0 + 128);
          *(v41 + 16) = v43 + 1;
          v48 = v41;
          sub_1A9530910(v44, v41 + v33 + v43 * v34);
          goto LABEL_27;
        }
      }

      sub_1A95308B4(*(v0 + 136));
LABEL_27:
      ++v29;
      v28 = v35;
      if (v52 == v29)
      {
        v26 = *(v0 + 48);
        v45 = v48;
        goto LABEL_41;
      }
    }
  }

  v4 = 0;
  v47 = *(v0 + 104);
  v49 = *(v0 + 144);
  v5 = MEMORY[0x1E69E7CC0];
  while (v4 < *(v3 + 16))
  {
    v6 = *(v0 + 56);
    v7 = *(v0 + 64);
    v8 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v9 = *(v47 + 72);
    v10 = v3;
    sub_1A9530850(v3 + v8 + v9 * v4, *(v0 + 144));
    v11 = *(v49 + 8);
    v12 = swift_getObjectType();
    if ((*(v11 + 32))(v12, v11) == v6 && v13 == v7)
    {

LABEL_13:
      sub_1A9530910(*(v0 + 144), *(v0 + 112));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1A9530F54(0, *(v5 + 16) + 1, 1);
      }

      v17 = *(v5 + 16);
      v16 = *(v5 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1A9530F54((v16 > 1), v17 + 1, 1);
      }

      v18 = *(v0 + 112);
      *(v5 + 16) = v17 + 1;
      sub_1A9530910(v18, v5 + v8 + v17 * v9);
      goto LABEL_4;
    }

    v15 = sub_1A957D3E8();

    if (v15)
    {
      goto LABEL_13;
    }

    sub_1A95308B4(*(v0 + 144));
LABEL_4:
    ++v4;
    v3 = v10;
    if (v2 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
}

uint64_t sub_1A9534184()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_1A9535028;
  }

  else
  {
    v5 = sub_1A95342B4;
    v3 = 0;
    v4 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A95342B4()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  *(v0 + 212) = 4;
  sub_1A937829C(&qword_1EB388788, &qword_1A95996E8);
  sub_1A957C818();
  (*(v3 + 8))(v1, v2);
  *(v0 + 40) = 0;
  sub_1A957C828();
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1A953439C, v4, v5);
}

void sub_1A953439C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 192) + 1;
  sub_1A95308B4(*(v0 + 120));
  if (v2 == v1)
  {

    v3 = *(v0 + 48);
    v4 = *(*(v3 + 40) + 16);

    v32 = v4;
    if (v4)
    {
      v6 = 0;
      v31 = *(v0 + 136);
      v7 = *(v0 + 104);
      v30 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v6 >= *(v5 + 16))
        {
          __break(1u);
          return;
        }

        v8 = *(v0 + 56);
        v9 = *(v0 + 64);
        v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v11 = *(v7 + 72);
        v12 = v5;
        sub_1A9530850(v5 + v10 + v11 * v6, *(v0 + 136));
        v13 = *(v31 + 8);
        ObjectType = swift_getObjectType();
        if ((*(v13 + 32))(ObjectType, v13) == v8 && v15 == v9)
        {
        }

        else
        {
          v17 = sub_1A957D3E8();

          if ((v17 & 1) == 0)
          {
            sub_1A9530910(*(v0 + 136), *(v0 + 128));
            v18 = v30;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1A9530F54(0, *(v30 + 16) + 1, 1);
              v18 = v30;
            }

            v20 = *(v18 + 16);
            v19 = *(v18 + 24);
            if (v20 >= v19 >> 1)
            {
              sub_1A9530F54((v19 > 1), v20 + 1, 1);
              v18 = v30;
            }

            v21 = *(v0 + 128);
            *(v18 + 16) = v20 + 1;
            v30 = v18;
            sub_1A9530910(v21, v18 + v10 + v20 * v11);
            goto LABEL_6;
          }
        }

        sub_1A95308B4(*(v0 + 136));
LABEL_6:
        ++v6;
        v5 = v12;
        if (v32 == v6)
        {
          v3 = *(v0 + 48);
          v28 = v30;
          goto LABEL_23;
        }
      }
    }

    v28 = MEMORY[0x1E69E7CC0];
LABEL_23:

    *(v3 + 40) = v28;

    sub_1A9526A64();

    v29 = *(v0 + 8);

    v29();
  }

  else
  {
    v22 = *(v0 + 184);
    v23 = *(v0 + 192) + 1;
    *(v0 + 192) = v23;
    v24 = *(v0 + 120);
    sub_1A9530850(*(v0 + 168) + ((*(v0 + 208) + 32) & ~*(v0 + 208)) + v22 * v23, v24);
    v25 = *(v24 + 8);
    v26 = swift_getObjectType();
    v33 = (*(v25 + 64) + **(v25 + 64));
    v27 = swift_task_alloc();
    *(v0 + 200) = v27;
    *v27 = v0;
    v27[1] = sub_1A9534184;

    v33(0, 0, v26, v25);
  }
}

unint64_t sub_1A9534758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1A95348A0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1A9530A4C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1A9534758(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1A9534960(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return MEMORY[0x1EEE6BDD0](v2, 40, 7);
}

uint64_t sub_1A95349B8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A9382328;

  return sub_1A952D400(v3, v4, v5, v2);
}

uint64_t sub_1A9534A4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A93836DC;

  return sub_1A952D66C();
}

uint64_t sub_1A9534ADC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return sub_1A9527050(v4, v5, v6, v2, v3);
}

uint64_t sub_1A9534B74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A9534BD8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTSSpeechQueue(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A9534C1C()
{
  v2 = *(sub_1A937829C(&qword_1EB386E38, &qword_1A9589CD8) - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A93836DC;

  return sub_1A952CAF8(v7, v8, v9, v4, v5, v6, v0 + v3);
}

uint64_t sub_1A9534D14()
{
  v2 = *(sub_1A937829C(&qword_1EB386E38, &qword_1A9589CD8) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A93836DC;

  return sub_1A952CE80(v4, v5, v0 + v3);
}

uint64_t sub_1A9534DFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A93836DC;

  return sub_1A952A3E8();
}

uint64_t sub_1A9534E8C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A952C7E0(v3, v4, v5, v2);
}

uint64_t sub_1A9534F24(uint64_t a1)
{
  v3 = *(v1 + 16);
  v8 = *(v1 + 24);
  sub_1A937B960(v3, &qword_1EB388760, &qword_1A9599360);
  v4 = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  v5 = *(v4 + 20);
  v6 = sub_1A937829C(&qword_1EB388788, &qword_1A95996E8);
  (*(*(v6 - 8) + 16))(&v3[v5], a1, v6);
  *v3 = v8;
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);

  return swift_unknownObjectRetain();
}

double TTSMarkup.SayAs.context.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

uint64_t TTSMarkup.SayAs.context.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t TTSMarkup.SayAs.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 72))(v3, a2);
}

{
  v9 = (*(a3 + 72) + **(a3 + 72));
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1A9382328;

  return v9(v3, a2, a3);
}

uint64_t TTSMarkup.SayAs.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = SpeechContext.init<each A>(_:)(v33, 0, v33, &v29);
  v30 = 2574;
  v5 = *MEMORY[0x1E69E7D40] & *a1;
  memset(v31, 0, sizeof(v31));
  v32 = 0;
  v6 = (*(v5 + 256))(v4);
  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_19;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v22 = a1;
  for (i = a2; v8; i = a2)
  {
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    a2 = 40;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1AC585DE0](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v11 = *(v7 + 8 * v9 + 32);
      }

      a1 = v11;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_1A93D1250(&v24);

      if (v25)
      {
        sub_1A932D070(&v24, &v26);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1A93ADC90(0, v10[2] + 1, 1, v10);
        }

        v14 = v10[2];
        v13 = v10[3];
        a1 = (v14 + 1);
        if (v14 >= v13 >> 1)
        {
          v10 = sub_1A93ADC90((v13 > 1), v14 + 1, 1, v10);
        }

        v10[2] = a1;
        sub_1A932D070(&v26, &v10[5 * v14 + 4]);
      }

      else
      {
        sub_1A9383404(&v24);
      }

      ++v9;
      if (v12 == v8)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v8 = sub_1A957CE48();
    v22 = a1;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_21:

  v27 = sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
  v28 = &protocol witness table for <A> [A];
  *&v26 = v10;
  v15 = sub_1A93A38D8(&v26, v31);
  v16 = *((*MEMORY[0x1E69E7D40] & *v22) + 0xE8);
  if (*(v16(v15) + 16) && (sub_1A937A490(0x6572707265746E69, 0xEC00000073612D74), (v17 & 1) != 0))
  {

    v18 = TTSMarkup.SayAs.Interpretation.init(rawValue:)(&v26);
    if (v26 != 14)
    {
      LOBYTE(v30) = v26;
    }
  }

  else
  {
  }

  if (*(v16(v18) + 16))
  {
    sub_1A937A490(0x74616D726F66, 0xE600000000000000);
    v19 = i;
    if (v20)
    {

      TTSMarkup.SayAs.Format.init(rawValue:)(&v26);

      if (v26 != 10)
      {
        HIBYTE(v30) = v26;
      }
    }

    else
    {
    }
  }

  else
  {

    v19 = i;
  }

  sub_1A94A86D0(&v29, v19);
  return sub_1A93B8E0C(&v29);
}

uint64_t TTSMarkup.SayAs.Interpretation.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1A957D158();

  v6 = 14;
  if (v4 < 0xE)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t TTSMarkup.SayAs.Format.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1A957D158();

  v6 = 10;
  if (v4 < 0xA)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1A953568C()
{
  result = 0x6574636172616863;
  switch(*v0)
  {
    case 1:
      result = 0x756F2D6C6C657073;
      break;
    case 2:
      result = 0x6C616E6964726163;
      break;
    case 3:
      result = 0x7265626D756ELL;
      break;
    case 4:
      result = 0x6C616E6964726FLL;
      break;
    case 5:
      result = 0x737469676964;
      break;
    case 6:
      result = 0x6E6F697463617266;
      break;
    case 7:
      result = 1953066613;
      break;
    case 8:
      result = 1702125924;
      break;
    case 9:
      result = 1701669236;
      break;
    case 0xA:
      result = 0x6E6F6870656C6574;
      break;
    case 0xB:
      result = 0x73736572646461;
      break;
    case 0xC:
      result = 0x63656A7265746E69;
      break;
    case 0xD:
      result = 0x766974656C707865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A95357F0()
{
  v0 = TTSMarkup.SayAs.Interpretation.description.getter();
  v2 = v1;
  if (v0 == TTSMarkup.SayAs.Interpretation.description.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1A957D3E8();
  }

  return v5 & 1;
}

uint64_t sub_1A953588C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7955565;
  v3 = a1;
  if (a1 > 4u)
  {
    v10 = 100;
    v11 = 109;
    if (a1 != 8)
    {
      v11 = 121;
    }

    if (a1 != 7)
    {
      v10 = v11;
    }

    v12 = 28025;
    if (a1 != 5)
    {
      v12 = 31085;
    }

    if (a1 <= 6u)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }

    if (v3 <= 6)
    {
      v9 = 0xE200000000000000;
    }

    else
    {
      v9 = 0xE100000000000000;
    }
  }

  else
  {
    v4 = 0xE300000000000000;
    v5 = 6581625;
    v6 = 25709;
    if (a1 != 3)
    {
      v6 = 28004;
    }

    if (a1 != 2)
    {
      v5 = v6;
      v4 = 0xE200000000000000;
    }

    v7 = 7957860;
    if (!a1)
    {
      v7 = 7955565;
    }

    if (a1 <= 1u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    if (v3 <= 1)
    {
      v9 = 0xE300000000000000;
    }

    else
    {
      v9 = v4;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      v13 = 0xE200000000000000;
      if (a2 == 5)
      {
        if (v8 != 28025)
        {
          goto LABEL_55;
        }
      }

      else if (v8 != 31085)
      {
LABEL_55:
        v14 = sub_1A957D3E8();
        goto LABEL_56;
      }
    }

    else
    {
      v13 = 0xE100000000000000;
      if (a2 == 7)
      {
        if (v8 != 100)
        {
          goto LABEL_55;
        }
      }

      else if (a2 == 8)
      {
        if (v8 != 109)
        {
          goto LABEL_55;
        }
      }

      else if (v8 != 121)
      {
        goto LABEL_55;
      }
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 7957860;
    }

    v13 = 0xE300000000000000;
    if (v8 != v2)
    {
      goto LABEL_55;
    }
  }

  else if (a2 == 2)
  {
    v13 = 0xE300000000000000;
    if (v8 != 6581625)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v13 = 0xE200000000000000;
    if (a2 == 3)
    {
      if (v8 != 25709)
      {
        goto LABEL_55;
      }
    }

    else if (v8 != 28004)
    {
      goto LABEL_55;
    }
  }

  if (v9 != v13)
  {
    goto LABEL_55;
  }

  v14 = 1;
LABEL_56:

  return v14 & 1;
}

uint64_t sub_1A9535A9C()
{
  sub_1A957D4F8();
  TTSMarkup.SayAs.Interpretation.description.getter();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A9535B04(uint64_t a1)
{
  TTSMarkup.SayAs.Interpretation.description.getter();
  sub_1A957C228();
}

uint64_t sub_1A9535B68(uint64_t a1, unsigned __int8 a2)
{
  sub_1A957C228();
}

uint64_t sub_1A9535C68(uint64_t a1)
{
  sub_1A957D4F8();
  TTSMarkup.SayAs.Interpretation.description.getter();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A9535CD8@<X0>(uint64_t *a1@<X8>)
{
  result = TTSMarkup.SayAs.Interpretation.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A9535D08()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 100;
    v7 = 109;
    if (v1 != 8)
    {
      v7 = 121;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 28025;
    if (v1 != 5)
    {
      v8 = 31085;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 7955565;
    v3 = 6581625;
    v4 = 25709;
    if (v1 != 3)
    {
      v4 = 28004;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 7957860;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1A9535DE0()
{
  v1 = *v0;
  sub_1A957D4F8();
  sub_1A9535B68(v3, v1);
  return sub_1A957D548();
}

uint64_t sub_1A9535E30(uint64_t a1)
{
  v2 = *v1;
  sub_1A957D4F8();
  sub_1A9535B68(v4, v2);
  return sub_1A957D548();
}

uint64_t sub_1A9535E80@<X0>(uint64_t *a1@<X8>)
{
  result = TTSMarkup.SayAs.Format.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TTSMarkup.SayAs.init(interpretation:_:speech:)@<X0>(char *a1@<X0>, char *a2@<X1>, void (*a3)(void *__return_ptr, uint64_t)@<X2>, void *a4@<X8>)
{
  v5 = a4;
  v6 = *a1;
  v7 = *a2;
  v8 = SpeechContext.init<each A>(_:)(&v11, 0, &v11, a4);
  *(v5 + 1) = 0u;
  v5 += 2;
  v5[4] = 0;
  *(v5 + 1) = 0u;
  *(v5 - 8) = v6;
  *(v5 - 7) = v7;
  a3(v10, v8);
  return sub_1A93A38D8(v10, v5);
}

uint64_t TTSMarkup.SayAs.init(format:speech:)@<X0>(char *a1@<X0>, void (*a2)(void *__return_ptr, uint64_t)@<X1>, void *a3@<X8>)
{
  v4 = a3;
  v5 = *a1;
  v6 = SpeechContext.init<each A>(_:)(&v9, 0, &v9, a3);
  *(v4 + 1) = 0u;
  v4 += 2;
  *(v4 - 8) = 14;
  *(v4 + 1) = 0u;
  v4[4] = 0;
  *(v4 - 7) = v5;
  a2(v8, v6);
  return sub_1A93A38D8(v8, v4);
}

uint64_t TTSMarkup.SayAs.init(interpretation:speech:)@<X0>(char *a1@<X0>, void (*a2)(void *__return_ptr, uint64_t)@<X1>, void *a3@<X8>)
{
  v4 = a3;
  v5 = *a1;
  v6 = SpeechContext.init<each A>(_:)(&v9, 0, &v9, a3);
  *(v4 + 1) = 0u;
  v4 += 2;
  *(v4 - 7) = 10;
  *(v4 + 1) = 0u;
  v4[4] = 0;
  *(v4 - 8) = v5;
  a2(v8, v6);
  return sub_1A93A38D8(v8, v4);
}

uint64_t TTSMarkup.SayAs.attributes.getter()
{
  v1 = MEMORY[0x1E69E7CC8];
  if (*(v0 + 8) != 14)
  {
    v2 = TTSMarkup.SayAs.Interpretation.description.getter();
    v4 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A938126C(v2, v4, 0x6572707265746E69, 0xEC00000073612D74, isUniquelyReferenced_nonNull_native);
  }

  v6 = *(v0 + 9);
  if (v6 <= 4)
  {
    v11 = 7955565;
    v12 = 0xE300000000000000;
    v13 = 6581625;
    v14 = 25709;
    if (v6 != 3)
    {
      v14 = 28004;
    }

    if (v6 != 2)
    {
      v13 = v14;
      v12 = 0xE200000000000000;
    }

    if (*(v0 + 9))
    {
      v11 = 7957860;
    }

    if (*(v0 + 9) <= 1u)
    {
      v9 = v11;
    }

    else
    {
      v9 = v13;
    }

    if (*(v0 + 9) <= 1u)
    {
      v10 = 0xE300000000000000;
    }

    else
    {
      v10 = v12;
    }
  }

  else if (*(v0 + 9) > 7u)
  {
    if (v6 == 8)
    {
      v10 = 0xE100000000000000;
      v9 = 109;
    }

    else
    {
      if (v6 != 9)
      {
        return v1;
      }

      v10 = 0xE100000000000000;
      v9 = 121;
    }
  }

  else
  {
    v7 = 0xE200000000000000;
    v8 = 31085;
    if (v6 != 6)
    {
      v8 = 100;
      v7 = 0xE100000000000000;
    }

    if (v6 == 5)
    {
      v9 = 28025;
    }

    else
    {
      v9 = v8;
    }

    if (v6 == 5)
    {
      v10 = 0xE200000000000000;
    }

    else
    {
      v10 = v7;
    }
  }

  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_1A938126C(v9, v10, 0x74616D726F66, 0xE600000000000000, v15);
  return v1;
}

uint64_t sub_1A9536270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkup.SayAs.accept<A>(_:)(a1, a2, a3);
}

unint64_t sub_1A9536324()
{
  result = qword_1EB3887D0;
  if (!qword_1EB3887D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3887D0);
  }

  return result;
}

unint64_t sub_1A953637C()
{
  result = qword_1EB3887D8;
  if (!qword_1EB3887D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3887D8);
  }

  return result;
}

uint64_t sub_1A95363D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1A9536418(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t _s5SayAsV14InterpretationOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s5SayAsV14InterpretationOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s5SayAsV6FormatOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s5SayAsV6FormatOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

double TTSMarkup.Pause.context.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

uint64_t TTSMarkup.Pause.context.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t TTSMarkup.Pause.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 2);
  v5 = *(v3 + 12);
  v6 = *(v3 + 13);
  v7 = v3[2];
  v8 = v3[3];
  v10 = *v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  return (*(a3 + 24))(&v10, a2);
}

{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1A9382328;

  return v9(v3, a2, a3);
}

void TTSMarkup.Pause.init(_:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = SpeechContext.init<each A>(_:)(&v54, 0, &v54, &v48);
  v49 = 0.0;
  v50 = 1537;
  v51 = 0;
  v52 = 0xE000000000000000;
  v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xE8);
  v6 = v5(v4);
  if (*(v6 + 16))
  {
    v7 = sub_1A937A490(1701669236, 0xE400000000000000);
    if (v8)
    {
      v9 = (*(v6 + 56) + 16 * v7);
      v11 = *v9;
      v10 = v9[1];

      v51 = v11;
      v52 = v10;
      v12 = MEMORY[0x1E696AE70];

      v13 = objc_allocWithZone(v12);
      v14 = sub_1A943639C(0xD000000000000031, 0x80000001A95C51F0, 1);
      if (!v14)
      {
        goto LABEL_4;
      }

      v25 = v14;
      v26 = sub_1A957C0C8();
      v27 = [v25 firstMatchInString:v26 options:0 range:{0, MEMORY[0x1AC5851E0](v11, v10)}];

      if (!v27)
      {
        goto LABEL_38;
      }

      v28 = sub_1A957C0C8();
      [v27 rangeWithName_];

      sub_1A957CA08();
      if (v29 & 1) != 0 || (v30 = sub_1A957C0C8(), [v27 rangeWithName_], v30, sub_1A957CA08(), (v31))
      {

        goto LABEL_4;
      }

      v35 = sub_1A957C3B8();
      v46 = MEMORY[0x1AC585090](v35);
      v47 = v36;

      v37 = sub_1A957C3B8();
      v38 = MEMORY[0x1AC585090](v37);
      v40 = v39;

      v41 = v38 == 115 && v40 == 0xE100000000000000;
      if (v41 || (sub_1A957D3E8() & 1) != 0)
      {

        v53[0] = 0.0;
        v42 = sub_1A94F3B24(v46, v47, v53);

        if (v42)
        {
          v15 = v53[0];
        }

        else
        {
          v15 = 0.0;
        }

        v16 = !v42;
        goto LABEL_5;
      }

      if (v38 == 29549 && v40 == 0xE200000000000000)
      {
      }

      else
      {
        v44 = sub_1A957D3E8();

        if ((v44 & 1) == 0)
        {

LABEL_38:
          goto LABEL_4;
        }
      }

      v53[0] = 0.0;
      v45 = sub_1A94F3B24(v46, v47, v53);

      if (v45)
      {
        v16 = 0;
        v15 = v53[0] / 1000.0;
LABEL_5:

        if (v16)
        {
          v15 = v49;
          v17 = 0x100000000;
          if (!v50)
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }

        goto LABEL_22;
      }

LABEL_4:
      v15 = 0.0;
      v16 = 1;
      goto LABEL_5;
    }
  }

  v19 = v5(v18);
  if (*(v19 + 16) && (v20 = sub_1A937A490(0x6874676E65727473, 0xE800000000000000), (v21 & 1) != 0))
  {
    v22 = (*(v19 + 56) + 16 * v20);
    v23 = *v22;
    v24 = v22[1];

    TTSMarkup.Pause.Strength.init(rawValue:)(v23, v24, v53);

    v15 = 0.0;
    if (LOBYTE(v53[0]) != 6)
    {
      HIBYTE(v50) = LOBYTE(v53[0]);
    }

    v17 = 0x100000000;
  }

  else
  {

    v17 = 0;
    HIBYTE(v50) = 0;
    v15 = 0.325;
  }

LABEL_22:
  v32 = v51;
  v33 = v52;
  v34 = v17 | LODWORD(v15) | (HIBYTE(v50) << 40);
  *a2 = v48;
  a2[1] = v34;
  a2[2] = v32;
  a2[3] = v33;
}

uint64_t TTSMarkup.Pause.Strength.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v5 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B6165772D78 && a2 == 0xE600000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 1;
  }

  else if (a1 == 1801545079 && a2 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 2;
  }

  else if (a1 == 0x6D756964656DLL && a2 == 0xE600000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 3;
  }

  else if (a1 == 0x676E6F727473 && a2 == 0xE600000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 4;
  }

  else if (a1 == 0x676E6F7274732D78 && a2 == 0xE800000000000000)
  {

    v8 = 5;
  }

  else
  {
    v9 = sub_1A957D3E8();

    if (v9)
    {
      v8 = 5;
    }

    else
    {
      v8 = 6;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t TTSMarkup.Pause.Strength.description.getter()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x6D756964656DLL;
  v4 = 0x676E6F727473;
  if (v1 != 4)
  {
    v4 = 0x676E6F7274732D78;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6B6165772D78;
  if (v1 != 1)
  {
    v5 = 1801545079;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A9537080(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6D756964656DLL;
  v6 = 0xE600000000000000;
  v7 = 0x676E6F727473;
  if (a1 != 4)
  {
    v7 = 0x676E6F7274732D78;
    v6 = 0xE800000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE600000000000000;
  v9 = 0x6B6165772D78;
  if (a1 != 1)
  {
    v9 = 1801545079;
    v8 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1701736302;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6D756964656DLL)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x676E6F727473)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x676E6F7274732D78)
      {
LABEL_34:
        v13 = sub_1A957D3E8();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6B6165772D78)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1801545079)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1701736302)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1A9537240(unsigned __int8 a1)
{
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A953732C(uint64_t a1)
{
  sub_1A957C228();
}

uint64_t sub_1A9537408(uint64_t a1, unsigned __int8 a2)
{
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

void sub_1A95374FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0xE600000000000000;
  v6 = 0x6D756964656DLL;
  v7 = 0xE600000000000000;
  v8 = 0x676E6F727473;
  if (v2 != 4)
  {
    v8 = 0x676E6F7274732D78;
    v7 = 0xE800000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x6B6165772D78;
  if (v2 != 1)
  {
    v10 = 1801545079;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1A95375A0()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x6D756964656DLL;
  v4 = 0x676E6F727473;
  if (v1 != 4)
  {
    v4 = 0x676E6F7274732D78;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6B6165772D78;
  if (v1 != 1)
  {
    v5 = 1801545079;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t TTSMarkup.Pause.attributes.getter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    sub_1A937829C(&qword_1EB3868D8, &unk_1A959A1B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A9587160;
    *(inited + 32) = 1701669236;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = v2;
    *(inited + 56) = v1;

    v5 = sub_1A9381740(inited);
    swift_setDeallocating();
    v6 = inited + 32;
LABEL_26:
    sub_1A9537B00(v6);
    return v5;
  }

  if ((*(v0 + 12) & 1) == 0)
  {
    v12 = *(v0 + 8);
    sub_1A957C898();
    v13 = fabsf(v12);
    if (v13 >= 1.0)
    {
      v14 = 115;
    }

    else
    {
      v14 = 29549;
    }

    if (v13 >= 1.0)
    {
      v15 = 0xE100000000000000;
    }

    else
    {
      v15 = 0xE200000000000000;
    }

    MEMORY[0x1AC585140](v14, v15);

    sub_1A937829C(&qword_1EB3868D8, &unk_1A959A1B0);
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_1A9587160;
    *(v16 + 32) = 1701669236;
    v17 = v16 + 32;
    *(v16 + 40) = 0xE400000000000000;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0xE000000000000000;
    v5 = sub_1A9381740(v16);
    swift_setDeallocating();
    v6 = v17;
    goto LABEL_26;
  }

  v7 = *(v0 + 13);
  if (v7 != 6)
  {
    sub_1A937829C(&qword_1EB3868D8, &unk_1A959A1B0);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_1A9587160;
    *(v8 + 32) = 0x6874676E65727473;
    v9 = v8 + 32;
    v10 = 0xE800000000000000;
    *(v8 + 40) = 0xE800000000000000;
    if (v7 > 2)
    {
      if (v7 == 3)
      {
        v10 = 0xE600000000000000;
        v11 = 0x6D756964656DLL;
      }

      else if (v7 == 4)
      {
        v10 = 0xE600000000000000;
        v11 = 0x676E6F727473;
      }

      else
      {
        v11 = 0x676E6F7274732D78;
      }
    }

    else if (v7)
    {
      if (v7 == 1)
      {
        v10 = 0xE600000000000000;
        v11 = 0x6B6165772D78;
      }

      else
      {
        v10 = 0xE400000000000000;
        v11 = 1801545079;
      }
    }

    else
    {
      v10 = 0xE400000000000000;
      v11 = 1701736302;
    }

    *(v8 + 48) = v11;
    *(v8 + 56) = v10;
    v5 = sub_1A9381740(v8);
    swift_setDeallocating();
    v6 = v9;
    goto LABEL_26;
  }

  result = sub_1A957D0A8();
  __break(1u);
  return result;
}

uint64_t *TTSMarkup.Pause.init(seconds:)@<X0>(uint64_t a1@<X8>, float a2@<S0>)
{
  result = SpeechContext.init<each A>(_:)(&v5, 0, &v5, a1);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 8) = a2;
  *(a1 + 12) = 1536;
  return result;
}

uint64_t *TTSMarkup.Pause.init(strength:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = SpeechContext.init<each A>(_:)(&v5, 0, &v5, a2);
  *(a2 + 8) = 0;
  *(a2 + 12) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 13) = v3;
  return result;
}

double sub_1A95379EC()
{
  if (*(v0 + 12))
  {
    return dbl_1A9599BF8[*(v0 + 13)];
  }

  else
  {
    return *(v0 + 8);
  }
}

uint64_t sub_1A9537A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkup.Pause.accept<A>(_:)(a1, a2, a3);
}

uint64_t sub_1A9537B00(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB3868E0, &qword_1A95885D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A9537B6C()
{
  result = qword_1EB3887E0;
  if (!qword_1EB3887E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3887E0);
  }

  return result;
}

uint64_t Dictionary<>.authoritative.getter(uint64_t a1)
{
  v209 = MEMORY[0x1E69E7CC8];
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v187 = v5;
  while (v4)
  {
    v7 = a1;
LABEL_11:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    memcpy(__dst, (*(v7 + 56) + 280 * (v9 | (v6 << 6))), sizeof(__dst));
    if (!LOBYTE(__dst[15]))
    {
LABEL_19:
      v12 = sub_1A957C1A8();
      v14 = v16;
      v205[0] = 0x5F697269735FLL;
      v15 = 0xE600000000000000;
      goto LABEL_20;
    }

    if (LOBYTE(__dst[15]) != 1)
    {
      v10 = __dst[12] | __dst[13] | __dst[14];
      if (v10 | __dst[9] | __dst[11] | __dst[10])
      {
        v11 = v10 | __dst[11] | __dst[10];
        if (__dst[9] != 1 || v11)
        {
          if (__dst[9] == 2 && !v11)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v12 = sub_1A957C1A8();
          v14 = v13;
          v205[0] = 0x65636E657265635FLL;
          v15 = 0xE90000000000005FLL;
LABEL_20:
          v205[1] = v15;
          sub_1A937B3DC(__dst, v207);
          MEMORY[0x1AC585140](v12, v14);

          v18 = v205[0];
          v17 = v205[1];
          v19 = v209;
          if (*(v209 + 16) && (v20 = sub_1A937A490(v205[0], v205[1]), (v21 & 1) != 0))
          {
            v22 = (v19[7] + 48 * v20);
            v191 = *v22;
            v193 = v22[1];
            v23 = v22[2];
            v196 = v22[3];
            v25 = v22[4];
            v24 = v22[5];

            v195 = v23;

            v199 = v25;
          }

          else
          {
            v26 = MEMORY[0x1E69E7CC0];
            v205[0] = MEMORY[0x1E69E7CC0];
            sub_1A9387410();

            sub_1A937829C(&unk_1EB388360, qword_1A958B690);
            sub_1A93B0F54();
            sub_1A957CE08();
            v24 = MEMORY[0x1E69E7CC8];
            v196 = *v207;
            v199 = MEMORY[0x1E69E7CC8];
            v193 = v17;
            v195 = v26;
            v191 = v18;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v207 = v19;
          v202 = v17;
          v29 = sub_1A937A490(v18, v17);
          v30 = v19[2];
          v31 = (v28 & 1) == 0;
          v32 = v30 + v31;
          if (__OFADD__(v30, v31))
          {
            goto LABEL_166;
          }

          v33 = v28;
          if (v19[3] >= v32)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1A953ABFC();
              v19 = *v207;
            }
          }

          else
          {
            sub_1A953A370(v32, isUniquelyReferenced_nonNull_native);
            v19 = *v207;
            v34 = sub_1A937A490(v18, v202);
            if ((v33 & 1) != (v35 & 1))
            {
              goto LABEL_168;
            }

            v29 = v34;
          }

          if (v33)
          {
            v36 = (v19[7] + 48 * v29);
            *v36 = v191;
            v36[1] = v193;
            v36[2] = v195;
            v36[3] = v196;
            v36[4] = v199;
            v36[5] = v24;

            v37 = v202;
          }

          else
          {
            v19[(v29 >> 6) + 8] |= 1 << v29;
            v38 = (v19[6] + 16 * v29);
            v37 = v202;
            *v38 = v18;
            v38[1] = v202;
            v39 = (v19[7] + 48 * v29);
            *v39 = v191;
            v39[1] = v193;
            v39[2] = v195;
            v39[3] = v196;
            v39[4] = v199;
            v39[5] = v24;
            v40 = v19[2];
            v41 = __OFADD__(v40, 1);
            v42 = v40 + 1;
            if (v41)
            {
              goto LABEL_167;
            }

            v19[2] = v42;
          }

          v209 = v19;
          v43 = sub_1A9539418(v206, v18, v37);
          if (v44[1])
          {
            v45 = v44;
            v197 = v43;
            v200 = __dst[7];
            v46 = __dst[8];
            *v207 = *&__dst[9];
            *&v207[16] = *&__dst[11];
            *&v207[32] = *&__dst[13];
            v207[48] = __dst[15];
            v47 = sub_1A957C1A8();
            v49 = v48;
            v50 = v45[2];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v50 = sub_1A93AC2AC(0, *(v50 + 2) + 1, 1, v50);
            }

            v52 = *(v50 + 2);
            v51 = *(v50 + 3);
            if (v52 >= v51 >> 1)
            {
              v50 = sub_1A93AC2AC((v51 > 1), v52 + 1, 1, v50);
            }

            *(v50 + 2) = v52 + 1;
            v53 = &v50[16 * v52];
            *(v53 + 4) = v47;
            *(v53 + 5) = v49;
            v45[2] = v50;
            v205[0] = v46;
            sub_1A93FC780();
            sub_1A957C438();
            sub_1A957C438();
            v204[0] = v211 | v210;
            sub_1A93FC7D4();
            sub_1A957D5D8();
            sub_1A937829C(&qword_1EB388390, &qword_1A9588580);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1A9587160;
            *(inited + 32) = sub_1A957C1A8();
            *(inited + 40) = v55;
            if (v45[4][2])
            {
              sub_1A9539778(v200);
              if (v56)
              {
              }

              else
              {
                v57 = MEMORY[0x1E69E7CD0];
              }
            }

            else
            {
              v57 = MEMORY[0x1E69E7CD0];
            }

            v205[0] = inited;
            sub_1A953BD30(v57);
            v58 = sub_1A93AD200(v205[0]);

            v59 = swift_isUniquelyReferenced_nonNull_native();
            v205[0] = v45[4];
            sub_1A953AF3C(v58, v200, v59);
            v45[4] = v205[0];
            v60 = swift_initStackObject();
            *(v60 + 16) = xmmword_1A9587160;
            *(v60 + 32) = sub_1A957C1A8();
            *(v60 + 40) = v61;
            if (v45[5][2])
            {
              sub_1A93B7280(v207, v205);
              sub_1A9489FA8(v207);
              v62 = MEMORY[0x1E69E7CD0];
              if (v63)
              {
              }
            }

            else
            {
              sub_1A93B7280(v207, v205);
              v62 = MEMORY[0x1E69E7CD0];
            }

            v205[0] = v60;
            sub_1A953BD30(v62);
            v64 = sub_1A93AD200(v205[0]);

            v65 = swift_isUniquelyReferenced_nonNull_native();
            v205[0] = v45[5];
            sub_1A953ADBC(v64, v207, v65);
            sub_1A953C0C8(v207);
            v45[5] = v205[0];
            v197(v206, 0);

            sub_1A937B48C(__dst);
          }

          else
          {
            (v43)(v206, 0);
            sub_1A937B48C(__dst);
          }

          v5 = v187;
        }
      }
    }
  }

  v7 = a1;
  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_162;
    }

    if (v8 >= v5)
    {
      break;
    }

    v4 = *(v1 + 8 * v8);
    ++v6;
    if (v4)
    {
      v6 = v8;
      goto LABEL_11;
    }
  }

  v66 = *(v209 + 64);
  v210 = a1;
  v184 = v209;
  v67 = 1 << *(v209 + 32);
  if (v67 < 64)
  {
    v68 = ~(-1 << v67);
  }

  else
  {
    v68 = -1;
  }

  v188 = v68 & v66;
  v185 = (v67 + 63) >> 6;
  v69 = (v209 + 64);

  v70 = 0;
  v183 = v69;
  while (1)
  {
LABEL_57:
    v71 = v188;
    if (v188)
    {
      v72 = v70;
    }

    else
    {
      do
      {
        v72 = v70 + 1;
        if (__OFADD__(v70, 1))
        {
          goto LABEL_163;
        }

        if (v72 >= v185)
        {

          return v210;
        }

        v71 = v69[v72];
        ++v70;
      }

      while (!v71);
    }

    v188 = (v71 - 1) & v71;
    v73 = (*(v184 + 56) + 48 * (__clz(__rbit64(v71)) | (v72 << 6)));
    v74 = v73[2];
    v186 = v73[3];
    v76 = v73[4];
    v75 = v73[5];
    swift_bridgeObjectRetain_n();

    sub_1A95392D8(v75);
    v203 = *(v74 + 16);
    if (v203)
    {
      break;
    }

    v70 = v72;
  }

  v78 = 0;
  v198 = v76;
  v201 = v74 + 32;
  v190 = v77;
  v192 = v77 + 56;
  v194 = v74;
  while (2)
  {
    if (v78 < *(v74 + 16))
    {
      v79 = v210;
      if (!*(v210 + 16))
      {
        goto LABEL_65;
      }

      v80 = (v201 + 16 * v78);
      v81 = *v80;
      v82 = v80[1];

      v83 = sub_1A937A490(v81, v82);
      if ((v84 & 1) == 0)
      {

        goto LABEL_65;
      }

      memcpy(__dst, (v79[7] + 280 * v83), sizeof(__dst));
      v205[0] = MEMORY[0x1E69E7CC0];
      sub_1A937B3DC(__dst, v207);
      sub_1A9387410();
      sub_1A937829C(&unk_1EB388360, qword_1A958B690);
      sub_1A93B0F54();
      sub_1A957CE08();
      if (LOBYTE(__dst[15]))
      {
        if (LOBYTE(__dst[15]) != 2)
        {
          goto LABEL_127;
        }

        v85 = vorrq_s8(*&__dst[11], *&__dst[13]);
        v86 = *&vorr_s8(*v85.i8, *&vextq_s8(v85, v85, 8uLL)) | __dst[10];
        if (__dst[9] == 1 && !v86)
        {
          v87 = __dst[7];
          LOBYTE(v204[0]) = __dst[7];
          LOBYTE(v211) = 2;
          sub_1A93B1148();
          sub_1A957C438();
          sub_1A957C438();
          if (*v207 == v205[0] && *&v207[8] == v205[1])
          {

            goto LABEL_96;
          }

          v115 = sub_1A957D3E8();

          if (v115)
          {
LABEL_96:
            if (*(v198 + 16))
            {
              sub_1A9539778(1);
              if (v116)
              {
                *v207 = *sub_1A9493D14();
                v204[0] = v206[0];
                sub_1A957CD98();
                sub_1A93B1F40();
                if ((sub_1A957C098() & 1) == 0)
                {
                  v204[0] = *v207;
                  sub_1A957CDD8();
                }
              }
            }
          }

          v117 = sub_1A9493C3C();
          *v207 = *v117;
          v205[0] = v186;
          if (sub_1A957CD88())
          {
            *v207 = *sub_1A9493CB4();
            v204[0] = v206[0];
            sub_1A957CD98();
            sub_1A93B1F40();
            if ((sub_1A957C098() & 1) == 0)
            {
              v204[0] = *v207;
              sub_1A957CDD8();
            }

            LOBYTE(v204[0]) = v87;
            LOBYTE(v211) = 2;
            sub_1A957C438();
            sub_1A957C438();
            if (*v207 == v205[0] && *&v207[8] == v205[1])
            {

              goto LABEL_113;
            }

            v130 = sub_1A957D3E8();

            if (v130)
            {
LABEL_113:
              *v207 = *v117;
              v204[0] = v206[0];
              sub_1A957CD98();
              if (sub_1A957C098())
              {
                goto LABEL_127;
              }

LABEL_126:
              v204[0] = *v207;
              sub_1A957CDD8();
            }
          }

LABEL_127:
          v143 = sub_1A9485504(v205, v81, v82);
          memmove(v207, v144, 0x118uLL);
          if (sub_1A932D058(v207) != 1)
          {
            v204[0] = v206[0];
            sub_1A93FC780();
            sub_1A957C438();
            sub_1A957C438();
            v211 = v205[35] | v209;
            sub_1A93FC7D4();
            sub_1A957D5D8();
          }

          (v143)(v205, 0);

          LOBYTE(v211) = __dst[7];
          LOBYTE(v209) = 1;
          sub_1A93B1148();
          sub_1A957C438();
          sub_1A957C438();
          if (v205[0] == v204[0] && v205[1] == v204[1])
          {

LABEL_133:
            if (*(v198 + 16))
            {
              v146 = sub_1A9539778(2);
              if (v147)
              {
                v148 = *(*(v198 + 56) + 8 * v146);

                v149 = sub_1A957CE18();
                if (v149 == 1 << *(v148 + 32) || (v150 = sub_1A953BFEC(v149, *(v148 + 36), 0, v148), v152 = v151, , , !*(a1 + 16)))
                {
                }

                else
                {
                  v153 = sub_1A937A490(v150, v152);
                  v155 = v154;

                  if (v155)
                  {
                    memcpy(v205, (*(a1 + 56) + 280 * v153), 0x118uLL);
                    v156 = v205[8];
                    sub_1A937B3DC(v205, v204);
                    v204[0] = *sub_1A9493C84();
                    v211 = v156;
                    if (sub_1A957CD88())
                    {
                      v157 = TTSSpeechUnitTestingMode();
                      sub_1A937B48C(v205);
                      if ((v157 & 1) == 0)
                      {
                        goto LABEL_141;
                      }
                    }

                    else
                    {
                      sub_1A937B48C(v205);
                    }
                  }
                }
              }
            }

            memcpy(v205, __dst, 0x118uLL);
            CoreSynthesizer.Voice.cannonicId.getter();
            v158 = sub_1A957C1A8();
            v160 = v159;

            sub_1A937B3DC(__dst, v205);
            v161 = v210;
            v162 = swift_isUniquelyReferenced_nonNull_native();
            v204[0] = v161;
            v163 = sub_1A937A490(v158, v160);
            v165 = *(v161 + 16);
            v166 = (v164 & 1) == 0;
            v41 = __OFADD__(v165, v166);
            v167 = v165 + v166;
            if (v41)
            {
              goto LABEL_164;
            }

            v168 = v164;
            if (*(v161 + 24) >= v167)
            {
              if (v162)
              {
                goto LABEL_149;
              }

              v177 = v163;
              sub_1A93ED3EC();
              v163 = v177;
              if ((v168 & 1) == 0)
              {
                goto LABEL_156;
              }

LABEL_150:
              v170 = v163;

              v171 = v204[0];
              v172 = (*(v204[0] + 56) + 280 * v170);
              memcpy(v205, v172, 0x118uLL);
              memcpy(v172, __dst, 0x118uLL);
              sub_1A937B48C(v205);
              sub_1A937B48C(__dst);
              v210 = v171;
            }

            else
            {
              sub_1A93EBE70(v167, v162);
              v163 = sub_1A937A490(v158, v160);
              if ((v168 & 1) != (v169 & 1))
              {
                goto LABEL_168;
              }

LABEL_149:
              if (v168)
              {
                goto LABEL_150;
              }

LABEL_156:
              v178 = v204[0];
              *(v204[0] + 8 * (v163 >> 6) + 64) |= 1 << v163;
              v179 = (v178[6] + 16 * v163);
              *v179 = v158;
              v179[1] = v160;
              memcpy((v178[7] + 280 * v163), __dst, 0x118uLL);
              sub_1A937B48C(__dst);
              v180 = v178[2];
              v41 = __OFADD__(v180, 1);
              v181 = v180 + 1;
              if (v41)
              {
                goto LABEL_165;
              }

              v178[2] = v181;
              v210 = v178;
            }
          }

          else
          {
            v145 = sub_1A957D3E8();

            if (v145)
            {
              goto LABEL_133;
            }

LABEL_141:
            sub_1A937B48C(__dst);
          }

          v74 = v194;
LABEL_65:
          if (++v78 == v203)
          {

            v70 = v72;
            v69 = v183;
            goto LABEL_57;
          }

          continue;
        }

        if (__dst[9] != 2)
        {
          goto LABEL_127;
        }

        if (v86)
        {
          goto LABEL_127;
        }

        v100 = sub_1A95397E0(&unk_1F1CFD908, v190);
        swift_arrayDestroy();
        v101 = *(v100 + 16);

        if (!v101)
        {
          goto LABEL_127;
        }

        v102 = sub_1A9493CFC();
      }

      else if (LOBYTE(__dst[9]))
      {
        if (LOBYTE(__dst[9]) != 1)
        {
          if (LOBYTE(__dst[9]) == 2)
          {
            *v207 = 3;
            memset(&v207[8], 0, 41);
            if (*(v190 + 16))
            {
              sub_1A948C16C();
              v88 = sub_1A957C058();
              v89 = -1 << *(v190 + 32);
              v90 = v88 & ~v89;
              if ((*(v192 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v90))
              {
                v91 = ~v89;
                while (1)
                {
                  v92 = *(v190 + 48) + 56 * v90;
                  v93 = *(v92 + 8);
                  v94 = *(v92 + 16);
                  v95 = *(v92 + 24);
                  v96 = *(v92 + 32);
                  v97 = *(v92 + 40);
                  v98 = *(v92 + 48);
                  v205[0] = *v92;
                  v205[1] = v93;
                  v205[2] = v94;
                  v205[3] = v95;
                  v205[4] = v96;
                  v205[5] = v97;
                  LOBYTE(v205[6]) = v98;
                  sub_1A93B10F0(v205[0], v93, v94, v95, v96, v97, v98);
                  sub_1A93B72DC();
                  v99 = sub_1A957C098();
                  sub_1A93B183C(v205[0], v205[1], v205[2], v205[3], v205[4], v205[5], v205[6]);
                  if (v99)
                  {
                    break;
                  }

                  v90 = (v90 + 1) & v91;
                  if (((*(v192 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v90) & 1) == 0)
                  {
                    goto LABEL_127;
                  }
                }

                v173 = sub_1A937A490(v81, v82);
                if (v174)
                {
                  v175 = v173;
                  v176 = swift_isUniquelyReferenced_nonNull_native();
                  v205[0] = v79;
                  if (!v176)
                  {
                    sub_1A93ED3EC();
                    v79 = v205[0];
                  }

                  memcpy(v207, (v79[7] + 280 * v175), sizeof(v207));
                  sub_1A937B48C(v207);
                  sub_1A948A5EC(v175, v79);
                  v210 = v79;
                }
              }
            }
          }

          goto LABEL_127;
        }

        *v207 = 4;
        memset(&v207[8], 0, 41);
        if (!*(v190 + 16))
        {
          goto LABEL_127;
        }

        sub_1A948C16C();
        v103 = sub_1A957C058();
        v104 = -1 << *(v190 + 32);
        v105 = v103 & ~v104;
        if (((*(v192 + ((v105 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v105) & 1) == 0)
        {
          goto LABEL_127;
        }

        v106 = ~v104;
        while (1)
        {
          v107 = *(v190 + 48) + 56 * v105;
          v108 = *(v107 + 8);
          v109 = *(v107 + 16);
          v110 = *(v107 + 24);
          v111 = *(v107 + 32);
          v112 = *(v107 + 40);
          v113 = *(v107 + 48);
          v205[0] = *v107;
          v205[1] = v108;
          v205[2] = v109;
          v205[3] = v110;
          v205[4] = v111;
          v205[5] = v112;
          LOBYTE(v205[6]) = v113;
          sub_1A93B10F0(v205[0], v108, v109, v110, v111, v112, v113);
          sub_1A93B72DC();
          v114 = sub_1A957C098();
          sub_1A93B183C(v205[0], v205[1], v205[2], v205[3], v205[4], v205[5], v205[6]);
          if (v114)
          {
            break;
          }

          v105 = (v105 + 1) & v106;
          if (((*(v192 + ((v105 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v105) & 1) == 0)
          {
            goto LABEL_127;
          }
        }

        v102 = sub_1A9493D74();
      }

      else
      {
        *v207 = 1;
        memset(&v207[8], 0, 41);
        if (*(v190 + 16))
        {
          sub_1A948C16C();
          v118 = sub_1A957C058();
          v119 = -1 << *(v190 + 32);
          v120 = v118 & ~v119;
          if ((*(v192 + ((v120 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v120))
          {
            v121 = ~v119;
            while (1)
            {
              v122 = *(v190 + 48) + 56 * v120;
              v123 = *(v122 + 8);
              v124 = *(v122 + 16);
              v125 = *(v122 + 24);
              v126 = *(v122 + 32);
              v127 = *(v122 + 40);
              v128 = *(v122 + 48);
              v205[0] = *v122;
              v205[1] = v123;
              v205[2] = v124;
              v205[3] = v125;
              v205[4] = v126;
              v205[5] = v127;
              LOBYTE(v205[6]) = v128;
              sub_1A93B10F0(v205[0], v123, v124, v125, v126, v127, v128);
              sub_1A93B72DC();
              v129 = sub_1A957C098();
              sub_1A93B183C(v205[0], v205[1], v205[2], v205[3], v205[4], v205[5], v205[6]);
              if (v129)
              {
                break;
              }

              v120 = (v120 + 1) & v121;
              if (((*(v192 + ((v120 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v120) & 1) == 0)
              {
                goto LABEL_118;
              }
            }

            *v207 = *sub_1A9493CCC();
            v204[0] = v206[0];
            sub_1A957CD98();
            sub_1A93B1F40();
            if ((sub_1A957C098() & 1) == 0)
            {
              v204[0] = *v207;
              sub_1A957CDD8();
            }
          }
        }

LABEL_118:
        *v207 = 2;
        memset(&v207[8], 0, 41);
        if (!*(v190 + 16))
        {
          goto LABEL_127;
        }

        sub_1A948C16C();
        v131 = sub_1A957C058();
        v132 = -1 << *(v190 + 32);
        v133 = v131 & ~v132;
        if (((*(v192 + ((v133 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v133) & 1) == 0)
        {
          goto LABEL_127;
        }

        v134 = ~v132;
        while (1)
        {
          v135 = *(v190 + 48) + 56 * v133;
          v136 = *(v135 + 8);
          v137 = *(v135 + 16);
          v138 = *(v135 + 24);
          v139 = *(v135 + 32);
          v140 = *(v135 + 40);
          v141 = *(v135 + 48);
          v205[0] = *v135;
          v205[1] = v136;
          v205[2] = v137;
          v205[3] = v138;
          v205[4] = v139;
          v205[5] = v140;
          LOBYTE(v205[6]) = v141;
          sub_1A93B10F0(v205[0], v136, v137, v138, v139, v140, v141);
          sub_1A93B72DC();
          v142 = sub_1A957C098();
          sub_1A93B183C(v205[0], v205[1], v205[2], v205[3], v205[4], v205[5], v205[6]);
          if (v142)
          {
            break;
          }

          v133 = (v133 + 1) & v134;
          if (((*(v192 + ((v133 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v133) & 1) == 0)
          {
            goto LABEL_127;
          }
        }

        v102 = sub_1A9493CE4();
      }

      *v207 = *v102;
      v204[0] = v206[0];
      sub_1A957CD98();
      sub_1A93B1F40();
      if (sub_1A957C098())
      {
        goto LABEL_127;
      }

      goto LABEL_126;
    }

    break;
  }

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
  result = sub_1A957D438();
  __break(1u);
  return result;
}

void sub_1A95392D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1A948C16C();
  v4 = MEMORY[0x1AC585770](v2, &type metadata for CoreSynthesizer.Voice.VoiceType, v3);
  v5 = 0;
  v6 = *(a1 + 64);
  v19 = v4;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;
  if ((v8 & v6) != 0)
  {
    do
    {
      v11 = v5;
LABEL_9:
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v13 = *(a1 + 48) + 56 * (v12 | (v11 << 6));
      v15 = *(v13 + 16);
      v14 = *(v13 + 32);
      v16 = *v13;
      v21 = *(v13 + 48);
      v20[1] = v15;
      v20[2] = v14;
      v20[0] = v16;
      sub_1A93B7280(v20, v17);
      sub_1A9539580(v17, v20);
      sub_1A93B183C(v17[0], v17[1], v17[2], v17[3], v17[4], v17[5], v18);
    }

    while (v9);
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return;
    }

    v9 = *(a1 + 64 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void (*sub_1A9539418(uint64_t **a1, uint64_t a2, uint64_t a3))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1A9539980(v6, a2, a3);
  return sub_1A953C23C;
}

uint64_t CoreSynthesizer.Voice.talentGroupKey.getter()
{
  if (*(v0 + 120))
  {
    if (*(v0 + 120) == 1)
    {
      return 0;
    }

    v1 = *(v0 + 72);
    v2 = *(v0 + 96);
    v3 = *(v0 + 104) | *(v0 + 112);
    v4 = *(v0 + 88) | *(v0 + 80);
    if (!(v3 | v1 | v2 | v4))
    {
      return 0;
    }

    v5 = v3 | v2 | v4;
    if (v1 == 1 && v5 == 0)
    {
      v7 = sub_1A957C1A8();
      v8 = 0x65636E657265635FLL;
      goto LABEL_13;
    }

    if (v1 != 2 || v5)
    {
      return 0;
    }
  }

  v7 = sub_1A957C1A8();
  v8 = 0x5F697269735FLL;
LABEL_13:
  v10 = v8;
  MEMORY[0x1AC585140](v7);

  return v10;
}

uint64_t sub_1A9539580(uint64_t a1, __int128 *a2)
{
  v4 = a2[2];
  v33 = a2[1];
  v34 = v4;
  v35 = *(a2 + 48);
  v32 = *a2;
  v5 = *v2;
  sub_1A948C16C();
  v6 = sub_1A957C058();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48) + 56 * v8;
      v11 = *(v10 + 8);
      v12 = *(v10 + 16);
      v13 = *(v10 + 24);
      v14 = *(v10 + 32);
      v15 = *(v10 + 40);
      v16 = *(v10 + 48);
      *&v36 = *v10;
      *(&v36 + 1) = v11;
      *&v37 = v12;
      *(&v37 + 1) = v13;
      *&v38 = v14;
      *(&v38 + 1) = v15;
      v39 = v16;
      sub_1A93B10F0(v36, v11, v12, v13, v14, v15, v16);
      sub_1A93B72DC();
      v17 = sub_1A957C098();
      sub_1A93B183C(v36, *(&v36 + 1), v37, *(&v37 + 1), v38, *(&v38 + 1), v39);
      if (v17)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1A93B183C(v32, *(&v32 + 1), v33, *(&v33 + 1), v34, *(&v34 + 1), v35);
    v22 = *(v5 + 48) + 56 * v8;
    v23 = *v22;
    v24 = *(v22 + 8);
    v25 = *(v22 + 16);
    v26 = *(v22 + 24);
    v27 = *(v22 + 32);
    v28 = *(v22 + 40);
    *a1 = *v22;
    *(a1 + 8) = v24;
    *(a1 + 16) = v25;
    *(a1 + 24) = v26;
    *(a1 + 32) = v27;
    *(a1 + 40) = v28;
    v29 = *(v22 + 48);
    *(a1 + 48) = v29;
    sub_1A93B10F0(v23, v24, v25, v26, v27, v28, v29);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v32;
    v37 = v33;
    v38 = v34;
    v39 = v35;
    v31 = *v2;
    sub_1A93B7280(&v36, &v30);
    sub_1A953B770(&v36, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v31;
    v19 = v35;
    v20 = v33;
    *a1 = v32;
    *(a1 + 16) = v20;
    *(a1 + 32) = v34;
    *(a1 + 48) = v19;
    return 1;
  }
}

unint64_t sub_1A9539778(char a1)
{
  sub_1A953C074();
  v1 = sub_1A957C058();
  return sub_1A953A848(a1, v1);
}

uint64_t sub_1A95397E0(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x1E69E9840];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    sub_1A953B310(v9, v7, v3, a2);
    v11 = v10;
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_1A953C040(v15, v7, v18);
    v11 = v18[0];

    MEMORY[0x1AC587CD0](v15, -1, -1);
  }

  return v11;
}

void (*sub_1A9539980(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1A9539DDC(v7);
  v7[9] = sub_1A9539A30(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1A953C240;
}

void (*sub_1A9539A30(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x58uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[7] = a3;
  v10[8] = v4;
  v10[6] = a2;
  v12 = *v4;
  v13 = sub_1A937A490(a2, a3);
  *(v11 + 80) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1A953ABFC();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1A953A370(v18, a4 & 1);
    v13 = sub_1A937A490(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1A957D438();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[9] = v13;
  if (v19)
  {
    v23 = *(*v5 + 56) + 48 * v13;
    v24 = *v23;
    v25 = *(v23 + 8);
    v26 = *(v23 + 24);
    v27 = *(v23 + 32);
  }

  else
  {
    v24 = 0;
    v26 = 0;
    v25 = 0uLL;
    v27 = 0uLL;
  }

  *v11 = v24;
  *(v11 + 1) = v25;
  v11[3] = v26;
  *(v11 + 2) = v27;
  return sub_1A9539BB4;
}

void sub_1A9539BB4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  LOBYTE(v9) = *(v2 + 80);
  if (a2)
  {
    if (!v4)
    {
      if (v2[10])
      {
        v20 = v2[9];
        v21 = *v2[8];
        v22 = v3;
        v23 = v2[2];
        v24 = v2[3];
        sub_1A948C1C0(*(v21 + 48) + 16 * v20);
        sub_1A953A68C(v20, v21);
        v6 = v24;
        v5 = v23;
        v3 = v22;
      }

      goto LABEL_16;
    }

    v10 = v2[9];
    v11 = *v2[8];
    if (v2[10])
    {
      goto LABEL_9;
    }

    v13 = v2[6];
    v12 = v2[7];
    v11[(v10 >> 6) + 8] |= 1 << v10;
    v14 = (v11[6] + 16 * v10);
    *v14 = v13;
    v14[1] = v12;
    v9 = v11[7];
    v15 = (v9 + 48 * v10);
    *v15 = v3;
    v15[1] = v4;
    v15[2] = v5;
    v15[3] = v6;
    v15[4] = v7;
    v15[5] = v8;
    v16 = v11[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (!v17)
    {
LABEL_15:
      v35 = v3;
      v36 = v5;
      v37 = v6;
      v11[2] = v18;

      v3 = v35;
      v5 = v36;
      v6 = v37;
      goto LABEL_16;
    }

    __break(1u);
  }

  if (!v4)
  {
    if (v9)
    {
      v25 = v2[9];
      v26 = *v2[8];
      v27 = v3;
      v28 = v5;
      v29 = v6;
      sub_1A948C1C0(*(v26 + 48) + 16 * v25);
      sub_1A953A68C(v25, v26);
      v6 = v29;
      v5 = v28;
      v3 = v27;
    }

    goto LABEL_16;
  }

  v10 = v2[9];
  v11 = *v2[8];
  if ((v9 & 1) == 0)
  {
    v31 = v2[6];
    v30 = v2[7];
    v11[(v10 >> 6) + 8] |= 1 << v10;
    v32 = (v11[6] + 16 * v10);
    *v32 = v31;
    v32[1] = v30;
    v33 = (v11[7] + 48 * v10);
    *v33 = v3;
    v33[1] = v4;
    v33[2] = v5;
    v33[3] = v6;
    v33[4] = v7;
    v33[5] = v8;
    v34 = v11[2];
    v17 = __OFADD__(v34, 1);
    v18 = v34 + 1;
    if (v17)
    {
      __break(1u);
      return;
    }

    goto LABEL_15;
  }

LABEL_9:
  v19 = (v11[7] + 48 * v10);
  *v19 = v3;
  v19[1] = v4;
  v19[2] = v5;
  v19[3] = v6;
  v19[4] = v7;
  v19[5] = v8;
LABEL_16:
  v38 = *v2;
  v39 = v2[1];
  v41 = v2[2];
  v40 = v2[3];
  v42 = v2[4];
  v43 = v2[5];
  sub_1A953C11C(v3, v4, v5, v6, v7, v8);
  sub_1A953C180(v38, v39, v41, v40, v42, v43);

  free(v2);
}

uint64_t (*sub_1A9539DDC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1A953C238;
}

uint64_t sub_1A9539E04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A937829C(&qword_1EB3887F8, &qword_1A9599C48);
  v31 = v4;
  result = sub_1A957D118();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 56 * v20;
      v32 = *v21;
      v33 = *(v21 + 16);
      v34 = *(v21 + 32);
      v35 = *(v21 + 48);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v31 & 1) == 0)
      {
        sub_1A93B10F0(*v21, *(v21 + 8), *(v21 + 16), *(v21 + 24), *(v21 + 32), *(v21 + 40), *(v21 + 48));
      }

      sub_1A948C16C();
      result = sub_1A957C058();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 56 * v15;
      *v16 = v32;
      *(v16 + 16) = v33;
      *(v16 + 32) = v34;
      *(v16 + 48) = v35;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A953A0D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A937829C(&qword_1EB388800, &qword_1A9599C50);
  v31 = v4;
  result = sub_1A957D118();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_1A953C074();
      result = sub_1A957C058();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v31 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A953A370(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A937829C(&qword_1EB3887F0, &qword_1A9599C40);
  v44 = v4;
  result = sub_1A957D118();
  v7 = result;
  if (*(v5 + 16))
  {
    v41 = v3;
    v42 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    v43 = result;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v45 = (v12 - 1) & v12;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = v24[1];
      v49 = *v24;
      v26 = (*(v5 + 56) + 48 * v23);
      v27 = v26[1];
      v28 = v26[2];
      v46 = v26[3];
      v47 = *v26;
      v29 = v26[4];
      v30 = v26[5];
      if ((v44 & 1) == 0)
      {
      }

      v48 = v29;
      v31 = v28;
      v32 = v27;
      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
      v7 = v43;
      v33 = -1 << *(v43 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v14 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v16 = v48;
        v17 = v30;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v14 + 8 * v35);
          if (v39 != -1)
          {
            v15 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v34) & ~*(v14 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v16 = v48;
      v17 = v30;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = (*(v43 + 48) + 16 * v15);
      *v18 = v49;
      v18[1] = v25;
      v19 = (*(v43 + 56) + 48 * v15);
      *v19 = v47;
      v19[1] = v32;
      v19[2] = v31;
      v19[3] = v46;
      v19[4] = v16;
      v19[5] = v17;
      ++*(v43 + 16);
      v5 = v42;
      v12 = v45;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v45 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_33;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v9, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A953A68C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A957CE28() + 1) & ~v5;
    do
    {
      sub_1A957D4F8();

      sub_1A957C228();
      v11 = sub_1A957D548();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 48 * v3);
        v18 = (v16 + 48 * v6);
        if (v3 != v6 || v17 >= v18 + 3)
        {
          v9 = *v18;
          v10 = v18[2];
          v17[1] = v18[1];
          v17[2] = v10;
          *v17 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1A953A848(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1A9496DE0();
    do
    {
      if (sub_1A957C098())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_1A953A910()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB3887F8, &qword_1A9599C48);
  v2 = *v0;
  v3 = sub_1A957D108();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = v17 << 6;
        v17 *= 8;
        v19 = v18 - v17;
        v20 = *(v2 + 48) + v19;
        v21 = *v20;
        v22 = *(v20 + 8);
        v23 = *(v20 + 16);
        v24 = *(v20 + 24);
        v25 = *(v20 + 32);
        v26 = *(v20 + 40);
        v27 = *(*(v2 + 56) + v17);
        v28 = *(v4 + 48) + v19;
        v29 = *(v20 + 48);
        *v28 = *v20;
        *(v28 + 8) = v22;
        *(v28 + 16) = v23;
        *(v28 + 24) = v24;
        *(v28 + 32) = v25;
        *(v28 + 40) = v26;
        *(v28 + 48) = v29;
        *(*(v4 + 56) + v17) = v27;
        sub_1A93B10F0(v21, v22, v23, v24, v25, v26, v29);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1A953AAA0()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB388800, &qword_1A9599C50);
  v2 = *v0;
  v3 = sub_1A957D108();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1A953ABFC()
{
  sub_1A937829C(&qword_1EB3887F0, &qword_1A9599C40);
  v30 = v0;
  v1 = *v0;
  v2 = sub_1A957D108();
  v3 = v2;
  if (*(v1 + 16))
  {
    v4 = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || v4 >= v1 + 64 + 8 * v5)
    {
      memmove(v4, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = 16 * v16;
        v18 = (*(v1 + 48) + 16 * v16);
        v20 = *v18;
        v19 = v18[1];
        v16 *= 48;
        v21 = (*(v1 + 56) + v16);
        v22 = *v21;
        v23 = v21[1];
        v25 = v21[2];
        v24 = v21[3];
        v26 = v21[4];
        v27 = v21[5];
        v28 = (*(v3 + 48) + v17);
        *v28 = v20;
        v28[1] = v19;
        v29 = (*(v3 + 56) + v16);
        *v29 = v22;
        v29[1] = v23;
        v29[2] = v25;
        v29[3] = v24;
        v29[4] = v26;
        v29[5] = v27;
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v30 = v3;
  }
}

uint64_t sub_1A953ADBC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1A9489FA8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1A9539E04(v14, a3 & 1);
      v9 = sub_1A9489FA8(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1A957D438();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_1A953A910();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    v21 = v19[6] + 56 * v9;
    v22 = *a2;
    v23 = *(a2 + 16);
    v24 = *(a2 + 32);
    *(v21 + 48) = *(a2 + 48);
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    *v21 = v22;
    *(v19[7] + 8 * v9) = a1;
    v25 = v19[2];
    v13 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v13)
    {
      v19[2] = v26;
      return sub_1A93B7280(a2, v27);
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

unint64_t sub_1A953AF3C(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1A9539778(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1A953A0D8(v14, a3 & 1);
      result = sub_1A9539778(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1A957D438();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1A953AAA0();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_1A953B088(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A937829C(&qword_1EB3887E8, &qword_1A9599C38);
  result = sub_1A957CEA8();
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
      v18 = *(v3 + 48) + 56 * (v15 | (v6 << 6));
      v27 = *v18;
      v28 = *(v18 + 16);
      v29 = *(v18 + 32);
      v30 = *(v18 + 48);
      sub_1A948C16C();
      result = sub_1A957C058();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 56 * v13;
      *v14 = v27;
      *(v14 + 16) = v28;
      *(v14 + 32) = v29;
      *(v14 + 48) = v30;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_1A953B310(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = *(a3 + 16);
  if (v35)
  {
    v5 = 0;
    v18 = 0;
    v20 = a3 + 32;
    v6 = a4 + 56;
    while (1)
    {
      v7 = v20 + 56 * v5;
      v28 = *v7;
      v29 = *(v7 + 8);
      v30 = *(v7 + 16);
      v31 = *(v7 + 24);
      v32 = *(v7 + 32);
      v33 = *(v7 + 40);
      v34 = *(v7 + 48);
      sub_1A93B10F0(*v7, v29, v30, v31, v32, v33, v34);
      sub_1A948C16C();
      v8 = sub_1A957C058();
      v9 = -1 << *(a4 + 32);
      v10 = v8 & ~v9;
      v11 = v10 >> 6;
      v12 = 1 << v10;
      if (((1 << v10) & *(v6 + 8 * (v10 >> 6))) != 0)
      {
        v13 = ~v9;
        while (1)
        {
          v14 = *(a4 + 48) + 56 * v10;
          v21 = *v14;
          v22 = *(v14 + 8);
          v23 = *(v14 + 16);
          v24 = *(v14 + 24);
          v25 = *(v14 + 32);
          v26 = *(v14 + 40);
          v27 = *(v14 + 48);
          sub_1A93B10F0(*v14, v22, v23, v24, v25, v26, v27);
          sub_1A93B72DC();
          v15 = sub_1A957C098();
          sub_1A93B183C(v21, v22, v23, v24, v25, v26, v27);
          if (v15)
          {
            break;
          }

          v10 = (v10 + 1) & v13;
          v11 = v10 >> 6;
          v12 = 1 << v10;
          if (((1 << v10) & *(v6 + 8 * (v10 >> 6))) == 0)
          {
            goto LABEL_3;
          }
        }

        sub_1A93B183C(v28, v29, v30, v31, v32, v33, v34);
        v16 = a1[v11];
        a1[v11] = v16 | v12;
        if ((v16 & v12) == 0)
        {
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            return;
          }

          ++v18;
        }
      }

      else
      {
LABEL_3:
        sub_1A93B183C(v28, v29, v30, v31, v32, v33, v34);
      }

      if (++v5 == v35)
      {
        goto LABEL_14;
      }
    }
  }

  v18 = 0;
LABEL_14:

  sub_1A953B518(a1, a2, v18, a4);
}

uint64_t sub_1A953B518(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1A937829C(&qword_1EB3887E8, &qword_1A9599C38);
  result = sub_1A957CEB8();
  v6 = result;
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
LABEL_16:
    v16 = *(a4 + 48) + 56 * (v13 | (v11 << 6));
    v27 = *v16;
    v28 = *(v16 + 16);
    v29 = *(v16 + 32);
    v30 = *(v16 + 48);
    sub_1A93B10F0(*v16, *(v16 + 8), v28, *(&v28 + 1), v29, *(&v29 + 1), v30);
    sub_1A948C16C();
    result = sub_1A957C058();
    v17 = -1 << *(v6 + 32);
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
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    v25 = *(v6 + 48) + 56 * v20;
    *v25 = v27;
    *(v25 + 16) = v28;
    *(v25 + 32) = v29;
    *(v25 + 48) = v30;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
LABEL_28:

      return v6;
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
      goto LABEL_28;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

void sub_1A953B770(__int128 *a1, unint64_t a2, char a3)
{
  v28 = *(a1 + 48);
  v26 = a1[1];
  v27 = a1[2];
  v25 = *a1;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A953B088(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      sub_1A953B954();
      goto LABEL_12;
    }

    sub_1A953BACC(v5 + 1);
  }

  v7 = *v3;
  sub_1A948C16C();
  v8 = sub_1A957C058();
  v9 = -1 << *(v7 + 32);
  a2 = v8 & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = *(v7 + 48) + 56 * a2;
      v18 = *v11;
      v19 = *(v11 + 8);
      v20 = *(v11 + 16);
      v21 = *(v11 + 24);
      v22 = *(v11 + 32);
      v23 = *(v11 + 40);
      v24 = *(v11 + 48);
      sub_1A93B10F0(*v11, v19, v20, v21, v22, v23, v24);
      sub_1A93B72DC();
      v12 = sub_1A957C098();
      sub_1A93B183C(v18, v19, v20, v21, v22, v23, v24);
      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 56 * a2;
  *v14 = v25;
  *(v14 + 16) = v26;
  *(v14 + 32) = v27;
  *(v14 + 48) = v28;
  v15 = *(v13 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v13 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1A957D428();
  __break(1u);
}

void sub_1A953B954()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB3887E8, &qword_1A9599C38);
  v2 = *v0;
  v3 = sub_1A957CE98();
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
        v17 = 56 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        v24 = *(v18 + 40);
        v25 = *(v4 + 48) + v17;
        v26 = *(v18 + 48);
        *v25 = *v18;
        *(v25 + 8) = v20;
        *(v25 + 16) = v21;
        *(v25 + 24) = v22;
        *(v25 + 32) = v23;
        *(v25 + 40) = v24;
        *(v25 + 48) = v26;
        sub_1A93B10F0(v19, v20, v21, v22, v23, v24, v26);
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