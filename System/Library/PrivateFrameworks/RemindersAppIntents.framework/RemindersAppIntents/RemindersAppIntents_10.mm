uint64_t sub_261BF9BE0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = v4;
  v116[1] = *MEMORY[0x277D85DE8];
  v88 = sub_261CFF184();
  v11 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v87 = (&v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v107 = sub_261CFF0F4();
  v110 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v106 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_261CFF1B4();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v96 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_261CFF274();
  v15 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v81 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_261CFF114();
  v91 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = a1;
  v114 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    v66 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v67 = sub_261D00274();
    v18 = v66;
    v19 = v67;
  }

  else
  {
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 < 0)
  {
    v20 = a2;
  }

  v100 = v20;
  if (!v19)
  {
    return MEMORY[0x277D84F98];
  }

  v73 = v18;
  v97 = a3;
  v76 = a4;
  v21 = 0;
  v98 = a2;
  v112 = a2 & 0xC000000000000001;
  v113 = v101 & 0xC000000000000001;
  v72 = v91 + 16;
  v71 = (v15 + 8);
  v90 = v94 + 16;
  v104 = v110 + 8;
  v105 = v110 + 16;
  v84 = (v11 + 88);
  v83 = *MEMORY[0x277D453E0];
  v75 = *MEMORY[0x277D453D8];
  v89 = (v94 + 8);
  v74 = (v11 + 96);
  v22 = v101;
  v70 = (v91 + 8);
  v93 = MEMORY[0x277D84F98];
  v77 = MEMORY[0x277D84F98];
  do
  {
    for (i = v21; ; ++i)
    {
      if (v113)
      {
        v24 = MEMORY[0x26671CA10](i, v22);
      }

      else
      {
        if (i >= *(v114 + 16))
        {
          goto LABEL_58;
        }

        v24 = *(v22 + 8 * i + 32);
      }

      a2 = v24;
      v21 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        v65 = v15;

        sub_261CFD654();

        swift_willThrow();
        (*v89)(v96, v95);
        (*v70)(v73, v85);

        return v93;
      }

      if (!v112)
      {
        v15 = v98;
        if (!v98[2])
        {
          goto LABEL_9;
        }

        v26 = sub_261B37CA4(v24);
        if ((v27 & 1) == 0)
        {
          goto LABEL_9;
        }

        v15 = *(*(v15 + 56) + 8 * v26);
        if (!v15)
        {
          goto LABEL_9;
        }

        goto LABEL_21;
      }

      v15 = v24;
      v25 = sub_261D004A4();

      if (v25)
      {
        break;
      }

      v22 = v101;
LABEL_9:

      if (v21 == v19)
      {
        return v93;
      }
    }

    v115 = v25;
    sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
    swift_dynamicCast();
    v15 = v116[0];
    v22 = v101;
    if (!v116[0])
    {
      goto LABEL_9;
    }

LABEL_21:
    v28 = [v15 parentReminder];
    if (!v28)
    {
      v29 = v15;
      goto LABEL_26;
    }

    v29 = v28;
    v99 = v15;
    v30 = [v28 list];
    v5 = [v30 objectID];

    v15 = v97;
    if (!*(v97 + 16) || (v31 = sub_261B37CA4(v5), (v32 & 1) == 0))
    {

      a2 = v99;
LABEL_26:

      goto LABEL_9;
    }

    v108 = v29;
    (*(v91 + 16))(v73, *(v15 + 56) + *(v91 + 72) * v31, v85);

    v33 = v81;
    MEMORY[0x26671B7D0]();
    v34 = sub_261CFF264();
    (*v71)(v33, v82);
    v35 = v34;
    v80 = *(v34 + 16);
    if (!v80)
    {

      v15 = v99;
      v37 = v108;
      goto LABEL_53;
    }

    v36 = 0;
    v79 = v34 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
    v69 = v93;
    v86 = v6;
    v102 = a2;
    v103 = i + 1;
    v78 = v34;
    while (2)
    {
      if (v36 >= *(v35 + 16))
      {
        __break(1u);
        goto LABEL_63;
      }

      v15 = v96;
      v38 = v36;
      (*(v94 + 16))(v96, v79 + *(v94 + 72) * v36, v95);
      v92 = v38 + 1;
      v39 = 0;
      v111 = sub_261CFF1A4();
      v109 = *(v111 + 16);
      while (2)
      {
        if (v109 == v39)
        {

          (*v89)(v96, v95);
          v6 = v86;
          v22 = v101;
LABEL_31:
          v15 = v99;
          v37 = v108;
          goto LABEL_32;
        }

        if (v39 >= *(v111 + 16))
        {
          goto LABEL_59;
        }

        v40 = v110;
        v41 = v106;
        v42 = v107;
        (*(v110 + 16))(v106, v111 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v39++, v107);
        v5 = sub_261B05020(0, &qword_27FEDA1B0, 0x277D82BB8);
        v43 = sub_261CFF0D4();
        v44 = v19;
        v45 = [v108 objectID];
        v15 = sub_261D000F4();

        v19 = v44;
        v46 = *(v40 + 8);
        v47 = v42;
        a2 = v102;
        v21 = v103;
        v46(v41, v47);
        if ((v15 & 1) == 0)
        {
          continue;
        }

        break;
      }

      v48 = v87;
      sub_261CFF194();
      v49 = v88;
      v50 = (*v84)(v48, v88);
      if (v50 != v83)
      {
        v6 = v86;
        v22 = v101;
        if (v50 != v75)
        {
          result = sub_261D00604();
          __break(1u);
          return result;
        }

        (*v89)(v96, v95);
        goto LABEL_31;
      }

      (*v74)(v48, v49);
      v5 = *v48;

      v116[0] = 0;
      v51 = [v76 fetchListSectionWithObjectID:v5 error:v116];
      v15 = v116[0];
      v6 = v86;
      v22 = v101;
      if (!v51)
      {
        goto LABEL_60;
      }

      v52 = v51;
      if ((v69 & 0xC000000000000001) != 0)
      {
        v53 = v5;
        if (v69 < 0)
        {
          v54 = v69;
        }

        else
        {
          v54 = v69 & 0xFFFFFFFFFFFFFF8;
        }

        v55 = a2;
        v56 = v15;
        v57 = v52;
        v58 = sub_261D00274();
        v37 = v108;
        if (!__OFADD__(v58, 1))
        {
          v59 = sub_261CA26C0(v54, v58 + 1);
          v5 = v53;
          v6 = v86;
          goto LABEL_50;
        }

LABEL_63:
        __break(1u);
      }

      v60 = a2;
      v61 = v15;
      v62 = v52;
      v59 = v77;
      v37 = v108;
LABEL_50:
      v63 = v59;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v116[0] = v63;
      sub_261BF8690(v52, a2, isUniquelyReferenced_nonNull_native);

      (*v89)(v96, v95);
      v77 = v116[0];
      v69 = v116[0];
      v15 = v99;
LABEL_32:
      v36 = v92;
      v35 = v78;
      if (v92 != v80)
      {
        continue;
      }

      break;
    }

    v93 = v69;
LABEL_53:

    (*v70)(v73, v85);
  }

  while (v21 != v19);
  return v93;
}

void *sub_261BFA794(unint64_t a1, uint64_t a2)
{
  v39 = MEMORY[0x277D84F98];
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_261D00424();
    v3 = 0;
    v4 = 0;
    v5 = 0;
    a1 = v2 | 0x8000000000000000;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v3 = a1 + 64;
    v4 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 64);
  }

  v9 = 0;
  v10 = (v4 + 64) >> 6;
  v11 = MEMORY[0x277D84F98];
  v37 = a1;
  while ((a1 & 0x8000000000000000) != 0)
  {
    if (!sub_261D004C4() || (sub_261B05020(0, &qword_280D21DF0, 0x277D44700), swift_dynamicCast(), v17 = v38, v15 = v9, v16 = v5, !v38))
    {
LABEL_35:
      sub_261AE6F74(v37);
      return v11;
    }

LABEL_21:
    if ((a2 & 0xC000000000000001) != 0)
    {
      v18 = v17;
      v19 = sub_261D004A4();

      if (v19)
      {
        sub_261B05020(0, &qword_27FEDA5E0, 0x277D44698);
        swift_dynamicCast();
        v19 = v38;
      }
    }

    else if (*(a2 + 16) && (v20 = sub_261B37CA4(v17), (v21 & 1) != 0))
    {
      v19 = *(*(a2 + 56) + 8 * v20);
      v22 = v19;
    }

    else
    {
      v19 = 0;
    }

    v24 = sub_261B3809C(v19);
    v25 = v11[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_37;
    }

    v28 = v23;
    if (v11[3] < v27)
    {
      sub_261CA3D0C(v27, 1);
      v11 = v39;
      v29 = sub_261B3809C(v19);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_39;
      }

      v24 = v29;
    }

    if (v28)
    {

      v12 = (v11[7] + 8 * v24);
      MEMORY[0x26671C310]();
      if (*((*v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_261CFFC84();
      }

      sub_261CFFCB4();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_261D030F0;
      *(v31 + 32) = v17;
      v11[(v24 >> 6) + 8] |= 1 << v24;
      *(v11[6] + 8 * v24) = v19;
      *(v11[7] + 8 * v24) = v31;
      v32 = v11[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_38;
      }

      v11[2] = v34;
    }

    v9 = v15;
    v5 = v16;
    a1 = v37;
  }

  v13 = v9;
  v14 = v5;
  v15 = v9;
  if (v5)
  {
LABEL_17:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_35;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      goto LABEL_35;
    }

    v14 = *(v3 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC470, &unk_261D0A030);

  result = sub_261D00654();
  __break(1u);
  return result;
}

uint64_t sub_261BFAB64(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    v4 = sub_261D00274();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2[2] >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2[2];
  }

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE120, &qword_261D05738);
    v6 = sub_261D00544();
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v8 = v6;
  sub_261CFD104();
  sub_261CFD104();
  sub_261BF889C(a1, a2, 1, &v8);
  return v8;
}

uint64_t sub_261BFAC50(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 112) = a3;
  *(v4 + 120) = v3;
  *(v4 + 104) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = *(type metadata accessor for ReminderEntity(0) - 8);
  *(v4 + 152) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0F0, &qword_261D05718);
  *(v4 + 160) = v6;
  *(v4 + 168) = *(v6 - 8);
  *(v4 + 176) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB240, &qword_261D05720);
  *(v4 + 184) = swift_task_alloc();
  v7 = sub_261CFDBE4();
  *(v4 + 192) = v7;
  *(v4 + 200) = *(v7 - 8);
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 312) = *a2;

  return MEMORY[0x2822009F8](sub_261BFAE5C, 0, 0);
}

uint64_t sub_261BFAE5C()
{
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v5 = *(v0[15] + 16);
  v0[27] = v5;
  (*(v2 + 104))(v1, *MEMORY[0x277D45C20], v3);
  v6 = sub_261CFE5B4();
  v7 = v5;
  v8 = sub_261CFE494();
  v9 = MEMORY[0x277D45E18];
  v0[5] = v6;
  v0[6] = v9;
  v0[2] = v8;
  v10 = sub_261CFE474();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v0[28] = sub_261CFFD24();
  v0[29] = sub_261CFFD14();
  v12 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261BFAF90, v12, v11);
}

uint64_t sub_261BFAF90()
{

  objc_allocWithZone(sub_261CFE424());
  *(v0 + 240) = sub_261CFE414();

  return MEMORY[0x2822009F8](sub_261BFB038, 0, 0);
}

uint64_t sub_261BFB038()
{
  v3 = sub_261CFD104();
  v4 = sub_261BFA794(v3, v3);
  v5 = v4;
  v6 = 0;
  *(v1 + 56) = MEMORY[0x277D84F98];
  *(v1 + 248) = v4;
  v7 = *(v4 + 32);
  *(v1 + 313) = v7;
  v8 = 1 << v7;
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v4[8];
  v11 = *MEMORY[0x277D45DB0];
  *(v1 + 304) = *MEMORY[0x277D45DB8];
  *(v1 + 308) = v11;
  v12 = (v8 + 63) >> 6;
  do
  {
    if (v10)
    {
      v13 = v6;
      goto LABEL_10;
    }

    do
    {
      v13 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v13 >= v12)
      {

        v25 = *(v1 + 56);

        v26 = *(v1 + 8);

        return v26(v25);
      }

      v10 = v4[v13 + 8];
      ++v6;
    }

    while (!v10);
    v6 = v13;
LABEL_10:
    *(v1 + 256) = v10;
    *(v1 + 264) = v13;
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = v14 | (v13 << 6);
    v2 = *(v4[6] + 8 * v15);
    *(v1 + 272) = v2;
  }

  while (!v2);
  v0 = *(v4[7] + 8 * v15);
  v5 = MEMORY[0x277D84F90];
  *(v1 + 64) = MEMORY[0x277D84F90];
  if (v0 >> 62)
  {
    goto LABEL_43;
  }

  v35 = v0 & 0xFFFFFFFFFFFFFF8;
  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_261D00274())
  {
    *(v1 + 280) = v5;
    v17 = v2;
    sub_261CFD104();
    if (!i)
    {
      break;
    }

    v2 = 0;
    while ((v0 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x26671CA10](v2, v0);
LABEL_17:
      v19 = v18;
      if (__OFADD__(v2, 1))
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v5 = *(v1 + 112);
      if ((v5 & 0xC000000000000001) != 0)
      {
        v20 = sub_261D004A4();
        if (!v20)
        {
          goto LABEL_28;
        }

        *(v1 + 80) = v20;
        sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
        swift_dynamicCast();
        v21 = *(v1 + 72);

        if (v21)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (!*(v5 + 16) || (v22 = sub_261B37CA4(v18), (v23 & 1) == 0))
        {
LABEL_28:

          goto LABEL_29;
        }

        v24 = *(*(*(v1 + 112) + 56) + 8 * v22);

        if (v24)
        {
LABEL_25:
          MEMORY[0x26671C310]();
          if (*((*(v1 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_261CFFC84();
          }

          v5 = v1 + 64;
          sub_261CFFCB4();
          *(v1 + 280) = *(v1 + 64);
        }
      }

LABEL_29:
      if (v2 + 1 == i)
      {
        goto LABEL_35;
      }

      ++v2;
    }

    if (v2 < *(v35 + 16))
    {
      v18 = *(v0 + 8 * v2 + 32);
      goto LABEL_17;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    v35 = v0 & 0xFFFFFFFFFFFFFF8;
  }

LABEL_35:
  v28 = (v1 + 308);
  v30 = *(v1 + 168);
  v29 = *(v1 + 176);
  v31 = *(v1 + 160);
  if (!*(v1 + 312))
  {
    v28 = (v1 + 304);
  }

  v32 = *v28;

  (*(v30 + 104))(v29, v32, v31);
  *(v1 + 288) = sub_261CFFD14();
  v34 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261BFB454, v34, v33);
}

uint64_t sub_261BFB454()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];

  v0[37] = sub_261CFE3F4();
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_261BFB508, 0, 0);
}

uint64_t sub_261BFB508()
{
  v3 = *(v1 + 296);
  if ((*(v1 + 312) & 1) == 0)
  {
    v3 = sub_261B48FBC(*(v1 + 296));
  }

  if (v3 >> 62)
  {
    goto LABEL_23;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (1)
    {
      *(v1 + 88) = MEMORY[0x277D84F90];
      sub_261B39DB8(0, v4 & ~(v4 >> 63), 0);
      if (v4 < 0)
      {
        break;
      }

      v5 = 0;
      v64 = v3;
      v65 = v3 & 0xC000000000000001;
      v2 = *(v1 + 88);
      v62 = v3 & 0xFFFFFFFFFFFFFF8;
      v63 = v4;
      v6 = &unk_279AFB000;
      while (!__OFADD__(v5, 1))
      {
        v68 = v2;
        if (v65)
        {
          v7 = MEMORY[0x26671CA10](v5, v3);
        }

        else
        {
          if (v5 >= *(v62 + 16))
          {
            goto LABEL_22;
          }

          v7 = *(v3 + 8 * v5 + 32);
        }

        v8 = v7;
        v9 = *(v1 + 136);
        v10 = type metadata accessor for RecurrentInstanceSpecifier(0);
        (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
        v11 = [v8 listChangeItem];
        if (!v11 || (v12 = v11, v13 = [v11 v6[84]], v12, !v13))
        {
          v24 = v8;
          v25 = *(v1 + 272);
          v26 = *(v1 + 240);
          v27 = *(v1 + 136);

          sub_261B01D70();
          swift_allocError();
          *v28 = 11;
          swift_willThrow();

          sub_261AE6A40(v27, &qword_27FEDA108, &unk_261D020C0);

          v29 = *(v1 + 8);

          return v29();
        }

        v66 = *(v1 + 152);
        v67 = v5 + 1;
        v14 = v6;
        v16 = *(v1 + 128);
        v15 = *(v1 + 136);
        v17 = [v8 v14 + 3960];
        v18 = [v8 accountCapabilities];
        v19 = v8;
        v0 = &qword_27FEDA108;
        sub_261AFB668(v15, v16, &qword_27FEDA108, &unk_261D020C0);
        sub_261C7EDC4(v17, v13, v18, 0, 0, v16, v66);

        sub_261AE6A40(v15, &qword_27FEDA108, &unk_261D020C0);
        v2 = v68;
        *(v1 + 88) = v68;
        v21 = v68[2];
        v20 = v68[3];
        if (v21 >= v20 >> 1)
        {
          sub_261B39DB8((v20 > 1), v21 + 1, 1);
          v2 = *(v1 + 88);
        }

        v23 = *(v1 + 144);
        v22 = *(v1 + 152);
        v2[2] = v21 + 1;
        sub_261B837B0(v22, v2 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v21);
        ++v5;
        v4 = v63;
        v3 = v64;
        v6 = &unk_279AFB000;
        if (v67 == v63)
        {

          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v4 = sub_261D00274();
      if (!v4)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_35:
    v31 = sub_261D00274();
    if (!v31)
    {
      goto LABEL_36;
    }

    goto LABEL_27;
  }

LABEL_24:

  v2 = MEMORY[0x277D84F90];
LABEL_25:
  v0 = *(v1 + 280);
  if (v0 >> 62)
  {
    goto LABEL_35;
  }

  v31 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v31)
  {
LABEL_36:

    v38 = MEMORY[0x277D84F90];
    goto LABEL_37;
  }

LABEL_27:
  *(v1 + 96) = MEMORY[0x277D84F90];
  v32 = v1 + 96;
  sub_261D003A4();
  if (v31 < 0)
  {
    goto LABEL_77;
  }

  v4 = 0;
  v33 = v0 & 0xC000000000000001;
  v34 = *(v1 + 280) + 32;
  do
  {
    if (v33)
    {
      v35 = MEMORY[0x26671CA10](v4, *(v1 + 280));
    }

    else
    {
      v35 = *(v34 + 8 * v4);
    }

    v36 = v35;
    ++v4;
    v37 = [v35 objectID];

    sub_261D00374();
    sub_261D003B4();
    sub_261D003C4();
    sub_261D00384();
  }

  while (v31 != v4);

  v38 = *(v1 + 96);
LABEL_37:
  v0 = *(v1 + 272);
  sub_261BFAB64(v38, v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC468, &qword_261D0A018);
  v32 = v1 + 56;
  sub_261CFF904();

  v39 = *(v1 + 264);
  v40 = (*(v1 + 256) - 1) & *(v1 + 256);
LABEL_38:
  if (v40)
  {
    v32 = *(v1 + 248);
    goto LABEL_44;
  }

  while (1)
  {
    v41 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
      goto LABEL_75;
    }

    v32 = *(v1 + 248);
    if (v41 >= (((1 << *(v1 + 313)) + 63) >> 6))
    {
      break;
    }

    v40 = *(v32 + 8 * v41 + 64);
    ++v39;
    if (v40)
    {
      v39 = v41;
LABEL_44:
      *(v1 + 256) = v40;
      *(v1 + 264) = v39;
      v42 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
      v43 = v42 | (v39 << 6);
      v4 = *(*(v32 + 48) + 8 * v43);
      *(v1 + 272) = v4;
      if (v4)
      {
        v0 = *(*(v32 + 56) + 8 * v43);
        v32 = MEMORY[0x277D84F90];
        *(v1 + 64) = MEMORY[0x277D84F90];
        v2 = (v0 & 0xFFFFFFFFFFFFFF8);
        if (v0 >> 62)
        {
          goto LABEL_78;
        }

        for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_261D00274())
        {
          *(v1 + 280) = v32;
          v45 = v4;
          sub_261CFD104();
          if (!i)
          {
LABEL_69:
            v55 = (v1 + 308);
            v57 = *(v1 + 168);
            v56 = *(v1 + 176);
            v58 = *(v1 + 160);
            if (!*(v1 + 312))
            {
              v55 = (v1 + 304);
            }

            v59 = *v55;

            (*(v57 + 104))(v56, v59, v58);
            *(v1 + 288) = sub_261CFFD14();
            v61 = sub_261CFFCF4();

            return MEMORY[0x2822009F8](sub_261BFB454, v61, v60);
          }

          v4 = 0;
          if ((v0 & 0xC000000000000001) != 0)
          {
            break;
          }

LABEL_49:
          if (v4 < v2[2])
          {
            v46 = *(v0 + 8 * v4 + 32);
            goto LABEL_51;
          }

LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          ;
        }

        while (2)
        {
          v46 = MEMORY[0x26671CA10](v4, v0);
LABEL_51:
          v47 = v46;
          if (__OFADD__(v4, 1))
          {
LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

          v32 = *(v1 + 112);
          if ((v32 & 0xC000000000000001) != 0)
          {
            v48 = sub_261D004A4();
            if (v48)
            {
              *(v1 + 80) = v48;
              sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
              swift_dynamicCast();
              v49 = *(v1 + 72);

              if (!v49)
              {
                goto LABEL_63;
              }

              goto LABEL_59;
            }
          }

          else if (*(v32 + 16))
          {
            v50 = sub_261B37CA4(v46);
            if (v51)
            {
              v52 = *(*(*(v1 + 112) + 56) + 8 * v50);

              if (!v52)
              {
                goto LABEL_63;
              }

LABEL_59:
              MEMORY[0x26671C310]();
              if (*((*(v1 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_261CFFC84();
              }

              v32 = v1 + 64;
              sub_261CFFCB4();
              *(v1 + 280) = *(v1 + 64);
LABEL_63:
              if (v4 + 1 == i)
              {
                goto LABEL_69;
              }

              ++v4;
              if ((v0 & 0xC000000000000001) == 0)
              {
                goto LABEL_49;
              }

              continue;
            }
          }

          break;
        }

        goto LABEL_63;
      }

      goto LABEL_38;
    }
  }

  v53 = *(v1 + 56);

  v54 = *(v1 + 8);

  return v54(v53);
}

uint64_t sub_261BFBDB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_261BFBE00(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_261BFBE0C(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_261BFBE18(uint64_t a1)
{
  v36 = sub_261CFCDB4();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v33 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC780, &qword_261D0AC98);
  v41 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC788, &qword_261D0ACA0);
  MEMORY[0x28223BE20](v5);
  sub_261B31558();
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v37 = sub_261C0FB04();
  v40 = a1;
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v35 = sub_261CFCDD4();
  v38 = *(v41 + 8);
  v41 += 8;
  v6 = v39;
  v38(v4, v39);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  v7 = v33;
  v8 = v34;
  v9 = v36;
  (*(v34 + 104))(v33, *MEMORY[0x277CB9F50], v36);
  sub_261CFCE54();
  (*(v8 + 8))(v7, v9);
  sub_261CFCE74();
  sub_261CFCE94();
  v34 = sub_261CFCDD4();
  v10 = v6;
  v11 = v38;
  v38(v4, v10);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v33 = sub_261CFCDD4();
  v11(v4, v39);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v32 = sub_261CFCDD4();
  v12 = v39;
  v38(v4, v39);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v31 = sub_261CFCDD4();
  v13 = v38;
  v38(v4, v12);
  sub_261CFCE44();
  v30 = sub_261CFCDD4();
  v13(v4, v12);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  v36 = sub_261C0FD5C();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v29 = sub_261CFCDD4();
  v15 = v38;
  v14 = v39;
  v38(v4, v39);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v28 = sub_261CFCDD4();
  v15(v4, v14);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v27 = sub_261CFCDD4();
  v16 = v38;
  v17 = v39;
  v38(v4, v39);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v18 = sub_261CFCDD4();
  v16(v4, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC790, &unk_261D0ACA8);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_261D01410;
  v20 = v34;
  *(v19 + 32) = v35;
  *(v19 + 40) = v20;
  v21 = v32;
  *(v19 + 48) = v33;
  *(v19 + 56) = v21;
  v22 = v30;
  *(v19 + 64) = v31;
  *(v19 + 72) = v22;
  v23 = v28;
  *(v19 + 80) = v29;
  *(v19 + 88) = v23;
  *(v19 + 96) = v27;
  *(v19 + 104) = v18;
  v24 = sub_261CFCDC4();

  return v24;
}

uint64_t sub_261BFCA94()
{
  v0 = sub_261CFCE34();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_261C0FB04();
  sub_261CFCDA4();

  sub_261B31558();
  sub_261CFCE24();
  v4 = sub_261CFCE14();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_261C0FD5C();
  sub_261CFCDA4();

  sub_261CFCE24();
  v6 = sub_261CFCE14();
  v5(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC4A0, &qword_261D0A1D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_261D01400;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = sub_261CFCE04();

  return v8;
}

uint64_t sub_261BFCC84()
{
  v0 = sub_261CFCDF4();
  v1 = sub_261CFCDF4();
  v2 = sub_261CFCDF4();
  v3 = sub_261CFCDF4();
  v4 = sub_261CFCDF4();
  v5 = sub_261CFCDF4();
  v6 = sub_261CFCDF4();
  v7 = sub_261CFCDF4();
  v8 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_261D0A040;
  *(v9 + 32) = v0;
  *(v9 + 40) = v1;
  *(v9 + 48) = v2;
  *(v9 + 56) = v3;
  *(v9 + 64) = v4;
  *(v9 + 72) = v5;
  *(v9 + 80) = v6;
  *(v9 + 88) = v7;
  *(v9 + 96) = v8;
  v10 = sub_261CFCDE4();

  return v10;
}

uint64_t sub_261BFCE08(uint64_t a1)
{
  v2 = sub_261CFCDB4();
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x28223BE20](v2);
  v47 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC760, &qword_261D0ABF8);
  v61 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v5 = &v39 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC768, &qword_261D0AC00);
  MEMORY[0x28223BE20](v6);
  v7 = sub_261B31408();
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v8 = sub_261C0FB04();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  v55 = sub_261C0FB88();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v54 = sub_261CFCDD4();
  v60 = *(v61 + 8);
  v61 += 8;
  v9 = v59;
  v60(v5, v59);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261C0FC84();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v56 = v7;
  v53 = sub_261CFCDD4();
  v60(v5, v9);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v57 = v8;
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v52 = sub_261CFCDD4();
  v60(v5, v59);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v58 = a1;
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  v55 = sub_261C0F51C();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v51 = sub_261CFCDD4();
  v10 = v59;
  v11 = v60;
  v60(v5, v59);
  sub_261CFCE44();
  v50 = sub_261CFCDD4();
  v11(v5, v10);
  sub_261CFCE84();
  sub_261CFCE74();
  v13 = v47;
  v12 = v48;
  v14 = v49;
  (*(v48 + 104))(v47, *MEMORY[0x277CB9F50], v49);
  sub_261CFCE54();
  (*(v12 + 8))(v13, v14);
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v49 = sub_261CFCDD4();
  v15 = v60;
  v60(v5, v59);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v48 = sub_261CFCDD4();
  v15(v5, v59);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  v55 = sub_261C0F5D0();
  sub_261CFCDA4();

  sub_261CFCE64();

  v44 = "Put these ingredients on my ";
  sub_261CFCE74();
  sub_261CFCE94();
  v47 = sub_261CFCDD4();
  v60(v5, v59);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v46 = sub_261CFCDD4();
  v16 = v59;
  v60(v5, v59);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v45 = sub_261CFCDD4();
  v17 = v16;
  v18 = v60;
  v60(v5, v17);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v44 = sub_261CFCDD4();
  v19 = v59;
  v18(v5, v59);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  v55 = sub_261C0F684();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v43 = sub_261CFCDD4();
  v20 = v60;
  v60(v5, v19);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v42 = sub_261CFCDD4();
  v21 = v5;
  v22 = v5;
  v23 = v59;
  v20(v21, v59);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v41 = sub_261CFCDD4();
  v24 = v60;
  v60(v22, v23);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  v25 = v22;
  sub_261CFCE94();
  v40 = sub_261CFCDD4();
  v26 = v22;
  v27 = v59;
  v24(v26, v59);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v28 = sub_261CFCDD4();
  v60(v25, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC778, &qword_261D0AC38);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_261D0A050;
  v30 = v53;
  *(v29 + 32) = v54;
  *(v29 + 40) = v30;
  v31 = v51;
  *(v29 + 48) = v52;
  *(v29 + 56) = v31;
  v32 = v49;
  *(v29 + 64) = v50;
  *(v29 + 72) = v32;
  v33 = v47;
  *(v29 + 80) = v48;
  *(v29 + 88) = v33;
  v34 = v45;
  *(v29 + 96) = v46;
  *(v29 + 104) = v34;
  v35 = v43;
  *(v29 + 112) = v44;
  *(v29 + 120) = v35;
  v36 = v41;
  *(v29 + 128) = v42;
  *(v29 + 136) = v36;
  *(v29 + 144) = v40;
  *(v29 + 152) = v28;
  v37 = sub_261CFCDC4();

  return v37;
}

uint64_t sub_261BFE2E8()
{
  v0 = sub_261CFCE34();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_261C0FB04();
  sub_261CFCDA4();

  sub_261B31408();
  sub_261CFCE24();
  v13 = sub_261CFCE14();
  v4 = *(v1 + 8);
  v4(v3, v0);
  swift_getKeyPath();
  sub_261C0FB88();
  sub_261CFCDA4();

  sub_261CFCE24();
  v5 = sub_261CFCE14();
  v4(v3, v0);
  swift_getKeyPath();
  sub_261C0F51C();
  sub_261CFCDA4();

  sub_261CFCE24();
  v6 = sub_261CFCE14();
  v4(v3, v0);
  swift_getKeyPath();
  sub_261C0F5D0();
  sub_261CFCDA4();

  sub_261CFCE24();
  v7 = sub_261CFCE14();
  v4(v3, v0);
  swift_getKeyPath();
  sub_261C0F684();
  sub_261CFCDA4();

  sub_261CFCE24();
  v8 = sub_261CFCE14();
  v4(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC4A0, &qword_261D0A1D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_261D06F90;
  *(v9 + 32) = v13;
  *(v9 + 40) = v5;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  v10 = sub_261CFCE04();

  return v10;
}

uint64_t sub_261BFE64C()
{
  v15 = sub_261CFCDF4();
  v14 = sub_261CFCDF4();
  v13 = sub_261CFCDF4();
  v12 = sub_261CFCDF4();
  v0 = sub_261CFCDF4();
  v1 = sub_261CFCDF4();
  v2 = sub_261CFCDF4();
  v3 = sub_261CFCDF4();
  v4 = sub_261CFCDF4();
  v5 = sub_261CFCDF4();
  v6 = sub_261CFCDF4();
  v7 = sub_261CFCDF4();
  v8 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_261D0A060;
  *(v9 + 32) = v15;
  *(v9 + 40) = v14;
  *(v9 + 48) = v13;
  *(v9 + 56) = v12;
  *(v9 + 64) = v0;
  *(v9 + 72) = v1;
  *(v9 + 80) = v2;
  *(v9 + 88) = v3;
  *(v9 + 96) = v4;
  *(v9 + 104) = v5;
  *(v9 + 112) = v6;
  *(v9 + 120) = v7;
  *(v9 + 128) = v8;
  v10 = sub_261CFCDE4();

  return v10;
}

uint64_t sub_261BFE8E0()
{
  v0 = sub_261CFCDF4();
  v1 = sub_261CFCDF4();
  v2 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_261D01420;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = sub_261CFCDE4();

  return v4;
}

uint64_t sub_261BFE9B0()
{
  v0 = sub_261CFCDF4();
  v1 = sub_261CFCDF4();
  v2 = sub_261CFCDF4();
  v3 = sub_261CFCDF4();
  v4 = sub_261CFCDF4();
  v5 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_261D05320;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = sub_261CFCDE4();

  return v7;
}

uint64_t sub_261BFEAF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC748, &qword_261D0AB10);
  v27 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC750, &qword_261D0AB18);
  MEMORY[0x28223BE20](v5);
  sub_261B0A88C();
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v26 = sub_261C0FB04();
  sub_261CFCDA4();

  sub_261CFCE64();

  v20 = "Add a new section called ";
  sub_261CFCE74();
  sub_261CFCE94();
  v6 = sub_261CFCDD4();
  v7 = *(v27 + 8);
  v27 += 8;
  v23 = v6;
  v24 = v7;
  v19 = v2;
  v7(v4, v2);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v25 = a1;
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  v21 = sub_261C0FC3C(&qword_280D22790, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v22 = sub_261CFCDD4();
  v8 = v2;
  v9 = v24;
  v24(v4, v8);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v20 = sub_261CFCDD4();
  v10 = v19;
  v9(v4, v19);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v26 = sub_261CFCDD4();
  v11 = v24;
  v24(v4, v10);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v12 = sub_261CFCDD4();
  v11(v4, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC758, &qword_261D0AB20);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_261D06F90;
  v14 = v22;
  *(v13 + 32) = v23;
  *(v13 + 40) = v14;
  v15 = v26;
  *(v13 + 48) = v20;
  *(v13 + 56) = v15;
  *(v13 + 64) = v12;
  v16 = sub_261CFCDC4();

  return v16;
}

uint64_t sub_261BFF194()
{
  v0 = sub_261CFCE34();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_261C0FB04();
  sub_261CFCDA4();

  sub_261B0A88C();
  sub_261CFCE24();
  v4 = sub_261CFCE14();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_261C0FC3C(&qword_280D22790, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  sub_261CFCDA4();

  sub_261CFCE24();
  v6 = sub_261CFCE14();
  v5(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC4A0, &qword_261D0A1D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_261D01400;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = sub_261CFCE04();

  return v8;
}

uint64_t sub_261BFF3FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC730, &qword_261D0AAA8);
  v3 = *(v2 - 8);
  v20 = v2;
  v21 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC738, &qword_261D0AAB0);
  MEMORY[0x28223BE20](v6);
  sub_261B314B0();
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261C0FB04();
  v16 = a1;
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v19 = sub_261CFCDD4();
  v7 = v20;
  v17 = *(v21 + 8);
  v21 += 8;
  v17(v5, v20);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v18 = sub_261CFCDD4();
  v8 = v17;
  v17(v5, v7);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v9 = sub_261CFCDD4();
  v10 = v20;
  v8(v5, v20);
  sub_261CFCE44();
  v11 = sub_261CFCDD4();
  v8(v5, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC740, &qword_261D0AAB8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_261D01430;
  v13 = v18;
  *(v12 + 32) = v19;
  *(v12 + 40) = v13;
  *(v12 + 48) = v9;
  *(v12 + 56) = v11;
  v14 = sub_261CFCDC4();

  return v14;
}

uint64_t sub_261BFF8A8()
{
  v0 = sub_261CFCDF4();
  v1 = sub_261CFCDF4();
  v2 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_261D01420;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = sub_261CFCDE4();

  return v4;
}

uint64_t sub_261BFF980(uint64_t a1)
{
  v29 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC718, &qword_261D0AA60);
  v28 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v25 = v19 - v1;
  v23 = sub_261CFCDB4();
  v2 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC720, &qword_261D0AA68);
  MEMORY[0x28223BE20](v5);
  sub_261B3130C();
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v27 = sub_261C0FC3C(&qword_280D224D0, type metadata accessor for SectionEntity, &protocol conformance descriptor for SectionEntity);
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  LODWORD(v22) = *MEMORY[0x277CB9F50];
  v21 = *(v2 + 104);
  v6 = v23;
  v21(v4);
  sub_261CFCE54();
  v7 = *(v2 + 8);
  v19[1] = v2 + 8;
  v20 = v7;
  v7(v4, v6);
  sub_261CFCE74();
  v8 = v25;
  sub_261CFCE94();
  v24 = sub_261CFCDD4();
  v9 = *(v28 + 8);
  v28 += 8;
  v19[0] = v9;
  v10 = v8;
  v11 = v26;
  v9(v10, v26);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  (v21)(v4, v22, v6);
  sub_261CFCE54();
  v20(v4, v6);
  sub_261CFCE74();
  v12 = v25;
  sub_261CFCE94();
  v23 = sub_261CFCDD4();
  v13 = v19[0];
  (v19[0])(v12, v11);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v22 = sub_261CFCDD4();
  v13(v12, v11);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261BD1DA8();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v14 = sub_261CFCDD4();
  v13(v12, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC728, &qword_261D0AA70);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_261D01430;
  v16 = v23;
  *(v15 + 32) = v24;
  *(v15 + 40) = v16;
  *(v15 + 48) = v22;
  *(v15 + 56) = v14;
  v17 = sub_261CFCDC4();

  return v17;
}

uint64_t sub_261C000A0()
{
  v0 = sub_261CFCE34();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_261C0FC3C(&qword_280D224D0, type metadata accessor for SectionEntity, &protocol conformance descriptor for SectionEntity);
  sub_261CFCDA4();

  sub_261B3130C();
  sub_261CFCE24();
  v4 = sub_261CFCE14();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_261BD1DA8();
  sub_261CFCDA4();

  sub_261CFCE24();
  v6 = sub_261CFCE14();
  v5(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC4A0, &qword_261D0A1D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_261D01400;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = sub_261CFCE04();

  return v8;
}

uint64_t sub_261C002C0()
{
  v0 = sub_261CFCDF4();
  v1 = sub_261CFCDF4();
  v2 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_261D01420;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = sub_261CFCDE4();

  return v4;
}

uint64_t sub_261C0038C(uint64_t a1)
{
  v25 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC700, &qword_261D0A9F0);
  v2 = *(v1 - 8);
  v27 = v1;
  v28 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - v3;
  v5 = sub_261CFCDB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC708, &qword_261D0A9F8);
  MEMORY[0x28223BE20](v9);
  sub_261B31750();
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v26 = sub_261C0FC3C(&qword_280D22790, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  (*(v6 + 104))(v8, *MEMORY[0x277CB9F50], v5);
  sub_261CFCE54();
  (*(v6 + 8))(v8, v5);
  sub_261CFCE74();
  sub_261CFCE94();
  v10 = sub_261CFCDD4();
  v11 = v27;
  v12 = *(v28 + 8);
  v23 = v10;
  v24 = v12;
  v28 += 8;
  v12(v4, v27);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v22 = sub_261CFCDD4();
  v13 = v11;
  v14 = v24;
  v24(v4, v13);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v21 = sub_261CFCDD4();
  v15 = v27;
  v14(v4, v27);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v16 = sub_261CFCDD4();
  v24(v4, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC710, &qword_261D0AA00);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_261D01430;
  v18 = v22;
  *(v17 + 32) = v23;
  *(v17 + 40) = v18;
  *(v17 + 48) = v21;
  *(v17 + 56) = v16;
  v19 = sub_261CFCDC4();

  return v19;
}

uint64_t sub_261C009CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v5 = sub_261CFCE34();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_261C0FC3C(&qword_280D22790, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  sub_261CFCDA4();

  a3(v9);
  sub_261CFCE24();
  v10 = sub_261CFCE14();
  (*(v6 + 8))(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC4A0, &qword_261D0A1D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_261D03450;
  *(v11 + 32) = v10;
  v12 = sub_261CFCE04();

  return v12;
}

uint64_t sub_261C00B74()
{
  v0 = sub_261CFCDF4();
  v1 = sub_261CFCDF4();
  v2 = sub_261CFCDF4();
  v3 = sub_261CFCDF4();
  v4 = sub_261CFCDF4();
  v5 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_261D05320;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = sub_261CFCDE4();

  return v7;
}

uint64_t sub_261C00C8C(uint64_t a1)
{
  v16 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC6E8, &qword_261D0A9B0);
  v18 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = v12 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC6F0, &qword_261D0A9B8);
  MEMORY[0x28223BE20](v4);
  sub_261B3199C();
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v12[1] = sub_261C0FC3C(&qword_280D22350, type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v15 = sub_261CFCDD4();
  v17 = *(v18 + 8);
  v18 += 8;
  v12[0] = v1;
  v17(v3, v1);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v14 = sub_261CFCDD4();
  v17(v3, v1);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v13 = sub_261CFCDD4();
  v5 = v12[0];
  v6 = v17;
  v17(v3, v12[0]);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v7 = sub_261CFCDD4();
  v6(v3, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC6F8, &qword_261D0A9C0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_261D01430;
  v9 = v14;
  *(v8 + 32) = v15;
  *(v8 + 40) = v9;
  *(v8 + 48) = v13;
  *(v8 + 56) = v7;
  v10 = sub_261CFCDC4();

  return v10;
}

uint64_t sub_261C011DC()
{
  v0 = sub_261CFCE34();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_261C0FC3C(&qword_280D22350, type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);
  sub_261CFCDA4();

  sub_261B3199C();
  sub_261CFCE24();
  v4 = sub_261CFCE14();
  (*(v1 + 8))(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC4A0, &qword_261D0A1D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_261D03450;
  *(v5 + 32) = v4;
  v6 = sub_261CFCE04();

  return v6;
}

uint64_t sub_261C0137C()
{
  v0 = sub_261CFCDF4();
  v1 = sub_261CFCDF4();
  v2 = sub_261CFCDF4();
  v3 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_261D01430;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_261CFCDE4();

  return v5;
}

uint64_t sub_261C01478(uint64_t a1)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC6D0, &qword_261D0A970);
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v3 = &v24 - v2;
  v33 = sub_261CFCDB4();
  v4 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC6D8, &qword_261D0A978);
  MEMORY[0x28223BE20](v7);
  sub_261B317A4();
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v36 = sub_261C0F7BC();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  LODWORD(v30) = *MEMORY[0x277CB9F50];
  v8 = v4;
  v9 = *(v4 + 104);
  v28 = v4 + 104;
  v29 = v9;
  v25 = v6;
  v10 = v33;
  v9(v6);
  sub_261CFCE54();
  v11 = *(v8 + 8);
  v26 = v8 + 8;
  v27 = v11;
  v11(v6, v10);
  sub_261CFCE74();
  sub_261CFCE94();
  v32 = sub_261CFCDD4();
  v12 = *(v37 + 8);
  v37 += 8;
  v34 = v12;
  v13 = v35;
  v12(v3, v35);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v24 = a1;
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v31 = sub_261CFCDD4();
  v34(v3, v13);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  v14 = v25;
  v15 = v33;
  v29(v25, v30, v33);
  sub_261CFCE54();
  v27(v14, v15);
  sub_261CFCE74();
  sub_261CFCE94();
  v33 = sub_261CFCDD4();
  v16 = v34;
  v17 = v35;
  v34(v3, v35);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v30 = sub_261CFCDD4();
  v16(v3, v17);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v18 = sub_261CFCDD4();
  v16(v3, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC6E0, &qword_261D0A980);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_261D06F90;
  v20 = v31;
  *(v19 + 32) = v32;
  *(v19 + 40) = v20;
  v21 = v30;
  *(v19 + 48) = v33;
  *(v19 + 56) = v21;
  *(v19 + 64) = v18;
  v22 = sub_261CFCDC4();

  return v22;
}

uint64_t sub_261C01C18()
{
  v0 = sub_261CFCDF4();
  v1 = sub_261CFCDF4();
  v2 = sub_261CFCDF4();
  v3 = sub_261CFCDF4();
  v4 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_261D06F90;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = sub_261CFCDE4();

  return v6;
}

uint64_t sub_261C01D40(uint64_t a1)
{
  v27 = a1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC6B8, &qword_261D0A930);
  v28 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v2 = &v19 - v1;
  v3 = sub_261CFCDB4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC6C0, &qword_261D0A938);
  MEMORY[0x28223BE20](v7);
  sub_261B318F4();
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v26 = sub_261BAA204();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  (*(v4 + 104))(v6, *MEMORY[0x277CB9F50], v3);
  sub_261CFCE54();
  (*(v4 + 8))(v6, v3);
  sub_261CFCE74();
  sub_261CFCE94();
  v8 = sub_261CFCDD4();
  v9 = *(v28 + 8);
  v28 += 8;
  v23 = v8;
  v24 = v9;
  v10 = v25;
  v9(v2, v25);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v22 = sub_261CFCDD4();
  v24(v2, v10);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v21 = sub_261CFCDD4();
  v12 = v24;
  v11 = v25;
  v24(v2, v25);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v20 = sub_261CFCDD4();
  v12(v2, v11);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v13 = sub_261CFCDD4();
  v12(v2, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC6C8, &qword_261D0A940);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_261D06F90;
  v15 = v22;
  *(v14 + 32) = v23;
  *(v14 + 40) = v15;
  v16 = v20;
  *(v14 + 48) = v21;
  *(v14 + 56) = v16;
  *(v14 + 64) = v13;
  v17 = sub_261CFCDC4();

  return v17;
}

uint64_t sub_261C0244C()
{
  v0 = sub_261CFCDF4();
  v1 = sub_261CFCDF4();
  v2 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_261D01420;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = sub_261CFCDE4();

  return v4;
}

uint64_t sub_261C02518(uint64_t a1)
{
  v30 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC6A0, &qword_261D0A8F0);
  v38 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v2 = &v23 - v1;
  v34 = sub_261CFCDB4();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC6A8, &qword_261D0A8F8);
  MEMORY[0x28223BE20](v6);
  v7 = sub_261B315AC();
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v29 = sub_261C0FC3C(&qword_280D22668, type metadata accessor for GroupEntity, &protocol conformance descriptor for GroupEntity);
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  v8 = *MEMORY[0x277CB9F50];
  v9 = *(v3 + 104);
  v37 = v3 + 104;
  v33 = v8;
  v10 = v34;
  v9(v5, v8, v34);
  v32 = v9;
  sub_261CFCE54();
  v36 = *(v3 + 8);
  v36(v5, v10);
  v31 = v3 + 8;
  sub_261CFCE74();
  sub_261CFCE94();
  v26 = v7;
  v27 = v2;
  v25 = sub_261CFCDD4();
  v28 = *(v38 + 8);
  v38 += 8;
  v11 = v2;
  v12 = v35;
  v28(v11, v35);
  sub_261CFCE84();
  sub_261CFCE74();
  v13 = v34;
  v9(v5, v8, v34);
  sub_261CFCE54();
  v36(v5, v13);
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  v14 = v27;
  sub_261CFCE94();
  v24 = sub_261CFCDD4();
  v15 = v28;
  v28(v14, v12);
  sub_261CFCE84();
  sub_261CFCE74();
  v16 = v34;
  v32(v5, v33, v34);
  sub_261CFCE54();
  v36(v5, v16);
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  v17 = v27;
  sub_261CFCE94();
  v23 = sub_261CFCDD4();
  v15(v17, v35);
  sub_261CFCE84();
  sub_261CFCE74();
  v32(v5, v33, v16);
  sub_261CFCE54();
  v36(v5, v16);
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v18 = sub_261CFCDD4();
  v28(v17, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC6B0, &qword_261D0A900);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_261D01430;
  v20 = v24;
  *(v19 + 32) = v25;
  *(v19 + 40) = v20;
  *(v19 + 48) = v23;
  *(v19 + 56) = v18;
  v21 = sub_261CFCDC4();

  return v21;
}

uint64_t sub_261C02C98()
{
  v0 = sub_261CFCE34();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_261C0FC3C(&qword_280D22668, type metadata accessor for GroupEntity, &protocol conformance descriptor for GroupEntity);
  sub_261CFCDA4();

  sub_261B315AC();
  sub_261CFCE24();
  v4 = sub_261CFCE14();
  (*(v1 + 8))(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC4A0, &qword_261D0A1D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_261D03450;
  *(v5 + 32) = v4;
  v6 = sub_261CFCE04();

  return v6;
}

uint64_t sub_261C02E38()
{
  v0 = sub_261CFCDF4();
  v1 = sub_261CFCDF4();
  v2 = sub_261CFCDF4();
  v3 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_261D01430;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_261CFCDE4();

  return v5;
}

uint64_t sub_261C02F04(uint64_t a1)
{
  v18 = a1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC688, &qword_261D0A8B0);
  v1 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v3 = &v16 - v2;
  v4 = sub_261CFCDB4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC690, &qword_261D0A8B8);
  MEMORY[0x28223BE20](v8);
  sub_261B313B4();
  sub_261CFCE84();
  sub_261CFCE74();
  (*(v5 + 104))(v7, *MEMORY[0x277CB9F50], v4);
  sub_261CFCE54();
  (*(v5 + 8))(v7, v4);
  sub_261CFCE74();
  sub_261CFCE94();
  v17 = sub_261CFCDD4();
  v9 = *(v1 + 8);
  v10 = v19;
  v9(v3, v19);
  sub_261CFCE44();
  v16 = sub_261CFCDD4();
  v9(v3, v10);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261C0FA80();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v11 = sub_261CFCDD4();
  v9(v3, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC698, &qword_261D0A8C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_261D01420;
  v13 = v16;
  *(v12 + 32) = v17;
  *(v12 + 40) = v13;
  *(v12 + 48) = v11;
  v14 = sub_261CFCDC4();

  return v14;
}

uint64_t sub_261C03360(uint64_t a1)
{
  v30 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC668, &qword_261D0A868);
  v29 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v2 = &v19 - v1;
  v24 = sub_261CFCDB4();
  v28 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC670, &qword_261D0A870);
  MEMORY[0x28223BE20](v5);
  sub_261B31654();
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v27 = sub_261C0F9CC();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  v22 = *MEMORY[0x277CB9F50];
  v6 = v28;
  v21 = *(v28 + 104);
  v7 = v24;
  v21(v4);
  sub_261CFCE54();
  v8 = *(v6 + 8);
  v28 = v6 + 8;
  v20 = v8;
  v8(v4, v7);
  sub_261CFCE74();
  sub_261CFCE94();
  v23 = sub_261CFCDD4();
  v9 = *(v29 + 8);
  v29 += 8;
  v25 = v9;
  v10 = v26;
  v9(v2, v26);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  v11 = v24;
  (v21)(v4, v22, v24);
  sub_261CFCE54();
  v20(v4, v11);
  sub_261CFCE74();
  sub_261CFCE94();
  v28 = sub_261CFCDD4();
  v12 = v10;
  v25(v2, v10);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v24 = sub_261CFCDD4();
  v13 = v25;
  v25(v2, v12);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v14 = sub_261CFCDD4();
  v13(v2, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC678, &qword_261D0A878);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_261D01430;
  v16 = v28;
  *(v15 + 32) = v23;
  *(v15 + 40) = v16;
  *(v15 + 48) = v24;
  *(v15 + 56) = v14;
  v17 = sub_261CFCDC4();

  return v17;
}

uint64_t sub_261C03A3C()
{
  v0 = sub_261CFCDF4();
  v1 = sub_261CFCDF4();
  v2 = sub_261CFCDF4();
  v3 = sub_261CFCDF4();
  v4 = sub_261CFCDF4();
  v5 = sub_261CFCDF4();
  v6 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_261D083A0;
  *(v7 + 32) = v0;
  *(v7 + 40) = v1;
  *(v7 + 48) = v2;
  *(v7 + 56) = v3;
  *(v7 + 64) = v4;
  *(v7 + 72) = v5;
  *(v7 + 80) = v6;
  v8 = sub_261CFCDE4();

  return v8;
}

uint64_t sub_261C03B70(uint64_t a1)
{
  v26 = a1;
  v23 = sub_261CFCDB4();
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v20 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC640, &qword_261D0A820);
  v2 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC648, &qword_261D0A828);
  MEMORY[0x28223BE20](v5);
  sub_261B31600();
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v24 = sub_261C0F918();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v22 = sub_261CFCDD4();
  v6 = *(v2 + 8);
  v25 = v2 + 8;
  v7 = v18;
  v6(v4, v18);
  v17 = v6;
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v19 = sub_261CFCDD4();
  v6(v4, v7);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  v9 = v20;
  v8 = v21;
  v10 = v23;
  (*(v21 + 104))(v20, *MEMORY[0x277CB9F50], v23);
  sub_261CFCE54();
  (*(v8 + 8))(v9, v10);
  sub_261CFCE74();
  sub_261CFCE94();
  v23 = sub_261CFCDD4();
  v11 = v17;
  v17(v4, v7);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v12 = sub_261CFCDD4();
  v11(v4, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC650, &qword_261D0A830);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_261D01430;
  v14 = v19;
  *(v13 + 32) = v22;
  *(v13 + 40) = v14;
  *(v13 + 48) = v23;
  *(v13 + 56) = v12;
  v15 = sub_261CFCDC4();

  return v15;
}

uint64_t sub_261C041D4()
{
  v0 = sub_261CFCDF4();
  v1 = sub_261CFCDF4();
  v2 = sub_261CFCDF4();
  v3 = sub_261CFCDF4();
  v4 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_261D06F90;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = sub_261CFCDE4();

  return v6;
}

uint64_t sub_261C042C8(uint64_t a1)
{
  v2 = sub_261CFCDB4();
  v20 = *(v2 - 8);
  v21 = v2;
  MEMORY[0x28223BE20](v2);
  v19 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC618, &qword_261D0A7D8);
  v25 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC620, &qword_261D0A7E0);
  MEMORY[0x28223BE20](v6);
  sub_261B316A8();
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v23 = sub_261B834D8();
  v17[1] = a1;
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v22 = sub_261CFCDD4();
  v24 = *(v25 + 8);
  v25 += 8;
  v7 = v18;
  v24(v5, v18);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  v9 = v19;
  v8 = v20;
  v10 = v21;
  (*(v20 + 104))(v19, *MEMORY[0x277CB9F50], v21);
  sub_261CFCE54();
  (*(v8 + 8))(v9, v10);
  sub_261CFCE74();
  sub_261CFCE94();
  v21 = sub_261CFCDD4();
  v24(v5, v7);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v20 = sub_261CFCDD4();
  v11 = v24;
  v24(v5, v7);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v12 = sub_261CFCDD4();
  v11(v5, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC628, &qword_261D0A7E8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_261D01430;
  v14 = v21;
  *(v13 + 32) = v22;
  *(v13 + 40) = v14;
  *(v13 + 48) = v20;
  *(v13 + 56) = v12;
  v15 = sub_261CFCDC4();

  return v15;
}

uint64_t sub_261C04908()
{
  v0 = sub_261CFCDF4();
  v1 = sub_261CFCDF4();
  v2 = sub_261CFCDF4();
  v3 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_261D01430;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_261CFCDE4();

  return v5;
}

uint64_t sub_261C04A04(uint64_t a1)
{
  v35 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC600, &qword_261D0A798);
  v2 = *(v1 - 8);
  v36 = v1;
  v37 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - v3;
  v5 = sub_261CFCDB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC608, &qword_261D0A7A0);
  MEMORY[0x28223BE20](v9);
  sub_261B318A0();
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v34 = sub_261C0F864();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  v32 = *MEMORY[0x277CB9F50];
  v10 = *(v6 + 104);
  v30 = v6 + 104;
  v31 = v10;
  v26 = v8;
  v27 = v5;
  v10(v8);
  sub_261CFCE54();
  v11 = *(v6 + 8);
  v28 = v6 + 8;
  v29 = v11;
  v11(v8, v5);
  sub_261CFCE74();
  sub_261CFCE94();
  v33 = sub_261CFCDD4();
  v12 = v36;
  v13 = *(v37 + 8);
  v37 += 8;
  v38 = v13;
  v13(v4, v36);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v25 = sub_261CFCDD4();
  v38(v4, v12);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v24 = sub_261CFCDD4();
  v14 = v36;
  v38(v4, v36);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  v16 = v26;
  v15 = v27;
  v31(v26, v32, v27);
  sub_261CFCE54();
  v29(v16, v15);
  sub_261CFCE74();
  sub_261CFCE94();
  v17 = sub_261CFCDD4();
  v38(v4, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC610, &qword_261D0A7A8);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_261D01430;
  v19 = v24;
  v20 = v25;
  *(v18 + 32) = v33;
  *(v18 + 40) = v20;
  *(v18 + 48) = v19;
  *(v18 + 56) = v17;
  v21 = sub_261CFCDC4();

  return v21;
}

uint64_t sub_261C050D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC5E8, &qword_261D0A750);
  v3 = *(v2 - 8);
  v37 = v2;
  v38 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC5F0, &qword_261D0A758);
  MEMORY[0x28223BE20](v6);
  v7 = sub_261B312B8();
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v35 = sub_261C0FC3C(&qword_280D22350, type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v32 = sub_261CFCDD4();
  v34 = *(v38 + 8);
  v38 += 8;
  v34(v5, v2);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  v36 = sub_261BD1E2C();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v31 = sub_261CFCDD4();
  v8 = v37;
  v9 = v34;
  v34(v5, v37);
  sub_261CFCE84();
  v27 = "Complete this reminder ";
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v30 = sub_261CFCDD4();
  v9(v5, v8);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v33 = a1;
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v29 = sub_261CFCDD4();
  v10 = v34;
  v34(v5, v37);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v28 = sub_261CFCDD4();
  v11 = v37;
  v10(v5, v37);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v26 = sub_261CFCDD4();
  v34(v5, v11);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v25 = sub_261CFCDD4();
  v34(v5, v37);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v23 = v7;
  v27 = sub_261CFCDD4();
  v12 = v37;
  v34(v5, v37);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v24 = sub_261CFCDD4();
  v13 = v34;
  v34(v5, v12);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v14 = sub_261CFCDD4();
  v13(v5, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC5F8, &qword_261D0A760);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_261D01410;
  v16 = v31;
  *(v15 + 32) = v32;
  *(v15 + 40) = v16;
  v17 = v29;
  *(v15 + 48) = v30;
  *(v15 + 56) = v17;
  v19 = v25;
  v18 = v26;
  *(v15 + 64) = v28;
  *(v15 + 72) = v18;
  v20 = v27;
  *(v15 + 80) = v19;
  *(v15 + 88) = v20;
  *(v15 + 96) = v24;
  *(v15 + 104) = v14;
  v21 = sub_261CFCDC4();

  return v21;
}

uint64_t sub_261C05EAC()
{
  v0 = sub_261CFCE34();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_261C0FC3C(&qword_280D22350, type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);
  sub_261CFCDA4();

  sub_261B312B8();
  sub_261CFCE24();
  v4 = sub_261CFCE14();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_261BD1E2C();
  sub_261CFCDA4();

  sub_261CFCE24();
  v6 = sub_261CFCE14();
  v5(v3, v0);
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE24();
  v7 = sub_261CFCE14();
  v5(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC4A0, &qword_261D0A1D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_261D01420;
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  *(v8 + 48) = v7;
  v9 = sub_261CFCE04();

  return v9;
}

uint64_t sub_261C06148()
{
  v0 = sub_261CFCDF4();
  v1 = sub_261CFCDF4();
  v2 = sub_261CFCDF4();
  v3 = sub_261CFCDF4();
  v4 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_261D06F90;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = sub_261CFCDE4();

  return v6;
}

uint64_t sub_261C0626C()
{
  v0 = sub_261CFCDF4();
  v1 = sub_261CFCDF4();
  v2 = sub_261CFCDF4();
  v3 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_261D01430;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_261CFCDE4();

  return v5;
}

uint64_t sub_261C06388()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC5D0, &qword_261D0A6C0);
  v1 = *(v0 - 8);
  v16 = v0;
  v17 = v1;
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC5D8, &qword_261D0A6C8);
  MEMORY[0x28223BE20](v4);
  sub_261B31C90();
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261BD1E2C();
  sub_261CFCDA4();

  sub_261CFCE64();

  v14 = "Change the list layout to ";
  sub_261CFCE74();
  sub_261CFCE94();
  v15 = sub_261CFCDD4();
  v5 = v16;
  v12 = *(v17 + 8);
  v17 += 8;
  v12(v3, v16);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v13 = sub_261CFCDD4();
  v6 = v12;
  v12(v3, v5);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v7 = sub_261CFCDD4();
  v6(v3, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC5E0, &qword_261D0A6D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_261D01420;
  v9 = v13;
  *(v8 + 32) = v15;
  *(v8 + 40) = v9;
  *(v8 + 48) = v7;
  v10 = sub_261CFCDC4();

  return v10;
}

uint64_t sub_261C06804()
{
  v0 = sub_261CFCDF4();
  v1 = sub_261CFCDF4();
  v2 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_261D01420;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = sub_261CFCDE4();

  return v4;
}

uint64_t sub_261C068B8(uint64_t a1)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC5B8, &qword_261D0A680);
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v3 = v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC5C0, &qword_261D0A688);
  MEMORY[0x28223BE20](v4);
  sub_261B31B94();
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261AFFAAC();
  v13[1] = a1;
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v5 = sub_261CFCDD4();
  v13[0] = *(v17 + 8);
  v16 = v5;
  v17 += 8;
  v6 = v15;
  (v13[0])(v3, v15);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v14 = sub_261CFCDD4();
  v7 = v13[0];
  (v13[0])(v3, v6);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v8 = sub_261CFCDD4();
  v7(v3, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC5C8, &qword_261D0A690);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_261D01420;
  v10 = v14;
  *(v9 + 32) = v16;
  *(v9 + 40) = v10;
  *(v9 + 48) = v8;
  v11 = sub_261CFCDC4();

  return v11;
}

uint64_t sub_261C06D54(uint64_t a1)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC5A0, &qword_261D0A640);
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC5A8, &qword_261D0A648);
  MEMORY[0x28223BE20](v4);
  sub_261B31B40();
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261BD1E2C();
  v13 = a1;
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v5 = sub_261CFCDD4();
  v14 = *(v18 + 8);
  v17 = v5;
  v18 += 8;
  v6 = v16;
  v14(v3, v16);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v15 = sub_261CFCDD4();
  v7 = v14;
  v14(v3, v6);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v8 = sub_261CFCDD4();
  v7(v3, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC5B0, &qword_261D0A650);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_261D01420;
  v10 = v15;
  *(v9 + 32) = v17;
  *(v9 + 40) = v10;
  *(v9 + 48) = v8;
  v11 = sub_261CFCDC4();

  return v11;
}

uint64_t sub_261C071E8(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v7 = sub_261CFCE34();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  a3();
  sub_261CFCDA4();

  a4(v11);
  sub_261CFCE24();
  v12 = sub_261CFCE14();
  (*(v8 + 8))(v10, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC4A0, &qword_261D0A1D0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_261D03450;
  *(v13 + 32) = v12;
  v14 = sub_261CFCE04();

  return v14;
}

uint64_t sub_261C07368()
{
  v0 = sub_261CFCDF4();
  v1 = sub_261CFCDF4();
  v2 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_261D01420;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = sub_261CFCDE4();

  return v4;
}

uint64_t sub_261C07418()
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC588, &qword_261D0A600);
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v1 = &v10 - v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC590, &qword_261D0A608);
  MEMORY[0x28223BE20](v2);
  sub_261B31BE8();
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v12 = sub_261C0FC3C(&qword_280D22790, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  v16 = sub_261B00334();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v14 = sub_261CFCDD4();
  v11 = *(v17 + 8);
  v17 += 8;
  v3 = v15;
  v11(v1, v15);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v13 = sub_261CFCDD4();
  v4 = v11;
  v11(v1, v3);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v5 = sub_261CFCDD4();
  v4(v1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC598, &qword_261D0A610);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_261D01420;
  v7 = v13;
  *(v6 + 32) = v14;
  *(v6 + 40) = v7;
  *(v6 + 48) = v5;
  v8 = sub_261CFCDC4();

  return v8;
}

uint64_t sub_261C07998()
{
  v0 = sub_261CFCE34();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_261B00334();
  sub_261CFCDA4();

  sub_261B31BE8();
  sub_261CFCE24();
  v4 = sub_261CFCE14();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_261C0FC3C(&qword_280D22790, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  sub_261CFCDA4();

  sub_261CFCE24();
  v6 = sub_261CFCE14();
  v5(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC4A0, &qword_261D0A1D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_261D01400;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = sub_261CFCE04();

  return v8;
}

uint64_t sub_261C07BB8()
{
  v0 = sub_261CFCDF4();
  v1 = sub_261CFCDF4();
  v2 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_261D01420;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = sub_261CFCDE4();

  return v4;
}

uint64_t sub_261C07CB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC570, &qword_261D0A598);
  v19 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC578, &qword_261D0A5A0);
  MEMORY[0x28223BE20](v5);
  sub_261BDA868();
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v15 = sub_261BD1E2C();
  v12 = a1;
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  v18 = sub_261BAA204();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v17 = sub_261CFCDD4();
  v13 = *(v19 + 8);
  v14 = v2;
  v19 += 8;
  v13(v4, v2);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v16 = sub_261CFCDD4();
  v6 = v13;
  v13(v4, v2);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v7 = sub_261CFCDD4();
  v6(v4, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC580, &qword_261D0A5A8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_261D01420;
  v9 = v16;
  *(v8 + 32) = v17;
  *(v8 + 40) = v9;
  *(v8 + 48) = v7;
  v10 = sub_261CFCDC4();

  return v10;
}

uint64_t sub_261C081F8()
{
  v0 = sub_261CFCE34();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_261BD1E2C();
  sub_261CFCDA4();

  sub_261BDA868();
  sub_261CFCE24();
  v4 = sub_261CFCE14();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_261BAA204();
  sub_261CFCDA4();

  sub_261CFCE24();
  v6 = sub_261CFCE14();
  v5(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC4A0, &qword_261D0A1D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_261D01400;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = sub_261CFCE04();

  return v8;
}

uint64_t sub_261C083E8()
{
  v0 = sub_261CFCDF4();
  v1 = sub_261CFCDF4();
  v2 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_261D01420;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = sub_261CFCDE4();

  return v4;
}

uint64_t sub_261C08498()
{
  v0 = sub_261CFCDF4();
  v1 = sub_261CFCDF4();
  v2 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_261D01420;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = sub_261CFCDE4();

  return v4;
}

uint64_t sub_261C0855C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC558, &qword_261D0A508);
  v3 = *(v2 - 8);
  v25 = v2;
  v26 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC560, &qword_261D0A510);
  MEMORY[0x28223BE20](v6);
  v7 = sub_261B31C3C();
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v24 = sub_261C0FC3C(&qword_280D22790, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  v23 = sub_261AFFEF0();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v18[1] = v7;
  v8 = sub_261CFCDD4();
  v9 = v25;
  v10 = *(v26 + 8);
  v21 = v8;
  v22 = v10;
  v26 += 8;
  v10(v5, v25);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v18[0] = a1;
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v20 = sub_261CFCDD4();
  v11 = v9;
  v12 = v22;
  v22(v5, v11);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v19 = sub_261CFCDD4();
  v12(v5, v25);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v13 = sub_261CFCDD4();
  v22(v5, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC568, &qword_261D0A540);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_261D01430;
  v15 = v20;
  *(v14 + 32) = v21;
  *(v14 + 40) = v15;
  *(v14 + 48) = v19;
  *(v14 + 56) = v13;
  v16 = sub_261CFCDC4();

  return v16;
}

uint64_t sub_261C08C70()
{
  v0 = sub_261CFCDF4();
  v1 = sub_261CFCDF4();
  v2 = sub_261CFCDF4();
  v3 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_261D01430;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_261CFCDE4();

  return v5;
}

uint64_t sub_261C08D4C(uint64_t a1)
{
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC540, &qword_261D0A4C8);
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v3 = &v16 - v2;
  v19 = sub_261CFCDB4();
  v4 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC548, &qword_261D0A4D0);
  MEMORY[0x28223BE20](v7);
  sub_261B31AEC();
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v18 = sub_261C0FC3C(&qword_280D22790, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  v20 = a1;
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  v22 = sub_261C0FC3C(&qword_280D22668, type metadata accessor for GroupEntity, &protocol conformance descriptor for GroupEntity);
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  v8 = v19;
  (*(v4 + 104))(v6, *MEMORY[0x277CB9F50], v19);
  sub_261CFCE54();
  (*(v4 + 8))(v6, v8);
  sub_261CFCE74();
  sub_261CFCE94();
  v19 = sub_261CFCDD4();
  v16 = *(v23 + 8);
  v23 += 8;
  v9 = v21;
  v16(v3, v21);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v17 = sub_261CFCDD4();
  v10 = v16;
  v16(v3, v9);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v11 = sub_261CFCDD4();
  v10(v3, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC550, &qword_261D0A4D8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_261D01420;
  v13 = v17;
  *(v12 + 32) = v19;
  *(v12 + 40) = v13;
  *(v12 + 48) = v11;
  v14 = sub_261CFCDC4();

  return v14;
}

uint64_t sub_261C0940C()
{
  v0 = sub_261CFCE34();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_261C0FC3C(&qword_280D22668, type metadata accessor for GroupEntity, &protocol conformance descriptor for GroupEntity);
  sub_261CFCDA4();

  sub_261B31AEC();
  sub_261CFCE24();
  v4 = sub_261CFCE14();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_261C0FC3C(&qword_280D22790, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  sub_261CFCDA4();

  sub_261CFCE24();
  v6 = sub_261CFCE14();
  v5(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC4A0, &qword_261D0A1D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_261D01400;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = sub_261CFCE04();

  return v8;
}

uint64_t sub_261C096A0(uint64_t a1)
{
  v13[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC528, &qword_261D0A460);
  v14 = *(v1 - 8);
  v15 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = v13 - v2;
  v4 = sub_261CFCDB4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC530, &qword_261D0A468);
  MEMORY[0x28223BE20](v8);
  sub_261B31A98();
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261C0FC3C(&qword_280D22790, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  (*(v5 + 104))(v7, *MEMORY[0x277CB9F50], v4);
  sub_261CFCE54();
  (*(v5 + 8))(v7, v4);
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261B0DDE4();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v9 = sub_261CFCDD4();
  (*(v14 + 8))(v3, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC538, &qword_261D0A470);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_261D03450;
  *(v10 + 32) = v9;
  v11 = sub_261CFCDC4();

  return v11;
}

uint64_t sub_261C09A64()
{
  v0 = sub_261CFCE34();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_261B0DDE4();
  sub_261CFCDA4();

  sub_261B31A98();
  sub_261CFCE24();
  v4 = sub_261CFCE14();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_261C0FC3C(&qword_280D22790, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  sub_261CFCDA4();

  sub_261CFCE24();
  v6 = sub_261CFCE14();
  v5(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC4A0, &qword_261D0A1D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_261D01400;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = sub_261CFCE04();

  return v8;
}

uint64_t sub_261C09CAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC510, &qword_261D0A3F8);
  v14 = *(v0 - 8);
  v15 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v12 - v1;
  v13 = sub_261CFCDB4();
  v3 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC518, &qword_261D0A400);
  MEMORY[0x28223BE20](v6);
  sub_261B31A44();
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261C0FC3C(&qword_280D22790, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261BBB440();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  v7 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277CB9F50], v13);
  sub_261CFCE54();
  (*(v3 + 8))(v5, v7);
  sub_261CFCE74();
  sub_261CFCE94();
  v8 = sub_261CFCDD4();
  (*(v14 + 8))(v2, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC520, &qword_261D0A408);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_261D03450;
  *(v9 + 32) = v8;
  v10 = sub_261CFCDC4();

  return v10;
}

uint64_t sub_261C0A068()
{
  v0 = sub_261CFCE34();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_261BBB440();
  sub_261CFCDA4();

  sub_261B31A44();
  sub_261CFCE24();
  v4 = sub_261CFCE14();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_261C0FC3C(&qword_280D22790, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  sub_261CFCDA4();

  sub_261CFCE24();
  v6 = sub_261CFCE14();
  v5(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC4A0, &qword_261D0A1D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_261D01400;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = sub_261CFCE04();

  return v8;
}

uint64_t sub_261C0A2B8(uint64_t a1)
{
  v18 = sub_261CFCDB4();
  v2 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC4F8, &qword_261D0A390);
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v6 = v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC500, &qword_261D0A398);
  MEMORY[0x28223BE20](v7);
  sub_261B319F0();
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v15[3] = sub_261C0FC3C(&qword_280D22790, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  v15[1] = a1;
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  v15[2] = sub_261C0F7BC();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v16 = sub_261CFCDD4();
  v8 = *(v19 + 8);
  v19 += 8;
  v9 = v17;
  v8(v6, v17);
  sub_261CFCE84();
  sub_261CFCE74();
  v10 = v18;
  (*(v2 + 104))(v4, *MEMORY[0x277CB9F50], v18);
  sub_261CFCE54();
  (*(v2 + 8))(v4, v10);
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v11 = sub_261CFCDD4();
  v8(v6, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC508, &qword_261D0A3A0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_261D01400;
  *(v12 + 32) = v16;
  *(v12 + 40) = v11;
  v13 = sub_261CFCDC4();

  return v13;
}

uint64_t sub_261C0A7D4()
{
  v0 = sub_261CFCE34();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_261C0F7BC();
  sub_261CFCDA4();

  sub_261B319F0();
  sub_261CFCE24();
  v4 = sub_261CFCE14();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_261C0FC3C(&qword_280D22790, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  sub_261CFCDA4();

  sub_261CFCE24();
  v6 = sub_261CFCE14();
  v5(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC4A0, &qword_261D0A1D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_261D01400;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = sub_261CFCE04();

  return v8;
}

uint64_t sub_261C0AA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_261CFCDF4();
  v5 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_261D01400;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  v7 = sub_261CFCDE4();

  return v7;
}

uint64_t sub_261C0AADC(uint64_t a1)
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC4E0, &qword_261D0A328);
  v26 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v3 = v21 - v2;
  v4 = sub_261CFCDB4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC4E8, &qword_261D0A330);
  MEMORY[0x28223BE20](v8);
  sub_261B316FC();
  sub_261CFCE84();
  sub_261CFCE74();
  v30 = *MEMORY[0x277CB9F50];
  v9 = *(v5 + 104);
  v23 = v5 + 104;
  v29 = v9;
  v25 = v4;
  v9(v7);
  v22 = v7;
  sub_261CFCE54();
  v10 = *(v5 + 8);
  v27 = v5 + 8;
  v28 = v10;
  v10(v7, v4);
  sub_261CFCE74();
  swift_getKeyPath();
  v24 = sub_261C0FC3C(&qword_280D224D0, type metadata accessor for SectionEntity, &protocol conformance descriptor for SectionEntity);
  v32 = a1;
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  v21[1] = sub_261C0F7BC();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  v21[0] = v3;
  sub_261CFCE94();
  v31 = sub_261CFCDD4();
  v11 = *(v26 + 8);
  v12 = v33;
  v11(v3, v33);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  v13 = v21[0];
  sub_261CFCE94();
  v26 = sub_261CFCDD4();
  v11(v13, v12);
  sub_261CFCE84();
  sub_261CFCE74();
  v14 = v22;
  v15 = v25;
  v29(v22, v30, v25);
  sub_261CFCE54();
  v28(v14, v15);
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v16 = sub_261CFCDD4();
  v11(v13, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC4F0, &qword_261D0A338);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_261D01420;
  v18 = v26;
  *(v17 + 32) = v31;
  *(v17 + 40) = v18;
  *(v17 + 48) = v16;
  v19 = sub_261CFCDC4();

  return v19;
}

uint64_t sub_261C0B15C()
{
  v0 = sub_261CFCE34();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_261C0F7BC();
  sub_261CFCDA4();

  sub_261B316FC();
  sub_261CFCE24();
  v4 = sub_261CFCE14();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_261C0FC3C(&qword_280D224D0, type metadata accessor for SectionEntity, &protocol conformance descriptor for SectionEntity);
  sub_261CFCDA4();

  sub_261CFCE24();
  v6 = sub_261CFCE14();
  v5(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC4A0, &qword_261D0A1D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_261D01400;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = sub_261CFCE04();

  return v8;
}

uint64_t sub_261C0B39C(uint64_t a1, uint64_t a2)
{
  v2 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_261D03450;
  *(v3 + 32) = v2;
  v4 = sub_261CFCDE4();

  return v4;
}

uint64_t sub_261C0B408(uint64_t a1)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC4C0, &qword_261D0A298);
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v3 = &v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC4C8, &qword_261D0A2A0);
  MEMORY[0x28223BE20](v4);
  sub_261B31264();
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v23 = sub_261C0F810();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  v30 = sub_261C0F738();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  v27 = sub_261B834D8();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v5 = sub_261CFCDD4();
  v6 = *(v31 + 8);
  v31 += 8;
  v25 = v5;
  v26 = v6;
  v7 = v29;
  v6(v3, v29);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v28 = a1;
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v24 = sub_261CFCDD4();
  v8 = v7;
  v9 = v26;
  v26(v3, v8);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v22 = sub_261CFCDD4();
  v9(v3, v29);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v27 = sub_261CFCDD4();
  v10 = v29;
  v11 = v26;
  v26(v3, v29);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v23 = sub_261CFCDD4();
  v11(v3, v10);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v21 = sub_261CFCDD4();
  v12 = v29;
  v11(v3, v29);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v13 = sub_261CFCDD4();
  v11(v3, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC4D8, &qword_261D0A2D0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_261D083A0;
  v15 = v24;
  *(v14 + 32) = v25;
  *(v14 + 40) = v15;
  v16 = v27;
  *(v14 + 48) = v22;
  *(v14 + 56) = v16;
  v17 = v21;
  *(v14 + 64) = v23;
  *(v14 + 72) = v17;
  *(v14 + 80) = v13;
  v18 = sub_261CFCDC4();

  return v18;
}

uint64_t sub_261C0BE40()
{
  v0 = sub_261CFCE34();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_261C0F738();
  sub_261CFCDA4();

  sub_261B31264();
  sub_261CFCE24();
  v4 = sub_261CFCE14();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_261B834D8();
  sub_261CFCDA4();

  sub_261CFCE24();
  v6 = sub_261CFCE14();
  v5(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC4A0, &qword_261D0A1D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_261D01400;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = sub_261CFCE04();

  return v8;
}

uint64_t sub_261C0C030()
{
  v0 = sub_261CFCDF4();
  v1 = sub_261CFCDF4();
  v2 = sub_261CFCDF4();
  v3 = sub_261CFCDF4();
  v4 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_261D06F90;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = sub_261CFCDE4();

  return v6;
}

uint64_t sub_261C0C124()
{
  v0 = sub_261CFCDF4();
  v1 = sub_261CFCDF4();
  v2 = sub_261CFCDF4();
  v3 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_261D01430;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_261CFCDE4();

  return v5;
}

uint64_t sub_261C0C214(uint64_t a1)
{
  v59 = sub_261CFCDB4();
  v61 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC4A8, &qword_261D0A1D8);
  v3 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v5 = &v45 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC4B0, &qword_261D0A1E0);
  MEMORY[0x28223BE20](v6);
  v7 = sub_261BCAC34();
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v69 = sub_261B834D8();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  v63 = sub_261BCD8BC();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  v60 = sub_261C0F51C();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  v65 = sub_261BCDCD8();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  v64 = v5;
  sub_261CFCE94();
  v57 = sub_261CFCDD4();
  v8 = v3 + 8;
  v66 = *(v3 + 8);
  v9 = v68;
  v66(v5, v68);
  v67 = v8;
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  v10 = v64;
  sub_261CFCE94();
  v56 = sub_261CFCDD4();
  v66(v10, v9);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  v49 = *MEMORY[0x277CB9F50];
  v11 = v61;
  v12 = *(v61 + 104);
  v47 = v61 + 104;
  v48 = v12;
  v14 = v58;
  v13 = v59;
  v12(v58);
  sub_261CFCE54();
  v15 = *(v11 + 8);
  v61 = v11 + 8;
  v46 = v15;
  v15(v14, v13);
  sub_261CFCE74();
  v16 = v64;
  sub_261CFCE94();
  v55 = sub_261CFCDD4();
  v17 = v68;
  v66(v16, v68);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v62 = v7;
  v54 = sub_261CFCDD4();
  v66(v16, v17);
  sub_261CFCE84();
  v51 = "Start my washing machine";
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v53 = sub_261CFCDD4();
  v66(v16, v68);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v18 = a1;
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v52 = sub_261CFCDD4();
  v19 = v66;
  v66(v16, v68);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  v20 = v18;
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  v21 = v64;
  sub_261CFCE94();
  v50 = sub_261CFCDD4();
  v22 = v21;
  v23 = v68;
  v19(v22, v68);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  v24 = v20;
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  v60 = sub_261C0F5D0();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  v25 = v58;
  v26 = v59;
  v48(v58, v49, v59);
  sub_261CFCE54();
  v46(v25, v26);
  sub_261CFCE74();
  v27 = v64;
  sub_261CFCE94();
  v61 = sub_261CFCDD4();
  v28 = v23;
  v29 = v66;
  v66(v27, v28);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  v30 = v64;
  sub_261CFCE94();
  v59 = sub_261CFCDD4();
  v29(v30, v68);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  v31 = v30;
  sub_261CFCE94();
  v58 = sub_261CFCDD4();
  v32 = v66;
  v66(v30, v68);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v60 = sub_261CFCDD4();
  v32(v30, v68);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v45 = v24;
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  v63 = sub_261C0F684();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v51 = sub_261CFCDD4();
  v33 = v66;
  v66(v30, v68);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v65 = sub_261CFCDD4();
  v34 = v68;
  v33(v31, v68);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v35 = sub_261CFCDD4();
  v33(v31, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC4B8, &qword_261D0A238);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_261D0A070;
  v37 = v56;
  *(v36 + 32) = v57;
  *(v36 + 40) = v37;
  v38 = v54;
  *(v36 + 48) = v55;
  *(v36 + 56) = v38;
  v39 = v52;
  *(v36 + 64) = v53;
  *(v36 + 72) = v39;
  v40 = v61;
  *(v36 + 80) = v50;
  *(v36 + 88) = v40;
  v41 = v58;
  *(v36 + 96) = v59;
  *(v36 + 104) = v41;
  v42 = v51;
  *(v36 + 112) = v60;
  *(v36 + 120) = v42;
  *(v36 + 128) = v65;
  *(v36 + 136) = v35;
  v43 = sub_261CFCDC4();

  return v43;
}

uint64_t sub_261C0DBF8()
{
  v0 = sub_261CFCE34();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_261B834D8();
  sub_261CFCDA4();

  sub_261BCAC34();
  sub_261CFCE24();
  v4 = sub_261CFCE14();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_261C0F51C();
  sub_261CFCDA4();

  sub_261CFCE24();
  v6 = sub_261CFCE14();
  v5(v3, v0);
  swift_getKeyPath();
  sub_261C0F5D0();
  sub_261CFCDA4();

  sub_261CFCE24();
  v7 = sub_261CFCE14();
  v5(v3, v0);
  swift_getKeyPath();
  sub_261C0F684();
  sub_261CFCDA4();

  sub_261CFCE24();
  v8 = sub_261CFCE14();
  v5(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC4A0, &qword_261D0A1D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_261D01430;
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;
  *(v9 + 48) = v7;
  *(v9 + 56) = v8;
  v10 = sub_261CFCE04();

  return v10;
}

uint64_t sub_261C0DEDC()
{
  v0 = sub_261CFCDF4();
  v1 = sub_261CFCDF4();
  v2 = sub_261CFCDF4();
  v3 = sub_261CFCDF4();
  v4 = sub_261CFCDF4();
  v5 = sub_261CFCDF4();
  v6 = sub_261CFCDF4();
  v7 = sub_261CFCDF4();
  v8 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_261D0A040;
  *(v9 + 32) = v0;
  *(v9 + 40) = v1;
  *(v9 + 48) = v2;
  *(v9 + 56) = v3;
  *(v9 + 64) = v4;
  *(v9 + 72) = v5;
  *(v9 + 80) = v6;
  *(v9 + 88) = v7;
  *(v9 + 96) = v8;
  v10 = sub_261CFCDE4();

  return v10;
}

uint64_t sub_261C0E08C()
{
  v0 = sub_261CFCDF4();
  v1 = sub_261CFCDF4();
  v2 = sub_261CFCDF4();
  v3 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_261D01430;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_261CFCDE4();

  return v5;
}

uint64_t sub_261C0E16C()
{
  v0 = sub_261CFCDF4();
  v1 = sub_261CFCDF4();
  v2 = sub_261CFCDF4();
  v3 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_261D01430;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_261CFCDE4();

  return v5;
}

uint64_t sub_261C0E248()
{
  v0 = sub_261CFCDF4();
  v1 = sub_261CFCDF4();
  v2 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_261D01420;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = sub_261CFCDE4();

  return v4;
}

uint64_t sub_261C0E318()
{
  v0 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_261D03450;
  *(v1 + 32) = v0;
  v2 = sub_261CFCDE4();

  return v2;
}

uint64_t sub_261C0E3A4()
{
  v0 = sub_261CFCD94();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261B31558();
  sub_261CFCD84();
  v4 = sub_261CFCD74();
  (*(v1 + 8))(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC478, &qword_261D0A0F8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_261D03450;
  *(v5 + 32) = v4;
  v6 = sub_261CFCD64();

  return v6;
}

uint64_t sub_261C0E4F4()
{
  v0 = sub_261CFCEC4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  CreateListAppIntent.init()(&v53);
  v49 = v53;
  v50 = v54;
  sub_261B31558();
  sub_261CFCED4();
  v48 = sub_261CFCEB4();
  v4 = *(v1 + 8);
  v4(v3, v0);
  CreateReminderAppIntent.init()(&v53);
  sub_261B31408();
  sub_261CFCED4();
  v47 = sub_261CFCEB4();
  v4(v3, v0);
  CreateSectionAppIntent.init()(&v53);
  v49 = v53;
  v50 = v54;
  sub_261B0A88C();
  sub_261CFCED4();
  v46 = sub_261CFCEB4();
  v4(v3, v0);
  CreateCustomSmartListAppIntent.init()(&v53);
  sub_261B314B0();
  sub_261CFCED4();
  v45 = sub_261CFCEB4();
  v4(v3, v0);
  OpenSectionAppIntent.init()(&v53);
  v49 = v53;
  *&v50 = v54;
  sub_261B3130C();
  sub_261CFCED4();
  v44 = sub_261CFCEB4();
  v4(v3, v0);
  OpenListAppIntent.init()(&v53);
  v49 = v53;
  sub_261B31750();
  sub_261CFCED4();
  v43 = sub_261CFCEB4();
  v4(v3, v0);
  OpenReminderAppIntent.init()(&v53);
  v49 = v53;
  v50 = v54;
  v51 = v55;
  sub_261B3199C();
  sub_261CFCED4();
  v42 = sub_261CFCEB4();
  v4(v3, v0);
  OpenSearchAppIntent.init()(&v53);
  v49 = v53;
  sub_261B317A4();
  sub_261CFCED4();
  v41 = sub_261CFCEB4();
  v4(v3, v0);
  OpenSmartListAppIntent.init()(&v53);
  v49 = v53;
  sub_261B318F4();
  sub_261CFCED4();
  v40 = sub_261CFCEB4();
  v4(v3, v0);
  OpenGroupAppIntent.init()(&v53);
  v49 = v53;
  sub_261B315AC();
  sub_261CFCED4();
  v39 = sub_261CFCEB4();
  v4(v3, v0);
  OpenTagsAppIntent.init()(&v53);
  v49 = v53;
  sub_261B313B4();
  sub_261CFCED4();
  v38 = sub_261CFCEB4();
  v4(v3, v0);
  DeleteListsAppIntent.init()(&v53);
  v49 = v53;
  sub_261B31654();
  sub_261CFCED4();
  v37 = sub_261CFCEB4();
  v4(v3, v0);
  DeleteRemindersListGroupsAppIntent.init()(&v53);
  v49 = v53;
  *&v50 = v54;
  sub_261B31600();
  sub_261CFCED4();
  v36 = sub_261CFCEB4();
  v4(v3, v0);
  DeleteRemindersAppIntent.init()(&v53);
  v49 = v53;
  *&v50 = v54;
  sub_261B316A8();
  sub_261CFCED4();
  v35 = sub_261CFCEB4();
  v4(v3, v0);
  DeleteSectionsAppIntent.init()(&v53);
  v49 = v53;
  sub_261B318A0();
  sub_261CFCED4();
  v34 = sub_261CFCEB4();
  v4(v3, v0);
  CompleteReminderAppIntent.init()(&v53);
  v49 = v53;
  v50 = v54;
  sub_261B312B8();
  sub_261CFCED4();
  v33 = sub_261CFCEB4();
  v4(v3, v0);
  UpdateListIsPinnedAppIntent.init()(&v53);
  v49 = v53;
  *&v50 = v54;
  sub_261B31C90();
  sub_261CFCED4();
  v32 = sub_261CFCEB4();
  v4(v3, v0);
  UpdateListListLayoutAppIntent.init()(&v53);
  v49 = v53;
  LOBYTE(v50) = v54;
  *(&v50 + 1) = *(&v54 + 1);
  sub_261B31B94();
  sub_261CFCED4();
  v31 = sub_261CFCEB4();
  v4(v3, v0);
  UpdateListShowsCompletedAppIntent.init()(&v53);
  v49 = v53;
  *&v50 = v54;
  sub_261B31B40();
  sub_261CFCED4();
  v30 = sub_261CFCEB4();
  v4(v3, v0);
  UpdateListSortingStyleAppIntent.init()(&v53);
  v49 = v53;
  LOBYTE(v50) = v54;
  *(&v50 + 1) = *(&v54 + 1);
  sub_261B31BE8();
  sub_261CFCED4();
  v29 = sub_261CFCEB4();
  v4(v3, v0);
  UpdateSmartListIsHiddenAppIntent.init()(&v53);
  v49 = v53;
  *&v50 = v54;
  sub_261BDA868();
  sub_261CFCED4();
  v28 = sub_261CFCEB4();
  v4(v3, v0);
  UpdateListTypeAppIntent.init()(&v53);
  v49 = v53;
  LOBYTE(v50) = v54;
  *(&v50 + 1) = *(&v54 + 1);
  sub_261B31C3C();
  sub_261CFCED4();
  v27 = sub_261CFCEB4();
  v4(v3, v0);
  UpdateListParentAppIntent.init()(&v53);
  v49 = v53;
  LOBYTE(v50) = v54;
  *(&v50 + 1) = *(&v54 + 1);
  sub_261B31AEC();
  sub_261CFCED4();
  v26 = sub_261CFCEB4();
  v4(v3, v0);
  UpdateListBadgeAppIntent.init()(&v53);
  v49 = v53;
  LOBYTE(v50) = v54;
  *(&v50 + 1) = *(&v54 + 1);
  sub_261B31A98();
  sub_261CFCED4();
  v25 = sub_261CFCEB4();
  v4(v3, v0);
  UpdateListColorAppIntent.init()(&v53);
  v49 = v53;
  LOBYTE(v50) = v54;
  *(&v50 + 1) = *(&v54 + 1);
  sub_261B31A44();
  sub_261CFCED4();
  v5 = sub_261CFCEB4();
  v4(v3, v0);
  UpdateListNameAppIntent.init()(&v53);
  v49 = v53;
  *&v50 = v54;
  sub_261B319F0();
  sub_261CFCED4();
  v6 = sub_261CFCEB4();
  v4(v3, v0);
  UpdateSectionDisplayNameAppIntent.init()(&v53);
  v49 = v53;
  *&v50 = v54;
  sub_261B316FC();
  sub_261CFCED4();
  v7 = sub_261CFCEB4();
  v4(v3, v0);
  AddOrRemoveTagsAppIntent.init()(&v53);
  v49 = v53;
  v50 = v54;
  sub_261B31264();
  sub_261CFCED4();
  v8 = sub_261CFCEB4();
  v4(v3, v0);
  MoveRemindersAppIntent.init()(&v53);
  v49 = v53;
  v50 = v54;
  v51 = v55;
  v52 = v56;
  sub_261BCAC34();
  sub_261CFCED4();
  v9 = sub_261CFCEB4();
  v4(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC488, &qword_261D0A108);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_261D0A080;
  v11 = v47;
  *(v10 + 32) = v48;
  *(v10 + 40) = v11;
  v12 = v45;
  *(v10 + 48) = v46;
  *(v10 + 56) = v12;
  v13 = v43;
  *(v10 + 64) = v44;
  *(v10 + 72) = v13;
  v14 = v41;
  *(v10 + 80) = v42;
  *(v10 + 88) = v14;
  v15 = v39;
  *(v10 + 96) = v40;
  *(v10 + 104) = v15;
  v16 = v37;
  *(v10 + 112) = v38;
  *(v10 + 120) = v16;
  v17 = v35;
  *(v10 + 128) = v36;
  *(v10 + 136) = v17;
  v18 = v33;
  *(v10 + 144) = v34;
  *(v10 + 152) = v18;
  v19 = v31;
  *(v10 + 160) = v32;
  *(v10 + 168) = v19;
  v20 = v29;
  *(v10 + 176) = v30;
  *(v10 + 184) = v20;
  v21 = v27;
  *(v10 + 192) = v28;
  *(v10 + 200) = v21;
  v22 = v25;
  *(v10 + 208) = v26;
  *(v10 + 216) = v22;
  *(v10 + 224) = v5;
  *(v10 + 232) = v6;
  *(v10 + 240) = v7;
  *(v10 + 248) = v8;
  *(v10 + 256) = v9;
  v23 = sub_261CFCEA4();

  return v23;
}

unint64_t sub_261C0F51C()
{
  result = qword_27FEDC490;
  if (!qword_27FEDC490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FEDE0C0, &unk_261D02500);
    sub_261C0FC3C(&qword_280D22790, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC490);
  }

  return result;
}

unint64_t sub_261C0F5D0()
{
  result = qword_27FEDC498;
  if (!qword_27FEDC498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDA1E0, &unk_261D02300);
    sub_261C0FC3C(&qword_280D224D0, type metadata accessor for SectionEntity, &protocol conformance descriptor for SectionEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC498);
  }

  return result;
}

unint64_t sub_261C0F684()
{
  result = qword_280D22278[0];
  if (!qword_280D22278[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FEDE110, &unk_261D035B0);
    sub_261C0FC3C(&qword_280D22350, type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D22278);
  }

  return result;
}

unint64_t sub_261C0F738()
{
  result = qword_280D21E08;
  if (!qword_280D21E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDB6E0, &qword_261D06FD8);
    sub_261C0F7BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D21E08);
  }

  return result;
}

unint64_t sub_261C0F7BC()
{
  result = qword_280D21E38;
  if (!qword_280D21E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D21E38);
  }

  return result;
}

unint64_t sub_261C0F810()
{
  result = qword_27FEDC4D0;
  if (!qword_27FEDC4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC4D0);
  }

  return result;
}

unint64_t sub_261C0F864()
{
  result = qword_280D21E18;
  if (!qword_280D21E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FEDA5D0, &qword_261D0A790);
    sub_261C0FC3C(&qword_280D224D0, type metadata accessor for SectionEntity, &protocol conformance descriptor for SectionEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D21E18);
  }

  return result;
}

unint64_t sub_261C0F918()
{
  result = qword_27FEDC630;
  if (!qword_27FEDC630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDC638, &qword_261D0A818);
    sub_261C0FC3C(&qword_280D22668, type metadata accessor for GroupEntity, &protocol conformance descriptor for GroupEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC630);
  }

  return result;
}

unint64_t sub_261C0F9CC()
{
  result = qword_27FEDC658;
  if (!qword_27FEDC658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDC660, &qword_261D0A860);
    sub_261C0FC3C(&qword_280D22790, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC658);
  }

  return result;
}

unint64_t sub_261C0FA80()
{
  result = qword_280D21E00;
  if (!qword_280D21E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDC680, &qword_261D0A8A8);
    sub_261C0F738();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D21E00);
  }

  return result;
}

unint64_t sub_261C0FB04()
{
  result = qword_280D21E28;
  if (!qword_280D21E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDAE98, &qword_261D0AAA0);
    sub_261C0F7BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D21E28);
  }

  return result;
}

unint64_t sub_261C0FB88()
{
  result = qword_280D22DB0;
  if (!qword_280D22DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDA160, &qword_261D02220);
    sub_261C0FC3C(&qword_280D22DB8, MEMORY[0x277CC8990], MEMORY[0x277CBA4D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22DB0);
  }

  return result;
}

uint64_t sub_261C0FC3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_261C0FC84()
{
  result = qword_280D22370;
  if (!qword_280D22370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDC770, &qword_261D0AC30);
    sub_261C0FD08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22370);
  }

  return result;
}

unint64_t sub_261C0FD08()
{
  result = qword_280D22378;
  if (!qword_280D22378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22378);
  }

  return result;
}

unint64_t sub_261C0FD5C()
{
  result = qword_280D225E0;
  if (!qword_280D225E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FEDD950, &unk_261D01440);
    sub_261C0FC3C(&qword_280D22668, type metadata accessor for GroupEntity, &protocol conformance descriptor for GroupEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D225E0);
  }

  return result;
}

uint64_t sub_261C0FE58(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED9EF0, &qword_261D012E0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  v14 = sub_261CFFD44();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_261CFFD24();
  swift_unknownObjectRetain();
  v15 = sub_261CFFD14();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  *(v16 + 32) = a2;
  *(v16 + 40) = a3;
  *(v16 + 48) = v7;
  *(v16 + 56) = a1;
  sub_261AF38F0(0, 0, v13, a5, v16);
}

uint64_t sub_261C0FF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v5[2] = sub_261CFFD24();
  v5[3] = sub_261CFFD14();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_261AF358C;

  return sub_261C74198((v5 + 5), v6);
}

uint64_t sub_261C10058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = sub_261CFFD24();
  v7[3] = sub_261CFFD14();
  v13 = (*(a7 + 88) + **(a7 + 88));
  v11 = swift_task_alloc();
  v7[4] = v11;
  *v11 = v7;
  v11[1] = sub_261AF358C;

  return v13(v7 + 5, a5, a6, a7);
}

uint64_t sub_261C101A8(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_261AF4BDC;

  return sub_261C10058(a1, v6, v7, v8, v9, v4, v5);
}

uint64_t sub_261C10280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v5[2] = sub_261CFFD24();
  v5[3] = sub_261CFFD14();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_261AF3C74;

  return sub_261C746CC((v5 + 5), v6);
}

uint64_t sub_261C10344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = sub_261CFFD24();
  v7[3] = sub_261CFFD14();
  v13 = (*(a7 + 96) + **(a7 + 96));
  v11 = swift_task_alloc();
  v7[4] = v11;
  *v11 = v7;
  v11[1] = sub_261AF358C;

  return v13(v7 + 5, a5, a6, a7);
}

uint64_t sub_261C10494(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_261AF4BDC;

  return sub_261C10344(a1, v6, v7, v8, v9, v4, v5);
}

uint64_t dispatch thunk of RemindersInCalendarReminderCreationModuleInterface.commitEditing(allowingUserConfirmation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 88) + **(a4 + 88));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261AF4BDC;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of RemindersInCalendarReminderCreationModuleInterface.cancelEditing(allowingUserConfirmation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 96) + **(a4 + 96));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261AF43A8;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_261C10918(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED9EF0, &qword_261D012E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_261CFFD44();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_261CFFD24();
  sub_261CFCDA4();
  v13 = sub_261CFFD14();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  *(v14 + 32) = v7;
  *(v14 + 40) = a1;
  sub_261AF38F0(0, 0, v11, a5, v14);
}

uint64_t sub_261C10A40(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_261AF4BDC;

  return sub_261C10280(a1, v4, v5, v6, v7);
}

uint64_t sub_261C10B04(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_261AF4BDC;

  return sub_261C0FF94(a1, v4, v5, v6, v7);
}

uint64_t DeleteRemindersListGroupsAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v61 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA390, &unk_261D02F60);
  MEMORY[0x28223BE20](v1 - 8);
  v57 = &v40 - v2;
  v60 = sub_261CFD184();
  v56 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v53 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v58 = &v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v8 - 8);
  v45 = &v40 - v9;
  v10 = sub_261CFD674();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_261CFD884();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_261CFFA44();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_261CFD6A4();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v44 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v40 - v20;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC7B0, &unk_261D0AD88);
  sub_261CFF9B4();
  sub_261CFD874();
  v22 = *MEMORY[0x277CC9110];
  v48 = v11;
  v23 = *(v11 + 104);
  v23(v13, v22, v10);
  v55 = v21;
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v51 = v22;
  v24 = v10;
  v49 = v23;
  v50 = v11 + 104;
  v23(v13, v22, v10);
  v25 = v45;
  sub_261CFD6C4();
  v26 = *(v17 + 56);
  v27 = v25;
  v54 = v16;
  v52 = v17 + 56;
  v47 = v26;
  v26(v25, 0, 1, v16);
  v63 = 0;
  sub_261CFF9B4();
  if (qword_280D22DA8 != -1)
  {
    swift_once();
  }

  v41 = v24;
  v28 = __swift_project_value_buffer(v24, qword_280D27028);
  (*(v48 + 16))(v13, v28, v24);
  sub_261CFD874();
  sub_261CFD6C4();
  v29 = v58;
  sub_261CFC844();
  v30 = sub_261CFC834();
  v44 = v30;
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  v43 = v32;
  v48 = v31 + 56;
  v32(v29, 0, 1, v30);
  v32(v53, 1, 1, v30);
  v42 = *MEMORY[0x277CBA308];
  v56 = *(v56 + 104);
  (v56)(v59);
  sub_261C11534();
  *v61 = sub_261CFCC34();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA30, &unk_261D035F0);
  sub_261CFF9B4();
  sub_261CFD874();
  v33 = v51;
  v34 = v41;
  v35 = v49;
  v49(v13, v51, v41);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v35(v13, v33, v34);
  sub_261CFD6C4();
  v47(v27, 0, 1, v54);
  LOBYTE(v63) = 2;
  v36 = sub_261CFFCE4();
  (*(*(v36 - 8) + 56))(v57, 1, 1, v36);
  v43(v58, 1, 1, v44);
  (v56)(v59, v42, v60);
  v37 = sub_261CFCD44();
  v38 = v61;
  v61[1] = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC7B8, &qword_261D0AD98);
  v62 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v38[2] = result;
  return result;
}

unint64_t sub_261C11534()
{
  result = qword_280D22670;
  if (!qword_280D22670)
  {
    type metadata accessor for GroupEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22670);
  }

  return result;
}

uint64_t sub_261C115C8()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261CFD884();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_261CFFA44();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v6, qword_27FEDC798);
  __swift_project_value_buffer(v6, qword_27FEDC798);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static DeleteRemindersListGroupsAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9B30 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDC798);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static DeleteRemindersListGroupsAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_261CFD674();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_261CFD884();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_261CFD6A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v6 + 104))(v8, *MEMORY[0x277CC9110], v5);
  sub_261CFD6C4();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_261CFCF04();
  v13 = sub_261CFCEE4();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t (*DeleteRemindersListGroupsAppIntent.entities.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t (*DeleteRemindersListGroupsAppIntent.deleteSublists.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t static DeleteRemindersListGroupsAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC7C0, &qword_261D0ADA0);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC7C8, &qword_261D0ADA8);
  MEMORY[0x28223BE20](v1);
  sub_261B31600();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC7D0, &qword_261D0ADD8);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD134();
}

uint64_t sub_261C11E48()
{
  swift_getKeyPath();
  sub_261B31600();
  v0 = sub_261CFCDA4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_261D030F0;
  *(v1 + 32) = v0;
  sub_261CFCDA4();
  v2 = sub_261CFD104();

  return v2;
}

uint64_t DeleteRemindersListGroupsAppIntent.perform()(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = *v1;
  *(v2 + 144) = *(v1 + 16);
  sub_261CFFD24();
  *(v2 + 152) = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  *(v2 + 160) = v4;
  *(v2 + 168) = v3;

  return MEMORY[0x2822009F8](sub_261C11FAC, v4, v3);
}

uint64_t sub_261C11FAC()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  sub_261B22FA8(0, v3, v1, v2);
  sub_261CFC664();
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  v0[12] = v3;
  v0[13] = v1;
  v0[14] = v2;
  v8 = (*(v5 + 8) + **(v5 + 8));
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_261BF0728;

  return v8(v0 + 7, v0 + 12, v4, v5);
}

unint64_t sub_261C12124()
{
  result = qword_27FEDC7D8;
  if (!qword_27FEDC7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC7D8);
  }

  return result;
}

unint64_t sub_261C12180()
{
  result = qword_27FEDC7E0;
  if (!qword_27FEDC7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC7E0);
  }

  return result;
}

unint64_t sub_261C121D8()
{
  result = qword_27FEDC7E8;
  if (!qword_27FEDC7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC7E8);
  }

  return result;
}

uint64_t sub_261C12264@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9B30 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDC798);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261C1230C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC7C0, &qword_261D0ADA0);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC7C8, &qword_261D0ADA8);
  MEMORY[0x28223BE20](v3);
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC7D0, &qword_261D0ADD8);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD134();
}

uint64_t sub_261C124BC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return DeleteRemindersListGroupsAppIntent.perform()(a1);
}

uint64_t sub_261C12558(uint64_t a1)
{
  v2 = sub_261B31600();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t dispatch thunk of DeleteRemindersListGroupsAppIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261AF43A8;

  return v11(a1, a2, a3, a4);
}

uint64_t IntentPerson.init(fromContact:meCard:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v107 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  MEMORY[0x28223BE20](v5 - 8);
  v106 = v104 - v6;
  v7 = sub_261CFC914();
  v125 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v105 = v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261CFC8A4();
  v117 = *(v9 - 8);
  v118 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v113 = v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v115 = v104 - v12;
  v116 = sub_261CFC864();
  v114 = *(v116 - 8);
  v13 = MEMORY[0x28223BE20](v116);
  v111 = v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v112 = (v104 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB0D8, &qword_261D050F0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v110 = v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v120 = v104 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA640, &qword_261D03200);
  v21 = *(v20 - 8);
  v126 = v20;
  v127 = v21;
  v22 = MEMORY[0x28223BE20](v20);
  v124 = v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v121 = v104 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = (v104 - v27);
  MEMORY[0x28223BE20](v26);
  v30 = (v104 - v29);
  v119 = a1;
  v31 = [a1 emailAddresses];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC800, &qword_261D0AFE0);
  v33 = sub_261CFFC64();

  if (v33 >> 62)
  {
    v34 = sub_261D00274();
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = MEMORY[0x277D84F90];
  v36 = &unk_279AFB000;
  v109 = a2;
  v108 = v7;
  if (v34)
  {
    v129 = MEMORY[0x277D84F90];
    result = sub_261B39F24(0, v34 & ~(v34 >> 63), 0);
    if (v34 < 0)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v123 = v34;
    v104[1] = v32;
    v38 = 0;
    v39 = v129;
    v40 = v33;
    v122 = v33 & 0xC000000000000001;
    do
    {
      if (v122)
      {
        v41 = MEMORY[0x26671CA10](v38, v40);
      }

      else
      {
        v41 = *(v40 + 8 * v38 + 32);
      }

      v42 = v41;
      v43 = *(v126 + 48);
      v44 = [v41 v36[232]];
      v45 = sub_261CFFA74();
      v47 = v46;

      *v30 = v45;
      v30[1] = v47;
      sub_261C13310(v42, v30 + v43);
      v129 = v39;
      v49 = v39[2];
      v48 = v39[3];
      if (v49 >= v48 >> 1)
      {
        sub_261B39F24((v48 > 1), v49 + 1, 1);
        v39 = v129;
      }

      ++v38;
      v39[2] = v49 + 1;
      sub_261C144FC(v30, v39 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v49);
      v36 = &unk_279AFB000;
    }

    while (v123 != v38);

    a2 = v109;
    v35 = MEMORY[0x277D84F90];
  }

  else
  {

    v39 = MEMORY[0x277D84F90];
  }

  v50 = [v119 phoneNumbers];
  v51 = sub_261CFFC64();

  if (v51 >> 62)
  {
    v52 = sub_261D00274();
    if (v52)
    {
      goto LABEL_16;
    }

LABEL_27:

    v54 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

  v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v52)
  {
    goto LABEL_27;
  }

LABEL_16:
  v129 = v35;
  result = sub_261B39F24(0, v52 & ~(v52 >> 63), 0);
  if (v52 < 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v53 = 0;
  v54 = v129;
  v55 = v51;
  v122 = v51 & 0xC000000000000001;
  v123 = v51;
  v56 = v52;
  do
  {
    if (v122)
    {
      v57 = MEMORY[0x26671CA10](v53, v55);
    }

    else
    {
      v57 = *(v55 + 8 * v53 + 32);
    }

    v58 = v57;
    v59 = *(v126 + 48);
    v60 = [v57 v36[232]];
    v61 = sub_261CFFA74();
    v63 = v62;

    *v28 = v61;
    v28[1] = v63;
    sub_261C13730(v58, v28 + v59);
    v129 = v54;
    v65 = *(v54 + 16);
    v64 = *(v54 + 24);
    if (v65 >= v64 >> 1)
    {
      sub_261B39F24((v64 > 1), v65 + 1, 1);
      v54 = v129;
    }

    ++v53;
    *(v54 + 16) = v65 + 1;
    sub_261C144FC(v28, v54 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v65);
    v36 = &unk_279AFB000;
    v55 = v123;
  }

  while (v56 != v53);

  a2 = v109;
LABEL_28:
  v66 = v121;
  v129 = v39;
  sub_261BBB8BC(v54);
  v67 = v129;
  v68 = v120;
  if (v129[2])
  {
    result = sub_261AFB668(v129 + ((*(v127 + 80) + 32) & ~*(v127 + 80)), v66, &qword_27FEDA640, &qword_261D03200);
    v69 = v67[2];
    v70 = v108;
    if (!v69)
    {
LABEL_54:
      __break(1u);
      return result;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v129 = v67;
    if (!isUniquelyReferenced_nonNull_native || (v69 - 1) > v67[3] >> 1)
    {
      v67 = sub_261B4184C(isUniquelyReferenced_nonNull_native, v69, 1, v67);
      v129 = v67;
    }

    sub_261C14580(0, 1, 0, &qword_27FEDA640, &qword_261D03200);

    v72 = v125;
    (*(v125 + 32))(v68, v66 + *(v126 + 48), v70);
    v73 = 0;
  }

  else
  {
    v73 = 1;
    v70 = v108;
    v72 = v125;
  }

  (*(v72 + 56))(v68, v73, 1, v70);
  v74 = v67[2];
  if (v74)
  {
    v128 = MEMORY[0x277D84F90];
    v123 = v74;
    result = sub_261B39EE0(0, v74, 0);
    v75 = 0;
    v76 = v128;
    v122 = v67 + ((*(v127 + 80) + 32) & ~*(v127 + 80));
    v77 = (v72 + 16);
    v121 = (v72 + 32);
    v78 = v105;
    while (v75 < v67[2])
    {
      v79 = v124;
      sub_261AFB668(v122 + *(v127 + 72) * v75, v124, &qword_27FEDA640, &qword_261D03200);
      (*v77)(v78, v79 + *(v126 + 48), v70);
      sub_261AE6A40(v79, &qword_27FEDA640, &qword_261D03200);
      v128 = v76;
      v81 = *(v76 + 16);
      v80 = *(v76 + 24);
      if (v81 >= v80 >> 1)
      {
        sub_261B39EE0((v80 > 1), v81 + 1, 1);
        v76 = v128;
      }

      ++v75;
      *(v76 + 16) = v81 + 1;
      result = (*(v125 + 32))(v76 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v81, v78, v70);
      if (v123 == v75)
      {

        a2 = v109;
        v36 = &unk_279AFB000;
        goto LABEL_43;
      }
    }

    __break(1u);
    goto LABEL_52;
  }

LABEL_43:
  v82 = v119;
  v83 = [v119 v36[232]];
  v84 = sub_261CFFA74();
  v86 = v85;

  v87 = v112;
  *v112 = v84;
  v87[1] = v86;
  v88 = v114;
  v89 = v116;
  (*(v114 + 104))(v87, *MEMORY[0x277CB9CD0], v116);
  v90 = v82;
  v91 = v115;
  sub_261C13B7C(v90, v115);
  v93 = v117;
  v92 = v118;
  (*(v117 + 104))(v91, *MEMORY[0x277CB9D08], v118);
  (*(v88 + 16))(v111, v87, v89);
  (*(v93 + 16))(v113, v91, v92);
  v94 = v120;
  sub_261AFB668(v120, v110, &qword_27FEDB0D8, &qword_261D050F0);
  v95 = [v90 v36[232]];
  v96 = sub_261CFFA74();
  v98 = v97;

  if (a2)
  {
    v99 = [a2 v36[232]];
    v100 = sub_261CFFA74();
    v102 = v101;

    if (v96 == v100 && v98 == v102)
    {
    }

    else
    {
      sub_261D00614();
    }

    v94 = v120;
  }

  else
  {
  }

  v103 = sub_261CFD074();
  (*(*(v103 - 8) + 56))(v106, 1, 1, v103);
  sub_261CFC874();

  (*(v117 + 8))(v115, v118);
  (*(v114 + 8))(v112, v116);
  return sub_261AE6A40(v94, &qword_27FEDB0D8, &qword_261D050F0);
}

{
  if (a1)
  {
    IntentPerson.init(fromContact:meCard:)(a1, a2, a3);
    v4 = 0;
  }

  else
  {

    v4 = 1;
  }

  v5 = sub_261CFC954();
  v6 = *(*(v5 - 8) + 56);

  return v6(a3, v4, 1, v5);
}

uint64_t sub_261C13310@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v36 = sub_261CFC8D4();
  v3 = *(v36 - 8);
  v4 = MEMORY[0x28223BE20](v36);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v32 = &v31 - v6;
  v7 = sub_261CFC8F4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v33 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = (&v31 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC810, &qword_261D0AFE8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = a1;
  v20 = [a1 label];
  if (v20)
  {
    v21 = v20;
    v22 = sub_261CFFA74();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  sub_261C13E10(v22, v24, v18);
  v25 = v19;
  v26 = [v19 value];
  *v12 = sub_261CFFAA4();
  v12[1] = v27;
  (*(v8 + 104))(v12, *MEMORY[0x277CB9D90], v7);
  sub_261AFB668(v18, v16, &qword_27FEDC810, &qword_261D0AFE8);
  v28 = v36;
  if ((*(v3 + 48))(v16, 1, v36) == 1)
  {
    sub_261AE6A40(v16, &qword_27FEDC810, &qword_261D0AFE8);
    (*(v8 + 16))(v33, v12, v7);
    (*(v3 + 104))(v34, *MEMORY[0x277CB9D48], v28);
    sub_261CFC924();
  }

  else
  {
    v29 = v32;
    (*(v3 + 32))(v32, v16, v28);
    (*(v8 + 16))(v33, v12, v7);
    (*(v3 + 16))(v34, v29, v28);
    sub_261CFC924();

    (*(v3 + 8))(v29, v28);
  }

  (*(v8 + 8))(v12, v7);
  return sub_261AE6A40(v18, &qword_27FEDC810, &qword_261D0AFE8);
}

uint64_t sub_261C13730@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v38 = sub_261CFC8D4();
  v3 = *(v38 - 8);
  v4 = MEMORY[0x28223BE20](v38);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v34 = &v33 - v6;
  v7 = sub_261CFC8F4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v35 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = (&v33 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC810, &qword_261D0AFE8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = a1;
  v20 = [a1 label];
  if (v20)
  {
    v21 = v20;
    v22 = sub_261CFFA74();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  sub_261C13E10(v22, v24, v18);
  v25 = [v19 value];
  v26 = [v25 stringValue];

  v27 = sub_261CFFA74();
  v29 = v28;

  *v12 = v27;
  v12[1] = v29;
  (*(v8 + 104))(v12, *MEMORY[0x277CB9D88], v7);
  sub_261AFB668(v18, v16, &qword_27FEDC810, &qword_261D0AFE8);
  v30 = v38;
  if ((*(v3 + 48))(v16, 1, v38) == 1)
  {
    sub_261AE6A40(v16, &qword_27FEDC810, &qword_261D0AFE8);
    (*(v8 + 16))(v35, v12, v7);
    (*(v3 + 104))(v36, *MEMORY[0x277CB9D48], v30);
    sub_261CFC924();
  }

  else
  {
    v31 = v34;
    (*(v3 + 32))(v34, v16, v30);
    (*(v8 + 16))(v35, v12, v7);
    (*(v3 + 16))(v36, v31, v30);
    sub_261CFC924();

    (*(v3 + 8))(v31, v30);
  }

  (*(v8 + 8))(v12, v7);
  return sub_261AE6A40(v18, &qword_27FEDC810, &qword_261D0AFE8);
}

void sub_261C13B7C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23[5] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB0C8, &qword_261D050E8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v23 - v4;
  v6 = sub_261CFFA74();
  v8 = sub_261C143C0(v6, v7, a1);
  v23[3] = v9;
  v23[4] = v8;

  v10 = sub_261CFFA74();
  v12 = sub_261C143C0(v10, v11, a1);
  v23[1] = v13;
  v23[2] = v12;

  v14 = sub_261CFFA74();
  v23[0] = sub_261C143C0(v14, v15, a1);

  v16 = sub_261CFFA74();
  sub_261C143C0(v16, v17, a1);

  v18 = sub_261CFFA74();
  sub_261C143C0(v18, v19, a1);

  v20 = sub_261CFFA74();
  sub_261C143C0(v20, v21, a1);

  v22 = sub_261CFD5E4();
  (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
  sub_261CFD5D4();
}

uint64_t sub_261C13E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_261CFC8D4();
  MEMORY[0x28223BE20](v6);
  v9 = (&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v37 = v7;
    if (sub_261CFFA74() == a1 && v10 == a2)
    {
    }

    else
    {
      v12 = sub_261D00614();

      if ((v12 & 1) == 0)
      {
        if (sub_261CFFA74() == a1 && v16 == a2)
        {
        }

        else
        {
          v18 = sub_261D00614();

          if ((v18 & 1) == 0)
          {
            if (sub_261CFFA74() == a1 && v19 == a2)
            {
            }

            else
            {
              v21 = sub_261D00614();

              if ((v21 & 1) == 0)
              {
                if (sub_261CFFA74() == a1 && v22 == a2)
                {
                }

                else
                {
                  v23 = sub_261D00614();

                  if ((v23 & 1) == 0)
                  {
                    if (sub_261CFFA74() == a1 && v24 == a2)
                    {
                    }

                    else
                    {
                      v25 = sub_261D00614();

                      if ((v25 & 1) == 0)
                      {
                        if (sub_261CFFA74() == a1 && v26 == a2)
                        {
                        }

                        else
                        {
                          v27 = sub_261D00614();

                          if ((v27 & 1) == 0)
                          {
                            if (sub_261CFFA74() == a1 && v28 == a2)
                            {
                            }

                            else
                            {
                              v29 = sub_261D00614();

                              if ((v29 & 1) == 0)
                              {
                                if (sub_261CFFA74() == a1 && v30 == a2)
                                {
                                }

                                else
                                {
                                  v31 = sub_261D00614();

                                  if ((v31 & 1) == 0)
                                  {
                                    if (sub_261CFFA74() == a1 && v32 == a2)
                                    {
                                    }

                                    else
                                    {
                                      v33 = sub_261D00614();

                                      if ((v33 & 1) == 0)
                                      {
                                        if (sub_261CFFA74() == a1 && v34 == a2)
                                        {
                                        }

                                        else
                                        {
                                          v35 = sub_261D00614();

                                          if ((v35 & 1) == 0)
                                          {
                                            *v9 = a1;
                                            v9[1] = a2;
                                            v15 = MEMORY[0x277CB9D58];
                                            goto LABEL_13;
                                          }
                                        }

                                        v15 = MEMORY[0x277CB9D80];
LABEL_13:
                                        (*(v37 + 104))(v9, *v15, v6);
                                        (*(v37 + 32))(a3, v9, v6);
                                        return (*(v37 + 56))(a3, 0, 1, v6);
                                      }
                                    }

                                    v15 = MEMORY[0x277CB9D40];
                                    goto LABEL_13;
                                  }
                                }

                                v15 = MEMORY[0x277CB9D70];
                                goto LABEL_13;
                              }
                            }

                            v15 = MEMORY[0x277CB9D50];
                            goto LABEL_13;
                          }
                        }

                        v15 = MEMORY[0x277CB9D48];
                        goto LABEL_13;
                      }
                    }

                    v15 = MEMORY[0x277CB9D68];
                    goto LABEL_13;
                  }
                }

                v15 = MEMORY[0x277CB9D38];
                goto LABEL_13;
              }
            }

            v15 = MEMORY[0x277CB9D60];
            goto LABEL_13;
          }
        }

        v15 = MEMORY[0x277CB9D78];
        goto LABEL_13;
      }
    }

    v15 = MEMORY[0x277CB9D30];
    goto LABEL_13;
  }

  v13 = *(v7 + 56);

  return v13(a3, 1, 1, v6);
}

uint64_t sub_261C143C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_261CFFA54();
  v5 = [a3 isKeyAvailable_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_261CFFA54();
  v7 = [a3 valueForKey_];

  if (v7)
  {
    sub_261D001A4();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {
    sub_261AE6A40(v14, &qword_27FEDC808, &unk_261D0B0D0);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  result = v10;
  v9 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v9 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    return 0;
  }

  return result;
}

uint64_t sub_261C144FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA640, &qword_261D03200);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_261C14580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *v5;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
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
  if (a3 >= 1 && v17 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_261C146CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for SectionEntity(0);
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

uint64_t sub_261C14814()
{
  if (qword_27FED9B40 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_27FEDC830))
  {
    sub_261D001A4();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB720, &qword_261D09240);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_261AE6A40(v5, &qword_27FEDC808, &unk_261D0B0D0);
    return 0;
  }
}

uint64_t sub_261C14914()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDC818);
  v1 = __swift_project_value_buffer(v0, qword_27FEDC818);
  if (qword_280D22880 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D26FF8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id RemindersInCalendarUtilities.ReminderCreationConfiguration.reminderID.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t RemindersInCalendarUtilities.ReminderCreationConfiguration.initialProperties.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RemindersInCalendarUtilities.ReminderCreationConfiguration(0) + 20);

  return sub_261C14AB4(v3, a1);
}

uint64_t sub_261C14AB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemindersInCalendarEditingReminderProperties(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RemindersInCalendarUtilities.ReminderCreationConfiguration.initialProperties.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RemindersInCalendarUtilities.ReminderCreationConfiguration(0) + 20);

  return sub_261C14B5C(a1, v3);
}

uint64_t sub_261C14B5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemindersInCalendarEditingReminderProperties(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *RemindersInCalendarUtilities.ReminderCreationConfiguration.undoManager.getter()
{
  v1 = *(v0 + *(type metadata accessor for RemindersInCalendarUtilities.ReminderCreationConfiguration(0) + 24));
  v2 = v1;
  return v1;
}

void RemindersInCalendarUtilities.ReminderCreationConfiguration.undoManager.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderCreationConfiguration(0) + 24);

  *(v1 + v3) = a1;
}

uint64_t RemindersInCalendarUtilities.ReminderCreationConfiguration.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderCreationConfiguration(0);
  v10 = (v4 + *(result + 32));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

void (*RemindersInCalendarUtilities.ReminderCreationConfiguration.layoutMargins.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderCreationConfiguration(0) + 32);
  *(v4 + 40) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  *v4 = *v6;
  *(v4 + 16) = v7;
  return sub_261BDD104;
}

uint64_t RemindersInCalendarUtilities.ReminderCreationConfiguration.isInResizableContainer.setter(char a1)
{
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderCreationConfiguration(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*RemindersInCalendarUtilities.ReminderCreationConfiguration.isInResizableContainer.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderCreationConfiguration(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3);
  return sub_261BE0A88;
}

uint64_t RemindersInCalendarUtilities.ReminderCreationConfiguration.autoCommitsEditingOnTextEditingReturnKey.setter(char a1)
{
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderCreationConfiguration(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t (*RemindersInCalendarUtilities.ReminderCreationConfiguration.autoCommitsEditingOnTextEditingReturnKey.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderCreationConfiguration(0) + 40);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3);
  return sub_261BDD324;
}

uint64_t RemindersInCalendarUtilities.ReminderCreationConfiguration.newUserInterfaceStyleEnabled.setter(char a1)
{
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderCreationConfiguration(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

double RemindersInCalendarUtilities.ReminderCreationConfiguration.init()@<D0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for RemindersInCalendarUtilities.ReminderCreationConfiguration(0);
  v3 = a1 + v2[5];
  v4 = type metadata accessor for RemindersInCalendarEditingReminderProperties(0);
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v5 = v4[6];
  v6 = sub_261CFD4E4();
  (*(*(v6 - 8) + 56))(&v3[v5], 1, 1, v6);
  *&v3[v4[7]] = 0;
  v7 = v4[8];
  v8 = sub_261CFD754();
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  *&v3[v4[9]] = 0;
  *(a1 + v2[6]) = 0;
  *(a1 + v2[7]) = 0;
  v9 = (a1 + v2[8]);
  result = 12.0;
  *v9 = xmmword_261D090F0;
  v9[1] = xmmword_261D09100;
  *(a1 + v2[9]) = 0;
  *(a1 + v2[10]) = 1;
  return result;
}

uint64_t static RemindersInCalendarUtilities.makeReminderCreationModule(configuration:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v33 = a2;
  v34 = a1;
  v31 = sub_261CFE884();
  v2 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_261CFE874();
  v5 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFE794();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC838, &qword_261D0AFF0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - v12;
  if (qword_280D21E90 != -1)
  {
    swift_once();
  }

  v30 = qword_280D21E98;
  if (qword_27FED9B38 != -1)
  {
    swift_once();
  }

  v14 = sub_261CFF7A4();
  __swift_project_value_buffer(v14, qword_27FEDC818);
  v15 = sub_261CFF784();
  v16 = sub_261CFFE84();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_261AE2000, v15, v16, "ReminderCreationUI: fetching initial list for reminder creation", v17, 2u);
    MEMORY[0x26671D560](v17, -1, -1);
  }

  sub_261CFDE54();
  v18 = sub_261CFDDA4();
  v19 = sub_261CFDE44();

  sub_261CFE894();
  (*(v2 + 104))(v4, *MEMORY[0x277D45E70], v31);
  v20 = v19;
  sub_261CFE864();
  sub_261CFE844();
  (*(v5 + 8))(v7, v32);
  v21 = v34;
  v22 = sub_261CFE854();
  sub_261CFE144();
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v23 = v22;
  MEMORY[0x26671A650]();
  v24 = type metadata accessor for RemindersInCalendarUtilities.ReminderCreationConfiguration(0);
  sub_261CE98D4((v21 + *(v24 + 20)));

  (*(v28 + 32))(v13, v10, v29);
  v25 = _s22InitialListAndReminderVMa(0);
  *&v13[*(v25 + 20)] = v23;
  (*(*(v25 - 8) + 56))(v13, 0, 1, v25);
  sub_261C15704(v13, v21, v33);
  return sub_261AE6A40(v13, &qword_27FEDC838, &qword_261D0AFF0);
}

void sub_261C15704(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_261CFE1D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC838, &qword_261D0AFF0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27 - v11;
  v13 = _s22InitialListAndReminderVMa(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261C17728(a1, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_261AE6A40(v12, &qword_27FEDC838, &qword_261D0AFF0);
    sub_261CFE3D4();
    v17 = sub_261CFE3C4();
    v18 = 0;
    v19 = 0;
  }

  else
  {
    sub_261C177F0(v12, v16);
    type metadata accessor for RemindersInCalendarUtilities.ReminderCreationConfiguration(0);
    sub_261CFE734();
    (*(v7 + 104))(v9, *MEMORY[0x277D45D18], v6);
    v17 = sub_261CFE2E4();
    v18 = v20;
    v19 = v21;
    (*(v7 + 8))(v9, v6);
    sub_261C17854(v16);
  }

  v22 = *(a2 + *(type metadata accessor for RemindersInCalendarUtilities.ReminderCreationConfiguration(0) + 24));
  type metadata accessor for RemindersInCalendarIOSReminderCreationPresenter();
  v23 = swift_allocObject();
  v23[3] = 0;
  swift_unknownObjectWeakInit();
  v23[4] = v22;
  v23[5] = v18;
  v23[6] = v19;
  if (v18)
  {
    swift_getObjectType();
    sub_261C17798();
    v24 = v22;
    swift_unknownObjectRetain();
    sub_261CFCDA4();
    v25 = v17;
    sub_261CFE4E4();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = v22;
  }

  *a3 = v17;
  a3[1] = v23;
  a3[2] = &off_287446A08;
}

void sub_261C15A38(uint64_t a1, void *a2)
{
  v3 = sub_261CFE554();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a2 store];
  v8 = [a2 objectID];
  sub_261CFE1C4();
  v19[1] = sub_261CFDD64();
  sub_261CFE544();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  v10 = v7;
  v11 = v8;
  sub_261CFDD74();

  (*(v4 + 8))(v6, v3);
  v12 = [a2 titleAsString];
  if (v12)
  {
    v13 = v12;
    v14 = sub_261CFFA74();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  sub_261C92A48(v14, v16);

  v17 = sub_261CFDD54();
  v18 = sub_261CFFA54();

  [v17 setActionName_];
}

uint64_t sub_261C15C94(uint64_t a1, id a2, uint64_t a3)
{
  v21[5] = *MEMORY[0x277D85DE8];
  v21[0] = 0;
  v5 = [a2 fetchReminderWithObjectID:a3 error:v21];
  v6 = v21[0];
  if (v5)
  {
    v7 = v5;
    v8 = objc_allocWithZone(MEMORY[0x277D447D8]);
    v9 = v6;
    v10 = v7;
    v11 = [v8 initWithStore_];
    sub_261CFDD24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_261D030F0;
    *(v12 + 32) = v10;
    sub_261AE498C(a1, v21);
    v13 = MEMORY[0x26671A3E0](v12, v11, v21);

    sub_261AE6A40(v21, &qword_27FEDC000, &qword_261D090C8);
  }

  else
  {
    v14 = v21[0];
    v15 = sub_261CFD654();

    swift_willThrow();
    if (qword_27FED9B38 != -1)
    {
      swift_once();
    }

    v16 = sub_261CFF7A4();
    __swift_project_value_buffer(v16, qword_27FEDC818);
    v17 = sub_261CFF784();
    v18 = sub_261CFFE64();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_261AE2000, v17, v18, "ReminderCreationUI: failed to fetch reminder to delete", v19, 2u);
      MEMORY[0x26671D560](v19, -1, -1);
    }

    *(swift_allocObject() + 16) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB720, &qword_261D09240);
    swift_allocObject();
    return sub_261CFF7D4();
  }

  return v13;
}

void *sub_261C15F24()
{
  result = swift_slowAlloc();
  *result = 0;
  qword_27FEDC830 = result;
  return result;
}

void **_s29ReminderCreationConfigurationVwCP(void **a1, void **a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = &v4[(v3 + 16) & ~v3];
    sub_261CFCDA4();
  }

  else
  {
    v5 = a1;
    v6 = a3[5];
    v7 = a1 + v6;
    v8 = a2 + v6;
    v9 = *(a2 + v6 + 8);
    *v7 = *(a2 + v6);
    *(v7 + 1) = v9;
    v10 = *(a2 + v6 + 24);
    *(v7 + 2) = *(a2 + v6 + 16);
    *(v7 + 3) = v10;
    v35 = type metadata accessor for RemindersInCalendarEditingReminderProperties(0);
    v11 = v35[6];
    v12 = sub_261CFD4E4();
    v13 = *(v12 - 8);
    v34 = *(v13 + 48);
    v14 = v4;
    sub_261CFD104();
    sub_261CFD104();
    if (v34(&v8[v11], 1, v12))
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
      memcpy(&v7[v11], &v8[v11], *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v13 + 16))(&v7[v11], &v8[v11], v12);
      (*(v13 + 56))(&v7[v11], 0, 1, v12);
    }

    *&v7[v35[7]] = *&v8[v35[7]];
    v16 = v35[8];
    v17 = sub_261CFD754();
    v18 = *(v17 - 8);
    v19 = *(v18 + 48);
    sub_261CFD104();
    if (v19(&v8[v16], 1, v17))
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB238, &unk_261D056F0);
      memcpy(&v7[v16], &v8[v16], *(*(v20 - 8) + 64));
    }

    else
    {
      (*(v18 + 16))(&v7[v16], &v8[v16], v17);
      (*(v18 + 56))(&v7[v16], 0, 1, v17);
    }

    v21 = v35[9];
    v22 = *&v8[v21];
    *&v7[v21] = v22;
    v23 = a3[6];
    v24 = a3[7];
    v25 = *(a2 + v23);
    *(v5 + v23) = v25;
    *(v5 + v24) = *(a2 + v24);
    v26 = a3[8];
    v27 = a3[9];
    v28 = *(a2 + v26);
    v29 = *(a2 + v26 + 16);
    v30 = (v5 + v26);
    *v30 = v28;
    v30[1] = v29;
    *(v5 + v27) = *(a2 + v27);
    *(v5 + a3[10]) = *(a2 + a3[10]);
    v31 = v22;
    v32 = v25;
  }

  return v5;
}

void _s29ReminderCreationConfigurationVwxx(id *a1, uint64_t a2)
{
  v4 = a1 + *(a2 + 20);

  v5 = type metadata accessor for RemindersInCalendarEditingReminderProperties(0);
  v6 = v5[6];
  v7 = sub_261CFD4E4();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(&v4[v6], 1, v7))
  {
    (*(v8 + 8))(&v4[v6], v7);
  }

  v9 = v5[8];
  v10 = sub_261CFD754();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(&v4[v9], 1, v10))
  {
    (*(v11 + 8))(&v4[v9], v10);
  }

  v12 = *(a1 + *(a2 + 24));
}

void **_s29ReminderCreationConfigurationVwcp(void **a1, void **a2, int *a3)
{
  v3 = *a2;
  *a1 = *a2;
  v4 = a3[5];
  v5 = a1 + v4;
  v6 = a2 + v4;
  v7 = *(a2 + v4 + 8);
  *v5 = *(a2 + v4);
  *(v5 + 1) = v7;
  v8 = *(a2 + v4 + 24);
  *(v5 + 2) = *(a2 + v4 + 16);
  *(v5 + 3) = v8;
  v33 = type metadata accessor for RemindersInCalendarEditingReminderProperties(0);
  v9 = v33[6];
  v10 = sub_261CFD4E4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v3;
  sub_261CFD104();
  sub_261CFD104();
  if (v12(&v6[v9], 1, v10))
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
    memcpy(&v5[v9], &v6[v9], *(*(v14 - 8) + 64));
  }

  else
  {
    (*(v11 + 16))(&v5[v9], &v6[v9], v10);
    (*(v11 + 56))(&v5[v9], 0, 1, v10);
  }

  *&v5[v33[7]] = *&v6[v33[7]];
  v15 = v33[8];
  v16 = sub_261CFD754();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  sub_261CFD104();
  if (v18(&v6[v15], 1, v16))
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB238, &unk_261D056F0);
    memcpy(&v5[v15], &v6[v15], *(*(v19 - 8) + 64));
  }

  else
  {
    (*(v17 + 16))(&v5[v15], &v6[v15], v16);
    (*(v17 + 56))(&v5[v15], 0, 1, v16);
  }

  v20 = v33[9];
  v21 = *&v6[v20];
  *&v5[v20] = v21;
  v22 = a3[6];
  v23 = a3[7];
  v24 = *(a2 + v22);
  *(a1 + v22) = v24;
  *(a1 + v23) = *(a2 + v23);
  v25 = a3[8];
  v26 = a3[9];
  v27 = *(a2 + v25);
  v28 = *(a2 + v25 + 16);
  v29 = (a1 + v25);
  *v29 = v27;
  v29[1] = v28;
  *(a1 + v26) = *(a2 + v26);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  v30 = v21;
  v31 = v24;
  return a1;
}

void **_s29ReminderCreationConfigurationVwca(void **a1, void **a2, int *a3)
{
  v6 = *a1;
  v7 = *a2;
  *a1 = *a2;
  v8 = v7;

  v38 = a3;
  v9 = a3[5];
  v10 = a1 + v9;
  v11 = a2 + v9;
  *v10 = *(a2 + v9);
  *(v10 + 1) = *(a2 + v9 + 8);
  sub_261CFD104();

  *(v10 + 2) = *(v11 + 2);
  *(v10 + 3) = *(v11 + 3);
  sub_261CFD104();

  v39 = type metadata accessor for RemindersInCalendarEditingReminderProperties(0);
  v12 = v39[6];
  v13 = sub_261CFD4E4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v16 = v15(&v10[v12], 1, v13);
  v17 = v15(&v11[v12], 1, v13);
  if (v16)
  {
    if (!v17)
    {
      (*(v14 + 16))(&v10[v12], &v11[v12], v13);
      (*(v14 + 56))(&v10[v12], 0, 1, v13);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v17)
  {
    (*(v14 + 8))(&v10[v12], v13);
LABEL_6:
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
    memcpy(&v10[v12], &v11[v12], *(*(v18 - 8) + 64));
    goto LABEL_7;
  }

  (*(v14 + 24))(&v10[v12], &v11[v12], v13);
LABEL_7:
  *&v10[v39[7]] = *&v11[v39[7]];
  sub_261CFD104();

  v19 = v39[8];
  v20 = sub_261CFD754();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v23 = v22(&v10[v19], 1, v20);
  v24 = v22(&v11[v19], 1, v20);
  if (!v23)
  {
    if (!v24)
    {
      (*(v21 + 24))(&v10[v19], &v11[v19], v20);
      goto LABEL_13;
    }

    (*(v21 + 8))(&v10[v19], v20);
    goto LABEL_12;
  }

  if (v24)
  {
LABEL_12:
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB238, &unk_261D056F0);
    memcpy(&v10[v19], &v11[v19], *(*(v25 - 8) + 64));
    goto LABEL_13;
  }

  (*(v21 + 16))(&v10[v19], &v11[v19], v20);
  (*(v21 + 56))(&v10[v19], 0, 1, v20);
LABEL_13:
  v26 = v39[9];
  v27 = *&v10[v26];
  v28 = *&v11[v26];
  *&v10[v26] = v28;
  v29 = v28;

  v30 = v38[6];
  v31 = *(a1 + v30);
  v32 = *(a2 + v30);
  *(a1 + v30) = v32;
  v33 = v32;

  *(a1 + v38[7]) = *(a2 + v38[7]);
  v34 = v38[8];
  v35 = (a1 + v34);
  v36 = (a2 + v34);
  *v35 = *v36;
  v35[1] = v36[1];
  v35[2] = v36[2];
  v35[3] = v36[3];
  *(a1 + v38[9]) = *(a2 + v38[9]);
  *(a1 + v38[10]) = *(a2 + v38[10]);
  return a1;
}

void *_s29ReminderCreationConfigurationVwtk(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = *(a2 + v6 + 16);
  *v7 = *(a2 + v6);
  *(v7 + 1) = v9;
  v10 = type metadata accessor for RemindersInCalendarEditingReminderProperties(0);
  v11 = v10[6];
  v12 = sub_261CFD4E4();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(&v8[v11], 1, v12))
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
    memcpy(&v7[v11], &v8[v11], *(*(v14 - 8) + 64));
  }

  else
  {
    (*(v13 + 32))(&v7[v11], &v8[v11], v12);
    (*(v13 + 56))(&v7[v11], 0, 1, v12);
  }

  *&v7[v10[7]] = *&v8[v10[7]];
  v15 = v10[8];
  v16 = sub_261CFD754();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(&v8[v15], 1, v16))
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB238, &unk_261D056F0);
    memcpy(&v7[v15], &v8[v15], *(*(v18 - 8) + 64));
  }

  else
  {
    (*(v17 + 32))(&v7[v15], &v8[v15], v16);
    (*(v17 + 56))(&v7[v15], 0, 1, v16);
  }

  *&v7[v10[9]] = *&v8[v10[9]];
  v19 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + v19) = *(a2 + v19);
  v20 = a3[8];
  v21 = a3[9];
  v22 = (a1 + v20);
  v23 = (a2 + v20);
  v24 = v23[1];
  *v22 = *v23;
  v22[1] = v24;
  *(a1 + v21) = *(a2 + v21);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  return a1;
}

void **_s29ReminderCreationConfigurationVwta(void **a1, void **a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  v36 = a3;
  v7 = a3[5];
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = *(a2 + v7 + 8);
  *v8 = *(a2 + v7);
  *(v8 + 1) = v10;

  v11 = *(v9 + 3);
  *(v8 + 2) = *(v9 + 2);
  *(v8 + 3) = v11;

  v37 = type metadata accessor for RemindersInCalendarEditingReminderProperties(0);
  v12 = v37[6];
  v13 = sub_261CFD4E4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v16 = v15(&v8[v12], 1, v13);
  v17 = v15(&v9[v12], 1, v13);
  if (v16)
  {
    if (!v17)
    {
      (*(v14 + 32))(&v8[v12], &v9[v12], v13);
      (*(v14 + 56))(&v8[v12], 0, 1, v13);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v17)
  {
    (*(v14 + 8))(&v8[v12], v13);
LABEL_6:
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
    memcpy(&v8[v12], &v9[v12], *(*(v18 - 8) + 64));
    goto LABEL_7;
  }

  (*(v14 + 40))(&v8[v12], &v9[v12], v13);
LABEL_7:
  *&v8[v37[7]] = *&v9[v37[7]];

  v19 = v37[8];
  v20 = sub_261CFD754();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v23 = v22(&v8[v19], 1, v20);
  v24 = v22(&v9[v19], 1, v20);
  if (!v23)
  {
    if (!v24)
    {
      (*(v21 + 40))(&v8[v19], &v9[v19], v20);
      goto LABEL_13;
    }

    (*(v21 + 8))(&v8[v19], v20);
    goto LABEL_12;
  }

  if (v24)
  {
LABEL_12:
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB238, &unk_261D056F0);
    memcpy(&v8[v19], &v9[v19], *(*(v25 - 8) + 64));
    goto LABEL_13;
  }

  (*(v21 + 32))(&v8[v19], &v9[v19], v20);
  (*(v21 + 56))(&v8[v19], 0, 1, v20);
LABEL_13:
  v26 = v37[9];
  v27 = *&v8[v26];
  *&v8[v26] = *&v9[v26];

  v28 = v36[6];
  v29 = *(a1 + v28);
  *(a1 + v28) = *(a2 + v28);

  v30 = v36[8];
  *(a1 + v36[7]) = *(a2 + v36[7]);
  v31 = (a1 + v30);
  v32 = (a2 + v30);
  v33 = v32[1];
  *v31 = *v32;
  v31[1] = v33;
  v34 = v36[10];
  *(a1 + v36[9]) = *(a2 + v36[9]);
  *(a1 + v34) = *(a2 + v34);
  return a1;
}

uint64_t sub_261C17070(uint64_t a1)
{
  result = type metadata accessor for RemindersInCalendarEditingReminderProperties(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_261C17120(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));
    sub_261CFCDA4();
  }

  else
  {
    v7 = sub_261CFE794();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = *(a2 + v8);
    *(a1 + v8) = v9;
    v10 = v9;
  }

  return a1;
}

void sub_261C171EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_261CFE794();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a1 + *(a2 + 20));
}

uint64_t sub_261C17260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261CFE794();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a2 + v7);
  *(a1 + v7) = v8;
  v9 = v8;
  return a1;
}

uint64_t sub_261C172E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261CFE794();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a2 + v7);
  v9 = *(a1 + v7);
  *(a1 + v7) = v8;
  v10 = v8;

  return a1;
}

uint64_t sub_261C17368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261CFE794();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_261C173E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261CFE794();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  return a1;
}

uint64_t sub_261C17490(uint64_t a1)
{
  result = sub_261CFE794();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void sub_261C17528(void *a1, void *a2)
{
  if (a2)
  {
    v3 = qword_27FED9B38;
    v4 = a2;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_261CFF7A4();
    __swift_project_value_buffer(v5, qword_27FEDC818);
    v6 = sub_261CFF784();
    v7 = sub_261CFFE54();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_261AE2000, v6, v7, "ReminderCreationUI: register undo", v8, 2u);
      MEMORY[0x26671D560](v8, -1, -1);
    }

    MEMORY[0x28223BE20](v9);
    v10 = v4;
    v11 = [v10 groupsByEvent];
    if (v11)
    {
      sub_261C15A38(v10, a1);
    }

    else
    {
      MEMORY[0x28223BE20](v11);
      sub_261CFFE44();
    }
  }
}

uint64_t sub_261C176E0(uint64_t (*a1)(uint64_t *))
{
  v3 = *(v1 + 16);
  v4 = 1;
  return a1(&v3);
}

uint64_t sub_261C17728(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC838, &qword_261D0AFF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_261C17798()
{
  result = qword_27FEDC860;
  if (!qword_27FEDC860)
  {
    type metadata accessor for RemindersInCalendarIOSReminderCreationPresenter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC860);
  }

  return result;
}

uint64_t sub_261C177F0(uint64_t a1, uint64_t a2)
{
  v4 = _s22InitialListAndReminderVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_261C17854(uint64_t a1)
{
  v2 = _s22InitialListAndReminderVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261C178B0()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDC868);
  v1 = __swift_project_value_buffer(v0, qword_27FEDC868);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t RecurrentInstanceSpecifier.dueDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261CFD4E4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RecurrentInstanceSpecifier.init(dueDate:isDisabled:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_261CFD4E4();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for RecurrentInstanceSpecifier(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_261C17A80@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC888, &qword_261D0B198);
  MEMORY[0x28223BE20](v3 - 8);
  v49 = &v41 - v4;
  v44 = sub_261CFDAC4();
  v50 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_261CFD4E4();
  v6 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ItemsRepresentation = type metadata accessor for RecurrentInstanceSpecifierQueryItemsRepresentation(0);
  v9 = *(ItemsRepresentation - 1);
  MEMORY[0x28223BE20](ItemsRepresentation);
  v45 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC890, &unk_261D0B1A0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v41 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - v18;
  sub_261CFEE34();
  swift_allocObject();
  v20 = sub_261CFEE24();
  sub_261C1977C(&qword_27FEDC898, type metadata accessor for RecurrentInstanceSpecifierQueryItemsRepresentation, &unk_261D0B20C);
  v48 = v20;
  sub_261CFEE14();

  sub_261BB4448(v17, v19, &qword_27FEDC890, &unk_261D0B1A0);
  v21 = v49;
  v22 = v50;
  sub_261AFB668(v19, v14, &qword_27FEDC890, &unk_261D0B1A0);
  if ((*(v9 + 48))(v14, 1, ItemsRepresentation) == 1)
  {
    sub_261AE6A40(v19, &qword_27FEDC890, &unk_261D0B1A0);

    sub_261AE6A40(v14, &qword_27FEDC890, &unk_261D0B1A0);
    v23 = type metadata accessor for RecurrentInstanceSpecifier(0);
    return (*(*(v23 - 8) + 56))(a2, 1, 1, v23);
  }

  else
  {
    v25 = v14;
    v26 = v45;
    sub_261C19B58(v25, v45);
    sub_261AFB668(v26 + ItemsRepresentation[5], v21, &qword_27FEDC888, &qword_261D0B198);
    v27 = v44;
    if ((*(v22 + 48))(v21, 1, v44) == 1)
    {
      sub_261AE6A40(v21, &qword_27FEDC888, &qword_261D0B198);
      v28 = objc_opt_self();
      v29 = sub_261CFD794();
      v30 = [v28 rem:v29 dateComponentsWithDateUsingArchivingTimeZone:*(v26 + ItemsRepresentation[6]) isAllDay:?];

      v31 = v46;
      sub_261CFD484();
    }

    else
    {
      v32 = *(v22 + 32);
      v42 = v19;
      v33 = v43;
      v32(v43, v21, v27);
      v34 = objc_opt_self();
      v35 = sub_261CFD794();
      v36 = sub_261CFDAA4();
      v37 = [v34 rem:v35 dateComponentsWithDate:v36 timeZone:*(v26 + ItemsRepresentation[6]) isAllDay:?];

      v31 = v46;
      sub_261CFD484();

      v38 = v33;
      v19 = v42;
      (*(v22 + 8))(v38, v27);
    }

    sub_261AE6A40(v19, &qword_27FEDC890, &unk_261D0B1A0);
    v39 = *(v26 + ItemsRepresentation[7]);
    sub_261C19F94(v26, type metadata accessor for RecurrentInstanceSpecifierQueryItemsRepresentation);
    (*(v6 + 32))(a2, v31, v47);
    v40 = type metadata accessor for RecurrentInstanceSpecifier(0);
    *(a2 + *(v40 + 20)) = v39;
    return (*(*(v40 - 8) + 56))(a2, 0, 1, v40);
  }
}

uint64_t sub_261C182AC()
{
  v56 = type metadata accessor for RecurrentInstanceSpecifier(0);
  MEMORY[0x28223BE20](v56);
  v58 = &v56 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  ItemsRepresentation = type metadata accessor for RecurrentInstanceSpecifierQueryItemsRepresentation(0);
  MEMORY[0x28223BE20](ItemsRepresentation);
  v64 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_261CFD7E4();
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x28223BE20](v3);
  v63 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFDAC4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB68, &unk_261D11C90);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v59 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v56 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v56 - v16;
  MEMORY[0x28223BE20](v15);
  v62 = &v56 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC888, &qword_261D0B198);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v56 - v23;
  sub_261CFD4D4();
  v65 = v24;
  sub_261AFB668(v24, v22, &qword_27FEDC888, &qword_261D0B198);
  if ((*(v6 + 48))(v22, 1, v5) == 1)
  {
    sub_261AE6A40(v22, &qword_27FEDC888, &qword_261D0B198);
    v25 = objc_opt_self();
    v26 = v0;
    v27 = sub_261CFD464();
    v28 = [v25 rem:v27 dateWithDateComponentsUsingArchivingTimeZone:?];

    if (v28)
    {
      sub_261CFD7C4();

      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    v35 = v61;
    v36 = v62;
    v37 = v60;
    v38 = v63;
    (*(v60 + 56))(v14, v29, 1, v61);
    v17 = v14;
    v39 = v64;
  }

  else
  {
    (*(v6 + 32))(v8, v22, v5);
    v30 = objc_opt_self();
    v26 = v0;
    v31 = sub_261CFD464();
    v32 = sub_261CFDAA4();
    v33 = [v30 rem:v31 dateWithDateComponents:v32 timeZone:?];

    if (v33)
    {
      sub_261CFD7C4();

      v34 = 0;
    }

    else
    {
      v34 = 1;
    }

    v36 = v62;
    v38 = v63;
    v37 = v60;
    v39 = v64;
    (*(v6 + 8))(v8, v5);
    v35 = v61;
    (*(v37 + 56))(v17, v34, 1, v61);
  }

  sub_261BB4448(v17, v36, &qword_27FEDAB68, &unk_261D11C90);
  v40 = v59;
  sub_261AFB668(v36, v59, &qword_27FEDAB68, &unk_261D11C90);
  if ((*(v37 + 48))(v40, 1, v35) == 1)
  {
    sub_261AE6A40(v40, &qword_27FEDAB68, &unk_261D11C90);
    if (qword_27FED9B48 != -1)
    {
      swift_once();
    }

    v41 = sub_261CFF7A4();
    __swift_project_value_buffer(v41, qword_27FEDC868);
    v42 = v58;
    sub_261C1AAA8(v26, v58, type metadata accessor for RecurrentInstanceSpecifier);
    v43 = sub_261CFF784();
    v44 = sub_261CFFE74();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v66 = v46;
      *v45 = 136315138;
      sub_261CFD4E4();
      sub_261C1977C(&qword_27FEDA168, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
      v47 = sub_261D005F4();
      v49 = v48;
      sub_261C19F94(v42, type metadata accessor for RecurrentInstanceSpecifier);
      v50 = sub_261B879C8(v47, v49, &v66);

      *(v45 + 4) = v50;
      _os_log_impl(&dword_261AE2000, v43, v44, "RecurrentInstanceSpecifier: failed to calculate date {dateComponents:%s}", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x26671D560](v46, -1, -1);
      MEMORY[0x26671D560](v45, -1, -1);
    }

    else
    {

      sub_261C19F94(v42, type metadata accessor for RecurrentInstanceSpecifier);
    }

    v55 = MEMORY[0x277D84F90];
  }

  else
  {
    (*(v37 + 32))(v38, v40, v35);
    sub_261CFEE64();
    swift_allocObject();
    sub_261CFEE54();
    (*(v37 + 16))(v39, v38, v35);
    v51 = ItemsRepresentation;
    sub_261AFB668(v65, v39 + *(ItemsRepresentation + 20), &qword_27FEDC888, &qword_261D0B198);
    v52 = sub_261CFD444();
    v53 = *(v26 + *(v56 + 20));
    *(v39 + *(v51 + 24)) = v52 & 1;
    *(v39 + *(v51 + 28)) = v53;
    sub_261C1977C(&qword_27FEDC8A0, type metadata accessor for RecurrentInstanceSpecifierQueryItemsRepresentation, &unk_261D0B1E4);
    v55 = sub_261CFEE44();

    sub_261C19F94(v39, type metadata accessor for RecurrentInstanceSpecifierQueryItemsRepresentation);
    (*(v37 + 8))(v38, v35);
  }

  sub_261AE6A40(v36, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AE6A40(v65, &qword_27FEDC888, &qword_261D0B198);
  return v55;
}

uint64_t static RecurrentInstanceSpecifier.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x266719B40]())
  {
    v4 = type metadata accessor for RecurrentInstanceSpecifier(0);
    v5 = *(a1 + *(v4 + 20)) ^ *(a2 + *(v4 + 20)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t RecurrentInstanceSpecifier.hash(into:)(uint64_t a1)
{
  sub_261CFD4E4();
  sub_261C1977C(&qword_27FEDA170, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
  sub_261CFF944();
  type metadata accessor for RecurrentInstanceSpecifier(0);
  return sub_261D006E4();
}

uint64_t RecurrentInstanceSpecifier.hashValue.getter()
{
  sub_261D006C4();
  sub_261CFD4E4();
  sub_261C1977C(&qword_27FEDA170, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
  sub_261CFF944();
  type metadata accessor for RecurrentInstanceSpecifier(0);
  sub_261D006E4();
  return sub_261D006F4();
}

uint64_t sub_261C18E34(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC8E0, &qword_261D0B240);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261C1AA54();
  sub_261D00724();
  v8[15] = 0;
  sub_261CFD7E4();
  sub_261C1977C(&qword_27FEDC8E8, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_261D005B4();
  if (!v1)
  {
    type metadata accessor for RecurrentInstanceSpecifierQueryItemsRepresentation(0);
    v8[14] = 1;
    sub_261CFDAC4();
    sub_261C1977C(&qword_27FEDC8F0, MEMORY[0x277CC9A70], MEMORY[0x277CC9A78]);
    sub_261D00594();
    v8[13] = 2;
    sub_261D005A4();
    v8[12] = 3;
    sub_261D005A4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_261C19090@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC888, &qword_261D0B198);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_261CFD7E4();
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC8C0, &qword_261D0B238);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  ItemsRepresentation = type metadata accessor for RecurrentInstanceSpecifierQueryItemsRepresentation(0);
  MEMORY[0x28223BE20](ItemsRepresentation);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261C1AA54();
  v26 = v11;
  v15 = v27;
  sub_261D00714();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v27 = ItemsRepresentation;
  v16 = v24;
  v31 = 0;
  sub_261C1977C(&qword_27FEDC8D0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_261D00584();
  (*(v16 + 32))(v14, v8, v25);
  sub_261CFDAC4();
  v30 = 1;
  sub_261C1977C(&qword_27FEDC8D8, MEMORY[0x277CC9A70], MEMORY[0x277CC9A90]);
  sub_261D00564();
  v17 = v27;
  sub_261BB4448(v5, &v14[*(v27 + 20)], &qword_27FEDC888, &qword_261D0B198);
  v29 = 2;
  v14[*(v17 + 24)] = sub_261D00574() & 1;
  v28 = 3;
  v18 = sub_261D00574();
  (*(v22 + 8))(v26, v23);
  v14[*(v17 + 28)] = v18 & 1;
  sub_261C1AAA8(v14, v21, type metadata accessor for RecurrentInstanceSpecifierQueryItemsRepresentation);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_261C19F94(v14, type metadata accessor for RecurrentInstanceSpecifierQueryItemsRepresentation);
}

uint64_t sub_261C19564(uint64_t a1)
{
  sub_261D006C4();
  sub_261CFD4E4();
  sub_261C1977C(&qword_27FEDA170, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
  sub_261CFF944();
  sub_261D006E4();
  return sub_261D006F4();
}

uint64_t sub_261C19608(uint64_t a1, uint64_t a2)
{
  sub_261CFD4E4();
  sub_261C1977C(&qword_27FEDA170, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
  sub_261CFF944();
  return sub_261D006E4();
}

uint64_t sub_261C19694(uint64_t a1, uint64_t a2)
{
  sub_261D006C4();
  sub_261CFD4E4();
  sub_261C1977C(&qword_27FEDA170, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
  sub_261CFF944();
  sub_261D006E4();
  return sub_261D006F4();
}

uint64_t sub_261C1977C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_261C197C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x266719B40]())
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void *initializeBufferWithCopyOfBuffer for RecurrentInstanceSpecifier(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
    sub_261CFCDA4();
  }

  else
  {
    v7 = sub_261CFD4E4();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

uint64_t destroy for RecurrentInstanceSpecifier(uint64_t a1)
{
  v2 = sub_261CFD4E4();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t initializeWithCopy for RecurrentInstanceSpecifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261CFD4E4();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithCopy for RecurrentInstanceSpecifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261CFD4E4();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t initializeWithTake for RecurrentInstanceSpecifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261CFD4E4();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithTake for RecurrentInstanceSpecifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261CFD4E4();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_261C19B58(uint64_t a1, uint64_t a2)
{
  ItemsRepresentation = type metadata accessor for RecurrentInstanceSpecifierQueryItemsRepresentation(0);
  (*(*(ItemsRepresentation - 8) + 32))(a2, a1, ItemsRepresentation);
  return a2;
}

uint64_t sub_261C19BC8()
{
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261C19C78(uint64_t a1)
{
  sub_261CFFB14();
}

uint64_t sub_261C19D14(uint64_t a1)
{
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

unint64_t sub_261C19DC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_261C1AD68(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_261C19DF0(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 6649188;
  v4 = 0xE700000000000000;
  v5 = 0x7961645F6C6C61;
  if (*v1 != 2)
  {
    v5 = 0x64656C6261736964;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 31348;
    v2 = 0xE200000000000000;
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

uint64_t sub_261C19E5C()
{
  v1 = 6649188;
  v2 = 0x7961645F6C6C61;
  if (*v0 != 2)
  {
    v2 = 0x64656C6261736964;
  }

  if (*v0)
  {
    v1 = 31348;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_261C19EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261C1AD68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261C19EEC(uint64_t a1)
{
  v2 = sub_261C1AA54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261C19F28(uint64_t a1)
{
  v2 = sub_261C1AA54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261C19F94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_261C19FF4(char *a1, char *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
    sub_261CFCDA4();
  }

  else
  {
    v7 = sub_261CFD7E4();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[5];
    v9 = sub_261CFDAC4();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(&a2[v8], 1, v9))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC888, &qword_261D0B198);
      memcpy(&a1[v8], &a2[v8], *(*(v11 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&a1[v8], &a2[v8], v9);
      (*(v10 + 56))(&a1[v8], 0, 1, v9);
    }

    v13 = a3[7];
    a1[a3[6]] = a2[a3[6]];
    a1[v13] = a2[v13];
  }

  return a1;
}

uint64_t sub_261C1A1A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_261CFD7E4();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a2 + 20);
  v6 = sub_261CFDAC4();
  v9 = *(v6 - 8);
  result = (*(v9 + 48))(a1 + v5, 1, v6);
  if (!result)
  {
    v8 = *(v9 + 8);

    return v8(a1 + v5, v6);
  }

  return result;
}

uint64_t sub_261C1A2A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_261CFD7E4();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[5];
  v8 = sub_261CFDAC4();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a2 + v7, 1, v8))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC888, &qword_261D0B198);
    memcpy((a1 + v7), (a2 + v7), *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a1 + v7, a2 + v7, v8);
    (*(v9 + 56))(a1 + v7, 0, 1, v8);
  }

  v11 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + v11) = *(a2 + v11);
  return a1;
}

uint64_t sub_261C1A404(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_261CFD7E4();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = a3[5];
  v8 = sub_261CFDAC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1 + v7, 1, v8);
  v12 = v10(a2 + v7, 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      (*(v9 + 24))(a1 + v7, a2 + v7, v8);
      goto LABEL_7;
    }

    (*(v9 + 8))(a1 + v7, v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC888, &qword_261D0B198);
    memcpy((a1 + v7), (a2 + v7), *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 16))(a1 + v7, a2 + v7, v8);
  (*(v9 + 56))(a1 + v7, 0, 1, v8);
LABEL_7:
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t sub_261C1A5D4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_261CFD7E4();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[5];
  v8 = sub_261CFDAC4();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a2 + v7, 1, v8))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC888, &qword_261D0B198);
    memcpy((a1 + v7), (a2 + v7), *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(a1 + v7, a2 + v7, v8);
    (*(v9 + 56))(a1 + v7, 0, 1, v8);
  }

  v11 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + v11) = *(a2 + v11);
  return a1;
}

uint64_t sub_261C1A734(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_261CFD7E4();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[5];
  v8 = sub_261CFDAC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1 + v7, 1, v8);
  v12 = v10(a2 + v7, 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      (*(v9 + 40))(a1 + v7, a2 + v7, v8);
      goto LABEL_7;
    }

    (*(v9 + 8))(a1 + v7, v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC888, &qword_261D0B198);
    memcpy((a1 + v7), (a2 + v7), *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 32))(a1 + v7, a2 + v7, v8);
  (*(v9 + 56))(a1 + v7, 0, 1, v8);
LABEL_7:
  v14 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + v14) = *(a2 + v14);
  return a1;
}

void sub_261C1A928(uint64_t a1)
{
  sub_261CFD7E4();
  if (v1 <= 0x3F)
  {
    sub_261C1A9FC(319);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void sub_261C1A9FC(uint64_t a1)
{
  if (!qword_27FEDC8B8)
  {
    sub_261CFDAC4();
    v1 = sub_261D00154();
    if (!v2)
    {
      atomic_store(v1, &qword_27FEDC8B8);
    }
  }
}

unint64_t sub_261C1AA54()
{
  result = qword_27FEDC8C8;
  if (!qword_27FEDC8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC8C8);
  }

  return result;
}

uint64_t sub_261C1AAA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for RecurrentInstanceSpecifierQueryItemsRepresentation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RecurrentInstanceSpecifierQueryItemsRepresentation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_261C1AC64()
{
  result = qword_27FEDC8F8;
  if (!qword_27FEDC8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC8F8);
  }

  return result;
}

unint64_t sub_261C1ACBC()
{
  result = qword_27FEDC900;
  if (!qword_27FEDC900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC900);
  }

  return result;
}

unint64_t sub_261C1AD14()
{
  result = qword_27FEDC908;
  if (!qword_27FEDC908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC908);
  }

  return result;
}

unint64_t sub_261C1AD68(uint64_t a1, uint64_t a2)
{
  v2 = sub_261D00554();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_261C1ADB4()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDC910);
  v1 = __swift_project_value_buffer(v0, qword_27FEDC910);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t LocationAlarmEntityRepresentation.MobileSpaceRepresentation.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_261D00554();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t LocationAlarmEntityRepresentation.MobileSpaceRepresentation.rawValue.getter()
{
  if (*v0)
  {
    return 7496035;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_261C1AF20@<X0>(char *a2@<X8>)
{
  v3 = sub_261D00554();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_261C1AFC4(uint64_t a1)
{
  v2 = sub_261C1B490();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_261C1B000(uint64_t a1)
{
  v2 = sub_261C1B490();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_261C1B03C(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C1B364();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_261C1B088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261C1B490();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_261C1B0EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_261C1B364();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

void LocationAlarmEntityRepresentation.MobileSpaceRepresentation.init(appEnum:)(char *a2@<X8>)
{
  v3 = sub_261D00554();

  if (v3)
  {
    if (v3 == 1)
    {
      v4 = 1;
    }

    else
    {
      if (qword_27FED9B50 != -1)
      {
        swift_once();
      }

      v5 = sub_261CFF7A4();
      __swift_project_value_buffer(v5, qword_27FEDC910);
      v6 = sub_261CFF784();
      v7 = sub_261CFFE64();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_261AE2000, v6, v7, "Unable to convert PriorityLevelType to representation", v8, 2u);
        MEMORY[0x26671D560](v8, -1, -1);
      }

      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
}