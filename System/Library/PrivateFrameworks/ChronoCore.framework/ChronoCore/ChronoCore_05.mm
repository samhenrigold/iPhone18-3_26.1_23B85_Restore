uint64_t sub_224AA5BB8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_224AA5C1C()
{
  v45 = type metadata accessor for SimpleWorkScheduler.Work(0);
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v1);
  v42 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F52D0, &qword_224DBB850);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v38 - v9;
  v11 = sub_224DA9878();
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DA9808();
  v15 = *(v0 + 16);
  v16 = *(v15 + 16);

  os_unfair_lock_lock(v16);
  v39 = v14;
  sub_224AA6078(v0, v14, &v46);
  os_unfair_lock_unlock(*(v15 + 16));

  v17 = 0;
  v19 = (v46 + 64);
  v18 = *(v46 + 64);
  v44 = v46;
  v20 = 1 << *(v46 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v18;
  v23 = (v20 + 63) >> 6;
  while (v22)
  {
    v24 = v17;
LABEL_13:
    v27 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v28 = v27 | (v24 << 6);
    v29 = *(*(v44 + 48) + 8 * v28);
    v30 = v42;
    sub_224C17A48(*(v44 + 56) + *(v43 + 72) * v28, v42, type metadata accessor for SimpleWorkScheduler.Work);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F52D8, &qword_224DBB858);
    v32 = *(v31 + 48);
    *v7 = v29;
    sub_224C1798C(v30, v7 + v32);
    (*(*(v31 - 8) + 56))(v7, 0, 1, v31);
    v26 = v24;
LABEL_14:
    sub_224AA67AC(v7, v10);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F52D8, &qword_224DBB858);
    if ((*(*(v33 - 8) + 48))(v10, 1, v33) == 1)
    {

      (*(v40 + 8))(v39, v41);
      return;
    }

    v34 = &v10[*(v33 + 48)];
    v35 = *(v34 + *(v45 + 24));

    v36 = sub_224C17AB0(v34, type metadata accessor for SimpleWorkScheduler.Work);
    v35(v36);

    v17 = v26;
  }

  if (v23 <= v17 + 1)
  {
    v25 = v17 + 1;
  }

  else
  {
    v25 = v23;
  }

  v26 = v25 - 1;
  while (1)
  {
    v24 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v24 >= v23)
    {
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F52D8, &qword_224DBB858);
      (*(*(v37 - 8) + 56))(v7, 1, 1, v37);
      v22 = 0;
      goto LABEL_14;
    }

    v22 = v19[v24];
    ++v17;
    if (v22)
    {
      goto LABEL_13;
    }
  }

  __break(1u);

  os_unfair_lock_unlock(*(v26 + 16));
  __break(1u);
}

uint64_t sub_224AA6078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v77 = a3;
  v85 = a2;
  v84 = type metadata accessor for SimpleWorkScheduler.Work(0);
  v88 = *(v84 - 8);
  v5 = MEMORY[0x28223BE20](v84, v4);
  v89 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v78 = &v76 - v9;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v76 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v81 = &v76 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F52D0, &qword_224DBB850);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v86 = (&v76 - v22);
  swift_beginAccess();
  v76 = a1;
  v23 = *(a1 + 24);
  v24 = *(v23 + 64);
  v80 = v23 + 64;
  v25 = 1 << *(v23 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v24;
  v28 = (v25 + 63) >> 6;
  v82 = v23;

  v29 = 0;
  v30 = MEMORY[0x277D84F98];
  v79 = MEMORY[0x277D84F98];
  v83 = v13;
  v87 = v20;
  while (v27)
  {
    v31 = v29;
LABEL_13:
    v34 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v35 = v34 | (v31 << 6);
    v36 = v81;
    v37 = *(*(v82 + 48) + 8 * v35);
    sub_224C17A48(*(v82 + 56) + *(v88 + 72) * v35, v81, type metadata accessor for SimpleWorkScheduler.Work);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F52D8, &qword_224DBB858);
    v39 = *(v38 + 48);
    v40 = v87;
    *v87 = v37;
    v20 = v40;
    sub_224C1798C(v36, &v40[v39]);
    (*(*(v38 - 8) + 56))(v20, 0, 1, v38);
    v33 = v31;
LABEL_14:
    v41 = v20;
    v42 = v86;
    sub_224AA67AC(v41, v86);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F52D8, &qword_224DBB858);
    if ((*(*(v43 - 8) + 48))(v42, 1, v43) == 1)
    {

      *(v76 + 24) = v30;

      *v77 = v79;
      return result;
    }

    v44 = v33;
    v45 = *v42;
    sub_224C1798C(v42 + *(v43 + 48), v13);
    sub_224DA9878();
    sub_224C179F0();
    if (sub_224DAEDB8())
    {
      sub_224C17A48(v13, v89, type metadata accessor for SimpleWorkScheduler.Work);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v90 = v30;
      v48 = sub_224B31510(v45);
      v49 = v30[2];
      v50 = (v47 & 1) == 0;
      v51 = v49 + v50;
      if (__OFADD__(v49, v50))
      {
        goto LABEL_40;
      }

      v52 = v47;
      if (v30[3] >= v51)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_224B2898C();
        }

        v20 = v87;
        v30 = v90;
        if ((v52 & 1) == 0)
        {
          goto LABEL_20;
        }

LABEL_25:
        v58 = v89;
        v59 = v30[7] + *(v88 + 72) * v48;
        goto LABEL_26;
      }

      sub_224B160D8(v51, isUniquelyReferenced_nonNull_native);
      v53 = sub_224B31510(v45);
      if ((v52 & 1) != (v54 & 1))
      {
        goto LABEL_44;
      }

      v48 = v53;
      v20 = v87;
      v30 = v90;
      if (v52)
      {
        goto LABEL_25;
      }

LABEL_20:
      v30[(v48 >> 6) + 8] |= 1 << v48;
      *(v30[6] + 8 * v48) = v45;
      sub_224C1798C(v89, v30[7] + *(v88 + 72) * v48);
      v13 = v83;
      sub_224C17AB0(v83, type metadata accessor for SimpleWorkScheduler.Work);
      v55 = v30[2];
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        goto LABEL_41;
      }

      v30[2] = v57;
      v29 = v44;
    }

    else
    {
      sub_224C17A48(v13, v78, type metadata accessor for SimpleWorkScheduler.Work);
      v61 = v79;
      v62 = swift_isUniquelyReferenced_nonNull_native();
      v90 = v61;
      v64 = sub_224B31510(v45);
      v65 = v61[2];
      v66 = (v63 & 1) == 0;
      v67 = v65 + v66;
      if (__OFADD__(v65, v66))
      {
        goto LABEL_42;
      }

      v68 = v63;
      if (v61[3] >= v67)
      {
        v20 = v87;
        if ((v62 & 1) == 0)
        {
          v74 = v64;
          sub_224B2898C();
          v64 = v74;
        }
      }

      else
      {
        sub_224B160D8(v67, v62);
        v69 = sub_224B31510(v45);
        v20 = v87;
        if ((v68 & 1) != (v70 & 1))
        {
          goto LABEL_44;
        }

        v64 = v69;
      }

      v71 = v90;
      v79 = v90;
      if (v68)
      {
        v59 = v90[7] + *(v88 + 72) * v64;
        v58 = v78;
LABEL_26:
        sub_224C17B18(v58, v59);
        v13 = v83;
        sub_224C17AB0(v83, type metadata accessor for SimpleWorkScheduler.Work);
        v29 = v44;
      }

      else
      {
        v90[(v64 >> 6) + 8] |= 1 << v64;
        *(v71[6] + 8 * v64) = v45;
        sub_224C1798C(v78, v71[7] + *(v88 + 72) * v64);
        v13 = v83;
        sub_224C17AB0(v83, type metadata accessor for SimpleWorkScheduler.Work);
        v72 = v71[2];
        v56 = __OFADD__(v72, 1);
        v73 = v72 + 1;
        if (v56)
        {
          goto LABEL_43;
        }

        v71[2] = v73;
        v29 = v44;
      }
    }
  }

  if (v28 <= v29 + 1)
  {
    v32 = v29 + 1;
  }

  else
  {
    v32 = v28;
  }

  v33 = v32 - 1;
  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v28)
    {
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F52D8, &qword_224DBB858);
      (*(*(v60 - 8) + 56))(v20, 1, 1, v60);
      v27 = 0;
      goto LABEL_14;
    }

    v27 = *(v80 + 8 * v31);
    ++v29;
    if (v27)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

uint64_t sub_224AA67AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F52D0, &qword_224DBB850);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224AA6824(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_224AA686C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_224AA68E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3B10, &unk_224DC3D00);
  v35 = v4;
  v6 = sub_224DAFB98();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_224DAFE68();
      sub_224DAEE78();
      v25 = sub_224DAFEA8();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void *sub_224AA6BA0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_224AA6C68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_224DAEE18();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_224AA6CB0()
{
  v1 = (type metadata accessor for PushEvent(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_224DA9878();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_224AA6DA0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA6DE8()
{
  v1 = type metadata accessor for IncomingMessage(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  swift_unknownObjectRelease();
  v5 = (v0 + v3);
  v6 = *(v0 + v3 + 8);
  if (v6 >> 60 != 15)
  {
    sub_224A78024(*v5, v6);
  }

  v7 = *(v1 + 20);
  v8 = sub_224DAE0D8();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  v9 = *(v1 + 28);
  v10 = sub_224DAE178();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_224AA6F60()
{
  v1 = sub_224DAC5E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

uint64_t sub_224AA7028()
{
  v1 = sub_224DABD48();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AA70EC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA712C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA7168()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_224AA71A0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AA7224()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA725C()
{
  v1 = sub_224DACC88();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_224AA7344()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AA7384()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AA73C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA7404()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA744C()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_224AA749C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AA74DC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA754C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA758C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t get_enum_tag_for_layout_string_10ChronoCore20LiveControlServicing_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_224AA76F8()
{
  v1 = sub_224DA9688();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AA7780()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA77C4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AA7800()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA788C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA78D0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA790C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_224DAA428();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_224AA7A08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_224DAA428();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_224AA7B10()
{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = v5 + *(v3 + 64);
  v7 = *(sub_224DAF728() - 8);
  v8 = *(v7 + 80);
  v9 = (v6 + v8) & ~v8;
  v10 = *(v7 + 64);
  (*(v3 + 8))(v0 + v5, v2);
  v11 = *(v1 - 8);
  if (!(*(v11 + 48))(v0 + v9, 1, v1))
  {
    (*(v11 + 8))(v0 + v9, v1);
  }

  return MEMORY[0x2821FE8E8](v0, ((v10 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | v8 | 7);
}

uint64_t sub_224AA7CC4()
{

  return MEMORY[0x2821FE8E8](v0, 26, 7);
}

uint64_t sub_224AA7CFC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA7D34()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AA7D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_224DA9878();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_224AA7E10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_224DA9878();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_224AA7EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_224DA9878();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_224DAC378();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_224AA7FA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_224DA9878();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_224DAC378();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_224AA809C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA80D4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA810C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA8144()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_224AA8194()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_224AA81EC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA822C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_224AA8294()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_224AA8304()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_224AA837C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AA8410()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_224AA8460()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AA84A8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA84E4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_224AA8534()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA8580()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_224AA85D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA8610()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_224AA8660()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA86C0(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_224AA877C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_224AA883C()
{
  MEMORY[0x22AA5EFB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA8874()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA88B8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA88F0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA8948()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AA8990()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_224AA89E8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_224AA8A30()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA8A68()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_224AA8AB8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA8B08()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_224AA8B54()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA8BA4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA8C20()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA8C58()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA8C90()
{
  v1 = sub_224DABCC8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_224AA8D80()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AA8DC0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AA8E30()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA8E68()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA8EA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4858, &unk_224DB8140);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_224AA8F18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4858, &unk_224DB8140);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_224AA8F98()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA8FD0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA9008()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA9040()
{
  v1 = sub_224DABCC8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_224AA9140(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48A0, &qword_224DB8208);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_224AA91B8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48A0, &qword_224DB8208);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_224AA9244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_224DABCC8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_224AA9300(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_224DABCC8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_224AA93B8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_224DABCC8();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = sub_224DAC918();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_7;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[7];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[8]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_224AA9520(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_224DABCC8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = sub_224DAC918();
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[6];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8]) = a2;
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[7];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

uint64_t sub_224AA9678()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AA96B8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA96F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA9734()
{
  v1 = sub_224DAC5E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AA97F8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AA9840()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA9878()
{

  sub_224A78024(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_224AA98C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AA99A0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA99D8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA9A10()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AA9A58()
{
  v1 = sub_224DAC4D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AA9B28()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AA9B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_224DAC268();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for TimelineFilenameMigrator.Action(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_224AA9C58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_224DAC268();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for TimelineFilenameMigrator.Action(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_224AA9D54()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AA9D94()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AA9DDC()
{

  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_224AA9E44()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AA9E94()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AA9ED4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AA9F0C()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_224AA9F94()
{
  v1 = sub_224DA9878();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_224DAC268();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (((*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_224AAA114()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAA14C()
{
  v1 = sub_224DA9878();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_224DAC268();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_224AAA2D0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAA308()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_224AAA3FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AAA4D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_224DA9908();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_224AAA58C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_224DA9908();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_224AAA644()
{
  v1 = *(type metadata accessor for HandlerItem(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_224DA9908();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_224AAA750()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAA788()
{
  MEMORY[0x22AA5EFB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAA7C8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AAA808()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAA844()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AAA990()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAA9C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AAAA00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_224AAAA78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_224AAAAF4()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_224AAAB44()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AAAB84()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AAABC4()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_224AAAC04()
{
  MEMORY[0x22AA5EFB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAAC3C()
{
  v1 = sub_224DA9908();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_224AAAD24()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAAD5C()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_224AAADBC()
{
  v1 = sub_224DAC268();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v6));
  }

  return MEMORY[0x2821FE8E8](v0, ((((v6 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_224AAAF10()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_224AAAF60()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_224AAAFC8()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_224AAB038()
{
  v1 = sub_224DAC268();
  v2 = *(v1 - 8);
  v7 = *(v2 + 80);
  v3 = (v7 + 32) & ~v7;
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((((((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  __swift_destroy_boxed_opaque_existential_1((v0 + v5));

  return MEMORY[0x2821FE8E8](v0, ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 16, v7 | 7);
}

uint64_t sub_224AAB1A8()
{
  v1 = sub_224DAC268();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_224AAB294()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_224AAB2EC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AAB334()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_224AAB41C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_224AAB51C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_224AAB574()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AAB5BC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AAB5FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AAB63C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AAB748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_224DA9688();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_224AAB7F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_224DA9688();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_224AAB8C8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAB918(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_224DAB018();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_224DAD9C8();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_224DA9878();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_224DAAC58();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_224AABAA0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_224DAB018();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_224DAD9C8();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_224DA9878();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_224DAAC58();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_224AABC38()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AABC70()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AABCB0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AABCE8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AABD20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for _HostFilterableChange(0);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v85 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v80 - v12;
  v15 = MEMORY[0x28223BE20](v11, v14);
  v81 = &v80 - v16;
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v80 - v18;
  v20 = sub_224DAB258();
  v21 = *(v20 - 8);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v86 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v28 = &v80 - v27;
  v30 = MEMORY[0x28223BE20](v26, v29);
  v82 = &v80 - v31;
  result = MEMORY[0x28223BE20](v30, v32);
  v35 = &v80 - v34;
  v87 = v3;
  v88 = a2;
  v83 = v13;
  v84 = v28;
  if ((a1 & 4) != 0)
  {
    (*(v21 + 2))(&v80 - v34, v3 + qword_281365438, v20);
    sub_224C4E30C(a2, v19, type metadata accessor for _HostFilterableChange);
    v36 = sub_224DAB228();
    v37 = sub_224DAF278();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v89 = v39;
      *v38 = 136446210;
      v80 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
      sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA030]);
      v40 = sub_224DAFD28();
      v42 = v41;
      sub_224C4E374(v19, type metadata accessor for _HostFilterableChange);
      v43 = sub_224A33F74(v40, v42, &v89);
      v20 = v80;

      *(v38 + 4) = v43;
      _os_log_impl(&dword_224A2F000, v36, v37, "Publishing activation state changed with host: %{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x22AA5EED0](v39, -1, -1);
      v44 = v38;
      v3 = v87;
      MEMORY[0x22AA5EED0](v44, -1, -1);
    }

    else
    {

      sub_224C4E374(v19, type metadata accessor for _HostFilterableChange);
    }

    (*(v21 + 1))(v35, v20);
    a2 = v88;
    result = sub_224DAB348();
    v13 = v83;
    v28 = v84;
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  v45 = v82;
  (*(v21 + 2))(v82, v3 + qword_281365438, v20);
  v46 = v81;
  sub_224C4E30C(a2, v81, type metadata accessor for _HostFilterableChange);
  v47 = sub_224DAB228();
  v48 = sub_224DAF278();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v89 = v50;
    *v49 = 136446210;
    v80 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA030]);
    v51 = sub_224DAFD28();
    v53 = v52;
    sub_224C4E374(v46, type metadata accessor for _HostFilterableChange);
    v54 = sub_224A33F74(v51, v53, &v89);
    v20 = v80;

    *(v49 + 4) = v54;
    _os_log_impl(&dword_224A2F000, v47, v48, "Publishing configurations changed with host: %{public}s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x22AA5EED0](v50, -1, -1);
    v55 = v49;
    v3 = v87;
    MEMORY[0x22AA5EED0](v55, -1, -1);

    (*(v21 + 1))(v82, v20);
  }

  else
  {

    sub_224C4E374(v46, type metadata accessor for _HostFilterableChange);
    (*(v21 + 1))(v45, v20);
  }

  a2 = v88;
  result = sub_224DAB348();
  v13 = v83;
  v28 = v84;
  if ((a1 & 1) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      return result;
    }

    goto LABEL_18;
  }

LABEL_14:
  (*(v21 + 2))(v28, v3 + qword_281365438, v20);
  sub_224C4E30C(a2, v13, type metadata accessor for _HostFilterableChange);
  v56 = v28;
  v57 = v13;
  v58 = sub_224DAB228();
  v59 = sub_224DAF278();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v82 = v21;
    v62 = v61;
    v89 = v61;
    *v60 = 136446210;
    v81 = a1;
    a1 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA030]);
    v63 = sub_224DAFD28();
    v65 = v64;
    sub_224C4E374(v57, type metadata accessor for _HostFilterableChange);
    v66 = sub_224A33F74(v63, v65, &v89);
    v20 = a1;
    LOBYTE(a1) = v81;

    *(v60 + 4) = v66;
    _os_log_impl(&dword_224A2F000, v58, v59, "Publishing host changed with host: %{public}s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v62);
    v67 = v62;
    v21 = v82;
    MEMORY[0x22AA5EED0](v67, -1, -1);
    v68 = v60;
    v3 = v87;
    MEMORY[0x22AA5EED0](v68, -1, -1);
  }

  else
  {

    sub_224C4E374(v13, type metadata accessor for _HostFilterableChange);
  }

  (*(v21 + 1))(v56, v20);
  a2 = v88;
  result = sub_224DAB348();
  if ((a1 & 8) != 0)
  {
LABEL_18:
    (*(v21 + 2))(v86, v3 + qword_281365438, v20);
    sub_224C4E30C(a2, v85, type metadata accessor for _HostFilterableChange);
    v69 = sub_224DAB228();
    v70 = sub_224DAF278();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = v21;
      v73 = swift_slowAlloc();
      v89 = v73;
      *v71 = 136446210;
      v74 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
      v75 = v85;
      sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA030]);
      v76 = sub_224DAFD28();
      v78 = v77;
      sub_224C4E374(v75, type metadata accessor for _HostFilterableChange);
      v79 = sub_224A33F74(v76, v78, &v89);

      *(v71 + 4) = v79;
      _os_log_impl(&dword_224A2F000, v69, v70, "Publishing orphans changed with host: %{public}s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v73);
      MEMORY[0x22AA5EED0](v73, -1, -1);
      MEMORY[0x22AA5EED0](v71, -1, -1);

      (*(v72 + 1))(v86, v74);
    }

    else
    {

      sub_224C4E374(v85, type metadata accessor for _HostFilterableChange);
      (*(v21 + 1))(v86, v20);
    }

    return sub_224DAB348();
  }

  return result;
}

uint64_t sub_224AAC748()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAC780()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AAC7C8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AAC808()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_224AAC850()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_224AAC8A0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAC8E8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *(a2 + 48) = *(a1 + 6);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = v2;
  return a2;
}

uint64_t sub_224AAC90C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);

  return MEMORY[0x2821FE8E8](v0, 200, 7);
}

uint64_t sub_224AAC97C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AAC9B4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_224AACA28()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AACA60()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AACAA0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AACAD8()
{

  return MEMORY[0x2821FE8E8](v0, 26, 7);
}

uint64_t sub_224AACB28()
{
  MEMORY[0x22AA5EFB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AACC20(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_224AACCDC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_224AACD88()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AACDC8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AACE00()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AACE38()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AACE88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AACF1C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_224AACF7C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_224DAB848();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 44)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_224AAD020(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = sub_224DAB848();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 44)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_224AAD0C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileReaperProtectionConfiguration(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_224AAD12C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for FileReaperProtectionConfiguration(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_224AAD1C8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAD204()
{

  return MEMORY[0x2821FE8E8](v0, 26, 7);
}

uint64_t sub_224AAD254()
{
  v1 = sub_224DAC5E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_224AAD330()
{
  v1 = sub_224DAC5E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AAD3F8()
{
  v1 = sub_224DA9688();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AAD4BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AAD4FC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAD534()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAD56C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAD5A4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAD628()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAD660()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AAD6B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AAD788()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AAD7C0()
{
  v1 = sub_224DAC528();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AAD8A4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAD8F4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AAD97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_224DACE38();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_224AADA38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_224DACE38();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_224AADAF0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5C48, &qword_224DBD308);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AADBB0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AADBF0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AADC58(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_224DAE738();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_224AADD04(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_224DAE738();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_224AADDAC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  if (*(v0 + 64))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_224AADDF4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AADE2C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AADE64()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AADEAC()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  if (*(v0 + 80))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_224AADF04()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_224AADF3C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AADFCC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AAE00C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAE044()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AAE114()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAE14C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AAE18C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAE1C4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAE1FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AAE348()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAE388(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DA9688();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_224AAE3F4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_224DA9688();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_224AAE474()
{
  v1 = (type metadata accessor for AppTokenInfo(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*v1 + 64);

  swift_unknownObjectRelease();
  sub_224A78024(*(v0 + 40), *(v0 + 48));
  v5 = sub_224DAE0D8();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v1[8];
  v7 = sub_224DA9878();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v3 + v6, v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_224AAE5F4()
{
  v1 = type metadata accessor for IncomingMessage(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  swift_unknownObjectRelease();
  v5 = (v0 + v3);
  v6 = *(v0 + v3 + 8);
  if (v6 >> 60 != 15)
  {
    sub_224A78024(*v5, v6);
  }

  v7 = *(v1 + 20);
  v8 = sub_224DAE0D8();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  v9 = *(v1 + 28);
  v10 = sub_224DAE178();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_224AAE754()
{

  swift_unknownObjectRelease();
  sub_224A78024(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_224AAE79C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAE7EC()
{
  v1 = sub_224DAB728();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_224AAE89C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AAE8D4()
{
  v1 = *(type metadata accessor for FileReaperScenario(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for FileReaperProtectionConfiguration(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 4, v5))
  {
    v6 = *(v5 + 44);
    v7 = sub_224DAB848();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  return MEMORY[0x2821FE8E8](v0, ((v3 + v4) & 0xFFFFFFFFFFFFFFF8) + 24, v2 | 7);
}

uint64_t sub_224AAEA10()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAEA48()
{
  v1 = sub_224DAC268();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AAEB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_224DA9F08();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_224AAEBB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_224DA9F08();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_224AAEC5C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAEC94(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_224DA9F08();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_224AAED40(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_224DA9F08();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_224AAEDE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_224AAEEB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_224AAEF7C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AAEFCC()
{
  v1 = sub_224DAE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AAF094(char a1)
{
  if (a1)
  {
    return 0x6974617669746361;
  }

  else
  {
    return 0x72756769666E6F63;
  }
}

uint64_t sub_224AAF100()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAF13C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAF174()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAF1AC()
{
  v1 = sub_224DAC268();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_224AAF2B8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AAF300()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AAF338()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_224AAF390()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AAF444@<X0>(uint64_t *a1@<X8>)
{
  result = sub_224DAB618();
  *a1 = result;
  return result;
}

uint64_t sub_224AAF500@<X0>(_BYTE *a1@<X8>)
{
  result = sub_224DAB5A8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_224AAF558@<X0>(_BYTE *a1@<X8>)
{
  result = sub_224DAB588();
  *a1 = result & 1;
  return result;
}

uint64_t sub_224AAF678@<X0>(_BYTE *a1@<X8>)
{
  result = sub_224DAB708();
  *a1 = result & 1;
  return result;
}

uint64_t sub_224AAF6D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_224DAB6D8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_224AAF750@<X0>(_BYTE *a1@<X8>)
{
  result = sub_224DAB5C8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_224AAF80C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_224AAF868(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAE8B8();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 6)
  {
    return v5 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_224AAF8D4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 5);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_224DAE8B8();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_224AAF968()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AAF9A0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AAF9E8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AAFA20(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3390, &qword_224DB35B8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 252)
  {
    v12 = *(a1 + a3[5]);
    if (v12 <= 3)
    {
      v13 = 3;
    }

    else
    {
      v13 = *(a1 + a3[5]);
    }

    v14 = v13 - 3;
    if (v12 >= 3)
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6140, qword_224DBB6B0);
    v16 = *(v15 - 8);
    if (*(v16 + 84) == a2)
    {
      v8 = v15;
      v9 = *(v16 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F63D0, &unk_224DC00D0);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[8];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_224AAFBBC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3390, &qword_224DB35B8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 252)
  {
    *(a1 + a4[5]) = a2 + 3;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6140, qword_224DBB6B0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F63D0, &unk_224DC00D0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_224AAFD50()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAFD88()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAFDD0()
{
  MEMORY[0x22AA5EFB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AAFE08()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_224AAFE60()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AAFEA8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AAFEF8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AAFF40()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AAFFD8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AB0014()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AB004C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AB0084()
{
  MEMORY[0x22AA5EFB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AB00BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AB00FC()
{
  sub_224A78024(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AB0134()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AB0178()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AB01D4()
{
  v1 = sub_224DAB728();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_224AB0298()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AB02F8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AB0330()
{
  v1 = sub_224DAC2B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_224AB0454()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AB048C()
{
  v1 = sub_224DAC2B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_224AB057C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AB05BC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AB06F0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_224AB0738()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AB0778()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AB07C0()
{
  MEMORY[0x22AA5EFB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AB0808()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AB0858()
{
  v1 = sub_224DA9398();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AB0938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_224AB0A0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2;
  }

  return result;
}

uint64_t sub_224AB0AD0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AB0B10()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AB0B48()
{
  v1 = sub_224DABE18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AB0C64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_224DAB6B8();
  *a1 = result;
  return result;
}

uint64_t sub_224AB0CE4()
{
  v1 = sub_224DAC268();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  __swift_destroy_boxed_opaque_existential_1((v0 + v5));
  __swift_destroy_boxed_opaque_existential_1((v0 + v6));

  return MEMORY[0x2821FE8E8](v0, v6 + 40, v3 | 7);
}

uint64_t sub_224AB0DE4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_224AB0E24()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AB0E6C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AB0EBC()
{

  return MEMORY[0x2821FE8E8](v0, 26, 7);
}

uint64_t sub_224AB0EF4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AB0F50(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_224DAE0D8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = sub_224DAE178();
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[7];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_224AB1088(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_224DAE0D8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
  }

  else
  {
    v13 = sub_224DAE178();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_224AB11B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_224DAE0D8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_224AB12E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_224DAE0D8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_224AB141C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AB148C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_224AB14D0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AB1508()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224AB1548()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224AB1580(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A18, &qword_224DB9070);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_224AB15F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A18, &qword_224DB9070);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_224AB1678()
{
  v1 = sub_224DA9878();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AB174C()
{
  v1 = sub_224DA9908();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_224DA9878();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v15 = v3 | v8;
  v11 = (v10 + v8 + v9) & ~v8;
  v12 = (v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  v13 = *(v7 + 8);
  v13(v0 + v9, v6);
  v13(v0 + v11, v6);

  return MEMORY[0x2821FE8E8](v0, v12 + 24, v15 | 7);
}

uint64_t sub_224AB18F8()
{
  v1 = sub_224DA9878();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_224DA9908();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v10 + v7 + 24) & ~v10;
  v14 = v3 | v10;
  v15 = *(v9 + 64);

  v12 = *(v2 + 8);
  v12(v0 + v4, v1);
  v12(v0 + v6, v1);

  (*(v9 + 8))(v0 + v11, v8);

  return MEMORY[0x2821FE8E8](v0, v11 + v15, v14 | 7);
}

uint64_t sub_224AB1A98()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_224AB1AE0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224AB1B18()
{
  v1 = sub_224DAAE38();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AB1BE4()
{
  v1 = sub_224DAAE38();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 41) & ~v3;
  v5 = *(v2 + 64);

  sub_224B92BE0(*(v0 + 32), *(v0 + 40));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224AB1CC4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224AB1CFC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

_OWORD *sub_224AB1DE0(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

id CHDSerializeNSUserActivity(void *a1, void *a2)
{
  v3 = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  [v3 setNeedsSave:0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __CHDSerializeNSUserActivity_block_invoke;
  v6[3] = &unk_27853F098;
  v6[4] = &v13;
  v6[5] = &v7;
  [v3 _createUserActivityDataWithOptions:0 completionHandler:v6];
  if (a2)
  {
    *a2 = v8[5];
  }

  v4 = v14[5];
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);

  return v4;
}

void sub_224AB229C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __CHDSerializeNSUserActivity_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void CHDRegisterForTemporaryFolder()
{
  v7 = *MEMORY[0x277D85DE8];
  _set_user_dir_suffix();
  v0 = NSTemporaryDirectory();
  v1 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = 0;
  v2 = [v1 removeItemAtPath:v0 error:&v4];
  v3 = v4;

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v6 = v0;
      _os_log_impl(&dword_224A2F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Successfully cleared temporary directory (%@) contents on startup.", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    CHDRegisterForTemporaryFolder_cold_1(v3);
  }
}

void CHDJetsamSetElevatedInactivePriority(int a1)
{
  getpid();
  v1 = memorystatus_control();
  if (v1)
  {
    v2 = v1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      CHDJetsamSetElevatedInactivePriority_cold_1(v2);
    }
  }
}

void ProactiveSuggestionClientModelLibrary()
{
  v3 = *MEMORY[0x277D85DE8];
  v0[0] = 0;
  if (!ProactiveSuggestionClientModelLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x277D85DD0];
    v0[2] = 3221225472;
    v0[3] = __ProactiveSuggestionClientModelLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_27853F0D8;
    v2 = 0;
    ProactiveSuggestionClientModelLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ProactiveSuggestionClientModelLibraryCore_frameworkLibrary)
  {
    ProactiveSuggestionClientModelLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

void __CHDForwardEntriesToProactive_block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277D86220];
  v5 = *(a1 + 32);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    v6 = 138412290;
    v7 = v3;
    _os_signpost_emit_with_name_impl(&dword_224A2F000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_END, v5, "ProactiveReporting", "Reporting Timeline finished. <error?>=%@", &v6, 0xCu);
  }
}

uint64_t __ProactiveSuggestionClientModelLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ProactiveSuggestionClientModelLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getATXInfoTimelineEntryRelevanceClass_block_invoke(uint64_t a1)
{
  ProactiveSuggestionClientModelLibrary();
  result = objc_getClass("ATXInfoTimelineEntryRelevance");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getATXInfoTimelineEntryRelevanceClass_block_invoke_cold_1();
  }

  getATXInfoTimelineEntryRelevanceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getATXInfoTimelineEntryClass_block_invoke(uint64_t a1)
{
  ProactiveSuggestionClientModelLibrary();
  result = objc_getClass("ATXInfoTimelineEntry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getATXInfoTimelineEntryClass_block_invoke_cold_1();
  }

  getATXInfoTimelineEntryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getATXInfoTimelineDonationClientClass_block_invoke(uint64_t a1)
{
  ProactiveSuggestionClientModelLibrary();
  result = objc_getClass("ATXInfoTimelineDonationClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getATXInfoTimelineDonationClientClass_block_invoke_cold_1();
  }

  getATXInfoTimelineDonationClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_224AB2958()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_281364F10);
  __swift_project_value_buffer(v0, qword_281364F10);
  return sub_224DAB238();
}

uint64_t sub_224AB29D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  __swift_allocate_value_buffer(v2, qword_27D6F7180);
  __swift_project_value_buffer(v2, qword_27D6F7180);
  sub_224DA9FF8();
  return sub_224DAA228();
}

uint64_t sub_224AB2AC0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

void sub_224AB2B00(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_224DAA428();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v42 - v17;
  sub_224DAC288();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_224AB4294(v13);
    return;
  }

  v46 = v15;
  (*(v15 + 32))(v18, v13, v14);
  v19 = v18;
  v20 = v2[5];
  v21 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v20);
  v22 = *(v21 + 16);
  v45 = v19;
  v23 = v22(v19, v20, v21);
  if (v23)
  {
    v24 = sub_224A7B208(v23);

    v47 = a2;
    MEMORY[0x28223BE20](v25, v26);
    *(&v42 - 2) = &v47;

    v27 = sub_224B449EC(sub_224AB42FC, (&v42 - 4), v24);

    if (v27)
    {
      (*(v46 + 8))(v45, v14);

      return;
    }

    v44 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_224DB2780;
    *(inited + 32) = a2;
    v47 = v24;
    v31 = a2;
    sub_224B42630(inited);
  }

  else
  {
    v44 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_224DB2780;
    *(v28 + 32) = a2;
    v29 = a2;
  }

  v32 = objc_allocWithZone(MEMORY[0x277CFA290]);
  sub_224DAF5D8();
  v33 = sub_224DAEFF8();

  v34 = [v32 initWithControlItems_];

  v35 = [objc_opt_self() allPredicate];
  [v34 setReplicationPredicate_];

  [v34 setExpirationTimeout_];
  (*(v6 + 104))(v9, *MEMORY[0x277CFA040], v5);
  v37 = v3[5];
  v36 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v37);
  v47 = v34;
  v38 = *(v36 + 8);
  v43 = v5;
  v39 = *(v38 + 56);
  v40 = v34;
  v41 = v45;
  v39(&v47, v9, v45, v37, v38);

  (*(v6 + 8))(v9, v43);
  (*(v46 + 8))(v41, v44);
}

void sub_224AB2FC8(char *a1)
{
  v2 = v1;
  v4 = sub_224DAA428();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v35 - v16;
  sub_224DAC288();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_224AB4294(v12);
    return;
  }

  v35 = v8;
  v36 = v4;
  (*(v14 + 32))(v17, v12, v13);
  v18 = v1[5];
  v19 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v18);
  v20 = (*(v19 + 16))(v17, v18, v19);
  if (!v20)
  {
    v24 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_5;
    }

LABEL_9:
    v25 = sub_224DAF838();
    goto LABEL_6;
  }

  v21 = sub_224A7B208(v20);

  MEMORY[0x28223BE20](v22, v23);
  *(&v35 - 2) = a1;
  v24 = sub_224A4ECE8(sub_224AB43B8, (&v35 - 4), v21);
  if (v24 >> 62)
  {
    goto LABEL_9;
  }

LABEL_5:
  v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v26 = v36;
  if (v25 < 1)
  {

    v29 = 0;
  }

  else
  {
    v27 = objc_allocWithZone(MEMORY[0x277CFA1F0]);
    sub_224DAF5D8();
    v28 = sub_224DAEFF8();

    v29 = [v27 initWithControlItems_];
  }

  v30 = v35;
  (*(v5 + 104))(v35, *MEMORY[0x277CFA038], v26);
  v31 = v2[5];
  v32 = v2;
  v33 = v26;
  v34 = v32[6];
  __swift_project_boxed_opaque_existential_1(v32 + 2, v31);
  v37 = v29;
  (*(*(v34 + 8) + 56))(&v37, v30, v17, v31);
  (*(v5 + 8))(v30, v33);
  (*(v14 + 8))(v17, v13);
}

BOOL sub_224AB33A0(id *a1)
{
  v1 = [*a1 controlIdentity];
  v2 = sub_224DAC2A8();
  sub_224AB43D8();
  v3 = sub_224DAF6A8();

  return (v3 & 1) == 0;
}

uint64_t sub_224AB3420(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(v4 + 16))(a1, v3, v4);
}

uint64_t sub_224AB3480(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(v4 + 24))(a1, v3, v4);
}

uint64_t sub_224AB34E0(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(v4 + 32))(a1, v3, v4) & 1;
}

uint64_t sub_224AB3554(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(*(v4 + 8) + 32))(a1, v3);
}

uint64_t sub_224AB35B4(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(*(v4 + 8) + 40))(a1, v3);
}

uint64_t sub_224AB3614(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(*(v4 + 8) + 48))(a1, v3);
}

uint64_t sub_224AB3674(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  v10 = v6;
  return (*(*(v8 + 8) + 56))(&v10, a2, a3, v7);
}

uint64_t sub_224AB36F8(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 48);
  __swift_project_boxed_opaque_existential_1((*v2 + 16), v5);
  return (*(*(v6 + 8) + 64))(a1, a2, v5);
}

uint64_t sub_224AB3768(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(*(v4 + 8) + 72))(a1, v3);
}

uint64_t sub_224AB37C8(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 48);
  __swift_project_boxed_opaque_existential_1((*v2 + 16), v5);
  return (*(*(v6 + 8) + 80))(a1, a2, v5);
}

uint64_t sub_224AB392C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_224AB394C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_224AB39C4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_224DAA668();
}

BOOL sub_224AB3A38(void *a1, uint64_t *a2)
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

uint64_t sub_224AB3A68(uint64_t a1, id *a2)
{
  result = sub_224DAEDF8();
  *a2 = 0;
  return result;
}

uint64_t sub_224AB3AE0(uint64_t a1, id *a2)
{
  v3 = sub_224DAEE08();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_224AB3B60@<X0>(uint64_t *a2@<X8>)
{
  sub_224DAEE18();
  v3 = sub_224DAEDE8();

  *a2 = v3;
  return result;
}

uint64_t sub_224AB3BA4()
{
  v0 = sub_224DAEE18();
  v1 = MEMORY[0x22AA5D270](v0);

  return v1;
}

uint64_t sub_224AB3BE0(uint64_t a1)
{
  sub_224DAEE18();
  sub_224DAEE78();
}

uint64_t sub_224AB3C34(uint64_t a1)
{
  sub_224DAEE18();
  sub_224DAFE68();
  sub_224DAEE78();
  v1 = sub_224DAFEA8();

  return v1;
}

BOOL sub_224AB3CC4(_DWORD *a1, int *a2)
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

_DWORD *sub_224AB3D30@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_224AB3D40(void *a1, uint64_t *a2)
{
  v2 = sub_224DAEE18();
  v4 = v3;
  if (v2 == sub_224DAEE18() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_224DAFD88();
  }

  return v7 & 1;
}

uint64_t sub_224AB3E20(uint64_t a1, uint64_t a2)
{
  result = sub_224AB3E78(qword_281352A68, a2, type metadata accessor for PreviewControlConfigurationService, &unk_224DB29FC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_224AB3E78(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_224AB3EC0(uint64_t a1, uint64_t a2)
{
  result = sub_224AB3E78(&qword_281352A40, a2, type metadata accessor for PreviewControlConfigurationService, &unk_224DB2A2C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_224AB3F18(uint64_t a1, uint64_t a2)
{
  result = sub_224AB3E78(&unk_281352A58, a2, type metadata accessor for PreviewControlConfigurationService, &unk_224DB2A48);
  *(a1 + 8) = result;
  return result;
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

uint64_t sub_224AB405C(uint64_t a1, uint64_t a2)
{
  sub_224DAFE68();
  swift_getWitnessTable();
  sub_224DAA678();
  return sub_224DAFEA8();
}

uint64_t sub_224AB40C4(uint64_t a1)
{
  v2 = sub_224AB3E78(&qword_281350A08, 255, type metadata accessor for FileAttributeKey, &unk_224DB3068);
  v3 = sub_224AB3E78(&qword_27D6F31A0, 255, type metadata accessor for FileAttributeKey, &unk_224DB2ED4);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_224AB4188@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_224DAEDE8();

  *a2 = v3;
  return result;
}

uint64_t sub_224AB41D0(uint64_t a1)
{
  v2 = sub_224AB3E78(&qword_27D6F31A8, 255, type metadata accessor for URLResourceKey, &unk_224DB2D74);
  v3 = sub_224AB3E78(&unk_27D6F31B0, 255, type metadata accessor for URLResourceKey, &unk_224DB2D14);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_224AB4294(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_224AB43D8()
{
  result = qword_281350A50;
  if (!qword_281350A50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281350A50);
  }

  return result;
}

void sub_224AB44D8(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_224AB4824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_224AB4BC8();
  result = sub_224DAF6F8();
  *a4 = result;
  return result;
}

uint64_t sub_224AB48B8()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_281364F58);
  __swift_project_value_buffer(v0, qword_281364F58);
  return sub_224DAB238();
}

uint64_t sub_224AB49D0(uint64_t a1, uint64_t *a2, void *a3, id *a4, uint64_t a5)
{
  v8 = sub_224DAB258();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  return sub_224DAB268();
}

uint64_t sub_224AB4B00()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_281364F88);
  __swift_project_value_buffer(v0, qword_281364F88);
  return sub_224DAB238();
}

unint64_t sub_224AB4BC8()
{
  result = qword_2813507C8;
  if (!qword_2813507C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813507C8);
  }

  return result;
}

uint64_t sub_224AB4C84(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_224DAB258();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_224DAB238();
}

uint64_t sub_224AB4CFC()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_281364F28);
  __swift_project_value_buffer(v0, qword_281364F28);
  return sub_224DAB238();
}

uint64_t sub_224AB4D7C()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_281364EB0);
  __swift_project_value_buffer(v0, qword_281364EB0);
  return sub_224DAB238();
}

uint64_t sub_224AB4E00()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_281364EC8);
  __swift_project_value_buffer(v0, qword_281364EC8);
  return sub_224DAB238();
}

uint64_t sub_224AB4E80()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_281364E80);
  __swift_project_value_buffer(v0, qword_281364E80);
  return sub_224DAB238();
}

uint64_t sub_224AB4F00()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_281364E98);
  __swift_project_value_buffer(v0, qword_281364E98);
  return sub_224DAB238();
}

uint64_t sub_224AB4FBC()
{
  v1 = *v0;
  sub_224DAFE68();
  MEMORY[0x22AA5E1E0](v1);
  return sub_224DAFEA8();
}

uint64_t sub_224AB5004(uint64_t a1)
{
  v2 = *v1;
  sub_224DAFE68();
  MEMORY[0x22AA5E1E0](v2);
  return sub_224DAFEA8();
}

uint64_t sub_224AB5048()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32D8, &qword_224DC1AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB30F0;
  *(inited + 32) = sub_224DAEE18();
  *(inited + 40) = v1;
  *(inited + 48) = 0xD000000000000026;
  *(inited + 56) = 0x8000000224DC4F30;
  *(inited + 64) = sub_224DAEE18();
  *(inited + 72) = v2;
  *(inited + 80) = 0xD00000000000002ALL;
  *(inited + 88) = 0x8000000224DC4F60;
  v3 = sub_224D9FE14(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32E0, &unk_224DB65F0);
  result = swift_arrayDestroy();
  off_27D6F3280 = v3;
  return result;
}

uint64_t sub_224AB5144()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_224DB30F0;
  *(v0 + 32) = sub_224DAEE18();
  *(v0 + 40) = v1;
  result = sub_224DAEE18();
  *(v0 + 48) = result;
  *(v0 + 56) = v3;
  qword_27D6F3288 = v0;
  return result;
}

void sub_224AB51C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DAB8C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = v2[5];
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v10 = v9;
  LOBYTE(v9) = sub_224DAB8F8();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v11 = v2[41];

  v12 = sub_224CBD748(a1, v11);

  if ((v12 & 1) == 0)
  {
    v13 = v2[17];
    v14 = v2[18];
    __swift_project_boxed_opaque_existential_1(v2 + 14, v13);
    v15 = (*(v14 + 16))(v13, v14);
    v16 = v15 + 56;
    v17 = 1 << *(v15 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v15 + 56);
    swift_beginAccess();
    v20 = 0;
    v21 = (v17 + 63) >> 6;
    v31 = v15;
    while (v19)
    {
      v22 = v19;
LABEL_13:
      v19 = (v22 - 1) & v22;
      v24 = v2[8];
      if (*(v24 + 16))
      {
        v25 = *(v15 + 48) + ((v20 << 10) | (16 * __clz(__rbit64(v22))));
        v27 = *v25;
        v26 = *(v25 + 8);

        v28 = sub_224A3A40C(v27, v26);
        if (v29)
        {
          v30 = *(*(v24 + 56) + 16 * v28);
          swift_unknownObjectRetain();

          sub_224AB5474(v27, v26, v30);

          v15 = v31;
          swift_unknownObjectRelease();
        }

        else
        {
        }
      }
    }

    while (1)
    {
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v23 >= v21)
      {

        return;
      }

      v22 = *(v16 + 8 * v23);
      ++v20;
      if (v22)
      {
        v20 = v23;
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_19;
  }
}

uint64_t sub_224AB5474(void (**a1)(_BYTE *, uint64_t), uint64_t a2, uint64_t a3)
{
  v70[1] = a3;
  v6 = sub_224DAE178();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v72 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v71 = v70 - v13;
  MEMORY[0x28223BE20](v12, v14);
  v16 = v70 - v15;
  v17 = sub_224DAB8C8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = (v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v3 + 40);
  *v21 = v22;
  (*(v18 + 104))(v21, *MEMORY[0x277D85200], v17);
  v23 = v22;
  LOBYTE(v22) = sub_224DAB8F8();
  v25 = *(v18 + 8);
  v24 = v18 + 8;
  v25(v21, v17);
  if ((v22 & 1) == 0)
  {
    __break(1u);
LABEL_32:
    swift_once();
    goto LABEL_21;
  }

  v26 = sub_224ABD130(a1, a2);
  v27 = *(v3 + 320);
  if (v27)
  {

    v28 = sub_224CBD15C(v26, v27);

    if (v28)
    {
      swift_bridgeObjectRelease_n();
      return 0;
    }
  }

  else
  {
  }

  *(v3 + 320) = v26;

  v30 = *(v7 + 104);
  v30(v16, *MEMORY[0x277CF9EC0], v6);
  if (*(v26 + 16) && (sub_224B0B2F8(v16), (v31 & 1) != 0))
  {

    v24 = sub_224ABE690(v32);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  v33 = *(v7 + 8);
  v33(v16, v6);
  v34 = v71;
  v30(v71, *MEMORY[0x277CF9EC8], v6);
  if (*(v26 + 16))
  {
    sub_224B0B2F8(v34);
    if (v35)
    {

      v16 = sub_224ABE690(v36);
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
    }

    v34 = v71;
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v33(v34, v6);
  v37 = v72;
  v30(v72, *MEMORY[0x277CF9ED0], v6);
  if (*(v26 + 16) && (v38 = sub_224B0B2F8(v37), v37 = v72, (v39 & 1) != 0))
  {
    v40 = *(*(v26 + 56) + 8 * v38);

    a1 = sub_224ABE690(v40);
    v37 = v72;
  }

  else
  {

    a1 = MEMORY[0x277D84F90];
  }

  v33(v37, v6);
  v41 = off_283832840[0];
  type metadata accessor for APSPushConnection();
  v41(v16, MEMORY[0x277D84F90], v24, a1);
  if (qword_27D6F2CF0 != -1)
  {
    goto LABEL_32;
  }

LABEL_21:
  v42 = sub_224DAB258();
  __swift_project_value_buffer(v42, qword_27D6F71E0);

  v43 = sub_224DAB228();
  v44 = sub_224DAF268();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = v24;
    v47 = swift_slowAlloc();
    v73 = v47;
    *v45 = 136380675;
    v48 = MEMORY[0x22AA5D380](v16, MEMORY[0x277D837D0]);
    v50 = v49;

    v51 = sub_224A33F74(v48, v50, &v73);

    *(v45 + 4) = v51;
    _os_log_impl(&dword_224A2F000, v43, v44, "Normal topics: %{private}s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v47);
    v52 = v47;
    v24 = v46;
    MEMORY[0x22AA5EED0](v52, -1, -1);
    MEMORY[0x22AA5EED0](v45, -1, -1);
  }

  else
  {
  }

  v53 = sub_224DAB228();
  v54 = sub_224DAF268();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = v24;
    v57 = swift_slowAlloc();
    v73 = v57;
    *v55 = 136380675;
    v58 = MEMORY[0x22AA5D380](v56, MEMORY[0x277D837D0]);
    v60 = v59;

    v61 = sub_224A33F74(v58, v60, &v73);

    *(v55 + 4) = v61;
    _os_log_impl(&dword_224A2F000, v53, v54, "Opportunistic topics: %{private}s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v57);
    MEMORY[0x22AA5EED0](v57, -1, -1);
    MEMORY[0x22AA5EED0](v55, -1, -1);
  }

  else
  {
  }

  v62 = sub_224DAB228();
  v63 = sub_224DAF268();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v73 = v65;
    *v64 = 136380675;
    v66 = MEMORY[0x22AA5D380](a1, MEMORY[0x277D837D0]);
    v68 = v67;

    v69 = sub_224A33F74(v66, v68, &v73);

    *(v64 + 4) = v69;
    _os_log_impl(&dword_224A2F000, v62, v63, "Non-waking topics: %{private}s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v65);
    MEMORY[0x22AA5EED0](v65, -1, -1);
    MEMORY[0x22AA5EED0](v64, -1, -1);
  }

  else
  {
  }

  return 1;
}

uint64_t sub_224AB5C14()
{
  if (*(v0 + 312))
  {

    sub_224DAB328();
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  __swift_destroy_boxed_opaque_existential_1((v0 + 152));
  __swift_destroy_boxed_opaque_existential_1((v0 + 192));
  __swift_destroy_boxed_opaque_existential_1((v0 + 232));
  sub_224A3311C(v0 + 272, &qword_27D6F32C0, &qword_224DB3220);

  return v0;
}

uint64_t sub_224AB5CE4()
{
  sub_224AB5C14();

  return swift_deallocClassInstance();
}

double sub_224AB5D3C(uint64_t a1)
{
  sub_224AB5E58();
  sub_224DA9E78();
  sub_224DA9E68();
  sub_224DA9E28();

  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4730, &unk_224DBAF00);
  sub_224A33088(&qword_281351010, &unk_27D6F4730, &unk_224DBAF00, MEMORY[0x277CBCD90]);
  v2 = sub_224DAB488();

  *(a1 + 312) = v2;

  return result;
}

void sub_224AB5E58()
{
  v1 = v0;
  v2 = sub_224DAB8C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v1[5];
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  LOBYTE(v7) = sub_224DAB8F8();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v9 = v1[17];
    v10 = v1[18];
    __swift_project_boxed_opaque_existential_1(v1 + 14, v9);
    v11 = (*(v10 + 16))(v9, v10);
    v13 = v11;
    v14 = 0;
    v15 = v11 + 56;
    v16 = 1 << *(v11 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v11 + 56);
    v19 = (v16 + 63) >> 6;
    *&v12 = 136446210;
    v26 = v12;
    v27 = v11;
    v28 = v1;
    if (v18)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v20 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v20 >= v19)
      {

        return;
      }

      v18 = *(v15 + 8 * v20);
      ++v14;
      if (v18)
      {
        while (1)
        {
          v21 = __clz(__rbit64(v18));
          v18 &= v18 - 1;
          v22 = *(v13 + 48) + ((v20 << 10) | (16 * v21));
          v23 = *v22;
          v24 = *(v22 + 8);

          sub_224ABC050(v23, v24, 1);
          sub_224AB5474(v23, v24, v25);
          swift_unknownObjectRelease();

          v14 = v20;
          if (!v18)
          {
            break;
          }

LABEL_11:
          v20 = v14;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
}

double sub_224AB61F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_224DAB7B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAB848();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = *(Strong + 40);
    aBlock[4] = sub_224AC2358;
    aBlock[5] = Strong;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    aBlock[3] = &block_descriptor_66;
    v17 = Strong;
    v14 = _Block_copy(aBlock);

    sub_224DAB7E8();
    v19 = MEMORY[0x277D84F90];
    sub_224AC22E8(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    v16 = v7;
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v11, v6, v14);
    _Block_release(v14);
    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v16);
  }

  return result;
}

uint64_t sub_224AB64E0(uint64_t a1)
{
  v2 = sub_224DAEE18();
  v4 = v3;
  swift_beginAccess();
  v5 = *(a1 + 64);
  if (*(v5 + 16))
  {

    v6 = sub_224A3A40C(v2, v4);
    v8 = v7;

    if (v8)
    {
      v9 = *(*(v5 + 56) + 16 * v6);
      swift_unknownObjectRetain();

      v10 = sub_224DAEE18();
      sub_224AB5474(v10, v11, v9);
      swift_unknownObjectRelease();
    }
  }
}

double sub_224AB65D4(uint64_t a1, int a2)
{
  v21 = a2;
  v4 = sub_224DAB7B8();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_224DAB848();
  v23 = *(v8 - 8);
  v24 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_224DAC5E8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v22 = *(v2 + 40);
  (*(v13 + 16))(&v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v12);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  (*(v13 + 32))(v17 + v16, &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], v12);
  *(v17 + v16 + v14) = v21;
  aBlock[4] = sub_224AC2264;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_62;
  v18 = _Block_copy(aBlock);

  sub_224DAB7E8();
  v26 = MEMORY[0x277D84F90];
  sub_224AC22E8(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v11, v7, v18);
  _Block_release(v18);
  (*(v25 + 8))(v7, v4);
  (*(v23 + 8))(v11, v24);

  return result;
}

uint64_t sub_224AB6978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = sub_224DAC5E8();
  MEMORY[0x28223BE20](v5, v6);
  return sub_224AB6BD8(a2, v3);
}

uint64_t sub_224AB6BD8(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v159) = a2;
  v147 = sub_224DAC4A8();
  v144 = *(v147 - 8);
  MEMORY[0x28223BE20](v147, v5);
  v143 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAC4D8();
  v145 = *(v7 - 8);
  v146 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v151 = &v137 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_224DAC4F8();
  v139 = *(v142 - 8);
  MEMORY[0x28223BE20](v142, v10);
  v138 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_224DAC528();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141, v12);
  v150 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_224DAC538();
  MEMORY[0x28223BE20](v148, v14);
  v149 = &v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_224DAC5E8();
  v163 = *(v161 - 8);
  v17 = MEMORY[0x28223BE20](v161, v16);
  v19 = &v137 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v153 = &v137 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v154 = &v137 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v156 = &v137 - v28;
  MEMORY[0x28223BE20](v27, v29);
  v152 = &v137 - v30;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32F8, &qword_224DB3230);
  MEMORY[0x28223BE20](v157, v31);
  v33 = &v137 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BB0, &unk_224DB8CF0);
  v36 = MEMORY[0x28223BE20](v34 - 8, v35);
  v155 = &v137 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36, v38);
  v41 = &v137 - v40;
  MEMORY[0x28223BE20](v39, v42);
  v162 = &v137 - v43;
  v44 = sub_224DAB8C8();
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v46);
  v48 = (&v137 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = v3[5];
  *v48 = v49;
  (*(v45 + 104))(v48, *MEMORY[0x277D85200], v44);
  v50 = v49;
  LOBYTE(v49) = sub_224DAB8F8();
  (*(v45 + 8))(v48, v44);
  if ((v49 & 1) == 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  if ((sub_224ABC724() & 1) == 0)
  {
    if (qword_27D6F2CF0 == -1)
    {
LABEL_10:
      v66 = sub_224DAB258();
      __swift_project_value_buffer(v66, qword_27D6F71E0);
      v67 = v163;
      v68 = v161;
      (*(v163 + 16))(v19, a1, v161);
      v69 = sub_224DAB228();
      v70 = sub_224DAF288();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v164 = v72;
        *v71 = 136446210;
        v73 = sub_224DAC588();
        v75 = v74;
        (*(v67 + 8))(v19, v68);
        v76 = sub_224A33F74(v73, v75, &v164);

        *(v71 + 4) = v76;
        _os_log_impl(&dword_224A2F000, v69, v70, "Subscription is invalid: %{public}s", v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v72);
        MEMORY[0x22AA5EED0](v72, -1, -1);
        MEMORY[0x22AA5EED0](v71, -1, -1);
      }

      else
      {

        (*(v67 + 8))(v19, v68);
      }

      sub_224AC1F7C();
      swift_allocError();
      *v82 = 1;
      return swift_willThrow();
    }

LABEL_43:
    swift_once();
    goto LABEL_10;
  }

  v51 = v3[17];
  v52 = v3[18];
  v137 = v3;
  __swift_project_boxed_opaque_existential_1(v3 + 14, v51);
  v160 = a1;
  v53 = sub_224DAC588();
  (*(v52 + 48))(v53);

  if ((v159 & 1) == 0 && (*(v163 + 48))(v162, 1, v161) == 1)
  {
    if (qword_27D6F2CF0 != -1)
    {
      swift_once();
    }

    v54 = sub_224DAB258();
    __swift_project_value_buffer(v54, qword_27D6F71E0);
    v55 = v163;
    v56 = v153;
    v57 = v161;
    (*(v163 + 16))(v153, v160, v161);
    v58 = sub_224DAB228();
    v59 = sub_224DAF288();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v164 = v61;
      *v60 = 136446210;
      v62 = sub_224DAC588();
      v64 = v63;
      (*(v55 + 8))(v56, v57);
      v65 = sub_224A33F74(v62, v64, &v164);

      *(v60 + 4) = v65;
      _os_log_impl(&dword_224A2F000, v58, v59, "Cannot update subscription for subscription %{public}s as no subscription exists", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x22AA5EED0](v61, -1, -1);
      MEMORY[0x22AA5EED0](v60, -1, -1);
    }

    else
    {

      (*(v55 + 8))(v56, v57);
    }

    sub_224AC1F7C();
    swift_allocError();
    *v131 = 1;
    swift_willThrow();
    return sub_224A3311C(v162, &qword_27D6F3BB0, &unk_224DB8CF0);
  }

  v77 = v163;
  v78 = *(v163 + 16);
  v79 = v161;
  v78(v41, v160, v161);
  (*(v77 + 56))(v41, 0, 1, v79);
  v80 = *(v157 + 48);
  sub_224A3796C(v162, v33, &qword_27D6F3BB0, &unk_224DB8CF0);
  sub_224A3796C(v41, &v33[v80], &qword_27D6F3BB0, &unk_224DB8CF0);
  v81 = *(v77 + 48);
  if (v81(v33, 1, v79) == 1)
  {
    sub_224A3311C(v41, &qword_27D6F3BB0, &unk_224DB8CF0);
    if (v81(&v33[v80], 1, v79) == 1)
    {
      sub_224A3311C(v33, &qword_27D6F3BB0, &unk_224DB8CF0);
LABEL_28:
      if (qword_27D6F2CF0 != -1)
      {
        swift_once();
      }

      v110 = sub_224DAB258();
      __swift_project_value_buffer(v110, qword_27D6F71E0);
      v111 = v154;
      v78(v154, v160, v79);
      v112 = sub_224DAB228();
      v113 = v79;
      v114 = sub_224DAF2A8();
      v115 = os_log_type_enabled(v112, v114);
      v116 = v163;
      if (v115)
      {
        v117 = v111;
        v118 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v164 = v119;
        *v118 = 136446210;
        v120 = sub_224DAC588();
        v122 = v121;
        (*(v116 + 8))(v117, v113);
        v123 = sub_224A33F74(v120, v122, &v164);

        *(v118 + 4) = v123;
        _os_log_impl(&dword_224A2F000, v112, v114, "Subscription has not changed: %{public}s", v118, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v119);
        MEMORY[0x22AA5EED0](v119, -1, -1);
        MEMORY[0x22AA5EED0](v118, -1, -1);
      }

      else
      {

        (*(v116 + 8))(v111, v113);
      }

      return sub_224A3311C(v162, &qword_27D6F3BB0, &unk_224DB8CF0);
    }
  }

  else
  {
    v84 = v155;
    sub_224A3796C(v33, v155, &qword_27D6F3BB0, &unk_224DB8CF0);
    if (v81(&v33[v80], 1, v79) != 1)
    {
      v159 = v78;
      v106 = v163;
      v107 = &v33[v80];
      v108 = v152;
      (*(v163 + 32))(v152, v107, v79);
      sub_224AC22E8(&qword_27D6F3300, MEMORY[0x277CF9A78], MEMORY[0x277CF9A80]);
      LODWORD(v157) = sub_224DAEDD8();
      v109 = *(v106 + 8);
      v109(v108, v79);
      sub_224A3311C(v41, &qword_27D6F3BB0, &unk_224DB8CF0);
      v109(v84, v79);
      v78 = v159;
      sub_224A3311C(v33, &qword_27D6F3BB0, &unk_224DB8CF0);
      if (v157)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    sub_224A3311C(v41, &qword_27D6F3BB0, &unk_224DB8CF0);
    (*(v163 + 8))(v84, v79);
  }

  sub_224A3311C(v33, &qword_27D6F32F8, &qword_224DB3230);
LABEL_20:
  if (qword_27D6F2CF0 != -1)
  {
    swift_once();
  }

  v85 = sub_224DAB258();
  __swift_project_value_buffer(v85, qword_27D6F71E0);
  v86 = v156;
  v78(v156, v160, v79);
  v87 = sub_224DAB228();
  v88 = v79;
  v89 = sub_224DAF2A8();
  v90 = os_log_type_enabled(v87, v89);
  v91 = v163;
  if (v90)
  {
    v92 = v86;
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v164 = v94;
    *v93 = 136446210;
    v95 = sub_224DAC588();
    v97 = v96;
    (*(v91 + 8))(v92, v88);
    v98 = sub_224A33F74(v95, v97, &v164);

    *(v93 + 4) = v98;
    _os_log_impl(&dword_224A2F000, v87, v89, "Creating new subscription to subscription: %{public}s", v93, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v94);
    MEMORY[0x22AA5EED0](v94, -1, -1);
    MEMORY[0x22AA5EED0](v93, -1, -1);
  }

  else
  {

    (*(v91 + 8))(v86, v88);
  }

  v99 = v158;
  v100 = v137[17];
  v101 = v137[18];
  __swift_project_boxed_opaque_existential_1(v137 + 14, v100);
  (*(v101 + 32))(v160, v100, v101);
  v102 = sub_224DAC548();
  v104 = v103;
  sub_224ABC050(v102, v103, 1);
  if (v99)
  {

    return sub_224A3311C(v162, &qword_27D6F3BB0, &unk_224DB8CF0);
  }

  v124 = v105;
  sub_224AB5474(v102, v104, v105);
  v125 = v149;
  sub_224DAC558();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v126 = v145;
    v127 = v146;
    (*(v145 + 32))(v151, v125, v146);
    v128 = v143;
    sub_224DAC498();
    v129 = v144;
    v130 = v147;
    if ((*(v144 + 88))(v128, v147) == *MEMORY[0x277CF9A50])
    {

      (*(v129 + 8))(v128, v130);
      sub_224ABCA10(v160, v124);
      (*(v126 + 8))(v151, v127);
LABEL_40:
      swift_unknownObjectRelease();
      return sub_224A3311C(v162, &qword_27D6F3BB0, &unk_224DB8CF0);
    }
  }

  else
  {
    v132 = v140;
    v133 = v141;
    (*(v140 + 32))(v150, v125, v141);
    v134 = v138;
    sub_224DAC4E8();
    v135 = v139;
    v136 = v142;
    if ((*(v139 + 88))(v134, v142) == *MEMORY[0x277CF9A60])
    {

      (*(v135 + 8))(v134, v136);
      sub_224ABCA10(v160, v124);
      (*(v132 + 8))(v150, v133);
      goto LABEL_40;
    }
  }

  result = sub_224DAFD78();
  __break(1u);
  return result;
}

double sub_224AB7D1C(uint64_t a1)
{
  v3 = sub_224DAB7B8();
  v22 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAB848();
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAC5E8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v19[1] = *(v1 + 40);
  (*(v12 + 16))(v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v15 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  (*(v12 + 32))(v16 + v15, v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  aBlock[4] = sub_224AC2200;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_56;
  v17 = _Block_copy(aBlock);

  sub_224DAB7E8();
  v23 = MEMORY[0x277D84F90];
  sub_224AC22E8(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v10, v6, v17);
  _Block_release(v17);
  (*(v22 + 8))(v6, v3);
  (*(v20 + 8))(v10, v21);

  return result;
}

uint64_t sub_224AB80B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_224DAC5E8();
  MEMORY[0x28223BE20](v3, v4);
  return sub_224AB8304(a2);
}

uint64_t sub_224AB8304(uint64_t a1)
{
  v2 = v1;
  v134 = sub_224DAC4A8();
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134, v4);
  v132 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_224DAC4D8();
  v147 = *(v150 - 8);
  v7 = MEMORY[0x28223BE20](v150, v6);
  v138 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v145 = &v126 - v11;
  MEMORY[0x28223BE20](v10, v12);
  v140 = (&v126 - v13);
  v14 = sub_224DAC5E8();
  v141 = *(v14 - 8);
  v142 = v14;
  v16 = MEMORY[0x28223BE20](v14, v15);
  v136 = &v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v135 = &v126 - v19;
  v131 = sub_224DAC4F8();
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131, v20);
  v22 = &v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_224DAC528();
  v146 = *(v149 - 8);
  v24 = MEMORY[0x28223BE20](v149, v23);
  v137 = &v126 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v144 = &v126 - v28;
  MEMORY[0x28223BE20](v27, v29);
  v139 = (&v126 - v30);
  v148 = sub_224DAC538();
  v32 = MEMORY[0x28223BE20](v148, v31);
  v143 = &v126 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v126 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BB0, &unk_224DB8CF0);
  MEMORY[0x28223BE20](v37 - 8, v38);
  v40 = &v126 - v39;
  v41 = sub_224DAB8C8();
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v43);
  v45 = (&v126 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = v2[5];
  *v45 = v46;
  (*(v42 + 104))(v45, *MEMORY[0x277D85200], v41);
  v47 = v46;
  v48 = sub_224DAB8F8();
  (*(v42 + 8))(v45, v41);
  if ((v48 & 1) == 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  v49 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  v153 = a1;
  v50 = sub_224DAC588();
  a1 = v153;
  (*(v49 + 40))(v50);

  sub_224A3311C(v40, &qword_27D6F3BB0, &unk_224DB8CF0);
  v51 = sub_224DAC548();
  v40 = v52;
  v53 = v151;
  sub_224ABC050(v51, v52, 0);
  if (v53)
  {
  }

  v45 = v54;
  v126 = v55;
  v151 = v2;
  sub_224DAC558();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v129 = v45;
  v128 = 0;
  v127 = v51;
  if (EnumCaseMultiPayload != 1)
  {
    (*(v146 + 32))(v139, v36, v149);
    sub_224DAC4E8();
    v73 = v130;
    v74 = v131;
    if ((*(v130 + 88))(v22, v131) == *MEMORY[0x277CF9A60])
    {
      (*(v73 + 8))(v22, v74);
      v75 = v141;
      v76 = v142;
      v77 = v135;
      if (qword_27D6F2CF0 != -1)
      {
        swift_once();
      }

      v78 = sub_224DAB258();
      __swift_project_value_buffer(v78, qword_27D6F71E0);
      (*(v75 + 2))(v77, a1, v76);
      v79 = v77;
      v80 = sub_224DAB228();
      v81 = sub_224DAF268();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        v152[0] = v140;
        *v82 = 136380675;
        sub_224AC22E8(&qword_27D6F32F0, MEMORY[0x277CF9A78], MEMORY[0x277CF9A88]);
        v83 = sub_224DAFD28();
        v85 = v84;
        (*(v75 + 1))(v79, v76);
        v86 = sub_224A33F74(v83, v85, v152);

        *(v82 + 4) = v86;
        _os_log_impl(&dword_224A2F000, v80, v81, "Unsubscribing from token push: %{private}s", v82, 0xCu);
        v87 = v140;
        __swift_destroy_boxed_opaque_existential_1(v140);
        a1 = v153;
        MEMORY[0x22AA5EED0](v87, -1, -1);
        v88 = v82;
        v45 = v129;
        MEMORY[0x22AA5EED0](v88, -1, -1);
      }

      else
      {

        (*(v75 + 1))(v79, v76);
      }

      v90 = v150;
      sub_224ABE324(a1);
      (*(v146 + 8))(v139, v149);
      v89 = v147;
      goto LABEL_18;
    }

LABEL_36:
    result = sub_224DAFD78();
    __break(1u);
    return result;
  }

  (*(v147 + 32))(v140, v36, v150);
  v58 = v132;
  sub_224DAC498();
  v59 = v133;
  v60 = v134;
  if ((*(v133 + 88))(v58, v134) != *MEMORY[0x277CF9A50])
  {
    goto LABEL_36;
  }

  (*(v59 + 8))(v58, v60);
  v36 = v141;
  v22 = v142;
  v48 = v136;
  if (qword_27D6F2CF0 != -1)
  {
LABEL_35:
    swift_once();
  }

  v61 = sub_224DAB258();
  __swift_project_value_buffer(v61, qword_27D6F71E0);
  (*(v36 + 2))(v48, a1, v22);
  v62 = v48;
  v63 = v36;
  v64 = sub_224DAB228();
  v65 = sub_224DAF268();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v152[0] = v139;
    *v66 = 136380675;
    sub_224AC22E8(&qword_27D6F32F0, MEMORY[0x277CF9A78], MEMORY[0x277CF9A88]);
    v67 = sub_224DAFD28();
    v69 = v68;
    (*(v63 + 1))(v62, v22);
    v70 = sub_224A33F74(v67, v69, v152);

    *(v66 + 4) = v70;
    _os_log_impl(&dword_224A2F000, v64, v65, "Unsubscribing from token push: %{private}s", v66, 0xCu);
    v71 = v139;
    __swift_destroy_boxed_opaque_existential_1(v139);
    a1 = v153;
    MEMORY[0x22AA5EED0](v71, -1, -1);
    v72 = v66;
    v45 = v129;
    MEMORY[0x22AA5EED0](v72, -1, -1);
  }

  else
  {

    (*(v63 + 1))(v62, v22);
  }

  sub_224ABE324(a1);
  v89 = v147;
  v90 = v150;
  (*(v147 + 8))(v140, v150);
LABEL_18:
  v91 = v127;
  v92 = v151;
  sub_224AB5474(v127, v40, v45);
  v93 = v92[17];
  v94 = v92[18];
  __swift_project_boxed_opaque_existential_1(v92 + 14, v93);
  if ((*(v94 + 56))(v91, v40, v93, v94))
  {
  }

  else
  {
    swift_beginAccess();
    sub_224B07378(0, 0, v91, v40);
    swift_endAccess();
  }

  v95 = v145;
  v96 = v143;
  sub_224DAC558();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v89 + 32))(v95, v96, v90);
    if (qword_27D6F2CF0 != -1)
    {
      swift_once();
    }

    v97 = sub_224DAB258();
    __swift_project_value_buffer(v97, qword_27D6F71E0);
    v98 = v138;
    (*(v89 + 16))(v138, v95, v90);
    v99 = sub_224DAB228();
    v100 = sub_224DAF2A8();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v152[0] = v102;
      *v101 = 136446210;
      v103 = sub_224DAC4C8();
      v105 = v104;
      v106 = v98;
      v107 = *(v89 + 8);
      v107(v106, v150);
      v108 = sub_224A33F74(v103, v105, v152);
      v90 = v150;

      *(v101 + 4) = v108;
      _os_log_impl(&dword_224A2F000, v99, v100, "Unsubscribing from widget ID: %{public}s", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v102);
      v109 = v102;
      v95 = v145;
      MEMORY[0x22AA5EED0](v109, -1, -1);
      MEMORY[0x22AA5EED0](v101, -1, -1);
    }

    else
    {

      v125 = v98;
      v107 = *(v89 + 8);
      v107(v125, v90);
    }

    sub_224DAB348();
    swift_unknownObjectRelease();
    return (v107)(v95, v90);
  }

  else
  {
    v110 = v146;
    v111 = v144;
    v112 = v149;
    (*(v146 + 32))(v144, v96, v149);
    if (qword_27D6F2CF0 != -1)
    {
      swift_once();
    }

    v113 = sub_224DAB258();
    __swift_project_value_buffer(v113, qword_27D6F71E0);
    v114 = v137;
    (*(v110 + 16))(v137, v111, v112);
    v115 = sub_224DAB228();
    v116 = sub_224DAF2A8();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v118 = v114;
      v119 = swift_slowAlloc();
      v152[0] = v119;
      *v117 = 136446210;
      v120 = sub_224DAC518();
      v122 = v121;
      v123 = *(v110 + 8);
      v123(v118, v149);
      v124 = sub_224A33F74(v120, v122, v152);
      v112 = v149;

      *(v117 + 4) = v124;
      _os_log_impl(&dword_224A2F000, v115, v116, "Unsubscribing from control ID: %{public}s", v117, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v119);
      MEMORY[0x22AA5EED0](v119, -1, -1);
      MEMORY[0x22AA5EED0](v117, -1, -1);
    }

    else
    {

      v123 = *(v110 + 8);
      v123(v114, v112);
    }

    sub_224DAB348();
    swift_unknownObjectRelease();
    return (v123)(v144, v112);
  }
}

uint64_t sub_224AB92B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v5 = sub_224DAC4A8();
  v67 = *(v5 - 8);
  v68 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v65 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAC4D8();
  v69 = *(v8 - 8);
  v70 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v66 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAC4F8();
  v61 = *(v11 - 8);
  v62 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v59 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DAC528();
  v63 = *(v14 - 8);
  v64 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v60 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_224DAC538();
  MEMORY[0x28223BE20](v71, v17);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BB0, &unk_224DB8CF0);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v23 = &v59 - v22;
  v24 = sub_224DAC5E8();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_224DAB8C8();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v31);
  v33 = (&v59 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = v4[5];
  *v33 = v34;
  (*(v30 + 104))(v33, *MEMORY[0x277D85200], v29);
  v35 = v34;
  LOBYTE(v34) = sub_224DAB8F8();
  (*(v30 + 8))(v33, v29);
  if ((v34 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v36 = v4[17];
  v37 = v4[18];
  __swift_project_boxed_opaque_existential_1(v4 + 14, v36);
  (*(v37 + 48))(v72, v73, v36, v37);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_224A3311C(v23, &qword_27D6F3BB0, &unk_224DB8CF0);
    v38 = sub_224DAE438();
    return (*(*(v38 - 8) + 56))(v74, 1, 1, v38);
  }

  v40 = v24;
  v73 = v25;
  (*(v25 + 32))(v28, v23, v24);
  sub_224DAC558();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v72 = v24;
    v41 = v69;
    v42 = v66;
    v43 = v19;
    v44 = v70;
    (*(v69 + 32))(v66, v43, v70);
    v45 = v65;
    sub_224DAC498();
    v47 = v67;
    v46 = v68;
    if ((*(v67 + 88))(v45, v68) == *MEMORY[0x277CF9A50])
    {
      (*(v47 + 8))(v45, v46);
      v48 = v4[28];
      __swift_project_boxed_opaque_existential_1(v4 + 24, v4[27]);
      v49 = sub_224DAC588();
      (*(v48 + 64))(v49);

      (*(v41 + 8))(v42, v44);
      return (*(v73 + 8))(v28, v72);
    }

    goto LABEL_11;
  }

  v50 = v63;
  v51 = v60;
  v52 = v19;
  v53 = v64;
  (*(v63 + 32))(v60, v52, v64);
  v54 = v59;
  sub_224DAC4E8();
  v56 = v61;
  v55 = v62;
  if ((*(v61 + 88))(v54, v62) != *MEMORY[0x277CF9A60])
  {
LABEL_11:
    result = sub_224DAFD78();
    __break(1u);
    return result;
  }

  (*(v56 + 8))(v54, v55);
  v57 = v4[28];
  __swift_project_boxed_opaque_existential_1(v4 + 24, v4[27]);
  v58 = sub_224DAC588();
  (*(v57 + 64))(v58);

  (*(v50 + 8))(v51, v53);
  return (*(v73 + 8))(v28, v40);
}

uint64_t sub_224AB99E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 328);
  *(a1 + 328) = a2;

  sub_224AB51C0(v2);
}

uint64_t sub_224AB9A2C(void *a1)
{
  v2 = v1;
  v99 = a1;
  v83 = type metadata accessor for IncomingMessage(0);
  v84 = *(v83 - 8);
  v4 = MEMORY[0x28223BE20](v83, v3);
  v86 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v5;
  MEMORY[0x28223BE20](v4, v6);
  v87 = (&v82 - v7);
  v93 = sub_224DAE438();
  v91 = *(v93 - 8);
  MEMORY[0x28223BE20](v93, v8);
  v88 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F38C0, &qword_224DB31E8);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  *&v90 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v98 = &v82 - v15;
  v16 = sub_224DAC5E8();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v95 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v82 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BB0, &unk_224DB8CF0);
  v26 = MEMORY[0x28223BE20](v24 - 8, v25);
  v94 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v97 = &v82 - v29;
  v30 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3298, &qword_224DB31F8);
  v96 = v2;
  v92 = v30;
  result = sub_224DAF3E8();
  v89 = 0;
  v32 = v101[0];
  v100 = *(v101[0] + 16);
  if (v100)
  {
    v33 = 0;
    v34 = v101[0] + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v35 = (v17 + 8);
    while (v33 < *(v32 + 16))
    {
      v36 = v34 + *(v17 + 72) * v33;
      v37 = v17;
      v38 = *(v17 + 16);
      v39 = v16;
      v38(v23, v36, v16);
      v40 = sub_224DAC5D8();
      if (v40)
      {
        v41 = v40;
        sub_224AC21B4();
        v42 = sub_224DAF6A8();

        if (v42)
        {

          v43 = v97;
          v16 = v39;
          v17 = v37;
          (*(v37 + 32))(v97, v23, v16);
          v44 = 0;
          goto LABEL_9;
        }
      }

      ++v33;
      v16 = v39;
      result = (*v35)(v23, v39);
      v17 = v37;
      if (v100 == v33)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    v44 = 1;
    v43 = v97;
LABEL_9:
    (*(v17 + 56))(v43, v44, 1, v16);
    v45 = v94;
    sub_224A3796C(v43, v94, &qword_27D6F3BB0, &unk_224DB8CF0);
    v46 = (*(v17 + 48))(v45, 1, v16);
    v48 = v95;
    v47 = v96;
    v49 = v98;
    if (v46 == 1)
    {
      sub_224A3311C(v43, &qword_27D6F3BB0, &unk_224DB8CF0);
      return sub_224A3311C(v45, &qword_27D6F3BB0, &unk_224DB8CF0);
    }

    (*(v17 + 32))(v95, v45, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3290, &qword_224DB31F0);
    v50 = sub_224DAF3E8();
    v51 = v101[0];
    MEMORY[0x28223BE20](v50, v52);
    *(&v82 - 2) = v48;
    sub_224AFD7EC(sub_224AC20A8, v51, v49);

    v53 = v90;
    sub_224A3796C(v49, v90, &unk_27D6F38C0, &qword_224DB31E8);
    v54 = v91;
    v55 = v93;
    if ((*(v91 + 48))(v53, 1, v93) == 1)
    {
      sub_224A3311C(v49, &unk_27D6F38C0, &qword_224DB31E8);
      sub_224A3311C(v43, &qword_27D6F3BB0, &unk_224DB8CF0);
      v56 = v53;
      v57 = &unk_27D6F38C0;
      v58 = &qword_224DB31E8;
    }

    else
    {
      v59 = v88;
      (*(v54 + 32))(v88, v53, v55);
      v60 = sub_224DAC548();
      v62 = v61;
      swift_beginAccess();
      v63 = *(v47 + 64);
      if (*(v63 + 16))
      {
        v100 = v17;

        v64 = sub_224A3A40C(v60, v62);
        v66 = v65;

        if (v66)
        {
          v67 = *(v63 + 56);
          v94 = "rono.PushNotifications.dev";
          v90 = *(v67 + 16 * v64);
          swift_unknownObjectRetain();

          v68 = sub_224DAE428();
          v70 = v69;
          v71 = v54;
          v72 = v83;
          v73 = v99;
          v74 = v87;
          sub_224DAE0E8();
          v75 = v72[7];
          v76 = *MEMORY[0x277CF9EC8];
          v77 = sub_224DAE178();
          (*(*(v77 - 8) + 104))(v74 + v75, v76, v77);
          *v74 = v68;
          v74[1] = v70;
          v78 = (v74 + v72[6]);
          *v78 = 0;
          v78[1] = 0;
          *(v74 + v72[8]) = 1;
          v79 = v86;
          sub_224AC1DB0(v74, v86, type metadata accessor for IncomingMessage);
          v80 = (*(v84 + 80) + 40) & ~*(v84 + 80);
          v81 = swift_allocObject();
          *(v81 + 16) = v96;
          *(v81 + 24) = v90;
          sub_224AC20C8(v79, v81 + v80, type metadata accessor for IncomingMessage);
          swift_unknownObjectRetain();

          _s10ChronoCore14PushFoundationO20KeepAliveTransactionC9asyncTask6reason5queue5delay8wrappingySS_So012OS_dispatch_K0CSdyyycctFZ_0(0xD000000000000015, (v94 | 0x8000000000000000), v92, sub_224AC2130, v81, 0.0);
          swift_unknownObjectRelease();

          sub_224AC1F14(v74, type metadata accessor for IncomingMessage);
          (*(v71 + 8))(v88, v93);
          sub_224A3311C(v98, &unk_27D6F38C0, &qword_224DB31E8);
          sub_224A3311C(v97, &qword_27D6F3BB0, &unk_224DB8CF0);
          return (*(v100 + 8))(v48, v16);
        }

        v17 = v100;
      }

      else
      {
      }

      (*(v54 + 8))(v59, v55);
      sub_224A3311C(v98, &unk_27D6F38C0, &qword_224DB31E8);
      v57 = &qword_27D6F3BB0;
      v58 = &unk_224DB8CF0;
      v56 = v97;
    }

    sub_224A3311C(v56, v57, v58);
    return (*(v17 + 8))(v48, v16);
  }

  return result;
}

uint64_t sub_224ABA3B0()
{
  v0 = sub_224DAE418();
  v2 = v1;
  if (v0 == sub_224DAC588() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_224DAFD88();
  }

  return v4 & 1;
}

void sub_224ABA44C(uint64_t a1, uint64_t a2, char **a3)
{
  v200 = a3;
  v211[1] = *MEMORY[0x277D85DE8];
  v172 = sub_224DAC4D8();
  v171 = *(v172 - 8);
  MEMORY[0x28223BE20](v172, v6);
  v170 = v161 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_224DAC528();
  v168 = *(v169 - 8);
  MEMORY[0x28223BE20](v169, v8);
  v167 = v161 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_224DAC538();
  MEMORY[0x28223BE20](v173, v10);
  v174 = v161 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for PushEvent(0);
  v177 = *(v178 - 8);
  v12 = *(v177 + 64);
  v14 = MEMORY[0x28223BE20](v178, v13);
  v176 = v161 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14, v15);
  v175 = v161 - v17;
  MEMORY[0x28223BE20](v16, v18);
  v182 = v161 - v19;
  v181 = sub_224DAE0D8();
  v180 = *(v181 - 8);
  MEMORY[0x28223BE20](v181, v20);
  v179 = v161 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_224DAC5E8();
  v188 = *(v198 - 8);
  MEMORY[0x28223BE20](v198, v22);
  v24 = v161 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_224DAE438();
  v196 = *(v192 - 8);
  v26 = MEMORY[0x28223BE20](v192, v25);
  v183 = v161 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v207 = v161 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F38C0, &qword_224DB31E8);
  v32 = MEMORY[0x28223BE20](v30 - 8, v31);
  v187 = v161 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v34);
  v190 = v161 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BB0, &unk_224DB8CF0);
  v38 = MEMORY[0x28223BE20](v36 - 8, v37);
  v186 = v161 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v40);
  v199 = v161 - v41;
  v184 = type metadata accessor for IncomingMessage(0);
  MEMORY[0x28223BE20](v184, v42);
  v44 = v161 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_224DAB8C8();
  v46 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v47);
  v49 = (v161 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = v3[5];
  *v49 = v50;
  (*(v46 + 104))(v49, *MEMORY[0x277D85200], v45);
  v51 = v50;
  v52 = sub_224DAB8F8();
  (*(v46 + 8))(v49, v45);
  if ((v52 & 1) == 0)
  {
    goto LABEL_115;
  }

  v197 = sub_224ABE998(a1);
  if (v53)
  {
    v52 = v53;
    v162 = a1;
    v163 = a2;
    v195 = v3;
    if (qword_27D6F2CF0 != -1)
    {
      goto LABEL_118;
    }

    while (1)
    {
      v54 = sub_224DAB258();
      v55 = __swift_project_value_buffer(v54, qword_27D6F71E0);
      v56 = v200;
      sub_224AC1DB0(v200, v44, type metadata accessor for IncomingMessage);

      v185 = v55;
      v57 = sub_224DAB228();
      v58 = sub_224DAF2A8();

      v59 = os_log_type_enabled(v57, v58);
      v60 = v198;
      v166 = v24;
      v161[1] = v12;
      v193 = v52;
      if (v59)
      {
        v61 = v52;
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *&v210 = v63;
        *v62 = 136446466;
        v64 = sub_224D75864();
        v66 = v65;
        sub_224AC1F14(v44, type metadata accessor for IncomingMessage);
        v67 = sub_224A33F74(v64, v66, &v210);

        *(v62 + 4) = v67;
        *(v62 + 12) = 2082;
        *(v62 + 14) = sub_224A33F74(v197, v61, &v210);
        _os_log_impl(&dword_224A2F000, v57, v58, "Received message: %{public}s for environment: %{public}s", v62, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v63, -1, -1);
        v56 = v200;
        MEMORY[0x22AA5EED0](v62, -1, -1);
      }

      else
      {

        sub_224AC1F14(v44, type metadata accessor for IncomingMessage);
      }

      v12 = v195;
      v73 = v199;
      v74 = v56[1];
      if (v74 >> 60 == 15)
      {

        v69 = sub_224DAB228();
        v70 = sub_224DAF288();
        if (!os_log_type_enabled(v69, v70))
        {
          goto LABEL_15;
        }

        v71 = swift_slowAlloc();
        *v71 = 0;
        v72 = "Incoming message does not provide a token";
LABEL_14:
        _os_log_impl(&dword_224A2F000, v69, v70, v72, v71, 2u);
        MEMORY[0x22AA5EED0](v71, -1, -1);
        goto LABEL_15;
      }

      v24 = *v56;
      v75 = v195[27];
      v76 = v195[28];
      __swift_project_boxed_opaque_existential_1(v195 + 24, v75);
      v77 = *(v76 + 56);
      sub_224A77FD0(v24, v74);
      v78 = v77(v197, v193, v75, v76);
      v79 = *(v78 + 16);
      v206 = v24;
      v203 = v79;
      v194 = v74;
      if (!v79)
      {

        v106 = 1;
        v52 = v192;
        v82 = v196;
        v107 = v190;
        v108 = v187;
LABEL_89:
        (*(v82 + 56))(v107, v106, 1, v52);
        sub_224A3796C(v107, v108, &unk_27D6F38C0, &qword_224DB31E8);
        if ((*(v82 + 48))(v108, 1, v52) == 1)
        {
          sub_224A3311C(v107, &unk_27D6F38C0, &qword_224DB31E8);
          sub_224AC1D9C(v206, v74);
          sub_224A3311C(v108, &unk_27D6F38C0, &qword_224DB31E8);
          v111 = v188;
          (*(v188 + 56))(v73, 1, 1, v60);
        }

        else
        {
          v112 = v73;
          v113 = v183;
          (*(v82 + 32))(v183, v108, v52);
          v114 = *(v12 + 136);
          v115 = v12;
          v116 = v82;
          v117 = v52;
          v118 = *(v115 + 144);
          __swift_project_boxed_opaque_existential_1((v115 + 112), v114);
          v119 = sub_224DAE418();
          (*(v118 + 48))(v119);

          sub_224AC1D9C(v206, v194);
          v120 = v113;
          v73 = v112;
          (*(v116 + 8))(v120, v117);
          sub_224A3311C(v190, &unk_27D6F38C0, &qword_224DB31E8);
          v111 = v188;
        }

        v121 = v166;
        v122 = v200;
        v123 = v186;
        v124 = v193;
        sub_224A3796C(v73, v186, &qword_27D6F3BB0, &unk_224DB8CF0);
        if ((*(v111 + 48))(v123, 1, v60) == 1)
        {

          sub_224A3311C(v123, &qword_27D6F3BB0, &unk_224DB8CF0);
          v125 = sub_224DAB228();
          v126 = sub_224DAF288();
          if (os_log_type_enabled(v125, v126))
          {
            v127 = swift_slowAlloc();
            *v127 = 0;
            _os_log_impl(&dword_224A2F000, v125, v126, "Incoming message does not belong to a subscription", v127, 2u);
            MEMORY[0x22AA5EED0](v127, -1, -1);
          }

          goto LABEL_113;
        }

        (*(v111 + 32))(v121, v123, v60);
        v128 = v197;
        v129 = v195;
        sub_224AC04BC(v121, v197, v124);
        LOBYTE(v128) = sub_224AB5474(v128, v124, v162);

        if (v128)
        {
          sub_224AC0A2C();
        }

        if (*(v122 + *(v184 + 32)) == 1)
        {
          v130 = v179;
          sub_224DAC598();
          v131 = sub_224DAE078();
          (*(v180 + 8))(v130, v181);
          if (v131)
          {
            v132 = v174;
            sub_224DAC558();
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload == 1)
            {
              v134 = v171;
              v135 = v170;
              v136 = v172;
              (*(v171 + 32))(v170, v132, v172);
              v137 = sub_224DAC4B8();
            }

            else
            {
              v134 = v168;
              v135 = v167;
              v136 = v169;
              (*(v168 + 32))(v167, v132, v169);
              v137 = sub_224DAC508();
            }

            v143 = v137;
            v144 = v182;
            sub_224DA9868();
            (*(v134 + 8))(v135, v136);
            *v144 = v143;
            *(v144 + 8) = EnumCaseMultiPayload == 1;
            v145 = v175;
            sub_224AC1DB0(v144, v175, type metadata accessor for PushEvent);
            v146 = sub_224DAB228();
            v147 = sub_224DAF2A8();
            if (os_log_type_enabled(v146, v147))
            {
              v148 = swift_slowAlloc();
              v149 = swift_slowAlloc();
              *v148 = 136446210;
              *&v210 = 0;
              *(&v210 + 1) = 0xE000000000000000;
              v211[0] = v149;
              sub_224DAF938();
              MEMORY[0x22AA5D210](0x6D617473656D6974, 0xEB00000000203A70);
              sub_224DA9878();
              sub_224AC22E8(&qword_27D6F32B8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
              v150 = sub_224DAFD28();
              MEMORY[0x22AA5D210](v150);

              MEMORY[0x22AA5D210](0x54746E657665203BLL, 0xED0000203A657079);
              v151 = *(v145 + 8);
              v208 = *v145;
              v209 = v151;
              sub_224DAFA48();
              MEMORY[0x22AA5D210](59, 0xE100000000000000);
              v153 = *(&v210 + 1);
              v152 = v210;
              sub_224AC1F14(v145, type metadata accessor for PushEvent);
              v154 = sub_224A33F74(v152, v153, v211);
              v129 = v195;

              *(v148 + 4) = v154;
              _os_log_impl(&dword_224A2F000, v146, v147, "Publishing event: %{public}s", v148, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v149);
              MEMORY[0x22AA5EED0](v149, -1, -1);
              MEMORY[0x22AA5EED0](v148, -1, -1);
            }

            else
            {

              sub_224AC1F14(v145, type metadata accessor for PushEvent);
            }

            v155 = v177;
            v156 = v129[6];
            v157 = v182;
            v158 = v176;
            sub_224AC1DB0(v182, v176, type metadata accessor for PushEvent);
            v159 = (*(v155 + 80) + 24) & ~*(v155 + 80);
            v160 = swift_allocObject();
            *(v160 + 16) = v129;
            sub_224AC20C8(v158, v160 + v159, type metadata accessor for PushEvent);

            _s10ChronoCore14PushFoundationO20KeepAliveTransactionC9asyncTask6reason5queue5delay8wrappingySS_So012OS_dispatch_K0CSdyyycctFZ_0(0xD000000000000010, 0x8000000224DC4EE0, v156, sub_224AC1E18, v160, 0.0);

            sub_224AC1F14(v157, type metadata accessor for PushEvent);
            (*(v188 + 8))(v121, v60);
            goto LABEL_113;
          }

          v138 = sub_224DAB228();
          v139 = sub_224DAF288();
          if (os_log_type_enabled(v138, v139))
          {
            v140 = v111;
            v141 = swift_slowAlloc();
            *v141 = 0;
            v142 = "Incoming message topic does not match subscription topic";
LABEL_106:
            _os_log_impl(&dword_224A2F000, v138, v139, v142, v141, 2u);
            MEMORY[0x22AA5EED0](v141, -1, -1);

            (*(v140 + 8))(v121, v60);
LABEL_113:
            sub_224A3311C(v73, &qword_27D6F3BB0, &unk_224DB8CF0);
            return;
          }
        }

        else
        {
          v138 = sub_224DAB228();
          v139 = sub_224DAF288();
          if (os_log_type_enabled(v138, v139))
          {
            v140 = v111;
            v141 = swift_slowAlloc();
            *v141 = 0;
            v142 = "Incoming message does not indicate content changed.";
            goto LABEL_106;
          }
        }

        (*(v111 + 8))(v121, v60);
        goto LABEL_113;
      }

      v80 = v74;
      v81 = 0;
      v82 = v196;
      v205 = v78 + ((*(v196 + 80) + 32) & ~*(v196 + 80));
      v204 = v196 + 16;
      if (v24)
      {
        v83 = 0;
      }

      else
      {
        v83 = v80 == 0xC000000000000000;
      }

      v84 = !v83;
      v191 = v84;
      v44 = (v80 >> 62);
      v85 = __OFSUB__(HIDWORD(v24), v24);
      v165 = v85;
      v164 = HIDWORD(v24) - v24;
      v189 = BYTE6(v80);
      v201 = (v196 + 8);
      v52 = v192;
      v202 = v78;
      while (v81 < *(v78 + 16))
      {
        (*(v82 + 16))(v207, v205 + *(v82 + 72) * v81, v52);
        v86 = sub_224DAE428();
        v12 = v86;
        v24 = v87;
        v88 = v87 >> 62;
        if (v87 >> 62 == 3)
        {
          if (v86)
          {
            v89 = 0;
          }

          else
          {
            v89 = v87 == 0xC000000000000000;
          }

          v91 = !v89 || v44 < 3;
          if (((v91 | v191) & 1) == 0)
          {

            v109 = 0;
            v110 = 0xC000000000000000;
            goto LABEL_86;
          }

          v92 = 0;
          v93 = v206;
          if (v44 <= 1)
          {
LABEL_55:
            v97 = v189;
            if (v44)
            {
              v97 = v164;
              if (v165)
              {
                goto LABEL_116;
              }
            }

            goto LABEL_61;
          }
        }

        else
        {
          if (v88 <= 1)
          {
            v93 = v206;
            if (!v88)
            {
              v92 = BYTE6(v87);
              if (v44 <= 1)
              {
                goto LABEL_55;
              }

              goto LABEL_59;
            }

            LODWORD(v92) = HIDWORD(v86) - v86;
            if (__OFSUB__(HIDWORD(v86), v86))
            {
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
            }

            v92 = v92;
            goto LABEL_54;
          }

          v93 = v206;
          if (v88 == 2)
          {
            v95 = *(v86 + 16);
            v94 = *(v86 + 24);
            v96 = __OFSUB__(v94, v95);
            v92 = v94 - v95;
            if (v96)
            {
              goto LABEL_120;
            }

LABEL_54:
            if (v44 <= 1)
            {
              goto LABEL_55;
            }

            goto LABEL_59;
          }

          v92 = 0;
          if (v44 <= 1)
          {
            goto LABEL_55;
          }
        }

LABEL_59:
        if (v44 != 2)
        {
          if (!v92)
          {
            goto LABEL_84;
          }

LABEL_28:
          sub_224A78024(v86, v87);
          goto LABEL_29;
        }

        v99 = *(v93 + 16);
        v98 = *(v93 + 24);
        v96 = __OFSUB__(v98, v99);
        v97 = v98 - v99;
        if (v96)
        {
          goto LABEL_117;
        }

LABEL_61:
        if (v92 != v97)
        {
          goto LABEL_28;
        }

        if (v92 < 1)
        {
LABEL_84:

          v109 = v12;
          v110 = v24;
LABEL_86:
          sub_224A78024(v109, v110);
LABEL_87:
          v107 = v190;
          (*(v82 + 32))(v190, v207, v52);
          v106 = 0;
          v12 = v195;
LABEL_88:
          v108 = v187;
          v74 = v194;
          goto LABEL_89;
        }

        if (v88 > 1)
        {
          if (v88 == 2)
          {
            v100 = *(v86 + 16);
            v101 = *(v86 + 24);
            v102 = sub_224DA93E8();
            if (v102)
            {
              v103 = sub_224DA9408();
              if (__OFSUB__(v100, v103))
              {
                goto LABEL_123;
              }

              v102 += v100 - v103;
            }

            if (__OFSUB__(v101, v100))
            {
              goto LABEL_122;
            }

            sub_224DA93F8();
            sub_224CFE1EC(v102, v206, v194, &v210);
            sub_224A78024(v12, v24);
            v60 = v198;
            v73 = v199;
            v82 = v196;
            if (v210)
            {
              goto LABEL_81;
            }

            goto LABEL_29;
          }

          *(&v210 + 6) = 0;
          *&v210 = 0;
        }

        else
        {
          if (v88)
          {
            if (v86 >> 32 < v86)
            {
              goto LABEL_121;
            }

            v104 = sub_224DA93E8();
            if (v104)
            {
              v105 = sub_224DA9408();
              if (__OFSUB__(v12, v105))
              {
                goto LABEL_124;
              }

              v104 += v12 - v105;
            }

            sub_224DA93F8();
            sub_224CFE1EC(v104, v206, v194, &v210);
            sub_224A78024(v12, v24);
            v73 = v199;
            v52 = v192;
            v82 = v196;
            if (v210)
            {
LABEL_81:

              goto LABEL_87;
            }

            goto LABEL_29;
          }

          *&v210 = v86;
          WORD4(v210) = v87;
          BYTE10(v210) = BYTE2(v87);
          BYTE11(v210) = BYTE3(v87);
          BYTE12(v210) = BYTE4(v87);
          BYTE13(v210) = BYTE5(v87);
        }

        sub_224CFE1EC(&v210, v93, v194, &v208);
        sub_224A78024(v12, v24);
        if (v208)
        {
          goto LABEL_81;
        }

LABEL_29:
        ++v81;
        (*v201)(v207, v52);
        v78 = v202;
        if (v203 == v81)
        {

          v106 = 1;
          v12 = v195;
          v107 = v190;
          goto LABEL_88;
        }
      }

      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      swift_once();
    }
  }

  if (qword_27D6F2CF0 != -1)
  {
    swift_once();
  }

  v68 = sub_224DAB258();
  __swift_project_value_buffer(v68, qword_27D6F71E0);
  v69 = sub_224DAB228();
  v70 = sub_224DAF288();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    v72 = "Incoming message arrived on an unknown connection";
    goto LABEL_14;
  }

LABEL_15:
}

uint64_t sub_224ABBC0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32A0, &qword_224DB3210);
  sub_224A33088(&qword_281350F38, &qword_27D6F32A0, &qword_224DB3210, MEMORY[0x277CBCE20]);
  return sub_224DAB3A8();
}

uint64_t sub_224ABBC9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5880, &qword_224DB3208);
  sub_224A33088(&qword_281350F80, &unk_27D6F5880, &qword_224DB3208, MEMORY[0x277CBCE20]);
  return sub_224DAB3A8();
}

uint64_t sub_224ABBD2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5890, &qword_224DB3200);
  sub_224A33088(&qword_281350F60, &qword_27D6F5890, &qword_224DB3200, MEMORY[0x277CBCE20]);
  return sub_224DAB3A8();
}

uint64_t sub_224ABBE0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_224DAF3E8();
  return v6;
}

uint64_t sub_224ABBF24()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v1[17];
  v5 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v4);
  return (*(v5 + 48))(v2, v3, v4, v5);
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

void sub_224ABC050(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_224DAB8C8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = v4[5];
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = v13;
  LOBYTE(v13) = sub_224DAB8F8();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_28:
    swift_once();
    goto LABEL_8;
  }

  swift_beginAccess();
  if (*(v4[8] + 16))
  {

    sub_224A3A40C(a1, a2);
    if (v15)
    {
      swift_unknownObjectRetain();

      return;
    }
  }

  if ((a3 & 1) == 0)
  {
    if (qword_27D6F2CF0 != -1)
    {
      swift_once();
    }

    v33 = sub_224DAB258();
    __swift_project_value_buffer(v33, qword_27D6F71E0);

    v34 = sub_224DAB228();
    v35 = sub_224DAF288();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v49[0] = v37;
      *v36 = 136446210;
      *(v36 + 4) = sub_224A33F74(a1, a2, v49);
      _os_log_impl(&dword_224A2F000, v34, v35, "Failed to find a connection for environment %{public}s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x22AA5EED0](v37, -1, -1);
      MEMORY[0x22AA5EED0](v36, -1, -1);
    }

    v38 = 0;
    goto LABEL_26;
  }

  if (qword_27D6F2C68 != -1)
  {
    goto LABEL_28;
  }

LABEL_8:
  v16 = off_27D6F3280;
  if (!*(off_27D6F3280 + 2) || (v17 = sub_224A3A40C(a1, a2), (v18 & 1) == 0))
  {
    if (qword_27D6F2CF0 != -1)
    {
      swift_once();
    }

    v39 = sub_224DAB258();
    __swift_project_value_buffer(v39, qword_27D6F71E0);

    v40 = sub_224DAB228();
    v41 = sub_224DAF288();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v49[0] = v43;
      *v42 = 136446210;
      *(v42 + 4) = sub_224A33F74(a1, a2, v49);
      _os_log_impl(&dword_224A2F000, v40, v41, "No Mach service name exists for environment %{public}s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x22AA5EED0](v43, -1, -1);
      MEMORY[0x22AA5EED0](v42, -1, -1);
    }

    v38 = 1;
LABEL_26:
    sub_224AC1F7C();
    swift_allocError();
    *v44 = v38;
    swift_willThrow();
    return;
  }

  v19 = *(v16[7] + 16 * v17 + 8);
  v48 = v4[7];
  v46 = type metadata accessor for APSPushConnection();
  v20 = objc_allocWithZone(v46);
  *&v20[OBJC_IVAR____TtC10ChronoCore17APSPushConnection_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_283828B20;
  swift_unknownObjectWeakAssign();
  v21 = objc_allocWithZone(MEMORY[0x277CEEA10]);

  v22 = sub_224DAEDE8();
  v47 = v19;
  v23 = sub_224DAEDE8();
  v24 = [v21 initWithEnvironmentName:v22 namedDelegatePort:v23 queue:v48];

  if (v24)
  {

    *&v20[OBJC_IVAR____TtC10ChronoCore17APSPushConnection_connection] = v24;
    v50.receiver = v20;
    v50.super_class = v46;
    v25 = objc_msgSendSuper2(&v50, sel_init);
    [*&v25[OBJC_IVAR____TtC10ChronoCore17APSPushConnection_connection] setDelegate_];
    swift_beginAccess();

    v26 = v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v4[8];
    v4[8] = 0x8000000000000000;
    sub_224AC1C08(v26, a1, a2, isUniquelyReferenced_nonNull_native, &v51);

    v4[8] = v51;
    swift_endAccess();
    if (qword_27D6F2CF0 != -1)
    {
      swift_once();
    }

    v28 = sub_224DAB258();
    __swift_project_value_buffer(v28, qword_27D6F71E0);

    v29 = sub_224DAB228();
    v30 = sub_224DAF268();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v49[0] = v32;
      *v31 = 136446210;
      *(v31 + 4) = sub_224A33F74(a1, a2, v49);
      _os_log_impl(&dword_224A2F000, v29, v30, "Created new connection for environment %{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x22AA5EED0](v32, -1, -1);
      MEMORY[0x22AA5EED0](v31, -1, -1);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_224ABC724()
{
  v1 = sub_224DAB8C8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 40);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_224DAB8F8();
  v9 = *(v2 + 8);
  v8 = v2 + 8;
  v9(v5, v1);
  if (v6)
  {
    v10 = sub_224DAC548();
    v8 = v10;
    v5 = v11;
    if (qword_27D6F2C70 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v10 = swift_once();
LABEL_3:
  v22[0] = v8;
  v22[1] = v5;
  MEMORY[0x28223BE20](v10, v11);
  *&v21[-16] = v22;
  v13 = sub_224B3E818(sub_224AC2330, &v21[-32], v12);
  if (v13)
  {
  }

  else
  {
    if (qword_27D6F2CF0 != -1)
    {
      swift_once();
    }

    v14 = sub_224DAB258();
    __swift_project_value_buffer(v14, qword_27D6F71E0);

    v15 = sub_224DAB228();
    v16 = sub_224DAF288();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22[0] = v18;
      *v17 = 136446210;
      v19 = sub_224A33F74(v8, v5, v22);

      *(v17 + 4) = v19;
      _os_log_impl(&dword_224A2F000, v15, v16, "Environment name %{public}s is unsupported", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x22AA5EED0](v18, -1, -1);
      MEMORY[0x22AA5EED0](v17, -1, -1);
    }

    else
    {
    }
  }

  return v13 & 1;
}

uint64_t sub_224ABCA10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v80 = a2;
  v83 = a1;
  v4 = type metadata accessor for AppTokenInfo(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAE0D8();
  v71 = *(v8 - 8);
  v72 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v70 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F38C0, &qword_224DB31E8);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v81 = &v69 - v13;
  v82 = sub_224DAC5E8();
  v14 = *(v82 - 8);
  v16 = MEMORY[0x28223BE20](v82, v15);
  v79 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v69 - v19;
  v21 = sub_224DAB8C8();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = (&v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = v3[5];
  *v25 = v26;
  (*(v22 + 104))(v25, *MEMORY[0x277D85200], v21);
  v27 = v26;
  LOBYTE(v26) = sub_224DAB8F8();
  (*(v22 + 8))(v25, v21);
  if (v26)
  {
    v77 = v4;
    if (qword_27D6F2CF0 == -1)
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
  v28 = sub_224DAB258();
  v29 = __swift_project_value_buffer(v28, qword_27D6F71E0);
  v30 = v82;
  v73 = *(v14 + 16);
  v73(v20, v83, v82);
  v74 = v29;
  v31 = sub_224DAB228();
  v32 = sub_224DAF2A8();
  v33 = os_log_type_enabled(v31, v32);
  v78 = v7;
  v76 = v14;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = v3;
    v36 = swift_slowAlloc();
    v84 = v36;
    *v34 = 136380675;
    v37 = sub_224DAC588();
    v38 = v14;
    v40 = v39;
    v75 = *(v38 + 8);
    v75(v20, v82);
    v41 = sub_224A33F74(v37, v40, &v84);

    *(v34 + 4) = v41;
    _os_log_impl(&dword_224A2F000, v31, v32, "Fetching push token for subscription: %{private}s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    v42 = v36;
    v3 = v35;
    MEMORY[0x22AA5EED0](v42, -1, -1);
    MEMORY[0x22AA5EED0](v34, -1, -1);
  }

  else
  {

    v75 = *(v14 + 8);
    v75(v20, v30);
  }

  v43 = v3[28];
  __swift_project_boxed_opaque_existential_1(v3 + 24, v3[27]);
  v44 = v83;
  v45 = sub_224DAC588();
  v46 = v81;
  (*(v43 + 64))(v45);

  v47 = sub_224DAE438();
  v48 = (*(*(v47 - 8) + 48))(v46, 1, v47);
  result = sub_224A3311C(v46, &unk_27D6F38C0, &qword_224DB31E8);
  if (v48 == 1)
  {
    v50 = v79;
    v51 = v82;
    v73(v79, v44, v82);
    v52 = sub_224DAB228();
    v53 = sub_224DAF2A8();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v84 = v55;
      *v54 = 136380675;
      v56 = v70;
      sub_224DAC598();
      v57 = sub_224DAE0C8();
      v59 = v58;
      (*(v71 + 8))(v56, v72);
      v75(v50, v51);
      v60 = sub_224A33F74(v57, v59, &v84);

      *(v54 + 4) = v60;
      _os_log_impl(&dword_224A2F000, v52, v53, "Requesting push token for topic: %{private}s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x22AA5EED0](v55, -1, -1);
      MEMORY[0x22AA5EED0](v54, -1, -1);
    }

    else
    {

      v75(v50, v51);
    }

    v62 = v77;
    v61 = v78;
    sub_224DAC598();
    v63 = sub_224DAC588();
    v65 = v64;
    v66 = *(v62 + 24);
    v67 = sub_224DA9878();
    (*(*(v67 - 8) + 56))(v61 + v66, 1, 1, v67);
    v68 = (v61 + *(v62 + 20));
    *v68 = v63;
    v68[1] = v65;
    sub_224CC2210(v61);
    return sub_224AC1F14(v61, type metadata accessor for AppTokenInfo);
  }

  return result;
}

unint64_t sub_224ABD130(void (**a1)(_BYTE *, uint64_t), uint64_t a2)
{
  v3 = v2;
  v198 = a1;
  v5 = sub_224DAE0D8();
  v192 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5, v6);
  v201 = &v176[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v7, v9);
  v187 = &v176[-v11];
  v13 = MEMORY[0x28223BE20](v10, v12);
  v191 = &v176[-v14];
  v16 = MEMORY[0x28223BE20](v13, v15);
  v203 = &v176[-v17];
  v19 = MEMORY[0x28223BE20](v16, v18);
  v202 = &v176[-v20];
  MEMORY[0x28223BE20](v19, v21);
  v188 = &v176[-v22];
  v195 = sub_224DAE178();
  v199 = *(v195 - 8);
  v24 = MEMORY[0x28223BE20](v195, v23);
  v189 = &v176[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = MEMORY[0x28223BE20](v24, v26);
  v190 = &v176[-v28];
  v30 = MEMORY[0x28223BE20](v27, v29);
  v32 = &v176[-v31];
  v34 = MEMORY[0x28223BE20](v30, v33);
  v197 = &v176[-v35];
  v37 = MEMORY[0x28223BE20](v34, v36);
  v196 = &v176[-v38];
  v40 = MEMORY[0x28223BE20](v37, v39);
  v42 = &v176[-v41];
  MEMORY[0x28223BE20](v40, v43);
  v45 = &v176[-v44];
  v46 = sub_224DAB8C8();
  v47 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v48);
  v50 = &v176[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = v3[5];
  *v50 = v51;
  (*(v47 + 104))(v50, *MEMORY[0x277D85200], v46);
  v52 = v51;
  LOBYTE(v51) = sub_224DAB8F8();
  result = (*(v47 + 8))(v50, v46);
  if ((v51 & 1) == 0)
  {
    goto LABEL_78;
  }

  v194 = v42;
  v54 = v3[17];
  v55 = v3[18];
  __swift_project_boxed_opaque_existential_1(v3 + 14, v54);
  v200 = (*(v55 + 72))(v198, a2, v54, v55);
  sub_224DA9E78();
  sub_224DA9E68();
  LOBYTE(v54) = sub_224DA9E08();

  v193 = v3;
  v56 = v32;
  if (v54)
  {
    if (sub_224DAEE18() == v198 && v57 == a2)
    {

      goto LABEL_7;
    }

    v58 = sub_224DAFD88();

    if (v58)
    {
LABEL_7:
      v59 = *MEMORY[0x277CF9EC8];
      v60 = v199;
      v61 = *(v199 + 104);
      v61(v45, v59, v195);
      v62 = v200;
      if (*(v200 + 16) && (v63 = sub_224B0B2F8(v45), (v64 & 1) != 0))
      {
        v65 = *(*(v62 + 56) + 8 * v63);
        v66 = *(v199 + 8);

        v67 = v45;
        v68 = v195;
        v66(v67, v195);
      }

      else
      {
        v66 = *(v60 + 8);
        v113 = v45;
        v68 = v195;
        v66(v113, v195);
        v65 = MEMORY[0x277D84FA0];
      }

      v114 = v194;
      v61(v194, *MEMORY[0x277CF9EC0], v68);
      if (*(v62 + 16) && (v115 = sub_224B0B2F8(v114), (v116 & 1) != 0))
      {
        v117 = *(*(v62 + 56) + 8 * v115);
      }

      else
      {
        v117 = MEMORY[0x277D84FA0];
      }

      v66(v114, v68);
      v118 = v196;
      v61(v196, *MEMORY[0x277CF9ED0], v68);
      v119 = v200;
      if (*(v200 + 16) && (v120 = sub_224B0B2F8(v118), (v121 & 1) != 0))
      {
        v122 = *(*(v119 + 56) + 8 * v120);
      }

      else
      {
        v122 = MEMORY[0x277D84FA0];
      }

      v66(v118, v68);
      v123 = sub_224AD6934(v117, v65);
      v124 = sub_224AD6934(v122, v123);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32E8, &qword_224DB3228);
      v125 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F7060, &unk_224DC3C30) - 8);
      v126 = v68;
      v127 = (*(*v125 + 80) + 32) & ~*(*v125 + 80);
      v128 = swift_allocObject();
      *(v128 + 16) = xmmword_224DB3100;
      v129 = v128 + v127;
      v130 = v125[14];
      v61(v129, v59, v126);
      *(v129 + v130) = v124;
      v131 = sub_224D9FF28(v128);
      swift_setDeallocating();
      sub_224A3311C(v129, &unk_27D6F7060, &unk_224DC3C30);
      swift_deallocClassInstance();

      return v131;
    }
  }

  if (!*(v193[41] + 16))
  {
    return v200;
  }

  v69 = v199;
  v71 = v199 + 104;
  v70 = *(v199 + 104);
  v72 = v197;
  v185 = *MEMORY[0x277CF9EC8];
  v73 = v195;
  v70(v197);
  v74 = v200;
  if (*(v200 + 16) && (v75 = sub_224B0B2F8(v72), (v76 & 1) != 0))
  {
    v77 = *(*(v74 + 56) + 8 * v75);
    v184 = v70;
    v78 = *(v199 + 8);

    v186 = v78;
    v78(v72, v73);
    v70 = v184;
    v69 = v199;
  }

  else
  {
    v186 = *(v69 + 8);
    v186(v72, v73);
    v77 = MEMORY[0x277D84FA0];
  }

  v206 = v77;
  v79 = *MEMORY[0x277CF9EC0];
  (v70)(v56, *MEMORY[0x277CF9EC0], v73);
  v80 = v189;
  if (!*(v74 + 16) || (v81 = sub_224B0B2F8(v56), (v82 & 1) == 0))
  {
    v86 = v186;
    v186(v56, v73);
    goto LABEL_50;
  }

  v177 = v79;
  v83 = v56;
  v84 = *(*(v74 + 56) + 8 * v81);

  v85 = v83;
  v86 = v186;
  v178 = v69 + 8;
  v186(v85, v73);
  result = v84;
  if (!*(v84 + 16))
  {

    goto LABEL_50;
  }

  v183 = v71;
  v87 = 0;
  v89 = v84 + 56;
  v88 = *(result + 56);
  v90 = 1 << *(result + 32);
  v205 = MEMORY[0x277D84FA0];
  if (v90 < 64)
  {
    v91 = ~(-1 << v90);
  }

  else
  {
    v91 = -1;
  }

  v92 = v91 & v88;
  v93 = (v90 + 63) >> 6;
  v198 = (v192 + 16);
  v182 = (v192 + 32);
  v196 = (v192 + 8);
  v94 = v202;
  v180 = v93;
  v184 = v70;
  v181 = result;
  v179 = result + 56;
  if (v92)
  {
    while (1)
    {
LABEL_26:
      v96 = __clz(__rbit64(v92));
      v92 &= v92 - 1;
      v97 = *(result + 48);
      v98 = v192;
      v194 = *(v192 + 72);
      v99 = v188;
      v197 = *(v192 + 16);
      (v197)(v188, v97 + v194 * (v96 | (v87 << 6)), v5);
      (*(v98 + 32))(v94, v99, v5);
      v100 = v193[41];
      if (*(v100 + 16))
      {
        sub_224AC22E8(&qword_281350C70, MEMORY[0x277CF9E98], MEMORY[0x277CF9EA0]);

        v101 = sub_224DAED88();
        v102 = -1 << *(v100 + 32);
        v103 = v101 & ~v102;
        if ((*(v100 + 56 + ((v103 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v103))
        {
          v104 = ~v102;
          while (1)
          {
            v105 = v203;
            (v197)(v203, *(v100 + 48) + v103 * v194, v5);
            sub_224AC22E8(&qword_281350C68, MEMORY[0x277CF9E98], MEMORY[0x277CF9EA8]);
            v106 = sub_224DAEDD8();
            v107 = *v196;
            (*v196)(v105, v5);
            if (v106)
            {
              break;
            }

            v103 = (v103 + 1) & v104;
            if (((*(v100 + 56 + ((v103 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v103) & 1) == 0)
            {
              goto LABEL_31;
            }
          }

          v111 = v191;
          v94 = v202;
          (v197)(v191, v202, v5);
          v112 = v203;
          sub_224ADB0B0(v203, v111);
          v107(v112, v5);
          v107(v94, v5);
          v73 = v195;
          v69 = v199;
          v70 = v184;
          result = v181;
          v89 = v179;
          goto LABEL_33;
        }

LABEL_31:

        v73 = v195;
        v70 = v184;
        v94 = v202;
        v89 = v179;
      }

      v108 = v191;
      (v197)(v191, v94, v5);
      v109 = v203;
      sub_224ADB0B0(v203, v108);
      v110 = *v196;
      (*v196)(v109, v5);
      v110(v94, v5);
      v69 = v199;
      result = v181;
LABEL_33:
      v93 = v180;
      if (!v92)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
LABEL_22:
    v95 = v87 + 1;
    if (__OFADD__(v87, 1))
    {
      __break(1u);
      goto LABEL_77;
    }

    if (v95 >= v93)
    {
      break;
    }

    v92 = *(v89 + 8 * v95);
    ++v87;
    if (v92)
    {
      v87 = v95;
      goto LABEL_26;
    }
  }

  v132 = v190;
  v71 = v183;
  (v70)(v190, v177, v73);
  v133 = v205;
  v134 = v200;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v204 = v134;
  sub_224B1F170(v133, v132, isUniquelyReferenced_nonNull_native);
  v136 = v132;
  v80 = v189;
  v86 = v186;
  v186(v136, v73);
  v74 = v204;
LABEL_50:
  LODWORD(v196) = *MEMORY[0x277CF9ED0];
  v70(v80);
  if (!*(v74 + 16) || (v137 = sub_224B0B2F8(v80), (v138 & 1) == 0))
  {
    v86(v80, v73);
    v149 = v86;
LABEL_75:
    v173 = v190;
    (v70)(v190, v185, v73);
    v174 = v206;
    v175 = swift_isUniquelyReferenced_nonNull_native();
    v205 = v74;
    sub_224B1F170(v174, v173, v175);
    v149(v173, v73);
    return v205;
  }

  v139 = *(*(v74 + 56) + 8 * v137);
  v140 = v69 + 8;
  v181 = v140 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;

  v180 = v140;
  result = (v86)(v80, v73);
  if (!*(v139 + 2))
  {

    v149 = v186;
    goto LABEL_75;
  }

  v184 = v70;
  v200 = v74;
  v141 = 0;
  v143 = v139 + 56;
  v142 = *(v139 + 7);
  v144 = 1 << v139[32];
  v205 = MEMORY[0x277D84FA0];
  if (v144 < 64)
  {
    v145 = ~(-1 << v144);
  }

  else
  {
    v145 = -1;
  }

  v146 = v145 & v142;
  v147 = (v144 + 63) >> 6;
  v202 = (v192 + 16);
  v189 = (v192 + 32);
  v198 = (v192 + 8);
  v148 = v201;
  v194 = v147;
  v183 = v71;
  v188 = v139;
  v182 = v139 + 56;
  if (!v146)
  {
    goto LABEL_61;
  }

  do
  {
    while (1)
    {
LABEL_65:
      v154 = __clz(__rbit64(v146));
      v146 &= v146 - 1;
      v155 = *(v139 + 6);
      v156 = v192;
      v197 = *(v192 + 72);
      v157 = v187;
      v199 = *(v192 + 16);
      (v199)(v187, v155 + v197 * (v154 | (v141 << 6)), v5);
      (*(v156 + 32))(v148, v157, v5);
      v158 = v193[41];
      if (!*(v158 + 16))
      {
        goto LABEL_60;
      }

      sub_224AC22E8(&qword_281350C70, MEMORY[0x277CF9E98], MEMORY[0x277CF9EA0]);

      v159 = sub_224DAED88();
      v160 = -1 << *(v158 + 32);
      v161 = v159 & ~v160;
      if ((*(v158 + 56 + ((v161 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v161))
      {
        break;
      }

LABEL_59:

      v139 = v188;
      v143 = v182;
LABEL_60:
      v150 = v191;
      (v199)(v191, v148, v5);
      v151 = v203;
      sub_224ADB0B0(v203, v150);
      v152 = *v198;
      (*v198)(v151, v5);
      result = (v152)(v148, v5);
      v147 = v194;
      if (!v146)
      {
        goto LABEL_61;
      }
    }

    v162 = ~v160;
    while (1)
    {
      v163 = v203;
      (v199)(v203, *(v158 + 48) + v161 * v197, v5);
      sub_224AC22E8(&qword_281350C68, MEMORY[0x277CF9E98], MEMORY[0x277CF9EA8]);
      v164 = sub_224DAEDD8();
      v165 = *v198;
      (*v198)(v163, v5);
      if (v164)
      {
        break;
      }

      v161 = (v161 + 1) & v162;
      v148 = v201;
      if (((*(v158 + 56 + ((v161 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v161) & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    v166 = v191;
    v167 = v201;
    (v199)(v191, v201, v5);
    v168 = v203;
    sub_224ADB0B0(v203, v166);
    v165(v168, v5);
    result = (v165)(v167, v5);
    v148 = v167;
    v139 = v188;
    v143 = v182;
    v147 = v194;
  }

  while (v146);
LABEL_61:
  while (1)
  {
    v153 = v141 + 1;
    if (__OFADD__(v141, 1))
    {
      break;
    }

    if (v153 >= v147)
    {

      v169 = v190;
      v73 = v195;
      v70 = v184;
      (v184)(v190, v196, v195);
      v170 = v205;
      v171 = v200;
      v172 = swift_isUniquelyReferenced_nonNull_native();
      v204 = v171;
      sub_224B1F170(v170, v169, v172);
      v149 = v186;
      v186(v169, v73);
      v74 = v204;
      goto LABEL_75;
    }

    v146 = *&v143[8 * v153];
    ++v141;
    if (v146)
    {
      v141 = v153;
      goto LABEL_65;
    }
  }

LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
  return result;
}

uint64_t sub_224ABE324(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AppTokenInfo(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAB8C8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = v2[5];
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = v13;
  v15 = sub_224DAB8F8();
  (*(v9 + 8))(v12, v8);
  if (v15)
  {
    v15 = sub_224DAC588();
    v12 = v16;
    if (qword_27D6F2CF0 == -1)
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
  v17 = sub_224DAB258();
  __swift_project_value_buffer(v17, qword_27D6F71E0);

  v18 = sub_224DAB228();
  v19 = sub_224DAF2A8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v29 = a1;
    v21 = v20;
    v22 = swift_slowAlloc();
    v30 = v22;
    *v21 = 136380675;
    *(v21 + 4) = sub_224A33F74(v15, v12, &v30);
    _os_log_impl(&dword_224A2F000, v18, v19, "Invalidating token: %{private}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x22AA5EED0](v22, -1, -1);
    MEMORY[0x22AA5EED0](v21, -1, -1);
  }

  sub_224DAC598();
  v23 = *(v4 + 24);
  v24 = sub_224DA9878();
  (*(*(v24 - 8) + 56))(&v7[v23], 1, 1, v24);
  v25 = &v7[*(v4 + 20)];
  *v25 = v15;
  v25[1] = v12;

  sub_224CC221C(v7);
  v26 = v2[27];
  v27 = v2[28];
  __swift_project_boxed_opaque_existential_1(v2 + 24, v26);
  (*(v27 + 32))(v15, v12, v26, v27);

  return sub_224AC1F14(v7, type metadata accessor for AppTokenInfo);
}

uint64_t sub_224ABE690(uint64_t a1)
{
  v36 = sub_224DAE0D8();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v4);
  v35 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v28 = v1;
    v40 = MEMORY[0x277D84F90];
    sub_224A3DFD8(0, v6, 0);
    v39 = v40;
    v8 = a1 + 56;
    result = sub_224DAF798();
    v9 = result;
    v10 = 0;
    v33 = v3 + 8;
    v34 = v3 + 16;
    v29 = a1 + 64;
    v30 = v6;
    v31 = v3;
    v32 = a1 + 56;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v8 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_22;
      }

      v37 = *(a1 + 36);
      v13 = v35;
      v14 = v36;
      (*(v3 + 16))(v35, *(a1 + 48) + *(v3 + 72) * v9, v36);
      v38 = sub_224DAE0C8();
      v16 = v15;
      result = (*(v3 + 8))(v13, v14);
      v17 = v39;
      v40 = v39;
      v19 = *(v39 + 16);
      v18 = *(v39 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_224A3DFD8((v18 > 1), v19 + 1, 1);
        v17 = v40;
      }

      *(v17 + 16) = v19 + 1;
      v20 = v17 + 16 * v19;
      *(v20 + 32) = v38;
      *(v20 + 40) = v16;
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_23;
      }

      v8 = v32;
      v21 = *(v32 + 8 * v12);
      if ((v21 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      v39 = v17;
      if (v37 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v22 = v21 & (-2 << (v9 & 0x3F));
      if (v22)
      {
        v11 = __clz(__rbit64(v22)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v3 = v31;
      }

      else
      {
        v23 = v12 << 6;
        v24 = v12 + 1;
        v25 = (v29 + 8 * v12);
        v3 = v31;
        while (v24 < (v11 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_224A3E204(v9, v37, 0);
            v11 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = sub_224A3E204(v9, v37, 0);
      }

LABEL_4:
      ++v10;
      v9 = v11;
      if (v10 == v30)
      {
        return v39;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_224ABE998(uint64_t a1)
{
  v3 = sub_224DAB8C8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 40);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v9 = v8;
  LOBYTE(v8) = sub_224DAB8F8();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    result = swift_beginAccess();
    v11 = 0;
    v12 = *(v1 + 64);
    v13 = 1 << *(v12 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v12 + 64);
    v16 = (v13 + 63) >> 6;
    while (v15)
    {
      v17 = v11;
LABEL_11:
      v18 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v19 = v18 | (v17 << 6);
      if (*(*(v12 + 56) + 16 * v19) == a1)
      {
        v20 = *(*(v12 + 48) + 16 * v19);

        return v20;
      }
    }

    while (1)
    {
      v17 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v17 >= v16)
      {
        return 0;
      }

      v15 = *(v12 + 64 + 8 * v17);
      ++v11;
      if (v15)
      {
        v11 = v17;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_224ABEBC4(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v91 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v96 = &v83 - v10;
  v94 = type metadata accessor for AppTokenInfo(0);
  MEMORY[0x28223BE20](v94, v11);
  v97 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_224DAC5E8();
  v95 = *(v93 - 8);
  MEMORY[0x28223BE20](v93, v13);
  v92 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_224DABD48();
  v86 = *(v15 - 8);
  v87 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_224DAB8C8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = (&v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = v4[5];
  *v23 = v24;
  (*(v20 + 104))(v23, *MEMORY[0x277D85200], v19);
  v25 = v24;
  v26 = sub_224DAB8F8();
  (*(v20 + 8))(v23, v19);
  if ((v26 & 1) == 0)
  {
    __break(1u);
LABEL_27:
    swift_once();
    goto LABEL_9;
  }

  v27 = sub_224ABE998(a1);
  if (v28)
  {
    v29 = v27;
    v30 = v28;

    v31 = a3;
    v32 = a3;
    v33 = v91;
    sub_224A77FD0(v32, v91);
    sub_224DABD18();
    v34 = v4[22];
    v35 = v4[23];
    __swift_project_boxed_opaque_existential_1(v4 + 19, v34);
    if ((*(v35 + 24))(v18, v34, v35))
    {
      if (qword_27D6F2CF0 != -1)
      {
        swift_once();
      }

      v36 = sub_224DAB258();
      __swift_project_value_buffer(v36, qword_27D6F71E0);

      sub_224A77FD0(v31, v33);
      v37 = sub_224DAB228();
      v38 = sub_224DAF2A8();
      sub_224A78024(v31, v33);

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        LODWORD(v89) = v38;
        v40 = v39;
        v98 = swift_slowAlloc();
        v90 = a1;
        v41 = v98;
        *v40 = 136446466;
        v42 = sub_224DA9698();
        v44 = sub_224A33F74(v42, v43, &v98);

        *(v40 + 4) = v44;
        *(v40 + 12) = 2082;
        *(v40 + 14) = sub_224A33F74(v29, v30, &v98);
        _os_log_impl(&dword_224A2F000, v37, v89, "Received public token: %{public}s for environment: %{public}s", v40, 0x16u);
        swift_arrayDestroy();
        v45 = v41;
        a1 = v90;
        MEMORY[0x22AA5EED0](v45, -1, -1);
        MEMORY[0x22AA5EED0](v40, -1, -1);
      }

      v54 = v5[27];
      v55 = v5[28];
      __swift_project_boxed_opaque_existential_1(v5 + 24, v54);
      (*(v55 + 48))(v29, v30, v54, v55);

      v56 = v5[17];
      v57 = v5[18];
      __swift_project_boxed_opaque_existential_1(v5 + 14, v56);
      v58 = (*(v57 + 8))(v56, v57);
      v59 = *(v58 + 16);
      if (v59)
      {
        v84 = v18;
        v60 = *&a1[OBJC_IVAR____TtC10ChronoCore17APSPushConnection_connection];
        v90 = *(v95 + 16);
        v91 = v60;
        v61 = (*(v95 + 80) + 32) & ~*(v95 + 80);
        v85 = v58;
        v62 = v58 + v61;
        v95 += 16;
        v88 = *(v95 + 56);
        v89 = (v95 - 8);
        do
        {
          v64 = v92;
          v63 = v93;
          (v90)(v92, v62, v93);
          sub_224DAC598();
          v65 = sub_224DAC588();
          v67 = v66;
          (*v89)(v64, v63);
          v68 = v94;
          v69 = *(v94 + 24);
          v70 = sub_224DA9878();
          v71 = *(v70 - 8);
          (*(v71 + 56))(&v97[v69], 1, 1, v70);
          v72 = &v97[*(v68 + 20)];
          *v72 = v65;
          v72[1] = v67;
          sub_224DAE0C8();
          v73 = objc_allocWithZone(MEMORY[0x277CEEA00]);
          v74 = sub_224DAEDE8();

          v75 = sub_224DAEDE8();
          v76 = [v73 initWithTopic:v74 identifier:v75];

          v77 = v96;
          v78 = v97;
          sub_224A3796C(&v97[v69], v96, &qword_27D6F32B0, &qword_224DB3EA0);
          v79 = 0;
          if ((*(v71 + 48))(v77, 1, v70) != 1)
          {
            v80 = v96;
            v79 = sub_224DA9778();
            (*(v71 + 8))(v80, v70);
          }

          [v76 setExpirationDate_];

          [v91 requestTokenForInfo_];
          sub_224AC1F14(v78, type metadata accessor for AppTokenInfo);
          v62 += v88;
          --v59;
        }

        while (v59);

        v82 = v86;
        v81 = v87;
        v18 = v84;
        goto LABEL_25;
      }
    }

    else
    {

      if (qword_27D6F2CF0 != -1)
      {
        swift_once();
      }

      v50 = sub_224DAB258();
      __swift_project_value_buffer(v50, qword_27D6F71E0);
      v51 = sub_224DAB228();
      v52 = sub_224DAF2A8();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_224A2F000, v51, v52, "Public token has not changed", v53, 2u);
        MEMORY[0x22AA5EED0](v53, -1, -1);
      }
    }

    v82 = v86;
    v81 = v87;
LABEL_25:
    (*(v82 + 8))(v18, v81);
    return;
  }

  if (qword_27D6F2CF0 != -1)
  {
    goto LABEL_27;
  }

LABEL_9:
  v46 = sub_224DAB258();
  __swift_project_value_buffer(v46, qword_27D6F71E0);
  v47 = sub_224DAB228();
  v48 = sub_224DAF288();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_224A2F000, v47, v48, "Connection for incoming public token is unknown", v49, 2u);
    MEMORY[0x22AA5EED0](v49, -1, -1);
  }
}

uint64_t sub_224ABF550(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32A8, &qword_224DB3218);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v21 - v16;
  sub_224AC1DB0(a8, &v21 - v16, type metadata accessor for AppTokenInfo);
  v18 = type metadata accessor for AppTokenInfo(0);
  (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  sub_224ABF69C(a4, a5, a6, a7, v17);
  v19 = sub_224A3311C(v17, &qword_27D6F32A8, &qword_224DB3218);
  return a1(v19);
}

void sub_224ABF69C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v125 = a4;
  v124 = a3;
  v141 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v122 = v117 - v10;
  v11 = sub_224DAE0D8();
  v130 = *(v11 - 8);
  v131 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v132 = v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DAE438();
  v127 = *(v14 - 8);
  v128 = v14;
  v16 = MEMORY[0x28223BE20](v14, v15);
  v123 = v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = v17;
  MEMORY[0x28223BE20](v16, v18);
  v126 = v117 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BB0, &unk_224DB8CF0);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v137 = v117 - v22;
  v23 = sub_224DAC5E8();
  v139 = *(v23 - 8);
  v140 = v23;
  MEMORY[0x28223BE20](v23, v24);
  v136 = v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32A8, &qword_224DB3218);
  v28 = MEMORY[0x28223BE20](v26 - 8, v27);
  v133 = v117 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v118 = v117 - v32;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v135 = v117 - v35;
  v37 = MEMORY[0x28223BE20](v34, v36);
  v129 = v117 - v38;
  v40 = MEMORY[0x28223BE20](v37, v39);
  v134 = v117 - v41;
  v43 = MEMORY[0x28223BE20](v40, v42);
  v45 = v117 - v44;
  v47 = MEMORY[0x28223BE20](v43, v46);
  v49 = v117 - v48;
  MEMORY[0x28223BE20](v47, v50);
  v52 = v117 - v51;
  v53 = sub_224DAB8C8();
  v54 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v55);
  v57 = (v117 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = *(v5 + 40);
  *v57 = v58;
  (*(v54 + 104))(v57, *MEMORY[0x277D85200], v53);
  v59 = v58;
  LOBYTE(v58) = sub_224DAB8F8();
  v61 = *(v54 + 8);
  v60 = v54 + 8;
  v61(v57, v53);
  if ((v58 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    swift_once();
LABEL_4:
    v117[1] = a1;
    v64 = sub_224DAB258();
    v65 = __swift_project_value_buffer(v64, qword_27D6F71E0);
    sub_224A3796C(a5, v52, &qword_27D6F32A8, &qword_224DB3218);

    v66 = sub_224DAB228();
    v67 = sub_224DAF2A8();
    v68 = os_log_type_enabled(v66, v67);
    v138 = a5;
    v120 = v53;
    v119 = v60;
    if (v68)
    {
      v117[0] = v65;
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v142[0] = v70;
      *v69 = 136446466;
      sub_224A3796C(v52, v49, &qword_27D6F32A8, &qword_224DB3218);
      v71 = v60;
      v72 = type metadata accessor for AppTokenInfo(0);
      v73 = (*(*(v72 - 8) + 48))(v49, 1, v72);

      if (v73 == 1)
      {
        goto LABEL_27;
      }

      sub_224A3311C(v52, &qword_27D6F32A8, &qword_224DB3218);
      v74 = &v49[*(v72 + 20)];
      v75 = *v74;
      v76 = v74[1];

      sub_224AC1F14(v49, type metadata accessor for AppTokenInfo);
      v77 = sub_224A33F74(v75, v76, v142);

      *(v69 + 4) = v77;
      *(v69 + 12) = 2082;
      *(v69 + 14) = sub_224A33F74(v141, v71, v142);
      _os_log_impl(&dword_224A2F000, v66, v67, "Received app token with identifier: %{public}s for environment: %{public}s", v69, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v70, -1, -1);
      MEMORY[0x22AA5EED0](v69, -1, -1);

      a5 = v138;
      v53 = v120;
    }

    else
    {

      sub_224A3311C(v52, &qword_27D6F32A8, &qword_224DB3218);
    }

    sub_224A3317C(v53 + 112, v142);
    v82 = v143;
    v83 = v144;
    __swift_project_boxed_opaque_existential_1(v142, v143);
    sub_224A3796C(a5, v45, &qword_27D6F32A8, &qword_224DB3218);
    v84 = type metadata accessor for AppTokenInfo(0);
    v85 = *(*(v84 - 8) + 48);
    if (v85(v45, 1, v84) != 1)
    {
      v86 = &v45[*(v84 + 20)];
      v87 = *v86;
      v88 = *(v86 + 1);

      sub_224AC1F14(v45, type metadata accessor for AppTokenInfo);
      v89 = v137;
      (*(v83 + 48))(v87, v88, v82, v83);

      v91 = v139;
      v90 = v140;
      if ((*(v139 + 48))(v89, 1, v140) == 1)
      {
        sub_224A3311C(v89, &qword_27D6F3BB0, &unk_224DB8CF0);
        __swift_destroy_boxed_opaque_existential_1(v142);
        v92 = v135;
        sub_224A3796C(v138, v135, &qword_27D6F32A8, &qword_224DB3218);
        v93 = sub_224DAB228();
        v94 = sub_224DAF288();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v142[0] = v96;
          *v95 = 136446210;
          v97 = v118;
          sub_224A3796C(v92, v118, &qword_27D6F32A8, &qword_224DB3218);
          if (v85(v97, 1, v84) == 1)
          {
LABEL_31:
            __break(1u);
            return;
          }

          sub_224A3311C(v92, &qword_27D6F32A8, &qword_224DB3218);
          v98 = (v97 + *(v84 + 20));
          v99 = *v98;
          v100 = v98[1];

          sub_224AC1F14(v97, type metadata accessor for AppTokenInfo);
          v101 = sub_224A33F74(v99, v100, v142);

          *(v95 + 4) = v101;
          _os_log_impl(&dword_224A2F000, v93, v94, "Subscription for token does not exist: %{public}s", v95, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v96);
          MEMORY[0x22AA5EED0](v96, -1, -1);
          MEMORY[0x22AA5EED0](v95, -1, -1);
        }

        else
        {

          sub_224A3311C(v92, &qword_27D6F32A8, &qword_224DB3218);
        }

        v116 = v133;
        sub_224A3796C(v138, v133, &qword_27D6F32A8, &qword_224DB3218);
        if (v85(v116, 1, v84) != 1)
        {

          sub_224CC221C(v116);
          sub_224AC1F14(v116, type metadata accessor for AppTokenInfo);
          return;
        }

        goto LABEL_29;
      }

      (*(v91 + 32))(v136, v89, v90);
      __swift_destroy_boxed_opaque_existential_1(v142);
      sub_224DAC588();
      v102 = v138;
      v103 = v134;
      sub_224A3796C(v138, v134, &qword_27D6F32A8, &qword_224DB3218);
      if (v85(v103, 1, v84) != 1)
      {
        (*(v130 + 16))(v132, v103, v131);
        sub_224AC1F14(v103, type metadata accessor for AppTokenInfo);
        v104 = v102;
        v105 = v129;
        sub_224A3796C(v104, v129, &qword_27D6F32A8, &qword_224DB3218);
        if (v85(v105, 1, v84) != 1)
        {
          sub_224A3796C(v105 + *(v84 + 24), v122, &qword_27D6F32B0, &qword_224DB3EA0);
          sub_224AC1F14(v105, type metadata accessor for AppTokenInfo);
          sub_224A77FD0(v124, v125);
          v106 = v126;
          sub_224DAE408();
          v107 = v120;
          v108 = v120[27];
          v109 = v120[28];
          __swift_project_boxed_opaque_existential_1(v120 + 24, v108);
          (*(v109 + 16))(v106, v108, v109);
          v110 = v107[6];
          v112 = v127;
          v111 = v128;
          v113 = v123;
          (*(v127 + 16))(v123, v106, v128);
          v114 = (*(v112 + 80) + 24) & ~*(v112 + 80);
          v115 = swift_allocObject();
          *(v115 + 16) = v107;
          (*(v112 + 32))(v115 + v114, v113, v111);

          _s10ChronoCore14PushFoundationO20KeepAliveTransactionC9asyncTask6reason5queue5delay8wrappingySS_So012OS_dispatch_K0CSdyyycctFZ_0(0xD000000000000011, 0x8000000224DC4EC0, v110, sub_224AC1B84, v115, 0.0);

          (*(v112 + 8))(v106, v111);
          (*(v139 + 8))(v136, v140);
          return;
        }

        goto LABEL_30;
      }

LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v62 = sub_224ABE998(a1);
  if (v63)
  {
    v60 = v63;
    v53 = v5;
    v141 = v62;
    if (qword_27D6F2CF0 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_25;
  }

  if (qword_27D6F2CF0 != -1)
  {
    swift_once();
  }

  v78 = sub_224DAB258();
  __swift_project_value_buffer(v78, qword_27D6F71E0);
  v79 = sub_224DAB228();
  v80 = sub_224DAF288();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    *v81 = 0;
    _os_log_impl(&dword_224A2F000, v79, v80, "Connection for incoming push token is unknown", v81, 2u);
    MEMORY[0x22AA5EED0](v81, -1, -1);
  }
}

void sub_224AC04BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_224DAE168();
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_224DAC5E8();
  v12 = *(v51 - 8);
  v14 = MEMORY[0x28223BE20](v51, v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v48 - v18;
  sub_224DA9E78();
  sub_224DA9E68();
  v20 = sub_224DA9E08();

  if ((v20 & 1) == 0)
  {
    goto LABEL_7;
  }

  if (sub_224DAEE18() == a2 && v21 == a3)
  {
  }

  else
  {
    v23 = sub_224DAFD88();

    if ((v23 & 1) == 0)
    {
LABEL_7:
      v24 = v51;
      (*(v12 + 16))(v16, a1, v51);
      v25 = sub_224DAC5A8();
      sub_224DAE0F8();
      v25(v53, 0);
      if (qword_27D6F2CF0 != -1)
      {
        swift_once();
      }

      v26 = sub_224DAB258();
      __swift_project_value_buffer(v26, qword_27D6F71E0);
      v27 = sub_224DAB228();
      v28 = sub_224DAF2A8();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v52 = v30;
        *v29 = 136446466;
        swift_beginAccess();
        v31 = sub_224DAC588();
        v33 = sub_224A33F74(v31, v32, &v52);

        *(v29 + 4) = v33;
        *(v29 + 12) = 2050;
        swift_beginAccess();
        sub_224DAC5B8();
        swift_endAccess();
        v34 = sub_224DAE108();
        (*(v49 + 8))(v11, v50);
        *(v29 + 14) = v34;
        _os_log_impl(&dword_224A2F000, v27, v28, "Reduced budget for %{public}s to: %{public}ld", v29, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v30);
        MEMORY[0x22AA5EED0](v30, -1, -1);
        v35 = v29;
        v24 = v51;
        MEMORY[0x22AA5EED0](v35, -1, -1);
      }

      v36 = v4[17];
      v37 = v4[18];
      __swift_project_boxed_opaque_existential_1(v4 + 14, v36);
      swift_beginAccess();
      (*(v37 + 32))(v16, v36, v37);
      (*(v12 + 8))(v16, v24);
      return;
    }
  }

  if (qword_27D6F2CF0 != -1)
  {
    swift_once();
  }

  v38 = sub_224DAB258();
  __swift_project_value_buffer(v38, qword_27D6F71E0);
  v39 = v51;
  (*(v12 + 16))(v19, a1, v51);
  v40 = sub_224DAB228();
  v41 = sub_224DAF2A8();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v53[0] = v43;
    *v42 = 136446210;
    v44 = sub_224DAC588();
    v46 = v45;
    (*(v12 + 8))(v19, v39);
    v47 = sub_224A33F74(v44, v46, v53);

    *(v42 + 4) = v47;
    _os_log_impl(&dword_224A2F000, v40, v41, "Ignoring budget for %{public}s due to widgetKitDeveloperModeEnabled", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x22AA5EED0](v43, -1, -1);
    MEMORY[0x22AA5EED0](v42, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v19, v39);
  }
}

uint64_t sub_224AC0A2C()
{
  v1 = v0;
  v57 = type metadata accessor for SimpleWorkScheduler.Work(0);
  MEMORY[0x28223BE20](v57, v2);
  v59 = (&v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = type metadata accessor for WorkScheduleRequest(0);
  MEMORY[0x28223BE20](v56, v4);
  v58 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_224DA9878();
  v6 = *(v60 - 8);
  v8 = MEMORY[0x28223BE20](v60, v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v52 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v52 - v16;
  v18 = sub_224DAB8C8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = (&v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = v1[5];
  *v22 = v23;
  (*(v19 + 104))(v22, *MEMORY[0x277D85200], v18);
  v24 = v23;
  v25 = sub_224DAB8F8();
  v27 = *(v19 + 8);
  v26 = (v19 + 8);
  v27(v22, v18);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  sub_224AC124C(v17);
  sub_224DA9748();
  v28 = sub_224DA9798();
  v26 = *(v6 + 8);
  v26(v14, v60);
  v25 = v17;
  if (v28)
  {
    if (qword_27D6F2CF0 == -1)
    {
LABEL_4:
      v29 = sub_224DAB258();
      __swift_project_value_buffer(v29, qword_27D6F71E0);
      v53 = *(v6 + 16);
      v53(v10, v25, v60);
      v30 = sub_224DAB228();
      v31 = sub_224DAF2A8();
      v32 = os_log_type_enabled(v30, v31);
      v54 = v26;
      v55 = v25;
      if (v32)
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *&v63 = v34;
        *v33 = 136446210;
        sub_224AC22E8(&qword_27D6F32B8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v35 = sub_224DAFD28();
        v36 = v26;
        v38 = v37;
        v36(v10, v60);
        v39 = sub_224A33F74(v35, v38, &v63);

        *(v33 + 4) = v39;
        _os_log_impl(&dword_224A2F000, v30, v31, "Scheduling wake to re-evaluate push subscription budgets at %{public}s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        v40 = v34;
        v25 = v55;
        MEMORY[0x22AA5EED0](v40, -1, -1);
        MEMORY[0x22AA5EED0](v33, -1, -1);
      }

      else
      {

        v26(v10, v60);
      }

      v41 = v58;
      v53(v58, v25, v60);
      v42 = v56;
      *(v41 + *(v56 + 20)) = 1;
      v43 = (v41 + *(v42 + 24));
      *v43 = 0xD000000000000025;
      v43[1] = 0x8000000224DC4F00;
      swift_beginAccess();
      sub_224A3796C((v1 + 34), &v63, &qword_27D6F32C0, &qword_224DB3220);
      if (*(&v64 + 1))
      {
        sub_224A3317C(&v63, v61);
        sub_224A3311C(&v63, &qword_27D6F32C0, &qword_224DB3220);
        __swift_project_boxed_opaque_existential_1(v61, v62);
        sub_224DAB2D8();
        __swift_destroy_boxed_opaque_existential_1(v61);
      }

      else
      {
        sub_224A3311C(&v63, &qword_27D6F32C0, &qword_224DB3220);
      }

      v44 = v59;
      v45 = __swift_project_boxed_opaque_existential_1(v1 + 29, v1[32]);
      v46 = swift_allocObject();
      swift_weakInit();
      v47 = *v45;
      v48 = *(*v45 + 16);
      v49 = *(v48 + 16);

      os_unfair_lock_lock(v49);
      sub_224C17234(v47, v41, sub_224AC1F0C, v46, v44);
      os_unfair_lock_unlock(*(v48 + 16));

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
      sub_224A33088(&qword_281350EF0, &qword_27D6F4A10, &unk_224DB4000, MEMORY[0x277CBCE18]);
      sub_224DAB398();
      *(&v64 + 1) = v57;
      v65 = sub_224AC22E8(&qword_27D6F32C8, type metadata accessor for SimpleWorkScheduler.Work, &unk_224DBB7EC);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v63);
      sub_224AC20C8(v44, boxed_opaque_existential_1, type metadata accessor for SimpleWorkScheduler.Work);

      sub_224AC1F14(v41, type metadata accessor for WorkScheduleRequest);
      v54(v55, v60);

      goto LABEL_15;
    }

LABEL_17:
    swift_once();
    goto LABEL_4;
  }

  swift_beginAccess();
  sub_224A3796C((v1 + 34), &v63, &qword_27D6F32C0, &qword_224DB3220);
  if (*(&v64 + 1))
  {
    sub_224A3317C(&v63, v61);
    sub_224A3311C(&v63, &qword_27D6F32C0, &qword_224DB3220);
    __swift_project_boxed_opaque_existential_1(v61, v62);
    sub_224DAB2D8();
    v26(v17, v60);
    __swift_destroy_boxed_opaque_existential_1(v61);
  }

  else
  {
    v26(v17, v60);
    sub_224A3311C(&v63, &qword_27D6F32C0, &qword_224DB3220);
  }

  v65 = 0;
  v63 = 0u;
  v64 = 0u;
LABEL_15:
  swift_beginAccess();
  sub_224AC1E9C(&v63, (v1 + 34));
  return swift_endAccess();
}

uint64_t sub_224AC124C@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v72 = &v54 - v5;
  v71 = sub_224DAE168();
  v66 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v6);
  v70 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_224DAC5E8();
  v8 = *(v62 - 8);
  MEMORY[0x28223BE20](v62, v9);
  v61 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DA9878();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v59 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v54 - v18;
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v54 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v54 - v25;
  v27 = v1[17];
  v28 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v27);
  v29 = a1;
  v30 = (*(v28 + 24))(v27, v28);
  sub_224DA9748();
  (*(v12 + 16))(v29, v26, v11);
  v31 = v30;
  v32 = *(v30 + 16);
  if (!v32)
  {

    return (*(v12 + 8))(v26, v11);
  }

  v58 = v19;
  v54 = v31;
  v55 = v26;
  v34 = *(v8 + 16);
  v33 = v8 + 16;
  v35 = v31 + ((*(v33 + 64) + 32) & ~*(v33 + 64));
  ++v66;
  v67 = v34;
  v36 = *(v33 + 56);
  v64 = (v12 + 48);
  v65 = v36;
  v37 = (v12 + 32);
  v56 = v12;
  v57 = v29;
  v60 = (v12 + 8);
  v63 = (v33 - 8);
  v38 = v61;
  v39 = v62;
  v68 = v23;
  v69 = v33;
  do
  {
    v67(v38, v35, v39);
    v43 = v70;
    sub_224DAC5B8();
    v44 = v72;
    sub_224DAE118();
    (*v66)(v43, v71);
    if ((*v64)(v44, 1, v11) == 1)
    {
      (*v63)(v38, v39);
      sub_224A3311C(v44, &qword_27D6F32B0, &qword_224DB3EA0);
      v40 = *v37;
      v41 = v68;
      v42 = v68;
LABEL_4:
      v40(v41);
      goto LABEL_5;
    }

    v45 = v44;
    v40 = *v37;
    v46 = v58;
    (*v37)(v58, v45, v11);
    v47 = v59;
    sub_224DA9728();
    v48 = sub_224DA9788();
    v49 = *v60;
    (*v60)(v47, v11);
    if ((v48 & 1) == 0)
    {
      v49(v46, v11);
      v39 = v62;
      v38 = v61;
      (*v63)(v61, v62);
      v42 = v68;
      v41 = v68;
      v29 = v57;
      goto LABEL_4;
    }

    v50 = v57;
    v51 = sub_224DA9798();
    (*v63)(v61, v62);
    if (v51)
    {
      v49(v50, v11);
      v52 = v68;
      v42 = v68;
    }

    else
    {
      v49(v46, v11);
      v42 = v68;
      v52 = v68;
    }

    v40(v52);
    v29 = v50;
    v38 = v61;
    v39 = v62;
LABEL_5:
    (v40)(v29, v42, v11);
    v35 += v65;
    --v32;
  }

  while (v32);

  v26 = v55;
  v12 = v56;
  return (*(v12 + 8))(v26, v11);
}

void sub_224AC17EC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_27D6F2CF0 != -1)
    {
      swift_once();
    }

    v3 = sub_224DAB258();
    __swift_project_value_buffer(v3, qword_27D6F71E0);
    v4 = sub_224DAB228();
    v5 = sub_224DAF2A8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_224A2F000, v4, v5, "Waking to re-evaluate push subscription budgets", v6, 2u);
      MEMORY[0x22AA5EED0](v6, -1, -1);
    }

    v7 = *(v2 + 40);
    v8 = swift_allocObject();
    *(v8 + 16) = sub_224AC1F74;
    *(v8 + 24) = v2;
    aBlock[4] = sub_224A8A838;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A9B6F8;
    aBlock[3] = &block_descriptor;
    v9 = _Block_copy(aBlock);

    dispatch_sync(v7, v9);

    _Block_release(v9);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if (v7)
    {
      __break(1u);
    }
  }
}

void sub_224AC1A04(void *a1)
{
  v1 = a1[17];
  v2 = a1[18];
  __swift_project_boxed_opaque_existential_1(a1 + 14, v1);
  v3 = (*(v2 + 16))(v1, v2);
  v4 = v3;
  v5 = 0;
  v6 = 1 << *(v3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v3 + 56;
  v9 = v7 & *(v3 + 56);
  v10 = (v6 + 63) >> 6;
  while (v9)
  {
LABEL_9:
    v13 = *(v4 + 48) + ((v5 << 10) | (16 * __clz(__rbit64(v9))));
    v15 = *v13;
    v14 = *(v13 + 8);

    sub_224ABC050(v15, v14, 0);
    sub_224AB5474(v15, v14, v11);
    swift_unknownObjectRelease();
    v9 &= v9 - 1;
  }

  while (1)
  {
    v12 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      return;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v8 + 8 * v12);
    ++v5;
    if (v9)
    {
      v5 = v12;
      goto LABEL_9;
    }
  }
}