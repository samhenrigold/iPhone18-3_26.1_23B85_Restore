Swift::Void __swiftcall CounterGroup.resumeDurationCounter(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  os_unfair_lock_lock((v1 + 88));
  if (!*(*(v1 + 128) + 16) || (sub_22B0768A8(countAndFlagsBits, object), (v4 & 1) == 0))
  {
    [*(v1 + 72) uptime];
    v6 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v1 + 128);
    *(v1 + 128) = 0x8000000000000000;
    sub_22B088234(countAndFlagsBits, object, isUniquelyReferenced_nonNull_native, v6);
    *(v1 + 128) = v8;
  }

  os_unfair_lock_unlock((v1 + 88));
}

Swift::Void __swiftcall CounterGroup.pauseDurationCounter(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  os_unfair_lock_lock(v1 + 22);
  sub_22B099BF8(countAndFlagsBits, object, &v1[24]);

  sub_22B080B9C(0, 1, countAndFlagsBits, object);

  os_unfair_lock_unlock(v1 + 22);
}

unint64_t sub_22B099BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22B0DF0E0();
  v51 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v48 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v48 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v48 - v18;
  result = MEMORY[0x28223BE20](v17);
  v50 = &v48 - v21;
  if (*(*(a3 + 32) + 16))
  {
    result = sub_22B0768A8(a1, a2);
    if (v22)
    {
      v23 = *(v3 + 72);
      v58 = v3;
      [v23 uptime];
      v25 = v24;
      v26 = [*(v3 + 64) currentDate];
      v27 = a1;
      v49 = a1;
      v28 = v50;
      sub_22B0DF0B0();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = *(a3 + 32);
      sub_22B088234(v27, a2, isUniquelyReferenced_nonNull_native, v25);
      *(a3 + 32) = v59;
      v30 = v51 + 16;
      v31 = v28;
      v32 = *(v51 + 16);
      v32(v19, v31, v7);
      sub_22B0DF0A0();
      v57 = a3;
      v33 = *(v58 + 16);
      v34 = sub_22B0DF070();
      v56 = v33;
      v35 = v33;
      v36 = v34;
      v37 = [v35 datePartitionContainingDate_];

      sub_22B0DF0B0();
      v38 = sub_22B0DF090();
      v39 = v49;
      if (v38)
      {
        v54 = (v51 + 8);
        v55 = v16;
        v52 = (v51 + 32);
        v53 = v30;
        do
        {
          sub_22B0DEFC0();
          v41 = v40;
          sub_22B0974C4();
          sub_22B09A738(v39, a2, v13, v41);

          v58 = *v54;
          (v58)(v19, v7);
          v32(v19, v13, v7);
          v42 = sub_22B0DF070();
          v43 = a2;
          v44 = [v56 datePartitionWithOffset:-1 fromDatePartition:v42];

          sub_22B0DF0B0();
          a2 = v43;
          (v58)(v13, v7);
          v16 = v55;
          (*v52)(v13, v10, v7);
        }

        while ((sub_22B0DF090() & 1) != 0);
      }

      sub_22B0DEFC0();
      v46 = v45;
      sub_22B0974C4();
      sub_22B09A738(v39, a2, v13, v46);

      v47 = *(v51 + 8);
      v47(v13, v7);
      v47(v16, v7);
      v47(v19, v7);
      return (v47)(v50, v7);
    }
  }

  return result;
}

uint64_t sub_22B09A03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v85 = a3;
  v86 = a2;
  v83 = a1;
  v7 = sub_22B0DF0E0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v74 - v12;
  v14 = [*(v4 + 24) currentDatePartition];
  sub_22B0DF0B0();

  v15 = qword_2813EA5A0;
  swift_beginAccess();
  v16 = *(v8 + 16);
  (v16)(v11, v5 + v15, v7);
  sub_22B076420(&qword_2813EAD70, MEMORY[0x277CC9598]);
  v79 = v13;
  LOBYTE(v14) = sub_22B0DF2F0();
  v17 = *(v8 + 8);
  v76 = v8 + 8;
  v75 = v17;
  v17(v11, v7);
  if ((v14 & 1) == 0)
  {
    v13 = v79;
    sub_22B09CAE4(v79);

    swift_beginAccess();
    (*(v8 + 24))(v5 + v15, v13, v7);
    swift_endAccess();
  }

  v78 = v7;
  v18 = qword_2813EA5B8;
  swift_beginAccess();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_22B09D2D0;
  *(v19 + 24) = 0;
  v74 = v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v89 = *(v5 + v18);
  v21 = v89;
  *(v5 + v18) = 0x8000000000000000;
  v23 = sub_22B07639C(a4);
  v24 = v21[2];
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  LOBYTE(v13) = v22;
  if (v21[3] >= v26)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

LABEL_47:
    sub_22B084798();
    v21 = v89;
    goto LABEL_8;
  }

  sub_22B086764(v26, isUniquelyReferenced_nonNull_native);
  v21 = v89;
  v27 = sub_22B07639C(a4);
  if ((v13 & 1) != (v28 & 1))
  {
    goto LABEL_51;
  }

  v23 = v27;
LABEL_8:
  v29 = v85;
  *(v5 + v18) = v21;
  if ((v13 & 1) == 0)
  {
    LOBYTE(v89) = sub_22B09D2D0() & 1;
    (v16)(v11, a4, v78);
    sub_22B08A804();
  }

  v30 = v21[7] + 16 * v23;
  v33 = *(v30 + 8);
  v31 = (v30 + 8);
  v32 = v33;
  v34 = *(v33 + 16);
  v82 = v5;
  if (!v34 || (v35 = sub_22B0768A8(v86, v29), (v36 & 1) == 0))
  {
    v37 = 0;
    v39 = 1;
    v38 = v83;
    goto LABEL_15;
  }

  v37 = *(*(v32 + 56) + 8 * v35);
  v38 = v37 + v83;
  if (!__OFADD__(v37, v83))
  {
    v39 = 0;
LABEL_15:
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v89 = *v31;
    v18 = v85;
    v41 = v86;
    sub_22B0769D8(v38, v86, v85, v40);
    *v31 = v89;
    swift_endAccess();
    v42 = v38;
    v43 = v82;
    sub_22B09C4F4(v41, v18, v37, v39, v42);
    v44 = qword_2813EA5B0;
    swift_beginAccess();
    v84 = v44;
    v5 = *(v43 + v44);
    a4 = v5 + 64;
    v45 = 1 << *(v5 + 32);
    v46 = -1;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    v23 = v46 & *(v5 + 64);
    v47 = (v45 + 63) >> 6;

    v16 = 0;
    v77 = v5;
    while (1)
    {
      if (!v23)
      {
        while (1)
        {
          v49 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v49 >= v47)
          {
            v75(v79, v78);
          }

          v23 = *(a4 + 8 * v49);
          ++v16;
          if (v23)
          {
            v16 = v49;
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

LABEL_26:
      v50 = (*(v5 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v23)))));
      v18 = *v50;
      v11 = v50[1];
      swift_beginAccess();

      v51 = sub_22B09CA10(v88, v18, v11);
      v48 = v51;
      v53 = *(v52 + 8);
      if (v53)
      {
        v13 = v52;
        if (*v52 == 1)
        {
          break;
        }
      }

LABEL_20:
      (v48)(v88, 0);
      swift_endAccess();
      v23 &= v23 - 1;
    }

    v80 = v51;
    v54 = v83;
    v55 = v85;
    if (*(v53 + 16))
    {
      v56 = sub_22B0768A8(v86, v85);
      v54 = v83;
      if (v57)
      {
        v58 = *(*(v53 + 56) + 8 * v56);
        v54 = v58 + v83;
        if (__OFADD__(v58, v83))
        {
          __break(1u);
          goto LABEL_49;
        }
      }
    }

    v81 = v54;
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v87 = *(v13 + 8);
    v59 = v87;
    *(v13 + 8) = 0x8000000000000000;
    v5 = sub_22B0768A8(v86, v55);
    v61 = v59[2];
    v62 = (v60 & 1) == 0;
    v63 = v61 + v62;
    if (__OFADD__(v61, v62))
    {
      goto LABEL_44;
    }

    v64 = v60;
    if (v59[3] < v63)
    {
      sub_22B086778(v63, v18);
      v65 = sub_22B0768A8(v86, v85);
      if ((v64 & 1) != (v66 & 1))
      {
        goto LABEL_50;
      }

      v5 = v65;
      v67 = v87;
      if ((v64 & 1) == 0)
      {
        goto LABEL_38;
      }

LABEL_18:
      *(v67[7] + 8 * v5) = v81;
LABEL_19:
      *(v13 + 8) = v67;

      v5 = v77;
      v48 = v80;
      goto LABEL_20;
    }

    if (v18)
    {
      v67 = v87;
      if (v60)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_22B0847AC();
      v67 = v87;
      if (v64)
      {
        goto LABEL_18;
      }
    }

LABEL_38:
    v67[(v5 >> 6) + 8] |= 1 << v5;
    v68 = (v67[6] + 16 * v5);
    v69 = v85;
    *v68 = v86;
    v68[1] = v69;
    *(v67[7] + 8 * v5) = v81;
    v70 = v67[2];
    v71 = __OFADD__(v70, 1);
    v72 = v70 + 1;
    if (v71)
    {
      goto LABEL_46;
    }

    v67[2] = v72;

    goto LABEL_19;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  sub_22B0DFCA0();
  __break(1u);
LABEL_51:
  result = sub_22B0DFCA0();
  __break(1u);
  return result;
}

uint64_t sub_22B09A738(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v80 = a2;
  v82 = a1;
  v8 = sub_22B0DF0E0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v72 - v13;
  v15 = [*(v4 + 24) currentDatePartition];
  sub_22B0DF0B0();

  v16 = qword_2813EA5A0;
  swift_beginAccess();
  v17 = *(v9 + 16);
  (v17)(v12, v5 + v16, v8);
  sub_22B076420(&qword_2813EAD70, MEMORY[0x277CC9598]);
  LOBYTE(v15) = sub_22B0DF2F0();
  v18 = *(v9 + 8);
  v74 = v9 + 8;
  v73 = v18;
  v18(v12, v8);
  if ((v15 & 1) == 0)
  {
    sub_22B09CD84(v14);

    swift_beginAccess();
    (*(v9 + 24))(v5 + v16, v14, v8);
    swift_endAccess();
  }

  v75 = v14;
  v77 = v8;
  v19 = qword_2813EA5B8;
  swift_beginAccess();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_22B09D2D0;
  *(v20 + 24) = 0;
  v72 = v20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v85 = *(v5 + v19);
  v22 = v85;
  *(v5 + v19) = 0x8000000000000000;
  v24 = sub_22B07639C(a3);
  v25 = v22[2];
  v26 = (v23 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  LOBYTE(v14) = v23;
  if (v22[3] >= v27)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

LABEL_46:
    sub_22B084914();
    v22 = v85;
    goto LABEL_8;
  }

  sub_22B086A18(v27, isUniquelyReferenced_nonNull_native);
  v22 = v85;
  v28 = sub_22B07639C(a3);
  if ((v14 & 1) == (v29 & 1))
  {
    v24 = v28;
LABEL_8:
    v30 = v80;
    *(v5 + v19) = v22;
    if ((v14 & 1) == 0)
    {
      LOBYTE(v85) = sub_22B09D2D0() & 1;
      (v17)(v12, a3, v77);
      sub_22B08A804();
    }

    v31 = v22[7] + 16 * v24;
    v34 = *(v31 + 8);
    v32 = (v31 + 8);
    v33 = v34;
    v35 = *(v34 + 16);
    v79 = v5;
    if (v35 && (v36 = sub_22B0768A8(v82, v30), (v37 & 1) != 0))
    {
      v24 = 0;
      v38 = *(*(v33 + 56) + 8 * v36) + a4;
      v39 = *(*(v33 + 56) + 8 * v36);
    }

    else
    {
      v39 = 0;
      v24 = 1;
      v38 = a4;
    }

    v40 = swift_isUniquelyReferenced_nonNull_native();
    v85 = *v32;
    v19 = v82;
    sub_22B088234(v82, v30, v40, v38);
    *v32 = v85;
    swift_endAccess();
    v41 = v30;
    v42 = v79;
    sub_22B09C640(v19, v41, v39, v24, v38);
    v43 = qword_2813EA5B0;
    swift_beginAccess();
    v81 = v43;
    v5 = *(v42 + v43);
    a3 = v5 + 64;
    v44 = 1 << *(v5 + 32);
    v45 = -1;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    v14 = v45 & *(v5 + 64);
    v46 = (v44 + 63) >> 6;

    v17 = 0;
    v76 = v5;
    while (1)
    {
      if (!v14)
      {
        while (1)
        {
          v48 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v48 >= v46)
          {
            v73(v75, v77);
          }

          v14 = *(a3 + 8 * v48);
          ++v17;
          if (v14)
          {
            v17 = v48;
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

LABEL_25:
      v49 = (*(v5 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v14)))));
      v19 = *v49;
      v12 = v49[1];
      swift_beginAccess();

      v50 = sub_22B09C988(v84, v19, v12);
      v47 = v50;
      v52 = *(v51 + 8);
      if (v52)
      {
        v24 = v51;
        if (*v51 == 1)
        {
          break;
        }
      }

LABEL_19:
      (v47)(v84, 0);
      swift_endAccess();
      v14 &= v14 - 1;
    }

    v78 = v50;
    v53 = a4;
    v54 = v80;
    if (*(v52 + 16))
    {
      v55 = sub_22B0768A8(v82, v80);
      v53 = a4;
      if (v56)
      {
        v53 = *(*(v52 + 56) + 8 * v55) + a4;
      }
    }

    v19 = swift_isUniquelyReferenced_nonNull_native();
    v83 = *(v24 + 8);
    v57 = v83;
    *(v24 + 8) = 0x8000000000000000;
    v5 = sub_22B0768A8(v82, v54);
    v59 = v57[2];
    v60 = (v58 & 1) == 0;
    v61 = v59 + v60;
    if (__OFADD__(v59, v60))
    {
      goto LABEL_43;
    }

    v62 = v58;
    if (v57[3] < v61)
    {
      sub_22B086E18(v61, v19);
      v63 = sub_22B0768A8(v82, v80);
      if ((v62 & 1) != (v64 & 1))
      {
        sub_22B0DFCA0();
        __break(1u);
        goto LABEL_48;
      }

      v5 = v63;
      v65 = v83;
      if ((v62 & 1) == 0)
      {
        goto LABEL_37;
      }

LABEL_17:
      *(v65[7] + 8 * v5) = v53;
LABEL_18:
      *(v24 + 8) = v65;

      v47 = v78;
      v5 = v76;
      goto LABEL_19;
    }

    if (v19)
    {
      v65 = v83;
      if (v58)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_22B084928();
      v65 = v83;
      if (v62)
      {
        goto LABEL_17;
      }
    }

LABEL_37:
    v65[(v5 >> 6) + 8] |= 1 << v5;
    v66 = (v65[6] + 16 * v5);
    v67 = v80;
    *v66 = v82;
    v66[1] = v67;
    *(v65[7] + 8 * v5) = v53;
    v68 = v65[2];
    v69 = __OFADD__(v68, 1);
    v70 = v68 + 1;
    if (v69)
    {
      goto LABEL_45;
    }

    v65[2] = v70;

    goto LABEL_18;
  }

LABEL_48:
  result = sub_22B0DFCA0();
  __break(1u);
  return result;
}

uint64_t sub_22B09AE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v104 = a3;
  v106 = a2;
  v103 = a1;
  v7 = sub_22B0DF0E0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v93 - v12;
  v14 = [*(v4 + 24) currentDatePartition];
  sub_22B0DF0B0();

  v15 = qword_2813EA5A0;
  swift_beginAccess();
  v16 = *(v8 + 16);
  (v16)(v11, v5 + v15, v7);
  sub_22B076420(&qword_2813EAD70, MEMORY[0x277CC9598]);
  LOBYTE(v14) = sub_22B0DF2F0();
  v17 = *(v8 + 8);
  v95 = v8 + 8;
  v94 = v17;
  v17(v11, v7);
  if ((v14 & 1) == 0)
  {
    sub_22B09D024(v13);

    swift_beginAccess();
    (*(v8 + 24))(v5 + v15, v13, v7);
    swift_endAccess();
  }

  v96 = v13;
  v98 = v7;
  v18 = qword_2813EA5B8;
  swift_beginAccess();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_22B09D2D0;
  *(v19 + 24) = 0;
  v93[1] = v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v111 = *(v5 + v18);
  v21 = v111;
  *(v5 + v18) = 0x8000000000000000;
  v23 = sub_22B07639C(a4);
  v24 = v21[2];
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    goto LABEL_58;
  }

  LOBYTE(v13) = v22;
  if (v21[3] >= v26)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_60;
    }

    *(v5 + v18) = v21;
    if ((v22 & 1) == 0)
    {
      goto LABEL_10;
    }

    while (1)
    {
LABEL_11:
      v29 = v21[7] + 16 * v23;
      v32 = *(v29 + 8);
      v30 = (v29 + 8);
      v31 = v32;
      v33 = *(v32 + 16);
      v34 = 0.0;
      if (v33)
      {
        v16 = v104;
        v35 = sub_22B0768A8(v106, v104);
        if (v36)
        {
          v37 = 0;
          v38 = *(v31 + 56) + 40 * v35;
          v33 = *v38;
          v39 = *(v38 + 8);
          v40 = *(v38 + 16);
          v34 = *(v38 + 24);
          v41 = *(v38 + 32);
        }

        else
        {
          v33 = 0;
          v39 = 0;
          v40 = 0;
          v37 = 1;
          v41 = 0.0;
        }
      }

      else
      {
        v39 = 0;
        v40 = 0;
        v37 = 1;
        v41 = 0.0;
        v16 = v104;
      }

      *&v111 = v33;
      *(&v111 + 1) = v39;
      v112 = v40;
      v113 = v34;
      v114 = v41;
      v115 = v37;
      if (v37)
      {
        v39 = v103;
        v42 = v103;
        v43 = 1;
        v44 = v42 * v42;
        v33 = v103;
        v45 = v103;
        v46 = v42 * v42;
      }

      else
      {
        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          sub_22B0DFCA0();
          __break(1u);
          goto LABEL_65;
        }

        if (v39 <= v103)
        {
          v39 = v103;
        }

        if (v33 >= v103)
        {
          v33 = v103;
        }

        v42 = v103;
        v45 = v34 + v103;
        v44 = v42 * v42;
        v46 = v42 * v42 + v41;
      }

      v116[0] = v33;
      v116[1] = v39;
      v116[2] = v43;
      *&v116[3] = v45;
      *&v116[4] = v46;
      v47 = swift_isUniquelyReferenced_nonNull_native();
      v110[0] = *v30;
      *v30 = 0x8000000000000000;
      v48 = v106;
      sub_22B088390(v116, v106, v16, v47);
      *v30 = v110[0];
      swift_endAccess();
      sub_22B09C79C(v48, v16, &v111, v116);
      v49 = qword_2813EA5B0;
      swift_beginAccess();
      v105 = v49;
      v50 = *(v5 + v49);
      a4 = v50 + 64;
      v51 = 1 << *(v50 + 32);
      v52 = -1;
      if (v51 < 64)
      {
        v52 = ~(-1 << v51);
      }

      v13 = v52 & *(v50 + 64);
      v53 = (v51 + 63) >> 6;
      v107 = v50;

      v18 = 0;
      v97 = v5;
      while (v13)
      {
LABEL_35:
        v58 = (*(v107 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v13)))));
        v59 = *v58;
        v11 = v58[1];
        swift_beginAccess();

        v60 = sub_22B09C8FC(v109, v59, v11);
        v56 = v60;
        v62 = *(v61 + 8);
        if (v62)
        {
          v23 = v61;
          if (*v61 == 1)
          {
            v63 = *(v62 + 16);
            v99 = v60;
            if (v63 && (v64 = sub_22B0768A8(v106, v16), (v65 & 1) != 0))
            {
              v66 = *(v62 + 56) + 40 * v64;
              v67 = *(v66 + 16);
              v68 = __OFADD__(v67, 1);
              v69 = v67 + 1;
              if (v68)
              {
                goto LABEL_63;
              }

              v102 = v69;
              v71 = *(v66 + 24);
              v70 = *(v66 + 32);
              v74 = v66;
              v72 = *v66;
              v73 = *(v74 + 8);
              if (v73 <= v103)
              {
                v73 = v103;
              }

              v101 = v73;
              if (v72 >= v103)
              {
                v72 = v103;
              }

              v100 = v72;
              v75 = v71 + v42;
              v76 = v44 + v70;
            }

            else
            {
              v100 = v103;
              v101 = v103;
              v102 = 1;
              v75 = v42;
              v76 = v44;
            }

            v5 = swift_isUniquelyReferenced_nonNull_native();
            v108 = *(v23 + 8);
            v77 = v108;
            *(v23 + 8) = 0x8000000000000000;
            v16 = sub_22B0768A8(v106, v16);
            v79 = v77[2];
            v80 = (v78 & 1) == 0;
            v81 = v79 + v80;
            if (__OFADD__(v79, v80))
            {
              goto LABEL_57;
            }

            v82 = v78;
            if (v77[3] >= v81)
            {
              if ((v5 & 1) == 0)
              {
                sub_22B084D38();
              }
            }

            else
            {
              sub_22B0870D0(v81, v5);
              v83 = sub_22B0768A8(v106, v104);
              if ((v82 & 1) != (v84 & 1))
              {
                goto LABEL_64;
              }

              v16 = v83;
            }

            v5 = v97;
            v85 = v108;
            if (v82)
            {
              v54 = v108[7] + 40 * v16;
              v55 = v101;
              *v54 = v100;
              *(v54 + 8) = v55;
              *(v54 + 16) = v102;
              *(v54 + 24) = v75;
              *(v54 + 32) = v76;
              v16 = v104;
            }

            else
            {
              v108[(v16 >> 6) + 8] |= 1 << v16;
              v86 = (v85[6] + 16 * v16);
              v87 = v104;
              *v86 = v106;
              v86[1] = v87;
              v88 = v85[7] + 40 * v16;
              v89 = v101;
              *v88 = v100;
              *(v88 + 8) = v89;
              *(v88 + 16) = v102;
              *(v88 + 24) = v75;
              *(v88 + 32) = v76;
              v90 = v85[2];
              v68 = __OFADD__(v90, 1);
              v91 = v90 + 1;
              if (v68)
              {
                goto LABEL_59;
              }

              v85[2] = v91;
            }

            *(v23 + 8) = v85;

            v56 = v99;
          }
        }

        (v56)(v109, 0);
        swift_endAccess();
        v13 &= v13 - 1;
      }

      while (1)
      {
        v57 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v57 >= v53)
        {
          v94(v96, v98);
        }

        v13 = *(a4 + 8 * v57);
        ++v18;
        if (v13)
        {
          v18 = v57;
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      sub_22B084A90();
      v21 = v111;
      *(v5 + v18) = v111;
      if ((v13 & 1) == 0)
      {
LABEL_10:
        LOBYTE(v111) = sub_22B09D2D0() & 1;
        (v16)(v11, a4, v98);
        sub_22B08A804();
      }
    }
  }

  sub_22B0870BC(v26, isUniquelyReferenced_nonNull_native);
  v21 = v111;
  v27 = sub_22B07639C(a4);
  if ((v13 & 1) == (v28 & 1))
  {
    v23 = v27;
    *(v5 + v18) = v21;
    if ((v13 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

LABEL_65:
  result = sub_22B0DFCA0();
  __break(1u);
  return result;
}

uint64_t CounterGroup.duration(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(v3 + 22);
  sub_22B099BF8(a1, a2, &v3[24]);
  sub_22B0974C4();
  v7 = sub_22B0990A0(a1, a2, a3);

  os_unfair_lock_unlock(v3 + 22);
  return v7;
}

Swift::Double_optional __swiftcall CounterGroup.duration(_:in:)(Swift::String _, Swift::String in)
{
  object = in._object;
  countAndFlagsBits = in._countAndFlagsBits;
  v5 = _._object;
  v6 = _._countAndFlagsBits;
  os_unfair_lock_lock(v2 + 22);
  sub_22B099BF8(v6, v5, &v2[24]);
  sub_22B0974C4();
  LOBYTE(object) = sub_22B0991A0(v6, v5, countAndFlagsBits, object);

  os_unfair_lock_unlock(v2 + 22);
  v8 = object;
  result.value = v7;
  result.is_nil = v8;
  return result;
}

uint64_t CounterGroup.durations(for:)(uint64_t a1)
{
  os_unfair_lock_lock(v1 + 22);
  sub_22B097810(&v1[24]);
  sub_22B0974C4();
  sub_22B09CD84(a1);
  v4 = v3;

  os_unfair_lock_unlock(v1 + 22);
  return v4;
}

uint64_t CounterGroup.durations(in:)(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(v2 + 22);
  sub_22B097810(&v2[24]);
  sub_22B0974C4();
  v5 = sub_22B0993C8(a1, a2, sub_22B0B9204);

  os_unfair_lock_unlock(v2 + 22);
  return v5;
}

double CounterGroup.sumOfDurations(for:)(uint64_t a1)
{
  os_unfair_lock_lock(v1 + 22);
  sub_22B097810(&v1[24]);
  sub_22B0974C4();
  sub_22B0995A8(a1);
  v4 = v3;

  os_unfair_lock_unlock(v1 + 22);
  return v4;
}

Swift::Double __swiftcall CounterGroup.sumOfDurations(inEphemeralContainer:)(Swift::String inEphemeralContainer)
{
  object = inEphemeralContainer._object;
  countAndFlagsBits = inEphemeralContainer._countAndFlagsBits;
  os_unfair_lock_lock(v1 + 22);
  sub_22B097810(&v1[24]);
  sub_22B0974C4();
  sub_22B0998B8(countAndFlagsBits, object);
  v5 = v4;

  os_unfair_lock_unlock(v1 + 22);
  return v5;
}

Swift::Void __swiftcall CounterGroup.addValue(_:toDistribution:)(Swift::Int _, Swift::String toDistribution)
{
  object = toDistribution._object;
  countAndFlagsBits = toDistribution._countAndFlagsBits;
  v6 = sub_22B0DF0E0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock(v2 + 22);
  v10 = [*(sub_22B0975F8() + 24) currentDatePartition];
  sub_22B0DF0B0();

  sub_22B09AE18(_, countAndFlagsBits, object, v9);

  (*(v7 + 8))(v9, v6);
  os_unfair_lock_unlock(v2 + 22);
}

void CounterGroup.distribution(_:for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  os_unfair_lock_lock(v4 + 22);
  sub_22B0975F8();
  sub_22B09D024(a3);
  sub_22B09D2E0(a1, a2, v9, a4);

  os_unfair_lock_unlock(v4 + 22);
}

void __swiftcall CounterGroup.distribution(_:in:)(HomeKitMetrics::CounterDistribution_optional *__return_ptr retstr, Swift::String _, Swift::String in)
{
  object = in._object;
  countAndFlagsBits = in._countAndFlagsBits;
  v6 = _._object;
  v7 = _._countAndFlagsBits;
  os_unfair_lock_lock(v3 + 22);
  sub_22B0975F8();
  sub_22B099288(v7, v6, countAndFlagsBits, object, retstr);

  os_unfair_lock_unlock(v3 + 22);
}

uint64_t sub_22B09BC6C(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t))
{
  os_unfair_lock_lock(v3 + 22);
  a2();
  a3(a1);
  v8 = v7;

  os_unfair_lock_unlock(v3 + 22);
  return v8;
}

uint64_t sub_22B09BD10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  os_unfair_lock_lock(v4 + 22);
  a3();
  v9 = sub_22B0993C8(a1, a2, a4);

  os_unfair_lock_unlock(v4 + 22);
  return v9;
}

void CounterGroup.aggregatedDistribution(for:)(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  os_unfair_lock_lock(v2 + 22);
  sub_22B0975F8();
  sub_22B099668(a1, a2);

  os_unfair_lock_unlock(v2 + 22);
}

void __swiftcall CounterGroup.aggregatedDistribution(in:)(HomeKitMetrics::CounterDistribution *__return_ptr retstr, Swift::String in)
{
  object = in._object;
  countAndFlagsBits = in._countAndFlagsBits;
  os_unfair_lock_lock(v2 + 22);
  sub_22B0975F8();
  sub_22B099988(countAndFlagsBits, object, retstr);

  os_unfair_lock_unlock(v2 + 22);
}

uint64_t CounterGroup.datePartitions.getter()
{
  v1 = v0;
  v2 = v0[6];
  v3 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v2);
  v4 = *(v3 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5AB0, &unk_22B0E2A10);
  v4(&v12, sub_22B09DF94, v0, v5, v2, v3);
  if (v12)
  {
    v6 = v12;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v7 = sub_22B09EF88(v6);

  v8 = v1[6];
  v9 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v8);
  v11[2] = v1;
  v11[3] = v7;
  (*(v9 + 32))(&v12, sub_22B09F110, v11, v5, v8, v9);

  return v12;
}

void sub_22B09BFB4(os_unfair_lock_s *a1@<X0>, uint64_t a2@<X1>, size_t *a3@<X8>)
{
  os_unfair_lock_lock(a1 + 22);
  sub_22B09C024(a2, a3);
  os_unfair_lock_unlock(a1 + 22);
  if (v3)
  {
    __break(1u);
  }
}

uint64_t sub_22B09C024@<X0>(uint64_t a1@<X1>, size_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5AC0, &qword_22B0E5C00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B0E4400;
  *(inited + 32) = a1;

  sub_22B097390();
  swift_beginAccess();

  v6 = sub_22B098960(v5);

  *(inited + 40) = v6;
  sub_22B0974C4();
  swift_beginAccess();

  v8 = sub_22B098960(v7);

  *(inited + 48) = v8;
  sub_22B0975F8();
  swift_beginAccess();

  v10 = sub_22B098960(v9);

  *(inited + 56) = v10;
  v11 = sub_22B098524(inited);
  v12 = v11;
  v13 = *(v11 + 16);
  if (!v13)
  {
    goto LABEL_4;
  }

  v14 = sub_22B083388(*(v11 + 16), 0);
  v15 = *(sub_22B0DF0E0() - 8);
  v16 = sub_22B093468(&v18, &v14[(*(v15 + 80) + 32) & ~*(v15 + 80)], v13, v12);
  result = sub_22B0781A0(v18);
  if (v16 != v13)
  {
    __break(1u);
LABEL_4:

    v14 = MEMORY[0x277D84F90];
  }

  *a2 = v14;
  return result;
}

void sub_22B09C208(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 22);
  sub_22B09C274(&a1[24]);
  os_unfair_lock_unlock(a1 + 22);
  if (v1)
  {
    __break(1u);
  }
}

uint64_t sub_22B09C274(uint64_t a1)
{
  sub_22B097810(a1);
  v1 = sub_22B097390();
  v2 = v1[7];
  v3 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v2);
  v19 = sub_22B09F3C8;
  v20 = v1;
  v4 = MEMORY[0x277D84F78];
  (*(v3 + 24))(&v21, sub_22B0A0244, v18, &type metadata for AccumulatorCounter, MEMORY[0x277D84F78] + 8, &off_2813EA3C0, v2, v3);

  v5 = sub_22B0974C4();
  v6 = v5[7];
  v7 = v5[8];
  __swift_project_boxed_opaque_existential_1(v5 + 4, v6);
  v16 = sub_22B09F3F8;
  v17 = v5;
  (*(v7 + 24))(&v21, sub_22B0A0244, v15, &type metadata for DurationCounter, v4 + 8, &off_2813EA778, v6, v7);

  v8 = sub_22B0975F8();
  v9 = v8[7];
  v10 = v8[8];
  __swift_project_boxed_opaque_existential_1(v8 + 4, v9);
  v14[2] = sub_22B09F428;
  v14[3] = v8;
  v11 = *(v10 + 24);
  v12 = sub_22B09F458();
  v11(&v21, sub_22B0A0244, v14, &type metadata for DistributionCounter, v4 + 8, v12, v9, v10);
}

uint64_t CounterGroup.deinit()
{
  sub_22B091448(v0 + 16);

  sub_22B09F12C(v0 + 96);
  return v0;
}

uint64_t CounterGroup.__deallocating_deinit()
{
  sub_22B091448(v0 + 16);

  sub_22B09F12C(v0 + 96);

  return MEMORY[0x2821FE8D8](v0, 136, 7);
}

uint64_t sub_22B09C4F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v9 = qword_2813EA598;
  swift_beginAccess();
  v10 = *(v5 + v9);
  if (!*(v10 + 16))
  {
    return swift_endAccess();
  }

  v11 = sub_22B0768A8(a1, a2);
  if ((v12 & 1) == 0)
  {
    return swift_endAccess();
  }

  v13 = *(*(v10 + 56) + 8 * v11);
  swift_endAccess();
  v14 = *(v13 + 16);

  if (!v14)
  {
  }

  v16 = 0;
  v17 = v13 + 32;
  v18 = a4 & 1;
  while (v16 < *(v13 + 16))
  {
    sub_22B07D124(v17, v26);
    ++v16;
    v23 = a5;
    v24 = a3;
    v25 = v18;
    v19 = v27;
    v20 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    (*(v20 + 16))(a1, a2, &v24, &v23, v19, v20);
    result = __swift_destroy_boxed_opaque_existential_0(v26);
    v17 += 40;
    if (v14 == v16)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B09C640(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  v10 = qword_2813EA598;
  swift_beginAccess();
  v11 = *(v5 + v10);
  if (!*(v11 + 16))
  {
    return swift_endAccess();
  }

  v12 = sub_22B0768A8(a1, a2);
  if ((v13 & 1) == 0)
  {
    return swift_endAccess();
  }

  v14 = *(*(v11 + 56) + 8 * v12);
  swift_endAccess();
  v15 = *(v14 + 16);

  if (!v15)
  {
  }

  v17 = 0;
  v18 = v14 + 32;
  v19 = a4 & 1;
  while (v17 < *(v14 + 16))
  {
    sub_22B07D124(v18, v26);
    ++v17;
    v24 = a3;
    v25 = v19;
    v23 = a5;
    v20 = v27;
    v21 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    (*(v21 + 16))(a1, a2, &v24, &v23, v20, v21);
    result = __swift_destroy_boxed_opaque_existential_0(v26);
    v18 += 40;
    if (v15 == v17)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B09C79C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v9 = qword_2813EA598;
  swift_beginAccess();
  v10 = *(v4 + v9);
  if (!*(v10 + 16))
  {
    return swift_endAccess();
  }

  v11 = sub_22B0768A8(a1, a2);
  if ((v12 & 1) == 0)
  {
    return swift_endAccess();
  }

  v22 = a1;
  v13 = *(*(v10 + 56) + 8 * v11);
  swift_endAccess();
  v14 = *(v13 + 16);

  if (!v14)
  {
  }

  v16 = 0;
  v17 = v13 + 32;
  while (v16 < *(v13 + 16))
  {
    sub_22B07D124(v17, v27);
    ++v16;
    v18 = a3[1];
    v25 = *a3;
    v26[0] = v18;
    *(v26 + 9) = *(a3 + 25);
    v19 = *(a4 + 16);
    v23[0] = *a4;
    v23[1] = v19;
    v24 = *(a4 + 32);
    v20 = v28;
    v21 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    (*(v21 + 16))(v22, a2, &v25, v23, v20, v21);
    result = __swift_destroy_boxed_opaque_existential_0(v27);
    v17 += 40;
    if (v14 == v16)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t (*sub_22B09C8FC(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_22B09E004(v6, a2, a3);
  return sub_22B09C984;
}

uint64_t (*sub_22B09C988(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_22B09E0B4(v6, a2, a3);
  return sub_22B0A0230;
}

uint64_t (*sub_22B09CA10(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_22B09E160(v6, a2, a3);
  return sub_22B0A0230;
}

void sub_22B09CA98(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_22B09CAE4(uint64_t a1)
{
  v2 = v1;
  v4 = qword_2813EA5B8;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (*(v5 + 16) && (v6 = sub_22B07639C(a1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 16 * v6);
    swift_endAccess();
    if ((v8 & 1) == 0)
    {

      return 0;
    }
  }

  else
  {
    swift_endAccess();
  }

  v10 = v2[7];
  v11 = v2[8];
  v12 = __swift_project_boxed_opaque_existential_1(v2 + 4, v10);
  MEMORY[0x28223BE20](v12);
  v25[2] = v2;
  v25[3] = a1;
  v13 = *(v11 + 24);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5AD8, &qword_22B0E4530);
  v13(&v27, sub_22B09FF98, v25, &type metadata for AccumulatorCounter, v14, &off_2813EA3C0, v10, v11);
  v9 = (v28 != 0) & v27;
  if (v28)
  {
    v15 = v28;
  }

  else
  {
    v15 = MEMORY[0x277D84F98];
  }

  swift_beginAccess();
  v16 = *(v2 + v4);
  if (*(v16 + 16) && (v17 = sub_22B07639C(a1), (v18 & 1) != 0))
  {
    v19 = *(v16 + 56) + 16 * v17;
    v20 = *v19;
    v21 = *(v19 + 8);
    swift_endAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v15;
    if (v20)
    {
      sub_22B09F4AC(v21, sub_22B09E7D8, 0, isUniquelyReferenced_nonNull_native, &v27);
    }

    else
    {
      sub_22B09F734(v21, sub_22B09E7D8, 0, isUniquelyReferenced_nonNull_native, &v27);
    }

    v15 = v27;
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();

  v23 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(v2 + v4);
  *(v2 + v4) = 0x8000000000000000;
  sub_22B088008(v9, v15, a1, v23);
  *(v2 + v4) = v26;
  swift_endAccess();
  return v9;
}

uint64_t sub_22B09CD84(uint64_t a1)
{
  v2 = v1;
  v4 = qword_2813EA5B8;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (*(v5 + 16) && (v6 = sub_22B07639C(a1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 16 * v6);
    swift_endAccess();
    if ((v8 & 1) == 0)
    {

      return 0;
    }
  }

  else
  {
    swift_endAccess();
  }

  v10 = v2[7];
  v11 = v2[8];
  v12 = __swift_project_boxed_opaque_existential_1(v2 + 4, v10);
  MEMORY[0x28223BE20](v12);
  v25[2] = v2;
  v25[3] = a1;
  v13 = *(v11 + 24);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5AD0, &qword_22B0E4528);
  v13(&v27, sub_22B0A020C, v25, &type metadata for DurationCounter, v14, &off_2813EA778, v10, v11);
  v9 = (v28 != 0) & v27;
  if (v28)
  {
    v15 = v28;
  }

  else
  {
    v15 = MEMORY[0x277D84F98];
  }

  swift_beginAccess();
  v16 = *(v2 + v4);
  if (*(v16 + 16) && (v17 = sub_22B07639C(a1), (v18 & 1) != 0))
  {
    v19 = *(v16 + 56) + 16 * v17;
    v20 = *v19;
    v21 = *(v19 + 8);
    swift_endAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v15;
    if (v20)
    {
      sub_22B09E830(v21, sub_22B09E7F0, 0, isUniquelyReferenced_nonNull_native, &v27);
    }

    else
    {
      sub_22B09EAB0(v21, sub_22B09E7F0, 0, isUniquelyReferenced_nonNull_native, &v27);
    }

    v15 = v27;
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();

  v23 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(v2 + v4);
  *(v2 + v4) = 0x8000000000000000;
  sub_22B08801C(v9, v15, a1, v23);
  *(v2 + v4) = v26;
  swift_endAccess();
  return v9;
}

uint64_t sub_22B09D024(uint64_t a1)
{
  v2 = v1;
  v4 = qword_2813EA5B8;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (*(v5 + 16) && (v6 = sub_22B07639C(a1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 16 * v6);
    swift_endAccess();
    if ((v8 & 1) == 0)
    {

      return 0;
    }
  }

  else
  {
    swift_endAccess();
  }

  v10 = v2[7];
  v11 = v2[8];
  v12 = __swift_project_boxed_opaque_existential_1(v2 + 4, v10);
  v27 = &v27;
  MEMORY[0x28223BE20](v12);
  v26[2] = v2;
  v26[3] = a1;
  v13 = *(v11 + 24);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5AC8, "\\m");
  v15 = sub_22B09F458();
  v13(&v29, sub_22B0A020C, v26, &type metadata for DistributionCounter, v14, v15, v10, v11);
  v9 = (v30 != 0) & v29;
  if (v30)
  {
    v16 = v30;
  }

  else
  {
    v16 = MEMORY[0x277D84F98];
  }

  swift_beginAccess();
  v17 = *(v2 + v4);
  if (*(v17 + 16) && (v18 = sub_22B07639C(a1), (v19 & 1) != 0))
  {
    v20 = *(v17 + 56) + 16 * v18;
    v21 = *v20;
    v22 = *(v20 + 8);
    swift_endAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v16;
    if (v21)
    {
      sub_22B09F9A8(v22, sub_22B09E808, 0, isUniquelyReferenced_nonNull_native, &v29);
    }

    else
    {
      sub_22B09FCC8(v22, sub_22B09E808, 0, isUniquelyReferenced_nonNull_native, &v29);
    }

    v16 = v29;
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();

  v24 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(v2 + v4);
  *(v2 + v4) = 0x8000000000000000;
  sub_22B088030(v9, v16, a1, v24);
  *(v2 + v4) = v28;
  swift_endAccess();
  return v9;
}

double sub_22B09D2E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_22B0768A8(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 40 * v6;
    v9 = *(v8 + 16);
    *a4 = *v8;
    *(a4 + 16) = v9;
    v10 = *(v8 + 24);
    *(a4 + 24) = v10;
    *(a4 + 40) = 0;
  }

  else
  {
    *(a4 + 32) = 0;
    *&v10 = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 40) = 1;
  }

  return *&v10;
}

uint64_t sub_22B09D354(void *a1, uint64_t a2, void (*a3)(void))
{
  v47 = a3;
  v61 = sub_22B0DF0E0();
  v5 = *(v61 - 8);
  v6 = MEMORY[0x28223BE20](v61);
  v56 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v48 = &v47 - v9;
  MEMORY[0x28223BE20](v8);
  v55 = &v47 - v10;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = qword_2813EA5B8;
  swift_beginAccess();
  v14 = *(a2 + 16);
  v15 = *(v12 + 24);

  v15(v16, v14, v11, v12);

  v49 = v13;
  v17 = *(a2 + v13);
  v20 = *(v17 + 64);
  v19 = v17 + 64;
  v18 = v20;
  v21 = 1 << *(*(a2 + v13) + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = qword_2813EA5A0;
  v59 = *(a2 + v13);

  v54 = v24;
  v60 = a2;
  result = swift_beginAccess();
  v26 = 0;
  v27 = (v21 + 63) >> 6;
  v53 = v5 + 16;
  v51 = v5 + 32;
  v57 = v5;
  v28 = v5 + 8;
  v29 = v48;
  v52 = v19;
  v50 = v28;
  while (v23)
  {
LABEL_12:
    v31 = *(v59 + 48);
    v32 = v57;
    v58 = *(v57 + 72);
    v33 = *(v57 + 16);
    v34 = v55;
    v35 = v61;
    v33(v55, v31 + v58 * (__clz(__rbit64(v23)) | (v26 << 6)), v61);
    (*(v32 + 32))(v29, v34, v35);
    v36 = v60;
    v37 = v56;
    v33(v56, v60 + v54, v35);
    sub_22B076420(&qword_2813EAD70, MEMORY[0x277CC9598]);
    LOBYTE(v33) = sub_22B0DF2F0();
    v38 = *(v32 + 8);
    v38(v37, v35);
    if ((v33 & 1) == 0)
    {
      swift_beginAccess();
      v39 = v29;
      v40 = sub_22B07639C(v29);
      if (v41)
      {
        v42 = v36;
        v43 = v40;
        v44 = v49;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = *(v42 + v44);
        v62 = v46;
        *(v42 + v44) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          v47();
          v46 = v62;
        }

        v38((*(v46 + 48) + v43 * v58), v61);

        sub_22B09DADC(v43, v46);
        *(v42 + v44) = v46;
      }

      swift_endAccess();
      v29 = v39;
    }

    v23 &= v23 - 1;
    result = (v38)(v29, v61);
    v19 = v52;
  }

  while (1)
  {
    v30 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v30 >= v27)
    {
    }

    v23 = *(v19 + 8 * v30);
    ++v26;
    if (v23)
    {
      v26 = v30;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B09D770(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22B0DF7F0() + 1) & ~v5;
    do
    {
      sub_22B0DFD40();

      sub_22B0DF380();
      v11 = sub_22B0DFD80();

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
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
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

uint64_t sub_22B09D92C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22B0DF7F0() + 1) & ~v5;
    do
    {
      sub_22B0DFD40();

      sub_22B0DF380();
      v9 = sub_22B0DFD80();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_22B09DADC(int64_t a1, uint64_t a2)
{
  v40 = sub_22B0DF0E0();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_22B0DF7F0();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_22B076420(&qword_2813EAD80, MEMORY[0x277CC9588]);
      v23 = sub_22B0DF2A0();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 16 * a1);
          v30 = (v28 + 16 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_22B09DDE4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22B0DF7F0() + 1) & ~v5;
    do
    {
      sub_22B0DFD40();

      sub_22B0DF380();
      v9 = sub_22B0DFD80();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22B09DF94@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  result = (*(v5 + 32))(*(v2 + 80), v4, v5);
  *a2 = result;
  return result;
}

uint64_t (*sub_22B09E004(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
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
  v7[8] = sub_22B09E77C(v7);
  v7[9] = sub_22B09E26C(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_22B09E0B0;
}

uint64_t (*sub_22B09E0B4(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
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
  v7[8] = sub_22B09E7B0(v7);
  v7[9] = sub_22B09E3E8(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_22B0A023C;
}

uint64_t (*sub_22B09E160(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
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
  v7[8] = sub_22B09E7B0(v7);
  v7[9] = sub_22B09E618(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_22B0A023C;
}

void sub_22B09E20C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_22B09E26C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x38uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[3] = a3;
  v10[4] = v4;
  v10[2] = a2;
  v12 = *v4;
  v13 = sub_22B0768A8(a2, a3);
  *(v11 + 48) = v14 & 1;
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
      sub_22B083DCC();
      v13 = v21;
      goto LABEL_11;
    }

    sub_22B08545C(v18, a4 & 1);
    v13 = sub_22B0768A8(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_22B0DFCA0();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[5] = v13;
  if (v19)
  {
    v23 = (*(*v5 + 56) + 16 * v13);
    v24 = *v23;
    v25 = *(v23 + 1);
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  *v11 = v24;
  v11[1] = v25;
  return sub_22B09E3D0;
}

void (*sub_22B09E3E8(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x38uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[3] = a3;
  v10[4] = v4;
  v10[2] = a2;
  v12 = *v4;
  v13 = sub_22B0768A8(a2, a3);
  *(v11 + 48) = v14 & 1;
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
      sub_22B083DE0();
      v13 = v21;
      goto LABEL_11;
    }

    sub_22B085470(v18, a4 & 1);
    v13 = sub_22B0768A8(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_22B0DFCA0();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[5] = v13;
  if (v19)
  {
    v23 = (*(*v5 + 56) + 16 * v13);
    v24 = *v23;
    v25 = *(v23 + 1);
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  *v11 = v24;
  v11[1] = v25;
  return sub_22B09E3D0;
}

void sub_22B09E54C(uint64_t **a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = *(*a1 + 48);
  if (v5)
  {
    v7 = v3[5];
    v8 = *v3[4];
    if (v6)
    {
      v9 = *(v8 + 56) + 16 * v7;
      *v9 = v4 & 1;
      *(v9 + 8) = v5;
    }

    else
    {
      a3(v7, v3[2], v3[3], v4 & 1, v5, v8);
    }
  }

  else if ((*a1)[6])
  {
    v10 = v3[5];
    v11 = *v3[4];
    sub_22B0A002C(*(v11 + 48) + 16 * v10);
    sub_22B09D92C(v10, v11);
  }

  free(v3);
}

void (*sub_22B09E618(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x38uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[3] = a3;
  v10[4] = v4;
  v10[2] = a2;
  v12 = *v4;
  v13 = sub_22B0768A8(a2, a3);
  *(v11 + 48) = v14 & 1;
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
      sub_22B083DF4();
      v13 = v21;
      goto LABEL_11;
    }

    sub_22B085484(v18, a4 & 1);
    v13 = sub_22B0768A8(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_22B0DFCA0();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[5] = v13;
  if (v19)
  {
    v23 = (*(*v5 + 56) + 16 * v13);
    v24 = *v23;
    v25 = *(v23 + 1);
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  *v11 = v24;
  v11[1] = v25;
  return sub_22B09E3D0;
}

uint64_t (*sub_22B09E77C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_22B09E7A4;
}

uint64_t (*sub_22B09E7B0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_22B0A0224;
}

uint64_t sub_22B09E7D8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t sub_22B09E7F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t sub_22B09E808@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[4];
  *(a2 + 16) = *(a1 + 1);
  *(a2 + 32) = v4;
  *(a2 + 40) = *(a1 + 5);
  *a2 = v3;
  *(a2 + 8) = v2;
}

uint64_t sub_22B09E830(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v39 = a4;
    v13 = v11;
LABEL_14:
    v15 = __clz(__rbit64(v9)) | (v13 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v17 = v16[1];
    v18 = *(*(a1 + 56) + 8 * v15);
    v43[0] = *v16;
    v43[1] = v17;
    v43[2] = v18;

    a2(&v40, v43);

    v19 = v40;
    v20 = v41;
    v21 = v42;
    v22 = *v44;
    v24 = sub_22B0768A8(v40, v41);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((v39 & 1) == 0)
      {
        sub_22B084928();
      }
    }

    else
    {
      sub_22B086E18(v27, v39 & 1);
      v29 = sub_22B0768A8(v19, v20);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v24 = v29;
    }

    v9 &= v9 - 1;
    v31 = *v44;
    if (v28)
    {
      v12 = *(v31[7] + 8 * v24);

      *(v31[7] + 8 * v24) = v21 + v12;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      v32 = (v31[6] + 16 * v24);
      *v32 = v19;
      v32[1] = v20;
      *(v31[7] + 8 * v24) = v21;
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_26;
      }

      v31[2] = v35;
    }

    a4 = 1;
    v11 = v13;
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      sub_22B0781A0(a1);
    }

    v9 = *(v6 + 8 * v13);
    ++v14;
    if (v9)
    {
      v39 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_22B0DFCA0();
  __break(1u);
  return result;
}

uint64_t sub_22B09EAB0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v12 = v11;
LABEL_14:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = v15[1];
    v17 = *(*(a1 + 56) + 8 * v14);
    v43[0] = *v15;
    v43[1] = v16;
    v43[2] = v17;

    a2(&v40, v43);

    v18 = v40;
    v19 = v41;
    v20 = v42;
    v21 = *a5;
    v23 = sub_22B0768A8(v40, v41);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_25;
    }

    v27 = v22;
    if (v21[3] >= v26)
    {
      if ((v38 & 1) == 0)
      {
        sub_22B084928();
      }
    }

    else
    {
      sub_22B086E18(v26, v38 & 1);
      v28 = sub_22B0768A8(v18, v19);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_27;
      }

      v23 = v28;
    }

    v9 &= v9 - 1;
    v30 = *a5;
    if (v27)
    {

      *(v30[7] + 8 * v23) = v20;
    }

    else
    {
      v30[(v23 >> 6) + 8] |= 1 << v23;
      v31 = (v30[6] + 16 * v23);
      *v31 = v18;
      v31[1] = v19;
      *(v30[7] + 8 * v23) = v20;
      v32 = v30[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v30[2] = v34;
    }

    a4 = 1;
    v11 = v12;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_22B0781A0(a1);
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_22B0DFCA0();
  __break(1u);
  return result;
}

uint64_t sub_22B09ED24(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v8 = a2[4];
    v9 = a2[5];
    __swift_project_boxed_opaque_existential_1(a2 + 1, v8);
    (*(v9 + 16))(&v15, sub_22B0A0198, a1, MEMORY[0x277D84F78] + 8, v8, v9);
  }

  sub_22B0915C4(a2, v4 + 16);
  *(v4 + 80) = a1;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 128) = MEMORY[0x277D84F98];

  os_unfair_lock_lock((v4 + 88));
  *(v4 + 96) = v4;
  swift_unownedRetain();
  swift_unownedRelease();
  os_unfair_lock_unlock((v4 + 88));
  v10 = *(a3 + 16);
  if (v10)
  {
    v11 = (a3 + 40);
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;

      os_unfair_lock_lock((v4 + 88));
      sub_22B097810(v4 + 96);
      sub_22B097390();
      sub_22B097D38(v13, v12, sub_22B087D04);

      sub_22B0974C4();
      sub_22B097D38(v13, v12, sub_22B087B34);

      sub_22B0975F8();
      sub_22B097D38(v13, v12, sub_22B087B20);

      os_unfair_lock_unlock((v4 + 88));
      v11 += 2;
      --v10;
    }

    while (v10);
  }

  sub_22B091448(a2);
  return v4;
}

uint64_t sub_22B09EF88(uint64_t a1)
{
  v2 = sub_22B0DF0E0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_22B076420(&qword_2813EAD80, MEMORY[0x277CC9588]);
  result = MEMORY[0x2318892B0](v9, v2, v10);
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
      sub_22B0AA93C(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_22B09F16C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_22B09F1B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22B09F23C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B09F284(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22B09F2DC(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
    return sub_22B0781A0(a1);
  }

  return a1;
}

uint64_t sub_22B09F2F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B09F358(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22B09F458()
{
  result = qword_2813EA370;
  if (!qword_2813EA370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EA370);
  }

  return result;
}

uint64_t sub_22B09F4AC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v45 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v37 = v6;
  while (v9)
  {
    v40 = a4;
    v16 = v11;
LABEL_15:
    v18 = __clz(__rbit64(v9)) | (v16 << 6);
    v19 = (*(a1 + 48) + 16 * v18);
    v20 = v19[1];
    v21 = *(*(a1 + 56) + 8 * v18);
    v44[0] = *v19;
    v44[1] = v20;
    v44[2] = v21;

    a2(&v41, v44);

    v22 = v41;
    v23 = v42;
    v24 = v43;
    v25 = *v45;
    v27 = sub_22B0768A8(v41, v42);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_26;
    }

    v31 = v26;
    if (v25[3] >= v30)
    {
      if ((v40 & 1) == 0)
      {
        sub_22B0847AC();
      }
    }

    else
    {
      sub_22B086778(v30, v40 & 1);
      v32 = sub_22B0768A8(v22, v23);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_29;
      }

      v27 = v32;
    }

    v9 &= v9 - 1;
    v34 = *v45;
    if (v31)
    {
      v35 = *(v34[7] + 8 * v27);

      if (__OFADD__(v35, v24))
      {
        goto LABEL_27;
      }

      *(v34[7] + 8 * v27) = v35 + v24;
    }

    else
    {
      v34[(v27 >> 6) + 8] |= 1 << v27;
      v12 = (v34[6] + 16 * v27);
      *v12 = v22;
      v12[1] = v23;
      *(v34[7] + 8 * v27) = v24;
      v13 = v34[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_28;
      }

      v34[2] = v15;
    }

    a4 = 1;
    v11 = v16;
    v6 = v37;
  }

  v17 = v11;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v10)
    {
      sub_22B0781A0(a1);
    }

    v9 = *(v6 + 8 * v16);
    ++v17;
    if (v9)
    {
      v40 = a4;
      goto LABEL_15;
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
  result = sub_22B0DFCA0();
  __break(1u);
  return result;
}

uint64_t sub_22B09F734(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v36 = v6;
  while (v9)
  {
    v39 = a4;
    v12 = v11;
LABEL_14:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = v15[1];
    v17 = *(*(a1 + 56) + 8 * v14);
    v43[0] = *v15;
    v43[1] = v16;
    v43[2] = v17;

    a2(&v40, v43);

    v18 = v40;
    v19 = v41;
    v20 = v42;
    v21 = *v44;
    v23 = sub_22B0768A8(v40, v41);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_25;
    }

    v27 = v22;
    if (v21[3] >= v26)
    {
      if ((v39 & 1) == 0)
      {
        sub_22B0847AC();
      }
    }

    else
    {
      sub_22B086778(v26, v39 & 1);
      v28 = sub_22B0768A8(v18, v19);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_27;
      }

      v23 = v28;
    }

    v9 &= v9 - 1;
    v30 = *v44;
    if (v27)
    {

      *(v30[7] + 8 * v23) = v20;
    }

    else
    {
      v30[(v23 >> 6) + 8] |= 1 << v23;
      v31 = (v30[6] + 16 * v23);
      *v31 = v18;
      v31[1] = v19;
      *(v30[7] + 8 * v23) = v20;
      v32 = v30[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v30[2] = v34;
    }

    a4 = 1;
    v11 = v12;
    v6 = v36;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_22B0781A0(a1);
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v39 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_22B0DFCA0();
  __break(1u);
  return result;
}

uint64_t sub_22B09F9A8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void *a5)
{
  v69 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v51 = v10;
  v52 = v6;
  while (1)
  {
    v12 = v9;
    v13 = v11;
    if (!v9)
    {
      break;
    }

LABEL_10:
    v15 = __clz(__rbit64(v12)) | (v13 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    v19 = *(a1 + 56) + 40 * v15;
    v20 = *(v19 + 16);
    v58[0] = v18;
    v58[1] = v17;
    v59 = *v19;
    v60 = v20;
    v61 = *(v19 + 24);

    a2(&v62, v58);

    v21 = v63;
    if (!v63)
    {
LABEL_27:
      sub_22B0781A0(a1);
    }

    v22 = v62;
    v23 = v65;
    v56 = v64;
    v57 = v66;
    v25 = v67;
    v24 = v68;
    v26 = *v69;
    v28 = sub_22B0768A8(v62, v63);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_29;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if ((a4 & 1) == 0)
      {
        sub_22B084D38();
      }
    }

    else
    {
      sub_22B0870D0(v31, a4 & 1);
      v33 = sub_22B0768A8(v22, v21);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_32;
      }

      v28 = v33;
    }

    v55 = (v12 - 1) & v12;
    v35 = *v69;
    if (v32)
    {
      v36 = v35[7] + 40 * v28;
      v37 = *v36;
      v38 = *(v36 + 8);
      v39 = *(v36 + 16);
      v41 = *(v36 + 24);
      v40 = *(v36 + 32);

      if (__OFADD__(v39, v57))
      {
        goto LABEL_30;
      }

      if (v23 <= v38)
      {
        v42 = v38;
      }

      else
      {
        v42 = v23;
      }

      v43 = v56;
      if (v56 >= v37)
      {
        v43 = v37;
      }

      v44 = v35[7] + 40 * v28;
      *v44 = v43;
      *(v44 + 8) = v42;
      *(v44 + 16) = v39 + v57;
      *(v44 + 24) = v25 + v41;
      *(v44 + 32) = v24 + v40;
      a4 = 1;
      v11 = v13;
      v10 = v51;
      v6 = v52;
      v9 = v55;
    }

    else
    {
      v35[(v28 >> 6) + 8] |= 1 << v28;
      v45 = (v35[6] + 16 * v28);
      *v45 = v22;
      v45[1] = v21;
      v46 = v35[7] + 40 * v28;
      *v46 = v56;
      *(v46 + 8) = v23;
      *(v46 + 16) = v57;
      *(v46 + 24) = v25;
      *(v46 + 32) = v24;
      v47 = v35[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_31;
      }

      v35[2] = v49;
      a4 = 1;
      v11 = v13;
      v10 = v51;
      v6 = v52;
      v9 = (v12 - 1) & v12;
    }
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_27;
    }

    v12 = *(v6 + 8 * v13);
    ++v14;
    if (v12)
    {
      goto LABEL_10;
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
  result = sub_22B0DFCA0();
  __break(1u);
  return result;
}

uint64_t sub_22B09FCC8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void *a5)
{
  v60 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v43 = v6;
  while (1)
  {
    v13 = v9;
    v14 = v11;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v16 = __clz(__rbit64(v13)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    v20 = *(a1 + 56) + 40 * v16;
    v21 = *(v20 + 16);
    v49[0] = v19;
    v49[1] = v18;
    v50 = *v20;
    v51 = v21;
    v52 = *(v20 + 24);

    a2(&v53, v49);

    v22 = v54;
    if (!v54)
    {
LABEL_22:
      sub_22B0781A0(a1);
    }

    v23 = v53;
    v46 = v55;
    v47 = v56;
    v48 = v57;
    v25 = v58;
    v24 = v59;
    v26 = *v60;
    v28 = sub_22B0768A8(v53, v54);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_24;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if ((a4 & 1) == 0)
      {
        sub_22B084D38();
      }
    }

    else
    {
      sub_22B0870D0(v31, a4 & 1);
      v33 = sub_22B0768A8(v23, v22);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_26;
      }

      v28 = v33;
    }

    v35 = (v13 - 1) & v13;
    v36 = *v60;
    if (v32)
    {

      v12 = (v36[7] + 40 * v28);
      *v12 = v46;
      v12[1] = v47;
      v12[2] = v48;
      v12[3] = v25;
      v12[4] = v24;
    }

    else
    {
      v36[(v28 >> 6) + 8] |= 1 << v28;
      v37 = (v36[6] + 16 * v28);
      *v37 = v23;
      v37[1] = v22;
      v38 = (v36[7] + 40 * v28);
      *v38 = v46;
      v38[1] = v47;
      v38[2] = v48;
      v38[3] = v25;
      v38[4] = v24;
      v39 = v36[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_25;
      }

      v36[2] = v41;
    }

    a4 = 1;
    v11 = v14;
    v6 = v43;
    v9 = v35;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      goto LABEL_22;
    }

    v13 = *(v6 + 8 * v14);
    ++v15;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_22B0DFCA0();
  __break(1u);
  return result;
}

uint64_t sub_22B09FFB0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  result = (*(v7 + 40))(*(v5 + 16), v4, v6, v7);
  *a2 = result & 1;
  a2[1] = v9;
  return result;
}

uint64_t sub_22B0A00C8@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = 0;
  return result;
}

uint64_t sub_22B0A0198@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  result = (*(v5 + 8))(v2, v4, v5);
  *a2 = 0;
  return result;
}

uint64_t sub_22B0A025C(uint64_t a1)
{
  result = sub_22B0DF0E0();
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

uint64_t sub_22B0A0320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *v6;
  v12 = swift_allocObject();
  v13 = *(v11 + 80);
  v12[2] = v13;
  v12[3] = a4;
  v14 = *(v11 + 88);
  v12[4] = v14;
  v12[5] = a5;
  v25[3] = a4;
  v25[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a3, a4);
  v16 = qword_2813EA598;
  swift_beginAccess();
  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = a4;
  v17[4] = v14;
  v17[5] = a5;
  v17[6] = sub_22B0A0760;
  v17[7] = v12;
  swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v6 + v16);
  *(v6 + v16) = 0x8000000000000000;
  v23 = a1;
  sub_22B0768A8(a1, a2);
  if (__OFADD__(*(v18 + 16), (v19 & 1) == 0))
  {
    __break(1u);
  }

  else
  {
    v20 = v19;
    swift_getAssociatedTypeWitness();
    swift_getExtendedExistentialTypeMetadata();
    sub_22B0DF550();
    sub_22B0DFA30();
    if ((sub_22B0DFA10() & 1) == 0)
    {
      *(v6 + v16) = v18;
      if (v20)
      {
LABEL_8:
        sub_22B0DF520();
        swift_endAccess();
      }

LABEL_7:
      (v17[6])();

      sub_22B0DFA20();
      goto LABEL_8;
    }

    sub_22B0768A8(v23, a2);
    if ((v20 & 1) == (v21 & 1))
    {
      *(v6 + v16) = v18;
      if (v20)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  result = sub_22B0DFCA0();
  __break(1u);
  return result;
}

uint64_t sub_22B0A05E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getExtendedExistentialTypeMetadata();
  return sub_22B0DF4E0();
}

char *sub_22B0A0648()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  v1 = qword_2813EA5A0;
  v2 = sub_22B0DF0E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_22B0A06F0()
{
  sub_22B0A0648();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_22B0A0814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v5 = a4;
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 88);
  v13[0] = a2;
  v13[1] = v8;
  v13[2] = a3;
  v13[3] = v9;
  v10 = type metadata accessor for FlatFileCounterSetPersistenceProvider(0, v13);
  v11 = sub_22B0BBF00(a1, v5);
  a5[3] = v10;
  a5[4] = swift_getWitnessTable();
  *a5 = v11;
}

uint64_t sub_22B0A08FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = sub_22B09F458();
  v7 = *(v4 + 88);
  v11[0] = &type metadata for DistributionCounter;
  v11[1] = v5;
  v11[2] = v6;
  v11[3] = v7;
  v8 = type metadata accessor for FlatFileCounterSetPersistenceProvider(0, v11);
  v9 = sub_22B0BBF00(a1, 2);
  a2[3] = v8;
  a2[4] = swift_getWitnessTable();
  *a2 = v9;
}

unint64_t sub_22B0A09C4(uint64_t a1)
{
  result = sub_22B09F458();
  *(a1 + 8) = result;
  return result;
}

uint64_t ProcessLaunchSummaryLogEvent.coreAnalyticsEventName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_coreAnalyticsEventName);

  return v1;
}

__n128 ProcessLaunchSummaryLogEvent.counts.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_counts;
  v3 = *(v1 + OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_counts + 112);
  *(a1 + 96) = *(v1 + OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_counts + 96);
  *(a1 + 112) = v3;
  *(a1 + 121) = *(v2 + 121);
  v4 = *(v2 + 48);
  *(a1 + 32) = *(v2 + 32);
  *(a1 + 48) = v4;
  v5 = *(v2 + 80);
  *(a1 + 64) = *(v2 + 64);
  *(a1 + 80) = v5;
  result = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = result;
  return result;
}

id ProcessLaunchSummaryLogEvent.__allocating_init(coreAnalyticsEventPrefix:counts:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  *&v8[OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_coreAnalyticsEventOptions] = 1;
  v17 = a1;
  v18 = a2;

  MEMORY[0x231889070](0xD000000000000015, 0x800000022B0E6CD0);

  v9 = &v8[OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_coreAnalyticsEventName];
  *v9 = a1;
  *(v9 + 1) = a2;
  v10 = &v8[OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_counts];
  v11 = a3[7];
  *(v10 + 6) = a3[6];
  *(v10 + 7) = v11;
  *(v10 + 121) = *(a3 + 121);
  v12 = a3[3];
  *(v10 + 2) = a3[2];
  *(v10 + 3) = v12;
  v13 = a3[5];
  *(v10 + 4) = a3[4];
  *(v10 + 5) = v13;
  v14 = a3[1];
  *v10 = *a3;
  *(v10 + 1) = v14;
  v16.receiver = v8;
  v16.super_class = v4;
  return objc_msgSendSuper2(&v16, sel_init);
}

id ProcessLaunchSummaryLogEvent.init(coreAnalyticsEventPrefix:counts:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *&v3[OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_coreAnalyticsEventOptions] = 1;
  v14 = a1;
  v15 = a2;

  MEMORY[0x231889070](0xD000000000000015, 0x800000022B0E6CD0);

  v5 = v15;
  v6 = &v3[OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_coreAnalyticsEventName];
  *v6 = v14;
  v6[1] = v5;
  v7 = &v3[OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_counts];
  v8 = a3[7];
  *(v7 + 6) = a3[6];
  *(v7 + 7) = v8;
  *(v7 + 121) = *(a3 + 121);
  v9 = a3[3];
  *(v7 + 2) = a3[2];
  *(v7 + 3) = v9;
  v10 = a3[5];
  *(v7 + 4) = a3[4];
  *(v7 + 5) = v10;
  v11 = a3[1];
  *v7 = *a3;
  *(v7 + 1) = v11;
  v13.receiver = v3;
  v13.super_class = type metadata accessor for ProcessLaunchSummaryLogEvent();
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_22B0A0D18()
{
  v12 = MEMORY[0x277D84F98];
  v1 = (v0 + OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_counts);
  if (*(v0 + OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_counts + 8))
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_22B0DF620();
  }

  sub_22B080C88(v2, 0x6F4368636E75616CLL, 0xEB00000000746E75);
  if (v1[24])
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_22B0DF620();
  }

  sub_22B080C88(v3, 0xD000000000000011, 0x800000022B0E6CF0);
  if (v1[40])
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_22B0DF620();
  }

  sub_22B080C88(v4, 0xD000000000000012, 0x800000022B0E6D10);
  if (v1[56])
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_22B0DF620();
  }

  sub_22B080C88(v5, 0xD000000000000010, 0x800000022B0E6D30);
  if (v1[72])
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_22B0DF620();
  }

  sub_22B080C88(v6, 0xD000000000000014, 0x800000022B0E6D50);
  if (v1[88])
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_22B0DF620();
  }

  sub_22B080C88(v7, 0xD000000000000017, 0x800000022B0E6D70);
  if (v1[104])
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_22B0DF620();
  }

  sub_22B080C88(v8, 0xD000000000000013, 0x800000022B0E6D90);
  if (v1[120])
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_22B0DF620();
  }

  sub_22B080C88(v9, 0x756F436873617263, 0xEA0000000000746ELL);
  if (v1[136])
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_22B0DF620();
  }

  sub_22B080C88(v10, 0x676F646863746177, 0xED0000746E756F43);
  return v12;
}

uint64_t sub_22B0A0FA0()
{
  v1 = OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_coreAnalyticsEventOptions;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22B0A1038(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_coreAnalyticsEventOptions;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id ProcessLaunchSummaryLogEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProcessLaunchSummaryLogEvent.__allocating_init(startTime:)(double a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithStartTime_];
}

id ProcessLaunchSummaryLogEvent.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ProcessLaunchSummaryLogEvent();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_22B0A13C0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 137))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B0A13E0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = (a2 - 1);
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

  *(result + 137) = v3;
  return result;
}

unint64_t sub_22B0A1440()
{
  result = qword_2813E9960;
  if (!qword_2813E9960)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813E9960);
  }

  return result;
}

uint64_t TapToRadarFilterResult.hashValue.getter()
{
  v1 = *v0;
  sub_22B0DFD40();
  MEMORY[0x231889A00](v1);
  return sub_22B0DFD80();
}

unint64_t sub_22B0A1518()
{
  result = qword_27D8B5B80;
  if (!qword_27D8B5B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B5B80);
  }

  return result;
}

void sub_22B0A15A4(uint64_t a1)
{
  v2 = sub_22B0DF0E0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v41 - v8;
  MEMORY[0x28223BE20](v7);
  v52 = &v41 - v10;
  v11 = *(a1 + 16);
  v12 = v11 + 56;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v11 + 56);
  v16 = (v13 + 63) >> 6;
  v54 = a1;
  v55 = v3 + 16;
  v50 = (v3 + 8);
  v51 = v3 + 32;
  v53 = v11;

  v17 = 0;
  *&v18 = 136315138;
  v44 = v18;
  v45 = v3;
  v42 = v9;
  v43 = v6;
  if (v15)
  {
    goto LABEL_10;
  }

LABEL_6:
  while (1)
  {
    v29 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v29 >= v16)
    {

      *(v54 + 16) = MEMORY[0x277D84FA0];
      return;
    }

    v15 = *(v12 + 8 * v29);
    ++v17;
    if (v15)
    {
      while (1)
      {
        v30 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v31 = v52;
        v32 = *(v3 + 16);
        v32(v52, *(v53 + 48) + *(v3 + 72) * (v30 | (v29 << 6)), v2);
        (*(v3 + 32))(v9, v31, v2);
        v33 = v9;
        if (*(*(v54 + 8) + 16) && (sub_22B07639C(v9), (v34 & 1) != 0))
        {

          sub_22B0A1A58(v35, v9);

          (*v50)(v9, v2);
        }

        else
        {
          if (qword_2813E9AA8 != -1)
          {
            swift_once();
          }

          v36 = sub_22B0DF1B0();
          __swift_project_value_buffer(v36, qword_2813EBE90);
          v32(v6, v9, v2);
          v37 = v6;
          v38 = sub_22B0DF190();
          v39 = sub_22B0DF690();
          if (os_log_type_enabled(v38, v39))
          {
            v19 = swift_slowAlloc();
            v47 = v19;
            v49 = swift_slowAlloc();
            v56 = v49;
            *v19 = v44;
            sub_22B0A359C(&qword_2813EAD68, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
            v20 = v37;
            v21 = sub_22B0DFC20();
            v22 = v2;
            v24 = v23;
            v46 = v39;
            v48 = *v50;
            v48(v20, v22);
            v25 = sub_22B07B428(v21, v24, &v56);
            v2 = v22;

            v26 = v47;
            *(v47 + 1) = v25;
            v27 = v26;
            _os_log_impl(&dword_22B074000, v38, v46, "Changed date %s has no data, which is impossible", v26, 0xCu);
            v28 = v49;
            __swift_destroy_boxed_opaque_existential_0(v49);
            MEMORY[0x23188A520](v28, -1, -1);
            v3 = v45;
            MEMORY[0x23188A520](v27, -1, -1);

            v9 = v42;
            v48(v42, v22);
            v17 = v29;
            v6 = v43;
            if (!v15)
            {
              goto LABEL_6;
            }

            goto LABEL_10;
          }

          v6 = v37;
          v40 = *v50;
          (*v50)(v37, v2);
          v40(v33, v2);
        }

        v17 = v29;
        v9 = v33;
        if (!v15)
        {
          goto LABEL_6;
        }

LABEL_10:
        v29 = v17;
      }
    }
  }

  __break(1u);
}

void sub_22B0A1A58(uint64_t a1, uint64_t a2)
{
  v94 = a2;
  v119 = *MEMORY[0x277D85DE8];
  v92 = sub_22B0DEF00();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_22B0DF0E0();
  v4 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v6 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OutputDataStream();
  inited = swift_initStackObject();
  v103 = inited;
  *(inited + 16) = xmmword_22B0E4800;
  v8 = inited + 16;
  sub_22B0DEE10();
  swift_allocObject();
  v100 = sub_22B0DEE00();
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v101 = a1;

  v14 = 0;
  v105 = 0;
  v97 = v4;
  v98 = v6;
  v104 = v8;
  v96 = a1 + 64;
  v95 = v13;
LABEL_6:
  if (v12)
  {
    v15 = v4;
    v16 = v14;
    goto LABEL_12;
  }

  do
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_72;
    }

    if (v16 >= v13)
    {

      __src = 0;
      v56 = sub_22B0A32F4(&__src, v118);
      v58 = v57;
      swift_beginAccess();
      sub_22B0DEF60();
      swift_endAccess();
      sub_22B080408(v56, v58 & 0xFFFFFFFFFFFFFFLL);
      v59 = *(v103 + 16);
      v60 = *(v103 + 24) >> 62;
      if (v60 > 1)
      {
        v16 = v93;
        if (v60 != 2)
        {
LABEL_62:
          v64 = sub_22B0DEF40();
          v66 = v65;
          v67 = sub_22B0DF050();
          v113 = 0x2D796C696144;
          v114 = 0xE600000000000000;
          MEMORY[0x231889070](v67);

          MEMORY[0x231889070](0x7265746E756F632ELL, 0xE900000000000073);

          v68 = v90;
          sub_22B0DEEC0();
          v69 = v68;

          v70 = v105;
          sub_22B0DEF50();
          v105 = v70;
          if (!v70)
          {

            sub_22B080408(v64, v66);
            v71 = v103;
            swift_setDeallocating();
            sub_22B080408(*(v71 + 16), *(v71 + 24));
            (*(v91 + 8))(v69, v92);
            return;
          }

          sub_22B080408(v64, v66);

          (*(v91 + 8))(v69, v92);
LABEL_67:
          if (qword_2813E9AA8 != -1)
          {
            goto LABEL_81;
          }

          goto LABEL_68;
        }

        v61 = *(v59 + 16);
        v62 = *(v59 + 24);
      }

      else
      {
        v16 = v93;
        if (!v60)
        {
          goto LABEL_62;
        }

        v61 = v59;
        v62 = v59 >> 32;
      }

      if (v62 < v61)
      {
        __break(1u);
      }

      goto LABEL_62;
    }

    v12 = *(v9 + 8 * v16);
    ++v14;
  }

  while (!v12);
  v15 = v4;
LABEL_12:
  v17 = (v16 << 9) | (8 * __clz(__rbit64(v12)));
  v18 = *(*(v101 + 48) + v17);
  v110 = *(*(v101 + 56) + v17);
  type metadata accessor for AccessoryGroupSpecifier(0);
  if (swift_dynamicCastClass())
  {
    v19 = 50331648;
  }

  else
  {
    type metadata accessor for HomeGroupSpecifier(0);
    if (swift_dynamicCastClass())
    {
      v19 = 0x2000000;
    }

    else
    {
      v19 = 0x1000000;
    }
  }

  __src = v19;

  v20 = sub_22B0A32F4(&__src, v118);
  v22 = v21;
  swift_beginAccess();
  sub_22B0DEF60();
  swift_endAccess();
  sub_22B080408(v20, v22 & 0xFFFFFFFFFFFFFFLL);
  v102 = v18;
  v113 = v18;
  type metadata accessor for NamedGroupSpecifier();
  sub_22B0A359C(&qword_2813EA2D0, type metadata accessor for NamedGroupSpecifier, &unk_22B0E40C4);
  v23 = v105;
  v24 = sub_22B0DEDF0();
  v105 = v23;
  if (v23)
  {

    v16 = v93;
    v4 = v15;
LABEL_66:
    v6 = v98;
    goto LABEL_67;
  }

  v26 = v24;
  v27 = v25;
  sub_22B07FFAC(v24, v25, 1);
  v105 = 0;
  v99 = (v12 - 1) & v12;
  sub_22B080408(v26, v27);
  v4 = 0;
  v28 = v110 + 64;
  v29 = 1 << *(v110 + 32);
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  else
  {
    v30 = -1;
  }

  v31 = v30 & *(v110 + 64);
  v6 = ((v29 + 63) >> 6);
  while (2)
  {
    if (v31)
    {
LABEL_30:
      v34 = *(v110 + 56) + 24 * (__clz(__rbit64(v31)) | (v4 << 6));
      v36 = *v34;
      v35 = *(v34 + 8);
      v107 = *(v34 + 16);
      v37 = v109 & 0xF00000000000000 | 0x4000000000000;
      swift_beginAccess();
      v111 = v36;
      v38 = v36;
      v39 = v35;
      sub_22B08045C(v38, v35);
      v109 = v37;
      sub_22B0DEF60();
      swift_endAccess();
      v40 = v35 >> 62;
      if ((v35 >> 62) > 1)
      {
        v42 = 0;
        v41 = v108;
        if (v40 == 2)
        {
          v44 = *(v111 + 16);
          v43 = *(v111 + 24);
          v45 = __OFSUB__(v43, v44);
          v42 = v43 - v44;
          if (v45)
          {
            goto LABEL_76;
          }
        }
      }

      else
      {
        v41 = v108;
        if (v40)
        {
          LODWORD(v42) = HIDWORD(v111) - v111;
          if (__OFSUB__(HIDWORD(v111), v111))
          {
            goto LABEL_75;
          }

          v42 = v42;
        }

        else
        {
          v42 = BYTE6(v35);
        }
      }

      v46 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        goto LABEL_73;
      }

      if (v46 >= 0x100000000)
      {
        sub_22B0804B0();
        v105 = swift_allocError();
        *v63 = v46;
        *(v63 + 8) = 0;
        swift_willThrow();

        sub_22B080408(v111, v35);

        v16 = v93;
        v4 = v97;
        goto LABEL_66;
      }

      if (v46 < 0)
      {
        goto LABEL_74;
      }

      v47 = v41 & 0xF00000000000000 | 0x4000000000000;
      swift_beginAccess();
      v108 = v47;
      sub_22B0DEF60();
      v106 = v106 & 0xF00000000000000 | 0x1000000000000;
      sub_22B0DEF60();
      v115 = MEMORY[0x277CC9318];
      v116 = MEMORY[0x277CC9300];
      v48 = v111;
      v113 = v111;
      v114 = v35;
      v49 = __swift_project_boxed_opaque_existential_1(&v113, MEMORY[0x277CC9318]);
      v50 = *v49;
      v51 = v49[1];
      v52 = v51 >> 62;
      if ((v51 >> 62) > 1)
      {
        if (v52 != 2)
        {
          memset(v112, 0, 14);
          sub_22B08045C(v48, v35);
LABEL_23:
          v32 = v48;
          sub_22B0DEF30();
LABEL_24:
          v31 &= v31 - 1;
          __swift_destroy_boxed_opaque_existential_0(&v113);
          swift_endAccess();
          sub_22B080408(v32, v39);
          continue;
        }

        v54 = *(v50 + 16);
        v53 = *(v50 + 24);
        v107 = v35;
        sub_22B08045C(v48, v35);
        if (sub_22B0DEE30() && __OFSUB__(v54, sub_22B0DEE50()))
        {
          goto LABEL_79;
        }

        if (__OFSUB__(v53, v54))
        {
          goto LABEL_78;
        }
      }

      else
      {
        if (!v52)
        {
          v112[0] = *v49;
          LOWORD(v112[1]) = v51;
          BYTE2(v112[1]) = BYTE2(v51);
          BYTE3(v112[1]) = BYTE3(v51);
          BYTE4(v112[1]) = BYTE4(v51);
          BYTE5(v112[1]) = BYTE5(v51);
          sub_22B08045C(v48, v35);
          goto LABEL_23;
        }

        v107 = v35;
        v55 = v50;
        if (v50 >> 32 < v50)
        {
          goto LABEL_77;
        }

        sub_22B08045C(v48, v107);
        if (sub_22B0DEE30() && __OFSUB__(v55, sub_22B0DEE50()))
        {
          goto LABEL_80;
        }
      }

      sub_22B0DEE40();
      sub_22B0DEF30();
      v32 = v111;
      v39 = v107;
      goto LABEL_24;
    }

    break;
  }

  while (1)
  {
    v33 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v33 >= v6)
    {

      v14 = v16;
      v4 = v97;
      v6 = v98;
      v9 = v96;
      v13 = v95;
      v12 = v99;
      goto LABEL_6;
    }

    v31 = *(v28 + 8 * v33);
    ++v4;
    if (v31)
    {
      v4 = v33;
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  swift_once();
LABEL_68:
  v72 = sub_22B0DF1B0();
  __swift_project_value_buffer(v72, qword_2813EBE90);
  (*(v4 + 16))(v6, v94, v16);
  v73 = v105;
  v74 = v105;
  v75 = sub_22B0DF190();
  v76 = sub_22B0DF690();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = v16;
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v113 = v80;
    *v77 = 136315394;
    sub_22B0A359C(&qword_2813EAD68, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v81 = sub_22B0DFC20();
    v82 = v6;
    v84 = v83;
    (*(v4 + 8))(v82, v78);
    v85 = sub_22B07B428(v81, v84, &v113);

    *(v77 + 4) = v85;
    *(v77 + 12) = 2112;
    v86 = v105;
    v87 = v105;
    v88 = _swift_stdlib_bridgeErrorToNSError();
    *(v77 + 14) = v88;
    *v79 = v88;
    _os_log_impl(&dword_22B074000, v75, v76, "Failed to save counters for date %s: %@", v77, 0x16u);
    sub_22B093A64(v79);
    MEMORY[0x23188A520](v79, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v80);
    MEMORY[0x23188A520](v80, -1, -1);
    MEMORY[0x23188A520](v77, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v6, v16);
  }
}

uint64_t *sub_22B0A27F4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 56) = 1;
  type metadata accessor for FlatFileManager(0);
  swift_allocObject();
  v9 = sub_22B0CE5D0(a1, a2);
  if (v4)
  {

    sub_22B0A3628(v5 + 40);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v5 + 16) = v9;
    *(v5 + 24) = a3;
  }

  return v5;
}

uint64_t sub_22B0A2920(uint64_t a1, void (*a2)(void *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5B98, &qword_22B0E48D8);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v7[3] = v4;
  v7[4] = &off_283EEC2B8;
  v7[0] = v5;

  a2(v7);
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

void sub_22B0A29CC(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = v3;
  os_unfair_lock_lock((v5 + 32));
  sub_22B0A2F28((v5 + 40), v5, &v9);
  if (v4)
  {
    os_unfair_lock_unlock((v5 + 32));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v5 + 32));
    if (v9)
    {
      a1(v9);
      os_unfair_lock_lock((v5 + 32));
      sub_22B0A2FF4((v5 + 40));
      os_unfair_lock_unlock((v5 + 32));
    }

    else
    {
      (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
    }
  }
}

uint64_t sub_22B0A2B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  MEMORY[0x28223BE20](a1);
  (*(v12 + 56))(v13, v12);
  v22[0] = a3;
  swift_getExtendedExistentialTypeMetadata_unique();
  if (swift_dynamicCast())
  {
    if (*(&v24 + 1))
    {
      sub_22B07D124(&v23, &v19);
      goto LABEL_6;
    }
  }

  else
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
  }

  v19 = v23;
  v20 = v24;
  v21 = v25;
LABEL_6:
  if (*(&v20 + 1))
  {
    v14 = sub_22B0781A8(&v19, v22);
    MEMORY[0x28223BE20](v14);
    *(&v19 - 6) = a3;
    *(&v19 - 5) = a4;
    *(&v19 - 4) = a5;
    *(&v19 - 3) = a1;
    v17 = a2;
    v18 = v22;
    sub_22B0A29CC(sub_22B0A35E4, a4, a6);
    result = __swift_destroy_boxed_opaque_existential_0(v22);
    if (*(&v24 + 1))
    {
      return __swift_destroy_boxed_opaque_existential_0(&v23);
    }
  }

  else
  {
    v22[0] = 0;
    v22[1] = 0xE000000000000000;
    sub_22B0DF8E0();

    strcpy(v22, "Counter class ");
    HIBYTE(v22[1]) = -18;
    v16 = sub_22B0DFE30();
    MEMORY[0x231889070](v16);

    MEMORY[0x231889070](0xD00000000000001ELL, 0x800000022B0E6FC0);
    result = sub_22B0DFB00();
    __break(1u);
  }

  return result;
}

uint64_t sub_22B0A2D84(uint64_t a1, void (*a2)(void *), uint64_t a3, void *a4)
{
  v6 = a4[3];
  v7 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v6);
  v8 = *(v7 + 32);
  v9 = type metadata accessor for FlatFileManager(0);
  v8(v11, a1, v9, &off_283EED438, v6, v7);
  a2(v11);
  return __swift_destroy_boxed_opaque_existential_0(v11);
}

void sub_22B0A2E50(void (*a1)(uint64_t))
{
  os_unfair_lock_lock((v1 + 32));
  sub_22B0A2F28((v1 + 40), v1, &v5);
  os_unfair_lock_unlock((v1 + 32));
  if (v2)
  {
    __break(1u);
  }

  else
  {

    a1(v4);
    os_unfair_lock_lock((v1 + 32));
    sub_22B0A2FF4((v1 + 40));
    os_unfair_lock_unlock(0x20);
  }
}

uint64_t *sub_22B0A2F28@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = result;
  v5 = *result;
  if (!*result)
  {
    v9 = *(a2 + 16);
    v10 = *(a2 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5B90, &qword_22B0E48A0);
    v11 = swift_allocObject();
    *(v11 + 32) = 0;
    v12 = MEMORY[0x277D84F98];
    *(v11 + 40) = 0;
    *(v11 + 48) = v12;
    *(v11 + 40) = 1;
    *(v11 + 56) = MEMORY[0x277D84FA0];
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    *v3 = v11;
    v3[1] = 1;
    *a3 = v11;

    v13 = v10;
  }

  v6 = result[1];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (!v7)
  {
    result[1] = v8;
    *a3 = v5;
  }

  __break(1u);
  return result;
}

void *sub_22B0A2FF4(void *result)
{
  v1 = result[1];
  v2 = v1 == 1;
  v3 = v1 < 1;
  v4 = v1 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    result[1] = v4;
    if (v2)
    {
      v5 = *result;
      if (*result)
      {
        v6 = result;
        os_unfair_lock_lock((v5 + 32));
        if (sub_22B0A345C(*(v5 + 40)))
        {
          sub_22B0A15A4(v5 + 40);
          *(v5 + 48) = sub_22B0B8CE8(MEMORY[0x277D84F90]);

          *(v5 + 40) = 0;
        }

        os_unfair_lock_unlock((v5 + 32));

        result = v6;
      }

      *result = 0;
    }
  }

  return result;
}

uint64_t sub_22B0A30A0()
{

  sub_22B0A3628(v0 + 40);

  return MEMORY[0x2821FE8D8](v0, 57, 7);
}

uint64_t sub_22B0A310C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_22B0A3168(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_22B0A3234()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 8);
  sub_22B0A2F28(&v1[10], v1, &v3);
  os_unfair_lock_unlock(v1 + 8);
}

void sub_22B0A329C()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 8);
  sub_22B0A2FF4(&v1[10]._os_unfair_lock_opaque);

  os_unfair_lock_unlock(v1 + 8);
}

uint64_t sub_22B0A32F4(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_22B0A33AC(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_22B0A32F4(a1, &a1[a2]);
  }

  sub_22B0DEE60();
  swift_allocObject();
  sub_22B0DEE20();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_22B0DEF20();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_22B0A345C(char a1)
{
  if (a1)
  {
    return a1 & 1;
  }

  if ((HMFIsInternalBuild() & 1) == 0)
  {
    if (qword_2813E9AA8 != -1)
    {
      swift_once();
    }

    v2 = sub_22B0DF1B0();
    __swift_project_value_buffer(v2, qword_2813EBE90);
    v3 = sub_22B0DF190();
    v4 = sub_22B0DF690();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22B074000, v3, v4, "FlatFileCounterStore isn't open", v5, 2u);
      MEMORY[0x23188A520](v5, -1, -1);
    }

    return a1 & 1;
  }

  result = sub_22B0DFB00();
  __break(1u);
  return result;
}

uint64_t sub_22B0A359C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_22B0A36B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProcessMemorySampleLogEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22B0A37E4()
{
  v7 = MEMORY[0x277D84F98];
  v1 = (v0 + OBJC_IVAR____TtC14HomeKitMetrics28ProcessMemorySummaryLogEvent_counts);
  if (*(v0 + OBJC_IVAR____TtC14HomeKitMetrics28ProcessMemorySummaryLogEvent_counts + 8))
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_22B0DF620();
  }

  sub_22B080C88(v2, 0xD000000000000021, 0x800000022B0E70D0);
  if (v1[24])
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_22B0DF620();
  }

  sub_22B080C88(v3, 0xD000000000000022, 0x800000022B0E7100);
  if (v1[40])
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_22B0DF620();
  }

  sub_22B080C88(v4, 0xD000000000000022, 0x800000022B0E7130);
  if (v1[56])
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_22B0DF620();
  }

  sub_22B080C88(v5, 0xD00000000000001FLL, 0x800000022B0E7160);
  return v7;
}

id sub_22B0A398C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProcessMemorySummaryLogEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_22B0A3A14(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B0A3A34(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = (a2 - 1);
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

  *(result + 57) = v3;
  return result;
}

uint64_t DailySchedulerProvider.makeScheduler(repeatingScheduler:preferenceName:coreAnalyticsEventPrefix:logEventSubmitter:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return sub_22B0A67B4(a1, a2, a3, a4, a5, a6, v6, ObjectType);
}

uint64_t *DailyScheduler.__allocating_init<A>(repeatingScheduler:dailyBlockRunDateDelegate:dateProvider:coreAnalyticsEventPrefix:logEventSubmitter:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_allocObject();
  v16 = sub_22B0A6C74(a1, a2, a3, a4, a5, a6, a7, a8);
  (*(*(a7 - 8) + 8))(a1, a7);
  return v16;
}

uint64_t sub_22B0A3BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DailyScheduler.DailyBlock(0, a1, a2, a4);
  v6 = sub_22B0DF210();
  type metadata accessor for DailyScheduler.Bookend(0, a1, a2, v7);
  sub_22B0DF210();
  return v6;
}

uint64_t *DailyScheduler.init<A>(repeatingScheduler:dailyBlockRunDateDelegate:dateProvider:coreAnalyticsEventPrefix:logEventSubmitter:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = sub_22B0A6C74(a1, a2, a3, a4, a5, a6, a7, a8);
  (*(*(a7 - 8) + 8))(a1, a7);
  return v10;
}

uint64_t sub_22B0A3C9C(char a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  *(v2 + 64) = a1;
  return MEMORY[0x2822009F8](sub_22B0A3CC0, 0, 0);
}

uint64_t sub_22B0A3CC0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_22B0A3DB0;
    v3 = *(v0 + 64);

    return sub_22B0A3EC0(v3);
  }

  else
  {
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_22B0A3DB0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B0A3EC0(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 192) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C30, &unk_22B0E60A0);
  *(v2 + 40) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = swift_task_alloc();
  v3 = sub_22B0DF0E0();
  *(v2 + 80) = v3;
  *(v2 + 88) = *(v3 - 8);
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B0A4050, 0, 0);
}

uint64_t sub_22B0A4050()
{
  if (*(v0 + 192))
  {
    goto LABEL_11;
  }

  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 40);
  v7 = *(v0 + 24);
  v59 = *(*(v0 + 16) + 88);
  v60 = *(v0 + 32);
  v8 = [v59 startOfCurrentDay];
  sub_22B0DF0B0();

  v57 = *(v7 + 80);
  v58 = *(v7 + 88);
  (*(v58 + 8))();
  v56 = v2[2];
  v56(v4, v1, v3);
  v55 = v2[7];
  v55(v4, 0, 1, v3);
  v9 = *(v60 + 48);
  sub_22B0898A8(v5, v6, &unk_27D8B5670, &unk_22B0E32C0);
  sub_22B0898A8(v4, v6 + v9, &unk_27D8B5670, &unk_22B0E32C0);
  v10 = v2[6];
  v11 = v10(v6, 1, v3);
  v12 = *(v0 + 80);
  if (v11 == 1)
  {
    v13 = *(v0 + 72);
    sub_22B07D02C(*(v0 + 64), &unk_27D8B5670, &unk_22B0E32C0);
    sub_22B07D02C(v13, &unk_27D8B5670, &unk_22B0E32C0);
    if (v10(v6 + v9, 1, v12) == 1)
    {
      v14 = *(v0 + 88);
      sub_22B07D02C(*(v0 + 40), &unk_27D8B5670, &unk_22B0E32C0);
      (*(v14 + 8))(*(v0 + 104), *(v0 + 80));
LABEL_20:

      v52 = *(v0 + 8);

      return v52();
    }
  }

  else
  {
    sub_22B0898A8(*(v0 + 40), *(v0 + 56), &unk_27D8B5670, &unk_22B0E32C0);
    if (v10(v6 + v9, 1, v12) != 1)
    {
      v46 = *(v0 + 88);
      v45 = *(v0 + 96);
      v47 = *(v0 + 80);
      v54 = *(v0 + 72);
      v49 = *(v0 + 56);
      v48 = *(v0 + 64);
      v61 = *(v0 + 40);
      (*(v46 + 32))(v45, v6 + v9, v47);
      sub_22B0A7304();
      v50 = sub_22B0DF2F0();
      v51 = *(v46 + 8);
      v51(v45, v47);
      sub_22B07D02C(v48, &unk_27D8B5670, &unk_22B0E32C0);
      sub_22B07D02C(v54, &unk_27D8B5670, &unk_22B0E32C0);
      v51(v49, v47);
      sub_22B07D02C(v61, &unk_27D8B5670, &unk_22B0E32C0);
      if (v50)
      {
        v51(*(v0 + 104), *(v0 + 80));
        goto LABEL_20;
      }

      goto LABEL_8;
    }

    v15 = *(v0 + 80);
    v16 = *(v0 + 88);
    v17 = *(v0 + 72);
    v18 = *(v0 + 56);
    sub_22B07D02C(*(v0 + 64), &unk_27D8B5670, &unk_22B0E32C0);
    sub_22B07D02C(v17, &unk_27D8B5670, &unk_22B0E32C0);
    (*(v16 + 8))(v18, v15);
  }

  sub_22B07D02C(*(v0 + 40), &qword_27D8B5C30, &unk_22B0E60A0);
LABEL_8:
  v19 = *(v0 + 96);
  v20 = *(v0 + 80);
  v21 = *(v0 + 88);
  v22 = [v59 currentDate];
  sub_22B0DF0B0();

  sub_22B0DEFC0();
  v24 = v23;
  v25 = *(v21 + 8);
  v25(v19, v20);
  v26 = *(v0 + 104);
  v27 = *(v0 + 80);
  if (v24 < 300.0)
  {
    v25(*(v0 + 104), *(v0 + 80));
    goto LABEL_20;
  }

  v28 = *(v0 + 48);
  v56(v28, *(v0 + 104), *(v0 + 80));
  v55(v28, 0, 1, v27);
  (*(v58 + 16))(v28, v57);
  v25(v26, v27);
LABEL_11:
  if (qword_2813E9AA0 != -1)
  {
    swift_once();
  }

  v29 = sub_22B0DF1B0();
  __swift_project_value_buffer(v29, qword_2813EBE78);
  v30 = sub_22B0DF190();
  v31 = sub_22B0DF670();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = *(v0 + 192);
    v33 = swift_slowAlloc();
    *v33 = 67109120;
    *(v33 + 4) = v32;
    _os_log_impl(&dword_22B074000, v30, v31, "Running daily blocks with isDebug = %{BOOL}d...", v33, 8u);
    MEMORY[0x23188A520](v33, -1, -1);
  }

  v35 = *(v0 + 16);
  v34 = *(v0 + 24);
  v36 = *(v0 + 192);

  os_unfair_lock_lock((v35 + 56));
  v37 = *(v34 + 80);
  *(v0 + 112) = v37;
  v38 = *(v34 + 88);
  *(v0 + 120) = v38;
  v39 = *(v35 + 72);
  *(v0 + 128) = v39;
  *(v0 + 136) = *(v35 + 64);
  type metadata accessor for DailyScheduler.State(0, v37, v38, v40);
  type metadata accessor for DailyScheduler.Bookend(255, v37, v38, v41);
  sub_22B0DF550();
  type metadata accessor for DailyScheduler.DailyBlock(255, v37, v38, v42);
  sub_22B0DF550();

  os_unfair_lock_unlock((v35 + 56));
  v43 = swift_task_alloc();
  *(v0 + 144) = v43;
  *(v43 + 16) = v37;
  *(v43 + 24) = v38;
  *(v43 + 32) = v39;
  *(v43 + 40) = v36;
  v44 = swift_task_alloc();
  *(v0 + 152) = v44;
  *v44 = v0;
  v44[1] = sub_22B0A4748;

  return MEMORY[0x2822007C0]();
}

uint64_t sub_22B0A4748()
{

  return MEMORY[0x2822009F8](sub_22B0A4860, 0, 0);
}

uint64_t sub_22B0A4860()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 16);
  v3 = *(v0 + 192);
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  v5 = swift_task_alloc();
  *(v0 + 168) = v5;
  *v5 = v0;
  v5[1] = sub_22B0A494C;

  return MEMORY[0x2822007C0]();
}

uint64_t sub_22B0A494C()
{

  return MEMORY[0x2822009F8](sub_22B0A4A80, 0, 0);
}

uint64_t sub_22B0A4A80()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 192);
  v3 = swift_task_alloc();
  *(v0 + 176) = v3;
  *(v3 + 16) = *(v0 + 112);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 184) = v4;
  *v4 = v0;
  v4[1] = sub_22B0A4B70;

  return MEMORY[0x2822007C0]();
}

uint64_t sub_22B0A4B70()
{

  return MEMORY[0x2822009F8](sub_22B0A4CA4, 0, 0);
}

uint64_t sub_22B0A4CA4()
{

  v1 = *(v0 + 8);

  return v1();
}

void DailyScheduler.scheduleDailyBlock(name:publicSafeName:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *&v6->_os_unfair_lock_opaque;
  os_unfair_lock_lock(v6 + 14);
  v14 = *(v13 + 80);
  v15 = *(v13 + 88);
  sub_22B0A4E34(&v6[16], a1, a2, a3, a4, a5, a6, v14, v15);
  type metadata accessor for DailyScheduler.State(0, v14, v15, v16);

  os_unfair_lock_unlock(v6 + 14);
}

uint64_t sub_22B0A4E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  type metadata accessor for DailyScheduler.DailyBlock(255, a8, a9, a4);
  sub_22B0DF550();

  return sub_22B0DF520();
}

void DailyScheduler.scheduleDailyBookends(name:setupBlock:cleanupBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 | a5)
  {
    v13 = *&v6->_os_unfair_lock_opaque;
    os_unfair_lock_lock(v6 + 14);
    v15 = *(v13 + 80);
    v14 = *(v13 + 88);
    sub_22B0A5008(&v6[16], a1, a2, a3, a4, a5, a6, v15, v14);
    type metadata accessor for DailyScheduler.State(0, v15, v14, v16);

    os_unfair_lock_unlock(v6 + 14);
  }

  else
  {
    sub_22B0DFB00();
    __break(1u);
  }
}

uint64_t sub_22B0A5008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  sub_22B0A7418(a4, a5);
  sub_22B0A7418(a6, a7);
  type metadata accessor for DailyScheduler.Bookend(255, a8, a9, v14);
  sub_22B0DF550();
  return sub_22B0DF520();
}

uint64_t sub_22B0A50C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 88) = a5;
  *(v6 + 96) = a6;
  *(v6 + 120) = a4;
  *(v6 + 72) = a2;
  *(v6 + 80) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C38, &qword_22B0E5480);
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B0A5170, 0, 0);
}

uint64_t sub_22B0A5170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DailyScheduler.Bookend(0, *(v4 + 88), *(v4 + 96), a4);
  if (sub_22B0DF510())
  {
    v5 = 0;
    v28 = *(v4 + 120);
    v6 = (*(v4 + 80) + 72);
    while (1)
    {
      v10 = sub_22B0DF4F0();
      result = sub_22B0DF4C0();
      if ((v10 & 1) == 0)
      {
        break;
      }

      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_21;
      }

      v12 = *(v6 - 3);
      if (v12)
      {
        v13 = *(v6 - 2);
        v31 = *v6;
        v32 = *(v6 - 1);
        v15 = *(v4 + 104);
        v14 = *(v4 + 112);
        v16 = sub_22B0DF5C0();
        v17 = *(v16 - 8);
        (*(v17 + 56))(v14, 1, 1, v16);
        v18 = swift_allocObject();
        *(v18 + 16) = 0;
        *(v18 + 24) = 0;
        *(v18 + 32) = v12;
        *(v18 + 40) = v13;
        *(v18 + 48) = v28;
        sub_22B0898A8(v14, v15, &qword_27D8B5C38, &qword_22B0E5480);
        v29 = v17;
        v19 = v17;
        v20 = v12;
        LODWORD(v15) = (*(v19 + 48))(v15, 1, v16);
        sub_22B0A7418(v12, v13);
        sub_22B0A7418(v12, v13);

        sub_22B0A7418(v32, v31);
        v30 = v13;
        sub_22B0A7418(v12, v13);
        v21 = *(v4 + 104);
        if (v15 == 1)
        {
          sub_22B07D02C(*(v4 + 104), &qword_27D8B5C38, &qword_22B0E5480);
        }

        else
        {
          sub_22B0DF5B0();
          (*(v29 + 8))(v21, v16);
        }

        if (*(v18 + 16))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v22 = sub_22B0DF570();
          v24 = v23;
          swift_unknownObjectRelease();
        }

        else
        {
          v22 = 0;
          v24 = 0;
        }

        v25 = **(v4 + 72);
        v26 = swift_allocObject();
        *(v26 + 16) = &unk_22B0E6110;
        *(v26 + 24) = v18;

        if (v24 | v22)
        {
          v7 = v4 + 16;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
          *(v4 + 32) = v22;
          *(v4 + 40) = v24;
        }

        else
        {
          v7 = 0;
        }

        v8 = *(v4 + 112);
        *(v4 + 48) = 1;
        *(v4 + 56) = v7;
        *(v4 + 64) = v25;
        swift_task_create();

        sub_22B094864(v20, v30);
        sub_22B094864(v32, v31);

        sub_22B094864(v20, v30);
        sub_22B07D02C(v8, &qword_27D8B5C38, &qword_22B0E5480);
        v9 = v5 + 1;
      }

      ++v5;
      v6 += 6;
      if (v9 == sub_22B0DF510())
      {
        goto LABEL_17;
      }
    }

    result = sub_22B0DF900();
    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_17:

    v27 = *(v4 + 8);

    return v27();
  }

  return result;
}

uint64_t sub_22B0A55A0(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v9 = (a3 + *a3);
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_22B0A5698;

  return v9(a5);
}

uint64_t sub_22B0A5698()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B0A578C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  *(v5 + 168) = a5;
  *(v5 + 128) = a3;
  *(v5 + 136) = a4;
  *(v5 + 120) = a2;
  *(v5 + 144) = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C38, &qword_22B0E5480);
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B0A5864, 0, 0);
}

uint64_t sub_22B0A5864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 144);
  v30 = *(v5 + 88);
  v31 = *(v5 + 80);
  type metadata accessor for DailyScheduler.DailyBlock(0, v31, v30, a4);
  if (sub_22B0DF510())
  {
    v6 = 0;
    v29 = *(v4 + 168);
    v28 = **(v4 + 120);
    v7 = (*(v4 + 128) + 72);
    while (1)
    {
      v10 = sub_22B0DF4F0();
      result = sub_22B0DF4C0();
      if ((v10 & 1) == 0)
      {
        break;
      }

      v12 = *(v7 - 4);
      v13 = *(v7 - 3);
      v14 = *(v7 - 2);
      v15 = *(v7 - 1);
      v16 = *v7;
      *(v4 + 16) = *(v7 - 5);
      *(v4 + 24) = v12;
      *(v4 + 32) = v13;
      *(v4 + 40) = v14;
      *(v4 + 48) = v15;
      *(v4 + 56) = v16;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_19;
      }

      v34 = v6 + 1;
      v35 = v6;
      v17 = *(v4 + 160);
      v32 = v7;
      v33 = *(v4 + 152);

      sub_22B0A5C94((v4 + 16));
      v18 = sub_22B0DF5C0();
      v19 = *(v18 - 8);
      (*(v19 + 56))(v17, 1, 1, v18);
      v20 = swift_allocObject();
      *(v20 + 16) = 0;
      *(v20 + 24) = 0;
      *(v20 + 32) = v31;
      *(v20 + 40) = v30;
      v21 = *(v4 + 32);
      *(v20 + 48) = *(v4 + 16);
      *(v20 + 64) = v21;
      *(v20 + 80) = *(v4 + 48);
      *(v20 + 96) = v29;
      sub_22B0898A8(v17, v33, &qword_27D8B5C38, &qword_22B0E5480);
      LODWORD(v17) = (*(v19 + 48))(v33, 1, v18);

      v22 = *(v4 + 152);
      if (v17 == 1)
      {
        sub_22B07D02C(*(v4 + 152), &qword_27D8B5C38, &qword_22B0E5480);
      }

      else
      {
        sub_22B0DF5B0();
        (*(v19 + 8))(v22, v18);
      }

      if (*(v20 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v23 = sub_22B0DF570();
        v25 = v24;
        swift_unknownObjectRelease();
      }

      else
      {
        v23 = 0;
        v25 = 0;
      }

      v26 = swift_allocObject();
      *(v26 + 16) = &unk_22B0E4B58;
      *(v26 + 24) = v20;

      if (v25 | v23)
      {
        v8 = v4 + 64;
        *(v4 + 64) = 0;
        *(v4 + 72) = 0;
        *(v4 + 80) = v23;
        *(v4 + 88) = v25;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v4 + 160);
      *(v4 + 96) = 1;
      *(v4 + 104) = v8;
      *(v4 + 112) = v28;
      swift_task_create();

      sub_22B07D02C(v9, &qword_27D8B5C38, &qword_22B0E5480);
      v6 = v35 + 1;
      v7 = v32 + 6;
      if (v34 == sub_22B0DF510())
      {
        goto LABEL_15;
      }
    }

    result = sub_22B0DF900();
    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    v27 = *(v4 + 8);

    return v27();
  }

  return result;
}

void sub_22B0A5C94(uint64_t *a1)
{
  v2 = v1;
  if (qword_2813E9AA0 != -1)
  {
    swift_once();
  }

  v4 = sub_22B0DF1B0();
  __swift_project_value_buffer(v4, qword_2813EBE78);
  v5 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v7 = a1[3];

  v9 = sub_22B0DF190();
  v10 = sub_22B0DF670();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_22B07B428(v5, v6, &v25);
    _os_log_impl(&dword_22B074000, v9, v10, "Running daily block %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23188A520](v12, -1, -1);
    MEMORY[0x23188A520](v11, -1, -1);
  }

  v14 = *(v2 + 96);
  v13 = *(v2 + 104);
  v15 = type metadata accessor for BlockSchedulerLogEvent();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_coreAnalyticsEventOptions] = 0;
  v25 = v14;
  v26 = v13;

  MEMORY[0x231889070](0x6C7564656863732ELL, 0xEE006E75722E7265);
  v17 = v26;
  v18 = &v16[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_coreAnalyticsEventName];
  *v18 = v25;
  v18[1] = v17;
  v19 = 0x6669636570736E55;
  if (v7)
  {
    v19 = v8;
  }

  v20 = 0xEB00000000646569;
  if (v7)
  {
    v20 = v7;
  }

  v21 = &v16[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_publicBlockName];
  *v21 = v19;
  v21[1] = v20;
  v22 = &v16[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_secondsSinceLastRun];
  *v22 = 0;
  v22[8] = 1;
  v16[OBJC_IVAR____TtC14HomeKitMetrics22BlockSchedulerLogEvent_isDailyBlock] = 1;
  v24.receiver = v16;
  v24.super_class = v15;
  v23 = objc_msgSendSuper2(&v24, sel_init);
  [*(v2 + 112) submitLogEvent_];
}

uint64_t sub_22B0A5F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(a3 + 32) + **(a3 + 32));
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_22B0A78E4;

  return v8(a4);
}

uint64_t sub_22B0A6024(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 88) = a5;
  *(v6 + 96) = a6;
  *(v6 + 120) = a4;
  *(v6 + 72) = a2;
  *(v6 + 80) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C38, &qword_22B0E5480);
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B0A60D4, 0, 0);
}

uint64_t sub_22B0A60D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DailyScheduler.Bookend(0, *(v4 + 88), *(v4 + 96), a4);
  if (sub_22B0DF510())
  {
    v5 = 0;
    v28 = *(v4 + 120);
    v6 = (*(v4 + 80) + 72);
    while (1)
    {
      v10 = sub_22B0DF4F0();
      result = sub_22B0DF4C0();
      if ((v10 & 1) == 0)
      {
        break;
      }

      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_21;
      }

      v12 = *(v6 - 1);
      if (v12)
      {
        v31 = *(v6 - 2);
        v32 = *(v6 - 3);
        v13 = *v6;
        v15 = *(v4 + 104);
        v14 = *(v4 + 112);
        v16 = sub_22B0DF5C0();
        v17 = *(v16 - 8);
        (*(v17 + 56))(v14, 1, 1, v16);
        v18 = swift_allocObject();
        *(v18 + 16) = 0;
        *(v18 + 24) = 0;
        *(v18 + 32) = v12;
        *(v18 + 40) = v13;
        *(v18 + 48) = v28;
        sub_22B0898A8(v14, v15, &qword_27D8B5C38, &qword_22B0E5480);
        v29 = v17;
        v19 = v17;
        v20 = v12;
        LODWORD(v15) = (*(v19 + 48))(v15, 1, v16);
        sub_22B0A7418(v12, v13);
        sub_22B0A7418(v12, v13);

        sub_22B0A7418(v32, v31);
        v30 = v13;
        sub_22B0A7418(v12, v13);
        v21 = *(v4 + 104);
        if (v15 == 1)
        {
          sub_22B07D02C(*(v4 + 104), &qword_27D8B5C38, &qword_22B0E5480);
        }

        else
        {
          sub_22B0DF5B0();
          (*(v29 + 8))(v21, v16);
        }

        if (*(v18 + 16))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v22 = sub_22B0DF570();
          v24 = v23;
          swift_unknownObjectRelease();
        }

        else
        {
          v22 = 0;
          v24 = 0;
        }

        v25 = **(v4 + 72);
        v26 = swift_allocObject();
        *(v26 + 16) = &unk_22B0E4B40;
        *(v26 + 24) = v18;

        if (v24 | v22)
        {
          v7 = v4 + 16;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
          *(v4 + 32) = v22;
          *(v4 + 40) = v24;
        }

        else
        {
          v7 = 0;
        }

        v8 = *(v4 + 112);
        *(v4 + 48) = 1;
        *(v4 + 56) = v7;
        *(v4 + 64) = v25;
        swift_task_create();

        sub_22B094864(v32, v31);
        sub_22B094864(v20, v30);

        sub_22B094864(v20, v30);
        sub_22B07D02C(v8, &qword_27D8B5C38, &qword_22B0E5480);
        v9 = v5 + 1;
      }

      ++v5;
      v6 += 6;
      if (v9 == sub_22B0DF510())
      {
        goto LABEL_17;
      }
    }

    result = sub_22B0DF900();
    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_17:

    v27 = *(v4 + 8);

    return v27();
  }

  return result;
}

uint64_t sub_22B0A6504(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v9 = (a3 + *a3);
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_22B0A78E4;

  return v9(a5);
}

Swift::Void __swiftcall DailyScheduler.runDailyBlocks(isDebug:)(Swift::Bool isDebug)
{
  v2 = isDebug;
  v3 = v1[18];
  v4 = v1[19];
  __swift_project_boxed_opaque_existential_1(v1 + 15, v3);
  (*(v4 + 16))(v1[5], v1[6], v2, v3, v4);
}

uint64_t *DailyScheduler.deinit()
{
  v1 = *v0;

  type metadata accessor for DailyScheduler.State(255, *(v1 + 80), *(v1 + 88), v2);
  sub_22B0DF180();
  sub_22B0DF770();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  return v0;
}

uint64_t DailyScheduler.__deallocating_deinit()
{
  DailyScheduler.deinit();

  return MEMORY[0x2821FE8D8](v0, 160, 7);
}

uint64_t sub_22B0A67B4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25[1] = a8;
  v14 = type metadata accessor for RunDatePreferencesStorage.State(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RunDatePreferencesStorage(0);
  v17 = swift_allocObject();
  v18 = (v17 + OBJC_IVAR____TtC14HomeKitMetrics25RunDatePreferencesStorage_mutex);
  v19 = sub_22B0DF0E0();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  *v18 = 0;

  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C40, &unk_22B0E2DC0) + 28);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C48, &qword_22B0E4B90);
  bzero(v18 + v20, *(*(v21 - 8) + 64));
  sub_22B0A7744(v16, v18 + v20);
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v22 = objc_opt_self();

  v23 = [v22 sharedInstance];

  swift_unknownObjectRetain();
  return sub_22B0A6984(a1, v17, v23, a4, a5, a6);
}

uint64_t sub_22B0A6984(char *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C50, &qword_22B0E4B98);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22B0E4950;
  *(v12 + 32) = 0x4072C00000000000;
  *(v12 + 40) = 0xD000000000000014;
  *(v12 + 48) = 0x800000022B0E72F0;
  *(v12 + 56) = 0;
  v13 = MEMORY[0x277D84F90];
  *(v12 + 64) = MEMORY[0x277D84F90];
  *(v12 + 72) = v13;
  *(v12 + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C58, &unk_22B0E4BA0);
  *(v12 + 152) = &protocol witness table for CoalescingRepeatingScheduler<A>;
  *(v12 + 80) = a2;
  *(v12 + 88) = a3;
  *(v12 + 96) = a4;
  *(v12 + 104) = a5;
  *(v12 + 112) = a6;
  *(v12 + 120) = a1;
  v14 = swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D8B5C60, &unk_22B0E4BB0);
  v15 = swift_allocObject();
  v16 = *(*v15 + 128);
  v17 = sub_22B0DF990();
  v18 = *(*(v17 - 8) + 56);
  v18(v15 + v16, 1, 1, v17);
  v18(v15 + *(*v15 + 136), 1, 1, v17);
  *(v15 + 16) = 0xD000000000000014;
  *(v15 + 24) = 0x800000022B0E72F0;
  *(v15 + 32) = 0xD000000000000014;
  *(v15 + 40) = 0x800000022B0E72F0;
  *(v15 + 48) = &unk_22B0E6090;
  *(v15 + 56) = v14;
  *(v15 + 64) = xmmword_22B0E4950;
  v19 = &a1[*(*a1 + 136)];
  swift_bridgeObjectRetain_n();

  v20 = a3;
  swift_unknownObjectRetain();
  swift_retain_n();
  os_unfair_lock_lock(v19);
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5F20, &unk_22B0E54F0) + 28);
  sub_22B0C5BF8(v19 + v21, 0xD000000000000014, 0x800000022B0E72F0, v15);
  os_unfair_lock_unlock(v19);
  os_unfair_lock_lock(v19);
  sub_22B0C5F44((&v19->_os_unfair_lock_opaque + v21), v15, a1);
  os_unfair_lock_unlock(v19);

  swift_unknownObjectRelease();

  return v12;
}

uint64_t *sub_22B0A6C74(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v16 = *v9;
  *(v9 + 1) = xmmword_22B0E4950;
  v9[4] = 0x4072C00000000000;
  v9[5] = 0xD000000000000014;
  v9[6] = 0x800000022B0E72F0;
  v17 = *(v16 + 80);
  v18 = *(v16 + 88);
  v34[0] = sub_22B0A3BD4(v17, v18, a3, a4);
  v34[1] = v19;
  *(v9 + 14) = 0;
  v9[9] = 0;
  v9[8] = 0;
  v21 = type metadata accessor for DailyScheduler.State(0, v17, v18, v20);
  sub_22B0CC750(v34, (v9 + 8), v21);
  v9[18] = a7;
  v9[19] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9 + 15);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_1, a1, a7);
  v9[10] = a2;
  v9[11] = a3;
  v9[12] = a4;
  v9[13] = a5;
  v9[14] = a6;
  v23 = v9[5];
  v24 = v9[6];
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  v26[2] = v17;
  v26[3] = a7;
  v26[4] = v18;
  v26[5] = a8;
  v26[6] = v25;
  v31 = *(a8 + 8);
  swift_unknownObjectRetain();
  v33 = a3;
  swift_unknownObjectRetain();

  v31(v23, v24, 0x28093E61EE400000, 195, v23, v24, &unk_22B0E4B80, v26, a7, a8);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v9;
}

uint64_t sub_22B0A703C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22B0A70A8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_22B0A78E4;

  return sub_22B0A50C0(a1, a2, v8, v9, v6, v7);
}

uint64_t sub_22B0A7174(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22B0A78E4;

  return sub_22B0A578C(a1, a2, v6, v7, v8);
}

uint64_t sub_22B0A7238(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_22B0A78E4;

  return sub_22B0A6024(a1, a2, v8, v9, v6, v7);
}

unint64_t sub_22B0A7304()
{
  result = qword_2813EAD70;
  if (!qword_2813EAD70)
  {
    sub_22B0DF0E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EAD70);
  }

  return result;
}

uint64_t sub_22B0A735C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_22B0A78E4;

  return sub_22B0A6504(v2, v3, v4, v5, v6);
}

uint64_t sub_22B0A7418(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22B0A7428()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 96);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B0A78E4;

  return sub_22B0A5F30(v2, v3, v0 + 48, v4);
}

uint64_t sub_22B0A74E8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B0A5698;

  return sub_22B0CC784(v2);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_22B0A75D4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B0A78E4;

  return sub_22B0CC784(v2);
}

uint64_t sub_22B0A7680(char a1)
{
  v4 = *(v1 + 48);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B0A78E4;

  return sub_22B0A3C9C(a1, v4);
}

uint64_t sub_22B0A7744(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RunDatePreferencesStorage.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B0A77A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_SbIeghHy_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_22B0A7810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22B0A784C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B0A7894(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22B0A78EC(uint64_t a1)
{
  v1 = *(a1 + 96);
  v4[0] = *(a1 + 80);
  v4[1] = v1;
  result = type metadata accessor for BaseAnalyzerDataSource(319, v4);
  if (v3 <= 0x3F)
  {
    *&v4[0] = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22B0A79A8()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22B0A7A34();
  }

  v1 = *(v0 + 8);

  return v1();
}

void sub_22B0A7A34()
{
  v41 = *MEMORY[0x277D85DE8];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *buffer = 0u;
  v1 = getpid();
  v2 = proc_pid_rusage(v1, 6, buffer);
  if (v2)
  {
    v3 = v2;
    sub_22B0A7FF8();
    v4 = sub_22B0DF760();
    v5 = sub_22B0DF6A0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 67109120;
      *(v6 + 4) = v3;
      _os_log_impl(&dword_22B074000, v4, v5, "Unable to retrieve memory foot-print, result: %d", v6, 8u);
      MEMORY[0x23188A520](v6, -1, -1);
    }
  }

  else
  {
    v7 = *(&v16 + 1);
    v8 = *(&v29 + 1);
    proc_reset_footprint_interval();
    v9 = type metadata accessor for ProcessMemorySampleLogEvent();
    v10 = objc_allocWithZone(v9);
    *&v10[OBJC_IVAR____TtC14HomeKitMetrics27ProcessMemorySampleLogEvent_currentMemoryUsage] = v7;
    *&v10[OBJC_IVAR____TtC14HomeKitMetrics27ProcessMemorySampleLogEvent_intervalMaxMemoryUsage] = v8;
    v11.receiver = v10;
    v11.super_class = v9;
    v4 = objc_msgSendSuper2(&v11, sel_init);
    [*(v0 + *(*v0 + 112) + 32) submitLogEvent_];
  }
}

uint64_t sub_22B0A7BFC()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 96);
  v5[0] = *(*v0 + 80);
  v5[1] = v2;
  v3 = type metadata accessor for BaseAnalyzerDataSource(0, v5);
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  return v0;
}

uint64_t sub_22B0A7CA8()
{
  sub_22B0A7BFC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22B0A7D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(*v4 + 112);
  v8 = *(*v4 + 88);
  v9 = *(*v4 + 96);
  v10 = *(*v4 + 104);
  v18[0] = *(*v4 + 80);
  v7 = v18[0];
  v18[1] = v8;
  v18[2] = v9;
  v18[3] = v10;
  v11 = type metadata accessor for BaseAnalyzerDataSource(0, v18);
  (*(*(v11 - 8) + 16))(v4 + v6, a1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = v9;
  v13[5] = v10;
  v13[6] = v12;
  v14 = *(v9 + 8);

  v14(0xD000000000000011, 0x800000022B0E7320, a2, a3, 0xD000000000000011, 0x800000022B0E7320, &unk_22B0E4D20, v13, v7, v9);

  return v4;
}

uint64_t sub_22B0A7F34(uint64_t a1)
{
  v4 = *(v1 + 48);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B0A5698;

  return sub_22B0A7988(a1, v4);
}

unint64_t sub_22B0A7FF8()
{
  result = qword_27D8B5CE8;
  if (!qword_27D8B5CE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8B5CE8);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DataStreamError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for DataStreamError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_22B0A80E4(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_22B0A80FC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_22B0A8134(uint64_t a1)
{
  v5 = "\b";
  v1 = *(a1 + 96);
  v4[0] = *(a1 + 80);
  v4[1] = v1;
  result = type metadata accessor for BaseAnalyzerDataSource(319, v4);
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v7 = MEMORY[0x277D83428] + 64;
    v8 = MEMORY[0x277D833E8] + 64;
    v9 = MEMORY[0x277D83410] + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22B0A8204@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_22B0A825C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_22B0A9000(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_22B0A82BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_22B0A8344();
  }

  v3 = *(v0 + 8);

  return v3();
}

void sub_22B0A8344()
{
  v1 = v0;
  v51 = sub_22B0DF0E0();
  v2 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D85000];
  v6 = (v0 + *((*MEMORY[0x277D85000] & *v0) + 0x78));
  v7 = [v6[2] startOfDayByAddingDayCount_];
  sub_22B0DF0B0();

  v8 = *v1;
  v9 = *v5;
  v10 = *(v1 + *((*v5 & *v1) + 0x90));
  if (v10)
  {
    v12 = *(v1 + *((*v5 & *v1) + 0x70));
    if (!v12)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    os_unfair_lock_lock(v12 + 22);
    sub_22B097390();
    v13 = sub_22B099028(0xD000000000000015, 0x800000022B0E73D0, v4);
    v15 = v14;

    os_unfair_lock_unlock(v12 + 22);
    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = v13;
    }

    v50 = v16;
    v8 = *v1;
    v9 = *v5;
    if ((v10 & 2) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v50 = 0;
    if ((v10 & 2) == 0)
    {
LABEL_3:
      v11 = 0;
      goto LABEL_14;
    }
  }

  v17 = *(v1 + *((v9 & v8) + 0x70));
  if (!v17)
  {
LABEL_33:
    __break(1u);
    return;
  }

  os_unfair_lock_lock(v17 + 22);
  sub_22B097390();
  v18 = sub_22B099028(0xD000000000000016, 0x800000022B0E73F0, v4);
  v20 = v19;

  os_unfair_lock_unlock(v17 + 22);
  if (v20)
  {
    v11 = 0;
  }

  else
  {
    v11 = v18;
  }

  v8 = *v1;
  v9 = *v5;
LABEL_14:
  v21 = *(v1 + *((v9 & v8) + 0x70));
  if (!v21)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  os_unfair_lock_lock(v21 + 22);
  sub_22B0975F8();
  sub_22B09D024(v4);
  v23 = v22;
  if (*(v22 + 16) && (v24 = sub_22B0768A8(0x694879726F6D656DLL, 0xEF72657461776867), (v25 & 1) != 0))
  {
    v26 = *(*(v23 + 56) + 40 * v24 + 8);

    v27 = 0;
  }

  else
  {

    v26 = 0;
    v27 = 1;
  }

  os_unfair_lock_unlock(v21 + 22);
  os_unfair_lock_lock(v21 + 22);
  sub_22B0975F8();
  sub_22B09D024(v4);
  v29 = v28;
  if (!*(v28 + 16))
  {
    goto LABEL_25;
  }

  v30 = sub_22B0768A8(0x615379726F6D656DLL, 0xEC000000656C706DLL);
  if ((v31 & 1) == 0)
  {
    goto LABEL_25;
  }

  v32 = *(v29 + 56) + 40 * v30;
  v34 = *(v32 + 16);
  v33 = *(v32 + 24);

  os_unfair_lock_unlock(v21 + 22);
  v35 = v33 / v34;
  if (COERCE__INT64(fabs(v35)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v35 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v35 >= 9.22337204e18)
  {
    __break(1u);
LABEL_25:

    os_unfair_lock_unlock(v21 + 22);
    v35 = 0.0;
  }

  v36 = (v10 & 2) == 0;
  v37 = (v10 & 1) == 0;
  if (v27)
  {
    v26 = 0;
  }

  v39 = *v6;
  v38 = v6[1];
  v60 = v37;
  v59 = v36;
  v49 = v4;
  v40 = v6;
  v41 = v35 & ~(v35 >> 63);
  v57 = v35 < 1;
  v55 = v27;
  v42 = type metadata accessor for ProcessMemorySummaryLogEvent();
  v43 = objc_allocWithZone(v42);
  *&v43[OBJC_IVAR____TtC14HomeKitMetrics28ProcessMemorySummaryLogEvent_coreAnalyticsEventOptions] = 1;
  v53 = v39;
  v54 = v38;

  MEMORY[0x231889070](0xD000000000000015, 0x800000022B0E7430);
  v44 = v54;
  v45 = &v43[OBJC_IVAR____TtC14HomeKitMetrics28ProcessMemorySummaryLogEvent_coreAnalyticsEventName];
  *v45 = v53;
  *(v45 + 1) = v44;
  v46 = &v43[OBJC_IVAR____TtC14HomeKitMetrics28ProcessMemorySummaryLogEvent_counts];
  *v46 = v50;
  v46[8] = v60;
  *(v46 + 9) = v53;
  *(v46 + 3) = *(&v53 + 3);
  *(v46 + 2) = v11;
  v46[24] = v59;
  *(v46 + 25) = *v58;
  *(v46 + 7) = *&v58[3];
  *(v46 + 4) = v41;
  v46[40] = v57;
  LODWORD(v44) = *v56;
  *(v46 + 11) = *&v56[3];
  *(v46 + 41) = v44;
  *(v46 + 6) = v26;
  v46[56] = v55;
  v52.receiver = v43;
  v52.super_class = v42;
  v47 = objc_msgSendSuper2(&v52, sel_init);
  [v40[4] submitLogEvent_];

  (*(v2 + 8))(v49, v51);
}

void sub_22B0A88C0(void *a1)
{
  type metadata accessor for ProcessMemorySampleLogEvent();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    oslog = a1;
    sub_22B0A89E4(v3);
  }

  else
  {
    if (qword_27D8B53C0 != -1)
    {
      swift_once();
    }

    v4 = sub_22B0DF1B0();
    __swift_project_value_buffer(v4, qword_27D8B91F8);
    oslog = sub_22B0DF190();
    v5 = sub_22B0DF690();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22B074000, oslog, v5, "Received HMMLogEvent of unknown type.", v6, 2u);
      MEMORY[0x23188A520](v6, -1, -1);
    }
  }
}

void sub_22B0A89E4(uint64_t a1)
{
  v3 = sub_22B0DF0E0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x70));
  if (v7)
  {
    v8 = *(a1 + OBJC_IVAR____TtC14HomeKitMetrics27ProcessMemorySampleLogEvent_intervalMaxMemoryUsage) >> 10;
    v9 = *(a1 + OBJC_IVAR____TtC14HomeKitMetrics27ProcessMemorySampleLogEvent_currentMemoryUsage) >> 10;
    os_unfair_lock_lock(v7 + 22);
    v10 = [*(sub_22B0975F8() + 24) currentDatePartition];
    sub_22B0DF0B0();

    sub_22B09AE18(v8, 0x694879726F6D656DLL, 0xEF72657461776867, v6);

    v11 = *(v4 + 8);
    v11(v6, v3);
    os_unfair_lock_unlock(v7 + 22);
    os_unfair_lock_lock(v7 + 22);
    v12 = [*(sub_22B0975F8() + 24) currentDatePartition];
    sub_22B0DF0B0();

    sub_22B09AE18(v9, 0x615379726F6D656DLL, 0xEC000000656C706DLL, v6);

    v11(v6, v3);
    os_unfair_lock_unlock(v7 + 22);
  }

  else
  {
    __break(1u);
  }
}

void sub_22B0A8C0C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_22B0A88C0(v4);
}

void sub_22B0A8C74(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  sub_22B0A9948(a4);
}

void sub_22B0A8D48(char *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *MEMORY[0x277D85000] & *a1;

  v4 = *((*v2 & *a1) + 0x78);
  v5 = *(v3 + 96);
  v7[0] = *(v3 + 80);
  v7[1] = v5;
  v6 = type metadata accessor for BaseAnalyzerDataSource(0, v7);
  (*(*(v6 - 8) + 8))(&a1[v4], v6);
}

unint64_t sub_22B0A8EA0()
{
  result = qword_27D8B5DD0;
  if (!qword_27D8B5DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B5DD0);
  }

  return result;
}

unint64_t sub_22B0A8EF8()
{
  result = qword_27D8B5DD8;
  if (!qword_27D8B5DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B5DD8);
  }

  return result;
}

unint64_t sub_22B0A8F50()
{
  result = qword_27D8B5DE0;
  if (!qword_27D8B5DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B5DE0);
  }

  return result;
}

unint64_t sub_22B0A8FA8()
{
  result = qword_27D8B5DE8;
  if (!qword_27D8B5DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B5DE8);
  }

  return result;
}

uint64_t sub_22B0A9000(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_22B0A9038(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_22B0DF830())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5E00, qword_22B0E4FF0);
      v3 = sub_22B0DF8C0();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_22B0DF830();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x2318895C0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_22B0DF740();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_22B08A1B0();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_22B0DF750();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_22B0DF740();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_22B08A1B0();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_22B0DF750();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void *sub_22B0A9304(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = *v3;
  v9 = MEMORY[0x277D85000];
  v10 = *((*MEMORY[0x277D85000] & *v3) + 0x78);
  v12 = *((*MEMORY[0x277D85000] & v8) + 0x58);
  v13 = *((*MEMORY[0x277D85000] & v8) + 0x60);
  v14 = *((*MEMORY[0x277D85000] & v8) + 0x68);
  v38 = *((*MEMORY[0x277D85000] & v8) + 0x50);
  v11 = v38;
  v39 = v12;
  v40 = v13;
  v41 = v14;
  v15 = type metadata accessor for BaseAnalyzerDataSource(0, &v38);
  (*(*(v15 - 8) + 16))(&v4[v10], a1, v15);
  *&v4[*((*v9 & *v4) + 0x90)] = a2;
  type metadata accessor for NamedGroupSpecifier();
  v16 = swift_allocObject();
  *(v16 + 16) = 0xD000000000000018;
  *(v16 + 24) = 0x800000022B0E7410;
  v17 = sub_22B08C5E8(v16);

  v18 = MEMORY[0x277D85000];
  *&v4[*((*MEMORY[0x277D85000] & *v4) + 0x70)] = v17;
  v38 = v11;
  v39 = v12;
  v40 = v13;
  v41 = v14;
  type metadata accessor for MemoryUtilizationTracker(0, &v38);
  *&v4[*((*v18 & *v4) + 0x80)] = sub_22B0A7EE0(a1, 0x94049F30F7200000, 97);
  *&v4[*((*v18 & *v4) + 0x88)] = [objc_allocWithZone(MEMORY[0x277D0F810]) init];
  v37.receiver = v4;
  v37.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v37, sel_init);
  v20 = *(a1 + 40);
  type metadata accessor for ProcessMemorySampleLogEvent();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = v19;
  [v20 addObserver:v22 forEventClass:ObjCClassFromMetadata];
  type metadata accessor for ProcessMemorySummaryLogEvent();
  [v20 addObserver:v22 forEventClass:swift_getObjCClassFromMetadata()];
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v24 = swift_allocObject();
  v24[2] = v11;
  v24[3] = v12;
  v24[4] = v13;
  v24[5] = v14;
  v24[6] = v23;
  v25 = *(v14 + 8);

  v25(0x764579726F6D654DLL, 0xEC00000073746E65, 0x764579726F6D654DLL, 0xEC00000073746E65, &unk_22B0E4FE0, v24, v12, v14);

  v38 = a2;
  sub_22B0A9D38();
  if (sub_22B0DFE20())
  {
    v26 = *(v22 + *((*MEMORY[0x277D85000] & *v22) + 0x88));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5888, &unk_22B0E3990);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22B0E4D80;
    v28 = v26;
    *(inited + 32) = sub_22B0DF620();
    sub_22B0A9038(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_22B08A1B0();
    sub_22B0A9D8C();
    v29 = sub_22B0DF5F0();

    [v28 addObserver:v22 debounceInterval:v29 events:a3];
  }

  v38 = a2;
  if (sub_22B0DFE20())
  {
    v30 = *(v22 + *((*MEMORY[0x277D85000] & *v22) + 0x88));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5888, &unk_22B0E3990);
    v31 = swift_initStackObject();
    *(v31 + 16) = xmmword_22B0E4D80;
    v32 = v30;
    *(v31 + 32) = sub_22B0DF620();
    sub_22B0A9038(v31);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_22B08A1B0();
    sub_22B0A9D8C();
    v33 = sub_22B0DF5F0();

    [v32 addObserver:v22 debounceInterval:v33 events:a3];
  }

  v38 = a2;
  sub_22B0A8FA8();
  if ((sub_22B0DF7B0() & 1) == 0)
  {
    [*(v22 + *((*MEMORY[0x277D85000] & *v22) + 0x88)) start];
  }

  return v22;
}

void sub_22B0A9948(uint64_t a1)
{
  v3 = sub_22B0DF0E0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 4)
  {
    v7 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x70));
    if (v7)
    {
      os_unfair_lock_lock(v7 + 22);
      v11 = [*(sub_22B097390() + 24) currentDatePartition];
      sub_22B0DF0B0();

      v10 = 0x800000022B0E73D0;
      v9 = 0xD000000000000015;
      goto LABEL_7;
    }

    goto LABEL_16;
  }

  if (a1 == 5)
  {
    v7 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x70));
    if (v7)
    {
      os_unfair_lock_lock(v7 + 22);
      v8 = [*(sub_22B097390() + 24) currentDatePartition];
      sub_22B0DF0B0();

      v9 = 0xD000000000000016;
      v10 = 0x800000022B0E73F0;
LABEL_7:
      sub_22B09A03C(1, v9, v10, v6);

      (*(v4 + 8))(v6, v3);
      os_unfair_lock_unlock(v7 + 22);
      return;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  if (qword_27D8B53C0 != -1)
  {
    swift_once();
  }

  v12 = sub_22B0DF1B0();
  __swift_project_value_buffer(v12, qword_27D8B91F8);
  v17 = sub_22B0DF190();
  v13 = sub_22B0DF680();
  if (os_log_type_enabled(v17, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = a1;
    _os_log_impl(&dword_22B074000, v17, v13, "Received unexpected HMFMemoryEvent type: %ld", v14, 0xCu);
    MEMORY[0x23188A520](v14, -1, -1);
  }

  v15 = v17;
}

uint64_t sub_22B0A9C74(uint64_t a1)
{
  v4 = *(v1 + 48);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B0A5698;

  return sub_22B0A829C(a1, v4);
}

unint64_t sub_22B0A9D38()
{
  result = qword_27D8B5DF0;
  if (!qword_27D8B5DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B5DF0);
  }

  return result;
}

unint64_t sub_22B0A9D8C()
{
  result = qword_27D8B5DF8;
  if (!qword_27D8B5DF8)
  {
    sub_22B08A1B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B5DF8);
  }

  return result;
}

void *sub_22B0A9E30()
{
  v1 = sub_22B0DF0E0();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v0;
  result = sub_22B0A9FC4(v3);
  v7 = result;
  v8 = MEMORY[0x277D84FA0];
  v14 = MEMORY[0x277D84FA0];
  v9 = result[2];
  if (v9)
  {
    v10 = 0;
    while (v10 < *(v7 + 16))
    {
      (*(v2 + 16))(v5, v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v10++, v1);
      v11 = sub_22B091908(v5);
      sub_22B0ACDE4(v11);

      result = (*(v2 + 8))(v5, v1);
      if (v9 == v10)
      {
        v8 = v14;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v12 = sub_22B0ACCDC(v8);

    return v12;
  }

  return result;
}

uint64_t sub_22B0A9FC4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v9 - v5;
  (*(v4 + 16))(&v9 - v5, v1[2] + *(*v1[2] + 96), v3);
  v7 = (*(*(v2 + 88) + 8))(v3);
  (*(v4 + 8))(v6, v3);
  return v7;
}

char *sub_22B0AA120(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - v4;
  v6 = sub_22B0DF0E0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v41 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v33 = &v30 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  v15 = sub_22B0A9FC4(v12);
  v40 = *(v15 + 16);
  if (v40)
  {
    v38 = v14;
    v39 = v1;
    v16 = 0;
    v36 = v7 + 16;
    v37 = (v7 + 8);
    v34 = (v7 + 32);
    v35 = (v7 + 48);
    v42 = MEMORY[0x277D84F90];
    v17 = a1;
    v31 = v5;
    v32 = a1;
    v18 = v7;
    while (v16 < *(v15 + 16))
    {
      v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v20 = v15;
      v21 = *(v18 + 72);
      v22 = v18;
      v14 = v38;
      (*(v18 + 16))(v38, v15 + v19 + v21 * v16, v6);
      sub_22B0AA49C(v14, v17, v5);
      (*v37)(v14, v6);
      if ((*v35)(v5, 1, v6) == 1)
      {
        sub_22B09F2F0(v5);
      }

      else
      {
        v23 = v5;
        v24 = v33;
        v25 = *v34;
        (*v34)(v33, v23, v6);
        v25(v41, v24, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_22B082E70(0, *(v42 + 2) + 1, 1, v42);
        }

        v14 = *(v42 + 2);
        v26 = *(v42 + 3);
        if (v14 >= v26 >> 1)
        {
          v42 = sub_22B082E70((v26 > 1), v14 + 1, 1, v42);
        }

        v27 = v41;
        v28 = v42;
        *(v42 + 2) = v14 + 1;
        v25(&v28[v19 + v14 * v21], v27, v6);
        v5 = v31;
        v17 = v32;
      }

      ++v16;
      v15 = v20;
      v18 = v22;
      if (v40 == v16)
      {
        goto LABEL_13;
      }
    }

    __break(1u);

    (*v37)(v14, v6);

    __break(1u);
  }

  else
  {
    v42 = MEMORY[0x277D84F90];
LABEL_13:

    return v42;
  }

  return result;
}

uint64_t sub_22B0AA49C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_22B091908(a1);
  v11[2] = &v12;
  v12 = a2;
  LOBYTE(a2) = sub_22B0AA800(sub_22B0ACD8C, v11, v6);

  v7 = sub_22B0DF0E0();
  v8 = *(v7 - 8);
  if (a2)
  {
    (*(*(v7 - 8) + 16))(a3, a1, v7);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return (*(v8 + 56))(a3, v9, 1, v7);
}

uint64_t sub_22B0AA5AC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v11[-v8];
  (*(v7 + 16))(&v11[-v8], v2[2] + *(*v2[2] + 96), v6);
  v12 = a1;
  (*(*(v5 + 88) + 16))(a2, v11, v6);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_22B0AA800(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x2318895C0](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_22B0DF830();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_22B0AA93C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22B0DF0E0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_22B076420(&qword_2813EAD80, MEMORY[0x277CC9588]);
  v33 = a2;
  v11 = sub_22B0DF2A0();
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
      sub_22B076420(&qword_2813EAD70, MEMORY[0x277CC9598]);
      v21 = sub_22B0DF2F0();
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
    sub_22B0ABAAC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_22B0AABF4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_22B0DFD40();
  sub_22B0DF380();
  v8 = sub_22B0DFD80();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_22B0DFC60() & 1) != 0)
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

    sub_22B0ABD28(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_22B0AAD44(void *a1, uint64_t a2)
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

    v8 = sub_22B0DF840();

    if (v8)
    {

      v20[9] = v8;
      type metadata accessor for NamedGroupSpecifier();
      swift_dynamicCast();
      result = 0;
      *a1 = v20[0];
      return result;
    }

    result = sub_22B0DF830();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v17 = sub_22B0AAFB0(v7, result + 1);
    v20[0] = v17;
    v18 = *(v17 + 16);
    if (*(v17 + 24) <= v18)
    {
      sub_22B0AB778(v18 + 1);
      v17 = v20[0];
    }

    sub_22B0AB9E8(v19, v17);

    *v3 = v17;
    goto LABEL_16;
  }

  sub_22B0DFD40();
  (*(*a2 + 112))(v20);
  v10 = sub_22B0DFD80();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20[0] = *v2;

    sub_22B0ABEA8(v16, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20[0];
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(**(*(v6 + 48) + 8 * v12) + 120);

    LOBYTE(v14) = v14(a2);

    if (v14)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_22B0AAFB0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5E10, &qword_22B0E5078);
    v2 = sub_22B0DF8B0();
    v19 = v2;
    sub_22B0DF820();
    v3 = sub_22B0DF850();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for NamedGroupSpecifier();
      v5 = v4;
      do
      {
        v18[0] = v5;
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_22B0AB778(v13 + 1);
        }

        v6 = v18[9];
        v2 = v19;
        sub_22B0DFD40();
        (*(*v6 + 112))(v18);
        result = sub_22B0DFD80();
        v8 = v2 + 56;
        v9 = -1 << *(v2 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v2 + 56 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v2 + 56 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v2 + 48) + 8 * v12) = v6;
        ++*(v2 + 16);
        v5 = sub_22B0DF850();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_22B0AB1D0(uint64_t a1)
{
  v2 = v1;
  v36 = sub_22B0DF0E0();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5E18, &qword_22B0E5080);
  result = sub_22B0DF8A0();
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
      sub_22B076420(&qword_2813EAD80, MEMORY[0x277CC9588]);
      result = sub_22B0DF2A0();
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

uint64_t sub_22B0AB518(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D8B5E20, &qword_22B0E5088);
  result = sub_22B0DF8A0();
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
      sub_22B0DFD40();
      sub_22B0DF380();
      result = sub_22B0DFD80();
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

uint64_t sub_22B0AB778(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5E10, &qword_22B0E5078);
  result = sub_22B0DF8A0();
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
      sub_22B0DFD40();
      (*(*v17 + 112))(v26);
      result = sub_22B0DFD80();
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

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_22B0AB9E8(uint64_t a1, uint64_t a2)
{
  sub_22B0DFD40();
  (*(*a1 + 112))(v5);
  sub_22B0DFD80();
  result = sub_22B0DF810();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_22B0ABAAC(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_22B0DF0E0();
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
    sub_22B0AB1D0(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_22B0AC068();
      goto LABEL_12;
    }

    sub_22B0AC54C(v10 + 1);
  }

  v12 = *v3;
  sub_22B076420(&qword_2813EAD80, MEMORY[0x277CC9588]);
  v13 = sub_22B0DF2A0();
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
      sub_22B076420(&qword_2813EAD70, MEMORY[0x277CC9598]);
      v21 = sub_22B0DF2F0();
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
  result = sub_22B0DFC90();
  __break(1u);
  return result;
}

void sub_22B0ABD28(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_22B0AB518(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_22B0AC2A0();
      goto LABEL_16;
    }

    sub_22B0AC854(v8 + 1);
  }

  v10 = *v4;
  sub_22B0DFD40();
  sub_22B0DF380();
  v11 = sub_22B0DFD80();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_22B0DFC60() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_22B0DFC90();
  __break(1u);
}

uint64_t sub_22B0ABEA8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22B0AB778(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_22B0AC3FC();
      goto LABEL_12;
    }

    sub_22B0ACA8C(v6 + 1);
  }

  v8 = *v3;
  sub_22B0DFD40();
  (*(*v5 + 112))(v16);
  result = sub_22B0DFD80();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    type metadata accessor for NamedGroupSpecifier();
    do
    {
      v11 = *(**(*(v8 + 48) + 8 * a2) + 120);

      LOBYTE(v11) = v11(v5);

      if (v11)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22B0DFC90();
  __break(1u);
  return result;
}

void *sub_22B0AC068()
{
  v1 = v0;
  v2 = sub_22B0DF0E0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5E18, &qword_22B0E5080);
  v6 = *v0;
  v7 = sub_22B0DF890();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void sub_22B0AC2A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D8B5E20, &qword_22B0E5088);
  v2 = *v0;
  v3 = sub_22B0DF890();
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
}

void *sub_22B0AC3FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5E10, &qword_22B0E5078);
  v2 = *v0;
  v3 = sub_22B0DF890();
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

  return result;
}

uint64_t sub_22B0AC54C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_22B0DF0E0();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5E18, &qword_22B0E5080);
  v7 = sub_22B0DF8A0();
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
      sub_22B076420(&qword_2813EAD80, MEMORY[0x277CC9588]);
      result = sub_22B0DF2A0();
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

uint64_t sub_22B0AC854(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D8B5E20, &qword_22B0E5088);
  result = sub_22B0DF8A0();
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
      sub_22B0DFD40();

      sub_22B0DF380();
      result = sub_22B0DFD80();
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

uint64_t sub_22B0ACA8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5E10, &qword_22B0E5078);
  result = sub_22B0DF8A0();
  v5 = result;
  if (*(v3 + 16))
  {
    v26 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
      sub_22B0DFD40();
      v18 = *(*v17 + 112);

      v18(v27);
      result = sub_22B0DFD80();
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

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v26;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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